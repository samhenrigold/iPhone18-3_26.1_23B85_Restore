uint64_t getEnumTagSinglePayload for CarouselView(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = type metadata accessor for ScrollPosition();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  if (v8 >= 0)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(*(a3 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v7 + 80);
  v14 = v12 - 1;
  if (!v12)
  {
    v14 = 0;
  }

  if (v14 <= v10)
  {
    v14 = v10;
  }

  if (v12)
  {
    v15 = 7;
  }

  else
  {
    v15 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = v13 | 7;
  v17 = ((v13 + 16) & ~v13) + *(*(v6 - 8) + 64) + 7;
  v18 = *(v11 + 80) & 0xF8;
  v19 = ~v18 & 0xFFFFFFFFFFFFFFF8;
  v20 = v18 + 23;
  if (v14 >= a2)
  {
    goto LABEL_37;
  }

  v21 = ((((v15 + *(v11 + 64)) & 0xFFFFFFFFFFFFFFF8) + ((v20 + ((((((((((v17 + ((v13 + 24) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v19) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  v22 = v21 & 0xFFFFFFF8;
  if ((v21 & 0xFFFFFFF8) != 0)
  {
    v23 = 2;
  }

  else
  {
    v23 = a2 - v14 + 1;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v26 = *(a1 + v21);
      if (!v26)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v26 = *(a1 + v21);
      if (!v26)
      {
        goto LABEL_37;
      }
    }

LABEL_34:
    v28 = v26 - 1;
    if (v22)
    {
      v28 = 0;
      v29 = *a1;
    }

    else
    {
      v29 = 0;
    }

    return v14 + (v29 | v28) + 1;
  }

  if (v25)
  {
    v26 = *(a1 + v21);
    if (v26)
    {
      goto LABEL_34;
    }
  }

LABEL_37:
  if (v14 == 0x7FFFFFFF)
  {
    v30 = *(a1 + 1);
    if (v30 >= 0xFFFFFFFF)
    {
      LODWORD(v30) = -1;
    }

    return (v30 + 1);
  }

  else
  {
    v31 = (a1 + v16 + 24) & ~v16;
    if (v14 == v9)
    {
      v32 = *(v7 + 48);

      return v32((v13 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13);
    }

    else
    {
      v33 = (*(v11 + 48))((v20 + ((((((((((v17 + v31) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v19, v12);
      if (v33 >= 2)
      {
        return v33 - 1;
      }

      else
      {
        return 0;
      }
    }
  }
}

void storeEnumTagSinglePayload for CarouselView(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = type metadata accessor for ScrollPosition();
  v9 = 0;
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  if (v11 >= 0)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(*(a4 + 16) - 8);
  v15 = *(v14 + 84);
  v16 = *(v10 + 80);
  v17 = *(v14 + 80);
  v18 = v15 - 1;
  if (!v15)
  {
    v18 = 0;
  }

  if (v18 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  else
  {
    v19 = v18;
  }

  if (v19 <= v13)
  {
    v20 = v13;
  }

  else
  {
    v20 = v19;
  }

  v21 = ((v16 + 16) & ~v16) + *(*(v8 - 8) + 64) + 7;
  v22 = ~(v17 & 0xF8) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v17 & 0xF8) + 23;
  if (v15)
  {
    v24 = *(v14 + 64);
  }

  else
  {
    v24 = *(v14 + 64) + 1;
  }

  v25 = ((((v24 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v23 + ((((((((((v21 + ((v16 + 24) & ~(v16 | 7))) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v22) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v20 < a3)
  {
    if (((((v24 + 7) & 0xFFFFFFF8) + ((v23 + ((((((((((v21 + ((v16 + 24) & ~(v16 | 7))) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & v22) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v26 = a3 - v20 + 1;
    }

    else
    {
      v26 = 2;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v9 = v27;
    }

    else
    {
      v9 = 0;
    }
  }

  if (a2 > v20)
  {
    if (((((v24 + 7) & 0xFFFFFFF8) + ((v23 + ((((((((((v21 + ((v16 + 24) & ~(v16 | 7))) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & v22) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v28 = a2 - v20;
    }

    else
    {
      v28 = 1;
    }

    if (((((v24 + 7) & 0xFFFFFFF8) + ((v23 + ((((((((((v21 + ((v16 + 24) & ~(v16 | 7))) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & v22) + 31) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v29 = ~v20 + a2;
      bzero(a1, v25);
      *a1 = v29;
    }

    if (v9 > 1)
    {
      if (v9 == 2)
      {
        *(a1 + v25) = v28;
      }

      else
      {
        *(a1 + v25) = v28;
      }
    }

    else if (v9)
    {
      *(a1 + v25) = v28;
    }

    return;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *(a1 + v25) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_48;
    }

    *(a1 + v25) = 0;
LABEL_47:
    if (!a2)
    {
      return;
    }

    goto LABEL_48;
  }

  if (!v9)
  {
    goto LABEL_47;
  }

  *(a1 + v25) = 0;
  if (!a2)
  {
    return;
  }

LABEL_48:
  if (v20 == 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      a1[1] = 0;
      a1[2] = 0;
      *a1 = a2 & 0x7FFFFFFF;
    }

    else
    {
      a1[1] = (a2 - 1);
    }
  }

  else
  {
    v30 = (a1 + (v16 | 7) + 24) & ~(v16 | 7);
    if (v12 == v20)
    {
      v31 = *(v10 + 56);

      v31((v16 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v16, a2, v11, v8);
    }

    else
    {
      v32 = v23 + ((((((((((v21 + v30) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      v33 = (v32 & v22);
      if (v19 >= a2)
      {
        if (v18 >= a2)
        {
          v39 = *(v14 + 56);

          v39(v32 & v22, (a2 + 1));
        }

        else
        {
          if (v24 <= 3)
          {
            v36 = ~(-1 << (8 * v24));
          }

          else
          {
            v36 = -1;
          }

          if (v24)
          {
            v37 = v36 & (~v18 + a2);
            if (v24 <= 3)
            {
              v38 = v24;
            }

            else
            {
              v38 = 4;
            }

            bzero(v33, v24);
            if (v38 > 2)
            {
              if (v38 == 3)
              {
                *v33 = v37;
                v33[2] = BYTE2(v37);
              }

              else
              {
                *v33 = v37;
              }
            }

            else if (v38 == 1)
            {
              *v33 = v37;
            }

            else
            {
              *v33 = v37;
            }
          }
        }
      }

      else
      {
        v34 = (v24 + 7) & 0xFFFFFFF8;
        if (v34 != -8)
        {
          v35 = ~v19 + a2;
          bzero(v33, (v34 + 8));
          *v33 = v35;
        }
      }
    }
  }
}

void type metadata accessor for Binding<ScrollPosition>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Binding();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _syycSgMa_0(uint64_t a1)
{
  if (!_syycSgML_0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd_0, &_syycMR_0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &_syycSgML_0);
    }
  }
}

void type metadata accessor for State<CGFloat>(__n128 a1)
{
  if (!lazy cache variable for type metadata for State<CGFloat>)
  {
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for State<CGFloat>);
    }
  }
}

void type metadata completion function for PageControl.Coordinator(uint64_t a1)
{
  type metadata accessor for Binding<ScrollPosition>(319, &lazy cache variable for type metadata for Binding<ScrollPosition>, &type metadata accessor for ScrollPosition);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_100325088(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[4];
  type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for LazyHStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for SafeAreaPaddingModifier();
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI23_GeometryActionModifierVySo6CGSizeVAESQ12CoreGraphicsyHCg_GMd, &_s7SwiftUI23_GeometryActionModifierVySo6CGSizeVAESQ12CoreGraphicsyHCg_GMR);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ViewAlignedScrollTargetBehavior();
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier(&lazy protocol witness table cache variable for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier, &type metadata accessor for SafeAreaPaddingModifier, &protocol conformance descriptor for SafeAreaPaddingModifier);
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _GeometryActionModifier<CGSize> and conformance _GeometryActionModifier<A>();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  *(&v11 + 1) = WitnessTable;
  v12 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  *&v11 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  v10 = v1;
  v11 = *(a1 + 1);
  v12 = v2;
  type metadata accessor for PageControl(255, &v10);
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  v4 = type metadata accessor for ModifiedContent();
  v5 = type metadata accessor for ScrollPosition();
  swift_getWitnessTable();
  v6 = swift_getWitnessTable();
  v7 = lazy protocol witness table accessor for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier(&lazy protocol witness table cache variable for type ScrollPosition and conformance ScrollPosition, &type metadata accessor for ScrollPosition, &protocol conformance descriptor for ScrollPosition);
  v10 = v4;
  *&v11 = v5;
  *(&v11 + 1) = v6;
  v12 = v7;
  return swift_getOpaqueTypeConformance2();
}

void type metadata completion function for PageControl(uint64_t a1)
{
  type metadata accessor for Array();
  type metadata accessor for Binding();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Binding<ScrollPosition>(319, &lazy cache variable for type metadata for Binding<ScrollPosition>, &type metadata accessor for ScrollPosition);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100325700(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14ScrollPositionVGMd, &_s7SwiftUI7BindingVyAA14ScrollPositionVGMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1003257D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14ScrollPositionVGMd, &_s7SwiftUI7BindingVyAA14ScrollPositionVGMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t outlined assign with take of Binding<ScrollPosition>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14ScrollPositionVGMd, &_s7SwiftUI7BindingVyAA14ScrollPositionVGMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id specialized PageControl.makeUIView(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_allocWithZone(UIPageControl) init];
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  type metadata accessor for PageControl(255, v14);
  swift_getWitnessTable();
  type metadata accessor for UIViewRepresentableContext();
  UIViewRepresentableContext.coordinator.getter();
  [v9 addTarget:v14[0] action:"updateCurrentPage:" forControlEvents:4096];

  v10 = objc_opt_self();
  v11 = [v10 systemFillColor];
  [v9 setPageIndicatorTintColor:v11];

  v12 = [v10 labelColor];
  [v9 setCurrentPageIndicatorTintColor:v12];

  return v9;
}

uint64_t outlined init with copy of Binding<ScrollPosition>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14ScrollPositionVGMd, &_s7SwiftUI7BindingVyAA14ScrollPositionVGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Binding<ScrollPosition>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14ScrollPositionVGMd, &_s7SwiftUI7BindingVyAA14ScrollPositionVGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #3 in closure #1 in CarouselView.body.getter(double *a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v12[0] = v1[2];
  v3 = v12[0];
  v12[1] = v4;
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = v7;
  v12[5] = v8;
  v9 = *(type metadata accessor for CarouselView(0, v12) - 8);
  v10 = v1 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  return closure #3 in closure #1 in CarouselView.body.getter(a1, v10, v3, v4, v5, v6, v7, v8);
}

uint64_t lazy protocol witness table accessor for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_15()
{
  v1 = v0[2];
  v11 = v0[1];
  v12[0] = v11;
  v2 = v0[3];
  v12[1] = v1;
  v12[2] = v2;
  v3 = type metadata accessor for CarouselView(0, v12);
  v4 = v0 + ((*(*(v3 - 1) + 80) + 64) & ~*(*(v3 - 1) + 80));

  v5 = &v4[v3[17]];

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14ScrollPositionVGMd, &_s7SwiftUI7BindingVyAA14ScrollPositionVGMR) + 32);
  v7 = type metadata accessor for ScrollPosition();
  (*(*(v7 - 8) + 8))(&v5[v6], v7);

  if (*&v4[v3[22]])
  {
  }

  v8 = &v4[v3[23]];
  v9 = *(v11 - 8);
  if (!(*(v9 + 48))(v8, 1, v11))
  {
    (*(v9 + 8))(v8, v11);
  }

  type metadata accessor for Optional();
  type metadata accessor for State();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in CarouselView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v14[0] = v2[2];
  v5 = v14[0];
  v14[1] = v6;
  v14[2] = v7;
  v14[3] = v8;
  v14[4] = v9;
  v14[5] = v10;
  v11 = *(type metadata accessor for CarouselView(0, v14) - 8);
  v12 = v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80));

  return closure #1 in closure #1 in closure #1 in closure #1 in CarouselView.body.getter(a1, v12, v5, v7, v8, v9, a2);
}

uint64_t sub_10032602C()
{
  v1 = *(v0 + 2);
  v14[0] = *(v0 + 1);
  v13 = *&v14[0];
  v2 = *(v0 + 3);
  v14[1] = v1;
  v14[2] = v2;
  v3 = type metadata accessor for CarouselView(0, v14);
  v12 = *(*(v3 - 1) + 64);
  v4 = (*(*(v3 - 1) + 80) + 64) & ~*(*(v3 - 1) + 80);
  v5 = *(v13 - 8);
  v6 = *(v5 + 80);

  v7 = &v0[v4 + v3[17]];

  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14ScrollPositionVGMd, &_s7SwiftUI7BindingVyAA14ScrollPositionVGMR) + 32);
  v9 = type metadata accessor for ScrollPosition();
  (*(*(v9 - 8) + 8))(&v7[v8], v9);

  if (*&v0[v4 + v3[22]])
  {
  }

  v10 = &v0[v4 + v3[23]];
  if (!(*(v5 + 48))(v10, 1, v13))
  {
    (*(v5 + 8))(v10, v13);
  }

  type metadata accessor for Optional();
  type metadata accessor for State();

  (*(v5 + 8))(&v0[(v4 + v12 + v6) & ~v6], v13);
  return swift_deallocObject();
}

double partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in CarouselView.body.getter()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v14 = v0[2];
  v1 = v14;
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v7 = *(type metadata accessor for CarouselView(0, &v14) - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(*(v1 - 8) + 80);
  v14 = v1;
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v11 = (((v8 + 64) & ~v8) + v9 + v10) & ~v10;
  v18 = v5;
  v19 = v6;
  v12 = type metadata accessor for CarouselView(0, &v14);
  return CarouselView.setCurrentItem(_:animated:)(v0 + v11, 1, v12);
}

void CircularProgressView.setState(_:animated:)(uint64_t a1, int a2, char a3)
{
  v5 = &v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state];
  if ((a2 & 0x10000) != 0)
  {
    if (v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10])
    {
      return;
    }

    *v5 = *&a1;
    *(v5 + 4) = a2;
    v5[10] = 1;
    if (a3)
    {
      v6 = *&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
      goto LABEL_13;
    }
  }

  else
  {
    if ((v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10] & 1) == 0)
    {
      v16 = *v5;
      v17 = *(v5 + 4);
      if ((a2 & 0x100) != 0)
      {
        if (a1 | a2)
        {
          if ((*(v5 + 4) & 0x100) != 0 && *&v16 | *(v5 + 4))
          {
            return;
          }
        }

        else if ((*(v5 + 4) & 0x100) != 0 && !(*&v16 | *(v5 + 4)))
        {
          return;
        }
      }

      else if ((*(v5 + 4) & 0x100) == 0)
      {
        if (a2)
        {
          if (v17)
          {
            return;
          }
        }

        else if ((v17 & 1) == 0 && *&a1 == v16)
        {
          return;
        }
      }
    }

    *v5 = *&a1;
    *(v5 + 4) = a2;
    v5[10] = 0;
    if (a3)
    {
      v6 = *&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
      LOBYTE(v7) = a2;
      if ((a2 & 0x100) == 0)
      {
        goto LABEL_5;
      }

LABEL_23:
      if (a1 | v7)
      {
        [v6 setOpacity:0.0];
        if (a3)
        {
          return;
        }
      }

      else if (*&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator])
      {
        v20 = swift_allocObject();
        *(v20 + 16) = v3;
        *(v20 + 24) = v6;
        v21 = v3;
        v22 = v6;

        CircularProgressView.SpinAnimator.stop(to:progressValueProvider:)(partial apply for closure #2 in CircularProgressView.setState(_:animated:), v20, 1.0);

        if (a3)
        {
          return;
        }
      }

      else
      {
        [v6 setStrokeEnd:1.0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0, &_ss23_ContiguousArrayStorageCyyXlGMR_0);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_1004F2F10;
        type metadata accessor for UIAction(0, &_sSo8NSNumberCML_0, NSNumber_ptr);
        *(v23 + 32) = NSNumber.init(integerLiteral:)(4);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v6 setLineDashPattern:isa];

        if (a3)
        {
          return;
        }
      }

      goto LABEL_46;
    }
  }

  v13 = objc_opt_self();
  [v13 begin];
  [v13 setDisableActions:1];
  v6 = *&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
  if (v5[10])
  {
LABEL_13:
    [v6 setLineDashPattern:0];
    if (*&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator])
    {
      v14 = swift_allocObject();
      *(v14 + 16) = v3;
      v15 = v3;

      CircularProgressView.SpinAnimator.stop(to:progressValueProvider:)(partial apply for closure #3 in CircularProgressView.setState(_:animated:), v14, 0.0);

      goto LABEL_15;
    }

LABEL_40:
    if (a3)
    {
      return;
    }

    goto LABEL_46;
  }

  a1 = *v5;
  v7 = *(v5 + 4);
  if ((v7 & 0x100) != 0)
  {
    goto LABEL_23;
  }

LABEL_5:
  v8 = *&a1;
  [v6 setLineDashPattern:0];
  LODWORD(v9) = 1.0;
  [v6 setOpacity:v9];
  if ((v7 & 1) == 0)
  {
    if (*&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator])
    {
      v18 = swift_allocObject();
      *(v18 + 16) = v3;

      v19 = v3;
      CircularProgressView.SpinAnimator.stop(to:progressValueProvider:)(partial apply for closure #1 in CircularProgressView.setState(_:animated:), v18, v8);

      if (a3)
      {
        return;
      }

      goto LABEL_46;
    }

    [v6 setStrokeEnd:v8];
    goto LABEL_40;
  }

  v10 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator;
  v11 = *&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator];
  if (!v11)
  {
    type metadata accessor for CircularProgressView.SpinAnimator();
    v11 = swift_allocObject();
    *(v11 + 40) = 0;
    *(v11 + 16) = 0xD000000000000010;
    *(v11 + 24) = 0x80000001004D1810;
    *(v11 + 32) = v6;
    v12 = v6;
  }

  *&v3[v10] = v11;

  CircularProgressView.SpinAnimator.start()();
LABEL_15:

  if (a3)
  {
    return;
  }

LABEL_46:
  v25 = objc_opt_self();

  [v25 commit];
}

BOOL static CircularProgressView.State.__derived_enum_equals(_:_:)(uint64_t a1, __int16 a2, uint64_t a3, __int16 a4)
{
  if ((a2 & 0x100) != 0)
  {
    v5 = (a3 | a4) == 0;
    if ((a4 & 0x100) == 0)
    {
      v5 = 0;
    }

    v6 = (a3 | a4) != 0;
    if ((a4 & 0x100) == 0)
    {
      v6 = 0;
    }

    if (a1 | a2)
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
    if ((a4 & 0x100) == 0)
    {
      if (a2)
      {
        if (a4)
        {
          return 1;
        }
      }

      else if ((a4 & 1) == 0 && *&a1 == *&a3)
      {
        return 1;
      }
    }

    return 0;
  }
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance CircularProgressView.State(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 9) == 1)
  {
    if (*&v2 | v3)
    {
      if (*(a2 + 9))
      {
        return (*&v4 | v5) != 0;
      }
    }

    else if (*(a2 + 9))
    {
      return (*&v4 | v5) == 0;
    }

    return 0;
  }

  if ((*(a2 + 9) & 1) == 0)
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else if ((v5 & 1) == 0 && v2 == v4)
    {
      return 1;
    }
  }

  return 0;
}

char *CircularProgressView.init(size:)(double a1, double a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state];
  *v6 = 0;
  *(v6 + 4) = 0;
  v6[10] = 1;
  *&v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image] = 0;
  *&v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView] = 0;
  *&v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale] = 0x3FE0000000000000;
  *&v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator] = 0;
  v7 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer;
  *&v2[v7] = [objc_allocWithZone(CAShapeLayer) init];
  v8 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer;
  *&v2[v8] = [objc_allocWithZone(CAShapeLayer) init];
  v9 = &v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_preferredSize];
  *v9 = a1;
  v9[1] = a2;
  v25.receiver = v2;
  v25.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, a1, a2);
  v11 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer;
  v12 = *&v10[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer];
  v13 = objc_opt_self();
  v14 = v10;
  v15 = v12;
  v16 = [v13 clearColor];
  v17 = [v16 CGColor];

  [v15 setFillColor:v17];
  [*&v10[v11] setLineWidth:2.5];
  v18 = [v14 layer];
  [v18 addSublayer:*&v10[v11]];

  v19 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer;
  [*&v14[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer] setLineCap:kCALineCapRound];
  [*&v14[v19] setStrokeEnd:0.0];
  v20 = *&v14[v19];
  v21 = [v13 clearColor];
  v22 = [v21 CGColor];

  [v20 setFillColor:v22];
  [*&v14[v19] setLineWidth:2.5];
  [*&v14[v19] setLineDashPhase:6.0];
  v23 = [v14 layer];

  [v23 addSublayer:*&v14[v19]];
  CircularProgressView.updateColors()();

  return v14;
}

void CircularProgressView.updateColors()()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer];
  v2 = [objc_opt_self() tertiarySystemFillColor];
  v3 = [v2 CGColor];

  [v1 setStrokeColor:v3];
  v4 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
  v5 = [v0 tintColor];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 CGColor];

    [v4 setStrokeColor:v7];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall CircularProgressView.tintColorDidChange()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, "tintColorDidChange");
  CircularProgressView.updateColors()();
}

Swift::Void __swiftcall CircularProgressView.layoutSubviews()()
{
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, "layoutSubviews");
  [v0 bounds];
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  v5 = CGRectGetWidth(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v6 = CGRectGetHeight(v26);
  if (v6 >= v5)
  {
    v6 = v5;
  }

  v7 = (v6 + -2.5) * 0.5;
  CGRect.center.getter();
  v10 = [objc_opt_self() bezierPathWithArcCenter:1 radius:v8 startAngle:v9 endAngle:v7 clockwise:{-1.57079633, 4.71238898}];
  v11 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer];
  v12 = [v10 CGPath];
  [v11 setPath:v12];

  v13 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
  v14 = [v10 CGPath];
  [v13 setPath:v14];

  [v13 setBounds:{x, y, width, height}];
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v15 = CGRectGetWidth(v27) * 0.5;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  [v13 setPosition:{v15, CGRectGetHeight(v28) * 0.5}];
  v16 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView;
  v17 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView];
  if (v17)
  {
    [v17 setFrame:{x, y, width, height}];
    v18 = *&v0[v16];
    if (v18)
    {
      v19 = v18;
      [v19 frame];
      v20 = CGRectGetWidth(v29);
      [v19 frame];
      v21 = CGRectGetHeight(v30);
      if (v21 < v20)
      {
        v20 = v21;
      }

      v22 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
      swift_beginAccess();
      v23 = [objc_opt_self() configurationWithPointSize:v20 * *&v0[v22]];
      [v19 setPreferredSymbolConfiguration:v23];
    }
  }
}

double CircularProgressView.sizeThatFits(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_preferredSize;
  swift_beginAccess();
  return *v1;
}

id CircularProgressView.preferredSize.setter(double a1, double a2)
{
  v5 = &v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_preferredSize];
  result = swift_beginAccess();
  v7 = *v5;
  v8 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  if (v7 != a1 || v8 != a2)
  {
    return [v2 invalidateIntrinsicContentSize];
  }

  return result;
}

void (*CircularProgressView.preferredSize.modify(uint64_t *a1))(id **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_preferredSize;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return CircularProgressView.preferredSize.modify;
}

void CircularProgressView.preferredSize.modify(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 3);
  v3 = ((*a1)[6] + (*a1)[5]);
  v4 = *(*a1 + 4);
  v5 = *v3;
  v6 = v3[1];
  *v3 = v2;
  v3[1] = v4;
  if (v2 != v5 || v4 != v6)
  {
    [v1[5] invalidateIntrinsicContentSize];
  }

  free(v1);
}

void (*CircularProgressView.state.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 8);
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10);
  *a1 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state);
  *(a1 + 8) = v2;
  *(a1 + 10) = v3;
  return CircularProgressView.state.modify;
}

double closure #2 in CircularProgressView.setState(_:animated:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator);
  if (v6)
  {
    v7 = v6 == a1;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    *(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator) = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0, &_ss23_ContiguousArrayStorageCyyXlGMR_0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1004F2F10;
  type metadata accessor for UIAction(0, &_sSo8NSNumberCML_0, NSNumber_ptr);
  *(v8 + 32) = NSNumber.init(integerLiteral:)(4);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a3 setLineDashPattern:isa];

  v10 = a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state;
  result = 0.0;
  if ((*(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10) & 1) == 0)
  {
    v12 = *v10;
    v13 = *(v10 + 8);
    if ((v13 & 0x100) != 0)
    {
      if (!(*&v12 | v13))
      {
        return 1.0;
      }
    }

    else
    {
      result = v12;
      if (v13)
      {
        return 0.6;
      }
    }
  }

  return result;
}

double closure #1 in CircularProgressView.setState(_:animated:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator);
  if (v4)
  {
    v5 = v4 == a1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    *(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator) = 0;
  }

  v6 = a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state;
  result = 0.0;
  if ((*(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10) & 1) == 0)
  {
    v8 = *v6;
    v9 = *(v6 + 8);
    if ((v9 & 0x100) != 0)
    {
      if (!(*&v8 | v9))
      {
        return 1.0;
      }
    }

    else
    {
      result = v8;
      if (v9)
      {
        return 0.6;
      }
    }
  }

  return result;
}

uint64_t sub_100327640()
{

  return swift_deallocObject();
}

void CircularProgressView.image.didset()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView;
    v4 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView);
    if (v4)
    {
      v5 = v2;
      v6 = v4;
    }

    else
    {
      v8 = objc_allocWithZone(UIImageView);
      v9 = v2;
      v6 = [v8 init];
    }

    v10 = v4;
    [v6 setImage:v2];
    v11 = *(v0 + v3);
    if (v11)
    {
      v12 = v11;
      [v12 frame];
      Width = CGRectGetWidth(v18);
      [v12 frame];
      Height = CGRectGetHeight(v19);
      if (Height < Width)
      {
        Width = Height;
      }

      v15 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
      swift_beginAccess();
      v16 = [objc_opt_self() configurationWithPointSize:Width * *(v0 + v15)];
      [v12 setPreferredSymbolConfiguration:v16];

      v7 = *(v0 + v3);
    }

    else
    {
      v7 = 0;
    }

    *(v0 + v3) = v6;
    v17 = v6;
    CircularProgressView.imageView.didset(v7);
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView);
    *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView) = 0;
    CircularProgressView.imageView.didset(v7);
  }
}

void *CircularProgressView.image.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CircularProgressView.image.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  CircularProgressView.image.didset();
}

void (*CircularProgressView.image.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CircularProgressView.image.modify;
}

void CircularProgressView.image.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    CircularProgressView.image.didset();
  }
}

void CircularProgressView.imageView.didset(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView;
  v5 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView];
  if (v5)
  {
    if (!a1)
    {
LABEL_10:
      v13 = v5;
      [v13 setContentMode:4];
      [v2 addSubview:v13];

      return;
    }

    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIImageView, UIImageView_ptr);
    v6 = v5;
    v3 = v3;
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v8 = v3;
  v9 = [v8 superview];
  if (v9)
  {
    v10 = v9;
    type metadata accessor for UIAction(0, &_sSo6UIViewCML_0, UIView_ptr);
    v11 = v2;
    v12 = static NSObject.== infix(_:_:)();

    if (v12)
    {
      [v8 removeFromSuperview];
    }
  }

  v5 = *&v2[v4];
  if (v5)
  {
    goto LABEL_10;
  }
}

double CircularProgressView.imageScale.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
  swift_beginAccess();
  return *(v0 + v1);
}

void CircularProgressView.imageScale.setter(double a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 != a1)
  {
    v5 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView);
    if (v5)
    {
      v6 = v5;
      [v6 frame];
      Width = CGRectGetWidth(v10);
      [v6 frame];
      Height = CGRectGetHeight(v11);
      if (Height >= Width)
      {
        Height = Width;
      }

      v9 = [objc_opt_self() configurationWithPointSize:*(v1 + v3) * Height];
      [v6 setPreferredSymbolConfiguration:v9];
    }
  }
}

void (*CircularProgressView.imageScale.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return CircularProgressView.imageScale.modify;
}

void CircularProgressView.imageScale.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    CircularProgressView.imageScale.setter(v3);
  }

  else
  {
    v5 = v2[4];
    v4 = v2[5];
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v3 != v6)
    {
      v7 = v2[4];
      v8 = *(v7 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView);
      if (v8)
      {
        v9 = v2[5];
        v10 = v8;
        [v10 frame];
        Width = CGRectGetWidth(v15);
        [v10 frame];
        Height = CGRectGetHeight(v16);
        if (Height >= Width)
        {
          Height = Width;
        }

        v13 = [objc_opt_self() configurationWithPointSize:*(v7 + v9) * Height];
        [v10 setPreferredSymbolConfiguration:v13];
      }
    }
  }

  free(v2);
}

void CircularProgressView.SpinAnimator.start()()
{
  *(v0 + 40) = 0;
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = String._bridgeToObjectiveC()();
  [v1 removeAnimationForKey:v4];

  *&v21[0] = v3;
  *(&v21[0] + 1) = v2;

  v5._countAndFlagsBits = 0x676E69646E65;
  v5._object = 0xE600000000000000;
  String.append(_:)(v5);
  v6 = String._bridgeToObjectiveC()();

  [v1 removeAnimationForKey:v6];

  [v1 setStrokeEnd:0.6];
  v7 = String._bridgeToObjectiveC()();
  v8 = [objc_opt_self() animationWithKeyPath:v7];

  v9 = [v1 presentationLayer];
  if (!v9)
  {
    v9 = v1;
  }

  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 valueForKeyPath:v10];

  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21[0] = v19;
  v21[1] = v20;
  if (*(&v20 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    _sypSgWOh_0(v21);
  }

  isa = Double._bridgeToObjectiveC()().super.super.isa;
  [v8 setFromValue:isa];

  v13 = Double._bridgeToObjectiveC()().super.super.isa;
  [v8 setToValue:v13];

  v14 = v8;
  [v14 setRemovedOnCompletion:1];
  [v14 setFillMode:kCAFillModeBoth];
  [v14 setDuration:1.0];
  LODWORD(v15) = 2139095040;
  [v14 setRepeatCount:v15];
  v16 = CACurrentMediaTime();
  [v14 duration];
  [v14 setBeginTime:{(v16 - fmod(v16, v17))}];

  v18 = String._bridgeToObjectiveC()();
  [v1 addAnimation:v14 forKey:v18];
}

void CircularProgressView.SpinAnimator.stop(to:progressValueProvider:)(uint64_t a1, uint64_t a2, double a3)
{
  if ((*(v3 + 40) & 1) == 0)
  {
    *(v3 + 40) = 1;
    v7 = *(v3 + 32);
    v8 = [v7 presentationLayer];
    if (!v8)
    {
      v8 = v7;
    }

    v9 = String._bridgeToObjectiveC()();
    v10 = [v8 valueForKeyPath:v9];

    if (v10)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
    }

    v11 = fmin(a3, 0.1);
    v43[0] = v41;
    v43[1] = v42;
    if (*(&v42 + 1))
    {
      swift_dynamicCast();
    }

    else
    {
      _sypSgWOh_0(v43);
    }

    v12 = String._bridgeToObjectiveC()();
    v13 = objc_opt_self();
    v14 = [v13 animationWithKeyPath:v12];

    isa = Double._bridgeToObjectiveC()().super.super.isa;
    [v14 setFromValue:isa];

    v16 = Double._bridgeToObjectiveC()().super.super.isa;
    [v14 setToValue:v16];

    v17 = String._bridgeToObjectiveC()();
    v18 = [v13 animationWithKeyPath:v17];

    v19 = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v18 setToValue:v19];

    v20 = [objc_allocWithZone(CAAnimationGroup) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0, &_ss23_ContiguousArrayStorageCyyXlGMR_0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1004F2FF0;
    *(v21 + 32) = v14;
    *(v21 + 40) = v18;
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for CAAnimation, CAAnimation_ptr);
    v22 = v14;
    v23 = v18;
    v24 = Array._bridgeToObjectiveC()().super.isa;

    [v20 setAnimations:v24];

    v25 = v20;
    [v25 setDuration:((1.0 - (0.6 - v11)) * 6.28318531 + -6.28318531 + 6.28318531) * 0.159154943];
    [v25 setFillMode:kCAFillModeForwards];
    [v25 setRemovedOnCompletion:0];
    v26 = type metadata accessor for CircularProgressView.SpinAnimator.Delegate();
    v27 = objc_allocWithZone(v26);
    v28 = &v27[OBJC_IVAR____TtCCC11MusicCoreUI20CircularProgressViewP33_2327D9925563EEC9FF3A63D4DED4721D12SpinAnimator8Delegate_onAnimationDidStop];
    *v28 = 0;
    *(v28 + 1) = 0;
    v40.receiver = v27;
    v40.super_class = v26;
    v29 = objc_msgSendSuper2(&v40, "init");
    [v25 setDelegate:v29];

    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = v3;
    *(v30 + 32) = v11;
    *(v30 + 40) = a1;
    *(v30 + 48) = a2;
    *(v30 + 56) = a3;
    v31 = &v29[OBJC_IVAR____TtCCC11MusicCoreUI20CircularProgressViewP33_2327D9925563EEC9FF3A63D4DED4721D12SpinAnimator8Delegate_onAnimationDidStop];
    v32 = *&v29[OBJC_IVAR____TtCCC11MusicCoreUI20CircularProgressViewP33_2327D9925563EEC9FF3A63D4DED4721D12SpinAnimator8Delegate_onAnimationDidStop];
    v33 = *&v29[OBJC_IVAR____TtCCC11MusicCoreUI20CircularProgressViewP33_2327D9925563EEC9FF3A63D4DED4721D12SpinAnimator8Delegate_onAnimationDidStop + 8];
    *v31 = partial apply for closure #1 in CircularProgressView.SpinAnimator.stop(to:progressValueProvider:);
    v31[1] = v30;
    v34 = v29;

    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v32, v33);
    v36 = *(v3 + 16);
    v35 = *(v3 + 24);
    v37 = String._bridgeToObjectiveC()();
    [v7 removeAnimationForKey:v37];

    *&v43[0] = v36;
    *(&v43[0] + 1) = v35;

    v38._countAndFlagsBits = 0x676E69646E65;
    v38._object = 0xE600000000000000;
    String.append(_:)(v38);
    v39 = String._bridgeToObjectiveC()();

    [v7 addAnimation:v25 forKey:v39];
  }
}

uint64_t sub_1003285D0()
{

  return swift_deallocObject();
}

void closure #1 in CircularProgressView.SpinAnimator.stop(to:progressValueProvider:)(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  if (*(a5 + 40) == 1)
  {
    v11 = objc_opt_self();
    [v11 begin];
    [v11 setDisableActions:1];
    v12 = *(a5 + 32);
    v17 = *(a5 + 16);
    v18 = *(a5 + 24);

    v13._countAndFlagsBits = 0x676E69646E65;
    v13._object = 0xE600000000000000;
    String.append(_:)(v13);
    v14 = String._bridgeToObjectiveC()();

    [v12 removeAnimationForKey:{v14, v17, v18}];

    [v12 setStrokeStart:0.0];
    [v12 setStrokeEnd:a1];
    [v11 commit];
    v15 = COERCE_DOUBLE(a6(a5));
    if (v16)
    {
      v15 = a2;
    }

    [v12 setStrokeEnd:v15];
  }
}

id CircularProgressView.SpinAnimator.Delegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CircularProgressView.SpinAnimator.Delegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t CircularProgressView.SpinAnimator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void specialized CircularProgressView.init(coder:)()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 10) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale) = 0x3FE0000000000000;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator) = 0;
  v2 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer;
  *(v0 + v2) = [objc_allocWithZone(CAShapeLayer) init];
  v3 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer;
  *(v0 + v3) = [objc_allocWithZone(CAShapeLayer) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t __swift_memcpy10_8_0(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CircularProgressView.State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CircularProgressView.State(uint64_t result, int a2, int a3)
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

  *(result + 10) = v3;
  return result;
}

uint64_t getEnumTag for CircularProgressView.State(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for CircularProgressView.State(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

uint64_t sub_100328C18()
{

  return swift_deallocObject();
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ17_MusicKit_SwiftUI12ArtworkImageV0b4CoreE0E11GridPreviewO4ItemV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork.CropStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR_0);
  __chkstk_darwin();
  v9 = &v51 - v8;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSg_AGtMd, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSg_AGtMR);
  __chkstk_darwin();
  v67 = &v51 - v10;
  v69 = type metadata accessor for ArtworkImage.ViewModel(0);
  v11 = *(v69 - 8);
  __chkstk_darwin();
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
  __chkstk_darwin();
  v64 = &v51 - v14;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSg_AGtMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSg_AGtMR);
  __chkstk_darwin();
  v71 = &v51 - v15;
  v70 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  __chkstk_darwin();
  v17 = (&v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v66 = &v51 - v19;
  v20 = *(a1 + 16);
  if (v20 == *(a2 + 16))
  {
    if (v20 && a1 != a2)
    {
      v54 = v9;
      v21 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v22 = a1 + v21;
      v23 = a2 + v21;
      v63 = (v11 + 48);
      v57 = (v5 + 48);
      v58 = v4;
      v51 = (v5 + 32);
      v52 = v7;
      v53 = (v5 + 8);
      v61 = *(v18 + 72);
      v24 = v64;
      v25 = v66;
      v59 = v13;
      v56 = v17;
      while (1)
      {
        outlined init with copy of Collaboration.Management.View(v22, v25, type metadata accessor for ArtworkImage.GridPreview.Item);
        v68 = v22;
        outlined init with copy of Collaboration.Management.View(v23, v17, type metadata accessor for ArtworkImage.GridPreview.Item);
        v26 = *v25 == *v17 && v25[1] == v17[1];
        if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
LABEL_32:
          outlined destroy of ArtworkImage.Placeholder(v17, type metadata accessor for ArtworkImage.GridPreview.Item);
          outlined destroy of ArtworkImage.Placeholder(v25, type metadata accessor for ArtworkImage.GridPreview.Item);
          goto LABEL_33;
        }

        v27 = v71;
        v28 = *(v70 + 20);
        v29 = *(v65 + 48);
        outlined init with copy of TaskPriority?(v25 + v28, v71, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
        outlined init with copy of TaskPriority?(v17 + v28, v27 + v29, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
        v30 = *v63;
        v31 = v27;
        v32 = v69;
        if ((*v63)(v31, 1, v69) == 1)
        {
          break;
        }

        v60 = v20;
        v34 = v71;
        outlined init with copy of TaskPriority?(v71, v24, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
        if (v30(v34 + v29, 1, v32) == 1)
        {
          outlined destroy of ArtworkImage.Placeholder(v24, type metadata accessor for ArtworkImage.ViewModel);
          v25 = v66;
LABEL_26:
          v48 = &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSg_AGtMd;
          v49 = &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSg_AGtMR;
          goto LABEL_31;
        }

        v35 = v59;
        outlined init with take of Collaboration.Management.View(v71 + v29, v59, type metadata accessor for ArtworkImage.ViewModel);
        if ((static Artwork.== infix(_:_:)() & 1) == 0)
        {
          outlined destroy of ArtworkImage.Placeholder(v35, type metadata accessor for ArtworkImage.ViewModel);
          goto LABEL_30;
        }

        v36 = *(v69 + 20);
        v37 = *(v62 + 48);
        v38 = v67;
        outlined init with copy of TaskPriority?(v24 + v36, v67, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR_0);
        outlined init with copy of TaskPriority?(v35 + v36, v38 + v37, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR_0);
        v39 = *v57;
        v40 = v38;
        v41 = v58;
        if ((*v57)(v40, 1, v58) == 1)
        {
          outlined destroy of ArtworkImage.Placeholder(v35, type metadata accessor for ArtworkImage.ViewModel);
          v42 = v39(v67 + v37, 1, v41);
          v17 = v56;
          if (v42 != 1)
          {
            goto LABEL_29;
          }

          outlined destroy of TaskPriority?(v67, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR_0);
          v24 = v64;
          outlined destroy of ArtworkImage.Placeholder(v64, type metadata accessor for ArtworkImage.ViewModel);
          v25 = v66;
          v20 = v60;
          goto LABEL_18;
        }

        v43 = v67;
        v44 = v54;
        outlined init with copy of TaskPriority?(v67, v54, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR_0);
        if (v39(v43 + v37, 1, v41) == 1)
        {
          outlined destroy of ArtworkImage.Placeholder(v59, type metadata accessor for ArtworkImage.ViewModel);
          (*v53)(v44, v41);
          v17 = v56;
LABEL_29:
          outlined destroy of TaskPriority?(v67, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSg_AGtMd, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSg_AGtMR);
          v24 = v64;
LABEL_30:
          v25 = v66;
          outlined destroy of ArtworkImage.Placeholder(v24, type metadata accessor for ArtworkImage.ViewModel);
          v48 = &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd;
          v49 = &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR;
LABEL_31:
          outlined destroy of TaskPriority?(v71, v48, v49);
          goto LABEL_32;
        }

        v45 = v52;
        (*v51)(v52, v43 + v37, v41);
        lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Artwork.CropStyle and conformance Artwork.CropStyle, &type metadata accessor for Artwork.CropStyle, &protocol conformance descriptor for Artwork.CropStyle);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v46 = *v53;
        (*v53)(v45, v41);
        outlined destroy of ArtworkImage.Placeholder(v59, type metadata accessor for ArtworkImage.ViewModel);
        v46(v44, v41);
        outlined destroy of TaskPriority?(v43, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR_0);
        v24 = v64;
        outlined destroy of ArtworkImage.Placeholder(v64, type metadata accessor for ArtworkImage.ViewModel);
        outlined destroy of TaskPriority?(v71, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
        v17 = v56;
        v25 = v66;
        v20 = v60;
        if ((v55 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_21:
        v47 = specialized static ArtworkImage.Placeholder.__derived_enum_equals(_:_:)(v25 + *(v70 + 24), v17 + *(v70 + 24));
        outlined destroy of ArtworkImage.Placeholder(v17, type metadata accessor for ArtworkImage.GridPreview.Item);
        outlined destroy of ArtworkImage.Placeholder(v25, type metadata accessor for ArtworkImage.GridPreview.Item);
        if (v47)
        {
          v23 += v61;
          v22 = v68 + v61;
          if (--v20)
          {
            continue;
          }
        }

        return v47 & 1;
      }

      v33 = v30(v71 + v29, 1, v32);
      v25 = v66;
      if (v33 != 1)
      {
        goto LABEL_26;
      }

LABEL_18:
      outlined destroy of TaskPriority?(v71, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
      goto LABEL_21;
    }

    v47 = 1;
  }

  else
  {
LABEL_33:
    v47 = 0;
  }

  return v47 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ12CoreGraphics7CGFloatV_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11MusicCoreUI16PlaylistCuratorsO7CuratorV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v46 = type metadata accessor for Artwork();
  v4 = *(v46 - 8);
  __chkstk_darwin();
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  __chkstk_darwin();
  v44 = &v34 - v6;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSg_ADtMd, &_s8MusicKit7ArtworkVSg_ADtMR);
  __chkstk_darwin();
  v8 = &v34 - v7;
  v42 = type metadata accessor for PlaylistCurators.Curator(0);
  __chkstk_darwin();
  v47 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v45 = (&v34 - v11);
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      return 1;
    }

    v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = (v4 + 48);
    v35 = (v4 + 32);
    v36 = (v4 + 48);
    v37 = (v4 + 8);
    v41 = *(v10 + 72);
    v17 = v44;
    v18 = v45;
    while (1)
    {
      outlined init with copy of Collaboration.Management.View(v14, v18, type metadata accessor for PlaylistCurators.Curator);
      v19 = v47;
      outlined init with copy of Collaboration.Management.View(v15, v47, type metadata accessor for PlaylistCurators.Curator);
      v20 = *v18 == *v19 && v18[1] == v19[1];
      if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v21 = v18;
      v22 = v16;
      v23 = *(v42 + 20);
      v24 = *(v43 + 48);
      outlined init with copy of TaskPriority?(v21 + v23, v8, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
      outlined init with copy of TaskPriority?(v47 + v23, &v8[v24], &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
      v25 = *v22;
      if ((*v22)(v8, 1, v46) == 1)
      {
        if (v25(&v8[v24], 1, v46) != 1)
        {
          goto LABEL_19;
        }

        v16 = v22;
        outlined destroy of TaskPriority?(v8, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
        outlined destroy of ArtworkImage.Placeholder(v47, type metadata accessor for PlaylistCurators.Curator);
        v18 = v45;
        outlined destroy of ArtworkImage.Placeholder(v45, type metadata accessor for PlaylistCurators.Curator);
      }

      else
      {
        v40 = v14;
        v26 = v8;
        outlined init with copy of TaskPriority?(v8, v17, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
        if (v25(&v8[v24], 1, v46) == 1)
        {
          (*v37)(v17, v46);
LABEL_19:
          outlined destroy of TaskPriority?(v8, &_s8MusicKit7ArtworkVSg_ADtMd, &_s8MusicKit7ArtworkVSg_ADtMR);
          v18 = v45;
          break;
        }

        v27 = &v8[v24];
        v28 = v38;
        v29 = v46;
        (*v35)(v38, v27, v46);
        lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Artwork and conformance Artwork, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
        v39 = dispatch thunk of static Equatable.== infix(_:_:)();
        v30 = *v37;
        v31 = v28;
        v32 = v44;
        (*v37)(v31, v29);
        v17 = v32;
        v30(v32, v29);
        outlined destroy of TaskPriority?(v26, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
        outlined destroy of ArtworkImage.Placeholder(v47, type metadata accessor for PlaylistCurators.Curator);
        v18 = v45;
        v16 = v36;
        outlined destroy of ArtworkImage.Placeholder(v45, type metadata accessor for PlaylistCurators.Curator);
        v8 = v26;
        v14 = v40;
        if ((v39 & 1) == 0)
        {
          return 0;
        }
      }

      v15 += v41;
      v14 += v41;
      if (!--v12)
      {
        return 1;
      }
    }

    outlined destroy of ArtworkImage.Placeholder(v47, type metadata accessor for PlaylistCurators.Curator);
    outlined destroy of ArtworkImage.Placeholder(v18, type metadata accessor for PlaylistCurators.Curator);
  }

  return 0;
}

uint64_t Collaboration.Management.Model.__allocating_init(manager:playlist:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = specialized Collaboration.Management.Model.init(manager:playlist:)(a1, a2);

  return v4;
}

uint64_t Collaboration.Management.Model.init(manager:playlist:)(uint64_t a1, uint64_t a2)
{
  v2 = specialized Collaboration.Management.Model.init(manager:playlist:)(a1, a2);

  return v2;
}

uint64_t property wrapper backing initializer of Collaboration.Management.Model.playlist(char *a1)
{
  v2 = type metadata accessor for Playlist();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v12 - v7;
  v9 = *(v3 + 16);
  v9(&v12 - v7, a1, v2, v6);
  (v9)(v5, v8, v2);
  Published.init(initialValue:)();
  v10 = *(v3 + 8);
  v10(a1, v2);
  return (v10)(v8, v2);
}

uint64_t closure #1 in Collaboration.Management.Model.init(manager:playlist:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    static ApplicationCapabilities.shared.getter(v3);
    outlined destroy of ApplicationCapabilities(v3);
    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t closure #2 in Collaboration.Management.Model.init(manager:playlist:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd_0, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR_0);
  v5[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy8MusicKit0D24LibrarySectionedResponseVyAF8PlaylistVAJ0dE8InternalE12CollaboratorVGSg_GMd, &_s7Combine9PublishedV9PublisherVy8MusicKit0D24LibrarySectionedResponseVyAF8PlaylistVAJ0dE8InternalE12CollaboratorVGSg_GMR);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy8MusicKit0G24LibrarySectionedResponseVyAJ8PlaylistVAN0gH8InternalE12CollaboratorVGSg_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy8MusicKit0G24LibrarySectionedResponseVyAJ8PlaylistVAN0gH8InternalE12CollaboratorVGSg_GSo17OS_dispatch_queueCGMR);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23LibrarySectionedRequestVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGMd, &_s8MusicKit0A23LibrarySectionedRequestVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGMR);
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();

  return _swift_task_switch(closure #2 in Collaboration.Management.Model.init(manager:playlist:), 0, 0);
}

uint64_t closure #2 in Collaboration.Management.Model.init(manager:playlist:)()
{
  type metadata accessor for Playlist();
  type metadata accessor for Playlist.Collaborator();
  lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Playlist.Collaborator and conformance Playlist.Collaborator, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
  MusicLibrarySectionedRequest.init()();
  swift_getKeyPath();
  v0[2] = Playlist.id.getter();
  v0[3] = v1;
  MusicLibrarySectionedRequest.filterSections<A>(matching:equalTo:)();

  type metadata accessor for MainActor();
  v0[17] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Collaboration.Management.Model.init(manager:playlist:), v3, v2);
}

{

  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type MusicLibrarySectionedRequest<Playlist, Playlist.Collaborator> and conformance MusicLibrarySectionedRequest<A, B>, &_s8MusicKit0A23LibrarySectionedRequestVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGMd, &_s8MusicKit0A23LibrarySectionedRequestVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGMR, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
  *(v0 + 144) = MusicAutoupdatableRequest.autoupdatingResponse.getter();

  return _swift_task_switch(closure #2 in Collaboration.Management.Model.init(manager:playlist:), 0, 0);
}

{
  v1 = v0[13];
  v15 = v0[14];
  v16 = v0[16];
  v13 = v0[12];
  v14 = v0[15];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v11 = v0[8];
  v12 = v0[11];
  v5 = v0[6];
  *(v5 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponse) = v0[18];

  dispatch thunk of MusicAutoupdatingResponse.$response.getter();

  type metadata accessor for UIAction(0, &_sSo17OS_dispatch_queueCML_0, OS_dispatch_queue_ptr);
  v6 = static OS_dispatch_queue.main.getter();
  v0[4] = v6;
  v7 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Published<MusicLibrarySectionedResponse<Playlist, Playlist.Collaborator>?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy8MusicKit0D24LibrarySectionedResponseVyAF8PlaylistVAJ0dE8InternalE12CollaboratorVGSg_GMd, &_s7Combine9PublishedV9PublisherVy8MusicKit0D24LibrarySectionedResponseVyAF8PlaylistVAJ0dE8InternalE12CollaboratorVGSg_GMR, &protocol conformance descriptor for Published<A>.Publisher);
  _sSo17OS_dispatch_queueCAB7Combine9Scheduler8DispatchWl_0();
  Publisher.receive<A>(on:options:)();
  outlined destroy of TaskPriority?(v4, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd_0, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR_0);

  (*(v3 + 8))(v2, v11);
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Published<MusicLibrarySectionedResponse<Playlist, Playlist.Collaborator>?>.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy8MusicKit0G24LibrarySectionedResponseVyAJ8PlaylistVAN0gH8InternalE12CollaboratorVGSg_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy8MusicKit0G24LibrarySectionedResponseVyAJ8PlaylistVAN0gH8InternalE12CollaboratorVGSg_GSo17OS_dispatch_queueCGMR, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v8 = Publisher<>.sink(receiveValue:)();

  (*(v13 + 8))(v1, v12);
  (*(v14 + 8))(v16, v15);
  *(v5 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponseSubscription) = v8;

  v9 = v0[1];

  return v9();
}

void closure #1 in closure #2 in Collaboration.Management.Model.init(manager:playlist:)(uint64_t a1, uint64_t a2)
{
  v220 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMR);
  __chkstk_darwin();
  v216 = &v182 - v3;
  v4 = type metadata accessor for Playlist.Collaborator();
  v214 = *(v4 - 8);
  __chkstk_darwin();
  v228 = &v182 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v213 = &v182 - v6;
  __chkstk_darwin();
  v231 = &v182 - v7;
  __chkstk_darwin();
  v223 = &v182 - v8;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA8PlaylistV0aB8InternalE12CollaboratorVGMd_0, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV0aB8InternalE12CollaboratorVGMR_0);
  v205 = *(v225 - 8);
  __chkstk_darwin();
  v204 = &v182 - v9;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC8PlaylistV0cD8InternalE12CollaboratorVGGMd, &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC8PlaylistV0cD8InternalE12CollaboratorVGGMR);
  __chkstk_darwin();
  v224 = &v182 - v10;
  v196 = type metadata accessor for Date();
  v194 = *(v196 - 8);
  __chkstk_darwin();
  v189 = &v182 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  __chkstk_darwin();
  v195 = &v182 - v12;
  v202 = type metadata accessor for Playlist();
  v201 = *(v202 - 1);
  __chkstk_darwin();
  v199 = &v182 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v200 = &v182 - v14;
  __chkstk_darwin();
  v192 = &v182 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd_0, &_s10Foundation4DateVSgMR_0);
  __chkstk_darwin();
  v190 = &v182 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v197 = &v182 - v17;
  __chkstk_darwin();
  v198 = &v182 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMR_0);
  __chkstk_darwin();
  v222 = &v182 - v19;
  v215 = type metadata accessor for Playlist.Collaborator.Status();
  v210 = *(v215 - 8);
  __chkstk_darwin();
  v208 = &v182 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v209 = &v182 - v21;
  v229 = type metadata accessor for Playlist.Collaboration();
  v230 = *(v229 - 8);
  __chkstk_darwin();
  v211 = &v182 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14LibrarySectionVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGMd, &_s8MusicKit0A14LibrarySectionVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGMR);
  v235 = *(v234 - 8);
  __chkstk_darwin();
  v217 = &v182 - v23;
  v232 = type metadata accessor for Logger();
  v226 = *(v232 - 8);
  __chkstk_darwin();
  v218 = &v182 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v207 = &v182 - v25;
  __chkstk_darwin();
  v206 = &v182 - v26;
  __chkstk_darwin();
  v227 = &v182 - v27;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMR_0);
  __chkstk_darwin();
  v191 = &v182 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v221 = &v182 - v29;
  __chkstk_darwin();
  v31 = &v182 - v30;
  __chkstk_darwin();
  v33 = &v182 - v32;
  __chkstk_darwin();
  v236 = &v182 - v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A24LibrarySectionedResponseVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMd, &_s8MusicKit0A24LibrarySectionedResponseVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMR);
  __chkstk_darwin();
  v36 = &v182 - v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14LibrarySectionVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMd, &_s8MusicKit0A14LibrarySectionVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMR);
  __chkstk_darwin();
  v219 = (&v182 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v39 = &v182 - v38;
  __chkstk_darwin();
  v41 = &v182 - v40;
  __chkstk_darwin();
  v43 = &v182 - v42;
  __chkstk_darwin();
  v237 = &v182 - v44;
  swift_beginAccess();
  v233 = a2;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v46 = *(Strong + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponse);

    if (v46)
    {
      v47 = dispatch thunk of MusicAutoupdatingResponse.isLoaded.getter();

      if (v47)
      {
        v188 = v4;
        outlined init with copy of TaskPriority?(v220, v36, &_s8MusicKit0A24LibrarySectionedResponseVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMd, &_s8MusicKit0A24LibrarySectionedResponseVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMR);
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A24LibrarySectionedResponseVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGMd, &_s8MusicKit0A24LibrarySectionedResponseVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGMR);
        v49 = *(v48 - 8);
        if ((*(v49 + 48))(v36, 1, v48) == 1)
        {
          outlined destroy of TaskPriority?(v36, &_s8MusicKit0A24LibrarySectionedResponseVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMd, &_s8MusicKit0A24LibrarySectionedResponseVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMR);
        }

        else
        {
          v50 = MusicLibrarySectionedResponse.sections.getter();
          (*(v49 + 8))(v36, v48);
          if (*(v50 + 16))
          {
            v51 = v234;
            (*(v235 + 16))(v237, v50 + ((*(v235 + 80) + 32) & ~*(v235 + 80)), v234);

            v52 = 0;
            v53 = v236;
            goto LABEL_10;
          }
        }

        v52 = 1;
        v53 = v236;
        v51 = v234;
LABEL_10:
        v54 = v235;
        v55 = v237;
        (*(v235 + 56))(v237, v52, 1, v51);
        outlined init with copy of TaskPriority?(v55, v43, &_s8MusicKit0A14LibrarySectionVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMd, &_s8MusicKit0A14LibrarySectionVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMR);
        v56 = *(v54 + 48);
        v185 = v54 + 48;
        v184 = v56;
        if (v56(v43, 1, v51) == 1)
        {
          outlined destroy of TaskPriority?(v43, &_s8MusicKit0A14LibrarySectionVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMd, &_s8MusicKit0A14LibrarySectionVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMR);
          v57 = v230;
          (*(v230 + 56))(v53, 1, 1, v229);
        }

        else
        {
          swift_getKeyPath();
          MusicLibrarySection.subscript.getter();
          v53 = v236;

          (*(v54 + 8))(v43, v51);
          v57 = v230;
        }

        v58 = v227;
        v59 = Logger.collaboration.unsafeMutableAddressor();
        v60 = v226;
        v61 = *(v226 + 16);
        v186 = v59;
        v62 = v232;
        v220 = v226 + 16;
        v187 = v61;
        v61(v58);
        outlined init with copy of TaskPriority?(v237, v41, &_s8MusicKit0A14LibrarySectionVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMd, &_s8MusicKit0A14LibrarySectionVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMR);
        outlined init with copy of TaskPriority?(v53, v33, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMR_0);
        v63 = Logger.logObject.getter();
        v183 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v63, v183))
        {
          v64 = swift_slowAlloc();
          v182 = swift_slowAlloc();
          v239 = v182;
          *v64 = 136446466;
          outlined init with copy of TaskPriority?(v41, v39, &_s8MusicKit0A14LibrarySectionVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMd, &_s8MusicKit0A14LibrarySectionVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMR);
          v65 = String.init<A>(describing:)();
          v67 = v66;
          outlined destroy of TaskPriority?(v41, &_s8MusicKit0A14LibrarySectionVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMd, &_s8MusicKit0A14LibrarySectionVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMR);
          v68 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v65, v67, &v239);

          *(v64 + 4) = v68;
          *(v64 + 12) = 2082;
          outlined init with copy of TaskPriority?(v33, v31, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMR_0);
          v69 = String.init<A>(describing:)();
          v71 = v70;
          outlined destroy of TaskPriority?(v33, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMR_0);
          v72 = v69;
          v57 = v230;
          v73 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v72, v71, &v239);

          *(v64 + 14) = v73;
          _os_log_impl(&_mh_execute_header, v63, v183, "    [Management] Did update collaborative playlist with:\n        playlist=%{public}s)\n        collaboration=%{public}s", v64, 0x16u);
          swift_arrayDestroy();

          v62 = v232;

          v74 = *(v60 + 8);
          v74(v227, v62);
        }

        else
        {

          outlined destroy of TaskPriority?(v33, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMR_0);
          outlined destroy of TaskPriority?(v41, &_s8MusicKit0A14LibrarySectionVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMd, &_s8MusicKit0A14LibrarySectionVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMR);
          v74 = *(v60 + 8);
          v74(v58, v62);
        }

        v75 = v235;
        v76 = v229;
        v77 = v219;
        outlined init with copy of TaskPriority?(v237, v219, &_s8MusicKit0A14LibrarySectionVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMd, &_s8MusicKit0A14LibrarySectionVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMR);
        v78 = v234;
        v79 = v184(v77, 1, v234);
        v80 = v222;
        v81 = v221;
        if (v79 == 1)
        {
          outlined destroy of TaskPriority?(v77, &_s8MusicKit0A14LibrarySectionVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMd, &_s8MusicKit0A14LibrarySectionVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMR);
LABEL_25:
          v97 = v218;
          v187(v218, v186, v62);
          v98 = Logger.logObject.getter();
          v99 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v98, v99))
          {
            v100 = swift_slowAlloc();
            *v100 = 0;
            _os_log_impl(&_mh_execute_header, v98, v99, "[Management] Dismissing management sheet", v100, 2u);
          }

          v74(v97, v62);
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            swift_getKeyPath();
            swift_getKeyPath();
            v240[0] = 1;
            static Published.subscript.setter();
          }

LABEL_29:
          outlined destroy of TaskPriority?(v236, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMR_0);
          outlined destroy of TaskPriority?(v237, &_s8MusicKit0A14LibrarySectionVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMd, &_s8MusicKit0A14LibrarySectionVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMR);
          return;
        }

        v82 = v77;
        v83 = v217;
        (*(v75 + 32))(v217, v82, v78);
        outlined init with copy of TaskPriority?(v236, v81, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMR_0);
        v227 = *(v57 + 48);
        if ((v227)(v81, 1, v76) == 1)
        {
          (*(v75 + 8))(v83, v78);
          outlined destroy of TaskPriority?(v81, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMR_0);
          v62 = v232;
          goto LABEL_25;
        }

        v212 = v74;
        v84 = v211;
        (*(v57 + 32))(v211, v81, v76);
        Playlist.Collaboration.collaboratorStatus.getter();
        v85 = v210;
        v86 = v215;
        if ((*(v210 + 48))(v80, 1, v215) == 1)
        {
          (*(v57 + 8))(v84, v76);
          (*(v75 + 8))(v217, v234);
          outlined destroy of TaskPriority?(v80, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMR_0);
LABEL_24:
          v62 = v232;
          v74 = v212;
          goto LABEL_25;
        }

        v87 = v209;
        (*(v85 + 32))(v209, v80, v86);
        v88 = v208;
        (*(v85 + 104))(v208, enum case for Playlist.Collaborator.Status.notJoined(_:), v86);
        lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Playlist.Collaborator.Status and conformance Playlist.Collaborator.Status, &type metadata accessor for Playlist.Collaborator.Status, &protocol conformance descriptor for Playlist.Collaborator.Status);
        v89 = v85;
        v90 = dispatch thunk of static Equatable.== infix(_:_:)();
        v91 = v215;
        v92 = v90;
        v94 = *(v89 + 8);
        v93 = v89 + 8;
        v95 = v88;
        v96 = v94;
        v94(v95, v215);
        if (v92)
        {
          v96(v87, v91);
          (*(v230 + 8))(v211, v76);
          (*(v75 + 8))(v217, v234);
          goto LABEL_24;
        }

        v210 = v93;
        swift_beginAccess();
        v101 = swift_weakLoadStrong();
        v102 = v230;
        if (!v101 || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , , v239 != 1))
        {
LABEL_47:
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            v120 = v200;
            MusicLibrarySection.item.getter();
            swift_getKeyPath();
            swift_getKeyPath();
            v121 = v201;
            v122 = v202;
            (*(v201 + 16))(v199, v120, v202);
            static Published.subscript.setter();
            (*(v121 + 8))(v120, v122);
          }

          swift_beginAccess();
          v123 = swift_weakLoadStrong();
          v124 = v224;
          if (v123)
          {
            v125 = Playlist.Collaboration.isOpenInvitation.getter();
            swift_getKeyPath();
            swift_getKeyPath();
            LOBYTE(v239) = v125 & 1;
            static Published.subscript.setter();
          }

          v202 = v96;
          v126 = v204;
          MusicLibrarySection.items.getter();
          v127 = v205;
          v128 = v225;
          (*(v205 + 16))(v124, v126, v225);
          v129 = *(v203 + 36);
          v130 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&_s8MusicKit0A14ItemCollectionVyAA8PlaylistV0aB8InternalE12CollaboratorVGACyxGSlAAWL_0, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV0aB8InternalE12CollaboratorVGMd_0, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV0aB8InternalE12CollaboratorVGMR_0, &protocol conformance descriptor for MusicItemCollection<A>);
          dispatch thunk of Collection.startIndex.getter();
          (*(v127 + 8))(v126, v128);
          swift_beginAccess();
          dispatch thunk of Collection.endIndex.getter();
          if (*&v129[v124] == v239)
          {
            v218 = _swiftEmptyArrayStorage;
            v222 = _swiftEmptyArrayStorage;
          }

          else
          {
            v145 = v214;
            v227 = (v214 + 16);
            v146 = (v214 + 32);
            v219 = (v214 + 8);
            v208 = (v214 + 56);
            v222 = _swiftEmptyArrayStorage;
            v218 = _swiftEmptyArrayStorage;
            v221 = v129;
            do
            {
              v152 = v130;
              v153 = dispatch thunk of Collection.subscript.read();
              v154 = *v227;
              v155 = v223;
              v156 = v188;
              (*v227)(v223);
              v153(&v239, 0);
              v130 = v152;
              dispatch thunk of Collection.formIndex(after:)();
              v157 = *v146;
              v158 = v231;
              (*v146)(v231, v155, v156);
              v159 = Playlist.Collaborator.isPending.getter();
              if (v159 == 2 || (v159 & 1) == 0)
              {
                v154(v228, v158, v156);
                v164 = v222;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v164 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v164 + 2) + 1, 1, v164);
                }

                v166 = *(v164 + 2);
                v165 = *(v164 + 3);
                if (v166 >= v165 >> 1)
                {
                  v164 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v165 > 1), v166 + 1, 1, v164);
                }

                *(v164 + 2) = v166 + 1;
                v167 = (*(v145 + 80) + 32) & ~*(v145 + 80);
                v222 = v164;
                v157(&v164[v167 + *(v145 + 72) * v166], v228, v156);
                if (swift_weakLoadStrong())
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  v147 = static Published.subscript.modify();
                  v148 = v216;
                  v149 = v231;
                  specialized Set._Variant.remove(_:)(v231, v216);
                  v150 = v148;
                  v145 = v214;
                  outlined destroy of TaskPriority?(v150, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMR);
                  v147(&v239, 0);
                  v151 = v149;
                  v130 = v152;

                  (*v219)(v151, v188);
                }

                else
                {
                  (*v219)(v231, v156);
                  v168 = v216;
                  (*v208)(v216, 1, 1, v156);
                  outlined destroy of TaskPriority?(v168, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMR);
                }
              }

              else
              {
                v154(v213, v158, v156);
                v160 = v218;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v160 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v160 + 2) + 1, 1, v160);
                }

                v218 = v160;
                v162 = *(v160 + 2);
                v161 = *(v160 + 3);
                if (v162 >= v161 >> 1)
                {
                  v218 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v161 > 1), v162 + 1, 1, v218);
                }

                (*(v145 + 8))(v158, v156);
                v163 = v218;
                *(v218 + 2) = v162 + 1;
                v157(&v163[((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v162], v213, v156);
              }

              v124 = v224;
              dispatch thunk of Collection.endIndex.getter();
            }

            while (*&v221[v124] != v239);
          }

          outlined destroy of TaskPriority?(v124, &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC8PlaylistV0cD8InternalE12CollaboratorVGGMd, &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC8PlaylistV0cD8InternalE12CollaboratorVGGMR);
          swift_beginAccess();
          v131 = swift_weakLoadStrong();
          v132 = v222;
          if (v131)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            v238[1] = v132;

            static Published.subscript.setter();
          }

          swift_beginAccess();
          v133 = swift_weakLoadStrong();
          v134 = v206;
          v135 = v218;
          if (v133)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            v238[0] = v135;

            static Published.subscript.setter();
          }

          v136 = v232;
          v187(v134, v186, v232);

          v137 = Logger.logObject.getter();
          v138 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v137, v138))
          {
            v139 = swift_slowAlloc();
            v140 = swift_slowAlloc();
            v238[0] = v140;
            *v139 = 136315138;
            v141 = Array.description.getter();
            v143 = v142;

            v144 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v141, v143, v238);

            *(v139 + 4) = v144;
            _os_log_impl(&_mh_execute_header, v137, v138, "[Management] pendingCollaborators=%s", v139, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v140);
          }

          else
          {
          }

          v169 = v134;
          v170 = v212;
          v212(v169, v136);
          v171 = v207;
          v187(v207, v186, v136);

          v172 = Logger.logObject.getter();
          v173 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v172, v173))
          {
            v174 = v171;
            v175 = swift_slowAlloc();
            v176 = swift_slowAlloc();
            v238[0] = v176;
            *v175 = 136315138;
            v177 = Array.description.getter();
            v178 = v170;
            v180 = v179;

            v181 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v177, v180, v238);

            *(v175 + 4) = v181;
            _os_log_impl(&_mh_execute_header, v172, v173, "[Management] activeCollaborators=%s", v175, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v176);

            v178(v174, v232);
          }

          else
          {

            v170(v171, v136);
          }

          (v202)(v209, v215);
          (*(v230 + 8))(v211, v229);
          (*(v235 + 8))(v217, v234);
          goto LABEL_29;
        }

        swift_beginAccess();
        v103 = swift_weakLoadStrong();
        v104 = v194;
        v105 = v197;
        if (v103)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v106 = v192;
          static Published.subscript.getter();

          v107 = v191;
          Playlist.collaboration.getter();
          (*(v201 + 8))(v106, v202);
          if ((v227)(v107, 1, v76) != 1)
          {
            v108 = v198;
            Playlist.Collaboration.invitationExpirationDate.getter();
            (*(v102 + 8))(v107, v76);
            v109 = v196;
LABEL_38:
            Playlist.Collaboration.invitationExpirationDate.getter();
            v110 = *(v193 + 48);
            v111 = v195;
            outlined init with copy of TaskPriority?(v108, v195, &_s10Foundation4DateVSgMd_0, &_s10Foundation4DateVSgMR_0);
            outlined init with copy of TaskPriority?(v105, v111 + v110, &_s10Foundation4DateVSgMd_0, &_s10Foundation4DateVSgMR_0);
            v112 = v104;
            v113 = *(v104 + 48);
            if (v113(v111, 1, v109) == 1)
            {
              outlined destroy of TaskPriority?(v105, &_s10Foundation4DateVSgMd_0, &_s10Foundation4DateVSgMR_0);
              outlined destroy of TaskPriority?(v108, &_s10Foundation4DateVSgMd_0, &_s10Foundation4DateVSgMR_0);
              if (v113(v111 + v110, 1, v109) == 1)
              {
                outlined destroy of TaskPriority?(v111, &_s10Foundation4DateVSgMd_0, &_s10Foundation4DateVSgMR_0);
                goto LABEL_47;
              }
            }

            else
            {
              v114 = v190;
              outlined init with copy of TaskPriority?(v111, v190, &_s10Foundation4DateVSgMd_0, &_s10Foundation4DateVSgMR_0);
              if (v113(v111 + v110, 1, v109) != 1)
              {
                v115 = v111 + v110;
                v116 = v189;
                (*(v112 + 32))(v189, v115, v109);
                lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                v117 = v114;
                v118 = dispatch thunk of static Equatable.== infix(_:_:)();
                v119 = *(v112 + 8);
                v119(v116, v109);
                outlined destroy of TaskPriority?(v197, &_s10Foundation4DateVSgMd_0, &_s10Foundation4DateVSgMR_0);
                outlined destroy of TaskPriority?(v198, &_s10Foundation4DateVSgMd_0, &_s10Foundation4DateVSgMR_0);
                v119(v117, v109);
                outlined destroy of TaskPriority?(v111, &_s10Foundation4DateVSgMd_0, &_s10Foundation4DateVSgMR_0);
                if (v118)
                {
                  goto LABEL_47;
                }

LABEL_44:
                swift_beginAccess();
                if (swift_weakLoadStrong())
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  LOBYTE(v239) = 0;
                  static Published.subscript.setter();
                }

                goto LABEL_47;
              }

              outlined destroy of TaskPriority?(v197, &_s10Foundation4DateVSgMd_0, &_s10Foundation4DateVSgMR_0);
              outlined destroy of TaskPriority?(v198, &_s10Foundation4DateVSgMd_0, &_s10Foundation4DateVSgMR_0);
              (*(v112 + 8))(v114, v109);
            }

            outlined destroy of TaskPriority?(v111, &_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
            goto LABEL_44;
          }

          outlined destroy of TaskPriority?(v107, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMR_0);
        }

        v108 = v198;
        v109 = v196;
        (*(v104 + 56))(v198, 1, 1, v196);
        goto LABEL_38;
      }
    }
  }
}

double Collaboration.Management.Model.playlist.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return result;
}

double key path getter for Collaboration.Management.Model.playlist : Collaboration.Management.Model(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return result;
}

uint64_t key path setter for Collaboration.Management.Model.playlist : Collaboration.Management.Model(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Playlist();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  (v10)(v6, v9, v3);

  static Published.subscript.setter();
  return (*(v4 + 8))(v9, v3);
}

uint64_t Collaboration.Management.Model.isPending.getter()
{
  v0 = type metadata accessor for Playlist.Collaborator.Status();
  v29 = *(v0 - 8);
  __chkstk_darwin();
  v27 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSg_AItMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSg_AItMR);
  __chkstk_darwin();
  v3 = &v26 - v2;
  v4 = type metadata accessor for Playlist();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMR_0);
  __chkstk_darwin();
  v9 = &v26 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMR_0);
  __chkstk_darwin();
  v28 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v26 - v11;
  __chkstk_darwin();
  v14 = &v26 - v13;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  Playlist.collaboration.getter();
  (*(v5 + 8))(v7, v4);
  v15 = type metadata accessor for Playlist.Collaboration();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    outlined destroy of TaskPriority?(v9, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMR_0);
    v17 = v29;
    (*(v29 + 56))(v14, 1, 1, v0);
  }

  else
  {
    Playlist.Collaboration.collaboratorStatus.getter();
    (*(v16 + 8))(v9, v15);
    v17 = v29;
  }

  (*(v17 + 104))(v12, enum case for Playlist.Collaborator.Status.pending(_:), v0);
  (*(v17 + 56))(v12, 0, 1, v0);
  v18 = *(v30 + 48);
  outlined init with copy of TaskPriority?(v14, v3, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMR_0);
  outlined init with copy of TaskPriority?(v12, &v3[v18], &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMR_0);
  v19 = *(v17 + 48);
  if (v19(v3, 1, v0) != 1)
  {
    v21 = v28;
    outlined init with copy of TaskPriority?(v3, v28, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMR_0);
    if (v19(&v3[v18], 1, v0) != 1)
    {
      v22 = v27;
      (*(v17 + 32))(v27, &v3[v18], v0);
      lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Playlist.Collaborator.Status and conformance Playlist.Collaborator.Status, &type metadata accessor for Playlist.Collaborator.Status, &protocol conformance descriptor for Playlist.Collaborator.Status);
      v23 = v21;
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *(v17 + 8);
      v24(v22, v0);
      outlined destroy of TaskPriority?(v12, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMR_0);
      outlined destroy of TaskPriority?(v14, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMR_0);
      v24(v23, v0);
      outlined destroy of TaskPriority?(v3, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMR_0);
      return v20 & 1;
    }

    outlined destroy of TaskPriority?(v12, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMR_0);
    outlined destroy of TaskPriority?(v14, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMR_0);
    (*(v17 + 8))(v21, v0);
    goto LABEL_9;
  }

  outlined destroy of TaskPriority?(v12, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMR_0);
  outlined destroy of TaskPriority?(v14, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMR_0);
  if (v19(&v3[v18], 1, v0) != 1)
  {
LABEL_9:
    outlined destroy of TaskPriority?(v3, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSg_AItMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSg_AItMR);
    v20 = 0;
    return v20 & 1;
  }

  outlined destroy of TaskPriority?(v3, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMR_0);
  v20 = 1;
  return v20 & 1;
}

uint64_t Collaboration.Management.Model.canShare.getter()
{
  v0 = type metadata accessor for Playlist();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v6[15] == 1 && (Collaboration.Management.Model.isInvitationURLExpired.getter() & 1) == 0)
  {
    v4 = 1;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v4 = Playlist.isOwner.getter();
    (*(v1 + 8))(v3, v0);
  }

  return v4 & 1;
}

uint64_t Collaboration.Management.Model.collaborators.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v1 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    specialized Array.append<A>(contentsOf:)(v1);
  }

  return v1;
}

uint64_t Collaboration.Management.Model.collaboratorsString.getter()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v0 = type metadata accessor for String.LocalizationValue();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v16 - v4;
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = *(v17 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = *(v17 + 16);

  if (v7 == 1)
  {
    if (!v6)
    {
      return 0;
    }

    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v8);
    v17 = v6;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v9 = 0xD000000000000012;
    v10 = 0x80000001004D2040;
  }

  else
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v11);
    v17 = v7;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    if (v6)
    {
      v12._countAndFlagsBits = 0x2064656E696F6A20;
      v12._object = 0xAC00000020A280E2;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
      v17 = v6;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v9 = 0x676E69646E657020;
      v10 = 0xE800000000000000;
    }

    else
    {
      v10 = 0x80000001004D2020;
      v9 = 0xD000000000000011;
    }
  }

  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v9);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v1 + 16))(v3, v5, v0);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v14 = static NSBundle.module;
  static Locale.current.getter();
  v13 = String.init(localized:table:bundle:locale:comment:)();
  (*(v1 + 8))(v5, v0);
  return v13;
}

uint64_t Collaboration.Management.Model.isInvitationURLExpired.getter()
{
  v0 = type metadata accessor for Playlist();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMR_0);
  __chkstk_darwin();
  v5 = &v19 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd_0, &_s10Foundation4DateVSgMR_0);
  __chkstk_darwin();
  v7 = &v19 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v20 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v19 - v11;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  Playlist.collaboration.getter();
  (*(v1 + 8))(v3, v0);
  v12 = type metadata accessor for Playlist.Collaboration();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v5, 1, v12) == 1)
  {
    outlined destroy of TaskPriority?(v5, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMR_0);
    (*(v9 + 56))(v7, 1, 1, v8);
  }

  else
  {
    Playlist.Collaboration.invitationExpirationDate.getter();
    (*(v13 + 8))(v5, v12);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      v15 = v19;
      (*(v9 + 32))(v19, v7, v8);
      v16 = v20;
      Date.init()();
      v14 = static Date.> infix(_:_:)();
      v17 = *(v9 + 8);
      v17(v16, v8);
      v17(v15, v8);
      return v14 & 1;
    }
  }

  outlined destroy of TaskPriority?(v7, &_s10Foundation4DateVSgMd_0, &_s10Foundation4DateVSgMR_0);
  v14 = 1;
  return v14 & 1;
}

uint64_t Collaboration.Management.Model.invitationExpirationString.getter()
{
  v1 = v0;
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  v63 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Calendar();
  v72 = *(v3 - 8);
  v73 = v3;
  __chkstk_darwin();
  v71 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DateComponents();
  v75 = *(v5 - 8);
  v76 = v5;
  __chkstk_darwin();
  v74 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v66 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.LocalizationValue();
  v68 = *(v8 - 8);
  v69 = v8;
  __chkstk_darwin();
  v65 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v67 = &v61 - v10;
  v11 = type metadata accessor for Playlist();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v62 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v64 = &v61 - v14;
  __chkstk_darwin();
  v16 = &v61 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMR_0);
  __chkstk_darwin();
  v18 = &v61 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd_0, &_s10Foundation4DateVSgMR_0);
  __chkstk_darwin();
  v20 = &v61 - v19;
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  __chkstk_darwin();
  v70 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v79 = &v61 - v24;
  swift_getKeyPath();
  swift_getKeyPath();
  v78 = v1;
  static Published.subscript.getter();

  Playlist.collaboration.getter();
  v25 = *(v12 + 8);
  v77 = v11;
  v25(v16, v11);
  v26 = type metadata accessor for Playlist.Collaboration();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v18, 1, v26) == 1)
  {
    outlined destroy of TaskPriority?(v18, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMR_0);
    (*(v22 + 56))(v20, 1, 1, v21);
LABEL_4:
    outlined destroy of TaskPriority?(v20, &_s10Foundation4DateVSgMd_0, &_s10Foundation4DateVSgMR_0);
    return 0;
  }

  Playlist.Collaboration.invitationExpirationDate.getter();
  (*(v27 + 8))(v18, v26);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    goto LABEL_4;
  }

  v29 = *(v22 + 32);
  v61 = v21;
  v29(v79, v20, v21);
  v30 = v22;
  if (Collaboration.Management.Model.isInvitationURLExpired.getter() & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), v31 = v64, static Published.subscript.getter(), , , v32 = Playlist.isOwner.getter(), v25(v31, v77), v32 != 2) && (v32)
  {
    v33 = v67;
    String.LocalizationValue.init(stringLiteral:)();
    v35 = v68;
    v34 = v69;
    (*(v68 + 16))(v65, v33, v69);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v36 = static NSBundle.module;
    static Locale.current.getter();
    v37 = String.init(localized:table:bundle:locale:comment:)();
    (*(v35 + 8))(v33, v34);
    (*(v30 + 8))(v79, v61);
  }

  else
  {
    v38 = v71;
    static Calendar.autoupdatingCurrent.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMd, &_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMR);
    v39 = type metadata accessor for Calendar.Component();
    v40 = *(v39 - 8);
    v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1004F2400;
    (*(v40 + 104))(v42 + v41, enum case for Calendar.Component.day(_:), v39);
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v42);
    swift_setDeallocating();
    (*(v40 + 8))(v42 + v41, v39);
    swift_deallocClassInstance();
    v43 = v70;
    Date.init()();
    v44 = v74;
    v45 = v79;
    Calendar.dateComponents(_:from:to:)();

    v46 = *(v30 + 8);
    v47 = v61;
    v46(v43, v61);
    (*(v72 + 8))(v38, v73);
    v48 = DateComponents.day.getter();
    if (v49)
    {
      (*(v75 + 8))(v44, v76);
      v46(v45, v47);
      return 0;
    }

    v50 = v48;
    swift_getKeyPath();
    swift_getKeyPath();
    v51 = v62;
    static Published.subscript.getter();

    v52 = Playlist.isOwner.getter();
    v25(v51, v77);
    if (v52 == 2 || (v52 & 1) == 0)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v56._object = 0x80000001004D1F20;
      v56._countAndFlagsBits = 0xD000000000000010;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v56);
      v80 = v50;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v54 = 0x2E29732879616420;
      v55 = 0xE800000000000000;
    }

    else
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v53._object = 0x80000001004D1F20;
      v53._countAndFlagsBits = 0xD000000000000010;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v53);
      v80 = v50;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v54 = 0xD00000000000006CLL;
      v55 = 0x80000001004D1F40;
    }

    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v54);
    v57 = v67;
    String.LocalizationValue.init(stringInterpolation:)();
    v59 = v68;
    v58 = v69;
    (*(v68 + 16))(v65, v57, v69);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v60 = static NSBundle.module;
    static Locale.current.getter();
    v37 = String.init(localized:table:bundle:locale:comment:)();
    (*(v59 + 8))(v57, v58);
    (*(v75 + 8))(v44, v76);
    v46(v45, v61);
  }

  return v37;
}

uint64_t Collaboration.Management.Model.collaborationURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Playlist();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMR_0);
  __chkstk_darwin();
  v7 = &v14 - v6;
  if (Collaboration.Management.Model.isInvitationURLExpired.getter())
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, 1, 1, v8);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    Playlist.collaboration.getter();
    (*(v3 + 8))(v5, v2);
    v11 = type metadata accessor for Playlist.Collaboration();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v7, 1, v11) == 1)
    {
      outlined destroy of TaskPriority?(v7, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMR_0);
      v13 = type metadata accessor for URL();
      return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
    }

    else
    {
      Playlist.Collaboration.invitationURL.getter();
      return (*(v12 + 8))(v7, v11);
    }
  }
}

uint64_t Collaboration.Management.Model.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgSgMR);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model____lazy_storage___artworkViewModel;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v1 + v7, v6, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgSgMR);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return outlined init with take of URL?(v6, a1, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
  }

  outlined destroy of TaskPriority?(v6, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgSgMR);
  closure #1 in Collaboration.Management.Model.artworkViewModel.getter(a1);
  outlined init with copy of TaskPriority?(a1, v4, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  outlined assign with take of PlaybackIntentDescriptor.IntentType?(v4, v1 + v7, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgSgMR);
  return swift_endAccess();
}

uint64_t closure #1 in Collaboration.Management.Model.artworkViewModel.getter@<X0>(uint64_t a2@<X8>)
{
  v19 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  __chkstk_darwin();
  v3 = &v18 - v2;
  v4 = type metadata accessor for Playlist();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Artwork();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  Playlist.artwork.getter();
  (*(v5 + 8))(v7, v4);
  if ((*(v9 + 48))(v3, 1, v8) == 1)
  {
    outlined destroy of TaskPriority?(v3, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
    v12 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v12 - 8) + 56))(v19, 1, 1, v12);
  }

  else
  {
    (*(v9 + 32))(v11, v3, v8);
    v14 = v19;
    (*(v9 + 16))(v19, v11, v8);
    v15 = type metadata accessor for ArtworkImage.ViewModel(0);
    v16 = *(v15 + 20);
    static Artwork.CropStyle.boundedBox.getter();
    (*(v9 + 8))(v11, v8);
    v17 = type metadata accessor for Artwork.CropStyle();
    (*(*(v17 - 8) + 56))(v14 + v16, 0, 1, v17);
    return (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  }
}

uint64_t closure #1 in Collaboration.Management.Model.updateShareOption(isOpen:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 80) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a4;
  v6 = type metadata accessor for Playlist();
  *(v5 + 32) = v6;
  *(v5 + 40) = *(v6 - 8);
  *(v5 + 48) = swift_task_alloc();

  return _swift_task_switch(closure #1 in Collaboration.Management.Model.updateShareOption(isOpen:), 0, 0);
}

uint64_t closure #1 in Collaboration.Management.Model.updateShareOption(isOpen:)()
{
  *(v0 + 56) = *(*(v0 + 24) + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = closure #1 in Collaboration.Management.Model.updateShareOption(isOpen:);
  v2 = *(v0 + 48);
  v3 = *(v0 + 80);

  return Collaboration.Manager.updateShareOption(_:for:)(v3, v2);
}

{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = v2[6];
  v4 = v2[5];
  v5 = v2[4];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = closure #1 in Collaboration.Management.Model.updateShareOption(isOpen:);
  }

  else
  {
    (*(v4 + 8))(v2[6], v2[4]);

    v6 = closure #1 in Collaboration.Management.Model.updateShareOption(isOpen:);
  }

  return _swift_task_switch(v6, 0, 0);
}

{
  **(v0 + 16) = *(v0 + 72) != 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in Collaboration.Management.Model.end()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Playlist();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();

  return _swift_task_switch(closure #1 in Collaboration.Management.Model.end(), 0, 0);
}

uint64_t closure #1 in Collaboration.Management.Model.end()()
{
  v0[7] = *(v0[2] + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = closure #1 in Collaboration.Management.Model.end();
  v3 = v0[5];
  v2 = v0[6];

  return Collaboration.Manager.end(_:)(v2, v3);
}

{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    (*(v2[4] + 8))(v2[5], v2[3]);

    v3 = closure #1 in Collaboration.Management.Model.end();
  }

  else
  {
    v5 = v2[5];
    v4 = v2[6];
    v8 = v2 + 3;
    v6 = v2[3];
    v7 = v8[1];

    v9 = *(v7 + 8);
    v9(v5, v6);
    v9(v4, v6);
    v3 = closure #1 in Collaboration.Management.Model.end();
  }

  return _swift_task_switch(v3, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v0[10] = *(v0[2] + 16);
  type metadata accessor for MainActor();

  v0[11] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in Collaboration.Management.Model.end(), v2, v1);
}

{
  v1 = *(v0 + 72);

  Collaboration.Manager.handleError(_:)(v1);

  return _swift_task_switch(closure #1 in Collaboration.Management.Model.end(), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in Collaboration.Management.Model.resetInvitationURL()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Playlist();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(closure #1 in Collaboration.Management.Model.resetInvitationURL(), 0, 0);
}

uint64_t closure #1 in Collaboration.Management.Model.resetInvitationURL()()
{
  v0[9] = *(v0[2] + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = closure #1 in Collaboration.Management.Model.resetInvitationURL();
  v2 = v0[8];
  v3 = v0[5];

  return Collaboration.Manager.resetInvitationURL(_:)(v2, v3);
}

{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    (*(v2[4] + 8))(v2[5], v2[3]);

    v3 = closure #1 in Collaboration.Management.Model.resetInvitationURL();
  }

  else
  {
    v5 = v2[7];
    v4 = v2[8];
    v7 = v2[5];
    v6 = v2[6];
    v10 = v2 + 3;
    v8 = v2[3];
    v9 = v10[1];

    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);
    v3 = closure #1 in Collaboration.Management.Model.resetInvitationURL();
  }

  return _swift_task_switch(v3, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 112) = 0;

  static Published.subscript.setter();
  *(v0 + 96) = *(v1 + 16);
  type metadata accessor for MainActor();

  *(v0 + 104) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in Collaboration.Management.Model.resetInvitationURL(), v3, v2);
}

{
  v1 = *(v0 + 88);

  Collaboration.Manager.handleError(_:)(v1);

  return _swift_task_switch(closure #1 in Collaboration.Management.Model.resetInvitationURL(), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Collaboration.Management.Model.remove(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_1, &_sScPSgMR_1);
  __chkstk_darwin();
  v3 = v17 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMR);
  __chkstk_darwin();
  v5 = v17 - v4;
  v6 = type metadata accessor for Playlist.Collaborator();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = v17 - v10;
  outlined init with copy of TaskPriority?(a1, v5, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMR);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of TaskPriority?(v5, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMR);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v12 = *(v7 + 32);
    v12(v11, v5, v6);
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
    (*(v7 + 16))(v9, v11, v6);
    v14 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v15 = swift_allocObject();
    *(v15 + 2) = 0;
    *(v15 + 3) = 0;
    *(v15 + 4) = v17[1];
    v12(&v15[v14], v9, v6);

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_1(0, 0, v3, &async function pointer to partial apply for closure #1 in Collaboration.Management.Model.remove(_:), v15);

    return (*(v7 + 8))(v11, v6);
  }

  return result;
}

uint64_t closure #1 in Collaboration.Management.Model.remove(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Playlist();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();

  return _swift_task_switch(closure #1 in Collaboration.Management.Model.remove(_:), 0, 0);
}

uint64_t closure #1 in Collaboration.Management.Model.remove(_:)()
{
  v0[8] = *(v0[2] + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = closure #1 in Collaboration.Management.Model.remove(_:);
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[3];

  return Collaboration.Manager.remove(collaborator:in:)(v2, v4, v3);
}

{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    (*(v2[5] + 8))(v2[6], v2[4]);

    v3 = closure #1 in Collaboration.Management.Model.remove(_:);
  }

  else
  {
    v5 = v2[6];
    v4 = v2[7];
    v8 = v2 + 4;
    v6 = v2[4];
    v7 = v8[1];

    v9 = *(v7 + 8);
    v9(v5, v6);
    v9(v4, v6);
    v3 = closure #1 in Collaboration.Management.Model.remove(_:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v0[11] = *(v0[2] + 16);
  type metadata accessor for MainActor();

  v0[12] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in Collaboration.Management.Model.remove(_:), v2, v1);
}

{
  v1 = *(v0 + 80);

  Collaboration.Manager.handleError(_:)(v1);

  return _swift_task_switch(closure #1 in Collaboration.Management.Model.remove(_:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

double Collaboration.Management.Model.moderateCollaborator(_:action:)(uint64_t a1, int a2)
{
  v19 = a1;
  v21 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_1, &_sScPSgMR_1);
  __chkstk_darwin();
  v20 = &v18 - v3;
  v4 = type metadata accessor for Playlist.Collaborator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin();
  v10 = &v18 - v9;
  v11 = *(v5 + 16);
  v11(v7, a1, v4, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = static Published.subscript.modify();
  specialized Set._Variant.insert(_:)(v10, v7);
  (*(v5 + 8))(v10, v4);
  v12(v22, 0);

  v13 = type metadata accessor for TaskPriority();
  v14 = v20;
  (*(*(v13 - 8) + 56))(v20, 1, 1, v13);
  (v11)(v10, v19, v4);
  v15 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = v18;
  *(v16 + 40) = v21 & 1;
  (*(v5 + 32))(v16 + v15, v10, v4);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_1(0, 0, v14, &async function pointer to partial apply for closure #1 in Collaboration.Management.Model.moderateCollaborator(_:action:), v16);

  return result;
}

uint64_t closure #1 in Collaboration.Management.Model.moderateCollaborator(_:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 136) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  v7 = type metadata accessor for Playlist.Collaborator();
  *(v6 + 32) = v7;
  v8 = *(v7 - 8);
  *(v6 + 40) = v8;
  *(v6 + 48) = *(v8 + 64);
  *(v6 + 56) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_1, &_sScPSgMR_1);
  *(v6 + 64) = swift_task_alloc();
  v9 = type metadata accessor for Playlist();
  *(v6 + 72) = v9;
  *(v6 + 80) = *(v9 - 8);
  *(v6 + 88) = swift_task_alloc();

  return _swift_task_switch(closure #1 in Collaboration.Management.Model.moderateCollaborator(_:action:), 0, 0);
}

uint64_t closure #1 in Collaboration.Management.Model.moderateCollaborator(_:action:)()
{
  v1 = *(v0 + 136);
  *(v0 + 96) = *(*(v0 + 16) + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = closure #1 in Collaboration.Management.Model.moderateCollaborator(_:action:);
  v3 = *(v0 + 88);
  v4 = *(v0 + 24);

  return Collaboration.Manager.moderate(_:collaborator:in:)(v1 & 1, v4, v3);
}

{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 112) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return _swift_task_switch(closure #1 in Collaboration.Management.Model.moderateCollaborator(_:action:), 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  (*(v3 + 16))(v2, v4, v5);
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = v8;
  *(v10 + 3) = &protocol witness table for MainActor;
  *(v10 + 4) = v6;
  (*(v3 + 32))(&v10[v9], v2, v5);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC8MusicKit8PlaylistV0eF8InternalE12CollaboratorVSg_Tt2g5(0, 0, v1, &async function pointer to partial apply for closure #1 in closure #1 in Collaboration.Management.Model.moderateCollaborator(_:action:), v10);

  v0[15] = *(v6 + 16);

  v0[16] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in Collaboration.Management.Model.moderateCollaborator(_:action:), v12, v11);
}

{
  v1 = *(v0 + 112);

  Collaboration.Manager.handleError(_:)(v1);

  return _swift_task_switch(closure #1 in Collaboration.Management.Model.moderateCollaborator(_:action:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in closure #1 in Collaboration.Management.Model.moderateCollaborator(_:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  type metadata accessor for MainActor();
  v5[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in closure #1 in Collaboration.Management.Model.moderateCollaborator(_:action:), v7, v6);
}

uint64_t closure #1 in closure #1 in Collaboration.Management.Model.moderateCollaborator(_:action:)()
{
  v1 = v0[8];
  v2 = v0[6];

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = static Published.subscript.modify();
  specialized Set._Variant.remove(_:)(v1, v2);
  v3(v0 + 2, 0);

  v4 = v0[1];

  return v4();
}

uint64_t Collaboration.Management.Model.deinit()
{

  v1 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__pendingCollaborators;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay8MusicKit8PlaylistV0cD8InternalE12CollaboratorVGGMd, &_s7Combine9PublishedVySay8MusicKit8PlaylistV0cD8InternalE12CollaboratorVGGMR);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__activeCollaborators, v2);
  v4 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__transientCollaborators;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy8MusicKit8PlaylistV0cD8InternalE12CollaboratorVGGMd, &_s7Combine9PublishedVyShy8MusicKit8PlaylistV0cD8InternalE12CollaboratorVGGMR);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__playlist;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy8MusicKit8PlaylistVGMd, &_s7Combine9PublishedVy8MusicKit8PlaylistVGMR);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__isOpen;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd_0, &_s7Combine9PublishedVySbGMR_0);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v10(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__isResetingURL, v9);
  v10(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__shouldDismiss, v9);
  v10(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__hasNetworkConnectivity, v9);
  outlined destroy of TaskPriority?(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model____lazy_storage___artworkViewModel, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgSgMR);

  return v0;
}

uint64_t Collaboration.Management.Model.__deallocating_deinit()
{
  Collaboration.Management.Model.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance Collaboration.Management.Model@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for Collaboration.Management.Model(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t Collaboration.Management.View.init(model:)@<X0>(uint64_t *a2@<X8>)
{
  v3 = type metadata accessor for Collaboration.Management.View(0);
  v4 = v3[5];
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  swift_storeEnumTagMultiPayload();
  v5 = v3[6];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd_0, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR_0);
  swift_storeEnumTagMultiPayload();
  v6 = v3[7];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13OpenURLActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13OpenURLActionV_GMR);
  swift_storeEnumTagMultiPayload();
  v7 = v3[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24UIActivityViewControllerCSgMd, &_sSo24UIActivityViewControllerCSgMR);
  State.init(wrappedValue:)();
  *(a2 + v7) = v14;
  v8 = a2 + v3[9];
  State.init(wrappedValue:)();
  *v8 = v14;
  *(v8 + 1) = *(&v14 + 1);
  v9 = a2 + v3[10];
  State.init(wrappedValue:)();
  *v9 = v14;
  *(v9 + 1) = *(&v14 + 1);
  v10 = a2 + v3[11];
  State.init(wrappedValue:)();
  *v10 = v14;
  *(v10 + 1) = *(&v14 + 1);
  v11 = a2 + v3[12];
  State.init(wrappedValue:)();
  *v11 = v14;
  *(v11 + 1) = *(&v14 + 1);
  type metadata accessor for Collaboration.Management.Model(0);
  lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Collaboration.Management.Model and conformance Collaboration.Management.Model, type metadata accessor for Collaboration.Management.Model, &protocol conformance descriptor for Collaboration.Management.Model);
  result = ObservedObject.init(wrappedValue:)();
  *a2 = result;
  a2[1] = v13;
  return result;
}

uint64_t property wrapper backing initializer of Collaboration.Management.View.shareSheet(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24UIActivityViewControllerCSgMd, &_sSo24UIActivityViewControllerCSgMR);
  State.init(wrappedValue:)();
  return v2;
}

uint64_t property wrapper backing initializer of Collaboration.Management.View.viewModel(uint64_t a1)
{
  type metadata accessor for Collaboration.Management.Model(0);
  lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Collaboration.Management.Model and conformance Collaboration.Management.Model, type metadata accessor for Collaboration.Management.Model, &protocol conformance descriptor for Collaboration.Management.Model);

  return ObservedObject.init(wrappedValue:)();
}

uint64_t Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25 = a1;
  v22 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v3 = *(v22 + 64);
  __chkstk_darwin();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2( &_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAgAE9listStyleyQrqd__AA04ListL0Rd__lFQOyAA08ModifiedJ0VyAA0M0Vys5NeverOAA05TupleF0VyAgAE16headerProminenceyQrAA0R0OFQOyAA7SectionVyAgAE15fullScreenCover11isPresented9onDismissAIQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyANyAA6VStackVyATyANyANyANyANy010_MusicKit_aB012ArtworkImageV018_MusicKitInternal_aB0E18artworkPlaceholderyQrx8MusicKit7ArtworkVSg_So6CGSizeVAA5ColorVtcAaFRzlFQOy_AA012_ConditionalJ0VyANyANyA9_09MusicCoreB0E11PlaceholderOAFVAA26_PreferenceWritingModifierVyA22_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA34_GGQo_A33_GA22_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA22_06BorderF8ModifierA42_LLVGAA13_ShadowEffectVG_AA4TextVATyANyANyAA6HStackVyATyAgAE5sheetA_A0_AIQrA3__A4_qd__yctAaFRd__lFQOyANy9MusicCore13CollaborationOA22_E10ManagementOAFV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A60_08ActivityF10ControllerA63_LLVSgQo__ANyA70_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ANyANyANyANyANyANyANyAA5GroupVyA21_yA54_yATyAA08ProgressF0VyAA05EmptyF0VA92_G_A52_tGGANyANyA52_AA30_EnvironmentKeyWritingModifierVyA19_SgGGA97_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA97_ySiSgGGA82_GAA011_ForegroundL8ModifierVyAA017HierarchicalShapeL0VGGA97_yAA4FontVSgGGA85_GA85_GAA6SpacerVtGSgA54_yA129_GtGGAA21_TraitWritingModifierVyAA0M17RowInsetsTraitKeyVGG_ANyANyA60_06QRCodeF0A63_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA22_15ClearBackgroundA63_LLVGGSgQo_ATyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyANyANyANyA54_yATyANyANyANyANyAA5ImageVA124_GA33_GA97_yAA19SymbolRenderingModeVSgGGA99_GSg_A6_yATyA52__A52_SgtGGATyA129__AgAE5alertA_AIQrA3__AA5AlertVyXEtFQOyAgAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyANyANyANyANyANyAgAE10fontWeightyQrA122_6WeightVSgFQOyANyAAA65_VyA52_GA124_G_Qo_A99_GA33_GA85_GAA011_BackgroundL8ModifierVyA19_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA177_GQo__Qo_tGSgtGGA85_GA139_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA12_8PlaylistV16MusicKitInternalE12CollaboratorVGA12_11MusicItemIDVA61_015CollaboratorRowF0A63_LLVGtGSgA92_G_Qo__ATyAYyA52_A227_A92_G_AYyA92_AgAEA172_A_AIQrA3__A174_yXEtFQOyAgAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyA184_yANyANyA52_A109_GA99_GG_AA016BorderlessButtonL0VQo__Qo_A92_GSgAYyA52_A228_A92_GtGSgAYyA52_A54_yAA6ToggleVyA52_GGA21_yA21_yA52_A52_GA52_GGSgtGGA97_y12CoreGraphics7CGFloatVGG_AA012InsetGroupedmL0VQo__AA0iJ7BuilderV10buildBlockyQrxAaJRzlFZQOy_AA0I4ItemVyytA184_yAA18DefaultButtonLabelVGGQo_Qo_GMd,  &_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAgAE9listStyleyQrqd__AA04ListL0Rd__lFQOyAA08ModifiedJ0VyAA0M0Vys5NeverOAA05TupleF0VyAgAE16headerProminenceyQrAA0R0OFQOyAA7SectionVyAgAE15fullScreenCover11isPresented9onDismissAIQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyANyAA6VStackVyATyANyANyANyANy010_MusicKit_aB012ArtworkImageV018_MusicKitInternal_aB0E18artworkPlaceholderyQrx8MusicKit7ArtworkVSg_So6CGSizeVAA5ColorVtcAaFRzlFQOy_AA012_ConditionalJ0VyANyANyA9_09MusicCoreB0E11PlaceholderOAFVAA26_PreferenceWritingModifierVyA22_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA34_GGQo_A33_GA22_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA22_06BorderF8ModifierA42_LLVGAA13_ShadowEffectVG_AA4TextVATyANyANyAA6HStackVyATyAgAE5sheetA_A0_AIQrA3__A4_qd__yctAaFRd__lFQOyANy9MusicCore13CollaborationOA22_E10ManagementOAFV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A60_08ActivityF10ControllerA63_LLVSgQo__ANyA70_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ANyANyANyANyANyANyANyAA5GroupVyA21_yA54_yATyAA08ProgressF0VyAA05EmptyF0VA92_G_A52_tGGANyANyA52_AA30_EnvironmentKeyWritingModifierVyA19_SgGGA97_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA97_ySiSgGGA82_GAA011_ForegroundL8ModifierVyAA017HierarchicalShapeL0VGGA97_yAA4FontVSgGGA85_GA85_GAA6SpacerVtGSgA54_yA129_GtGGAA21_TraitWritingModifierVyAA0M17RowInsetsTraitKeyVGG_ANyANyA60_06QRCodeF0A63_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA22_15ClearBackgroundA63_LLVGGSgQo_ATyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyANyANyANyA54_yATyANyANyANyANyAA5ImageVA124_GA33_GA97_yAA19SymbolRenderingModeVSgGGA99_GSg_A6_yATyA52__A52_SgtGGATyA129__AgAE5alertA_AIQrA3__AA5AlertVyXEtFQOyAgAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyANyANyANyANyANyAgAE10fontWeightyQrA122_6WeightVSgFQOyANyAAA65_VyA52_GA124_G_Qo_A99_GA33_GA85_GAA011_BackgroundL8ModifierVyA19_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA177_GQo__Qo_tGSgtGGA85_GA139_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA12_8PlaylistV16MusicKitInternalE12CollaboratorVGA12_11MusicItemIDVA61_015CollaboratorRowF0A63_LLVGtGSgA92_G_Qo__ATyAYyA52_A227_A92_G_AYyA92_AgAEA172_A_AIQrA3__A174_yXEtFQOyAgAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyA184_yANyANyA52_A109_GA99_GG_AA016BorderlessButtonL0VQo__Qo_A92_GSgAYyA52_A228_A92_GtGSgAYyA52_A54_yAA6ToggleVyA52_GGA21_yA21_yA52_A52_GA52_GGSgtGGA97_y12CoreGraphics7CGFloatVGG_AA012InsetGroupedmL0VQo__AA0iJ7BuilderV10buildBlockyQrxAaJRzlFZQOy_AA0I4ItemVyytA184_yAA18DefaultButtonLabelVGGQo_Qo_GMR);
  v5 = *(v4 - 8);
  v23 = v4;
  v24 = v5;
  __chkstk_darwin();
  v7 = v21 - v6;
  v26 = v2;
  v21[1] = __swift_instantiateConcreteTypeFromMangledNameV2( &_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAcAE9listStyleyQrqd__AA04ListI0Rd__lFQOyAA08ModifiedG0VyAA0J0Vys5NeverOAA05TupleC0VyAcAE16headerProminenceyQrAA0O0OFQOyAA7SectionVyAcAE15fullScreenCover11isPresented9onDismissAEQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAJyAA6VStackVyAPyAJyAJyAJyAJy010_MusicKit_aB012ArtworkImageV01_z12KitInternal_aB0E18artworkPlaceholderyQrx0Z3Kit7ArtworkVSg_So6CGSizeVAA5ColorVtcAaBRzlFQOy_AA012_ConditionalG0VyAJyAJyA5_0z4CoreB0E11PlaceholderOABVAA26_PreferenceWritingModifierVyA18_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA30_GGQo_A29_GA18_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA18_06BorderC8ModifierA38_LLVGAA13_ShadowEffectVG_AA4TextVAPyAJyAJyAA6HStackVyAPyAcAE5sheetAwxEQrA__A0_qd__yctAaBRd__lFQOyAJy0Z4Core13CollaborationOA18_E10ManagementOABV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A56_08ActivityC10ControllerA59_LLVSgQo__AJyA66_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AJyAJyAJyAJyAJyAJyAJyAA5GroupVyA17_yA50_yAPyAA08ProgressC0VyAA05EmptyC0VA88_G_A48_tGGAJyAJyA48_AA30_EnvironmentKeyWritingModifierVyA15_SgGGA93_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA93_ySiSgGGA78_GAA011_ForegroundI8ModifierVyAA017HierarchicalShapeI0VGGA93_yAA4FontVSgGGA81_GA81_GAA6SpacerVtGSgA50_yA125_GtGGAA21_TraitWritingModifierVyAA0J17RowInsetsTraitKeyVGG_AJyAJyA56_06QRCodeC0A59_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA18_15ClearBackgroundA59_LLVGGSgQo_APyAcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAJyAJyAJyA50_yAPyAJyAJyAJyAJyAA5ImageVA120_GA29_GA93_yAA19SymbolRenderingModeVSgGGA95_GSg_A2_yAPyA48__A48_SgtGGAPyA125__AcAE5alertAwEQrA__AA5AlertVyXEtFQOyAcAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAJyAJyAJyAJyAJyAcAE10fontWeightyQrA118_6WeightVSgFQOyAJyAAA61_VyA48_GA120_G_Qo_A95_GA29_GA81_GAA011_BackgroundI8ModifierVyA15_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA173_GQo__Qo_tGSgtGGA81_GA135_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA8_8PlaylistV0Z11KitInternalE12CollaboratorVGA8_0Z6ItemIDVA57_015CollaboratorRowC0A59_LLVGtGSgA88_G_Qo__APyAUyA48_A223_A88_G_AUyA88_AcAEA168_AwEQrA__A170_yXEtFQOyAcAE06buttonI0yQrqd__AA015PrimitiveButtonI0Rd__lFQOyA180_yAJyAJyA48_A105_GA95_GG_AA016BorderlessButtonI0VQo__Qo_A88_GSgAUyA48_A224_A88_GtGSgAUyA48_A50_yAA6ToggleVyA48_GGA17_yA17_yA48_A48_GA48_GGSgtGGA93_y12CoreGraphics7CGFloatVGG_AA012InsetGroupedjI0VQo__AA0fG7BuilderV10buildBlockyQrxAaFRzlFZQOy_AA0F4ItemVyytA180_yAA18DefaultButtonLabelVGGQo_Qo_Md,  &_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAcAE9listStyleyQrqd__AA04ListI0Rd__lFQOyAA08ModifiedG0VyAA0J0Vys5NeverOAA05TupleC0VyAcAE16headerProminenceyQrAA0O0OFQOyAA7SectionVyAcAE15fullScreenCover11isPresented9onDismissAEQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAJyAA6VStackVyAPyAJyAJyAJyAJy010_MusicKit_aB012ArtworkImageV01_z12KitInternal_aB0E18artworkPlaceholderyQrx0Z3Kit7ArtworkVSg_So6CGSizeVAA5ColorVtcAaBRzlFQOy_AA012_ConditionalG0VyAJyAJyA5_0z4CoreB0E11PlaceholderOABVAA26_PreferenceWritingModifierVyA18_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA30_GGQo_A29_GA18_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA18_06BorderC8ModifierA38_LLVGAA13_ShadowEffectVG_AA4TextVAPyAJyAJyAA6HStackVyAPyAcAE5sheetAwxEQrA__A0_qd__yctAaBRd__lFQOyAJy0Z4Core13CollaborationOA18_E10ManagementOABV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A56_08ActivityC10ControllerA59_LLVSgQo__AJyA66_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AJyAJyAJyAJyAJyAJyAJyAA5GroupVyA17_yA50_yAPyAA08ProgressC0VyAA05EmptyC0VA88_G_A48_tGGAJyAJyA48_AA30_EnvironmentKeyWritingModifierVyA15_SgGGA93_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA93_ySiSgGGA78_GAA011_ForegroundI8ModifierVyAA017HierarchicalShapeI0VGGA93_yAA4FontVSgGGA81_GA81_GAA6SpacerVtGSgA50_yA125_GtGGAA21_TraitWritingModifierVyAA0J17RowInsetsTraitKeyVGG_AJyAJyA56_06QRCodeC0A59_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA18_15ClearBackgroundA59_LLVGGSgQo_APyAcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAJyAJyAJyA50_yAPyAJyAJyAJyAJyAA5ImageVA120_GA29_GA93_yAA19SymbolRenderingModeVSgGGA95_GSg_A2_yAPyA48__A48_SgtGGAPyA125__AcAE5alertAwEQrA__AA5AlertVyXEtFQOyAcAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAJyAJyAJyAJyAJyAcAE10fontWeightyQrA118_6WeightVSgFQOyAJyAAA61_VyA48_GA120_G_Qo_A95_GA29_GA81_GAA011_BackgroundI8ModifierVyA15_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA173_GQo__Qo_tGSgtGGA81_GA135_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA8_8PlaylistV0Z11KitInternalE12CollaboratorVGA8_0Z6ItemIDVA57_015CollaboratorRowC0A59_LLVGtGSgA88_G_Qo__APyAUyA48_A223_A88_G_AUyA88_AcAEA168_AwEQrA__A170_yXEtFQOyAcAE06buttonI0yQrqd__AA015PrimitiveButtonI0Rd__lFQOyA180_yAJyAJyA48_A105_GA95_GG_AA016BorderlessButtonI0VQo__Qo_A88_GSgAUyA48_A224_A88_GtGSgAUyA48_A50_yAA6ToggleVyA48_GGA17_yA17_yA48_A48_GA48_GGSgtGGA93_y12CoreGraphics7CGFloatVGG_AA012InsetGroupedjI0VQo__AA0fG7BuilderV10buildBlockyQrxAaFRzlFZQOy_AA0F4ItemVyytA180_yAA18DefaultButtonLabelVGGQo_Qo_MR);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2( &_s7SwiftUI4ViewPAAE9listStyleyQrqd__AA04ListE0Rd__lFQOyAA15ModifiedContentVyAA0F0Vys5NeverOAA05TupleC0VyAcAE16headerProminenceyQrAA0L0OFQOyAA7SectionVyAcAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAGyAA6VStackVyAMyAGyAGyAGyAGy010_MusicKit_aB012ArtworkImageV01_xy9Internal_aB0E18artworkPlaceholderyQrx0xY00Z0VSg_So6CGSizeVAA5ColorVtcAaBRzlFQOy_AA012_ConditionalH0VyAGyAGyA3_0x4CoreB0E11PlaceholderOABVAA26_PreferenceWritingModifierVyA16_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA28_GGQo_A27_GA16_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA16_06BorderC8ModifierA36_LLVGAA13_ShadowEffectVG_AA4TextVAMyAGyAGyAA6HStackVyAMyAcAE5sheetAtuVQrAY_AZqd__yctAaBRd__lFQOyAGy0X4Core13CollaborationOA16_E10ManagementOABV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A54_08ActivityC10ControllerA57_LLVSgQo__AGyA64_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AGyAGyAGyAGyAGyAGyAGyAA5GroupVyA15_yA48_yAMyAA08ProgressC0VyAA05EmptyC0VA86_G_A46_tGGAGyAGyA46_AA30_EnvironmentKeyWritingModifierVyA13_SgGGA91_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA91_ySiSgGGA76_GAA011_ForegroundE8ModifierVyAA017HierarchicalShapeE0VGGA91_yAA4FontVSgGGA79_GA79_GAA6SpacerVtGSgA48_yA123_GtGGAA21_TraitWritingModifierVyAA0F17RowInsetsTraitKeyVGG_AGyAGyA54_06QRCodeC0A57_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA16_15ClearBackgroundA57_LLVGGSgQo_AMyAcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAGyAGyA48_yAMyAGyAGyAGyAGyAA5ImageVA118_GA27_GA91_yAA19SymbolRenderingModeVSgGGA93_GSg_A0_yAMyA46__A46_SgtGGAMyA123__AcAE5alertAtVQrAY_AA5AlertVyXEtFQOyAcAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAGyAGyAGyAGyAGyAcAE10fontWeightyQrA116_6WeightVSgFQOyAGyAAA59_VyA46_GA118_G_Qo_A93_GA27_GA79_GAA011_BackgroundE8ModifierVyA13_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA171_GQo__Qo_tGSgtGGA79_GA133_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA6_8PlaylistV0xY8InternalE12CollaboratorVGA6_0X6ItemIDVA55_015CollaboratorRowC0A57_LLVGtGSgA86_G_Qo__AMyARyA46_A221_A86_G_ARyA86_AcAEA166_AtVQrAY_A168_yXEtFQOyAcAE06buttonE0yQrqd__AA015PrimitiveButtonE0Rd__lFQOyA178_yAGyAGyA46_A103_GA93_GG_AA016BorderlessButtonE0VQo__Qo_A86_GSgARyA46_A222_A86_GtGSgARyA46_A48_yAA6ToggleVyA46_GGA15_yA15_yA46_A46_GA46_GGSgtGGA91_y12CoreGraphics7CGFloatVGG_AA012InsetGroupedfE0VQo_Md,  &_s7SwiftUI4ViewPAAE9listStyleyQrqd__AA04ListE0Rd__lFQOyAA15ModifiedContentVyAA0F0Vys5NeverOAA05TupleC0VyAcAE16headerProminenceyQrAA0L0OFQOyAA7SectionVyAcAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAGyAA6VStackVyAMyAGyAGyAGyAGy010_MusicKit_aB012ArtworkImageV01_xy9Internal_aB0E18artworkPlaceholderyQrx0xY00Z0VSg_So6CGSizeVAA5ColorVtcAaBRzlFQOy_AA012_ConditionalH0VyAGyAGyA3_0x4CoreB0E11PlaceholderOABVAA26_PreferenceWritingModifierVyA16_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA28_GGQo_A27_GA16_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA16_06BorderC8ModifierA36_LLVGAA13_ShadowEffectVG_AA4TextVAMyAGyAGyAA6HStackVyAMyAcAE5sheetAtuVQrAY_AZqd__yctAaBRd__lFQOyAGy0X4Core13CollaborationOA16_E10ManagementOABV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A54_08ActivityC10ControllerA57_LLVSgQo__AGyA64_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AGyAGyAGyAGyAGyAGyAGyAA5GroupVyA15_yA48_yAMyAA08ProgressC0VyAA05EmptyC0VA86_G_A46_tGGAGyAGyA46_AA30_EnvironmentKeyWritingModifierVyA13_SgGGA91_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA91_ySiSgGGA76_GAA011_ForegroundE8ModifierVyAA017HierarchicalShapeE0VGGA91_yAA4FontVSgGGA79_GA79_GAA6SpacerVtGSgA48_yA123_GtGGAA21_TraitWritingModifierVyAA0F17RowInsetsTraitKeyVGG_AGyAGyA54_06QRCodeC0A57_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA16_15ClearBackgroundA57_LLVGGSgQo_AMyAcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAGyAGyA48_yAMyAGyAGyAGyAGyAA5ImageVA118_GA27_GA91_yAA19SymbolRenderingModeVSgGGA93_GSg_A0_yAMyA46__A46_SgtGGAMyA123__AcAE5alertAtVQrAY_AA5AlertVyXEtFQOyAcAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAGyAGyAGyAGyAGyAcAE10fontWeightyQrA116_6WeightVSgFQOyAGyAAA59_VyA46_GA118_G_Qo_A93_GA27_GA79_GAA011_BackgroundE8ModifierVyA13_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA171_GQo__Qo_tGSgtGGA79_GA133_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA6_8PlaylistV0xY8InternalE12CollaboratorVGA6_0X6ItemIDVA55_015CollaboratorRowC0A57_LLVGtGSgA86_G_Qo__AMyARyA46_A221_A86_G_ARyA86_AcAEA166_AtVQrAY_A168_yXEtFQOyAcAE06buttonE0yQrqd__AA015PrimitiveButtonE0Rd__lFQOyA178_yAGyAGyA46_A103_GA93_GG_AA016BorderlessButtonE0VQo__Qo_A86_GSgARyA46_A222_A86_GtGSgARyA46_A48_yAA6ToggleVyA46_GGA15_yA15_yA46_A46_GA46_GGSgtGGA91_y12CoreGraphics7CGFloatVGG_AA012InsetGroupedfE0VQo_MR);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA07DefaultI5LabelVGGQo_Md, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA07DefaultI5LabelVGGQo_MR);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2( &_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVyAA0H0PAAE16headerProminenceyQrAA0J0OFQOyAA7SectionVyAkAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaJRd__lFQOyACyAA6VStackVyAIyACyACyACyACy010_MusicKit_aB012ArtworkImageV01_vw9Internal_aB0E18artworkPlaceholderyQrx0vW00X0VSg_So6CGSizeVAA5ColorVtcAaJRzlFQOy_AA012_ConditionalD0VyACyACyA1_0v4CoreB0E11PlaceholderOAJVAA26_PreferenceWritingModifierVyA14_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA26_GGQo_A25_GA14_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA14_06BorderH8ModifierA34_LLVGAA13_ShadowEffectVG_AA4TextVAIyACyACyAA6HStackVyAIyAkAE5sheetArsTQrAW_AXqd__yctAaJRd__lFQOyACy0V4Core13CollaborationOA14_E10ManagementOAJV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A52_08ActivityH10ControllerA55_LLVSgQo__ACyA62_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyAA5GroupVyA13_yA46_yAIyAA08ProgressH0VyAA05EmptyH0VA84_G_A44_tGGACyACyA44_AA30_EnvironmentKeyWritingModifierVyA11_SgGGA89_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA89_ySiSgGGA74_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA89_yAA4FontVSgGGA77_GA77_GAA6SpacerVtGSgA46_yA121_GtGGAA21_TraitWritingModifierVyAA0E17RowInsetsTraitKeyVGG_ACyACyA52_06QRCodeH0A55_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA14_15ClearBackgroundA55_LLVGGSgQo_AIyAkAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyA46_yAIyACyACyACyACyAA0Y0VA116_GA25_GA89_yAA19SymbolRenderingModeVSgGGA91_GSg_AZyAIyA44__A44_SgtGGAIyA121__AkAE5alertArTQrAW_AA5AlertVyXEtFQOyAkAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyACyACyACyACyACyAkAE10fontWeightyQrA114_6WeightVSgFQOyACyAAA57_VyA44_GA116_G_Qo_A91_GA25_GA77_GAA24_BackgroundStyleModifierVyA11_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA169_GQo__Qo_tGSgtGGA77_GA131_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA4_8PlaylistV0vwZ0E12CollaboratorVGA4_0V6ItemIDVA53_015CollaboratorRowH0A55_LLVGtGSgA84_G_Qo__AIyAPyA44_A219_A84_G_APyA84_AkAEA164_ArTQrAW_A166_yXEtFQOyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyA176_yACyACyA44_A101_GA91_GG_AA21BorderlessButtonStyleVQo__Qo_A84_GSgAPyA44_A220_A84_GtGSgAPyA44_A46_yAA6ToggleVyA44_GGA13_yA13_yA44_A44_GA44_GGSgtGGA89_y12CoreGraphics7CGFloatVGGMd,  &_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVyAA0H0PAAE16headerProminenceyQrAA0J0OFQOyAA7SectionVyAkAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaJRd__lFQOyACyAA6VStackVyAIyACyACyACyACy010_MusicKit_aB012ArtworkImageV01_vw9Internal_aB0E18artworkPlaceholderyQrx0vW00X0VSg_So6CGSizeVAA5ColorVtcAaJRzlFQOy_AA012_ConditionalD0VyACyACyA1_0v4CoreB0E11PlaceholderOAJVAA26_PreferenceWritingModifierVyA14_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA26_GGQo_A25_GA14_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA14_06BorderH8ModifierA34_LLVGAA13_ShadowEffectVG_AA4TextVAIyACyACyAA6HStackVyAIyAkAE5sheetArsTQrAW_AXqd__yctAaJRd__lFQOyACy0V4Core13CollaborationOA14_E10ManagementOAJV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A52_08ActivityH10ControllerA55_LLVSgQo__ACyA62_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyAA5GroupVyA13_yA46_yAIyAA08ProgressH0VyAA05EmptyH0VA84_G_A44_tGGACyACyA44_AA30_EnvironmentKeyWritingModifierVyA11_SgGGA89_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA89_ySiSgGGA74_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA89_yAA4FontVSgGGA77_GA77_GAA6SpacerVtGSgA46_yA121_GtGGAA21_TraitWritingModifierVyAA0E17RowInsetsTraitKeyVGG_ACyACyA52_06QRCodeH0A55_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA14_15ClearBackgroundA55_LLVGGSgQo_AIyAkAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyA46_yAIyACyACyACyACyAA0Y0VA116_GA25_GA89_yAA19SymbolRenderingModeVSgGGA91_GSg_AZyAIyA44__A44_SgtGGAIyA121__AkAE5alertArTQrAW_AA5AlertVyXEtFQOyAkAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyACyACyACyACyACyAkAE10fontWeightyQrA114_6WeightVSgFQOyACyAAA57_VyA44_GA116_G_Qo_A91_GA25_GA77_GAA24_BackgroundStyleModifierVyA11_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA169_GQo__Qo_tGSgtGGA77_GA131_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA4_8PlaylistV0vwZ0E12CollaboratorVGA4_0V6ItemIDVA53_015CollaboratorRowH0A55_LLVGtGSgA84_G_Qo__AIyAPyA44_A219_A84_G_APyA84_AkAEA164_ArTQrAW_A166_yXEtFQOyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyA176_yACyACyA44_A101_GA91_GG_AA21BorderlessButtonStyleVQo__Qo_A84_GSgAPyA44_A220_A84_GtGSgAPyA44_A46_yAA6ToggleVyA44_GGA13_yA13_yA44_A44_GA44_GGSgtGGA89_y12CoreGraphics7CGFloatVGGMR);
  v11 = type metadata accessor for InsetGroupedListStyle();
  v12 = lazy protocol witness table accessor for type ModifiedContent<List<Never, TupleView<(<<opaque return type of View.headerProminence(_:)>>.0, TupleView<(Section<Text, Collaboration.Management.View.CollaboratorRowView, EmptyView>, Section<EmptyView, <<opaque return type of View.alert(isPresented:content:)>>.0, EmptyView>?, Section<Text, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>, EmptyView>)>?, Section<Text, HStack<Toggle<Text>>, _ConditionalContent<_ConditionalContent<Text, Text>, Text>>?)>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
  v27 = v10;
  v28 = v11;
  v29 = v12;
  v30 = &protocol witness table for InsetGroupedListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMR);
  v15 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<DefaultButtonLabel>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMR, &protocol conformance descriptor for ToolbarItem<A, B>);
  v27 = v14;
  v28 = v15;
  v16 = swift_getOpaqueTypeConformance2();
  v27 = v8;
  v28 = v9;
  v29 = OpaqueTypeConformance2;
  v30 = v16;
  swift_getOpaqueTypeConformance2();
  NavigationStack.init<>(root:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  outlined init with copy of Collaboration.Management.View(v2, v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v17 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v18 = swift_allocObject();
  outlined init with take of Collaboration.Management.View(v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for Collaboration.Management.View);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>( &lazy protocol witness table cache variable for type NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationStack<A, B>,  &_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAgAE9listStyleyQrqd__AA04ListL0Rd__lFQOyAA08ModifiedJ0VyAA0M0Vys5NeverOAA05TupleF0VyAgAE16headerProminenceyQrAA0R0OFQOyAA7SectionVyAgAE15fullScreenCover11isPresented9onDismissAIQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyANyAA6VStackVyATyANyANyANyANy010_MusicKit_aB012ArtworkImageV018_MusicKitInternal_aB0E18artworkPlaceholderyQrx8MusicKit7ArtworkVSg_So6CGSizeVAA5ColorVtcAaFRzlFQOy_AA012_ConditionalJ0VyANyANyA9_09MusicCoreB0E11PlaceholderOAFVAA26_PreferenceWritingModifierVyA22_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA34_GGQo_A33_GA22_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA22_06BorderF8ModifierA42_LLVGAA13_ShadowEffectVG_AA4TextVATyANyANyAA6HStackVyATyAgAE5sheetA_A0_AIQrA3__A4_qd__yctAaFRd__lFQOyANy9MusicCore13CollaborationOA22_E10ManagementOAFV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A60_08ActivityF10ControllerA63_LLVSgQo__ANyA70_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ANyANyANyANyANyANyANyAA5GroupVyA21_yA54_yATyAA08ProgressF0VyAA05EmptyF0VA92_G_A52_tGGANyANyA52_AA30_EnvironmentKeyWritingModifierVyA19_SgGGA97_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA97_ySiSgGGA82_GAA011_ForegroundL8ModifierVyAA017HierarchicalShapeL0VGGA97_yAA4FontVSgGGA85_GA85_GAA6SpacerVtGSgA54_yA129_GtGGAA21_TraitWritingModifierVyAA0M17RowInsetsTraitKeyVGG_ANyANyA60_06QRCodeF0A63_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA22_15ClearBackgroundA63_LLVGGSgQo_ATyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyANyANyANyA54_yATyANyANyANyANyAA5ImageVA124_GA33_GA97_yAA19SymbolRenderingModeVSgGGA99_GSg_A6_yATyA52__A52_SgtGGATyA129__AgAE5alertA_AIQrA3__AA5AlertVyXEtFQOyAgAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyANyANyANyANyANyAgAE10fontWeightyQrA122_6WeightVSgFQOyANyAAA65_VyA52_GA124_G_Qo_A99_GA33_GA85_GAA011_BackgroundL8ModifierVyA19_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA177_GQo__Qo_tGSgtGGA85_GA139_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA12_8PlaylistV16MusicKitInternalE12CollaboratorVGA12_11MusicItemIDVA61_015CollaboratorRowF0A63_LLVGtGSgA92_G_Qo__ATyAYyA52_A227_A92_G_AYyA92_AgAEA172_A_AIQrA3__A174_yXEtFQOyAgAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyA184_yANyANyA52_A109_GA99_GG_AA016BorderlessButtonL0VQo__Qo_A92_GSgAYyA52_A228_A92_GtGSgAYyA52_A54_yAA6ToggleVyA52_GGA21_yA21_yA52_A52_GA52_GGSgtGGA97_y12CoreGraphics7CGFloatVGG_AA012InsetGroupedmL0VQo__AA0iJ7BuilderV10buildBlockyQrxAaJRzlFZQOy_AA0I4ItemVyytA184_yAA18DefaultButtonLabelVGGQo_Qo_GMd,  &_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAgAE9listStyleyQrqd__AA04ListL0Rd__lFQOyAA08ModifiedJ0VyAA0M0Vys5NeverOAA05TupleF0VyAgAE16headerProminenceyQrAA0R0OFQOyAA7SectionVyAgAE15fullScreenCover11isPresented9onDismissAIQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyANyAA6VStackVyATyANyANyANyANy010_MusicKit_aB012ArtworkImageV018_MusicKitInternal_aB0E18artworkPlaceholderyQrx8MusicKit7ArtworkVSg_So6CGSizeVAA5ColorVtcAaFRzlFQOy_AA012_ConditionalJ0VyANyANyA9_09MusicCoreB0E11PlaceholderOAFVAA26_PreferenceWritingModifierVyA22_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA34_GGQo_A33_GA22_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA22_06BorderF8ModifierA42_LLVGAA13_ShadowEffectVG_AA4TextVATyANyANyAA6HStackVyATyAgAE5sheetA_A0_AIQrA3__A4_qd__yctAaFRd__lFQOyANy9MusicCore13CollaborationOA22_E10ManagementOAFV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A60_08ActivityF10ControllerA63_LLVSgQo__ANyA70_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ANyANyANyANyANyANyANyAA5GroupVyA21_yA54_yATyAA08ProgressF0VyAA05EmptyF0VA92_G_A52_tGGANyANyA52_AA30_EnvironmentKeyWritingModifierVyA19_SgGGA97_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA97_ySiSgGGA82_GAA011_ForegroundL8ModifierVyAA017HierarchicalShapeL0VGGA97_yAA4FontVSgGGA85_GA85_GAA6SpacerVtGSgA54_yA129_GtGGAA21_TraitWritingModifierVyAA0M17RowInsetsTraitKeyVGG_ANyANyA60_06QRCodeF0A63_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA22_15ClearBackgroundA63_LLVGGSgQo_ATyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyANyANyANyA54_yATyANyANyANyANyAA5ImageVA124_GA33_GA97_yAA19SymbolRenderingModeVSgGGA99_GSg_A6_yATyA52__A52_SgtGGATyA129__AgAE5alertA_AIQrA3__AA5AlertVyXEtFQOyAgAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyANyANyANyANyANyAgAE10fontWeightyQrA122_6WeightVSgFQOyANyAAA65_VyA52_GA124_G_Qo_A99_GA33_GA85_GAA011_BackgroundL8ModifierVyA19_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA177_GQo__Qo_tGSgtGGA85_GA139_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA12_8PlaylistV16MusicKitInternalE12CollaboratorVGA12_11MusicItemIDVA61_015CollaboratorRowF0A63_LLVGtGSgA92_G_Qo__ATyAYyA52_A227_A92_G_AYyA92_AgAEA172_A_AIQrA3__A174_yXEtFQOyAgAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyA184_yANyANyA52_A109_GA99_GG_AA016BorderlessButtonL0VQo__Qo_A92_GSgAYyA52_A228_A92_GtGSgAYyA52_A54_yAA6ToggleVyA52_GGA21_yA21_yA52_A52_GA52_GGSgtGGA97_y12CoreGraphics7CGFloatVGG_AA012InsetGroupedmL0VQo__AA0iJ7BuilderV10buildBlockyQrxAaJRzlFZQOy_AA0I4ItemVyytA184_yAA18DefaultButtonLabelVGGQo_Qo_GMR,  &protocol conformance descriptor for NavigationStack<A, B>);
  v19 = v23;
  View.onChange<A>(of:initial:_:)();

  return (*(v24 + 8))(v7, v19);
}

uint64_t closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for InsetGroupedListStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2( &_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVyAA0H0PAAE16headerProminenceyQrAA0J0OFQOyAA7SectionVyAkAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaJRd__lFQOyACyAA6VStackVyAIyACyACyACyACy010_MusicKit_aB012ArtworkImageV01_vw9Internal_aB0E18artworkPlaceholderyQrx0vW00X0VSg_So6CGSizeVAA5ColorVtcAaJRzlFQOy_AA012_ConditionalD0VyACyACyA1_0v4CoreB0E11PlaceholderOAJVAA26_PreferenceWritingModifierVyA14_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA26_GGQo_A25_GA14_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA14_06BorderH8ModifierA34_LLVGAA13_ShadowEffectVG_AA4TextVAIyACyACyAA6HStackVyAIyAkAE5sheetArsTQrAW_AXqd__yctAaJRd__lFQOyACy0V4Core13CollaborationOA14_E10ManagementOAJV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A52_08ActivityH10ControllerA55_LLVSgQo__ACyA62_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyAA5GroupVyA13_yA46_yAIyAA08ProgressH0VyAA05EmptyH0VA84_G_A44_tGGACyACyA44_AA30_EnvironmentKeyWritingModifierVyA11_SgGGA89_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA89_ySiSgGGA74_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA89_yAA4FontVSgGGA77_GA77_GAA6SpacerVtGSgA46_yA121_GtGGAA21_TraitWritingModifierVyAA0E17RowInsetsTraitKeyVGG_ACyACyA52_06QRCodeH0A55_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA14_15ClearBackgroundA55_LLVGGSgQo_AIyAkAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyA46_yAIyACyACyACyACyAA0Y0VA116_GA25_GA89_yAA19SymbolRenderingModeVSgGGA91_GSg_AZyAIyA44__A44_SgtGGAIyA121__AkAE5alertArTQrAW_AA5AlertVyXEtFQOyAkAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyACyACyACyACyACyAkAE10fontWeightyQrA114_6WeightVSgFQOyACyAAA57_VyA44_GA116_G_Qo_A91_GA25_GA77_GAA24_BackgroundStyleModifierVyA11_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA169_GQo__Qo_tGSgtGGA77_GA131_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA4_8PlaylistV0vwZ0E12CollaboratorVGA4_0V6ItemIDVA53_015CollaboratorRowH0A55_LLVGtGSgA84_G_Qo__AIyAPyA44_A219_A84_G_APyA84_AkAEA164_ArTQrAW_A166_yXEtFQOyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyA176_yACyACyA44_A101_GA91_GG_AA21BorderlessButtonStyleVQo__Qo_A84_GSgAPyA44_A220_A84_GtGSgAPyA44_A46_yAA6ToggleVyA44_GGA13_yA13_yA44_A44_GA44_GGSgtGGA89_y12CoreGraphics7CGFloatVGGMd,  &_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVyAA0H0PAAE16headerProminenceyQrAA0J0OFQOyAA7SectionVyAkAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaJRd__lFQOyACyAA6VStackVyAIyACyACyACyACy010_MusicKit_aB012ArtworkImageV01_vw9Internal_aB0E18artworkPlaceholderyQrx0vW00X0VSg_So6CGSizeVAA5ColorVtcAaJRzlFQOy_AA012_ConditionalD0VyACyACyA1_0v4CoreB0E11PlaceholderOAJVAA26_PreferenceWritingModifierVyA14_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA26_GGQo_A25_GA14_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA14_06BorderH8ModifierA34_LLVGAA13_ShadowEffectVG_AA4TextVAIyACyACyAA6HStackVyAIyAkAE5sheetArsTQrAW_AXqd__yctAaJRd__lFQOyACy0V4Core13CollaborationOA14_E10ManagementOAJV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A52_08ActivityH10ControllerA55_LLVSgQo__ACyA62_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyAA5GroupVyA13_yA46_yAIyAA08ProgressH0VyAA05EmptyH0VA84_G_A44_tGGACyACyA44_AA30_EnvironmentKeyWritingModifierVyA11_SgGGA89_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA89_ySiSgGGA74_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA89_yAA4FontVSgGGA77_GA77_GAA6SpacerVtGSgA46_yA121_GtGGAA21_TraitWritingModifierVyAA0E17RowInsetsTraitKeyVGG_ACyACyA52_06QRCodeH0A55_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA14_15ClearBackgroundA55_LLVGGSgQo_AIyAkAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyA46_yAIyACyACyACyACyAA0Y0VA116_GA25_GA89_yAA19SymbolRenderingModeVSgGGA91_GSg_AZyAIyA44__A44_SgtGGAIyA121__AkAE5alertArTQrAW_AA5AlertVyXEtFQOyAkAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyACyACyACyACyACyAkAE10fontWeightyQrA114_6WeightVSgFQOyACyAAA57_VyA44_GA116_G_Qo_A91_GA25_GA77_GAA24_BackgroundStyleModifierVyA11_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA169_GQo__Qo_tGSgtGGA77_GA131_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA4_8PlaylistV0vwZ0E12CollaboratorVGA4_0V6ItemIDVA53_015CollaboratorRowH0A55_LLVGtGSgA84_G_Qo__AIyAPyA44_A219_A84_G_APyA84_AkAEA164_ArTQrAW_A166_yXEtFQOyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyA176_yACyACyA44_A101_GA91_GG_AA21BorderlessButtonStyleVQo__Qo_A84_GSgAPyA44_A220_A84_GtGSgAPyA44_A46_yAA6ToggleVyA44_GGA13_yA13_yA44_A44_GA44_GGSgtGGA89_y12CoreGraphics7CGFloatVGGMR);
  __chkstk_darwin();
  v9 = &v22 - v8;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2( &_s7SwiftUI4ViewPAAE9listStyleyQrqd__AA04ListE0Rd__lFQOyAA15ModifiedContentVyAA0F0Vys5NeverOAA05TupleC0VyAcAE16headerProminenceyQrAA0L0OFQOyAA7SectionVyAcAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAGyAA6VStackVyAMyAGyAGyAGyAGy010_MusicKit_aB012ArtworkImageV01_xy9Internal_aB0E18artworkPlaceholderyQrx0xY00Z0VSg_So6CGSizeVAA5ColorVtcAaBRzlFQOy_AA012_ConditionalH0VyAGyAGyA3_0x4CoreB0E11PlaceholderOABVAA26_PreferenceWritingModifierVyA16_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA28_GGQo_A27_GA16_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA16_06BorderC8ModifierA36_LLVGAA13_ShadowEffectVG_AA4TextVAMyAGyAGyAA6HStackVyAMyAcAE5sheetAtuVQrAY_AZqd__yctAaBRd__lFQOyAGy0X4Core13CollaborationOA16_E10ManagementOABV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A54_08ActivityC10ControllerA57_LLVSgQo__AGyA64_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AGyAGyAGyAGyAGyAGyAGyAA5GroupVyA15_yA48_yAMyAA08ProgressC0VyAA05EmptyC0VA86_G_A46_tGGAGyAGyA46_AA30_EnvironmentKeyWritingModifierVyA13_SgGGA91_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA91_ySiSgGGA76_GAA011_ForegroundE8ModifierVyAA017HierarchicalShapeE0VGGA91_yAA4FontVSgGGA79_GA79_GAA6SpacerVtGSgA48_yA123_GtGGAA21_TraitWritingModifierVyAA0F17RowInsetsTraitKeyVGG_AGyAGyA54_06QRCodeC0A57_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA16_15ClearBackgroundA57_LLVGGSgQo_AMyAcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAGyAGyA48_yAMyAGyAGyAGyAGyAA5ImageVA118_GA27_GA91_yAA19SymbolRenderingModeVSgGGA93_GSg_A0_yAMyA46__A46_SgtGGAMyA123__AcAE5alertAtVQrAY_AA5AlertVyXEtFQOyAcAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAGyAGyAGyAGyAGyAcAE10fontWeightyQrA116_6WeightVSgFQOyAGyAAA59_VyA46_GA118_G_Qo_A93_GA27_GA79_GAA011_BackgroundE8ModifierVyA13_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA171_GQo__Qo_tGSgtGGA79_GA133_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA6_8PlaylistV0xY8InternalE12CollaboratorVGA6_0X6ItemIDVA55_015CollaboratorRowC0A57_LLVGtGSgA86_G_Qo__AMyARyA46_A221_A86_G_ARyA86_AcAEA166_AtVQrAY_A168_yXEtFQOyAcAE06buttonE0yQrqd__AA015PrimitiveButtonE0Rd__lFQOyA178_yAGyAGyA46_A103_GA93_GG_AA016BorderlessButtonE0VQo__Qo_A86_GSgARyA46_A222_A86_GtGSgARyA46_A48_yAA6ToggleVyA46_GGA15_yA15_yA46_A46_GA46_GGSgtGGA91_y12CoreGraphics7CGFloatVGG_AA012InsetGroupedfE0VQo_Md,  &_s7SwiftUI4ViewPAAE9listStyleyQrqd__AA04ListE0Rd__lFQOyAA15ModifiedContentVyAA0F0Vys5NeverOAA05TupleC0VyAcAE16headerProminenceyQrAA0L0OFQOyAA7SectionVyAcAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAGyAA6VStackVyAMyAGyAGyAGyAGy010_MusicKit_aB012ArtworkImageV01_xy9Internal_aB0E18artworkPlaceholderyQrx0xY00Z0VSg_So6CGSizeVAA5ColorVtcAaBRzlFQOy_AA012_ConditionalH0VyAGyAGyA3_0x4CoreB0E11PlaceholderOABVAA26_PreferenceWritingModifierVyA16_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA28_GGQo_A27_GA16_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA16_06BorderC8ModifierA36_LLVGAA13_ShadowEffectVG_AA4TextVAMyAGyAGyAA6HStackVyAMyAcAE5sheetAtuVQrAY_AZqd__yctAaBRd__lFQOyAGy0X4Core13CollaborationOA16_E10ManagementOABV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A54_08ActivityC10ControllerA57_LLVSgQo__AGyA64_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AGyAGyAGyAGyAGyAGyAGyAA5GroupVyA15_yA48_yAMyAA08ProgressC0VyAA05EmptyC0VA86_G_A46_tGGAGyAGyA46_AA30_EnvironmentKeyWritingModifierVyA13_SgGGA91_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA91_ySiSgGGA76_GAA011_ForegroundE8ModifierVyAA017HierarchicalShapeE0VGGA91_yAA4FontVSgGGA79_GA79_GAA6SpacerVtGSgA48_yA123_GtGGAA21_TraitWritingModifierVyAA0F17RowInsetsTraitKeyVGG_AGyAGyA54_06QRCodeC0A57_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA16_15ClearBackgroundA57_LLVGGSgQo_AMyAcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAGyAGyA48_yAMyAGyAGyAGyAGyAA5ImageVA118_GA27_GA91_yAA19SymbolRenderingModeVSgGGA93_GSg_A0_yAMyA46__A46_SgtGGAMyA123__AcAE5alertAtVQrAY_AA5AlertVyXEtFQOyAcAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAGyAGyAGyAGyAGyAcAE10fontWeightyQrA116_6WeightVSgFQOyAGyAAA59_VyA46_GA118_G_Qo_A93_GA27_GA79_GAA011_BackgroundE8ModifierVyA13_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA171_GQo__Qo_tGSgtGGA79_GA133_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA6_8PlaylistV0xY8InternalE12CollaboratorVGA6_0X6ItemIDVA55_015CollaboratorRowC0A57_LLVGtGSgA86_G_Qo__AMyARyA46_A221_A86_G_ARyA86_AcAEA166_AtVQrAY_A168_yXEtFQOyAcAE06buttonE0yQrqd__AA015PrimitiveButtonE0Rd__lFQOyA178_yAGyAGyA46_A103_GA93_GG_AA016BorderlessButtonE0VQo__Qo_A86_GSgARyA46_A222_A86_GtGSgARyA46_A48_yAA6ToggleVyA46_GGA15_yA15_yA46_A46_GA46_GGSgtGGA91_y12CoreGraphics7CGFloatVGG_AA012InsetGroupedfE0VQo_MR);
  v10 = *(v24 - 8);
  __chkstk_darwin();
  v12 = &v22 - v11;
  v23 = a1;
  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2( &_s7SwiftUI9TupleViewVyAA0D0PAAE16headerProminenceyQrAA0F0OFQOyAA7SectionVyAeAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAA15ModifiedContentVyAA6VStackVyACyATyATyATyATy010_MusicKit_aB012ArtworkImageV01_tu9Internal_aB0E18artworkPlaceholderyQrx0tU00V0VSg_So6CGSizeVAA5ColorVtcAaDRzlFQOy_AA012_ConditionalR0VyATyATyAY0t4CoreB0E0Z0OADVAA26_PreferenceWritingModifierVyA10_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA22_GGQo_A21_GA10_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA10_06BorderD8ModifierA30_LLVGAA13_ShadowEffectVG_AA4TextVACyATyATyAA6HStackVyACyAeAE5sheetAlmNQrAQ_ARqd__yctAaDRd__lFQOyATy0T4Core13CollaborationOA10_E10ManagementOADV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A48_08ActivityD10ControllerA51_LLVSgQo__ATyA58_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ATyATyATyATyATyATyATyAA5GroupVyA9_yA42_yACyAA08ProgressD0VyAA05EmptyD0VA80_G_A40_tGGATyATyA40_AA30_EnvironmentKeyWritingModifierVyA7_SgGGA85_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA85_ySiSgGGA70_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA85_yAA4FontVSgGGA73_GA73_GAA6SpacerVtGSgA42_yA117_GtGGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGG_ATyATyA48_06QRCodeD0A51_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA10_15ClearBackgroundA51_LLVGGSgQo_ACyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyATyATyATyA42_yACyATyATyATyATyAA0W0VA112_GA21_GA85_yAA19SymbolRenderingModeVSgGGA87_GSg_AVyACyA40__A40_SgtGGACyA117__AeAE5alertAlNQrAQ_AA5AlertVyXEtFQOyAeAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyATyATyATyATyATyAeAE10fontWeightyQrA110_6WeightVSgFQOyATyAAA53_VyA40_GA112_G_Qo_A87_GA21_GA73_GAA24_BackgroundStyleModifierVyA7_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA165_GQo__Qo_tGSgtGGA73_GA127_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA0_8PlaylistV0tuX0E12CollaboratorVGA0_0T6ItemIDVA49_015CollaboratorRowD0A51_LLVGtGSgA80_G_Qo__ACyAJyA40_A215_A80_G_AJyA80_AeAEA160_AlNQrAQ_A162_yXEtFQOyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyA172_yATyATyA40_A97_GA87_GG_AA21BorderlessButtonStyleVQo__Qo_A80_GSgAJyA40_A216_A80_GtGSgAJyA40_A42_yAA6ToggleVyA40_GGA9_yA9_yA40_A40_GA40_GGSgtGMd,  &_s7SwiftUI9TupleViewVyAA0D0PAAE16headerProminenceyQrAA0F0OFQOyAA7SectionVyAeAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAA15ModifiedContentVyAA6VStackVyACyATyATyATyATy010_MusicKit_aB012ArtworkImageV01_tu9Internal_aB0E18artworkPlaceholderyQrx0tU00V0VSg_So6CGSizeVAA5ColorVtcAaDRzlFQOy_AA012_ConditionalR0VyATyATyAY0t4CoreB0E0Z0OADVAA26_PreferenceWritingModifierVyA10_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA22_GGQo_A21_GA10_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA10_06BorderD8ModifierA30_LLVGAA13_ShadowEffectVG_AA4TextVACyATyATyAA6HStackVyACyAeAE5sheetAlmNQrAQ_ARqd__yctAaDRd__lFQOyATy0T4Core13CollaborationOA10_E10ManagementOADV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A48_08ActivityD10ControllerA51_LLVSgQo__ATyA58_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ATyATyATyATyATyATyATyAA5GroupVyA9_yA42_yACyAA08ProgressD0VyAA05EmptyD0VA80_G_A40_tGGATyATyA40_AA30_EnvironmentKeyWritingModifierVyA7_SgGGA85_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA85_ySiSgGGA70_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA85_yAA4FontVSgGGA73_GA73_GAA6SpacerVtGSgA42_yA117_GtGGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGG_ATyATyA48_06QRCodeD0A51_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA10_15ClearBackgroundA51_LLVGGSgQo_ACyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyATyATyATyA42_yACyATyATyATyATyAA0W0VA112_GA21_GA85_yAA19SymbolRenderingModeVSgGGA87_GSg_AVyACyA40__A40_SgtGGACyA117__AeAE5alertAlNQrAQ_AA5AlertVyXEtFQOyAeAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyATyATyATyATyATyAeAE10fontWeightyQrA110_6WeightVSgFQOyATyAAA53_VyA40_GA112_G_Qo_A87_GA21_GA73_GAA24_BackgroundStyleModifierVyA7_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA165_GQo__Qo_tGSgtGGA73_GA127_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA0_8PlaylistV0tuX0E12CollaboratorVGA0_0T6ItemIDVA49_015CollaboratorRowD0A51_LLVGtGSgA80_G_Qo__ACyAJyA40_A215_A80_G_AJyA80_AeAEA160_AlNQrAQ_A162_yXEtFQOyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyA172_yATyATyA40_A97_GA87_GG_AA21BorderlessButtonStyleVQo__Qo_A80_GSgAJyA40_A216_A80_GtGSgAJyA40_A42_yAA6ToggleVyA40_GGA9_yA9_yA40_A40_GA40_GGSgtGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>( &lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.headerProminence(_:)>>.0, TupleView<(Section<Text, Collaboration.Management.View.CollaboratorRowView, EmptyView>, Section<EmptyView, <<opaque return type of View.alert(isPresented:content:)>>.0, EmptyView>?, Section<Text, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>, EmptyView>)>?, Section<Text, HStack<Toggle<Text>>, _ConditionalContent<_ConditionalContent<Text, Text>, Text>>?)> and conformance TupleView<A>,  &_s7SwiftUI9TupleViewVyAA0D0PAAE16headerProminenceyQrAA0F0OFQOyAA7SectionVyAeAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAA15ModifiedContentVyAA6VStackVyACyATyATyATyATy010_MusicKit_aB012ArtworkImageV01_tu9Internal_aB0E18artworkPlaceholderyQrx0tU00V0VSg_So6CGSizeVAA5ColorVtcAaDRzlFQOy_AA012_ConditionalR0VyATyATyAY0t4CoreB0E0Z0OADVAA26_PreferenceWritingModifierVyA10_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA22_GGQo_A21_GA10_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA10_06BorderD8ModifierA30_LLVGAA13_ShadowEffectVG_AA4TextVACyATyATyAA6HStackVyACyAeAE5sheetAlmNQrAQ_ARqd__yctAaDRd__lFQOyATy0T4Core13CollaborationOA10_E10ManagementOADV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A48_08ActivityD10ControllerA51_LLVSgQo__ATyA58_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ATyATyATyATyATyATyATyAA5GroupVyA9_yA42_yACyAA08ProgressD0VyAA05EmptyD0VA80_G_A40_tGGATyATyA40_AA30_EnvironmentKeyWritingModifierVyA7_SgGGA85_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA85_ySiSgGGA70_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA85_yAA4FontVSgGGA73_GA73_GAA6SpacerVtGSgA42_yA117_GtGGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGG_ATyATyA48_06QRCodeD0A51_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA10_15ClearBackgroundA51_LLVGGSgQo_ACyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyATyATyATyA42_yACyATyATyATyATyAA0W0VA112_GA21_GA85_yAA19SymbolRenderingModeVSgGGA87_GSg_AVyACyA40__A40_SgtGGACyA117__AeAE5alertAlNQrAQ_AA5AlertVyXEtFQOyAeAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyATyATyATyATyATyAeAE10fontWeightyQrA110_6WeightVSgFQOyATyAAA53_VyA40_GA112_G_Qo_A87_GA21_GA73_GAA24_BackgroundStyleModifierVyA7_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA165_GQo__Qo_tGSgtGGA73_GA127_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA0_8PlaylistV0tuX0E12CollaboratorVGA0_0T6ItemIDVA49_015CollaboratorRowD0A51_LLVGtGSgA80_G_Qo__ACyAJyA40_A215_A80_G_AJyA80_AeAEA160_AlNQrAQ_A162_yXEtFQOyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyA172_yATyATyA40_A97_GA87_GG_AA21BorderlessButtonStyleVQo__Qo_A80_GSgAJyA40_A216_A80_GtGSgAJyA40_A42_yAA6ToggleVyA40_GGA9_yA9_yA40_A40_GA40_GGSgtGMd,  &_s7SwiftUI9TupleViewVyAA0D0PAAE16headerProminenceyQrAA0F0OFQOyAA7SectionVyAeAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAA15ModifiedContentVyAA6VStackVyACyATyATyATyATy010_MusicKit_aB012ArtworkImageV01_tu9Internal_aB0E18artworkPlaceholderyQrx0tU00V0VSg_So6CGSizeVAA5ColorVtcAaDRzlFQOy_AA012_ConditionalR0VyATyATyAY0t4CoreB0E0Z0OADVAA26_PreferenceWritingModifierVyA10_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA22_GGQo_A21_GA10_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA10_06BorderD8ModifierA30_LLVGAA13_ShadowEffectVG_AA4TextVACyATyATyAA6HStackVyACyAeAE5sheetAlmNQrAQ_ARqd__yctAaDRd__lFQOyATy0T4Core13CollaborationOA10_E10ManagementOADV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A48_08ActivityD10ControllerA51_LLVSgQo__ATyA58_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ATyATyATyATyATyATyATyAA5GroupVyA9_yA42_yACyAA08ProgressD0VyAA05EmptyD0VA80_G_A40_tGGATyATyA40_AA30_EnvironmentKeyWritingModifierVyA7_SgGGA85_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA85_ySiSgGGA70_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA85_yAA4FontVSgGGA73_GA73_GAA6SpacerVtGSgA42_yA117_GtGGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGG_ATyATyA48_06QRCodeD0A51_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA10_15ClearBackgroundA51_LLVGGSgQo_ACyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyATyATyATyA42_yACyATyATyATyATyAA0W0VA112_GA21_GA85_yAA19SymbolRenderingModeVSgGGA87_GSg_AVyACyA40__A40_SgtGGACyA117__AeAE5alertAlNQrAQ_AA5AlertVyXEtFQOyAeAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyATyATyATyATyATyAeAE10fontWeightyQrA110_6WeightVSgFQOyATyAAA53_VyA40_GA112_G_Qo_A87_GA21_GA73_GAA24_BackgroundStyleModifierVyA7_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA165_GQo__Qo_tGSgtGGA73_GA127_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA0_8PlaylistV0tuX0E12CollaboratorVGA0_0T6ItemIDVA49_015CollaboratorRowD0A51_LLVGtGSgA80_G_Qo__ACyAJyA40_A215_A80_G_AJyA80_AeAEA160_AlNQrAQ_A162_yXEtFQOyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyA172_yATyATyA40_A97_GA87_GG_AA21BorderlessButtonStyleVQo__Qo_A80_GSgAJyA40_A216_A80_GtGSgAJyA40_A42_yAA6ToggleVyA40_GGA9_yA9_yA40_A40_GA40_GGSgtGMR,  &protocol conformance descriptor for TupleView<A>);
  List<>.init(content:)();
  KeyPath = swift_getKeyPath();
  if (one-time initialization token for cellHeight != -1)
  {
    v21 = KeyPath;
    swift_once();
    KeyPath = v21;
  }

  v14 = static Collaboration.Management.View.Specs.cellHeight;
  v15 = &v9[*(v7 + 36)];
  *v15 = KeyPath;
  v15[1] = v14;
  InsetGroupedListStyle.init()();
  v16 = lazy protocol witness table accessor for type ModifiedContent<List<Never, TupleView<(<<opaque return type of View.headerProminence(_:)>>.0, TupleView<(Section<Text, Collaboration.Management.View.CollaboratorRowView, EmptyView>, Section<EmptyView, <<opaque return type of View.alert(isPresented:content:)>>.0, EmptyView>?, Section<Text, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>, EmptyView>)>?, Section<Text, HStack<Toggle<Text>>, _ConditionalContent<_ConditionalContent<Text, Text>, Text>>?)>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
  View.listStyle<A>(_:)();
  (*(v4 + 8))(v6, v3);
  outlined destroy of TaskPriority?( v9,  &_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVyAA0H0PAAE16headerProminenceyQrAA0J0OFQOyAA7SectionVyAkAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaJRd__lFQOyACyAA6VStackVyAIyACyACyACyACy010_MusicKit_aB012ArtworkImageV01_vw9Internal_aB0E18artworkPlaceholderyQrx0vW00X0VSg_So6CGSizeVAA5ColorVtcAaJRzlFQOy_AA012_ConditionalD0VyACyACyA1_0v4CoreB0E11PlaceholderOAJVAA26_PreferenceWritingModifierVyA14_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA26_GGQo_A25_GA14_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA14_06BorderH8ModifierA34_LLVGAA13_ShadowEffectVG_AA4TextVAIyACyACyAA6HStackVyAIyAkAE5sheetArsTQrAW_AXqd__yctAaJRd__lFQOyACy0V4Core13CollaborationOA14_E10ManagementOAJV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A52_08ActivityH10ControllerA55_LLVSgQo__ACyA62_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyAA5GroupVyA13_yA46_yAIyAA08ProgressH0VyAA05EmptyH0VA84_G_A44_tGGACyACyA44_AA30_EnvironmentKeyWritingModifierVyA11_SgGGA89_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA89_ySiSgGGA74_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA89_yAA4FontVSgGGA77_GA77_GAA6SpacerVtGSgA46_yA121_GtGGAA21_TraitWritingModifierVyAA0E17RowInsetsTraitKeyVGG_ACyACyA52_06QRCodeH0A55_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA14_15ClearBackgroundA55_LLVGGSgQo_AIyAkAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyA46_yAIyACyACyACyACyAA0Y0VA116_GA25_GA89_yAA19SymbolRenderingModeVSgGGA91_GSg_AZyAIyA44__A44_SgtGGAIyA121__AkAE5alertArTQrAW_AA5AlertVyXEtFQOyAkAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyACyACyACyACyACyAkAE10fontWeightyQrA114_6WeightVSgFQOyACyAAA57_VyA44_GA116_G_Qo_A91_GA25_GA77_GAA24_BackgroundStyleModifierVyA11_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA169_GQo__Qo_tGSgtGGA77_GA131_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA4_8PlaylistV0vwZ0E12CollaboratorVGA4_0V6ItemIDVA53_015CollaboratorRowH0A55_LLVGtGSgA84_G_Qo__AIyAPyA44_A219_A84_G_APyA84_AkAEA164_ArTQrAW_A166_yXEtFQOyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyA176_yACyACyA44_A101_GA91_GG_AA21BorderlessButtonStyleVQo__Qo_A84_GSgAPyA44_A220_A84_GtGSgAPyA44_A46_yAA6ToggleVyA44_GGA13_yA13_yA44_A44_GA44_GGSgtGGA89_y12CoreGraphics7CGFloatVGGMd,  &_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVyAA0H0PAAE16headerProminenceyQrAA0J0OFQOyAA7SectionVyAkAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaJRd__lFQOyACyAA6VStackVyAIyACyACyACyACy010_MusicKit_aB012ArtworkImageV01_vw9Internal_aB0E18artworkPlaceholderyQrx0vW00X0VSg_So6CGSizeVAA5ColorVtcAaJRzlFQOy_AA012_ConditionalD0VyACyACyA1_0v4CoreB0E11PlaceholderOAJVAA26_PreferenceWritingModifierVyA14_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA26_GGQo_A25_GA14_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA14_06BorderH8ModifierA34_LLVGAA13_ShadowEffectVG_AA4TextVAIyACyACyAA6HStackVyAIyAkAE5sheetArsTQrAW_AXqd__yctAaJRd__lFQOyACy0V4Core13CollaborationOA14_E10ManagementOAJV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A52_08ActivityH10ControllerA55_LLVSgQo__ACyA62_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyAA5GroupVyA13_yA46_yAIyAA08ProgressH0VyAA05EmptyH0VA84_G_A44_tGGACyACyA44_AA30_EnvironmentKeyWritingModifierVyA11_SgGGA89_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA89_ySiSgGGA74_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA89_yAA4FontVSgGGA77_GA77_GAA6SpacerVtGSgA46_yA121_GtGGAA21_TraitWritingModifierVyAA0E17RowInsetsTraitKeyVGG_ACyACyA52_06QRCodeH0A55_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA14_15ClearBackgroundA55_LLVGGSgQo_AIyAkAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyA46_yAIyACyACyACyACyAA0Y0VA116_GA25_GA89_yAA19SymbolRenderingModeVSgGGA91_GSg_AZyAIyA44__A44_SgtGGAIyA121__AkAE5alertArTQrAW_AA5AlertVyXEtFQOyAkAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyACyACyACyACyACyAkAE10fontWeightyQrA114_6WeightVSgFQOyACyAAA57_VyA44_GA116_G_Qo_A91_GA25_GA77_GAA24_BackgroundStyleModifierVyA11_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA169_GQo__Qo_tGSgtGGA77_GA131_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA4_8PlaylistV0vwZ0E12CollaboratorVGA4_0V6ItemIDVA53_015CollaboratorRowH0A55_LLVGtGSgA84_G_Qo__AIyAPyA44_A219_A84_G_APyA84_AkAEA164_ArTQrAW_A166_yXEtFQOyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyA176_yACyACyA44_A101_GA91_GG_AA21BorderlessButtonStyleVQo__Qo_A84_GSgAPyA44_A220_A84_GtGSgAPyA44_A46_yAA6ToggleVyA44_GGA13_yA13_yA44_A44_GA44_GGSgtGGA89_y12CoreGraphics7CGFloatVGGMR);
  __chkstk_darwin();
  *(&v22 - 2) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA07DefaultI5LabelVGGQo_Md, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA07DefaultI5LabelVGGQo_MR);
  v27 = v7;
  v28 = v3;
  v29 = v16;
  v30 = &protocol witness table for InsetGroupedListStyle;
  swift_getOpaqueTypeConformance2();
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMR);
  v18 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<DefaultButtonLabel>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMR, &protocol conformance descriptor for ToolbarItem<A, B>);
  v27 = v17;
  v28 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = v24;
  View.toolbar<A>(content:)();
  return (*(v10 + 8))(v12, v19);
}

uint64_t closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v152 = a2;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA6HStackVyAA6ToggleVyAEGGAA19_ConditionalContentVyAMyA2EGAEGGMd, &_s7SwiftUI7SectionVyAA4TextVAA6HStackVyAA6ToggleVyAEGGAA19_ConditionalContentVyAMyA2EGAEGGMR);
  v149 = *(v150 - 8);
  __chkstk_darwin();
  v115 = &v114 - v3;
  v146 = type metadata accessor for Playlist();
  v145 = *(v146 - 8);
  __chkstk_darwin();
  v144 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA6HStackVyAA6ToggleVyAEGGAA19_ConditionalContentVyAMyA2EGAEGGSgMd, &_s7SwiftUI7SectionVyAA4TextVAA6HStackVyAA6ToggleVyAEGGAA19_ConditionalContentVyAMyA2EGAEGGSgMR);
  __chkstk_darwin();
  v151 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v148 = &v114 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextV9MusicCore13CollaborationO0ghB0E10ManagementO0D0V015CollaboratorRowD033_BED032AFC26D7293E5DA491DDAECC514LLVAA05EmptyD0VG_AEyAtaNPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAvAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAA15ModifiedContentVyA8_yAgA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA21BorderlessButtonStyleVQo__Qo_ATGSgAEyAgA7ForEachVySay0G3Kit8PlaylistV0G11KitInternalE0K0VGA28_0G6ItemIDVARGATGtGMd, &_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextV9MusicCore13CollaborationO0ghB0E10ManagementO0D0V015CollaboratorRowD033_BED032AFC26D7293E5DA491DDAECC514LLVAA05EmptyD0VG_AEyAtaNPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAvAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAA15ModifiedContentVyA8_yAgA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA21BorderlessButtonStyleVQo__Qo_ATGSgAEyAgA7ForEachVySay0G3Kit8PlaylistV0G11KitInternalE0K0VGA28_0G6ItemIDVARGATGtGMR);
  v155 = *(v7 - 8);
  v156 = v7;
  __chkstk_darwin();
  v123 = &v114 - v8;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA7ForEachVySay8MusicKit8PlaylistV0gH8InternalE12CollaboratorVGAH0G6ItemIDV0G4Core13CollaborationO0gnB0E10ManagementO4ViewV0k3RowQ033_BED032AFC26D7293E5DA491DDAECC514LLVGAA05EmptyQ0VGMd, &_s7SwiftUI7SectionVyAA4TextVAA7ForEachVySay8MusicKit8PlaylistV0gH8InternalE12CollaboratorVGAH0G6ItemIDV0G4Core13CollaborationO0gnB0E10ManagementO4ViewV0k3RowQ033_BED032AFC26D7293E5DA491DDAECC514LLVGAA05EmptyQ0VGMR);
  v121 = *(v122 - 8);
  __chkstk_darwin();
  v135 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v134 = &v114 - v10;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAA15ModifiedContentVyAUyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA010BorderlessoM0VQo__Qo_AEGMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAA15ModifiedContentVyAUyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA010BorderlessoM0VQo__Qo_AEGMR);
  v118 = *(v119 - 8);
  __chkstk_darwin();
  v116 = &v114 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAA15ModifiedContentVyAUyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA010BorderlessoM0VQo__Qo_AEGSgMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAA15ModifiedContentVyAUyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA010BorderlessoM0VQo__Qo_AEGSgMR);
  __chkstk_darwin();
  v120 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v133 = &v114 - v13;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v125 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for String.LocalizationValue();
  v124 = *(v126 - 8);
  __chkstk_darwin();
  v153 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v154 = &v114 - v16;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextV9MusicCore13CollaborationO0efB0E10ManagementO4ViewV015CollaboratorRowI033_BED032AFC26D7293E5DA491DDAECC514LLVAA05EmptyI0VGMd, &_s7SwiftUI7SectionVyAA4TextV9MusicCore13CollaborationO0efB0E10ManagementO4ViewV015CollaboratorRowI033_BED032AFC26D7293E5DA491DDAECC514LLVAA05EmptyI0VGMR);
  v130 = *(v132 - 8);
  __chkstk_darwin();
  v128 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v136 = &v114 - v18;
  v131 = type metadata accessor for Playlist.Collaborator();
  v129 = *(v131 - 8);
  __chkstk_darwin();
  v117 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v127 = &v114 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextV9MusicCore13CollaborationO0ghB0E10ManagementO0D0V015CollaboratorRowD033_BED032AFC26D7293E5DA491DDAECC514LLVAA05EmptyD0VG_AEyAtaNPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAvAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAA15ModifiedContentVyA8_yAgA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA21BorderlessButtonStyleVQo__Qo_ATGSgAEyAgA7ForEachVySay0G3Kit8PlaylistV0G11KitInternalE0K0VGA28_0G6ItemIDVARGATGtGSgMd, &_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextV9MusicCore13CollaborationO0ghB0E10ManagementO0D0V015CollaboratorRowD033_BED032AFC26D7293E5DA491DDAECC514LLVAA05EmptyD0VG_AEyAtaNPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAvAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAA15ModifiedContentVyA8_yAgA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA21BorderlessButtonStyleVQo__Qo_ATGSgAEyAgA7ForEachVySay0G3Kit8PlaylistV0G11KitInternalE0K0VGA28_0G6ItemIDVARGATGtGSgMR);
  __chkstk_darwin();
  v147 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v159 = &v114 - v22;
  v140 = type metadata accessor for Prominence();
  v23 = *(v140 - 8);
  __chkstk_darwin();
  v25 = &v114 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA15ModifiedContentVyAA6VStackVyAA05TupleC0VyAMyAMyAMyAMy010_MusicKit_aB012ArtworkImageV01_qr9Internal_aB0E18artworkPlaceholderyQrx0qR00S0VSg_So6CGSizeVAA5ColorVtcAaBRzlFQOy_AA012_ConditionalN0VyAMyAMyAT0q4CoreB0E0W0OABVAA26_PreferenceWritingModifierVyA5_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_A16_GA5_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA5_06BorderC8ModifierA25_LLVGAA13_ShadowEffectVG_AA4TextVAQyAMyAMyAA6HStackVyAQyAcAE5sheetAefGQrAJ_AKqd__yctAaBRd__lFQOyAMy0Q4Core13CollaborationOA5_E10ManagementOABV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A43_08ActivityC10ControllerA46_LLVSgQo__AMyA53_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AMyAMyAMyAMyAMyAMyAMyAA5GroupVyA4_yA37_yAQyAA08ProgressC0VyAA05EmptyC0VA75_G_A35_tGGAMyAMyA35_AA30_EnvironmentKeyWritingModifierVyA2_SgGGA80_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA80_ySiSgGGA65_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA80_yAA4FontVSgGGA68_GA68_GAA6SpacerVtGSgA37_yA112_GtGGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGG_AMyAMyA43_06QRCodeC0A46_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA5_15ClearBackgroundA46_LLVGGSgQo_Md, &_s7SwiftUI4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA15ModifiedContentVyAA6VStackVyAA05TupleC0VyAMyAMyAMyAMy010_MusicKit_aB012ArtworkImageV01_qr9Internal_aB0E18artworkPlaceholderyQrx0qR00S0VSg_So6CGSizeVAA5ColorVtcAaBRzlFQOy_AA012_ConditionalN0VyAMyAMyAT0q4CoreB0E0W0OABVAA26_PreferenceWritingModifierVyA5_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_A16_GA5_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA5_06BorderC8ModifierA25_LLVGAA13_ShadowEffectVG_AA4TextVAQyAMyAMyAA6HStackVyAQyAcAE5sheetAefGQrAJ_AKqd__yctAaBRd__lFQOyAMy0Q4Core13CollaborationOA5_E10ManagementOABV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A43_08ActivityC10ControllerA46_LLVSgQo__AMyA53_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AMyAMyAMyAMyAMyAMyAMyAA5GroupVyA4_yA37_yAQyAA08ProgressC0VyAA05EmptyC0VA75_G_A35_tGGAMyAMyA35_AA30_EnvironmentKeyWritingModifierVyA2_SgGGA80_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA80_ySiSgGGA65_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA80_yAA4FontVSgGGA68_GA68_GAA6SpacerVtGSgA37_yA112_GtGGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGG_AMyAMyA43_06QRCodeC0A46_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA5_15ClearBackgroundA46_LLVGGSgQo_MR);
  __chkstk_darwin();
  v27 = &v114 - v26;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2( &_s7SwiftUI7SectionVyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAA15ModifiedContentVyAA6VStackVyAA05TupleD0VyAOyAOyAOyAOy010_MusicKit_aB012ArtworkImageV01_rs9Internal_aB0E18artworkPlaceholderyQrx0rS00T0VSg_So6CGSizeVAA5ColorVtcAaDRzlFQOy_AA012_ConditionalO0VyAOyAOyAV0r4CoreB0E0X0OADVAA26_PreferenceWritingModifierVyA7_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA19_GGQo_A18_GA7_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA7_06BorderD8ModifierA27_LLVGAA13_ShadowEffectVG_AA4TextVASyAOyAOyAA6HStackVyASyAeAE5sheetAghIQrAL_AMqd__yctAaDRd__lFQOyAOy0R4Core13CollaborationOA7_E10ManagementOADV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A45_08ActivityD10ControllerA48_LLVSgQo__AOyA55_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AOyAOyAOyAOyAOyAOyAOyAA5GroupVyA6_yA39_yASyAA08ProgressD0VyAA05EmptyD0VA77_G_A37_tGGAOyAOyA37_AA30_EnvironmentKeyWritingModifierVyA4_SgGGA82_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA82_ySiSgGGA67_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA82_yAA4FontVSgGGA70_GA70_GAA6SpacerVtGSgA39_yA114_GtGGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGG_AOyAOyA45_06QRCodeD0A48_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA7_15ClearBackgroundA48_LLVGGSgQo_ASyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAOyAOyAOyA39_yASyAOyAOyAOyAOyAA0U0VA109_GA18_GA82_yAA19SymbolRenderingModeVSgGGA84_GSg_AQyASyA37__A37_SgtGGASyA114__AeAE5alertAgIQrAL_AA5AlertVyXEtFQOyAeAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAOyAOyAOyAOyAOyAeAE10fontWeightyQrA107_6WeightVSgFQOyAOyAAA50_VyA37_GA109_G_Qo_A84_GA18_GA70_GAA24_BackgroundStyleModifierVyA4_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA162_GQo__Qo_tGSgtGGA70_GA124_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayAY8PlaylistV0rsV0E12CollaboratorVGAY0R6ItemIDVA46_015CollaboratorRowD0A48_LLVGtGSgA77_GMd,  &_s7SwiftUI7SectionVyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAA15ModifiedContentVyAA6VStackVyAA05TupleD0VyAOyAOyAOyAOy010_MusicKit_aB012ArtworkImageV01_rs9Internal_aB0E18artworkPlaceholderyQrx0rS00T0VSg_So6CGSizeVAA5ColorVtcAaDRzlFQOy_AA012_ConditionalO0VyAOyAOyAV0r4CoreB0E0X0OADVAA26_PreferenceWritingModifierVyA7_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA19_GGQo_A18_GA7_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA7_06BorderD8ModifierA27_LLVGAA13_ShadowEffectVG_AA4TextVASyAOyAOyAA6HStackVyASyAeAE5sheetAghIQrAL_AMqd__yctAaDRd__lFQOyAOy0R4Core13CollaborationOA7_E10ManagementOADV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A45_08ActivityD10ControllerA48_LLVSgQo__AOyA55_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AOyAOyAOyAOyAOyAOyAOyAA5GroupVyA6_yA39_yASyAA08ProgressD0VyAA05EmptyD0VA77_G_A37_tGGAOyAOyA37_AA30_EnvironmentKeyWritingModifierVyA4_SgGGA82_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA82_ySiSgGGA67_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA82_yAA4FontVSgGGA70_GA70_GAA6SpacerVtGSgA39_yA114_GtGGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGG_AOyAOyA45_06QRCodeD0A48_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA7_15ClearBackgroundA48_LLVGGSgQo_ASyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAOyAOyAOyA39_yASyAOyAOyAOyAOyAA0U0VA109_GA18_GA82_yAA19SymbolRenderingModeVSgGGA84_GSg_AQyASyA37__A37_SgtGGASyA114__AeAE5alertAgIQrAL_AA5AlertVyXEtFQOyAeAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAOyAOyAOyAOyAOyAeAE10fontWeightyQrA107_6WeightVSgFQOyAOyAAA50_VyA37_GA109_G_Qo_A84_GA18_GA70_GAA24_BackgroundStyleModifierVyA4_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA162_GQo__Qo_tGSgtGGA70_GA124_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayAY8PlaylistV0rsV0E12CollaboratorVGAY0R6ItemIDVA46_015CollaboratorRowD0A48_LLVGtGSgA77_GMR);
  v139 = *(v138 - 8);
  __chkstk_darwin();
  v29 = &v114 - v28;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2( &_s7SwiftUI4ViewPAAE16headerProminenceyQrAA0E0OFQOyAA7SectionVyAcAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA15ModifiedContentVyAA6VStackVyAA05TupleC0VyARyARyARyARy010_MusicKit_aB012ArtworkImageV01_tu9Internal_aB0E18artworkPlaceholderyQrx0tU00V0VSg_So6CGSizeVAA5ColorVtcAaBRzlFQOy_AA012_ConditionalQ0VyARyARyAY0t4CoreB0E0Z0OABVAA26_PreferenceWritingModifierVyA10_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA22_GGQo_A21_GA10_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA10_06BorderC8ModifierA30_LLVGAA13_ShadowEffectVG_AA4TextVAVyARyARyAA6HStackVyAVyAcAE5sheetAjkLQrAO_APqd__yctAaBRd__lFQOyARy0T4Core13CollaborationOA10_E10ManagementOABV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A48_08ActivityC10ControllerA51_LLVSgQo__ARyA58_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ARyARyARyARyARyARyARyAA5GroupVyA9_yA42_yAVyAA08ProgressC0VyAA05EmptyC0VA80_G_A40_tGGARyARyA40_AA30_EnvironmentKeyWritingModifierVyA7_SgGGA85_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA85_ySiSgGGA70_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA85_yAA4FontVSgGGA73_GA73_GAA6SpacerVtGSgA42_yA117_GtGGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGG_ARyARyA48_06QRCodeC0A51_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA10_15ClearBackgroundA51_LLVGGSgQo_AVyAcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyARyARyARyA42_yAVyARyARyARyARyAA0W0VA112_GA21_GA85_yAA19SymbolRenderingModeVSgGGA87_GSg_ATyAVyA40__A40_SgtGGAVyA117__AcAE5alertAjLQrAO_AA5AlertVyXEtFQOyAcAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyARyARyARyARyARyAcAE10fontWeightyQrA110_6WeightVSgFQOyARyAAA53_VyA40_GA112_G_Qo_A87_GA21_GA73_GAA24_BackgroundStyleModifierVyA7_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA165_GQo__Qo_tGSgtGGA73_GA127_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA0_8PlaylistV0tuX0E12CollaboratorVGA0_0T6ItemIDVA49_015CollaboratorRowC0A51_LLVGtGSgA80_G_Qo_Md,  &_s7SwiftUI4ViewPAAE16headerProminenceyQrAA0E0OFQOyAA7SectionVyAcAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA15ModifiedContentVyAA6VStackVyAA05TupleC0VyARyARyARyARy010_MusicKit_aB012ArtworkImageV01_tu9Internal_aB0E18artworkPlaceholderyQrx0tU00V0VSg_So6CGSizeVAA5ColorVtcAaBRzlFQOy_AA012_ConditionalQ0VyARyARyAY0t4CoreB0E0Z0OABVAA26_PreferenceWritingModifierVyA10_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA22_GGQo_A21_GA10_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA10_06BorderC8ModifierA30_LLVGAA13_ShadowEffectVG_AA4TextVAVyARyARyAA6HStackVyAVyAcAE5sheetAjkLQrAO_APqd__yctAaBRd__lFQOyARy0T4Core13CollaborationOA10_E10ManagementOABV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A48_08ActivityC10ControllerA51_LLVSgQo__ARyA58_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ARyARyARyARyARyARyARyAA5GroupVyA9_yA42_yAVyAA08ProgressC0VyAA05EmptyC0VA80_G_A40_tGGARyARyA40_AA30_EnvironmentKeyWritingModifierVyA7_SgGGA85_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA85_ySiSgGGA70_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA85_yAA4FontVSgGGA73_GA73_GAA6SpacerVtGSgA42_yA117_GtGGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGG_ARyARyA48_06QRCodeC0A51_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA10_15ClearBackgroundA51_LLVGGSgQo_AVyAcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyARyARyARyA42_yAVyARyARyARyARyAA0W0VA112_GA21_GA85_yAA19SymbolRenderingModeVSgGGA87_GSg_ATyAVyA40__A40_SgtGGAVyA117__AcAE5alertAjLQrAO_AA5AlertVyXEtFQOyAcAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyARyARyARyARyARyAcAE10fontWeightyQrA110_6WeightVSgFQOyARyAAA53_VyA40_GA112_G_Qo_A87_GA21_GA73_GAA24_BackgroundStyleModifierVyA7_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA165_GQo__Qo_tGSgtGGA73_GA127_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA0_8PlaylistV0tuX0E12CollaboratorVGA0_0T6ItemIDVA49_015CollaboratorRowC0A51_LLVGtGSgA80_G_Qo_MR);
  v142 = *(v143 - 8);
  __chkstk_darwin();
  v141 = &v114 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v32 = &v114 - v31;
  v158 = a1;
  v160 = a1;
  closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(a1, v27);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAKyAKyAA6HStackVyACyAKyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAQyAA19SymbolRenderingModeVSgGGAQyAA5ColorVSgGGSg_AA6VStackVyACyAA4TextV_A12_SgtGGACyAA6SpacerV_AeAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAeAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAKyAKyAKyAKyAKyAeAE10fontWeightyQrAS6WeightVSgFQOyAKyAA6ButtonVyA12_GAUG_Qo_A6_GAXGAA08_PaddingU0VGAA016_BackgroundStyleR0VyA4_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA28_GQo__Qo_tGSgtGGA43_GAA06_TraitqR0VyAA018ListRowInsetsTraitP0VGGAA010_AlignmentqR0VG_Qo__AA7ForEachVySay8MusicKit8PlaylistV16MusicKitInternalE12CollaboratorVGA77_11MusicItemIDV9MusicCore13CollaborationO09MusicCoreB0E10ManagementOADV015CollaboratorRowD033_BED032AFC26D7293E5DA491DDAECC514LLVGtGSgMd, &_s7SwiftUI9TupleViewVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAKyAKyAA6HStackVyACyAKyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAQyAA19SymbolRenderingModeVSgGGAQyAA5ColorVSgGGSg_AA6VStackVyACyAA4TextV_A12_SgtGGACyAA6SpacerV_AeAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAeAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAKyAKyAKyAKyAKyAeAE10fontWeightyQrAS6WeightVSgFQOyAKyAA6ButtonVyA12_GAUG_Qo_A6_GAXGAA08_PaddingU0VGAA016_BackgroundStyleR0VyA4_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA28_GQo__Qo_tGSgtGGA43_GAA06_TraitqR0VyAA018ListRowInsetsTraitP0VGGAA010_AlignmentqR0VG_Qo__AA7ForEachVySay8MusicKit8PlaylistV16MusicKitInternalE12CollaboratorVGA77_11MusicItemIDV9MusicCore13CollaborationO09MusicCoreB0E10ManagementOADV015CollaboratorRowD033_BED032AFC26D7293E5DA491DDAECC514LLVGtGSgMR);
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACy010_MusicKit_aB012ArtworkImageV01_hi9Internal_aB0E18artworkPlaceholderyQrx0hI00J0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAJ0h4CoreB0E0N0OAUVAA26_PreferenceWritingModifierVyAX016RadiosityEnabledS3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA8_GGQo_A7_GAX012CornerRadiusU033_F5ED3014321945F1E2BE58A044A15282LLVGAX06BordergU0A16_LLVGAA13_ShadowEffectVG_AA4TextVAGyACyACyAA6HStackVyAGyAaUPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaURd__lFQOyACy0hR013CollaborationOAXE10ManagementOAUV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA012_Environmentx9TransformU0VySbGG_A42_08ActivityG10ControllerA45_LLVSgQo__ACyA52_AA012_TransactionU0VGSgtGGAA010_FixedSizeZ0VGAA08_PaddingZ0VG_ACyACyACyACyACyACyACyAA5GroupVyAWyA28_yAGyAA08ProgressG0VyAA05EmptyG0VA74_G_A26_tGGACyACyA26_AA012_EnvironmentxtU0VyATSgGGA79_yAA13OpenURLActionVGGGSgGAA05_FlexyZ0VGA79_ySiSgGGA64_GAA016_ForegroundStyleU0VyAA22HierarchicalShapeStyleVGGA79_yAA4FontVSgGGA67_GA67_GAA6SpacerVtGSgA28_yA111_GtGGAA06_TraittU0VyAA018ListRowInsetsTraitX0VGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACy010_MusicKit_aB012ArtworkImageV01_hi9Internal_aB0E18artworkPlaceholderyQrx0hI00J0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAJ0h4CoreB0E0N0OAUVAA26_PreferenceWritingModifierVyAX016RadiosityEnabledS3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA8_GGQo_A7_GAX012CornerRadiusU033_F5ED3014321945F1E2BE58A044A15282LLVGAX06BordergU0A16_LLVGAA13_ShadowEffectVG_AA4TextVAGyACyACyAA6HStackVyAGyAaUPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaURd__lFQOyACy0hR013CollaborationOAXE10ManagementOAUV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA012_Environmentx9TransformU0VySbGG_A42_08ActivityG10ControllerA45_LLVSgQo__ACyA52_AA012_TransactionU0VGSgtGGAA010_FixedSizeZ0VGAA08_PaddingZ0VG_ACyACyACyACyACyACyACyAA5GroupVyAWyA28_yAGyAA08ProgressG0VyAA05EmptyG0VA74_G_A26_tGGACyACyA26_AA012_EnvironmentxtU0VyATSgGGA79_yAA13OpenURLActionVGGGSgGAA05_FlexyZ0VGA79_ySiSgGGA64_GAA016_ForegroundStyleU0VyAA22HierarchicalShapeStyleVGGA79_yAA4FontVSgGGA67_GA67_GAA6SpacerVtGSgA28_yA111_GtGGAA06_TraittU0VyAA018ListRowInsetsTraitX0VGGMR);
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO10QRCodeView33_BED032AFC26D7293E5DA491DDAECC514LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyAG05ClearV0AKLLVGGSgMd, &_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO10QRCodeView33_BED032AFC26D7293E5DA491DDAECC514LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyAG05ClearV0AKLLVGGSgMR);
  v35 = lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, CornerRadiusModifier>, BorderViewModifier>, _ShadowEffect>, Text, TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, ModifiedContent<ModifiedContent<Collaboration.Management.View.Share.Button, _EnvironmentKeyTransformModifier<Bool>>, _TransactionModifier>?)>>, _FixedSizeLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<HStack<TupleView<(ProgressView<EmptyView, EmptyView>, Text)>>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<OpenURLAction>>>?>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>, _Foreg();
  v36 = lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Collaboration.Management.QRCodeView, _SafeAreaRegionsIgnoringLayout>, _BackgroundModifier<ClearBackground>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO10QRCodeView33_BED032AFC26D7293E5DA491DDAECC514LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyAG05ClearV0AKLLVGGSgMd, &_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO10QRCodeView33_BED032AFC26D7293E5DA491DDAECC514LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyAG05ClearV0AKLLVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Collaboration.Management.QRCodeView, _SafeAreaRegionsIgnoringLayout>, _BackgroundModifier<ClearBackground>> and conformance <> ModifiedContent<A, B>);
  v161 = v33;
  v162 = v34;
  v163 = v35;
  v164 = v36;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>)>? and conformance <A> A?();
  Section<>.init(header:content:)();
  v37 = v140;
  (*(v23 + 104))(v25, enum case for Prominence.increased(_:), v140);
  lazy protocol witness table accessor for type Section<<<opaque return type of View.fullScreenCover<A>(isPresented:onDismiss:content:)>>.0, TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>)>?, EmptyView> and conformance <> Section<A, B, C>();
  v157 = v32;
  v38 = v138;
  View.headerProminence(_:)();
  v39 = v25;
  v40 = v159;
  (*(v23 + 8))(v39, v37);
  (*(v139 + 8))(v29, v38);
  v41 = *(v158 + 8);
  v42 = Collaboration.Management.Model.isPending.getter();
  v44 = v155;
  v43 = v156;
  if ((v42 & 1) == 0)
  {
    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!*(v161 + 16))
  {

    v40 = v159;
    v44 = v155;
    v43 = v156;
LABEL_9:
    (*(v44 + 56))(v40, 1, 1, v43);
    v65 = v148;
    v66 = v154;
    goto LABEL_11;
  }

  v45 = v129;
  v46 = v117;
  v47 = v131;
  (*(v129 + 16))(v117, v161 + ((*(v45 + 80) + 32) & ~*(v45 + 80)), v131);

  (*(v45 + 32))(v127, v46, v47);
  __chkstk_darwin();
  v48 = v154;
  String.LocalizationValue.init(stringLiteral:)();
  v49 = v124;
  v50 = v126;
  (*(v124 + 16))(v153, v48, v126);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v51 = static NSBundle.module;
  static Locale.current.getter();
  v52 = String.init(localized:table:bundle:locale:comment:)();
  v54 = v53;
  (*(v49 + 8))(v48, v50);
  v161 = v52;
  v162 = v54;
  _sS2SSysWl_0();
  v161 = Text.init<A>(_:)();
  v162 = v55;
  LOBYTE(v163) = v56 & 1;
  v164 = v57;
  type metadata accessor for Collaboration.Management.View.CollaboratorRowView(0);
  lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Collaboration.Management.View.CollaboratorRowView and conformance Collaboration.Management.View.CollaboratorRowView, type metadata accessor for Collaboration.Management.View.CollaboratorRowView, &protocol conformance descriptor for Collaboration.Management.View.CollaboratorRowView);
  Section<>.init(header:content:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v140 = v41;
  if (v161 == 1)
  {
    __chkstk_darwin();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA0M0VyAA15ModifiedContentVyAQyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA010BorderlessmK0VQo__Qo_Md, &_s7SwiftUI4ViewPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA0M0VyAA15ModifiedContentVyAQyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA010BorderlessmK0VQo__Qo_MR);
    v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA010BorderlessgE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA010BorderlessgE0VQo_MR);
    v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMR);
    v60 = type metadata accessor for BorderlessButtonStyle();
    v61 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMR, &protocol conformance descriptor for Button<A>);
    v62 = lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type BorderlessButtonStyle and conformance BorderlessButtonStyle, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
    v161 = v59;
    v162 = v60;
    v163 = v61;
    v164 = v62;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v161 = v58;
    v162 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v64 = v116;
    Section<>.init(content:)();
    v70 = v118;
    v68 = v133;
    v69 = v119;
    (*(v118 + 32))(v133, v64, v119);
    v67 = 0;
  }

  else
  {
    v67 = 1;
    v68 = v133;
    v69 = v119;
    v70 = v118;
  }

  (*(v70 + 56))(v68, v67, 1, v69);
  __chkstk_darwin();
  closure #7 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(&v161);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay8MusicKit8PlaylistV0eF8InternalE12CollaboratorVGAD0E6ItemIDV0E4Core13CollaborationO0elB0E10ManagementO4ViewV0i3RowO033_BED032AFC26D7293E5DA491DDAECC514LLVGMd, &_s7SwiftUI7ForEachVySay8MusicKit8PlaylistV0eF8InternalE12CollaboratorVGAD0E6ItemIDV0E4Core13CollaborationO0elB0E10ManagementO4ViewV0i3RowO033_BED032AFC26D7293E5DA491DDAECC514LLVGMR);
  lazy protocol witness table accessor for type ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView> and conformance <> ForEach<A, B, C>();
  v71 = v134;
  Section<>.init(header:content:)();
  v72 = *(v130 + 16);
  v73 = v128;
  v74 = v132;
  v72(v128, v136, v132);
  v75 = v68;
  v76 = v120;
  outlined init with copy of TaskPriority?(v75, v120, &_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAA15ModifiedContentVyAUyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA010BorderlessoM0VQo__Qo_AEGSgMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAA15ModifiedContentVyAUyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA010BorderlessoM0VQo__Qo_AEGSgMR);
  v77 = v121;
  v78 = *(v121 + 16);
  v79 = v122;
  v78(v135, v71, v122);
  v80 = v123;
  v72(v123, v73, v74);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextV9MusicCore13CollaborationO0efB0E10ManagementO4ViewV015CollaboratorRowI033_BED032AFC26D7293E5DA491DDAECC514LLVAA05EmptyI0VG_ACyAraLPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAtAE11buttonStyleyQrqd__AA015PrimitiveButtonZ0Rd__lFQOyAA6ButtonVyAA15ModifiedContentVyA6_yAeA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA016BorderlessButtonZ0VQo__Qo_ARGSgACyAeA7ForEachVySay0E3Kit8PlaylistV0E11KitInternalE0J0VGA26_0E6ItemIDVAPGARGtMd, &_s7SwiftUI7SectionVyAA4TextV9MusicCore13CollaborationO0efB0E10ManagementO4ViewV015CollaboratorRowI033_BED032AFC26D7293E5DA491DDAECC514LLVAA05EmptyI0VG_ACyAraLPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAtAE11buttonStyleyQrqd__AA015PrimitiveButtonZ0Rd__lFQOyAA6ButtonVyAA15ModifiedContentVyA6_yAeA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA016BorderlessButtonZ0VQo__Qo_ARGSgACyAeA7ForEachVySay0E3Kit8PlaylistV0E11KitInternalE0J0VGA26_0E6ItemIDVAPGARGtMR);
  outlined init with copy of TaskPriority?(v76, v80 + *(v81 + 48), &_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAA15ModifiedContentVyAUyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA010BorderlessoM0VQo__Qo_AEGSgMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAA15ModifiedContentVyAUyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA010BorderlessoM0VQo__Qo_AEGSgMR);
  v82 = v135;
  v78((v80 + *(v81 + 64)), v135, v79);
  v83 = *(v77 + 8);
  v83(v134, v79);
  outlined destroy of TaskPriority?(v133, &_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAA15ModifiedContentVyAUyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA010BorderlessoM0VQo__Qo_AEGSgMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAA15ModifiedContentVyAUyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA010BorderlessoM0VQo__Qo_AEGSgMR);
  v84 = *(v130 + 8);
  v85 = v132;
  v84(v136, v132);
  v83(v82, v79);
  outlined destroy of TaskPriority?(v76, &_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAA15ModifiedContentVyAUyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA010BorderlessoM0VQo__Qo_AEGSgMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAA15ModifiedContentVyAUyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA010BorderlessoM0VQo__Qo_AEGSgMR);
  v84(v128, v85);
  v40 = v159;
  outlined init with take of URL?(v80, v159, &_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextV9MusicCore13CollaborationO0ghB0E10ManagementO0D0V015CollaboratorRowD033_BED032AFC26D7293E5DA491DDAECC514LLVAA05EmptyD0VG_AEyAtaNPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAvAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAA15ModifiedContentVyA8_yAgA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA21BorderlessButtonStyleVQo__Qo_ATGSgAEyAgA7ForEachVySay0G3Kit8PlaylistV0G11KitInternalE0K0VGA28_0G6ItemIDVARGATGtGMd, &_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextV9MusicCore13CollaborationO0ghB0E10ManagementO0D0V015CollaboratorRowD033_BED032AFC26D7293E5DA491DDAECC514LLVAA05EmptyD0VG_AEyAtaNPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAvAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAA15ModifiedContentVyA8_yAgA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA21BorderlessButtonStyleVQo__Qo_ATGSgAEyAgA7ForEachVySay0G3Kit8PlaylistV0G11KitInternalE0K0VGA28_0G6ItemIDVARGATGtGMR);
  (*(v155 + 56))(v40, 0, 1, v156);
  (*(v129 + 8))(v127, v131);
  v66 = v154;
  v65 = v148;
LABEL_11:
  v86 = v153;
  swift_getKeyPath();
  swift_getKeyPath();
  v87 = v144;
  static Published.subscript.getter();

  v88 = Playlist.isOwner.getter();
  (*(v145 + 8))(v87, v146);
  if (v88 != 2 && (v88 & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , v161 == 1))
  {
    __chkstk_darwin();
    String.LocalizationValue.init(stringLiteral:)();
    v89 = v124;
    v90 = v126;
    (*(v124 + 16))(v86, v66, v126);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v91 = static NSBundle.module;
    static Locale.current.getter();
    v92 = String.init(localized:table:bundle:locale:comment:)();
    v94 = v93;
    (*(v89 + 8))(v66, v90);
    v161 = v92;
    v162 = v94;
    _sS2SSysWl_0();
    v165 = Text.init<A>(_:)();
    v166 = v95;
    v167 = v96 & 1;
    v168 = v97;
    closure #10 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(&v161);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA6ToggleVyAA4TextVGGMd, &_s7SwiftUI6HStackVyAA6ToggleVyAA4TextVGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA4TextVAEGAEGMd, &_s7SwiftUI19_ConditionalContentVyACyAA4TextVAEGAEGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type HStack<Toggle<Text>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA6ToggleVyAA4TextVGGMd, &_s7SwiftUI6HStackVyAA6ToggleVyAA4TextVGGMR, &protocol conformance descriptor for HStack<A>);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<Text, Text>, Text> and conformance <> _ConditionalContent<A, B>();
    v98 = v115;
    Section<>.init(header:footer:content:)();
    v99 = v149;
    v100 = v98;
    v101 = v150;
    (*(v149 + 32))(v65, v100, v150);
    v102 = v101;
    v103 = 0;
  }

  else
  {
    v103 = 1;
    v102 = v150;
    v99 = v149;
  }

  (*(v99 + 56))(v65, v103, 1, v102);
  v104 = v142;
  v105 = *(v142 + 16);
  v106 = v141;
  v107 = v143;
  v105(v141, v157, v143);
  v108 = v147;
  outlined init with copy of TaskPriority?(v40, v147, &_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextV9MusicCore13CollaborationO0ghB0E10ManagementO0D0V015CollaboratorRowD033_BED032AFC26D7293E5DA491DDAECC514LLVAA05EmptyD0VG_AEyAtaNPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAvAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAA15ModifiedContentVyA8_yAgA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA21BorderlessButtonStyleVQo__Qo_ATGSgAEyAgA7ForEachVySay0G3Kit8PlaylistV0G11KitInternalE0K0VGA28_0G6ItemIDVARGATGtGSgMd, &_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextV9MusicCore13CollaborationO0ghB0E10ManagementO0D0V015CollaboratorRowD033_BED032AFC26D7293E5DA491DDAECC514LLVAA05EmptyD0VG_AEyAtaNPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAvAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAA15ModifiedContentVyA8_yAgA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA21BorderlessButtonStyleVQo__Qo_ATGSgAEyAgA7ForEachVySay0G3Kit8PlaylistV0G11KitInternalE0K0VGA28_0G6ItemIDVARGATGtGSgMR);
  v109 = v151;
  outlined init with copy of TaskPriority?(v65, v151, &_s7SwiftUI7SectionVyAA4TextVAA6HStackVyAA6ToggleVyAEGGAA19_ConditionalContentVyAMyA2EGAEGGSgMd, &_s7SwiftUI7SectionVyAA4TextVAA6HStackVyAA6ToggleVyAEGGAA19_ConditionalContentVyAMyA2EGAEGGSgMR);
  v110 = v152;
  v105(v152, v106, v107);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2( &_s7SwiftUI4ViewPAAE16headerProminenceyQrAA0E0OFQOyAA7SectionVyAcAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA15ModifiedContentVyAA6VStackVyAA05TupleC0VyARyARyARyARy010_MusicKit_aB012ArtworkImageV01_tu9Internal_aB0E18artworkPlaceholderyQrx0tU00V0VSg_So6CGSizeVAA5ColorVtcAaBRzlFQOy_AA012_ConditionalQ0VyARyARyAY0t4CoreB0E0Z0OABVAA26_PreferenceWritingModifierVyA10_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA22_GGQo_A21_GA10_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA10_06BorderC8ModifierA30_LLVGAA13_ShadowEffectVG_AA4TextVAVyARyARyAA6HStackVyAVyAcAE5sheetAjkLQrAO_APqd__yctAaBRd__lFQOyARy0T4Core13CollaborationOA10_E10ManagementOABV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A48_08ActivityC10ControllerA51_LLVSgQo__ARyA58_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ARyARyARyARyARyARyARyAA5GroupVyA9_yA42_yAVyAA08ProgressC0VyAA05EmptyC0VA80_G_A40_tGGARyARyA40_AA30_EnvironmentKeyWritingModifierVyA7_SgGGA85_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA85_ySiSgGGA70_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA85_yAA4FontVSgGGA73_GA73_GAA6SpacerVtGSgA42_yA117_GtGGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGG_ARyARyA48_06QRCodeC0A51_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA10_15ClearBackgroundA51_LLVGGSgQo_AVyAcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyARyARyARyA42_yAVyARyARyARyARyAA0W0VA112_GA21_GA85_yAA19SymbolRenderingModeVSgGGA87_GSg_ATyAVyA40__A40_SgtGGAVyA117__AcAE5alertAjLQrAO_AA5AlertVyXEtFQOyAcAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyARyARyARyARyARyAcAE10fontWeightyQrA110_6WeightVSgFQOyARyAAA53_VyA40_GA112_G_Qo_A87_GA21_GA73_GAA24_BackgroundStyleModifierVyA7_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA165_GQo__Qo_tGSgtGGA73_GA127_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA0_8PlaylistV0tuX0E12CollaboratorVGA0_0T6ItemIDVA49_015CollaboratorRowC0A51_LLVGtGSgA80_G_Qo__AVyAHyA40_A215_A80_G_AHyA80_AcAEA160_AjLQrAO_A162_yXEtFQOyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyA172_yARyARyA40_A97_GA87_GG_AA21BorderlessButtonStyleVQo__Qo_A80_GSgAHyA40_A216_A80_GtGSgAHyA40_A42_yAA6ToggleVyA40_GGA9_yA9_yA40_A40_GA40_GGSgtMd,  &_s7SwiftUI4ViewPAAE16headerProminenceyQrAA0E0OFQOyAA7SectionVyAcAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA15ModifiedContentVyAA6VStackVyAA05TupleC0VyARyARyARyARy010_MusicKit_aB012ArtworkImageV01_tu9Internal_aB0E18artworkPlaceholderyQrx0tU00V0VSg_So6CGSizeVAA5ColorVtcAaBRzlFQOy_AA012_ConditionalQ0VyARyARyAY0t4CoreB0E0Z0OABVAA26_PreferenceWritingModifierVyA10_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA22_GGQo_A21_GA10_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA10_06BorderC8ModifierA30_LLVGAA13_ShadowEffectVG_AA4TextVAVyARyARyAA6HStackVyAVyAcAE5sheetAjkLQrAO_APqd__yctAaBRd__lFQOyARy0T4Core13CollaborationOA10_E10ManagementOABV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A48_08ActivityC10ControllerA51_LLVSgQo__ARyA58_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ARyARyARyARyARyARyARyAA5GroupVyA9_yA42_yAVyAA08ProgressC0VyAA05EmptyC0VA80_G_A40_tGGARyARyA40_AA30_EnvironmentKeyWritingModifierVyA7_SgGGA85_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA85_ySiSgGGA70_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA85_yAA4FontVSgGGA73_GA73_GAA6SpacerVtGSgA42_yA117_GtGGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGG_ARyARyA48_06QRCodeC0A51_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA10_15ClearBackgroundA51_LLVGGSgQo_AVyAcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyARyARyARyA42_yAVyARyARyARyARyAA0W0VA112_GA21_GA85_yAA19SymbolRenderingModeVSgGGA87_GSg_ATyAVyA40__A40_SgtGGAVyA117__AcAE5alertAjLQrAO_AA5AlertVyXEtFQOyAcAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyARyARyARyARyARyAcAE10fontWeightyQrA110_6WeightVSgFQOyARyAAA53_VyA40_GA112_G_Qo_A87_GA21_GA73_GAA24_BackgroundStyleModifierVyA7_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA165_GQo__Qo_tGSgtGGA73_GA127_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA0_8PlaylistV0tuX0E12CollaboratorVGA0_0T6ItemIDVA49_015CollaboratorRowC0A51_LLVGtGSgA80_G_Qo__AVyAHyA40_A215_A80_G_AHyA80_AcAEA160_AjLQrAO_A162_yXEtFQOyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyA172_yARyARyA40_A97_GA87_GG_AA21BorderlessButtonStyleVQo__Qo_A80_GSgAHyA40_A216_A80_GtGSgAHyA40_A42_yAA6ToggleVyA40_GGA9_yA9_yA40_A40_GA40_GGSgtMR);
  outlined init with copy of TaskPriority?(v108, &v110[*(v111 + 48)], &_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextV9MusicCore13CollaborationO0ghB0E10ManagementO0D0V015CollaboratorRowD033_BED032AFC26D7293E5DA491DDAECC514LLVAA05EmptyD0VG_AEyAtaNPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAvAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAA15ModifiedContentVyA8_yAgA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA21BorderlessButtonStyleVQo__Qo_ATGSgAEyAgA7ForEachVySay0G3Kit8PlaylistV0G11KitInternalE0K0VGA28_0G6ItemIDVARGATGtGSgMd, &_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextV9MusicCore13CollaborationO0ghB0E10ManagementO0D0V015CollaboratorRowD033_BED032AFC26D7293E5DA491DDAECC514LLVAA05EmptyD0VG_AEyAtaNPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAvAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAA15ModifiedContentVyA8_yAgA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA21BorderlessButtonStyleVQo__Qo_ATGSgAEyAgA7ForEachVySay0G3Kit8PlaylistV0G11KitInternalE0K0VGA28_0G6ItemIDVARGATGtGSgMR);
  outlined init with copy of TaskPriority?(v109, &v110[*(v111 + 64)], &_s7SwiftUI7SectionVyAA4TextVAA6HStackVyAA6ToggleVyAEGGAA19_ConditionalContentVyAMyA2EGAEGGSgMd, &_s7SwiftUI7SectionVyAA4TextVAA6HStackVyAA6ToggleVyAEGGAA19_ConditionalContentVyAMyA2EGAEGGSgMR);
  outlined destroy of TaskPriority?(v65, &_s7SwiftUI7SectionVyAA4TextVAA6HStackVyAA6ToggleVyAEGGAA19_ConditionalContentVyAMyA2EGAEGGSgMd, &_s7SwiftUI7SectionVyAA4TextVAA6HStackVyAA6ToggleVyAEGGAA19_ConditionalContentVyAMyA2EGAEGGSgMR);
  outlined destroy of TaskPriority?(v159, &_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextV9MusicCore13CollaborationO0ghB0E10ManagementO0D0V015CollaboratorRowD033_BED032AFC26D7293E5DA491DDAECC514LLVAA05EmptyD0VG_AEyAtaNPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAvAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAA15ModifiedContentVyA8_yAgA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA21BorderlessButtonStyleVQo__Qo_ATGSgAEyAgA7ForEachVySay0G3Kit8PlaylistV0G11KitInternalE0K0VGA28_0G6ItemIDVARGATGtGSgMd, &_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextV9MusicCore13CollaborationO0ghB0E10ManagementO0D0V015CollaboratorRowD033_BED032AFC26D7293E5DA491DDAECC514LLVAA05EmptyD0VG_AEyAtaNPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAvAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAA15ModifiedContentVyA8_yAgA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA21BorderlessButtonStyleVQo__Qo_ATGSgAEyAgA7ForEachVySay0G3Kit8PlaylistV0G11KitInternalE0K0VGA28_0G6ItemIDVARGATGtGSgMR);
  v112 = *(v104 + 8);
  v112(v157, v107);
  outlined destroy of TaskPriority?(v109, &_s7SwiftUI7SectionVyAA4TextVAA6HStackVyAA6ToggleVyAEGGAA19_ConditionalContentVyAMyA2EGAEGGSgMd, &_s7SwiftUI7SectionVyAA4TextVAA6HStackVyAA6ToggleVyAEGGAA19_ConditionalContentVyAMyA2EGAEGGSgMR);
  outlined destroy of TaskPriority?(v108, &_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextV9MusicCore13CollaborationO0ghB0E10ManagementO0D0V015CollaboratorRowD033_BED032AFC26D7293E5DA491DDAECC514LLVAA05EmptyD0VG_AEyAtaNPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAvAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAA15ModifiedContentVyA8_yAgA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA21BorderlessButtonStyleVQo__Qo_ATGSgAEyAgA7ForEachVySay0G3Kit8PlaylistV0G11KitInternalE0K0VGA28_0G6ItemIDVARGATGtGSgMd, &_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextV9MusicCore13CollaborationO0ghB0E10ManagementO0D0V015CollaboratorRowD033_BED032AFC26D7293E5DA491DDAECC514LLVAA05EmptyD0VG_AEyAtaNPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAvAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAA15ModifiedContentVyA8_yAgA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA21BorderlessButtonStyleVQo__Qo_ATGSgAEyAgA7ForEachVySay0G3Kit8PlaylistV0G11KitInternalE0K0VGA28_0G6ItemIDVARGATGtGSgMR);
  return (v112)(v106, v107);
}

uint64_t closure #1 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAKyAKyAA6HStackVyACyAKyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAQyAA19SymbolRenderingModeVSgGGAQyAA5ColorVSgGGSg_AA6VStackVyACyAA4TextV_A12_SgtGGACyAA6SpacerV_AeAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAeAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAKyAKyAKyAKyAKyAeAE10fontWeightyQrAS6WeightVSgFQOyAKyAA6ButtonVyA12_GAUG_Qo_A6_GAXGAA08_PaddingU0VGAA016_BackgroundStyleR0VyA4_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA28_GQo__Qo_tGSgtGGA43_GAA06_TraitqR0VyAA018ListRowInsetsTraitP0VGGAA010_AlignmentqR0VG_Qo__AA7ForEachVySay8MusicKit8PlaylistV16MusicKitInternalE12CollaboratorVGA77_11MusicItemIDV9MusicCore13CollaborationO09MusicCoreB0E10ManagementOADV015CollaboratorRowD033_BED032AFC26D7293E5DA491DDAECC514LLVGtGMd, &_s7SwiftUI9TupleViewVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAKyAKyAA6HStackVyACyAKyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAQyAA19SymbolRenderingModeVSgGGAQyAA5ColorVSgGGSg_AA6VStackVyACyAA4TextV_A12_SgtGGACyAA6SpacerV_AeAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAeAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAKyAKyAKyAKyAKyAeAE10fontWeightyQrAS6WeightVSgFQOyAKyAA6ButtonVyA12_GAUG_Qo_A6_GAXGAA08_PaddingU0VGAA016_BackgroundStyleR0VyA4_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA28_GQo__Qo_tGSgtGGA43_GAA06_TraitqR0VyAA018ListRowInsetsTraitP0VGGAA010_AlignmentqR0VG_Qo__AA7ForEachVySay8MusicKit8PlaylistV16MusicKitInternalE12CollaboratorVGA77_11MusicItemIDV9MusicCore13CollaborationO09MusicCoreB0E10ManagementOADV015CollaboratorRowD033_BED032AFC26D7293E5DA491DDAECC514LLVGtGMR);
  v69 = *(v3 - 8);
  v70 = v3;
  __chkstk_darwin();
  v68 = &v58 - v4;
  v59 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v5 = *(v59 + 64);
  __chkstk_darwin();
  v60 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay8MusicKit8PlaylistV0eF8InternalE12CollaboratorVGAD0E6ItemIDV0E4Core13CollaborationO0elB0E10ManagementO4ViewV0i3RowO033_BED032AFC26D7293E5DA491DDAECC514LLVGMd, &_s7SwiftUI7ForEachVySay8MusicKit8PlaylistV0eF8InternalE12CollaboratorVGAD0E6ItemIDV0E4Core13CollaborationO0elB0E10ManagementO4ViewV0i3RowO033_BED032AFC26D7293E5DA491DDAECC514LLVGMR);
  v64 = *(v6 - 8);
  v65 = v6;
  __chkstk_darwin();
  v63 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v67 = &v58 - v8;
  v9 = type metadata accessor for AccessibilityChildBehavior();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAKyAA19SymbolRenderingModeVSgGGAKyAA5ColorVSgGGSg_AA6VStackVyAGyAA4TextV_A6_SgtGGAGyAA6SpacerV_AA0G0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyA13_AAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyACyACyACyACyACyA13_AAE10fontWeightyQrAM6WeightVSgFQOyACyAA6ButtonVyA6_GAOG_Qo_A0_GARGAA08_PaddingO0VGAA016_BackgroundStyleL0VyAZGGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA24_GQo__Qo_tGSgtGGA39_GAA06_TraitkL0VyAA018ListRowInsetsTraitJ0VGGAA010_AlignmentkL0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAKyAA19SymbolRenderingModeVSgGGAKyAA5ColorVSgGGSg_AA6VStackVyAGyAA4TextV_A6_SgtGGAGyAA6SpacerV_AA0G0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyA13_AAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyACyACyACyACyACyA13_AAE10fontWeightyQrAM6WeightVSgFQOyACyAA6ButtonVyA6_GAOG_Qo_A0_GARGAA08_PaddingO0VGAA016_BackgroundStyleL0VyAZGGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA24_GQo__Qo_tGSgtGGA39_GAA06_TraitkL0VyAA018ListRowInsetsTraitJ0VGGAA010_AlignmentkL0VGMR);
  __chkstk_darwin();
  v15 = &v58 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAA6HStackVyAA05TupleC0VyAIyAIyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAQyAA19SymbolRenderingModeVSgGGAQyAA5ColorVSgGGSg_AA6VStackVyAMyAA4TextV_A12_SgtGGAMyAA6SpacerV_AcAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAcAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAIyAIyAIyAIyAIyAcAE10fontWeightyQrAS6WeightVSgFQOyAIyAA6ButtonVyA12_GAUG_Qo_A6_GAXGAA08_PaddingU0VGAA016_BackgroundStyleR0VyA4_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA28_GQo__Qo_tGSgtGGA43_GAA06_TraitqR0VyAA018ListRowInsetsTraitP0VGGAA010_AlignmentqR0VG_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAA6HStackVyAA05TupleC0VyAIyAIyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAQyAA19SymbolRenderingModeVSgGGAQyAA5ColorVSgGGSg_AA6VStackVyAMyAA4TextV_A12_SgtGGAMyAA6SpacerV_AcAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAcAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAIyAIyAIyAIyAIyAcAE10fontWeightyQrAS6WeightVSgFQOyAIyAA6ButtonVyA12_GAUG_Qo_A6_GAXGAA08_PaddingU0VGAA016_BackgroundStyleR0VyA4_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA28_GQo__Qo_tGSgtGGA43_GAA06_TraitqR0VyAA018ListRowInsetsTraitP0VGGAA010_AlignmentqR0VG_Qo_MR);
  v61 = *(v16 - 8);
  v62 = v16;
  __chkstk_darwin();
  v66 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v58 - v18;
  v20 = a1;
  if (Collaboration.Management.Model.isPending.getter())
  {
    v21 = v70;
    v22 = *(v69 + 56);
    v23 = v71;

    return v22(v23, 1, 1, v21);
  }

  else
  {
    *v15 = static VerticalAlignment.center.getter();
    *(v15 + 1) = 0x4028000000000000;
    v15[16] = 0;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA06_FrameG0VGAOyAA19SymbolRenderingModeVSgGGAOyAA5ColorVSgGGSg_AA6VStackVyAIyAA4TextV_A10_SgtGGAIyAA6SpacerV_AA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyA17_AAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAKyAKyAKyAKyAKyA17_AAE10fontWeightyQrAQ6WeightVSgFQOyAKyAA6ButtonVyA10_GASG_Qo_A4_GAVGAA08_PaddingG0VGAA016_BackgroundStyleO0VyA2_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA28_GQo__Qo_tGSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA06_FrameG0VGAOyAA19SymbolRenderingModeVSgGGAOyAA5ColorVSgGGSg_AA6VStackVyAIyAA4TextV_A10_SgtGGAIyAA6SpacerV_AA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyA17_AAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAKyAKyAKyAKyAKyA17_AAE10fontWeightyQrAQ6WeightVSgFQOyAKyAA6ButtonVyA10_GASG_Qo_A4_GAVGAA08_PaddingG0VGAA016_BackgroundStyleO0VyA2_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA28_GQo__Qo_tGSgtGGMR);
    closure #1 in closure #1 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(a1, &v15[*(v25 + 44)]);
    v26 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v35 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAKyAA19SymbolRenderingModeVSgGGAKyAA5ColorVSgGGSg_AA6VStackVyAGyAA4TextV_A6_SgtGGAGyAA6SpacerV_AA0G0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyA13_AAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyACyACyACyACyACyA13_AAE10fontWeightyQrAM6WeightVSgFQOyACyAA6ButtonVyA6_GAOG_Qo_A0_GARGAA08_PaddingO0VGAA016_BackgroundStyleL0VyAZGGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA24_GQo__Qo_tGSgtGGA39_GMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAKyAA19SymbolRenderingModeVSgGGAKyAA5ColorVSgGGSg_AA6VStackVyAGyAA4TextV_A6_SgtGGAGyAA6SpacerV_AA0G0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyA13_AAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyACyACyACyACyACyA13_AAE10fontWeightyQrAM6WeightVSgFQOyACyAA6ButtonVyA6_GAOG_Qo_A0_GARGAA08_PaddingO0VGAA016_BackgroundStyleL0VyAZGGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA24_GQo__Qo_tGSgtGGA39_GMR) + 36)];
    *v35 = v26;
    *(v35 + 1) = v28;
    *(v35 + 2) = v30;
    *(v35 + 3) = v32;
    *(v35 + 4) = v34;
    v35[40] = 0;
    v36 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAKyAA19SymbolRenderingModeVSgGGAKyAA5ColorVSgGGSg_AA6VStackVyAGyAA4TextV_A6_SgtGGAGyAA6SpacerV_AA0G0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyA13_AAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyACyACyACyACyACyA13_AAE10fontWeightyQrAM6WeightVSgFQOyACyAA6ButtonVyA6_GAOG_Qo_A0_GARGAA08_PaddingO0VGAA016_BackgroundStyleL0VyAZGGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA24_GQo__Qo_tGSgtGGA39_GAA06_TraitkL0VyAA018ListRowInsetsTraitJ0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAKyAA19SymbolRenderingModeVSgGGAKyAA5ColorVSgGGSg_AA6VStackVyAGyAA4TextV_A6_SgtGGAGyAA6SpacerV_AA0G0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyA13_AAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyACyACyACyACyACyA13_AAE10fontWeightyQrAM6WeightVSgFQOyACyAA6ButtonVyA6_GAOG_Qo_A0_GARGAA08_PaddingO0VGAA016_BackgroundStyleL0VyAZGGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA24_GQo__Qo_tGSgtGGA39_GAA06_TraitkL0VyAA018ListRowInsetsTraitJ0VGGMR) + 36)];
    v36[32] = 0;
    *v36 = 0u;
    *(v36 + 1) = 0u;
    v37 = static HorizontalAlignment.listRowSeparatorLeading.getter();
    v38 = &v15[*(v13 + 36)];
    *v38 = v37;
    v38[1] = closure #2 in closure #1 in closure #1 in closure #1 in Collaboration.Management.View.body.getter;
    v38[2] = 0;
    static AccessibilityChildBehavior.combine.getter();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>?, VStack<TupleView<(Text, Text?)>>, TupleView<(Spacer, <<opaque return type of View.alert(isPresented:content:)>>.0)>?)>>, _PaddingLayout>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>();
    v58 = v19;
    View.accessibilityElement(children:)();
    (*(v10 + 8))(v12, v9);
    outlined destroy of TaskPriority?(v15, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAKyAA19SymbolRenderingModeVSgGGAKyAA5ColorVSgGGSg_AA6VStackVyAGyAA4TextV_A6_SgtGGAGyAA6SpacerV_AA0G0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyA13_AAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyACyACyACyACyACyA13_AAE10fontWeightyQrAM6WeightVSgFQOyACyAA6ButtonVyA6_GAOG_Qo_A0_GARGAA08_PaddingO0VGAA016_BackgroundStyleL0VyAZGGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA24_GQo__Qo_tGSgtGGA39_GAA06_TraitkL0VyAA018ListRowInsetsTraitJ0VGGAA010_AlignmentkL0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAKyAA19SymbolRenderingModeVSgGGAKyAA5ColorVSgGGSg_AA6VStackVyAGyAA4TextV_A6_SgtGGAGyAA6SpacerV_AA0G0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyA13_AAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyACyACyACyACyACyA13_AAE10fontWeightyQrAM6WeightVSgFQOyACyAA6ButtonVyA6_GAOG_Qo_A0_GARGAA08_PaddingO0VGAA016_BackgroundStyleL0VyAZGGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA24_GQo__Qo_tGSgtGGA39_GAA06_TraitkL0VyAA018ListRowInsetsTraitJ0VGGAA010_AlignmentkL0VGMR);
    v72 = Collaboration.Management.Model.collaborators.getter();
    v39 = v20;
    v40 = v60;
    outlined init with copy of Collaboration.Management.View(v39, v60, type metadata accessor for Collaboration.Management.View);
    v41 = (*(v59 + 80) + 16) & ~*(v59 + 80);
    v42 = swift_allocObject();
    outlined init with take of Collaboration.Management.View(v40, v42 + v41, type metadata accessor for Collaboration.Management.View);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8MusicKit8PlaylistV0aB8InternalE12CollaboratorVGMd, &_sSay8MusicKit8PlaylistV0aB8InternalE12CollaboratorVGMR);
    type metadata accessor for Collaboration.Management.View.CollaboratorRowView(0);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type [Playlist.Collaborator] and conformance [A], &_sSay8MusicKit8PlaylistV0aB8InternalE12CollaboratorVGMd, &_sSay8MusicKit8PlaylistV0aB8InternalE12CollaboratorVGMR, &protocol conformance descriptor for [A]);
    lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Collaboration.Management.View.CollaboratorRowView and conformance Collaboration.Management.View.CollaboratorRowView, type metadata accessor for Collaboration.Management.View.CollaboratorRowView, &protocol conformance descriptor for Collaboration.Management.View.CollaboratorRowView);
    lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Playlist.Collaborator and conformance Playlist.Collaborator, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
    v43 = v67;
    ForEach<>.init(_:content:)();
    v45 = v61;
    v44 = v62;
    v46 = *(v61 + 16);
    v47 = v66;
    v46(v66, v58, v62);
    v49 = v63;
    v48 = v64;
    v50 = *(v64 + 16);
    v51 = v43;
    v52 = v65;
    v50(v63, v51, v65);
    v46(v68, v47, v44);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAA6HStackVyAA05TupleC0VyAIyAIyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAQyAA19SymbolRenderingModeVSgGGAQyAA5ColorVSgGGSg_AA6VStackVyAMyAA4TextV_A12_SgtGGAMyAA6SpacerV_AcAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAcAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAIyAIyAIyAIyAIyAcAE10fontWeightyQrAS6WeightVSgFQOyAIyAA6ButtonVyA12_GAUG_Qo_A6_GAXGAA08_PaddingU0VGAA016_BackgroundStyleR0VyA4_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA28_GQo__Qo_tGSgtGGA43_GAA06_TraitqR0VyAA018ListRowInsetsTraitP0VGGAA010_AlignmentqR0VG_Qo__AA7ForEachVySay8MusicKit8PlaylistV16MusicKitInternalE12CollaboratorVGA77_11MusicItemIDV9MusicCore13CollaborationO09MusicCoreB0E10ManagementOABV015CollaboratorRowC033_BED032AFC26D7293E5DA491DDAECC514LLVGtMd, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAA6HStackVyAA05TupleC0VyAIyAIyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAQyAA19SymbolRenderingModeVSgGGAQyAA5ColorVSgGGSg_AA6VStackVyAMyAA4TextV_A12_SgtGGAMyAA6SpacerV_AcAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAcAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAIyAIyAIyAIyAIyAcAE10fontWeightyQrAS6WeightVSgFQOyAIyAA6ButtonVyA12_GAUG_Qo_A6_GAXGAA08_PaddingU0VGAA016_BackgroundStyleR0VyA4_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA28_GQo__Qo_tGSgtGGA43_GAA06_TraitqR0VyAA018ListRowInsetsTraitP0VGGAA010_AlignmentqR0VG_Qo__AA7ForEachVySay8MusicKit8PlaylistV16MusicKitInternalE12CollaboratorVGA77_11MusicItemIDV9MusicCore13CollaborationO09MusicCoreB0E10ManagementOABV015CollaboratorRowC033_BED032AFC26D7293E5DA491DDAECC514LLVGtMR);
    v54 = v68;
    v50(&v68[*(v53 + 48)], v49, v52);
    v55 = *(v48 + 8);
    v55(v67, v52);
    v56 = *(v45 + 8);
    v56(v58, v44);
    v55(v49, v52);
    v56(v66, v44);
    v57 = v71;
    outlined init with take of URL?(v54, v71, &_s7SwiftUI9TupleViewVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAKyAKyAA6HStackVyACyAKyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAQyAA19SymbolRenderingModeVSgGGAQyAA5ColorVSgGGSg_AA6VStackVyACyAA4TextV_A12_SgtGGACyAA6SpacerV_AeAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAeAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAKyAKyAKyAKyAKyAeAE10fontWeightyQrAS6WeightVSgFQOyAKyAA6ButtonVyA12_GAUG_Qo_A6_GAXGAA08_PaddingU0VGAA016_BackgroundStyleR0VyA4_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA28_GQo__Qo_tGSgtGGA43_GAA06_TraitqR0VyAA018ListRowInsetsTraitP0VGGAA010_AlignmentqR0VG_Qo__AA7ForEachVySay8MusicKit8PlaylistV16MusicKitInternalE12CollaboratorVGA77_11MusicItemIDV9MusicCore13CollaborationO09MusicCoreB0E10ManagementOADV015CollaboratorRowD033_BED032AFC26D7293E5DA491DDAECC514LLVGtGMd, &_s7SwiftUI9TupleViewVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAKyAKyAA6HStackVyACyAKyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAQyAA19SymbolRenderingModeVSgGGAQyAA5ColorVSgGGSg_AA6VStackVyACyAA4TextV_A12_SgtGGACyAA6SpacerV_AeAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAeAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAKyAKyAKyAKyAKyAeAE10fontWeightyQrAS6WeightVSgFQOyAKyAA6ButtonVyA12_GAUG_Qo_A6_GAXGAA08_PaddingU0VGAA016_BackgroundStyleR0VyA4_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA28_GQo__Qo_tGSgtGGA43_GAA06_TraitqR0VyAA018ListRowInsetsTraitP0VGGAA010_AlignmentqR0VG_Qo__AA7ForEachVySay8MusicKit8PlaylistV16MusicKitInternalE12CollaboratorVGA77_11MusicItemIDV9MusicCore13CollaborationO09MusicCoreB0E10ManagementOADV015CollaboratorRowD033_BED032AFC26D7293E5DA491DDAECC514LLVGtGMR);
    return (*(v69 + 56))(v57, 0, 1, v70);
  }
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v160 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6SpacerV_AA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicmN0O5BoundRtd__lFQOyAA15ModifiedContentVyAVyAVyAVyAVyAgAE10fontWeightyQrAA4FontV0T0VSgFQOyAVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_A7_yAA5ColorVSgGGAA12_FrameLayoutVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyA13_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyARGQo__Qo_tGMd, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicmN0O5BoundRtd__lFQOyAA15ModifiedContentVyAVyAVyAVyAVyAgAE10fontWeightyQrAA4FontV0T0VSgFQOyAVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_A7_yAA5ColorVSgGGAA12_FrameLayoutVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyA13_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyARGQo__Qo_tGMR);
  v158 = *(v3 - 8);
  v159 = v3;
  __chkstk_darwin();
  v153 = (&v129 - v4);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMR);
  __chkstk_darwin();
  v144 = &v129 - v5;
  v6 = type metadata accessor for Collaboration.Management.View(0);
  v137 = *(v6 - 8);
  __chkstk_darwin();
  v138 = v7;
  v139 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
  __chkstk_darwin();
  v140 = &v129 - v8;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingQ0VGAA016_BackgroundStyleN0VyAXGGAA11_ClipEffectVyAA7CapsuleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingQ0VGAA016_BackgroundStyleN0VyAXGGAA11_ClipEffectVyAA7CapsuleVGGMR);
  __chkstk_darwin();
  v142 = &v129 - v9;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiceF0O5BoundRtd__lFQOyAA15ModifiedContentVyAJyAJyAJyAJyAcAE10fontWeightyQrAA4FontV0L0VSgFQOyAJyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAMSgGG_Qo_AWyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingV0VGAA016_BackgroundStyleS0VyA1_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyAFGQo_Md, &_s7SwiftUI4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiceF0O5BoundRtd__lFQOyAA15ModifiedContentVyAJyAJyAJyAJyAcAE10fontWeightyQrAA4FontV0L0VSgFQOyAJyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAMSgGG_Qo_AWyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingV0VGAA016_BackgroundStyleS0VyA1_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyAFGQo_MR);
  v147 = *(v149 - 8);
  __chkstk_darwin();
  v143 = &v129 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAcAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamickL0O5BoundRtd__lFQOyAA15ModifiedContentVyARyARyARyARyAcAE10fontWeightyQrAA4FontV0R0VSgFQOyARyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAUSgGG_Qo_A3_yAA5ColorVSgGGAA12_FrameLayoutVGAA14_PaddingLayoutVGAA016_BackgroundStyleY0VyA9_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyANGQo__Qo_Md, &_s7SwiftUI4ViewPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAcAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamickL0O5BoundRtd__lFQOyAA15ModifiedContentVyARyARyARyARyAcAE10fontWeightyQrAA4FontV0R0VSgFQOyARyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAUSgGG_Qo_A3_yAA5ColorVSgGGAA12_FrameLayoutVGAA14_PaddingLayoutVGAA016_BackgroundStyleY0VyA9_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyANGQo__Qo_MR);
  v150 = *(v11 - 8);
  v151 = v11;
  __chkstk_darwin();
  v148 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v146 = &v129 - v13;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v133 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for String.LocalizationValue();
  v134 = *(v15 - 8);
  v135 = v15;
  __chkstk_darwin();
  v17 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v132 = &v129 - v18;
  v19 = type metadata accessor for Playlist();
  v130 = *(v19 - 8);
  v131 = v19;
  __chkstk_darwin();
  v129 = &v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6SpacerV_AA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicmN0O5BoundRtd__lFQOyAA15ModifiedContentVyAVyAVyAVyAVyAgAE10fontWeightyQrAA4FontV0T0VSgFQOyAVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_A7_yAA5ColorVSgGGAA12_FrameLayoutVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyA13_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyARGQo__Qo_tGSgMd, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicmN0O5BoundRtd__lFQOyAA15ModifiedContentVyAVyAVyAVyAVyAgAE10fontWeightyQrAA4FontV0T0VSgFQOyAVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_A7_yAA5ColorVSgGGAA12_FrameLayoutVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyA13_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyARGQo__Qo_tGSgMR);
  __chkstk_darwin();
  v157 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v161 = &v129 - v22;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAGyAA19SymbolRenderingModeVSgGGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAGyAA19SymbolRenderingModeVSgGGAGyAA5ColorVSgGGMR);
  v23 = *(v155 - 8);
  __chkstk_darwin();
  v25 = &v129 - v24;
  v26 = type metadata accessor for DynamicTypeSize();
  v27 = *(v26 - 8);
  __chkstk_darwin();
  v29 = &v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v31 = &v129 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAGyAA19SymbolRenderingModeVSgGGAGyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAGyAA19SymbolRenderingModeVSgGGAGyAA5ColorVSgGGSgMR);
  __chkstk_darwin();
  v156 = &v129 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v162 = a1;
  v163 = &v129 - v33;
  v145 = v6;
  _s7SwiftUI11EnvironmentV12wrappedValuexvgAA15DynamicTypeSizeO_Tg5_0(v31);
  if (one-time initialization token for maxDynamicSize != -1)
  {
    swift_once();
  }

  v34 = __swift_project_value_buffer(v26, static Collaboration.Management.View.Specs.maxDynamicSize);
  (*(v27 + 16))(v29, v34, v26);
  lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v35 = dispatch thunk of static Comparable.< infix(_:_:)();
  v36 = *(v27 + 8);
  v36(v29, v26);
  v36(v31, v26);
  if (v35)
  {
    (*(v23 + 56))(v163, 1, 1, v155);
    v37 = v17;
  }

  else
  {
    v38 = Image.init(systemName:)();
    v37 = v17;
    if (one-time initialization token for collaborationGlyphFont != -1)
    {
      swift_once();
    }

    v39 = static Collaboration.Management.View.Specs.collaborationGlyphFont;
    KeyPath = swift_getKeyPath();
    v41 = one-time initialization token for avatarLength;

    if (v41 != -1)
    {
      swift_once();
    }

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v42 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAGyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAGyAA19SymbolRenderingModeVSgGGMR) + 36)];
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMR) + 28);
    static SymbolRenderingMode.hierarchical.getter();
    v44 = type metadata accessor for SymbolRenderingMode();
    (*(*(v44 - 8) + 56))(v42 + v43, 0, 1, v44);
    *v42 = swift_getKeyPath();
    *v25 = v38;
    *(v25 + 1) = KeyPath;
    *(v25 + 2) = v39;
    *(v25 + 56) = *&v168[16];
    v45 = v167;
    *(v25 + 40) = *v168;
    *(v25 + 24) = v45;
    if (one-time initialization token for keyColor != -1)
    {
      swift_once();
    }

    v46 = static Collaboration.Management.View.Specs.keyColor;
    v47 = swift_getKeyPath();
    v48 = v155;
    v49 = &v25[*(v155 + 36)];
    *v49 = v47;
    v49[1] = v46;
    v50 = v163;
    outlined init with take of URL?(v25, v163, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAGyAA19SymbolRenderingModeVSgGGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAGyAA19SymbolRenderingModeVSgGGAGyAA5ColorVSgGGMR);
    (*(v23 + 56))(v50, 0, 1, v48);
  }

  v155 = static HorizontalAlignment.leading.getter();
  v51 = 1;
  LOBYTE(v167) = 1;
  v52 = v162;
  closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(v162, v171);
  *&v170[7] = v171[0];
  *&v170[23] = v171[1];
  *&v170[39] = v171[2];
  *&v170[55] = v171[3];
  v154 = v167;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v167 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v53 = v129;
    static Published.subscript.getter();

    v54 = Playlist.isOwner.getter();
    (*(v130 + 8))(v53, v131);
    if (v54 == 2 || (v54 & 1) == 0)
    {
      v55 = v132;
    }

    else
    {
      v55 = v132;
    }

    String.LocalizationValue.init(stringLiteral:)();
    v57 = v134;
    v56 = v135;
    (*(v134 + 16))(v37, v55, v135);
    v58 = v136;
    v59 = v142;
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v60 = static NSBundle.module;
    static Locale.current.getter();
    v61 = String.init(localized:table:bundle:locale:comment:)();
    v63 = v62;
    (*(v57 + 8))(v55, v56);
    v136 = v61;
    *&v167 = v61;
    *(&v167 + 1) = v63;
    v64 = v139;
    outlined init with copy of Collaboration.Management.View(v52, v139, type metadata accessor for Collaboration.Management.View);
    v65 = (*(v137 + 80) + 16) & ~*(v137 + 80);
    v66 = swift_allocObject();
    outlined init with take of Collaboration.Management.View(v64, v66 + v65, type metadata accessor for Collaboration.Management.View);
    _sS2SSysWl_0();

    v67 = v140;
    Button<>.init<A>(_:action:)();
    v68 = static Font.subheadline.getter();
    v69 = swift_getKeyPath();
    v70 = (v67 + *(v141 + 36));
    *v70 = v69;
    v70[1] = v68;
    static Font.Weight.semibold.getter();
    lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    View.fontWeight(_:)();
    outlined destroy of TaskPriority?(v67, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    v71 = static Color.white.getter();
    v72 = swift_getKeyPath();
    v73 = &v59[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARyAA5ColorVSgGGMR) + 36)];
    *v73 = v72;
    v73[1] = v71;
    if (one-time initialization token for controlLength != -1)
    {
      swift_once();
    }

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v74 = &v59[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARyAA5ColorVSgGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARyAA5ColorVSgGGAA12_FrameLayoutVGMR) + 36)];
    v75 = v171[5];
    *v74 = v171[4];
    *(v74 + 1) = v75;
    *(v74 + 2) = v171[6];
    v76 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v85 = &v59[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingQ0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingQ0VGMR) + 36)];
    *v85 = v76;
    *(v85 + 1) = v78;
    *(v85 + 2) = v80;
    *(v85 + 3) = v82;
    *(v85 + 4) = v84;
    v85[40] = 0;
    if (one-time initialization token for normal != -1)
    {
      swift_once();
    }

    v142 = v63;
    v86 = static UIColor.MusicTint.normal;
    v87 = Color.init(_:)();
    v88 = static Edge.Set.all.getter();
    v89 = &v59[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingQ0VGAA016_BackgroundStyleN0VyAXGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingQ0VGAA016_BackgroundStyleN0VyAXGGMR) + 36)];
    *v89 = v87;
    v89[8] = v88;
    v90 = &v59[*(v58 + 36)];
    v91 = enum case for RoundedCornerStyle.continuous(_:);
    v92 = type metadata accessor for RoundedCornerStyle();
    (*(*(v92 - 8) + 104))(v90, v91, v92);
    *&v90[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA7CapsuleVGMd, &_s7SwiftUI11_ClipEffectVyAA7CapsuleVGMR) + 36)] = 256;
    v93 = v58;
    v94 = v59;
    if (one-time initialization token for dynamicSizeRange != -1)
    {
      swift_once();
    }

    v95 = v152;
    v96 = __swift_project_value_buffer(v152, static Collaboration.Management.View.Specs.dynamicSizeRange);
    v97 = v144;
    outlined init with copy of TaskPriority?(v96, v144, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMR);
    v141 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>();
    v98 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMR, &protocol conformance descriptor for PartialRangeThrough<A>);
    v99 = v143;
    View.dynamicTypeSize<A>(_:)();
    outlined destroy of TaskPriority?(v97, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMR);
    outlined destroy of TaskPriority?(v94, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingQ0VGAA016_BackgroundStyleN0VyAXGGAA11_ClipEffectVyAA7CapsuleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingQ0VGAA016_BackgroundStyleN0VyAXGGAA11_ClipEffectVyAA7CapsuleVGGMR);
    v100 = (v162 + *(v145 + 11));
    v101 = *v100;
    v102 = *(v100 + 1);
    LOBYTE(v164) = v101;
    v165 = v102;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
    State.projectedValue.getter();
    v145 = &v129;
    __chkstk_darwin();
    v103 = v136;
    *(&v129 - 4) = v104;
    *(&v129 - 3) = v103;
    *(&v129 - 2) = v142;
    *&v167 = v93;
    *(&v167 + 1) = v95;
    *v168 = v141;
    *&v168[8] = v98;
    swift_getOpaqueTypeConformance2();
    v105 = v146;
    v106 = v149;
    View.alert(isPresented:content:)();

    (*(v147 + 8))(v99, v106);
    v108 = v150;
    v107 = v151;
    v109 = *(v150 + 16);
    v110 = v148;
    v109(v148, v105, v151);
    v111 = v153;
    *v153 = 0;
    *(v111 + 8) = 1;
    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerV_AA4ViewPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAeAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiclM0O5BoundRtd__lFQOyAA15ModifiedContentVyATyATyATyATyAeAE10fontWeightyQrAA4FontV0S0VSgFQOyATyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAWSgGG_Qo_A5_yAA5ColorVSgGGAA12_FrameLayoutVGAA14_PaddingLayoutVGAA016_BackgroundStyleZ0VyA11_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyAPGQo__Qo_tMd, &_s7SwiftUI6SpacerV_AA4ViewPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAeAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiclM0O5BoundRtd__lFQOyAA15ModifiedContentVyATyATyATyATyAeAE10fontWeightyQrAA4FontV0S0VSgFQOyATyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAWSgGG_Qo_A5_yAA5ColorVSgGGAA12_FrameLayoutVGAA14_PaddingLayoutVGAA016_BackgroundStyleZ0VyA11_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyAPGQo__Qo_tMR);
    v109((v111 + *(v112 + 48)), v110, v107);
    v113 = *(v108 + 8);
    v113(v105, v107);
    v113(v110, v107);
    outlined init with take of URL?(v111, v161, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicmN0O5BoundRtd__lFQOyAA15ModifiedContentVyAVyAVyAVyAVyAgAE10fontWeightyQrAA4FontV0T0VSgFQOyAVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_A7_yAA5ColorVSgGGAA12_FrameLayoutVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyA13_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyARGQo__Qo_tGMd, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicmN0O5BoundRtd__lFQOyAA15ModifiedContentVyAVyAVyAVyAVyAgAE10fontWeightyQrAA4FontV0T0VSgFQOyAVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_A7_yAA5ColorVSgGGAA12_FrameLayoutVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyA13_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyARGQo__Qo_tGMR);
    v51 = 0;
  }

  v114 = v161;
  (*(v158 + 56))(v161, v51, 1, v159);
  v115 = v163;
  v116 = v156;
  outlined init with copy of TaskPriority?(v163, v156, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAGyAA19SymbolRenderingModeVSgGGAGyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAGyAA19SymbolRenderingModeVSgGGAGyAA5ColorVSgGGSgMR);
  v117 = v157;
  outlined init with copy of TaskPriority?(v114, v157, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicmN0O5BoundRtd__lFQOyAA15ModifiedContentVyAVyAVyAVyAVyAgAE10fontWeightyQrAA4FontV0T0VSgFQOyAVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_A7_yAA5ColorVSgGGAA12_FrameLayoutVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyA13_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyARGQo__Qo_tGSgMd, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicmN0O5BoundRtd__lFQOyAA15ModifiedContentVyAVyAVyAVyAVyAgAE10fontWeightyQrAA4FontV0T0VSgFQOyAVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_A7_yAA5ColorVSgGGAA12_FrameLayoutVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyA13_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyARGQo__Qo_tGSgMR);
  v118 = v160;
  outlined init with copy of TaskPriority?(v116, v160, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAGyAA19SymbolRenderingModeVSgGGAGyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAGyAA19SymbolRenderingModeVSgGGAGyAA5ColorVSgGGSgMR);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAGyAA19SymbolRenderingModeVSgGGAGyAA5ColorVSgGGSg_AA6VStackVyAA9TupleViewVyAA4TextV_A4_SgtGGA2_yAA6SpacerV_AA0S0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyA11_AAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyACyACyACyACyACyA11_AAE10fontWeightyQrAI6WeightVSgFQOyACyAA6ButtonVyA4_GAKG_Qo_AXGANGAA08_PaddingL0VGAA016_BackgroundStyleI0VyAVGGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA22_GQo__Qo_tGSgtMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAGyAA19SymbolRenderingModeVSgGGAGyAA5ColorVSgGGSg_AA6VStackVyAA9TupleViewVyAA4TextV_A4_SgtGGA2_yAA6SpacerV_AA0S0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyA11_AAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyACyACyACyACyACyA11_AAE10fontWeightyQrAI6WeightVSgFQOyACyAA6ButtonVyA4_GAKG_Qo_AXGANGAA08_PaddingL0VGAA016_BackgroundStyleI0VyAVGGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA22_GQo__Qo_tGSgtMR);
  v120 = v118 + *(v119 + 48);
  v121 = v155;
  v164 = v155;
  v165 = 0;
  v122 = v154;
  v166[0] = v154;
  *&v166[1] = *v170;
  *&v166[17] = *&v170[16];
  *&v166[33] = *&v170[32];
  *&v166[49] = *&v170[48];
  v123 = *&v170[63];
  *&v166[64] = *&v170[63];
  v124 = *v166;
  *v120 = v155;
  *(v120 + 16) = v124;
  v125 = *&v166[16];
  v126 = *&v166[32];
  v127 = *&v166[48];
  *(v120 + 80) = v123;
  *(v120 + 48) = v126;
  *(v120 + 64) = v127;
  *(v120 + 32) = v125;
  outlined init with copy of TaskPriority?(v117, v118 + *(v119 + 64), &_s7SwiftUI9TupleViewVyAA6SpacerV_AA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicmN0O5BoundRtd__lFQOyAA15ModifiedContentVyAVyAVyAVyAVyAgAE10fontWeightyQrAA4FontV0T0VSgFQOyAVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_A7_yAA5ColorVSgGGAA12_FrameLayoutVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyA13_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyARGQo__Qo_tGSgMd, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicmN0O5BoundRtd__lFQOyAA15ModifiedContentVyAVyAVyAVyAVyAgAE10fontWeightyQrAA4FontV0T0VSgFQOyAVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_A7_yAA5ColorVSgGGAA12_FrameLayoutVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyA13_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyARGQo__Qo_tGSgMR);
  outlined init with copy of TaskPriority?(&v164, &v167, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGSgtGGMR);
  outlined destroy of TaskPriority?(v114, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicmN0O5BoundRtd__lFQOyAA15ModifiedContentVyAVyAVyAVyAVyAgAE10fontWeightyQrAA4FontV0T0VSgFQOyAVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_A7_yAA5ColorVSgGGAA12_FrameLayoutVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyA13_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyARGQo__Qo_tGSgMd, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicmN0O5BoundRtd__lFQOyAA15ModifiedContentVyAVyAVyAVyAVyAgAE10fontWeightyQrAA4FontV0T0VSgFQOyAVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_A7_yAA5ColorVSgGGAA12_FrameLayoutVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyA13_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyARGQo__Qo_tGSgMR);
  outlined destroy of TaskPriority?(v115, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAGyAA19SymbolRenderingModeVSgGGAGyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAGyAA19SymbolRenderingModeVSgGGAGyAA5ColorVSgGGSgMR);
  outlined destroy of TaskPriority?(v117, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicmN0O5BoundRtd__lFQOyAA15ModifiedContentVyAVyAVyAVyAVyAgAE10fontWeightyQrAA4FontV0T0VSgFQOyAVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_A7_yAA5ColorVSgGGAA12_FrameLayoutVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyA13_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyARGQo__Qo_tGSgMd, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAgAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicmN0O5BoundRtd__lFQOyAA15ModifiedContentVyAVyAVyAVyAVyAgAE10fontWeightyQrAA4FontV0T0VSgFQOyAVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_A7_yAA5ColorVSgGGAA12_FrameLayoutVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyA13_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyARGQo__Qo_tGSgMR);
  v167 = v121;
  v168[0] = v122;
  *&v168[17] = *&v170[16];
  *&v168[33] = *&v170[32];
  *v169 = *&v170[48];
  *&v169[15] = *&v170[63];
  *&v168[1] = *v170;
  outlined destroy of TaskPriority?(&v167, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGSgtGGMR);
  return outlined destroy of TaskPriority?(v116, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAGyAA19SymbolRenderingModeVSgGGAGyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAGyAA19SymbolRenderingModeVSgGGAGyAA5ColorVSgGGSgMR);
}

double closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v54[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v54[-v7];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v4 + 16))(v6, v8, v3);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v9 = static NSBundle.module;
  static Locale.current.getter();
  v10 = String.init(localized:table:bundle:locale:comment:)();
  v12 = v11;
  (*(v4 + 8))(v8, v3);
  v59 = v10;
  v60 = v12;
  _sS2SSysWl_0();
  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  LODWORD(v59) = static HierarchicalShapeStyle.primary.getter();
  v18 = Text.foregroundStyle<A>(_:)();
  v20 = v19;
  v22 = v21;
  outlined consume of Text.Storage(v13, v15, v17 & 1);

  static Font.callout.getter();
  v23 = Text.font(_:)();
  v57 = v24;
  v26 = v25;
  v28 = v27;

  outlined consume of Text.Storage(v18, v20, v22 & 1);

  v29 = Collaboration.Management.Model.collaboratorsString.getter();
  if (v30)
  {
    v59 = v29;
    v60 = v30;
    v31 = Text.init<A>(_:)();
    v33 = v32;
    v35 = v34;
    LODWORD(v59) = static HierarchicalShapeStyle.secondary.getter();
    v36 = Text.foregroundStyle<A>(_:)();
    v38 = v37;
    v55 = v26;
    v40 = v39;
    v58 = v28;
    outlined consume of Text.Storage(v31, v33, v35 & 1);

    static Font.caption.getter();
    v41 = Text.font(_:)();
    v43 = v42;
    v56 = a2;
    v44 = v23;
    v46 = v45;
    v48 = v47;

    v49 = v40 & 1;
    LOBYTE(v26) = v55;
    outlined consume of Text.Storage(v36, v38, v49);
    v28 = v58;

    v50 = v46 & 1;
    v23 = v44;
    a2 = v56;
    outlined copy of Text.Storage(v41, v43, v50);
  }

  else
  {
    v41 = 0;
    v43 = 0;
    v50 = 0;
    v48 = 0;
  }

  v51 = v26 & 1;
  v52 = v57;
  outlined copy of Text.Storage(v23, v57, v51);

  outlined copy of Text?(v41, v43, v50, v48);
  outlined consume of Text?(v41, v43, v50, v48);
  LOBYTE(v59) = v51;
  *a2 = v23;
  *(a2 + 8) = v52;
  *(a2 + 16) = v51;
  *(a2 + 24) = v28;
  *(a2 + 32) = v41;
  *(a2 + 40) = v43;
  *(a2 + 48) = v50;
  *(a2 + 56) = v48;
  outlined consume of Text?(v41, v43, v50, v48);
  outlined consume of Text.Storage(v23, v52, v51);

  return result;
}

uint64_t closure #2 in closure #1 in closure #1 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(type metadata accessor for Collaboration.Management.View(0) + 44));
  v7 = *v6;
  v8 = *(v6 + 1);
  v14[16] = v7;
  v15 = v8;
  v14[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.setter();
  v9 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v9, v2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "[Management] Stop/Leave button tapped", v12, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t closure #3 in closure #1 in closure #1 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a2;
  v47 = a3;
  v54 = a4;
  v48 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  __chkstk_darwin();
  v49 = v5;
  v50 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Alert.Button();
  __chkstk_darwin();
  v53 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v52 = v41 - v7;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v45 = type metadata accessor for String.LocalizationValue();
  v8 = *(v45 - 8);
  __chkstk_darwin();
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = v41 - v11;
  v13 = type metadata accessor for Playlist();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v17 = Playlist.isOwner.getter();
  (*(v14 + 8))(v16, v13);
  if (v17 != 2 && (v17 & 1) != 0)
  {
    String.LocalizationValue.init(stringLiteral:)();
    v18 = *(v8 + 16);
    v19 = v45;
    v18(v10, v12, v45);
    if (one-time initialization token for module == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  String.LocalizationValue.init(stringLiteral:)();
  v18 = *(v8 + 16);
  v19 = v45;
  v18(v10, v12, v45);
  if (one-time initialization token for module != -1)
  {
LABEL_7:
    swift_once();
  }

LABEL_6:
  v20 = static NSBundle.module;
  static Locale.current.getter();
  v21 = v20;
  v44 = String.init(localized:table:bundle:locale:comment:)();
  v23 = v22;
  v24 = *(v8 + 8);
  v24(v12, v19);
  String.LocalizationValue.init(stringLiteral:)();
  v18(v10, v12, v19);
  static Locale.current.getter();
  v25 = String.init(localized:table:bundle:locale:comment:)();
  v27 = v26;
  v24(v12, v19);
  v55 = v44;
  v56 = v23;
  _sS2SSysWl_0();
  v28 = Text.init<A>(_:)();
  v44 = v29;
  v45 = v28;
  v42 = v30;
  v43 = v31;
  v55 = v25;
  v56 = v27;
  Text.init<A>(_:)();
  v41[1] = v32;
  v55 = v46;
  v56 = v47;

  v33 = Text.init<A>(_:)();
  v35 = v34;
  LOBYTE(v23) = v36;
  v37 = v50;
  outlined init with copy of Collaboration.Management.View(v51, v50, type metadata accessor for Collaboration.Management.View);
  v38 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v39 = swift_allocObject();
  outlined init with take of Collaboration.Management.View(v37, v39 + v38, type metadata accessor for Collaboration.Management.View);
  static Alert.Button.destructive(_:action:)();
  outlined consume of Text.Storage(v33, v35, v23 & 1);

  static Alert.Button.cancel(_:)();
  return Alert.init(title:message:primaryButton:secondaryButton:)();
}

uint64_t closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = (type metadata accessor for Collaboration.Management.View(0) - 8);
  v4 = *v3;
  v5 = *(*v3 + 64);
  __chkstk_darwin();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACy010_MusicKit_aB012ArtworkImageV01_hi9Internal_aB0E18artworkPlaceholderyQrx0hI00J0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAJ0h4CoreB0E0N0OAUVAA26_PreferenceWritingModifierVyAX016RadiosityEnabledS3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA8_GGQo_A7_GAX012CornerRadiusU033_F5ED3014321945F1E2BE58A044A15282LLVGAX06BordergU0A16_LLVGAA13_ShadowEffectVG_AA4TextVAGyACyACyAA6HStackVyAGyAaUPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaURd__lFQOyACy0hR013CollaborationOAXE10ManagementOAUV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA012_Environmentx9TransformU0VySbGG_A42_08ActivityG10ControllerA45_LLVSgQo__ACyA52_AA012_TransactionU0VGSgtGGAA010_FixedSizeZ0VGAA08_PaddingZ0VG_ACyACyACyACyACyACyACyAA5GroupVyAWyA28_yAGyAA08ProgressG0VyAA05EmptyG0VA74_G_A26_tGGACyACyA26_AA012_EnvironmentxtU0VyATSgGGA79_yAA13OpenURLActionVGGGSgGAA05_FlexyZ0VGA79_ySiSgGGA64_GAA016_ForegroundStyleU0VyAA22HierarchicalShapeStyleVGGA79_yAA4FontVSgGGA67_GA67_GAA6SpacerVtGSgA28_yA111_GtGGAA06_TraittU0VyAA018ListRowInsetsTraitX0VGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACy010_MusicKit_aB012ArtworkImageV01_hi9Internal_aB0E18artworkPlaceholderyQrx0hI00J0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAJ0h4CoreB0E0N0OAUVAA26_PreferenceWritingModifierVyAX016RadiosityEnabledS3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA8_GGQo_A7_GAX012CornerRadiusU033_F5ED3014321945F1E2BE58A044A15282LLVGAX06BordergU0A16_LLVGAA13_ShadowEffectVG_AA4TextVAGyACyACyAA6HStackVyAGyAaUPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaURd__lFQOyACy0hR013CollaborationOAXE10ManagementOAUV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA012_Environmentx9TransformU0VySbGG_A42_08ActivityG10ControllerA45_LLVSgQo__ACyA52_AA012_TransactionU0VGSgtGGAA010_FixedSizeZ0VGAA08_PaddingZ0VG_ACyACyACyACyACyACyACyAA5GroupVyAWyA28_yAGyAA08ProgressG0VyAA05EmptyG0VA74_G_A26_tGGACyACyA26_AA012_EnvironmentxtU0VyATSgGGA79_yAA13OpenURLActionVGGGSgGAA05_FlexyZ0VGA79_ySiSgGGA64_GAA016_ForegroundStyleU0VyAA22HierarchicalShapeStyleVGGA79_yAA4FontVSgGGA67_GA67_GAA6SpacerVtGSgA28_yA111_GtGGAA06_TraittU0VyAA018ListRowInsetsTraitX0VGGMR);
  __chkstk_darwin();
  v8 = &v17 - v7;
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0x4028000000000000;
  v8[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKy010_MusicKit_aB012ArtworkImageV01_kl9Internal_aB0E18artworkPlaceholderyQrx0kL00M0VSg_So6CGSizeVAA5ColorVtcAA0D0RzlFQOy_AA012_ConditionalJ0VyAKyAKyAN0k4CoreB0E0Q0OAYVAA26_PreferenceWritingModifierVyA0_016RadiosityEnabledV3KeyVGGAA06_FrameG0VGAA14GeometryReaderVyA12_GGQo_A11_GA0_012CornerRadiusX033_F5ED3014321945F1E2BE58A044A15282LLVGA0_06BorderdX0A20_LLVGAA13_ShadowEffectVG_AA4TextVAIyAKyAKyAA6HStackVyAIyAaYPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaYRd__lFQOyAKy0kU013CollaborationOA0_E10ManagementOAYV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA024_EnvironmentKeyTransformX0VySbGG_A46_08ActivityD10ControllerA49_LLVSgQo__AKyA56_AA012_TransactionX0VGSgtGGAA010_FixedSizeG0VGAA08_PaddingG0VG_AKyAKyAKyAKyAKyAKyAKyAA5GroupVyA_yA32_yAIyAA08ProgressD0VyAA05EmptyD0VA78_G_A30_tGGAKyAKyA30_AA015_EnvironmentKeywX0VyAXSgGGA83_yAA13OpenURLActionVGGGSgGAA010_FlexFrameG0VGA83_ySiSgGGA68_GAA016_ForegroundStyleX0VyAA22HierarchicalShapeStyleVGGA83_yAA4FontVSgGGA71_GA71_GAA6SpacerVtGSgA32_yA115_GtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKy010_MusicKit_aB012ArtworkImageV01_kl9Internal_aB0E18artworkPlaceholderyQrx0kL00M0VSg_So6CGSizeVAA5ColorVtcAA0D0RzlFQOy_AA012_ConditionalJ0VyAKyAKyAN0k4CoreB0E0Q0OAYVAA26_PreferenceWritingModifierVyA0_016RadiosityEnabledV3KeyVGGAA06_FrameG0VGAA14GeometryReaderVyA12_GGQo_A11_GA0_012CornerRadiusX033_F5ED3014321945F1E2BE58A044A15282LLVGA0_06BorderdX0A20_LLVGAA13_ShadowEffectVG_AA4TextVAIyAKyAKyAA6HStackVyAIyAaYPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaYRd__lFQOyAKy0kU013CollaborationOA0_E10ManagementOAYV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA024_EnvironmentKeyTransformX0VySbGG_A46_08ActivityD10ControllerA49_LLVSgQo__AKyA56_AA012_TransactionX0VGSgtGGAA010_FixedSizeG0VGAA08_PaddingG0VG_AKyAKyAKyAKyAKyAKyAKyAA5GroupVyA_yA32_yAIyAA08ProgressD0VyAA05EmptyD0VA78_G_A30_tGGAKyAKyA30_AA015_EnvironmentKeywX0VyAXSgGGA83_yAA13OpenURLActionVGGGSgGAA010_FlexFrameG0VGA83_ySiSgGGA68_GAA016_ForegroundStyleX0VyAA22HierarchicalShapeStyleVGGA83_yAA4FontVSgGGA71_GA71_GAA6SpacerVtGSgA32_yA115_GtGGMR);
  closure #1 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(a1, &v8[*(v9 + 44)]);
  v10 = &v8[*(v6 + 36)];
  v10[32] = 0;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v11 = (a1 + v3[12]);
  v12 = *v11;
  v13 = *(v11 + 1);
  v18 = v12;
  v19 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.projectedValue.getter();
  outlined init with copy of Collaboration.Management.View(a1, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  outlined init with take of Collaboration.Management.View(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for Collaboration.Management.View);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO10QRCodeView33_BED032AFC26D7293E5DA491DDAECC514LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyAG05ClearV0AKLLVGGSgMd, &_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO10QRCodeView33_BED032AFC26D7293E5DA491DDAECC514LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyAG05ClearV0AKLLVGGSgMR);
  lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, CornerRadiusModifier>, BorderViewModifier>, _ShadowEffect>, Text, TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, ModifiedContent<ModifiedContent<Collaboration.Management.View.Share.Button, _EnvironmentKeyTransformModifier<Bool>>, _TransactionModifier>?)>>, _FixedSizeLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<HStack<TupleView<(ProgressView<EmptyView, EmptyView>, Text)>>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<OpenURLAction>>>?>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>, _Foreg();
  lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Collaboration.Management.QRCodeView, _SafeAreaRegionsIgnoringLayout>, _BackgroundModifier<ClearBackground>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO10QRCodeView33_BED032AFC26D7293E5DA491DDAECC514LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyAG05ClearV0AKLLVGGSgMd, &_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO10QRCodeView33_BED032AFC26D7293E5DA491DDAECC514LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyAG05ClearV0AKLLVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Collaboration.Management.QRCodeView, _SafeAreaRegionsIgnoringLayout>, _BackgroundModifier<ClearBackground>> and conformance <> ModifiedContent<A, B>);
  View.fullScreenCover<A>(isPresented:onDismiss:content:)();

  return outlined destroy of TaskPriority?(v8, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACy010_MusicKit_aB012ArtworkImageV01_hi9Internal_aB0E18artworkPlaceholderyQrx0hI00J0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAJ0h4CoreB0E0N0OAUVAA26_PreferenceWritingModifierVyAX016RadiosityEnabledS3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA8_GGQo_A7_GAX012CornerRadiusU033_F5ED3014321945F1E2BE58A044A15282LLVGAX06BordergU0A16_LLVGAA13_ShadowEffectVG_AA4TextVAGyACyACyAA6HStackVyAGyAaUPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaURd__lFQOyACy0hR013CollaborationOAXE10ManagementOAUV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA012_Environmentx9TransformU0VySbGG_A42_08ActivityG10ControllerA45_LLVSgQo__ACyA52_AA012_TransactionU0VGSgtGGAA010_FixedSizeZ0VGAA08_PaddingZ0VG_ACyACyACyACyACyACyACyAA5GroupVyAWyA28_yAGyAA08ProgressG0VyAA05EmptyG0VA74_G_A26_tGGACyACyA26_AA012_EnvironmentxtU0VyATSgGGA79_yAA13OpenURLActionVGGGSgGAA05_FlexyZ0VGA79_ySiSgGGA64_GAA016_ForegroundStyleU0VyAA22HierarchicalShapeStyleVGGA79_yAA4FontVSgGGA67_GA67_GAA6SpacerVtGSgA28_yA111_GtGGAA06_TraittU0VyAA018ListRowInsetsTraitX0VGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACy010_MusicKit_aB012ArtworkImageV01_hi9Internal_aB0E18artworkPlaceholderyQrx0hI00J0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAJ0h4CoreB0E0N0OAUVAA26_PreferenceWritingModifierVyAX016RadiosityEnabledS3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA8_GGQo_A7_GAX012CornerRadiusU033_F5ED3014321945F1E2BE58A044A15282LLVGAX06BordergU0A16_LLVGAA13_ShadowEffectVG_AA4TextVAGyACyACyAA6HStackVyAGyAaUPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaURd__lFQOyACy0hR013CollaborationOAXE10ManagementOAUV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA012_Environmentx9TransformU0VySbGG_A42_08ActivityG10ControllerA45_LLVSgQo__ACyA52_AA012_TransactionU0VGSgtGGAA010_FixedSizeZ0VGAA08_PaddingZ0VG_ACyACyACyACyACyACyACyAA5GroupVyAWyA28_yAGyAA08ProgressG0VyAA05EmptyG0VA74_G_A26_tGGACyACyA26_AA012_EnvironmentxtU0VyATSgGGA79_yAA13OpenURLActionVGGGSgGAA05_FlexyZ0VGA79_ySiSgGGA64_GAA016_ForegroundStyleU0VyAA22HierarchicalShapeStyleVGGA79_yAA4FontVSgGGA67_GA67_GAA6SpacerVtGSgA28_yA111_GtGGAA06_TraittU0VyAA018ListRowInsetsTraitX0VGGMR);
}

uint64_t closure #1 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v222 = a2;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6HStackVyACyAA0D0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyAEy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityD10ControllerAZLLVSgQo__AEyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AEyAEyAEyAEyAEyAEyAEyAA5GroupVyAA012_ConditionalF0VyAGyACyAA08ProgressD0VyAA05EmptyD0VA29_G_AA4TextVtGGAEyAEyA32_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA36_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA36_ySiSgGGA17_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA4FontVSgGGA20_GA20_GAA6SpacerVtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6HStackVyACyAA0D0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyAEy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityD10ControllerAZLLVSgQo__AEyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AEyAEyAEyAEyAEyAEyAEyAA5GroupVyAA012_ConditionalF0VyAGyACyAA08ProgressD0VyAA05EmptyD0VA29_G_AA4TextVtGGAEyAEyA32_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA36_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA36_ySiSgGGA17_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA4FontVSgGGA20_GA20_GAA6SpacerVtGMR);
  v220 = *(v221 - 8);
  __chkstk_darwin();
  v199 = &v177 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA6HStackVyAA9TupleViewVyAA08ProgressH0VyAA05EmptyH0VAMG_AA4TextVtGGAA08ModifiedE0VyATyApA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA6HStackVyAA9TupleViewVyAA08ProgressH0VyAA05EmptyH0VAMG_AA4TextVtGGAA08ModifiedE0VyATyApA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGMR);
  __chkstk_darwin();
  v182 = &v177 - v4;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGMR);
  __chkstk_darwin();
  v191 = &v177 - v5;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGMR);
  __chkstk_darwin();
  v188 = &v177 - v6;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGMR);
  __chkstk_darwin();
  v185 = &v177 - v7;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGAA016_ForegroundStyleP0VyAA017HierarchicalShapeZ0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGAA016_ForegroundStyleP0VyAA017HierarchicalShapeZ0VGGMR);
  __chkstk_darwin();
  v184 = &v177 - v8;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGAA016_ForegroundStyleP0VyAA017HierarchicalShapeZ0VGGAVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGAA016_ForegroundStyleP0VyAA017HierarchicalShapeZ0VGGAVyAA4FontVSgGGMR);
  __chkstk_darwin();
  v187 = &v177 - v9;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGAA016_ForegroundStyleP0VyAA017HierarchicalShapeZ0VGGAVyAA4FontVSgGGAA08_PaddingV0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGAA016_ForegroundStyleP0VyAA017HierarchicalShapeZ0VGGAVyAA4FontVSgGGAA08_PaddingV0VGMR);
  __chkstk_darwin();
  v194 = &v177 - v10;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGAA016_ForegroundStyleP0VyAA017HierarchicalShapeZ0VGGAVyAA4FontVSgGGAA08_PaddingV0VGA28_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGAA016_ForegroundStyleP0VyAA017HierarchicalShapeZ0VGGAVyAA4FontVSgGGAA08_PaddingV0VGA28_GMR);
  __chkstk_darwin();
  v198 = &v177 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v192 = &v177 - v12;
  __chkstk_darwin();
  v197 = &v177 - v13;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityG10ControllerAZLLVSgQo__ACyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityG10ControllerAZLLVSgQo__ACyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVGMR);
  __chkstk_darwin();
  v196 = &v177 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v195 = (&v177 - v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6HStackVyACyAA0D0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyAEy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityD10ControllerAZLLVSgQo__AEyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AEyAEyAEyAEyAEyAEyAEyAA5GroupVyAA012_ConditionalF0VyAGyACyAA08ProgressD0VyAA05EmptyD0VA29_G_AA4TextVtGGAEyAEyA32_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA36_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA36_ySiSgGGA17_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA4FontVSgGGA20_GA20_GAA6SpacerVtGSgMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6HStackVyACyAA0D0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyAEy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityD10ControllerAZLLVSgQo__AEyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AEyAEyAEyAEyAEyAEyAEyAA5GroupVyAA012_ConditionalF0VyAGyACyAA08ProgressD0VyAA05EmptyD0VA29_G_AA4TextVtGGAEyAEyA32_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA36_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA36_ySiSgGGA17_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA4FontVSgGGA20_GA20_GAA6SpacerVtGSgMR);
  __chkstk_darwin();
  v219 = &v177 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v224 = &v177 - v17;
  v217 = type metadata accessor for Playlist();
  v216 = *(v217 - 8);
  __chkstk_darwin();
  v215 = &v177 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR_0);
  __chkstk_darwin();
  v209 = &v177 - v19;
  v212 = type metadata accessor for Artwork.CropStyle();
  v210 = *(v212 - 8);
  __chkstk_darwin();
  v208 = &v177 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  __chkstk_darwin();
  v202 = &v177 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v201 = &v177 - v22;
  v213 = type metadata accessor for ArtworkImage();
  v211 = *(v213 - 8);
  __chkstk_darwin();
  v226 = &v177 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v204 = &v177 - v24;
  __chkstk_darwin();
  v207 = &v177 - v25;
  __chkstk_darwin();
  v206 = &v177 - v26;
  v27 = type metadata accessor for ArtworkImage.ReusePolicy();
  v228 = *(v27 - 8);
  __chkstk_darwin();
  v29 = &v177 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v30 = *(v225 + 8);
  __chkstk_darwin();
  v31 = &v177 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v33 = &v177 - v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
  __chkstk_darwin();
  v200 = &v177 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v36 = &v177 - v35;
  __chkstk_darwin();
  v38 = &v177 - v37;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_A3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A12_LLVGAA13_ShadowEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_A3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A12_LLVGAA13_ShadowEffectVGMR);
  __chkstk_darwin();
  v218 = &v177 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v223 = &v177 - v40;
  v190 = a1;
  v229 = *(a1 + 8);
  Collaboration.Management.Model.artworkViewModel.getter(v38);
  v41 = enum case for Playlist.Variant.regular(_:);
  v42 = type metadata accessor for Playlist.Variant();
  v43 = *(v42 - 8);
  (*(v43 + 104))(v33, v41, v42);
  (*(v43 + 56))(v33, 0, 1, v42);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMd, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMR);
  (*(*(v44 - 8) + 56))(v33, 0, 11, v44);
  v244 = 1;
  v242 = 1;
  v240 = 1;
  v45 = *(v228 + 104);
  v227 = v29;
  v205 = v27;
  v45(v29, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v27);
  v203 = v33;
  outlined init with copy of Collaboration.Management.View(v33, v31, type metadata accessor for ArtworkImage.Placeholder);
  v46 = (v225[80] + 16) & ~v225[80];
  v47 = (v30 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  outlined init with take of Collaboration.Management.View(v31, v48 + v46, type metadata accessor for ArtworkImage.Placeholder);
  v49 = v48 + v47;
  *v49 = 0;
  *(v49 + 8) = v244;
  *(v49 + 9) = *v243;
  *(v49 + 12) = *&v243[3];
  *(v49 + 16) = 0;
  *(v49 + 24) = v242;
  *(v49 + 25) = *v241;
  *(v49 + 28) = *&v241[3];
  *(v49 + 32) = 0;
  *(v49 + 40) = v240;
  *(v49 + 41) = 2;
  v225 = v38;
  outlined init with copy of TaskPriority?(v38, v36, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
  v50 = type metadata accessor for ArtworkImage.ViewModel(0);
  v51 = *(*(v50 - 8) + 48);
  if (v51(v36, 1, v50) == 1)
  {
    outlined destroy of TaskPriority?(v36, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
    v52 = type metadata accessor for Artwork();
    v53 = v201;
    (*(*(v52 - 8) + 56))(v201, 1, 1, v52);
  }

  else
  {
    v54 = type metadata accessor for Artwork();
    v55 = *(v54 - 8);
    v53 = v201;
    (*(v55 + 16))(v201, v36, v54);
    outlined destroy of ArtworkImage.Placeholder(v36, type metadata accessor for ArtworkImage.ViewModel);
    (*(v55 + 56))(v53, 0, 1, v54);
  }

  outlined init with copy of TaskPriority?(v53, v202, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  v56 = v206;
  ArtworkImage.init(_:)();
  outlined destroy of TaskPriority?(v53, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  ArtworkImage.artworkReusablePolicy(_:)();
  v57 = v200;
  outlined init with copy of TaskPriority?(v225, v200, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
  if (v51(v57, 1, v50) == 1)
  {
    outlined destroy of TaskPriority?(v57, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
    v58 = v210;
    v59 = v209;
    v60 = v212;
    (*(v210 + 56))(v209, 1, 1, v212);
    v61 = v223;
  }

  else
  {
    v59 = v209;
    outlined init with copy of TaskPriority?(v57 + *(v50 + 20), v209, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR_0);
    outlined destroy of ArtworkImage.Placeholder(v57, type metadata accessor for ArtworkImage.ViewModel);
    v58 = v210;
    v60 = v212;
    v62 = (*(v210 + 48))(v59, 1, v212);
    v61 = v223;
    if (v62 != 1)
    {
      v63 = v208;
      (*(v58 + 32))(v208, v59, v60);
      goto LABEL_12;
    }
  }

  v63 = v208;
  if (one-time initialization token for fallback != -1)
  {
    swift_once();
  }

  v64 = __swift_project_value_buffer(v60, static Artwork.CropStyle.fallback);
  (*(v58 + 16))(v63, v64, v60);
  if ((*(v58 + 48))(v59, 1, v60) != 1)
  {
    outlined destroy of TaskPriority?(v59, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR_0);
  }

LABEL_12:
  v65 = v204;
  v66 = v226;
  ArtworkImage.artworkCropStyle(_:)();
  (*(v58 + 8))(v63, v60);
  v67 = *(v211 + 8);
  v68 = v213;
  v67(v66, v213);
  v69 = v207;
  ArtworkImage.artworkIdealAspectRatio(_:contentMode:)();
  v67(v65, v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy010_MusicKit_aB012ArtworkImageV0f4CoreB0E11PlaceholderO4ViewVAA26_PreferenceWritingModifierVyAI016RadiosityEnabledM3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyAVGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy010_MusicKit_aB012ArtworkImageV0f4CoreB0E11PlaceholderO4ViewVAA26_PreferenceWritingModifierVyAI016RadiosityEnabledM3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyAVGGMR);
  lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout>, GeometryReader<ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout>>> and conformance <> _ConditionalContent<A, B>();
  ArtworkImage.artworkPlaceholder<A>(_:)();

  v67(v69, v68);
  v67(v56, v68);
  (*(v228 + 8))(v227, v205);
  outlined destroy of ArtworkImage.Placeholder(v203, type metadata accessor for ArtworkImage.Placeholder);
  outlined destroy of TaskPriority?(v225, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
  if (one-time initialization token for artworkLength != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v70 = (v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_A3_GMd, &_s7SwiftUI15ModifiedContentVy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_A3_GMR) + 36));
  v71 = v231;
  *v70 = v230;
  v70[1] = v71;
  v70[2] = v232;
  if (one-time initialization token for small != -1)
  {
    swift_once();
  }

  v72 = static Corner.small;
  v73 = *algn_10063F058;
  v74 = byte_10063F060;
  v75 = v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_A3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGMd, &_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_A3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGMR) + 36);
  *v75 = v72;
  *(v75 + 8) = v73;
  *(v75 + 16) = v74;
  if (one-time initialization token for artwork != -1)
  {
    swift_once();
  }

  v76 = static Border.artwork;
  v77 = qword_10063F0B8;
  v78 = byte_10063F0C0;
  v79 = v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_A3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A12_LLVGMd, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_A3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A12_LLVGMR) + 36);
  *v79 = v76;
  *(v79 + 8) = v77;
  *(v79 + 16) = v78;
  *(v79 + 24) = v72;
  *(v79 + 32) = v73;
  *(v79 + 40) = v74;

  static Color.black.getter();
  v80 = Color.opacity(_:)();

  v81 = v61 + *(v214 + 36);
  *v81 = v80;
  *(v81 + 8) = xmmword_1005079F0;
  *(v81 + 24) = 0x4000000000000000;
  swift_getKeyPath();
  swift_getKeyPath();
  v82 = v215;
  static Published.subscript.getter();

  v83 = Playlist.name.getter();
  v85 = v84;
  (*(v216 + 8))(v82, v217);
  *&v233 = v83;
  *(&v233 + 1) = v85;
  _sS2SSysWl_0();
  v86 = Text.init<A>(_:)();
  v88 = v87;
  v90 = v89;
  LODWORD(v233) = static HierarchicalShapeStyle.primary.getter();
  v91 = Text.foregroundStyle<A>(_:)();
  v93 = v92;
  v95 = v94;
  outlined consume of Text.Storage(v86, v88, v90 & 1);

  if (one-time initialization token for titleFont != -1)
  {
    swift_once();
  }

  v96 = Text.font(_:)();
  v98 = v97;
  v100 = v99;

  outlined consume of Text.Storage(v91, v93, v95 & 1);

  static Font.Weight.semibold.getter();
  v227 = Text.fontWeight(_:)();
  v226 = v101;
  LODWORD(v103) = v102;
  v228 = v104;
  outlined consume of Text.Storage(v96, v98, v100 & 1);

  v105 = Collaboration.Management.Model.canShare.getter();
  v106 = 1;
  if (v105)
  {
    v107 = static VerticalAlignment.bottom.getter();
    v108 = v195;
    *v195 = v107;
    *(v108 + 8) = 0x4020000000000000;
    *(v108 + 16) = 0;
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA0D0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaJRd__lFQOyAA15ModifiedContentVy9MusicCore13CollaborationO0rsB0E10ManagementOAJV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A_08ActivityD10ControllerA2_LLVSgQo__AUyA9_AA20_TransactionModifierVGSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA0D0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaJRd__lFQOyAA15ModifiedContentVy9MusicCore13CollaborationO0rsB0E10ManagementOAJV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A_08ActivityD10ControllerA2_LLVSgQo__AUyA9_AA20_TransactionModifierVGSgtGGMR);
    v110 = v190;
    closure #1 in closure #1 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(v190, (v108 + *(v109 + 44)));
    *(v108 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityG10ControllerAZLLVSgQo__ACyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityG10ControllerAZLLVSgQo__ACyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGMR) + 36)) = 256;
    v111 = static Edge.Set.top.getter();
    if (one-time initialization token for shareButtonStackTopPadding != -1)
    {
      swift_once();
    }

    LODWORD(v229) = v103;
    EdgeInsets.init(_all:)();
    v112 = v108 + *(v178 + 36);
    *v112 = v111;
    *(v112 + 8) = v113;
    *(v112 + 16) = v114;
    *(v112 + 24) = v115;
    *(v112 + 32) = v116;
    *(v112 + 40) = 0;
    v117 = v182;
    closure #2 in closure #1 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(v110, v182);
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v118 = v191;
    outlined init with take of URL?(v117, v191, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA6HStackVyAA9TupleViewVyAA08ProgressH0VyAA05EmptyH0VAMG_AA4TextVtGGAA08ModifiedE0VyATyApA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA6HStackVyAA9TupleViewVyAA08ProgressH0VyAA05EmptyH0VAMG_AA4TextVtGGAA08ModifiedE0VyATyApA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGMR);
    v119 = (v118 + *(v179 + 36));
    v120 = v238;
    v119[4] = v237;
    v119[5] = v120;
    v119[6] = v239;
    v121 = v234;
    *v119 = v233;
    v119[1] = v121;
    v122 = v236;
    v119[2] = v235;
    v119[3] = v122;
    KeyPath = swift_getKeyPath();
    v124 = v118;
    v125 = v188;
    outlined init with take of URL?(v124, v188, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGMR);
    v126 = v125 + *(v189 + 36);
    *v126 = KeyPath;
    *(v126 + 8) = 0;
    *(v126 + 16) = 1;
    v127 = v125;
    v128 = v185;
    outlined init with take of URL?(v127, v185, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGMR);
    *(v128 + *(v186 + 36)) = 256;
    LODWORD(KeyPath) = static HierarchicalShapeStyle.secondary.getter();
    v129 = v128;
    v130 = v184;
    outlined init with take of URL?(v129, v184, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGMR);
    *(v130 + *(v181 + 36)) = KeyPath;
    v131 = static Font.footnote.getter();
    v132 = swift_getKeyPath();
    v133 = v130;
    v134 = v187;
    outlined init with take of URL?(v133, v187, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGAA016_ForegroundStyleP0VyAA017HierarchicalShapeZ0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGAA016_ForegroundStyleP0VyAA017HierarchicalShapeZ0VGGMR);
    v135 = (v134 + *(v180 + 36));
    *v135 = v132;
    v135[1] = v131;
    LOBYTE(v131) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v137 = v136;
    v139 = v138;
    v141 = v140;
    v143 = v142;
    v144 = v134;
    v145 = v194;
    outlined init with take of URL?(v144, v194, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGAA016_ForegroundStyleP0VyAA017HierarchicalShapeZ0VGGAVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGAA016_ForegroundStyleP0VyAA017HierarchicalShapeZ0VGGAVyAA4FontVSgGGMR);
    v146 = v145 + *(v183 + 36);
    *v146 = v131;
    *(v146 + 8) = v137;
    *(v146 + 16) = v139;
    *(v146 + 24) = v141;
    *(v146 + 32) = v143;
    *(v146 + 40) = 0;
    v147 = static Edge.Set.top.getter();
    if (one-time initialization token for resetLinkGroupTopPadding != -1)
    {
      swift_once();
    }

    EdgeInsets.init(_all:)();
    v149 = v148;
    v151 = v150;
    v153 = v152;
    v155 = v154;
    v156 = v145;
    v157 = v192;
    outlined init with take of URL?(v156, v192, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGAA016_ForegroundStyleP0VyAA017HierarchicalShapeZ0VGGAVyAA4FontVSgGGAA08_PaddingV0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGAA016_ForegroundStyleP0VyAA017HierarchicalShapeZ0VGGAVyAA4FontVSgGGAA08_PaddingV0VGMR);
    v158 = v157 + *(v193 + 36);
    *v158 = v147;
    *(v158 + 8) = v149;
    *(v158 + 16) = v151;
    *(v158 + 24) = v153;
    *(v158 + 32) = v155;
    *(v158 + 40) = 0;
    v159 = v197;
    outlined init with take of URL?(v157, v197, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGAA016_ForegroundStyleP0VyAA017HierarchicalShapeZ0VGGAVyAA4FontVSgGGAA08_PaddingV0VGA28_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGAA016_ForegroundStyleP0VyAA017HierarchicalShapeZ0VGGAVyAA4FontVSgGGAA08_PaddingV0VGA28_GMR);
    v160 = v196;
    outlined init with copy of TaskPriority?(v108, v196, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityG10ControllerAZLLVSgQo__ACyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityG10ControllerAZLLVSgQo__ACyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVGMR);
    v161 = v198;
    outlined init with copy of TaskPriority?(v159, v198, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGAA016_ForegroundStyleP0VyAA017HierarchicalShapeZ0VGGAVyAA4FontVSgGGAA08_PaddingV0VGA28_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGAA016_ForegroundStyleP0VyAA017HierarchicalShapeZ0VGGAVyAA4FontVSgGGAA08_PaddingV0VGA28_GMR);
    v103 = v108;
    v162 = v199;
    outlined init with copy of TaskPriority?(v160, v199, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityG10ControllerAZLLVSgQo__ACyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityG10ControllerAZLLVSgQo__ACyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVGMR);
    v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityG10ControllerAZLLVSgQo__ACyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyAEyAGyAA08ProgressG0VyAA05EmptyG0VA29_G_AA4TextVtGGACyACyA32_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA36_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA36_ySiSgGGA17_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA4FontVSgGGA20_GA20_GAA6SpacerVtMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityG10ControllerAZLLVSgQo__ACyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyAEyAGyAA08ProgressG0VyAA05EmptyG0VA29_G_AA4TextVtGGACyACyA32_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA36_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA36_ySiSgGGA17_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA4FontVSgGGA20_GA20_GAA6SpacerVtMR);
    outlined init with copy of TaskPriority?(v161, v162 + *(v163 + 48), &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGAA016_ForegroundStyleP0VyAA017HierarchicalShapeZ0VGGAVyAA4FontVSgGGAA08_PaddingV0VGA28_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGAA016_ForegroundStyleP0VyAA017HierarchicalShapeZ0VGGAVyAA4FontVSgGGAA08_PaddingV0VGA28_GMR);
    v164 = v162 + *(v163 + 64);
    outlined destroy of TaskPriority?(v159, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGAA016_ForegroundStyleP0VyAA017HierarchicalShapeZ0VGGAVyAA4FontVSgGGAA08_PaddingV0VGA28_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGAA016_ForegroundStyleP0VyAA017HierarchicalShapeZ0VGGAVyAA4FontVSgGGAA08_PaddingV0VGA28_GMR);
    outlined destroy of TaskPriority?(v103, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityG10ControllerAZLLVSgQo__ACyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityG10ControllerAZLLVSgQo__ACyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVGMR);
    *v164 = 0x3FF0000000000000;
    *(v164 + 8) = 0;
    outlined destroy of TaskPriority?(v161, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGAA016_ForegroundStyleP0VyAA017HierarchicalShapeZ0VGGAVyAA4FontVSgGGAA08_PaddingV0VGA28_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA6HStackVyAA9TupleViewVyAA08ProgressI0VyAA05EmptyI0VAOG_AA4TextVtGGACyACyArA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGAVySiSgGGAA010_FixedSizeV0VGAA016_ForegroundStyleP0VyAA017HierarchicalShapeZ0VGGAVyAA4FontVSgGGAA08_PaddingV0VGA28_GMR);
    outlined destroy of TaskPriority?(v160, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityG10ControllerAZLLVSgQo__ACyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityG10ControllerAZLLVSgQo__ACyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVGMR);
    outlined init with take of URL?(v162, v224, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6HStackVyACyAA0D0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyAEy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityD10ControllerAZLLVSgQo__AEyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AEyAEyAEyAEyAEyAEyAEyAA5GroupVyAA012_ConditionalF0VyAGyACyAA08ProgressD0VyAA05EmptyD0VA29_G_AA4TextVtGGAEyAEyA32_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA36_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA36_ySiSgGGA17_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA4FontVSgGGA20_GA20_GAA6SpacerVtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6HStackVyACyAA0D0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyAEy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityD10ControllerAZLLVSgQo__AEyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AEyAEyAEyAEyAEyAEyAEyAA5GroupVyAA012_ConditionalF0VyAGyACyAA08ProgressD0VyAA05EmptyD0VA29_G_AA4TextVtGGAEyAEyA32_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA36_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA36_ySiSgGGA17_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA4FontVSgGGA20_GA20_GAA6SpacerVtGMR);
    v106 = 0;
    v61 = v223;
    LOBYTE(v103) = v229;
  }

  v165 = v224;
  (*(v220 + 56))(v224, v106, 1, v221);
  v229 = static VerticalAlignment.center.getter();
  v166 = v218;
  outlined init with copy of TaskPriority?(v61, v218, &_s7SwiftUI15ModifiedContentVyACyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_A3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A12_LLVGAA13_ShadowEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_A3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A12_LLVGAA13_ShadowEffectVGMR);
  v167 = v219;
  outlined init with copy of TaskPriority?(v165, v219, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6HStackVyACyAA0D0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyAEy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityD10ControllerAZLLVSgQo__AEyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AEyAEyAEyAEyAEyAEyAEyAA5GroupVyAA012_ConditionalF0VyAGyACyAA08ProgressD0VyAA05EmptyD0VA29_G_AA4TextVtGGAEyAEyA32_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA36_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA36_ySiSgGGA17_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA4FontVSgGGA20_GA20_GAA6SpacerVtGSgMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6HStackVyACyAA0D0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyAEy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityD10ControllerAZLLVSgQo__AEyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AEyAEyAEyAEyAEyAEyAEyAA5GroupVyAA012_ConditionalF0VyAGyACyAA08ProgressD0VyAA05EmptyD0VA29_G_AA4TextVtGGAEyAEyA32_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA36_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA36_ySiSgGGA17_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA4FontVSgGGA20_GA20_GAA6SpacerVtGSgMR);
  v168 = v222;
  outlined init with copy of TaskPriority?(v166, v222, &_s7SwiftUI15ModifiedContentVyACyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_A3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A12_LLVGAA13_ShadowEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_A3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A12_LLVGAA13_ShadowEffectVGMR);
  v169 = v61;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_A3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A12_LLVGAA13_ShadowEffectVG_AA4TextVAA05TupleN0VyACyACyAA6HStackVyA24_yAaQPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaQRd__lFQOyACy0eP013CollaborationOATE10ManagementOAQV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA012_Environmentv9TransformS0VySbGG_A40_08ActivityN10ControllerA43_LLVSgQo__ACyA50_AA012_TransactionS0VGSgtGGAA010_FixedSizeX0VGAA08_PaddingX0VG_ACyACyACyACyACyACyACyAA5GroupVyASyA26_yA24_yAA08ProgressN0VyAA05EmptyN0VA72_G_A22_tGGACyACyA22_AA012_EnvironmentvrS0VyAPSgGGA77_yAA13OpenURLActionVGGGSgGAA05_FlexwX0VGA77_ySiSgGGA62_GAA016_ForegroundStyleS0VyAA22HierarchicalShapeStyleVGGA77_yAA4FontVSgGGA65_GA65_GAA6SpacerVtGSgA26_yA109_GtMd, &_s7SwiftUI15ModifiedContentVyACyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_A3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A12_LLVGAA13_ShadowEffectVG_AA4TextVAA05TupleN0VyACyACyAA6HStackVyA24_yAaQPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaQRd__lFQOyACy0eP013CollaborationOATE10ManagementOAQV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA012_Environmentv9TransformS0VySbGG_A40_08ActivityN10ControllerA43_LLVSgQo__ACyA50_AA012_TransactionS0VGSgtGGAA010_FixedSizeX0VGAA08_PaddingX0VG_ACyACyACyACyACyACyACyAA5GroupVyASyA26_yA24_yAA08ProgressN0VyAA05EmptyN0VA72_G_A22_tGGACyACyA22_AA012_EnvironmentvrS0VyAPSgGGA77_yAA13OpenURLActionVGGGSgGAA05_FlexwX0VGA77_ySiSgGGA62_GAA016_ForegroundStyleS0VyAA22HierarchicalShapeStyleVGGA77_yAA4FontVSgGGA65_GA65_GAA6SpacerVtGSgA26_yA109_GtMR);
  v171 = v168 + v170[12];
  v172 = v227;
  v173 = v226;
  *v171 = v227;
  *(v171 + 8) = v173;
  v174 = v103 & 1;
  *(v171 + 16) = v174;
  *(v171 + 24) = v228;
  outlined init with copy of TaskPriority?(v167, v168 + v170[16], &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6HStackVyACyAA0D0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyAEy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityD10ControllerAZLLVSgQo__AEyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AEyAEyAEyAEyAEyAEyAEyAA5GroupVyAA012_ConditionalF0VyAGyACyAA08ProgressD0VyAA05EmptyD0VA29_G_AA4TextVtGGAEyAEyA32_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA36_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA36_ySiSgGGA17_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA4FontVSgGGA20_GA20_GAA6SpacerVtGSgMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6HStackVyACyAA0D0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyAEy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityD10ControllerAZLLVSgQo__AEyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AEyAEyAEyAEyAEyAEyAEyAA5GroupVyAA012_ConditionalF0VyAGyACyAA08ProgressD0VyAA05EmptyD0VA29_G_AA4TextVtGGAEyAEyA32_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA36_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA36_ySiSgGGA17_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA4FontVSgGGA20_GA20_GAA6SpacerVtGSgMR);
  v175 = v168 + v170[20];
  outlined copy of Text.Storage(v172, v173, v174);

  outlined destroy of TaskPriority?(v165, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6HStackVyACyAA0D0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyAEy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityD10ControllerAZLLVSgQo__AEyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AEyAEyAEyAEyAEyAEyAEyAA5GroupVyAA012_ConditionalF0VyAGyACyAA08ProgressD0VyAA05EmptyD0VA29_G_AA4TextVtGGAEyAEyA32_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA36_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA36_ySiSgGGA17_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA4FontVSgGGA20_GA20_GAA6SpacerVtGSgMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6HStackVyACyAA0D0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyAEy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityD10ControllerAZLLVSgQo__AEyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AEyAEyAEyAEyAEyAEyAEyAA5GroupVyAA012_ConditionalF0VyAGyACyAA08ProgressD0VyAA05EmptyD0VA29_G_AA4TextVtGGAEyAEyA32_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA36_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA36_ySiSgGGA17_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA4FontVSgGGA20_GA20_GAA6SpacerVtGSgMR);
  outlined destroy of TaskPriority?(v169, &_s7SwiftUI15ModifiedContentVyACyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_A3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A12_LLVGAA13_ShadowEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_A3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A12_LLVGAA13_ShadowEffectVGMR);
  *v175 = v229;
  *(v175 + 8) = 0;
  *(v175 + 16) = 1;
  *(v175 + 24) = 0;
  *(v175 + 32) = 1;
  outlined destroy of TaskPriority?(v167, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6HStackVyACyAA0D0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyAEy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityD10ControllerAZLLVSgQo__AEyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AEyAEyAEyAEyAEyAEyAEyAA5GroupVyAA012_ConditionalF0VyAGyACyAA08ProgressD0VyAA05EmptyD0VA29_G_AA4TextVtGGAEyAEyA32_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA36_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA36_ySiSgGGA17_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA4FontVSgGGA20_GA20_GAA6SpacerVtGSgMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6HStackVyACyAA0D0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyAEy9MusicCore13CollaborationO0opB0E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AW08ActivityD10ControllerAZLLVSgQo__AEyA5_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AEyAEyAEyAEyAEyAEyAEyAA5GroupVyAA012_ConditionalF0VyAGyACyAA08ProgressD0VyAA05EmptyD0VA29_G_AA4TextVtGGAEyAEyA32_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA36_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA36_ySiSgGGA17_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA4FontVSgGGA20_GA20_GAA6SpacerVtGSgMR);
  outlined consume of Text.Storage(v172, v173, v174);

  return outlined destroy of TaskPriority?(v166, &_s7SwiftUI15ModifiedContentVyACyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_A3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A12_LLVGAA13_ShadowEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_A3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A12_LLVGAA13_ShadowEffectVGMR);
}

uint64_t closure #1 in closure #1 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v101 = a2;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO4ViewV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA012_TransactionU0VGMd, &_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO4ViewV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA012_TransactionU0VGMR);
  v99 = *(v95 - 8);
  __chkstk_darwin();
  v90 = v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v89 = v78 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO4ViewV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA012_TransactionU0VGSgMd, &_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO4ViewV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA012_TransactionU0VGSgMR);
  __chkstk_darwin();
  v100 = v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v94 = v78 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_0, &_s10Foundation3URLVSgMR_0);
  __chkstk_darwin();
  v87 = v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = v78 - v8;
  v10 = type metadata accessor for Collaboration.Management.View(0) - 8;
  v11 = *v10;
  __chkstk_darwin();
  v102 = v12;
  v13 = (v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for Collaboration.Management.View.Share.Button(0);
  __chkstk_darwin();
  v86 = v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = v78 - v16;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E10ManagementO4ViewV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E10ManagementO4ViewV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGGMR);
  __chkstk_darwin();
  v85 = v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v103 = v78 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA15ModifiedContentVy9MusicCore13CollaborationO0mnB0E10ManagementOABV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AS08ActivityC10ControllerAVLLVSgQo_Md, &_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA15ModifiedContentVy9MusicCore13CollaborationO0mnB0E10ManagementOABV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AS08ActivityC10ControllerAVLLVSgQo_MR);
  v97 = *(v20 - 8);
  v98 = v20;
  __chkstk_darwin();
  v96 = v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v104 = v78 - v22;
  v92 = type metadata accessor for Collaboration.Management.View;
  outlined init with copy of Collaboration.Management.View(a1, v13, type metadata accessor for Collaboration.Management.View);
  v23 = *(v11 + 80);
  v24 = swift_allocObject();
  v91 = type metadata accessor for Collaboration.Management.View;
  outlined init with take of Collaboration.Management.View(v13, v24 + ((v23 + 16) & ~v23), type metadata accessor for Collaboration.Management.View);
  *&v17[*(v14 + 24)] = swift_getKeyPath();
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  *v17 = 0;
  *(v17 + 1) = partial apply for closure #1 in closure #1 in closure #1 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter;
  *(v17 + 2) = v24;
  v84 = v14;
  v26 = &v17[*(v14 + 28)];
  *v26 = KeyPath;
  v26[8] = 0;
  v27 = a1;
  v81 = *(a1 + 8);
  Collaboration.Management.Model.collaborationURL.getter(v9);
  v28 = type metadata accessor for URL();
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  v80 = v28;
  v79 = v30;
  v78[1] = v29 + 48;
  v31 = (v30)(v9, 1) == 1;
  outlined destroy of TaskPriority?(v9, &_s10Foundation3URLVSgMd_0, &_s10Foundation3URLVSgMR_0);
  v32 = swift_getKeyPath();
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  v34 = v103;
  outlined init with take of Collaboration.Management.View(v17, v103, type metadata accessor for Collaboration.Management.View.Share.Button);
  v35 = v93;
  v36 = (v34 + *(v93 + 36));
  *v36 = v32;
  v36[1] = partial apply for closure #1 in View.disabled(_:);
  v36[2] = v33;
  v37 = v27 + *(v10 + 44);
  v38 = *v37;
  v39 = *(v37 + 8);
  v105 = v38;
  v106 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.projectedValue.getter();
  v88 = v27;
  outlined init with copy of Collaboration.Management.View(v27, v13, v92);
  v83 = v23;
  v40 = (v23 + 16) & ~v23;
  v41 = swift_allocObject();
  v92 = v13;
  outlined init with take of Collaboration.Management.View(v13, v41 + v40, v91);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore13CollaborationO0aB2UIE10ManagementO22ActivityViewController33_BED032AFC26D7293E5DA491DDAECC514LLVSgMd, &_s9MusicCore13CollaborationO0aB2UIE10ManagementO22ActivityViewController33_BED032AFC26D7293E5DA491DDAECC514LLVSgMR);
  lazy protocol witness table accessor for type ModifiedContent<Collaboration.Management.View.Share.Button, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
  v42 = v95;
  lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>? and conformance <A> A?(&lazy protocol witness table cache variable for type Collaboration.Management.ActivityViewController? and conformance <A> A?, &_s9MusicCore13CollaborationO0aB2UIE10ManagementO22ActivityViewController33_BED032AFC26D7293E5DA491DDAECC514LLVSgMd, &_s9MusicCore13CollaborationO0aB2UIE10ManagementO22ActivityViewController33_BED032AFC26D7293E5DA491DDAECC514LLVSgMR, lazy protocol witness table accessor for type Collaboration.Management.ActivityViewController and conformance Collaboration.Management.ActivityViewController);
  v43 = v35;
  v44 = v103;
  View.sheet<A>(isPresented:onDismiss:content:)();

  v45 = 1;
  v46 = v94;

  outlined destroy of TaskPriority?(v44, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E10ManagementO4ViewV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E10ManagementO4ViewV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGGMR);
  v47 = [objc_opt_self() currentTraitCollection];
  v48 = [v47 userInterfaceIdiom];

  if (v48 != 6)
  {
    v49 = v92;
    outlined init with copy of Collaboration.Management.View(v88, v92, type metadata accessor for Collaboration.Management.View);
    v50 = swift_allocObject();
    outlined init with take of Collaboration.Management.View(v49, v50 + v40, type metadata accessor for Collaboration.Management.View);
    v51 = swift_getKeyPath();
    v52 = v84;
    v53 = v86;
    *&v86[*(v84 + 24)] = v51;
    swift_storeEnumTagMultiPayload();
    v54 = swift_getKeyPath();
    *v53 = 1;
    *(v53 + 8) = partial apply for closure #3 in closure #1 in closure #1 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter;
    *(v53 + 16) = v50;
    v55 = v53 + *(v52 + 28);
    *v55 = v54;
    *(v55 + 8) = 0;
    v56 = v87;
    Collaboration.Management.Model.collaborationURL.getter(v87);
    v57 = v79(v56, 1, v80) == 1;
    outlined destroy of TaskPriority?(v56, &_s10Foundation3URLVSgMd_0, &_s10Foundation3URLVSgMR_0);
    v58 = swift_getKeyPath();
    v59 = swift_allocObject();
    *(v59 + 16) = v57;
    v60 = v85;
    outlined init with take of Collaboration.Management.View(v53, v85, type metadata accessor for Collaboration.Management.View.Share.Button);
    v61 = (v60 + *(v43 + 36));
    *v61 = v58;
    v61[1] = closure #1 in View.disabled(_:)partial apply;
    v61[2] = v59;
    v62 = v60;
    v63 = v90;
    outlined init with take of URL?(v62, v90, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E10ManagementO4ViewV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E10ManagementO4ViewV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGGMR);
    v64 = (v63 + *(v42 + 36));
    *v64 = closure #4 in closure #1 in closure #1 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter;
    v64[1] = 0;
    v65 = v63;
    v66 = v89;
    outlined init with take of URL?(v65, v89, &_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO4ViewV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA012_TransactionU0VGMd, &_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO4ViewV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA012_TransactionU0VGMR);
    outlined init with take of URL?(v66, v46, &_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO4ViewV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA012_TransactionU0VGMd, &_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO4ViewV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA012_TransactionU0VGMR);
    v45 = 0;
  }

  v67 = v46;
  (*(v99 + 56))(v46, v45, 1, v42);
  v69 = v96;
  v68 = v97;
  v70 = *(v97 + 16);
  v71 = v104;
  v72 = v98;
  v70(v96, v104, v98);
  v73 = v100;
  outlined init with copy of TaskPriority?(v46, v100, &_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO4ViewV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA012_TransactionU0VGSgMd, &_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO4ViewV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA012_TransactionU0VGSgMR);
  v74 = v101;
  v70(v101, v69, v72);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA15ModifiedContentVy9MusicCore13CollaborationO0mnB0E10ManagementOABV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AS08ActivityC10ControllerAVLLVSgQo__AMyA1_AA20_TransactionModifierVGSgtMd, &_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA15ModifiedContentVy9MusicCore13CollaborationO0mnB0E10ManagementOABV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_AS08ActivityC10ControllerAVLLVSgQo__AMyA1_AA20_TransactionModifierVGSgtMR);
  outlined init with copy of TaskPriority?(v73, &v74[*(v75 + 48)], &_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO4ViewV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA012_TransactionU0VGSgMd, &_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO4ViewV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA012_TransactionU0VGSgMR);
  outlined destroy of TaskPriority?(v67, &_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO4ViewV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA012_TransactionU0VGSgMd, &_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO4ViewV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA012_TransactionU0VGSgMR);
  v76 = *(v68 + 8);
  v76(v71, v72);
  outlined destroy of TaskPriority?(v73, &_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO4ViewV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA012_TransactionU0VGSgMd, &_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO4ViewV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGGAA012_TransactionU0VGSgMR);
  return (v76)(v69, v72);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(type metadata accessor for Collaboration.Management.View(0) + 36));
  v7 = *v6;
  v8 = *(v6 + 1);
  v14[16] = v7;
  v15 = v8;
  v14[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.setter();
  v9 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v9, v2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "[Management] Share Sheet button tapped", v12, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t closure #2 in closure #1 in closure #1 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t *a2@<X8>)
{
  v3 = type metadata accessor for Playlist();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_0, &_s10Foundation3URLVSgMR_0);
  __chkstk_darwin();
  v8 = &v15 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Collaboration.Management.Model.collaborationURL.getter(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = outlined destroy of TaskPriority?(v8, &_s10Foundation3URLVSgMd_0, &_s10Foundation3URLVSgMR_0);
    v14 = 0;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    swift_getKeyPath();
    v16 = v3;
    swift_getKeyPath();

    static Published.subscript.getter();

    v14 = Collaboration.Manager.activityViewController(for:url:)();

    (*(v4 + 8))(v6, v16);
    result = (*(v10 + 8))(v12, v9);
  }

  *a2 = v14;
  return result;
}

uint64_t closure #3 in closure #1 in closure #1 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(type metadata accessor for Collaboration.Management.View(0) + 40));
  v7 = *v6;
  v8 = *(v6 + 1);
  v14[16] = v7;
  v15 = v8;
  v14[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.setter();
  v9 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v9, v2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "[Management] QRCode button tapped", v12, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t closure #2 in closure #1 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v38 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v3 = *(v38 + 64);
  __chkstk_darwin();
  v40 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA13OpenURLActionVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA13OpenURLActionVGGMR);
  __chkstk_darwin();
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA6HStackVyAA9TupleViewVyAA08ProgressH0VyAA05EmptyH0VAMG_AA4TextVtGGAA08ModifiedD0VyATyApA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA6HStackVyAA9TupleViewVyAA08ProgressH0VyAA05EmptyH0VAMG_AA4TextVtGGAA08ModifiedD0VyATyApA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA13OpenURLActionVGG_GMR);
  __chkstk_darwin();
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA08ProgressE0VyAA05EmptyE0VAIG_AA4TextVtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA08ProgressE0VyAA05EmptyE0VAIG_AA4TextVtGGMR);
  __chkstk_darwin();
  v12 = &v31 - v11;
  v39 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v42 == 1)
  {
    *v12 = static VerticalAlignment.center.getter();
    *(v12 + 1) = 0x4020000000000000;
    v12[16] = 0;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA08ProgressD0VyAA05EmptyD0VAMG_AA4TextVtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA08ProgressD0VyAA05EmptyD0VAMG_AA4TextVtGGMR);
    closure #1 in closure #2 in closure #1 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(&v12[*(v13 + 44)]);
    outlined init with copy of TaskPriority?(v12, v9, &_s7SwiftUI6HStackVyAA9TupleViewVyAA08ProgressE0VyAA05EmptyE0VAIG_AA4TextVtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA08ProgressE0VyAA05EmptyE0VAIG_AA4TextVtGGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ProgressView<EmptyView, EmptyView>, Text)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA08ProgressE0VyAA05EmptyE0VAIG_AA4TextVtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA08ProgressE0VyAA05EmptyE0VAIG_AA4TextVtGGMR, &protocol conformance descriptor for HStack<A>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<OpenURLAction>> and conformance <> ModifiedContent<A, B>();
    v14 = v41;
    _ConditionalContent<>.init(storage:)();
    outlined destroy of TaskPriority?(v12, &_s7SwiftUI6HStackVyAA9TupleViewVyAA08ProgressE0VyAA05EmptyE0VAIG_AA4TextVtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA08ProgressE0VyAA05EmptyE0VAIG_AA4TextVtGGMR);
    v15 = 0;
    v16 = v14;
  }

  else
  {
    v36 = v7;
    v37 = v10;
    v16 = v41;
    Collaboration.Management.Model.invitationExpirationString.getter();
    if (v17)
    {
      LocalizedStringKey.init(_:)();
      v18 = Text.init(_:tableName:bundle:comment:)();
      v33 = v19;
      v34 = v18;
      v32 = v20;
      v35 = v21;
      v31 = static Color.accentColor.getter();
      KeyPath = swift_getKeyPath();
      v23 = swift_getKeyPath();
      v24 = v40;
      outlined init with copy of Collaboration.Management.View(v39, v40, type metadata accessor for Collaboration.Management.View);
      v25 = (*(v38 + 80) + 16) & ~*(v38 + 80);
      v26 = swift_allocObject();
      outlined init with take of Collaboration.Management.View(v24, v26 + v25, type metadata accessor for Collaboration.Management.View);
      v27 = &v6[*(v4 + 36)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGMR);
      OpenURLAction.init(handler:)();
      *v27 = v23;
      v28 = v33;
      *v6 = v34;
      *(v6 + 1) = v28;
      v6[16] = v32 & 1;
      *(v6 + 3) = v35;
      *(v6 + 4) = KeyPath;
      *(v6 + 5) = v31;
      outlined init with copy of TaskPriority?(v6, v9, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA13OpenURLActionVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA13OpenURLActionVGGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ProgressView<EmptyView, EmptyView>, Text)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA08ProgressE0VyAA05EmptyE0VAIG_AA4TextVtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA08ProgressE0VyAA05EmptyE0VAIG_AA4TextVtGGMR, &protocol conformance descriptor for HStack<A>);
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<OpenURLAction>> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TaskPriority?(v6, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA13OpenURLActionVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA13OpenURLActionVGGMR);
      v15 = 0;
    }

    else
    {
      v15 = 1;
    }
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA6HStackVyAA9TupleViewVyAA08ProgressG0VyAA05EmptyG0VAKG_AA4TextVtGGAA08ModifiedD0VyARyAnA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA13OpenURLActionVGGGMd, &_s7SwiftUI19_ConditionalContentVyAA6HStackVyAA9TupleViewVyAA08ProgressG0VyAA05EmptyG0VAKG_AA4TextVtGGAA08ModifiedD0VyARyAnA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA13OpenURLActionVGGGMR);
  return (*(*(v29 - 8) + 56))(v16, v15, 1, v29);
}

uint64_t closure #1 in closure #2 in closure #1 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(char *a1@<X8>)
{
  v32 = a1;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMR);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v30 - v11;
  ProgressView<>.init<>()();
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v6, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v13 = static NSBundle.module;
  static Locale.current.getter();
  v14 = String.init(localized:table:bundle:locale:comment:)();
  v16 = v15;
  (*(v2 + 8))(v6, v1);
  v33 = v14;
  v34 = v16;
  _sS2SSysWl_0();
  v17 = Text.init<A>(_:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = *(v8 + 16);
  v24(v10, v12, v7);
  v31 = v12;
  v25 = v10;
  v26 = v32;
  v24(v32, v25, v7);
  v27 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEG_AA4TextVtMd, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEG_AA4TextVtMR) + 48)];
  *v27 = v17;
  *(v27 + 1) = v19;
  v27[16] = v21 & 1;
  *(v27 + 3) = v23;
  outlined copy of Text.Storage(v17, v19, v21 & 1);
  v28 = *(v8 + 8);

  v28(v31, v7);
  outlined consume of Text.Storage(v17, v19, v21 & 1);

  return (v28)(v25, v7);
}

uint64_t closure #2 in closure #2 in closure #1 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_1, &_sScPSgMR_1);
  __chkstk_darwin();
  v4 = &v9[-v3];
  v5 = *(a2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v9[15] = 1;

  static Published.subscript.setter();
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_1(0, 0, v4, &async function pointer to partial apply for closure #1 in Collaboration.Management.Model.resetInvitationURL(), v7);

  return static OpenURLAction.Result.handled.getter();
}

uint64_t closure #2 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_0, &_s10Foundation3URLVSgMR_0);
  __chkstk_darwin();
  v3 = &v26 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Collaboration.Management.Model.collaborationURL.getter(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    result = outlined destroy of TaskPriority?(v3, &_s10Foundation3URLVSgMd_0, &_s10Foundation3URLVSgMR_0);
    v9 = 0;
    v10 = 0;
LABEL_6:
    v17 = 0;
    v19 = 0;
    v21 = 0;
    v23 = 0;
    v25 = 0;
    v24 = 0uLL;
    goto LABEL_7;
  }

  (*(v5 + 32))(v7, v3, v4);
  v11 = URL.dataRepresentation.getter();
  v13 = QRCode.init(data:errorCorrectionLevel:)(v11, v12, 76, &v27);
  v14 = *(&v27 + 1);
  v15 = v28;
  v16 = v29;
  result = (*(v5 + 8))(v7, v4, v13);
  v10 = v29;
  if (!v29)
  {
    v9 = 0;
    goto LABEL_6;
  }

  v17 = v30;
  v9 = v28;
  v26 = v27;
  outlined copy of Data._Representation(v14, v15);
  v18 = v16;
  v19 = static SafeAreaRegions.all.getter();
  v20 = static Edge.Set.all.getter();
  v21 = static Alignment.center.getter();
  v23 = v22;
  result = outlined destroy of TaskPriority?(&v27, &_s9MusicCore6QRCodeVSgMd_0, &_s9MusicCore6QRCodeVSgMR_0);
  v24 = v26;
  v25 = v20;
LABEL_7:
  *a1 = v24;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v17;
  *(a1 + 40) = v19;
  *(a1 + 48) = v25;
  *(a1 + 56) = v21;
  *(a1 + 64) = v23;
  return result;
}

uint64_t closure #3 in closure #1 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMR);
  __chkstk_darwin();
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v19[-v8];
  v10 = type metadata accessor for Playlist.Collaborator();
  v11 = *(v10 - 8);
  (*(v11 + 16))(a3, a1, v10);
  v12 = *(a2 + 8);
  KeyPath = swift_getKeyPath();
  v14 = type metadata accessor for Collaboration.Management.View.CollaboratorRowView(0);
  *(a3 + v14[9]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13OpenURLActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13OpenURLActionV_GMR);
  swift_storeEnumTagMultiPayload();
  *(a3 + v14[5]) = v12;
  v15 = a3 + v14[6];
  v19[15] = 0;

  State.init(wrappedValue:)();
  v16 = v20;
  *v15 = v19[16];
  *(v15 + 8) = v16;
  (*(v11 + 56))(v9, 1, 1, v10);
  outlined init with copy of TaskPriority?(v9, v7, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMR);
  State.init(wrappedValue:)();
  outlined destroy of TaskPriority?(v9, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMR);
  v17 = v14[8];
  *(a3 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd_0, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR_0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t closure #5 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v35 = a2;
  v3 = type metadata accessor for BorderlessButtonStyle();
  v4 = *(v3 - 8);
  v31 = v3;
  v32 = v4;
  __chkstk_darwin();
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (type metadata accessor for Collaboration.Management.View(0) - 8);
  v8 = *v7;
  v9 = *(*v7 + 64);
  __chkstk_darwin();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMR);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA010BorderlessgE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA010BorderlessgE0VQo_MR);
  v15 = *(v14 - 8);
  v33 = v14;
  v34 = v15;
  __chkstk_darwin();
  v17 = &v30 - v16;
  outlined init with copy of Collaboration.Management.View(a1, &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  outlined init with take of Collaboration.Management.View(&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for Collaboration.Management.View);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  BorderlessButtonStyle.init()();
  v20 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMR, &protocol conformance descriptor for Button<A>);
  v21 = lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type BorderlessButtonStyle and conformance BorderlessButtonStyle, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
  v22 = v31;
  View.buttonStyle<A>(_:)();
  v23 = v22;
  (*(v32 + 8))(v6, v22);
  (*(v11 + 8))(v13, v10);
  v24 = v30;
  v25 = v30 + v7[14];
  v26 = *v25;
  v27 = *(v25 + 8);
  v41 = v26;
  v42 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.projectedValue.getter();
  v36 = v24;
  v37 = v10;
  v38 = v23;
  v39 = v20;
  v40 = v21;
  swift_getOpaqueTypeConformance2();
  v28 = v33;
  View.alert(isPresented:content:)();

  return (*(v34 + 8))(v17, v28);
}

uint64_t closure #1 in closure #5 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(type metadata accessor for Collaboration.Management.View(0) + 48));
  v7 = *v6;
  v8 = *(v6 + 1);
  v14[16] = v7;
  v15 = v8;
  v14[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.setter();
  v9 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v9, v2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "[Management] Remove Join Request button tapped", v12, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

__n128 closure #2 in closure #5 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v25 - v6;
  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v5, v7, v2);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  v11 = v10;
  (*(v3 + 8))(v7, v2);
  *&v25[0] = v9;
  *(&v25[0] + 1) = v11;
  _sS2SSysWl_0();
  v12 = Text.init<A>(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v19 = v16 & 1;
  v26 = v16 & 1;
  v20 = static Color.red.getter();
  KeyPath = swift_getKeyPath();
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v19;
  *(a1 + 24) = v18;
  v22 = v25[5];
  *(a1 + 96) = v25[4];
  *(a1 + 112) = v22;
  *(a1 + 128) = v25[6];
  v23 = v25[1];
  *(a1 + 32) = v25[0];
  *(a1 + 48) = v23;
  result = v25[3];
  *(a1 + 64) = v25[2];
  *(a1 + 80) = result;
  *(a1 + 144) = KeyPath;
  *(a1 + 152) = v20;
  return result;
}

uint64_t closure #3 in closure #5 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v57 = a2;
  v51 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  __chkstk_darwin();
  v52 = v2;
  v54 = v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Alert.Button();
  __chkstk_darwin();
  v56 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v55 = v43 - v4;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v43 - v9;
  String.LocalizationValue.init(stringLiteral:)();
  v11 = *(v6 + 16);
  v43[4] = v6 + 16;
  v44 = v11;
  v11(v8, v10, v5);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v12 = static NSBundle.module;
  v13 = static NSBundle.module;
  v58 = v12;
  v14 = v13;
  static Locale.current.getter();
  v15 = v14;
  v16 = String.init(localized:table:bundle:locale:comment:)();
  v18 = v17;
  v19 = *(v6 + 8);
  v19(v10, v5);
  v43[1] = v6 + 8;
  v59 = v16;
  v60 = v18;
  v43[0] = _sS2SSysWl_0();
  v20 = Text.init<A>(_:)();
  v49 = v21;
  v50 = v20;
  v47 = v22;
  v48 = v23;
  String.LocalizationValue.init(stringLiteral:)();
  v24 = v44;
  v44(v8, v10, v5);
  static Locale.current.getter();
  v25 = String.init(localized:table:bundle:locale:comment:)();
  v27 = v26;
  v19(v10, v5);
  v59 = v25;
  v60 = v27;
  v46 = Text.init<A>(_:)();
  v43[3] = v28;
  v45 = v29;
  v43[2] = v30 & 1;
  String.LocalizationValue.init(stringLiteral:)();
  v24(v8, v10, v5);
  static Locale.current.getter();
  v31 = String.init(localized:table:bundle:locale:comment:)();
  v33 = v32;
  v19(v10, v5);
  v59 = v31;
  v60 = v33;
  v34 = Text.init<A>(_:)();
  v36 = v35;
  v38 = v37;
  v39 = v54;
  outlined init with copy of Collaboration.Management.View(v53, v54, type metadata accessor for Collaboration.Management.View);
  v40 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v41 = swift_allocObject();
  outlined init with take of Collaboration.Management.View(v39, v41 + v40, type metadata accessor for Collaboration.Management.View);
  static Alert.Button.destructive(_:action:)();
  outlined consume of Text.Storage(v34, v36, v38 & 1);

  static Alert.Button.cancel(_:)();
  return Alert.init(title:message:primaryButton:secondaryButton:)();
}

uint64_t closure #1 in closure #3 in closure #1 in closure #1 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DismissAction();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_1, &_sScPSgMR_1);
  __chkstk_darwin();
  v10 = &v15 - v9;
  v11 = *(a1 + 8);
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_1(0, 0, v10, a3, v13);

  type metadata accessor for Collaboration.Management.View(0);
  specialized Environment.wrappedValue.getter(v8);
  DismissAction.callAsFunction()();
  return (*(v6 + 8))(v8, v5);
}

uint64_t closure #6 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(uint64_t a1)
{
  v2 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  outlined init with copy of Collaboration.Management.View(a1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  outlined init with take of Collaboration.Management.View(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for Collaboration.Management.View);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8MusicKit8PlaylistV0aB8InternalE12CollaboratorVGMd, &_sSay8MusicKit8PlaylistV0aB8InternalE12CollaboratorVGMR);
  type metadata accessor for Collaboration.Management.View.CollaboratorRowView(0);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type [Playlist.Collaborator] and conformance [A], &_sSay8MusicKit8PlaylistV0aB8InternalE12CollaboratorVGMd, &_sSay8MusicKit8PlaylistV0aB8InternalE12CollaboratorVGMR, &protocol conformance descriptor for [A]);
  lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Collaboration.Management.View.CollaboratorRowView and conformance Collaboration.Management.View.CollaboratorRowView, type metadata accessor for Collaboration.Management.View.CollaboratorRowView, &protocol conformance descriptor for Collaboration.Management.View.CollaboratorRowView);
  lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Playlist.Collaborator and conformance Playlist.Collaborator, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
  return ForEach<>.init(_:content:)();
}

uint64_t closure #7 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v20 - v7;
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9 = *(v21 + 16);

  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);
  v21 = v9;
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v11._object = 0x80000001004D2100;
  v11._countAndFlagsBits = 0xD000000000000010;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v11);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v4 + 16))(v6, v8, v3);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v12 = static NSBundle.module;
  static Locale.current.getter();
  v13 = String.init(localized:table:bundle:locale:comment:)();
  v15 = v14;
  (*(v4 + 8))(v8, v3);
  v21 = v13;
  v22 = v15;
  _sS2SSysWl_0();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v17;
  *(a2 + 16) = v18 & 1;
  *(a2 + 24) = v19;
  return result;
}

uint64_t closure #8 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA6ToggleVyAA4TextVGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA6ToggleVyAA4TextVGGMR) + 44);
  outlined init with copy of Collaboration.Management.View(a1, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  type metadata accessor for MainActor();
  v6 = static MainActor.shared.getter();
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = &protocol witness table for MainActor;
  outlined init with take of Collaboration.Management.View(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for Collaboration.Management.View);
  outlined init with copy of Collaboration.Management.View(a1, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = &protocol witness table for MainActor;
  outlined init with take of Collaboration.Management.View(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v7, type metadata accessor for Collaboration.Management.View);
  Binding.init(get:set:)();
  return Toggle.init(isOn:label:)();
}

void closure #1 in closure #1 in closure #8 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(BOOL *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = (v3 & 1) == 0;
}

double closure #2 in closure #1 in closure #8 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_1, &_sScPSgMR_1);
  __chkstk_darwin();
  v7 = &v14[-v6];
  v8 = *a1;
  v9 = *(a4 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = (v8 & 1) == 0;
  v14[15] = v10;

  static Published.subscript.setter();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v9;
  *(v12 + 40) = v10;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5_0(0, 0, v7, &async function pointer to partial apply for closure #1 in Collaboration.Management.Model.updateShareOption(isOpen:), v12);

  return result;
}

uint64_t closure #3 in closure #1 in closure #8 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v16 - v6;
  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v5, v7, v2);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  v11 = v10;
  (*(v3 + 8))(v7, v2);
  v16[1] = v9;
  v16[2] = v11;
  _sS2SSysWl_0();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v13;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v15;
  return result;
}

__n128 closure #10 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<Q0>(uint64_t a2@<X8>)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v38[-v7];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v42 & 1) == 0)
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v4 + 16))(v6, v8, v3);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v22 = static NSBundle.module;
    static Locale.current.getter();
    v23 = String.init(localized:table:bundle:locale:comment:)();
    v25 = v24;
    (*(v4 + 8))(v8, v3);
    *&v42 = v23;
    *(&v42 + 1) = v25;
    _sS2SSysWl_0();
    v15 = Text.init<A>(_:)();
    v17 = v15;
    v18 = v16;
    *&v39 = v15;
    *(&v39 + 1) = v16;
    v20 = v26 & 1;
    v40.n128_u64[0] = v26 & 1;
    v40.n128_u64[1] = v27;
    LOBYTE(v41) = 0;
    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9 = *(v42 + 16);

  v10 = (v4 + 16);
  if (v9)
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*v10)(v6, v8, v3);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v11 = static NSBundle.module;
    static Locale.current.getter();
    v12 = String.init(localized:table:bundle:locale:comment:)();
    v14 = v13;
    (*(v4 + 8))(v8, v3);
    *&v42 = v12;
    *(&v42 + 1) = v14;
    _sS2SSysWl_0();
    v15 = Text.init<A>(_:)();
    v17 = v15;
    v18 = v16;
    v20 = v19 & 1;
    *&v39 = v15;
    *(&v39 + 1) = v16;
    v40.n128_u64[0] = v19 & 1;
    v40.n128_u64[1] = v21;
    LOBYTE(v41) = 1;
LABEL_9:
    outlined copy of Text.Storage(v15, v16, v20);

    _ConditionalContent<>.init(storage:)();
    v39 = v42;
    v40 = v43;
    v41 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAEGMd, &_s7SwiftUI19_ConditionalContentVyAA4TextVAEGMR);
    lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined consume of Text.Storage(v17, v18, v20);

    goto LABEL_10;
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*v10)(v6, v8, v3);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v31 = static NSBundle.module;
  static Locale.current.getter();
  v32 = String.init(localized:table:bundle:locale:comment:)();
  v34 = v33;
  (*(v4 + 8))(v8, v3);
  *&v42 = v32;
  *(&v42 + 1) = v34;
  _sS2SSysWl_0();
  *&v39 = Text.init<A>(_:)();
  *(&v39 + 1) = v35;
  v40.n128_u64[0] = v36 & 1;
  v40.n128_u64[1] = v37;
  v41 = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAEGMd, &_s7SwiftUI19_ConditionalContentVyAA4TextVAEGMR);
  lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
LABEL_10:
  result = v43;
  v29 = v44;
  v30 = v45;
  *a2 = v42;
  *(a2 + 16) = result;
  *(a2 + 32) = v29;
  *(a2 + 33) = v30;
  return result;
}

uint64_t closure #2 in closure #1 in Collaboration.Management.View.body.getter(uint64_t a1)
{
  type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMR);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v7[-v4];
  static ToolbarItemPlacement.topBarLeading.getter();
  v8 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Button<DefaultButtonLabel> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMR, &protocol conformance descriptor for Button<A>);
  ToolbarItem<>.init(placement:content:)();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<DefaultButtonLabel>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMR, &protocol conformance descriptor for ToolbarItem<A, B>);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t closure #1 in closure #2 in closure #1 in Collaboration.Management.View.body.getter(uint64_t a1)
{
  v2 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  type metadata accessor for ButtonRole();
  __chkstk_darwin();
  static ButtonRole.close.getter();
  outlined init with copy of Collaboration.Management.View(a1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  outlined init with take of Collaboration.Management.View(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for Collaboration.Management.View);
  return Button<>.init(role:action:)();
}

uint64_t closure #1 in closure #1 in closure #2 in closure #1 in Collaboration.Management.View.body.getter(uint64_t a1)
{
  v16 = type metadata accessor for EnvironmentValues();
  v2 = *(v16 - 8);
  __chkstk_darwin();
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  __chkstk_darwin();
  v6 = &v15 - v5;
  v7 = type metadata accessor for DismissAction();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Collaboration.Management.View(0);
  outlined init with copy of TaskPriority?(a1 + *(v11 + 20), v6, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    v12 = static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  DismissAction.callAsFunction()();
  return (*(v8 + 8))(v10, v7);
}

void closure #2 in Collaboration.Management.View.body.getter(uint64_t a1, _BYTE *a2)
{
  v3 = type metadata accessor for DismissAction();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 == 1)
  {
    type metadata accessor for Collaboration.Management.View(0);
    specialized Environment.wrappedValue.getter(v6);
    DismissAction.callAsFunction()();
    (*(v4 + 8))(v6, v3);
  }
}

void one-time initialization function for collaborationGlyphFont()
{
  if (one-time initialization token for isVision != -1)
  {
    swift_once();
  }

  if (static Collaboration.Management.View.Specs.isVision == 1)
  {
    v0 = static Font.largeTitle.getter();
  }

  else
  {
    static Font.title2.getter();
    v0 = Font.bold()();
  }

  static Collaboration.Management.View.Specs.collaborationGlyphFont = v0;
}

uint64_t one-time initialization function for cellHeight()
{
  if (one-time initialization token for isVision != -1)
  {
    result = swift_once();
  }

  v0 = 56.0;
  if (static Collaboration.Management.View.Specs.isVision)
  {
    v0 = 68.0;
  }

  static Collaboration.Management.View.Specs.cellHeight = *&v0;
  return result;
}

uint64_t one-time initialization function for titleFont(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  if (one-time initialization token for isVision != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  if (static Collaboration.Management.View.Specs.isVision == 1)
  {
    result = a2();
  }

  else
  {
    result = a3();
  }

  *a4 = result;
  return result;
}

void one-time initialization function for shareButtonFontWeight(uint64_t a1)
{
  if (one-time initialization token for isVision != -1)
  {
    swift_once();
  }

  if (static Collaboration.Management.View.Specs.isVision == 1)
  {
    static Font.Weight.semibold.getter();
  }

  else
  {
    static Font.Weight.regular.getter();
  }

  static Collaboration.Management.View.Specs.shareButtonFontWeight = v1;
}

uint64_t one-time initialization function for shareButtonStackTopPadding()
{
  if (one-time initialization token for isVision != -1)
  {
    result = swift_once();
  }

  v0 = 12.0;
  if (static Collaboration.Management.View.Specs.isVision)
  {
    v0 = 0.0;
  }

  static Collaboration.Management.View.Specs.shareButtonStackTopPadding = *&v0;
  return result;
}

uint64_t one-time initialization function for resetLinkGroupTopPadding()
{
  if (one-time initialization token for isVision != -1)
  {
    result = swift_once();
  }

  v0 = -4.0;
  if (static Collaboration.Management.View.Specs.isVision)
  {
    v0 = 0.0;
  }

  static Collaboration.Management.View.Specs.resetLinkGroupTopPadding = *&v0;
  return result;
}

uint64_t one-time initialization function for controlLength()
{
  if (one-time initialization token for isVision != -1)
  {
    result = swift_once();
  }

  v0 = 32.0;
  if (static Collaboration.Management.View.Specs.isVision)
  {
    v0 = 44.0;
  }

  static Collaboration.Management.View.Specs.controlLength = *&v0;
  return result;
}

uint64_t one-time initialization function for artworkLength()
{
  if (one-time initialization token for isVision != -1)
  {
    result = swift_once();
  }

  v0 = 84.0;
  if (static Collaboration.Management.View.Specs.isVision)
  {
    v0 = 169.0;
  }

  static Collaboration.Management.View.Specs.artworkLength = *&v0;
  return result;
}

uint64_t one-time initialization function for avatarLength()
{
  if (one-time initialization token for isVision != -1)
  {
    result = swift_once();
  }

  v0 = 38.0;
  if (static Collaboration.Management.View.Specs.isVision)
  {
    v0 = 48.0;
  }

  static Collaboration.Management.View.Specs.avatarLength = *&v0;
  return result;
}

uint64_t one-time initialization function for keyColor()
{
  if (one-time initialization token for isVision != -1)
  {
    swift_once();
  }

  if (static Collaboration.Management.View.Specs.isVision == 1)
  {
    result = static Color.accentColor.getter();
  }

  else
  {
    if (one-time initialization token for normal != -1)
    {
      swift_once();
    }

    v1 = static UIColor.MusicTint.normal;
    result = Color.init(_:)();
  }

  static Collaboration.Management.View.Specs.keyColor = result;
  return result;
}

uint64_t one-time initialization function for maxDynamicSize()
{
  v0 = type metadata accessor for DynamicTypeSize();
  __swift_allocate_value_buffer(v0, static Collaboration.Management.View.Specs.maxDynamicSize);
  v1 = __swift_project_value_buffer(v0, static Collaboration.Management.View.Specs.maxDynamicSize);
  v2 = enum case for DynamicTypeSize.accessibility2(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t one-time initialization function for dynamicSizeRange()
{
  v0 = type metadata accessor for DynamicTypeSize();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMR);
  __swift_allocate_value_buffer(v4, static Collaboration.Management.View.Specs.dynamicSizeRange);
  v5 = __swift_project_value_buffer(v4, static Collaboration.Management.View.Specs.dynamicSizeRange);
  if (one-time initialization token for maxDynamicSize != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, static Collaboration.Management.View.Specs.maxDynamicSize);
  (*(v1 + 16))(v3, v6, v0);
  lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    return (*(v1 + 32))(v5, v3, v0);
  }

  __break(1u);
  return result;
}

uint64_t Collaboration.Management.View.CollaboratorRowView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v42 = type metadata accessor for AccessibilityTraits();
  v40 = *(v42 - 8);
  __chkstk_darwin();
  v39 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin();
  v36 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyACy010_MusicKit_aB012ArtworkImageV01_hi9Internal_aB0E18artworkPlaceholderyQrx0hI00J0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAJ0h4CoreB0E0N0OAUVAA26_PreferenceWritingModifierVyAX016RadiosityEnabledS3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA8_GGQo_AX012CornerRadiusU033_F5ED3014321945F1E2BE58A044A15282LLVGA7_GAA012_AspectRatioZ0VGSg_AA6VStackVyAGyAA4TextVSg_AWyA26_A26_GSgtGGAA6SpacerVAWyACyAA08ProgressG0VyAA05EmptyG0VA37_GA7_GAGy0hR013CollaborationOAXE10ManagementOAUV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A50_tGGSgtGGAA01_d5ShapeU0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyACy010_MusicKit_aB012ArtworkImageV01_hi9Internal_aB0E18artworkPlaceholderyQrx0hI00J0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAJ0h4CoreB0E0N0OAUVAA26_PreferenceWritingModifierVyAX016RadiosityEnabledS3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA8_GGQo_AX012CornerRadiusU033_F5ED3014321945F1E2BE58A044A15282LLVGA7_GAA012_AspectRatioZ0VGSg_AA6VStackVyAGyAA4TextVSg_AWyA26_A26_GSgtGGAA6SpacerVAWyACyAA08ProgressG0VyAA05EmptyG0VA37_GA7_GAGy0hR013CollaborationOAXE10ManagementOAUV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A50_tGGSgtGGAA01_d5ShapeU0VyAA9RectangleVGGMR);
  __chkstk_darwin();
  v7 = &v29 - v6;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12swipeActions4edge15allowsFullSwipe7contentQrAA14HorizontalEdgeO_Sbqd__yXEtAaBRd__lFQOyAA15ModifiedContentVyAA6HStackVyAA05TupleC0VyAKyAKyAKy010_MusicKit_aB012ArtworkImageV01_qr9Internal_aB0E18artworkPlaceholderyQrx0qR00S0VSg_So6CGSizeVAA5ColorVtcAaBRzlFQOy_AA012_ConditionalN0VyAKyAKyAR0q4CoreB0E0W0OABVAA26_PreferenceWritingModifierVyA3_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA15_GGQo_A3_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA14_GAA18_AspectRatioLayoutVGSg_AA6VStackVyAOyAA4TextVSg_A2_yA33_A33_GSgtGGAA6SpacerVA2_yAKyAA08ProgressC0VyAA05EmptyC0VA44_GA14_GAOy0Q4Core13CollaborationOA3_E10ManagementOABV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A57_tGGSgtGGAA01_N13ShapeModifierVyAA9RectangleVGG_AKyAAA56_VyA33_GAA30_EnvironmentKeyWritingModifierVyA0_SgGGSgQo_Md, &_s7SwiftUI4ViewPAAE12swipeActions4edge15allowsFullSwipe7contentQrAA14HorizontalEdgeO_Sbqd__yXEtAaBRd__lFQOyAA15ModifiedContentVyAA6HStackVyAA05TupleC0VyAKyAKyAKy010_MusicKit_aB012ArtworkImageV01_qr9Internal_aB0E18artworkPlaceholderyQrx0qR00S0VSg_So6CGSizeVAA5ColorVtcAaBRzlFQOy_AA012_ConditionalN0VyAKyAKyAR0q4CoreB0E0W0OABVAA26_PreferenceWritingModifierVyA3_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA15_GGQo_A3_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA14_GAA18_AspectRatioLayoutVGSg_AA6VStackVyAOyAA4TextVSg_A2_yA33_A33_GSgtGGAA6SpacerVA2_yAKyAA08ProgressC0VyAA05EmptyC0VA44_GA14_GAOy0Q4Core13CollaborationOA3_E10ManagementOABV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A57_tGGSgtGGAA01_N13ShapeModifierVyAA9RectangleVGG_AKyAAA56_VyA33_GAA30_EnvironmentKeyWritingModifierVyA0_SgGGSgQo_MR);
  v31 = *(v30 - 8);
  __chkstk_darwin();
  v9 = &v29 - v8;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAcAE12swipeActions4edge15allowsFullSwipeAFQrAA14HorizontalEdgeO_Sbqd__yXEtAaBRd__lFQOyAA15ModifiedContentVyAA6HStackVyAA05TupleC0VyARyARyARy010_MusicKit_aB012ArtworkImageV01_vw9Internal_aB0E18artworkPlaceholderyQrx0vW00X0VSg_So6CGSizeVAA5ColorVtcAaBRzlFQOy_AA012_ConditionalS0VyARyARyAY0v4CoreB0E11PlaceholderOABVAA26_PreferenceWritingModifierVyA10_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA22_GGQo_A10_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA21_GAA18_AspectRatioLayoutVGSg_AA6VStackVyAVyAA4TextVSg_A9_yA40_A40_GSgtGGAA6SpacerVA9_yARyAA08ProgressC0VyAA05EmptyC0VA51_GA21_GAVy0V4Core13CollaborationOA10_E10ManagementOABV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A64_tGGSgtGGAA01_S13ShapeModifierVyAA9RectangleVGG_ARyAAA63_VyA40_GAA30_EnvironmentKeyWritingModifierVyA7_SgGGSgQo__Qo_Md, &_s7SwiftUI4ViewPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAcAE12swipeActions4edge15allowsFullSwipeAFQrAA14HorizontalEdgeO_Sbqd__yXEtAaBRd__lFQOyAA15ModifiedContentVyAA6HStackVyAA05TupleC0VyARyARyARy010_MusicKit_aB012ArtworkImageV01_vw9Internal_aB0E18artworkPlaceholderyQrx0vW00X0VSg_So6CGSizeVAA5ColorVtcAaBRzlFQOy_AA012_ConditionalS0VyARyARyAY0v4CoreB0E11PlaceholderOABVAA26_PreferenceWritingModifierVyA10_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA22_GGQo_A10_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA21_GAA18_AspectRatioLayoutVGSg_AA6VStackVyAVyAA4TextVSg_A9_yA40_A40_GSgtGGAA6SpacerVA9_yARyAA08ProgressC0VyAA05EmptyC0VA51_GA21_GAVy0V4Core13CollaborationOA10_E10ManagementOABV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A64_tGGSgtGGAA01_S13ShapeModifierVyAA9RectangleVGG_ARyAAA63_VyA40_GAA30_EnvironmentKeyWritingModifierVyA7_SgGGSgQo__Qo_MR);
  v33 = *(v32 - 8);
  __chkstk_darwin();
  v11 = &v29 - v10;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAcAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAcAE12swipeActions4edge15allowsFullSwipeAJQrAA14HorizontalEdgeO_Sbqd__yXEtAaBRd__lFQOyAA15ModifiedContentVyAA6HStackVyAA05TupleC0VyAVyAVyAVy010_MusicKit_aB012ArtworkImageV018_MusicKitInternal_aB0E18artworkPlaceholderyQrx8MusicKit7ArtworkVSg_So6CGSizeVAA5ColorVtcAaBRzlFQOy_AA012_ConditionalY0VyAVyAVyA1_09MusicCoreB0E11PlaceholderOABVAA26_PreferenceWritingModifierVyA14_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA26_GGQo_A14_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA25_GAA18_AspectRatioLayoutVGSg_AA6VStackVyAZyAA4TextVSg_A13_yA44_A44_GSgtGGAA6SpacerVA13_yAVyAA08ProgressC0VyAA05EmptyC0VA55_GA25_GAZy9MusicCore13CollaborationOA14_E10ManagementOABV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A68_tGGSgtGGAA01_Y13ShapeModifierVyAA9RectangleVGG_AVyAAA67_VyA44_GAA30_EnvironmentKeyWritingModifierVyA11_SgGGSgQo__Qo__Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAcAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAcAE12swipeActions4edge15allowsFullSwipeAJQrAA14HorizontalEdgeO_Sbqd__yXEtAaBRd__lFQOyAA15ModifiedContentVyAA6HStackVyAA05TupleC0VyAVyAVyAVy010_MusicKit_aB012ArtworkImageV018_MusicKitInternal_aB0E18artworkPlaceholderyQrx8MusicKit7ArtworkVSg_So6CGSizeVAA5ColorVtcAaBRzlFQOy_AA012_ConditionalY0VyAVyAVyA1_09MusicCoreB0E11PlaceholderOABVAA26_PreferenceWritingModifierVyA14_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA26_GGQo_A14_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA25_GAA18_AspectRatioLayoutVGSg_AA6VStackVyAZyAA4TextVSg_A13_yA44_A44_GSgtGGAA6SpacerVA13_yAVyAA08ProgressC0VyAA05EmptyC0VA55_GA25_GAZy9MusicCore13CollaborationOA14_E10ManagementOABV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A68_tGGSgtGGAA01_Y13ShapeModifierVyAA9RectangleVGG_AVyAAA67_VyA44_GAA30_EnvironmentKeyWritingModifierVyA11_SgGGSgQo__Qo__Qo_MR);
  v35 = *(v34 - 8);
  __chkstk_darwin();
  v29 = &v29 - v12;
  *v7 = static VerticalAlignment.center.getter();
  *(v7 + 1) = 0x4028000000000000;
  v7[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKy010_MusicKit_aB012ArtworkImageV01_kl9Internal_aB0E18artworkPlaceholderyQrx0kL00M0VSg_So6CGSizeVAA5ColorVtcAA0D0RzlFQOy_AA012_ConditionalJ0VyAKyAKyAN0k4CoreB0E0Q0OAYVAA26_PreferenceWritingModifierVyA0_016RadiosityEnabledV3KeyVGGAA06_FrameG0VGAA14GeometryReaderVyA12_GGQo_A0_012CornerRadiusX033_F5ED3014321945F1E2BE58A044A15282LLVGA11_GAA012_AspectRatioG0VGSg_AA6VStackVyAIyAA4TextVSg_A_yA30_A30_GSgtGGAA6SpacerVA_yAKyAA08ProgressD0VyAA05EmptyD0VA41_GA11_GAIy0kU013CollaborationOA0_E10ManagementOAYV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A54_tGGSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKy010_MusicKit_aB012ArtworkImageV01_kl9Internal_aB0E18artworkPlaceholderyQrx0kL00M0VSg_So6CGSizeVAA5ColorVtcAA0D0RzlFQOy_AA012_ConditionalJ0VyAKyAKyAN0k4CoreB0E0Q0OAYVAA26_PreferenceWritingModifierVyA0_016RadiosityEnabledV3KeyVGGAA06_FrameG0VGAA14GeometryReaderVyA12_GGQo_A0_012CornerRadiusX033_F5ED3014321945F1E2BE58A044A15282LLVGA11_GAA012_AspectRatioG0VGSg_AA6VStackVyAIyAA4TextVSg_A_yA30_A30_GSgtGGAA6SpacerVA_yAKyAA08ProgressD0VyAA05EmptyD0VA41_GA11_GAIy0kU013CollaborationOA0_E10ManagementOAYV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A54_tGGSgtGGMR);
  closure #1 in Collaboration.Management.View.CollaboratorRowView.body.getter(v1, &v7[*(v13 + 44)]);
  v7[*(v5 + 36)] = 0;
  v44 = v1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMR);
  v15 = lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, CornerRadiusModifier>, _FrameLayout>, _AspectRatioLayout>?, VStack<TupleView<(Text?, _ConditionalContent<Text, Text>?)>>, Spacer, _ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _FrameLayout>, TupleView<(Collaboration.Management.View.Moderation.Button, Collaboration.Management.View.Moderation.Button)>>?)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
  v16 = lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMR, lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  View.swipeActions<A>(edge:allowsFullSwipe:content:)();
  outlined destroy of TaskPriority?(v7, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyACy010_MusicKit_aB012ArtworkImageV01_hi9Internal_aB0E18artworkPlaceholderyQrx0hI00J0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAJ0h4CoreB0E0N0OAUVAA26_PreferenceWritingModifierVyAX016RadiosityEnabledS3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA8_GGQo_AX012CornerRadiusU033_F5ED3014321945F1E2BE58A044A15282LLVGA7_GAA012_AspectRatioZ0VGSg_AA6VStackVyAGyAA4TextVSg_AWyA26_A26_GSgtGGAA6SpacerVAWyACyAA08ProgressG0VyAA05EmptyG0VA37_GA7_GAGy0hR013CollaborationOAXE10ManagementOAUV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A50_tGGSgtGGAA01_d5ShapeU0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyACy010_MusicKit_aB012ArtworkImageV01_hi9Internal_aB0E18artworkPlaceholderyQrx0hI00J0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAJ0h4CoreB0E0N0OAUVAA26_PreferenceWritingModifierVyAX016RadiosityEnabledS3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA8_GGQo_AX012CornerRadiusU033_F5ED3014321945F1E2BE58A044A15282LLVGA7_GAA012_AspectRatioZ0VGSg_AA6VStackVyAGyAA4TextVSg_AWyA26_A26_GSgtGGAA6SpacerVAWyACyAA08ProgressG0VyAA05EmptyG0VA37_GA7_GAGy0hR013CollaborationOAXE10ManagementOAUV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A50_tGGSgtGGAA01_d5ShapeU0VyAA9RectangleVGGMR);
  v17 = v1 + *(type metadata accessor for Collaboration.Management.View.CollaboratorRowView(0) + 24);
  v18 = *v17;
  v19 = *(v17 + 8);
  v49 = v18;
  v50 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.projectedValue.getter();
  v43 = v1;
  v45 = v5;
  v46 = v14;
  v47 = v15;
  v48 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v30;
  View.alert(isPresented:content:)();

  (*(v31 + 8))(v9, v21);
  v22 = v36;
  static AccessibilityChildBehavior.combine.getter();
  v45 = v21;
  v46 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v29;
  v25 = v32;
  View.accessibilityElement(children:)();
  (*(v37 + 8))(v22, v38);
  (*(v33 + 8))(v11, v25);
  v26 = v39;
  static AccessibilityTraits.isButton.getter();
  v45 = v25;
  v46 = v23;
  swift_getOpaqueTypeConformance2();
  v27 = v34;
  View.accessibilityAddTraits(_:)();
  (*(v40 + 8))(v26, v42);
  return (*(v35 + 8))(v24, v27);
}

uint64_t closure #1 in Collaboration.Management.View.CollaboratorRowView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v146 = a2;
  v3 = type metadata accessor for Collaboration.Management.View.CollaboratorRowView(0);
  v109 = *(v3 - 8);
  __chkstk_darwin();
  v110 = v4;
  v111 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA12ProgressViewVyAA05EmptyH0VAKGAA12_FrameLayoutVGAA05TupleH0Vy9MusicCore13CollaborationO0mnB0E10ManagementO0H0V10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A2_tG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA12ProgressViewVyAA05EmptyH0VAKGAA12_FrameLayoutVGAA05TupleH0Vy9MusicCore13CollaborationO0mnB0E10ManagementO0H0V10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A2_tG_GMR);
  __chkstk_darwin();
  v116 = &v108 - v5;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA12ProgressViewVyAA05EmptyF0VAGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA12ProgressViewVyAA05EmptyF0VAGGAA12_FrameLayoutVGMR);
  __chkstk_darwin();
  v112 = &v108 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA12ProgressViewVyAA05EmptyG0VAIGAA12_FrameLayoutVGAA05TupleG0Vy9MusicCore13CollaborationO0lmB0E10ManagementO0G0V10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A0_tGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA12ProgressViewVyAA05EmptyG0VAIGAA12_FrameLayoutVGAA05TupleG0Vy9MusicCore13CollaborationO0lmB0E10ManagementO0G0V10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A0_tGGMR);
  v143 = *(v7 - 8);
  v144 = v7;
  __chkstk_darwin();
  v114 = &v108 - v8;
  v9 = type metadata accessor for Playlist();
  v139 = *(v9 - 8);
  v140 = v9;
  __chkstk_darwin();
  v138 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA12ProgressViewVyAA05EmptyG0VAIGAA12_FrameLayoutVGAA05TupleG0Vy9MusicCore13CollaborationO0lmB0E10ManagementO0G0V10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A0_tGGSgMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA12ProgressViewVyAA05EmptyG0VAIGAA12_FrameLayoutVGAA05TupleG0Vy9MusicCore13CollaborationO0lmB0E10ManagementO0G0V10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A0_tGGSgMR);
  __chkstk_darwin();
  v145 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v147 = &v108 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR_0);
  __chkstk_darwin();
  v127 = &v108 - v13;
  v14 = type metadata accessor for Artwork.CropStyle();
  v128 = *(v14 - 8);
  v129 = v14;
  __chkstk_darwin();
  v126 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  __chkstk_darwin();
  v122 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v121 = &v108 - v17;
  v18 = type metadata accessor for ArtworkImage();
  v130 = *(v18 - 8);
  v131 = v18;
  __chkstk_darwin();
  v133 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v123 = &v108 - v20;
  __chkstk_darwin();
  v125 = &v108 - v21;
  __chkstk_darwin();
  v135 = &v108 - v22;
  v136 = type metadata accessor for ArtworkImage.ReusePolicy();
  v134 = *(v136 - 8);
  __chkstk_darwin();
  v149 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v24 = *(v117 + 64);
  __chkstk_darwin();
  v118 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v132 = &v108 - v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
  __chkstk_darwin();
  v120 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v119 = &v108 - v27;
  __chkstk_darwin();
  v148 = &v108 - v28;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGA3_GAA012_AspectRatioX0VGMd, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGA3_GAA012_AspectRatioX0VGMR);
  v137 = *(v151 - 8);
  __chkstk_darwin();
  v124 = &v108 - v29;
  v30 = type metadata accessor for DynamicTypeSize();
  v31 = *(v30 - 8);
  __chkstk_darwin();
  v33 = &v108 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v35 = &v108 - v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGA3_GAA012_AspectRatioX0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGA3_GAA012_AspectRatioX0VGSgMR);
  __chkstk_darwin();
  v142 = &v108 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v38 = &v108 - v37;
  v141 = v3;
  v39 = a1;
  _s7SwiftUI11EnvironmentV12wrappedValuexvgAA15DynamicTypeSizeO_Tg5_0(v35);
  if (one-time initialization token for maxDynamicSize != -1)
  {
    swift_once();
  }

  v40 = __swift_project_value_buffer(v30, static Collaboration.Management.View.Specs.maxDynamicSize);
  (*(v31 + 16))(v33, v40, v30);
  lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v41 = dispatch thunk of static Comparable.< infix(_:_:)();
  v42 = *(v31 + 8);
  v42(v33, v30);
  v42(v35, v30);
  v43 = 1;
  v44 = 1;
  v45 = v39;
  v46 = v38;
  v47 = v151;
  v150 = v38;
  if ((v41 & 1) == 0)
  {
    v48 = v148;
    Playlist.Collaborator.artworkViewModel.getter(v148);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMd, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMR);
    v50 = v132;
    (*(*(v49 - 8) + 56))(v132, 8, 11, v49);
    v174 = 1;
    v172 = 1;
    v170 = 1;
    (*(v134 + 104))(v149, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v136);
    v51 = v118;
    outlined init with copy of Collaboration.Management.View(v50, v118, type metadata accessor for ArtworkImage.Placeholder);
    v52 = (*(v117 + 80) + 16) & ~*(v117 + 80);
    v53 = swift_allocObject();
    outlined init with take of Collaboration.Management.View(v51, v53 + v52, type metadata accessor for ArtworkImage.Placeholder);
    v118 = v53;
    v54 = v53 + ((v24 + v52 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v54 = 0;
    *(v54 + 8) = v174;
    *(v54 + 9) = *v173;
    *(v54 + 12) = *&v173[3];
    *(v54 + 16) = 0;
    *(v54 + 24) = v172;
    *(v54 + 25) = *v171;
    *(v54 + 28) = *&v171[3];
    *(v54 + 32) = 0;
    *(v54 + 40) = v170;
    *(v54 + 41) = 2;
    v55 = v119;
    outlined init with copy of TaskPriority?(v48, v119, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
    v56 = type metadata accessor for ArtworkImage.ViewModel(0);
    v57 = *(*(v56 - 8) + 48);
    if (v57(v55, 1, v56) == 1)
    {
      outlined destroy of TaskPriority?(v55, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
      v58 = type metadata accessor for Artwork();
      v59 = v121;
      (*(*(v58 - 8) + 56))(v121, 1, 1, v58);
    }

    else
    {
      v60 = type metadata accessor for Artwork();
      v61 = *(v60 - 8);
      v59 = v121;
      (*(v61 + 16))(v121, v55, v60);
      outlined destroy of ArtworkImage.Placeholder(v55, type metadata accessor for ArtworkImage.ViewModel);
      (*(v61 + 56))(v59, 0, 1, v60);
    }

    outlined init with copy of TaskPriority?(v59, v122, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
    ArtworkImage.init(_:)();
    outlined destroy of TaskPriority?(v59, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
    ArtworkImage.artworkReusablePolicy(_:)();
    v62 = v120;
    outlined init with copy of TaskPriority?(v148, v120, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
    v63 = v57(v62, 1, v56);
    v108 = v45;
    if (v63 == 1)
    {
      outlined destroy of TaskPriority?(v62, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
      v64 = v127;
      v65 = v128;
      v66 = v129;
      (*(v128 + 56))(v127, 1, 1, v129);
      v67 = v126;
      v43 = 1;
    }

    else
    {
      v64 = v127;
      outlined init with copy of TaskPriority?(v62 + *(v56 + 20), v127, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR_0);
      outlined destroy of ArtworkImage.Placeholder(v62, type metadata accessor for ArtworkImage.ViewModel);
      v65 = v128;
      v66 = v129;
      v68 = (*(v128 + 48))(v64, 1, v129);
      v67 = v126;
      v43 = 1;
      if (v68 != 1)
      {
        (*(v65 + 32))(v126, v64, v66);
LABEL_15:
        v70 = v123;
        v71 = v133;
        ArtworkImage.artworkCropStyle(_:)();
        (*(v65 + 8))(v67, v66);
        v72 = v131;
        v73 = *(v130 + 8);
        v73(v71, v131);
        v74 = v125;
        ArtworkImage.artworkIdealAspectRatio(_:contentMode:)();
        v73(v70, v72);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy010_MusicKit_aB012ArtworkImageV0f4CoreB0E11PlaceholderO4ViewVAA26_PreferenceWritingModifierVyAI016RadiosityEnabledM3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyAVGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy010_MusicKit_aB012ArtworkImageV0f4CoreB0E11PlaceholderO4ViewVAA26_PreferenceWritingModifierVyAI016RadiosityEnabledM3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyAVGGMR);
        lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout>, GeometryReader<ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout>>> and conformance <> _ConditionalContent<A, B>();
        v75 = v124;
        ArtworkImage.artworkPlaceholder<A>(_:)();

        v73(v74, v72);
        v73(v135, v72);
        (*(v134 + 8))(v149, v136);
        outlined destroy of ArtworkImage.Placeholder(v132, type metadata accessor for ArtworkImage.Placeholder);
        outlined destroy of TaskPriority?(v148, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
        v76 = v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGMd, &_s7SwiftUI15ModifiedContentVy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGMR) + 36);
        *v76 = 0;
        *(v76 + 8) = 0;
        *(v76 + 16) = 2;
        if (one-time initialization token for avatarLength != -1)
        {
          swift_once();
        }

        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v77 = (v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGA3_GMd, &_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGA3_GMR) + 36));
        v78 = v165;
        *v77 = v164;
        v77[1] = v78;
        v77[2] = v166;
        v46 = v150;
        v47 = v151;
        v79 = v75 + *(v151 + 36);
        *v79 = 0;
        *(v79 + 8) = 257;
        outlined init with take of URL?(v75, v46, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGA3_GAA012_AspectRatioX0VGMd, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGA3_GAA012_AspectRatioX0VGMR);
        v44 = 0;
        v45 = v108;
        goto LABEL_18;
      }
    }

    if (one-time initialization token for fallback != -1)
    {
      swift_once();
    }

    v69 = __swift_project_value_buffer(v66, static Artwork.CropStyle.fallback);
    (*(v65 + 16))(v67, v69, v66);
    if ((*(v65 + 48))(v64, 1, v66) != 1)
    {
      outlined destroy of TaskPriority?(v64, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR_0);
    }

    goto LABEL_15;
  }

LABEL_18:
  (*(v137 + 56))(v46, v44, 1, v47);
  v151 = static HorizontalAlignment.leading.getter();
  LOBYTE(v154[0]) = 1;
  closure #1 in closure #1 in Collaboration.Management.View.CollaboratorRowView.body.getter(v45, v162);
  *&v161[23] = v162[1];
  *&v161[39] = v162[2];
  *&v161[55] = v162[3];
  v161[71] = v163;
  *&v161[7] = v162[0];
  LODWORD(v149) = LOBYTE(v154[0]);
  swift_getKeyPath();
  swift_getKeyPath();
  v80 = v138;
  static Published.subscript.getter();

  v81 = Playlist.isOwner.getter();
  (*(v139 + 8))(v80, v140);
  if (v81 != 2 && (v81 & 1) != 0)
  {
    v82 = Playlist.Collaborator.isPending.getter();
    if (v82 != 2 && (v82 & 1) != 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v83 = specialized Set.contains(_:)(v45, v154[0]);

      if (v83)
      {
        v84 = v112;
        ProgressView<>.init<>()();
        if (one-time initialization token for controlLength != -1)
        {
          swift_once();
        }

        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v85 = (v84 + *(v115 + 36));
        v86 = v168;
        *v85 = v167;
        v85[1] = v86;
        v85[2] = v169;
        outlined init with copy of TaskPriority?(v84, v116, &_s7SwiftUI15ModifiedContentVyAA12ProgressViewVyAA05EmptyF0VAGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA12ProgressViewVyAA05EmptyF0VAGGAA12_FrameLayoutVGMR);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy9MusicCore13CollaborationO0efB0E10ManagementO0D0V10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_APtGMd, &_s7SwiftUI9TupleViewVy9MusicCore13CollaborationO0efB0E10ManagementO0D0V10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_APtGMR);
        lazy protocol witness table accessor for type ModifiedContent<ProgressView<EmptyView, EmptyView>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
        lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type TupleView<(Collaboration.Management.View.Moderation.Button, Collaboration.Management.View.Moderation.Button)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy9MusicCore13CollaborationO0efB0E10ManagementO0D0V10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_APtGMd, &_s7SwiftUI9TupleViewVy9MusicCore13CollaborationO0efB0E10ManagementO0D0V10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_APtGMR, &protocol conformance descriptor for TupleView<A>);
        v87 = v114;
        _ConditionalContent<>.init(storage:)();
        outlined destroy of TaskPriority?(v84, &_s7SwiftUI15ModifiedContentVyAA12ProgressViewVyAA05EmptyF0VAGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA12ProgressViewVyAA05EmptyF0VAGGAA12_FrameLayoutVGMR);
      }

      else
      {
        v88 = v111;
        outlined init with copy of Collaboration.Management.View(v45, v111, type metadata accessor for Collaboration.Management.View.CollaboratorRowView);
        v89 = (*(v109 + 80) + 16) & ~*(v109 + 80);
        v90 = swift_allocObject();
        outlined init with take of Collaboration.Management.View(v88, v90 + v89, type metadata accessor for Collaboration.Management.View.CollaboratorRowView);
        outlined init with copy of Collaboration.Management.View(v45, v88, type metadata accessor for Collaboration.Management.View.CollaboratorRowView);
        v91 = swift_allocObject();
        outlined init with take of Collaboration.Management.View(v88, v91 + v89, type metadata accessor for Collaboration.Management.View.CollaboratorRowView);

        v92 = v116;
        *v116 = 1;
        *(v92 + 1) = partial apply for closure #2 in closure #1 in Collaboration.Management.View.CollaboratorRowView.body.getter;
        *(v92 + 2) = v90;
        v92[24] = 0;
        *(v92 + 4) = partial apply for closure #3 in closure #1 in Collaboration.Management.View.CollaboratorRowView.body.getter;
        *(v92 + 5) = v91;

        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy9MusicCore13CollaborationO0efB0E10ManagementO0D0V10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_APtGMd, &_s7SwiftUI9TupleViewVy9MusicCore13CollaborationO0efB0E10ManagementO0D0V10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_APtGMR);
        lazy protocol witness table accessor for type ModifiedContent<ProgressView<EmptyView, EmptyView>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
        lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type TupleView<(Collaboration.Management.View.Moderation.Button, Collaboration.Management.View.Moderation.Button)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy9MusicCore13CollaborationO0efB0E10ManagementO0D0V10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_APtGMd, &_s7SwiftUI9TupleViewVy9MusicCore13CollaborationO0efB0E10ManagementO0D0V10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_APtGMR, &protocol conformance descriptor for TupleView<A>);
        v87 = v114;
        _ConditionalContent<>.init(storage:)();
      }

      outlined init with take of URL?(v87, v147, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA12ProgressViewVyAA05EmptyG0VAIGAA12_FrameLayoutVGAA05TupleG0Vy9MusicCore13CollaborationO0lmB0E10ManagementO0G0V10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A0_tGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA12ProgressViewVyAA05EmptyG0VAIGAA12_FrameLayoutVGAA05TupleG0Vy9MusicCore13CollaborationO0lmB0E10ManagementO0G0V10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A0_tGGMR);
      v43 = 0;
    }
  }

  v93 = v147;
  (*(v143 + 56))(v147, v43, 1, v144);
  v94 = v46;
  v95 = v142;
  outlined init with copy of TaskPriority?(v94, v142, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGA3_GAA012_AspectRatioX0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGA3_GAA012_AspectRatioX0VGSgMR);
  v96 = v145;
  outlined init with copy of TaskPriority?(v93, v145, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA12ProgressViewVyAA05EmptyG0VAIGAA12_FrameLayoutVGAA05TupleG0Vy9MusicCore13CollaborationO0lmB0E10ManagementO0G0V10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A0_tGGSgMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA12ProgressViewVyAA05EmptyG0VAIGAA12_FrameLayoutVGAA05TupleG0Vy9MusicCore13CollaborationO0lmB0E10ManagementO0G0V10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A0_tGGSgMR);
  v97 = v146;
  outlined init with copy of TaskPriority?(v95, v146, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGA3_GAA012_AspectRatioX0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGA3_GAA012_AspectRatioX0VGSgMR);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGA3_GAA012_AspectRatioX0VGSg_AA6VStackVyAA05TupleN0VyAA4TextVSg_ASyA24_A24_GSgtGGAA6SpacerVASyACyAA08ProgressN0VyAA05EmptyN0VA35_GA3_GA22_y0eP013CollaborationOATE10ManagementOAQV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A48_tGGSgtMd, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGA3_GAA012_AspectRatioX0VGSg_AA6VStackVyAA05TupleN0VyAA4TextVSg_ASyA24_A24_GSgtGGAA6SpacerVASyACyAA08ProgressN0VyAA05EmptyN0VA35_GA3_GA22_y0eP013CollaborationOATE10ManagementOAQV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A48_tGGSgtMR);
  v99 = (v97 + v98[12]);
  v100 = v151;
  v152[0] = v151;
  v152[1] = 0;
  v101 = v149;
  LOBYTE(v153[0]) = v149;
  *(v153 + 1) = *v161;
  *(&v153[1] + 1) = *&v161[16];
  *(&v153[2] + 1) = *&v161[32];
  *(&v153[3] + 1) = *&v161[48];
  *(&v153[4] + 1) = *&v161[64];
  v102 = v153[0];
  *v99 = v151;
  v99[1] = v102;
  v103 = v153[1];
  v104 = v153[2];
  v105 = v153[3];
  *(v99 + 73) = *(&v153[3] + 9);
  v99[3] = v104;
  v99[4] = v105;
  v99[2] = v103;
  v106 = v97 + v98[16];
  *v106 = 0;
  *(v106 + 8) = 1;
  outlined init with copy of TaskPriority?(v96, v97 + v98[20], &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA12ProgressViewVyAA05EmptyG0VAIGAA12_FrameLayoutVGAA05TupleG0Vy9MusicCore13CollaborationO0lmB0E10ManagementO0G0V10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A0_tGGSgMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA12ProgressViewVyAA05EmptyG0VAIGAA12_FrameLayoutVGAA05TupleG0Vy9MusicCore13CollaborationO0lmB0E10ManagementO0G0V10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A0_tGGSgMR);
  outlined init with copy of TaskPriority?(v152, v154, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextVSg_AA19_ConditionalContentVyA2GGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextVSg_AA19_ConditionalContentVyA2GGSgtGGMR);
  outlined destroy of TaskPriority?(v93, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA12ProgressViewVyAA05EmptyG0VAIGAA12_FrameLayoutVGAA05TupleG0Vy9MusicCore13CollaborationO0lmB0E10ManagementO0G0V10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A0_tGGSgMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA12ProgressViewVyAA05EmptyG0VAIGAA12_FrameLayoutVGAA05TupleG0Vy9MusicCore13CollaborationO0lmB0E10ManagementO0G0V10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A0_tGGSgMR);
  outlined destroy of TaskPriority?(v150, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGA3_GAA012_AspectRatioX0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGA3_GAA012_AspectRatioX0VGSgMR);
  outlined destroy of TaskPriority?(v96, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA12ProgressViewVyAA05EmptyG0VAIGAA12_FrameLayoutVGAA05TupleG0Vy9MusicCore13CollaborationO0lmB0E10ManagementO0G0V10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A0_tGGSgMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA12ProgressViewVyAA05EmptyG0VAIGAA12_FrameLayoutVGAA05TupleG0Vy9MusicCore13CollaborationO0lmB0E10ManagementO0G0V10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A0_tGGSgMR);
  v154[0] = v100;
  v154[1] = 0;
  v155 = v101;
  v157 = *&v161[16];
  v158 = *&v161[32];
  v159 = *&v161[48];
  v160 = *&v161[64];
  v156 = *v161;
  outlined destroy of TaskPriority?(v154, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextVSg_AA19_ConditionalContentVyA2GGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextVSg_AA19_ConditionalContentVyA2GGSgtGGMR);
  return outlined destroy of TaskPriority?(v95, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGA3_GAA012_AspectRatioX0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGA3_GAA012_AspectRatioX0VGSgMR);
}

uint64_t Playlist.Collaborator.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = type metadata accessor for Artwork();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  __chkstk_darwin();
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = &v24 - v7;
  __chkstk_darwin();
  v9 = &v24 - v8;
  v10 = __chkstk_darwin();
  v12 = &v24 - v11;
  v13 = *(v2 + 56);
  v13(&v24 - v11, 1, 1, v1, v10);
  Playlist.Collaborator.artwork.getter();
  v29 = *(v2 + 48);
  if (v29(v9, 1, v1) == 1)
  {
    v25 = v13;
    outlined destroy of TaskPriority?(v9, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
    type metadata accessor for UIAction(0, &_sSo16MPArtworkCatalogCML_0, MPArtworkCatalog_ptr);
    v14 = Playlist.Collaborator.name.getter();
    v26 = v6;
    v16 = static MPArtworkCatalog.monogram(for:layoutDirection:)(v14, v15, 0, 1);
    v6 = v26;

    if (v16)
    {
      v17 = v27;
      Artwork.init(_:)();
      outlined destroy of TaskPriority?(v12, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
      (v25)(v17, 0, 1, v1);
      outlined init with take of URL?(v17, v12, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
    }
  }

  else
  {
    outlined destroy of TaskPriority?(v12, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
    (*(v2 + 32))(v12, v9, v1);
    (v13)(v12, 0, 1, v1);
  }

  outlined init with copy of TaskPriority?(v12, v6, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  if (v29(v6, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(v12, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
    outlined destroy of TaskPriority?(v6, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
    v18 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v18 - 8) + 56))(v28, 1, 1, v18);
  }

  else
  {
    (*(v2 + 32))(v4, v6, v1);
    v20 = v28;
    (*(v2 + 16))(v28, v4, v1);
    v21 = type metadata accessor for ArtworkImage.ViewModel(0);
    v22 = *(v21 + 20);
    static Artwork.CropStyle.boundedBox.getter();
    (*(v2 + 8))(v4, v1);
    outlined destroy of TaskPriority?(v12, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
    v23 = type metadata accessor for Artwork.CropStyle();
    (*(*(v23 - 8) + 56))(v20 + v22, 0, 1, v23);
    return (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  }
}

double closure #1 in closure #1 in Collaboration.Management.View.CollaboratorRowView.body.getter@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v100 = a2;
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  type metadata accessor for Locale();
  __chkstk_darwin();
  v98 = v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v96 = v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v97 = v93 - v7;
  v8 = type metadata accessor for Playlist();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + *(type metadata accessor for Collaboration.Management.View.CollaboratorRowView(0) + 20));
  swift_getKeyPath();
  swift_getKeyPath();
  v93[1] = v12;
  static Published.subscript.getter();

  v13 = Playlist.isOwner.getter();
  (*(v9 + 8))(v11, v8);
  v14 = Playlist.Collaborator.displayName(isDeviceHost:)(v13 & 1);
  if (v15)
  {
    v94 = v5;
    v95 = v4;
    v106 = v14;
    v107 = v15;
    _sS2SSysWl_0();
    v16 = Text.init<A>(_:)();
    v18 = v17;
    v20 = v19;
    LODWORD(v106) = static HierarchicalShapeStyle.primary.getter();
    v21 = Text.foregroundStyle<A>(_:)();
    v23 = v22;
    v25 = v24;
    outlined consume of Text.Storage(v16, v18, v20 & 1);

    if (one-time initialization token for collaboratorRowTitleFont != -1)
    {
      swift_once();
    }

    v26 = Text.font(_:)();
    v28 = v27;
    v30 = v29;
    v32 = v31;

    outlined consume of Text.Storage(v21, v23, v25 & 1);

    v33 = v28 & 1;
    outlined copy of Text.Storage(v26, v32, v28 & 1);
    v99 = v30;

    v4 = v95;
    v5 = v94;
  }

  else
  {
    v26 = 0;
    v32 = 0;
    v33 = 0;
    v99 = 0;
  }

  v34 = Playlist.Collaborator.isPending.getter();
  if (v34 == 2 || (v34 & 1) == 0 || (Collaboration.Management.Model.isPending.getter() & 1) != 0)
  {
    v35 = Playlist.Collaborator.handle.getter();
    if (!v36)
    {
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v68 = -1;
      goto LABEL_17;
    }

    v37 = v35;
    v38 = v36;
    v95 = v32;
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v39._countAndFlagsBits = 64;
    v39._object = 0xE100000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v39);
    v40._countAndFlagsBits = v37;
    v40._object = v38;
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v40);

    v41._countAndFlagsBits = 0;
    v41._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v41);
    v42 = v97;
    String.LocalizationValue.init(stringInterpolation:)();
    (*(v5 + 16))(v96, v42, v4);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v94 = v26;
    v43 = static NSBundle.module;
    static Locale.current.getter();
    v44 = String.init(localized:table:bundle:locale:comment:)();
    v46 = v45;
    (*(v5 + 8))(v42, v4);
    v106 = v44;
    v107 = v46;
    _sS2SSysWl_0();
    v47 = Text.init<A>(_:)();
    v49 = v48;
    v51 = v50;
    LODWORD(v106) = static HierarchicalShapeStyle.secondary.getter();
    v52 = Text.foregroundStyle<A>(_:)();
    v54 = v53;
    v56 = v55;
    outlined consume of Text.Storage(v47, v49, v51 & 1);

    if (one-time initialization token for collaboratorRowSubtitleFont != -1)
    {
      swift_once();
    }

    v57 = Text.font(_:)();
    v59 = v58;
    v61 = v60;
    v63 = v62;

    outlined consume of Text.Storage(v52, v54, v56 & 1);

    v101 = v57;
    v102 = v59;
    v103 = v61 & 1;
    v104 = v63;
    v105 = 1;
    _ConditionalContent<>.init(storage:)();
    v64 = v106;
    v65 = v107;
    v66 = v108;
    v67 = v109;
    v68 = v110;
    outlined copy of _ConditionalContent<Text, Text>.Storage(v106, v107, v108, v109);
    v26 = v94;
  }

  else
  {
    v95 = v32;
    v72 = v97;
    String.LocalizationValue.init(stringLiteral:)();
    (*(v5 + 16))(v96, v72, v4);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v73 = static NSBundle.module;
    static Locale.current.getter();
    v74 = String.init(localized:table:bundle:locale:comment:)();
    v76 = v75;
    (*(v5 + 8))(v72, v4);
    v106 = v74;
    v107 = v76;
    _sS2SSysWl_0();
    v77 = Text.init<A>(_:)();
    v79 = v78;
    v81 = v80;
    LODWORD(v106) = static HierarchicalShapeStyle.secondary.getter();
    v82 = Text.foregroundStyle<A>(_:)();
    v84 = v83;
    v86 = v85;
    outlined consume of Text.Storage(v77, v79, v81 & 1);

    if (one-time initialization token for collaboratorRowSubtitleFont != -1)
    {
      swift_once();
    }

    v87 = Text.font(_:)();
    v89 = v88;
    v91 = v90;
    v98 = v92;

    outlined consume of Text.Storage(v82, v84, v86 & 1);

    v101 = v87;
    v102 = v89;
    v103 = v91 & 1;
    v104 = v98;
    v105 = 0;
    _ConditionalContent<>.init(storage:)();
    v64 = v106;
    v65 = v107;
    v66 = v108;
    v67 = v109;
    v68 = v110;
    outlined copy of _ConditionalContent<Text, Text>.Storage(v106, v107, v108, v109);
  }

  v32 = v95;
LABEL_17:
  v69 = v99;
  outlined copy of Text?(v26, v32, v33, v99);
  outlined copy of _ConditionalContent<Text, Text>?(v64, v65, v66, v67, v68);
  outlined consume of Text?(v26, v32, v33, v69);
  outlined consume of _ConditionalContent<Text, Text>?(v64, v65, v66, v67, v68);
  v70 = v100;
  *v100 = v26;
  v70[1] = v32;
  v70[2] = v33;
  v70[3] = v69;
  v70[4] = v64;
  v70[5] = v65;
  v70[6] = v66;
  v70[7] = v67;
  *(v70 + 64) = v68;
  outlined consume of _ConditionalContent<Text, Text>?(v64, v65, v66, v67, v68);
  return outlined consume of Text?(v26, v32, v33, v69);
}

uint64_t Playlist.Collaborator.displayName(isDeviceHost:)(char a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  result = Playlist.Collaborator.name.getter();
  if (v3)
  {
    v4 = result;
    v5 = v3;
    if (Playlist.Collaborator.isHost.getter())
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v6._countAndFlagsBits = 0;
      v6._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v6);
      v7._countAndFlagsBits = v4;
      v7._object = v5;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v7);

      v8._countAndFlagsBits = 0x2972656E774F2820;
      v8._object = 0xE800000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v8);
      String.LocalizationValue.init(stringInterpolation:)();
      if (a1)
      {
        if (one-time initialization token for module != -1)
        {
          swift_once();
        }
      }

      else if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v9 = static NSBundle.module;
      static Locale.current.getter();
      return String.init(localized:defaultValue:table:bundle:locale:comment:)();
    }

    else
    {
      return v4;
    }
  }

  return result;
}

double closure #2 in closure #1 in Collaboration.Management.View.CollaboratorRowView.body.getter(uint64_t a1, const char *a2, int a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = Logger.collaboration.unsafeMutableAddressor();
  (*(v7 + 16))(v9, v10, v6);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, a2, v13, 2u);
  }

  (*(v7 + 8))(v9, v6);
  type metadata accessor for Collaboration.Management.View.CollaboratorRowView(0);
  return Collaboration.Management.Model.moderateCollaborator(_:action:)(a1, a3);
}

uint64_t closure #2 in Collaboration.Management.View.CollaboratorRowView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v29 = *(type metadata accessor for Collaboration.Management.View.CollaboratorRowView(0) - 8);
  v3 = *(v29 + 64);
  __chkstk_darwin();
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd_0, &_s7SwiftUI10ButtonRoleVSgMR_0);
  __chkstk_darwin();
  v30 = &v27 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v28 = &v27 - v7;
  v8 = type metadata accessor for Playlist();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v12 = Playlist.isOwner.getter();
  (*(v9 + 8))(v11, v8);
  if (v12 == 2 || (v12 & 1) == 0 || (Playlist.Collaborator.isHost.getter() & 1) != 0 || (v13 = Playlist.Collaborator.isPending.getter(), v13 == 2) || (v13 & 1) != 0)
  {
    v14 = 1;
    v15 = v32;
  }

  else
  {
    v17 = v30;
    static ButtonRole.cancel.getter();
    v18 = type metadata accessor for ButtonRole();
    (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
    v19 = v31;
    outlined init with copy of Collaboration.Management.View(a1, v31, type metadata accessor for Collaboration.Management.View.CollaboratorRowView);
    v20 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v21 = swift_allocObject();
    outlined init with take of Collaboration.Management.View(v19, v21 + v20, type metadata accessor for Collaboration.Management.View.CollaboratorRowView);
    v22 = v28;
    Button.init(role:action:label:)();
    v23 = static Color.red.getter();
    KeyPath = swift_getKeyPath();
    v25 = (v22 + *(v5 + 36));
    *v25 = KeyPath;
    v25[1] = v23;
    v26 = v32;
    outlined init with take of URL?(v22, v32, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
    v15 = v26;
    v14 = 0;
  }

  return (*(v6 + 56))(v15, v14, 1, v5);
}

uint64_t closure #1 in closure #2 in Collaboration.Management.View.CollaboratorRowView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMR);
  __chkstk_darwin();
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v21[-v8];
  v10 = type metadata accessor for Playlist.Collaborator();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = type metadata accessor for Collaboration.Management.View.CollaboratorRowView(0);
  outlined init with copy of TaskPriority?(v9, v7, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy8MusicKit8PlaylistV0dE8InternalE12CollaboratorVSgGMd, &_s7SwiftUI5StateVy8MusicKit8PlaylistV0dE8InternalE12CollaboratorVSgGMR);
  State.wrappedValue.setter();
  outlined destroy of TaskPriority?(v9, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMR);
  v13 = (a1 + *(v12 + 24));
  v14 = *v13;
  v15 = *(v13 + 1);
  v21[16] = v14;
  v22 = v15;
  v21[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.setter();
  v16 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v16, v2);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "[Management] Remove swipe action triggered", v19, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t closure #2 in closure #2 in Collaboration.Management.View.CollaboratorRowView.body.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v16 - v6;
  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v5, v7, v2);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  v11 = v10;
  (*(v3 + 8))(v7, v2);
  v16[1] = v9;
  v16[2] = v11;
  _sS2SSysWl_0();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v13;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v15;
  return result;
}

uint64_t closure #3 in Collaboration.Management.View.CollaboratorRowView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v57 = a2;
  v51 = *(type metadata accessor for Collaboration.Management.View.CollaboratorRowView(0) - 8);
  __chkstk_darwin();
  v52 = v2;
  v54 = v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Alert.Button();
  __chkstk_darwin();
  v56 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v55 = v43 - v4;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v43 - v9;
  String.LocalizationValue.init(stringLiteral:)();
  v44 = *(v6 + 16);
  v44(v8, v10, v5);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v11 = static NSBundle.module;
  v12 = static NSBundle.module;
  v43[3] = v11;
  v13 = v12;
  static Locale.current.getter();
  v14 = v13;
  v15 = String.init(localized:table:bundle:locale:comment:)();
  v17 = v16;
  v18 = *(v6 + 8);
  v18(v10, v5);
  v43[1] = v6 + 8;
  v58 = v15;
  v59 = v17;
  v43[2] = _sS2SSysWl_0();
  v19 = Text.init<A>(_:)();
  v49 = v20;
  v50 = v19;
  v47 = v21;
  v48 = v22;
  String.LocalizationValue.init(stringLiteral:)();
  v23 = v44;
  v44(v8, v10, v5);
  static Locale.current.getter();
  v43[0] = v6 + 16;
  v24 = String.init(localized:table:bundle:locale:comment:)();
  v26 = v25;
  v18(v10, v5);
  v58 = v24;
  v59 = v26;
  v27 = Text.init<A>(_:)();
  v45 = v28;
  v46 = v27;
  v43[4] = v29 & 1;
  v43[5] = v30;
  String.LocalizationValue.init(stringLiteral:)();
  v23(v8, v10, v5);
  static Locale.current.getter();
  v31 = String.init(localized:table:bundle:locale:comment:)();
  v33 = v32;
  v18(v10, v5);
  v58 = v31;
  v59 = v33;
  v34 = Text.init<A>(_:)();
  v36 = v35;
  v38 = v37;
  v39 = v54;
  outlined init with copy of Collaboration.Management.View(v53, v54, type metadata accessor for Collaboration.Management.View.CollaboratorRowView);
  v40 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v41 = swift_allocObject();
  outlined init with take of Collaboration.Management.View(v39, v41 + v40, type metadata accessor for Collaboration.Management.View.CollaboratorRowView);
  static Alert.Button.destructive(_:action:)();
  outlined consume of Text.Storage(v34, v36, v38 & 1);

  static Alert.Button.cancel(_:)();
  return Alert.init(title:message:primaryButton:secondaryButton:)();
}

uint64_t closure #1 in closure #3 in Collaboration.Management.View.CollaboratorRowView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMR);
  __chkstk_darwin();
  v1 = &v3 - v0;
  type metadata accessor for Collaboration.Management.View.CollaboratorRowView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy8MusicKit8PlaylistV0dE8InternalE12CollaboratorVSgGMd, &_s7SwiftUI5StateVy8MusicKit8PlaylistV0dE8InternalE12CollaboratorVSgGMR);
  State.wrappedValue.getter();
  Collaboration.Management.Model.remove(_:)(v1);
  return outlined destroy of TaskPriority?(v1, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMR);
}

uint64_t Collaboration.Management.View.Share.title.getter(char a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v10[-v5];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v6, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v7 = static NSBundle.module;
  static Locale.current.getter();
  v8 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v6, v1);
  return v8;
}

uint64_t Collaboration.Management.View.Share.Button.body.getter@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v53 = type metadata accessor for ColorScheme();
  v2 = *(v53 - 8);
  __chkstk_darwin();
  v52 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v51 = &v49 - v4;
  v5 = *(type metadata accessor for Collaboration.Management.View.Share.Button(0) - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackI0VGAA05TupleG0VyAA6SpacerV_AA0G0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicoP0O5BoundRtd__lFQOyAtAE10fontWeightyQrAA4FontV0T0VSgFQOyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_SgGG_Qo__s19PartialRangeThroughVyAWGQo_AA4TextVARtGGAA13_OffsetEffectVGAA010_FlexFrameI0VGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackI0VGAA05TupleG0VyAA6SpacerV_AA0G0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicoP0O5BoundRtd__lFQOyAtAE10fontWeightyQrAA4FontV0T0VSgFQOyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_SgGG_Qo__s19PartialRangeThroughVyAWGQo_AA4TextVARtGGAA13_OffsetEffectVGAA010_FlexFrameI0VGGMR);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyACyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackI0VGAA05TupleG0VyAA6SpacerV_AA0G0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicoP0O5BoundRtd__lFQOyAtAE10fontWeightyQrAA4FontV0T0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_SgGG_Qo__s19PartialRangeThroughVyAWGQo_AA4TextVARtGGAA13_OffsetEffectVGAA010_FlexFrameI0VGGA24_GMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyACyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackI0VGAA05TupleG0VyAA6SpacerV_AA0G0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicoP0O5BoundRtd__lFQOyAtAE10fontWeightyQrAA4FontV0T0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_SgGG_Qo__s19PartialRangeThroughVyAWGQo_AA4TextVARtGGAA13_OffsetEffectVGAA010_FlexFrameI0VGGA24_GMR) - 8;
  __chkstk_darwin();
  v13 = &v49 - v12;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyACyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackI0VGAA05TupleG0VyAA6SpacerV_AA0G0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicoP0O5BoundRtd__lFQOyAtAE10fontWeightyQrAA4FontV0T0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_SgGG_Qo__s19PartialRangeThroughVyAWGQo_AA4TextVARtGGAA13_OffsetEffectVGAA010_FlexFrameI0VGGA24_GA7_yAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyACyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackI0VGAA05TupleG0VyAA6SpacerV_AA0G0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicoP0O5BoundRtd__lFQOyAtAE10fontWeightyQrAA4FontV0T0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_SgGG_Qo__s19PartialRangeThroughVyAWGQo_AA4TextVARtGGAA13_OffsetEffectVGAA010_FlexFrameI0VGGA24_GA7_yAA5ColorVSgGGMR);
  __chkstk_darwin();
  v50 = &v49 - v14;
  outlined init with copy of Collaboration.Management.View(v1, &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View.Share.Button);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  outlined init with take of Collaboration.Management.View(&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for Collaboration.Management.View.Share.Button);
  v55 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackH0VGAA05TupleF0VyAA6SpacerV_AA0F0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicnO0O5BoundRtd__lFQOyArAE10fontWeightyQrAA4FontV0S0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAZSgGG_Qo__s19PartialRangeThroughVyAUGQo_AA4TextVAPtGGAA13_OffsetEffectVGAA010_FlexFrameH0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackH0VGAA05TupleF0VyAA6SpacerV_AA0F0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicnO0O5BoundRtd__lFQOyArAE10fontWeightyQrAA4FontV0S0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAZSgGG_Qo__s19PartialRangeThroughVyAUGQo_AA4TextVAPtGGAA13_OffsetEffectVGAA010_FlexFrameH0VGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v8 + 32))(v13, v10, v7);
  v17 = &v13[*(v11 + 44)];
  v18 = v61;
  *(v17 + 4) = v60;
  *(v17 + 5) = v18;
  *(v17 + 6) = v62;
  v19 = v57;
  *v17 = v56;
  *(v17 + 1) = v19;
  v20 = v59;
  *(v17 + 2) = v58;
  *(v17 + 3) = v20;
  if (Collaboration.Management.View.Share.Button.isEnabled.getter())
  {
    if (one-time initialization token for keyColor != -1)
    {
      swift_once();
    }

    v21 = static Collaboration.Management.View.Specs.keyColor;
  }

  else
  {
    v22 = [objc_opt_self() tertiaryLabelColor];
    v21 = Color.init(_:)();
  }

  KeyPath = swift_getKeyPath();
  v24 = v50;
  outlined init with take of URL?(v13, v50, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyACyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackI0VGAA05TupleG0VyAA6SpacerV_AA0G0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicoP0O5BoundRtd__lFQOyAtAE10fontWeightyQrAA4FontV0T0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_SgGG_Qo__s19PartialRangeThroughVyAWGQo_AA4TextVARtGGAA13_OffsetEffectVGAA010_FlexFrameI0VGGA24_GMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyACyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackI0VGAA05TupleG0VyAA6SpacerV_AA0G0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicoP0O5BoundRtd__lFQOyAtAE10fontWeightyQrAA4FontV0T0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_SgGG_Qo__s19PartialRangeThroughVyAWGQo_AA4TextVARtGGAA13_OffsetEffectVGAA010_FlexFrameI0VGGA24_GMR);
  v25 = (v24 + *(v49 + 36));
  *v25 = KeyPath;
  v25[1] = v21;
  v26 = v51;
  Collaboration.Management.View.Share.Button.colorScheme.getter(v51);
  v28 = v52;
  v27 = v53;
  (*(v2 + 104))(v52, enum case for ColorScheme.light(_:), v53);
  v29 = static ColorScheme.== infix(_:_:)();
  v30 = *(v2 + 8);
  v30(v28, v27);
  v30(v26, v27);
  v31 = objc_opt_self();
  v32 = &selRef_systemBackgroundColor;
  if ((v29 & 1) == 0)
  {
    v32 = &selRef_secondarySystemBackgroundColor;
  }

  v33 = [v31 *v32];
  v34 = Color.init(_:)();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyACyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackI0VGAA05TupleG0VyAA6SpacerV_AA0G0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicoP0O5BoundRtd__lFQOyAtAE10fontWeightyQrAA4FontV0T0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_SgGG_Qo__s19PartialRangeThroughVyAWGQo_AA4TextVARtGGAA13_OffsetEffectVGAA010_FlexFrameI0VGGA24_GA7_yAA5ColorVSgGGAA026_InsettableBackgroundShapeZ0VyA29_AA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyACyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackI0VGAA05TupleG0VyAA6SpacerV_AA0G0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicoP0O5BoundRtd__lFQOyAtAE10fontWeightyQrAA4FontV0T0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_SgGG_Qo__s19PartialRangeThroughVyAWGQo_AA4TextVARtGGAA13_OffsetEffectVGAA010_FlexFrameI0VGGA24_GA7_yAA5ColorVSgGGAA026_InsettableBackgroundShapeZ0VyA29_AA16RoundedRectangleVGGMR);
  v36 = v54;
  v37 = (v54 + *(v35 + 36));
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGMd, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGMR);
  v39 = v37 + *(v38 + 52);
  v40 = *(type metadata accessor for RoundedRectangle() + 20);
  v41 = enum case for RoundedCornerStyle.continuous(_:);
  v42 = type metadata accessor for RoundedCornerStyle();
  (*(*(v42 - 8) + 104))(&v39[v40], v41, v42);
  __asm { FMOV            V0.2D, #10.0 }

  *v39 = _Q0;
  *v37 = v34;
  *(v37 + *(v38 + 56)) = 256;
  return outlined init with take of URL?(v24, v36, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyACyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackI0VGAA05TupleG0VyAA6SpacerV_AA0G0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicoP0O5BoundRtd__lFQOyAtAE10fontWeightyQrAA4FontV0T0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_SgGG_Qo__s19PartialRangeThroughVyAWGQo_AA4TextVARtGGAA13_OffsetEffectVGAA010_FlexFrameI0VGGA24_GA7_yAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyACyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackI0VGAA05TupleG0VyAA6SpacerV_AA0G0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicoP0O5BoundRtd__lFQOyAtAE10fontWeightyQrAA4FontV0T0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_SgGG_Qo__s19PartialRangeThroughVyAWGQo_AA4TextVARtGGAA13_OffsetEffectVGAA010_FlexFrameI0VGGA24_GA7_yAA5ColorVSgGGMR);
}

__n128 closure #2 in Collaboration.Management.View.Share.Button.body.getter@<Q0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackF0VGAA05TupleD0VyAA6SpacerV_AA0D0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiclM0O5BoundRtd__lFQOyApAE10fontWeightyQrAA4FontV0Q0VSgFQOyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAXSgGG_Qo__s19PartialRangeThroughVyASGQo_AA4TextVANtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackF0VGAA05TupleD0VyAA6SpacerV_AA0D0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiclM0O5BoundRtd__lFQOyApAE10fontWeightyQrAA4FontV0Q0VSgFQOyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAXSgGG_Qo__s19PartialRangeThroughVyASGQo_AA4TextVANtGGMR) - 8;
  __chkstk_darwin();
  v6 = v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackH0VGAA05TupleF0VyAA6SpacerV_AA0F0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicnO0O5BoundRtd__lFQOyArAE10fontWeightyQrAA4FontV0S0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAZSgGG_Qo__s19PartialRangeThroughVyAUGQo_AA4TextVAPtGGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackH0VGAA05TupleF0VyAA6SpacerV_AA0F0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicnO0O5BoundRtd__lFQOyArAE10fontWeightyQrAA4FontV0S0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAZSgGG_Qo__s19PartialRangeThroughVyAUGQo_AA4TextVAPtGGAA13_OffsetEffectVGMR) - 8;
  __chkstk_darwin();
  v9 = v16 - v8;
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0x4008000000000000;
  v6[16] = 0;
  closure #2 in closure #2 in Collaboration.Management.View.Share.Button.body.getter(a1, &v6[*(v4 + 52)]);
  if (*a1)
  {
    v10 = 2.5;
  }

  else
  {
    v10 = 0.0;
  }

  outlined init with take of URL?(v6, v9, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackF0VGAA05TupleD0VyAA6SpacerV_AA0D0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiclM0O5BoundRtd__lFQOyApAE10fontWeightyQrAA4FontV0Q0VSgFQOyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAXSgGG_Qo__s19PartialRangeThroughVyASGQo_AA4TextVANtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackF0VGAA05TupleD0VyAA6SpacerV_AA0D0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiclM0O5BoundRtd__lFQOyApAE10fontWeightyQrAA4FontV0Q0VSgFQOyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAXSgGG_Qo__s19PartialRangeThroughVyASGQo_AA4TextVANtGGMR);
  v11 = &v9[*(v7 + 44)];
  *v11 = 0;
  *(v11 + 1) = v10;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of URL?(v9, a2, &_s7SwiftUI15ModifiedContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackH0VGAA05TupleF0VyAA6SpacerV_AA0F0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicnO0O5BoundRtd__lFQOyArAE10fontWeightyQrAA4FontV0S0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAZSgGG_Qo__s19PartialRangeThroughVyAUGQo_AA4TextVAPtGGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackH0VGAA05TupleF0VyAA6SpacerV_AA0F0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicnO0O5BoundRtd__lFQOyArAE10fontWeightyQrAA4FontV0S0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAZSgGG_Qo__s19PartialRangeThroughVyAUGQo_AA4TextVAPtGGAA13_OffsetEffectVGMR);
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackH0VGAA05TupleF0VyAA6SpacerV_AA0F0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicnO0O5BoundRtd__lFQOyArAE10fontWeightyQrAA4FontV0S0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAZSgGG_Qo__s19PartialRangeThroughVyAUGQo_AA4TextVAPtGGAA13_OffsetEffectVGAA010_FlexFrameH0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackH0VGAA05TupleF0VyAA6SpacerV_AA0F0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicnO0O5BoundRtd__lFQOyArAE10fontWeightyQrAA4FontV0S0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAZSgGG_Qo__s19PartialRangeThroughVyAUGQo_AA4TextVAPtGGAA13_OffsetEffectVGAA010_FlexFrameH0VGMR) + 36);
  v13 = v16[5];
  *(v12 + 64) = v16[4];
  *(v12 + 80) = v13;
  *(v12 + 96) = v16[6];
  v14 = v16[1];
  *v12 = v16[0];
  *(v12 + 16) = v14;
  result = v16[3];
  *(v12 + 32) = v16[2];
  *(v12 + 48) = result;
  return result;
}

uint64_t closure #2 in closure #2 in Collaboration.Management.View.Share.Button.body.getter@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v54 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMR);
  __chkstk_darwin();
  v4 = &v46[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAFSgGG_Qo_Md, &_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAFSgGG_Qo_MR);
  v48 = *(v5 - 8);
  v49 = v5;
  __chkstk_darwin();
  v7 = &v46[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiceF0O5BoundRtd__lFQOyAcAE10fontWeightyQrAA4FontV0J0VSgFQOyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAKSgGG_Qo__s19PartialRangeThroughVyAFGQo_Md, &_s7SwiftUI4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiceF0O5BoundRtd__lFQOyAcAE10fontWeightyQrAA4FontV0J0VSgFQOyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAKSgGG_Qo__s19PartialRangeThroughVyAFGQo_MR);
  v52 = *(v8 - 8);
  v53 = v8;
  __chkstk_darwin();
  v51 = &v46[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v11 = &v46[-v10];
  v47 = *a1;
  v12 = Image.init(systemName:)();
  v13 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v56 = v12;
  v57 = KeyPath;
  v58 = v13;
  static Font.Weight.semibold.getter();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
  v16 = lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  View.fontWeight(_:)();

  if (one-time initialization token for dynamicSizeRange != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v50, static Collaboration.Management.View.Specs.dynamicSizeRange);
  outlined init with copy of TaskPriority?(v17, v4, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMR);
  v56 = v15;
  v57 = v16;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMR, &protocol conformance descriptor for PartialRangeThrough<A>);
  v55 = v11;
  v18 = v49;
  View.dynamicTypeSize<A>(_:)();
  outlined destroy of TaskPriority?(v4, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMR);
  (*(v48 + 8))(v7, v18);
  v56 = Collaboration.Management.View.Share.title.getter(v47);
  v57 = v19;
  _sS2SSysWl_0();
  v20 = Text.init<A>(_:)();
  v22 = v21;
  v24 = v23;
  if (one-time initialization token for shareButtonFont != -1)
  {
    swift_once();
  }

  v25 = Text.font(_:)();
  v27 = v26;
  v29 = v28;

  outlined consume of Text.Storage(v20, v22, v24 & 1);

  if (one-time initialization token for shareButtonFontWeight != -1)
  {
    swift_once();
  }

  v30 = Text.fontWeight(_:)();
  v32 = v31;
  v34 = v33;
  v50 = v35;
  outlined consume of Text.Storage(v25, v27, v29 & 1);

  v36 = v51;
  v37 = v52;
  v38 = *(v52 + 16);
  v39 = v53;
  v38(v51, v55, v53);
  v40 = v54;
  *v54 = 0;
  *(v40 + 8) = 1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerV_AA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicfG0O5BoundRtd__lFQOyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAMSgGG_Qo__s19PartialRangeThroughVyAHGQo_AA4TextVACtMd, &_s7SwiftUI6SpacerV_AA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicfG0O5BoundRtd__lFQOyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAMSgGG_Qo__s19PartialRangeThroughVyAHGQo_AA4TextVACtMR);
  v38(v40 + v41[12], v36, v39);
  v42 = v40 + v41[16];
  *v42 = v30;
  *(v42 + 1) = v32;
  v34 &= 1u;
  v42[16] = v34;
  *(v42 + 3) = v50;
  v43 = v40 + v41[20];
  *v43 = 0x4020000000000000;
  v43[8] = 0;
  outlined copy of Text.Storage(v30, v32, v34);
  v44 = *(v37 + 8);

  v44(v55, v39);
  outlined consume of Text.Storage(v30, v32, v34);

  return (v44)(v36, v39);
}

uint64_t Collaboration.Management.View.Share.Button.isEnabled.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for Collaboration.Management.View.Share.Button(0) + 28);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    v7 = static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v9 = outlined consume of Environment<Bool>.Content(v6, 0);
    (*(v2 + 8))(v4, v1, v9);
    LOBYTE(v6) = v11[15];
  }

  return v6 & 1;
}

uint64_t Collaboration.Management.View.Share.Button.colorScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  __chkstk_darwin();
  v8 = &v14 - v7;
  v9 = type metadata accessor for Collaboration.Management.View.Share.Button(0);
  outlined init with copy of TaskPriority?(v1 + *(v9 + 24), v8, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for ColorScheme();
    return (*(*(v10 - 8) + 32))(a1, v8, v10);
  }

  else
  {
    v12 = static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double closure #1 in Collaboration.Management.View.Moderation.Button.body.getter(char a1, uint64_t a2, uint64_t a3)
{
  static Animation.spring(response:dampingFraction:blendDuration:)();
  withAnimation<A>(_:_:)();

  return result;
}

uint64_t closure #2 in Collaboration.Management.View.Moderation.Button.body.getter@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMR);
  __chkstk_darwin();
  v5 = &v15 - v4;
  v16 = Image.init(systemName:)();
  static Font.subheadline.getter();
  v6 = Font.bold()();

  KeyPath = swift_getKeyPath();
  v8 = static Color.white.getter();
  v9 = swift_getKeyPath();
  if (one-time initialization token for controlLength != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  if (a1)
  {
    v10 = static Color.red.getter();
  }

  else
  {
    v10 = static Color.green.getter();
  }

  v11 = v10;
  v12 = static Edge.Set.all.getter();
  *&v20[8] = v22[2];
  *&v20[24] = v22[3];
  *&v18 = v16;
  *(&v18 + 1) = KeyPath;
  *&v19 = v6;
  *(&v19 + 1) = v9;
  *v20 = v8;
  *&v20[40] = v22[4];
  *&v20[56] = v11;
  v20[64] = v12;
  *&v20[65] = 256;
  if (one-time initialization token for dynamicSizeRange != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v3, static Collaboration.Management.View.Specs.dynamicSizeRange);
  outlined init with copy of TaskPriority?(v13, v5, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA12_FrameLayoutVGAA016_BackgroundStyleI0VyANGGAA11_ClipEffectVyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA12_FrameLayoutVGAA016_BackgroundStyleI0VyANGGAA11_ClipEffectVyAA6CircleVGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMR, &protocol conformance descriptor for PartialRangeThrough<A>);
  View.dynamicTypeSize<A>(_:)();
  outlined destroy of TaskPriority?(v5, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMR);
  v21[4] = *&v20[32];
  v22[0] = *&v20[48];
  *(v22 + 15) = *&v20[63];
  v21[0] = v18;
  v21[1] = v19;
  v21[2] = *v20;
  v21[3] = *&v20[16];
  return outlined destroy of TaskPriority?(v21, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA12_FrameLayoutVGAA016_BackgroundStyleI0VyANGGAA11_ClipEffectVyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA12_FrameLayoutVGAA016_BackgroundStyleI0VyANGGAA11_ClipEffectVyAA6CircleVGGMR);
}

uint64_t protocol witness for View.body.getter in conformance Collaboration.Management.View.Moderation.Button@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = type metadata accessor for BorderlessButtonStyle();
  v3 = *(v2 - 8);
  v23 = v2;
  v24 = v3;
  __chkstk_darwin();
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicfG0O5BoundRtd__lFQOyAA15ModifiedContentVyALyALyALyALyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAPyAA5ColorVSgGGAA12_FrameLayoutVGAA016_BackgroundStyleP0VyAWGGAA11_ClipEffectVyAA6CircleVGG_s19PartialRangeThroughVyAHGQo_GMd, &_s7SwiftUI6ButtonVyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicfG0O5BoundRtd__lFQOyAA15ModifiedContentVyALyALyALyALyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAPyAA5ColorVSgGGAA12_FrameLayoutVGAA016_BackgroundStyleP0VyAWGGAA11_ClipEffectVyAA6CircleVGG_s19PartialRangeThroughVyAHGQo_GMR);
  v6 = *(v22 - 8);
  __chkstk_darwin();
  v8 = &v22 - v7;
  v9 = *v1;
  v11 = *(v1 + 1);
  v10 = *(v1 + 2);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v26 = v9;
  v27 = v11;
  v28 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiceF0O5BoundRtd__lFQOyAA15ModifiedContentVyAJyAJyAJyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGANyAA5ColorVSgGGAA12_FrameLayoutVGAA016_BackgroundStyleO0VyAUGGAA11_ClipEffectVyAA6CircleVGG_s19PartialRangeThroughVyAFGQo_Md, &_s7SwiftUI4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiceF0O5BoundRtd__lFQOyAA15ModifiedContentVyAJyAJyAJyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGANyAA5ColorVSgGGAA12_FrameLayoutVGAA016_BackgroundStyleO0VyAUGGAA11_ClipEffectVyAA6CircleVGG_s19PartialRangeThroughVyAFGQo_MR);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA12_FrameLayoutVGAA016_BackgroundStyleI0VyANGGAA11_ClipEffectVyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA12_FrameLayoutVGAA016_BackgroundStyleI0VyANGGAA11_ClipEffectVyAA6CircleVGGMR);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMR);
  v15 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>();
  v16 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMR, &protocol conformance descriptor for PartialRangeThrough<A>);
  v29 = v13;
  v30 = v14;
  v31 = v15;
  v32 = v16;
  swift_getOpaqueTypeConformance2();
  Button.init(action:label:)();
  BorderlessButtonStyle.init()();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Button<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicfG0O5BoundRtd__lFQOyAA15ModifiedContentVyALyALyALyALyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAPyAA5ColorVSgGGAA12_FrameLayoutVGAA016_BackgroundStyleP0VyAWGGAA11_ClipEffectVyAA6CircleVGG_s19PartialRangeThroughVyAHGQo_GMd, &_s7SwiftUI6ButtonVyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicfG0O5BoundRtd__lFQOyAA15ModifiedContentVyALyALyALyALyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAPyAA5ColorVSgGGAA12_FrameLayoutVGAA016_BackgroundStyleP0VyAWGGAA11_ClipEffectVyAA6CircleVGG_s19PartialRangeThroughVyAHGQo_GMR, &protocol conformance descriptor for Button<A>);
  lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type BorderlessButtonStyle and conformance BorderlessButtonStyle, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
  v17 = v25;
  v19 = v22;
  v18 = v23;
  View.buttonStyle<A>(_:)();
  (*(v24 + 8))(v5, v18);
  (*(v6 + 8))(v8, v19);
  v20 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAeAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamickL0O5BoundRtd__lFQOyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGARyAA5ColorVSgGGAA12_FrameLayoutVGAA011_BackgroundgS0VyAYGGAA11_ClipEffectVyAA6CircleVGG_s19PartialRangeThroughVyALGQo_G_AA010BorderlessiG0VQo_ARyAA0I11BorderShapeVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAeAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamickL0O5BoundRtd__lFQOyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGARyAA5ColorVSgGGAA12_FrameLayoutVGAA011_BackgroundgS0VyAYGGAA11_ClipEffectVyAA6CircleVGG_s19PartialRangeThroughVyALGQo_G_AA010BorderlessiG0VQo_ARyAA0I11BorderShapeVGGMR) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ButtonBorderShapeVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ButtonBorderShapeVGMR);
  static ButtonBorderShape.circle.getter();
  result = swift_getKeyPath();
  *v20 = result;
  return result;
}

uint64_t Collaboration.Management.ViewController.__allocating_init(model:)(uint64_t a1)
{
  type metadata accessor for Collaboration.Management.View(0);
  __chkstk_darwin();
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = objc_allocWithZone(v1);

  Collaboration.Management.View.init(model:)(v3);
  v5 = UIHostingController.init(rootView:)();

  return v5;
}

uint64_t Collaboration.Management.ViewController.init(model:)(uint64_t a1)
{
  type metadata accessor for Collaboration.Management.View(0);
  __chkstk_darwin();
  v2 = (&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));

  Collaboration.Management.View.init(model:)(v2);
  v3 = UIHostingController.init(rootView:)();

  return v3;
}

Swift::Void __swiftcall Collaboration.Management.ViewController.viewWillLayoutSubviews()()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for Collaboration.Management.ViewController(0);
  objc_msgSendSuper2(&v14, "viewWillLayoutSubviews");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3 && (v4 = [v3 windowScene], v3, v4))
    {
      v5 = [v4 effectiveGeometry];

      v6 = [v5 coordinateSpace];
      [v6 bounds];
      v8 = v7;
      v10 = v9;
      swift_unknownObjectRelease();
      v11 = 0;
      v12 = v8;
      v13 = v10;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v11 = 1;
    }

    Collaboration.Management.ViewController.updatePreferredContentSize(sceneSize:)(v12, v13, v11);
  }

  else
  {
    __break(1u);
  }
}

void @objc Collaboration.Management.ViewController.viewWillLayoutSubviews()(void *a1)
{
  v1 = a1;
  Collaboration.Management.ViewController.viewWillLayoutSubviews()();
}

id Collaboration.Management.ViewController.viewWillTransition(to:with:)(uint64_t a1, double a2, double a3)
{
  Collaboration.Management.ViewController.updatePreferredContentSize(sceneSize:)(*&a2, *&a3, 0);
  v8.receiver = v3;
  v8.super_class = type metadata accessor for Collaboration.Management.ViewController(0);
  return objc_msgSendSuper2(&v8, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
}

void @objc Collaboration.Management.ViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectRetain();
  v11 = a1;
  Collaboration.Management.ViewController.updatePreferredContentSize(sceneSize:)(*&a2, *&a3, 0);
  v12.receiver = v11;
  v12.super_class = type metadata accessor for Collaboration.Management.ViewController(0);
  objc_msgSendSuper2(&v12, "viewWillTransitionToSize:withTransitionCoordinator:", a5, a2, a3);
  swift_unknownObjectRelease();
}

void Collaboration.Management.ViewController.updatePreferredContentSize(sceneSize:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = objc_opt_self();
  v8 = [v7 currentTraitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == 6)
  {
    v10 = 512.0;
  }

  else
  {
    v10 = 540.0;
  }

  if (v9 == 6)
  {
    v11 = 620.0;
  }

  else
  {
    v11 = 700.0;
  }

  v12 = [v7 currentTraitCollection];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == 6 && (a3 & 1) == 0)
  {
    if (one-time initialization token for padding != -1)
    {
      swift_once();
    }

    v14 = *&static HI.Modal.padding + *&static HI.Modal.padding;
    if (v11 + *&static HI.Modal.padding + *&static HI.Modal.padding > *&a2)
    {
      v11 = *&a2 - (*&static HI.Modal.padding + *&static HI.Modal.padding);
    }

    if (v10 + v14 > *&a1)
    {
      v10 = *&a1 - v14;
    }
  }

  [v3 preferredContentSize];
  if (v10 != v16 || v11 != v15)
  {
    [v3 setPreferredContentSize:{v10, v11}];
    v18 = [v3 navigationController];
    if (v18)
    {
      v19 = v18;
      [v18 setPreferredContentSize:{v10, v11}];
    }
  }
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance Collaboration.Management.ActivityViewController(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type Collaboration.Management.ActivityViewController and conformance Collaboration.Management.ActivityViewController();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance Collaboration.Management.ActivityViewController(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type Collaboration.Management.ActivityViewController and conformance Collaboration.Management.ActivityViewController();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance Collaboration.Management.ActivityViewController(uint64_t a1)
{
  lazy protocol witness table accessor for type Collaboration.Management.ActivityViewController and conformance Collaboration.Management.ActivityViewController();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

char *Collaboration.Management.QRCodeView.makeUIViewController(context:)()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = v14 - v5;
  v7 = *(v0 + 16);
  v16[0] = *v0;
  v16[1] = v7;
  v17 = *(v0 + 32);
  outlined init with copy of Collaboration.Management.QRCodeView(v0, v15);
  String.LocalizationValue.init(stringLiteral:)();
  v8 = *(v2 + 16);
  v8(v4, v6, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v9 = static NSBundle.module;
  static Locale.current.getter();
  v10 = v9;
  v14[1] = String.init(localized:table:bundle:locale:comment:)();
  v11 = *(v2 + 8);
  v11(v6, v1);
  String.LocalizationValue.init(stringLiteral:)();
  v8(v4, v6, v1);
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v11(v6, v1);
  v12 = objc_allocWithZone(type metadata accessor for QRCodeOverlayViewController());
  return QRCodeOverlayViewController.init(qrCode:title:subtitle:)(v16);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance Collaboration.Management.QRCodeView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type Collaboration.Management.QRCodeView and conformance Collaboration.Management.QRCodeView();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance Collaboration.Management.QRCodeView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type Collaboration.Management.QRCodeView and conformance Collaboration.Management.QRCodeView();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance Collaboration.Management.QRCodeView(uint64_t a1)
{
  lazy protocol witness table accessor for type Collaboration.Management.QRCodeView and conformance Collaboration.Management.QRCodeView();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t PlaylistCurators.Curator.init(name:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v6 = type metadata accessor for PlaylistCurators.Curator(0);
  return outlined init with take of URL?(a3, a4 + *(v6 + 20), &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
}

uint64_t PlaylistCurators.View.horizontalSizeClass.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  __chkstk_darwin();
  v8 = &v13 - v7;
  v9 = type metadata accessor for PlaylistCurators.View(0);
  outlined init with copy of TaskPriority?(v1 + *(v9 + 20), v8, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return outlined init with take of URL?(v8, a1, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  }

  v11 = static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t PlaylistCurators.View.init(configuration:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for PlaylistCurators.View(0) + 20);
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  result = swift_storeEnumTagMultiPayload();
  *a2 = a1;
  return result;
}

uint64_t PlaylistCurators.View.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyACyAEyACyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAGyAGyAGyAGyAGy01_k4Kit_aB012ArtworkImageV01_kq9Internal_aB0E18artworkPlaceholderyQrx0kQ00R0VSg_So6CGSizeVAA5ColorVtcAA0E0RzlFQOy_AA012_ConditionalG0VyAGyAGyAtKE0V0OA3_VAA26_PreferenceWritingModifierVyAK016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AK0V13StyleModifierVGA16_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderE8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_AGyAGyAGyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGAK05HoverE8ModifierA28_LLVG_AA6SpacerVSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyACyAEyACyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAGyAGyAGyAGyAGy01_k4Kit_aB012ArtworkImageV01_kq9Internal_aB0E18artworkPlaceholderyQrx0kQ00R0VSg_So6CGSizeVAA5ColorVtcAA0E0RzlFQOy_AA012_ConditionalG0VyAGyAGyAtKE0V0OA3_VAA26_PreferenceWritingModifierVyAK016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AK0V13StyleModifierVGA16_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderE8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_AGyAGyAGyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGAK05HoverE8ModifierA28_LLVG_AA6SpacerVSgtGGMR);
  __chkstk_darwin();
  v2 = &v5 - v1;
  *v2 = static VerticalAlignment.center.getter();
  *(v2 + 1) = 0;
  v2[16] = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA0F0VyAIyAMyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAKyAKyAKyAKyAKy01_n4Kit_aB012ArtworkImageV01_nt9Internal_aB0E18artworkPlaceholderyQrx0nT00U0VSg_So6CGSizeVAA5ColorVtcAA0D0RzlFQOy_AA012_ConditionalJ0VyAKyAKyAzQE0Y0OA9_VAA26_PreferenceWritingModifierVyAQ29RadiosityEnabledPreferenceKeyVGGAA06_FrameG0VGAA14GeometryReaderVyA23_GGQo_AQ0Y13StyleModifierVGA22_GAQ20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAQ06BorderD8ModifierA34_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_AKyAKyAKyAAA9_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA51__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA56_yAA0V0V5ScaleOGGA56_yAA4FontVSgGGtGGAQ05HoverD8ModifierA34_LLVG_AA6SpacerVSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA0F0VyAIyAMyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAKyAKyAKyAKyAKy01_n4Kit_aB012ArtworkImageV01_nt9Internal_aB0E18artworkPlaceholderyQrx0nT00U0VSg_So6CGSizeVAA5ColorVtcAA0D0RzlFQOy_AA012_ConditionalJ0VyAKyAKyAzQE0Y0OA9_VAA26_PreferenceWritingModifierVyAQ29RadiosityEnabledPreferenceKeyVGGAA06_FrameG0VGAA14GeometryReaderVyA23_GGQo_AQ0Y13StyleModifierVGA22_GAQ20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAQ06BorderD8ModifierA34_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_AKyAKyAKyAAA9_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA51__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA56_yAA0V0V5ScaleOGGA56_yAA4FontVSgGGtGGAQ05HoverD8ModifierA34_LLVG_AA6SpacerVSgtGGMR);
  closure #1 in PlaylistCurators.View.body.getter(v0, &v2[*(v3 + 44)]);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<HStack<TupleView<(HStack<ForEach<[(offset: Int, element: PlaylistCurators.Curator)], Int, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout>, CornerRadiusModifier>, BorderViewModifier>, _TraitWritingModifier<ZIndexTraitKey>>>>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.textSuffix(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>)>>, HoverViewModifier>, Spacer?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyACyAEyACyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAGyAGyAGyAGyAGy01_k4Kit_aB012ArtworkImageV01_kq9Internal_aB0E18artworkPlaceholderyQrx0kQ00R0VSg_So6CGSizeVAA5ColorVtcAA0E0RzlFQOy_AA012_ConditionalG0VyAGyAGyAtKE0V0OA3_VAA26_PreferenceWritingModifierVyAK016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AK0V13StyleModifierVGA16_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderE8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_AGyAGyAGyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGAK05HoverE8ModifierA28_LLVG_AA6SpacerVSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyACyAEyACyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAGyAGyAGyAGyAGy01_k4Kit_aB012ArtworkImageV01_kq9Internal_aB0E18artworkPlaceholderyQrx0kQ00R0VSg_So6CGSizeVAA5ColorVtcAA0E0RzlFQOy_AA012_ConditionalG0VyAGyAGyAtKE0V0OA3_VAA26_PreferenceWritingModifierVyAK016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AK0V13StyleModifierVGA16_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderE8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_AGyAGyAGyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGAK05HoverE8ModifierA28_LLVG_AA6SpacerVSgtGGMR, &protocol conformance descriptor for HStack<A>);
  View.artworkCaching(id:limit:)();
  return outlined destroy of TaskPriority?(v2, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyACyAEyACyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAGyAGyAGyAGyAGy01_k4Kit_aB012ArtworkImageV01_kq9Internal_aB0E18artworkPlaceholderyQrx0kQ00R0VSg_So6CGSizeVAA5ColorVtcAA0E0RzlFQOy_AA012_ConditionalG0VyAGyAGyAtKE0V0OA3_VAA26_PreferenceWritingModifierVyAK016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AK0V13StyleModifierVGA16_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderE8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_AGyAGyAGyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGAK05HoverE8ModifierA28_LLVG_AA6SpacerVSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyACyAEyACyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAGyAGyAGyAGyAGy01_k4Kit_aB012ArtworkImageV01_kq9Internal_aB0E18artworkPlaceholderyQrx0kQ00R0VSg_So6CGSizeVAA5ColorVtcAA0E0RzlFQOy_AA012_ConditionalG0VyAGyAGyAtKE0V0OA3_VAA26_PreferenceWritingModifierVyAK016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AK0V13StyleModifierVGA16_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderE8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_AGyAGyAGyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGAK05HoverE8ModifierA28_LLVG_AA6SpacerVSgtGGMR);
}

uint64_t closure #1 in PlaylistCurators.View.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = type metadata accessor for UserInterfaceSizeClass();
  v48 = *(v3 - 8);
  v49 = v3;
  __chkstk_darwin();
  v45 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR);
  __chkstk_darwin();
  v6 = &v43 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  __chkstk_darwin();
  v46 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v43 - v8;
  __chkstk_darwin();
  v52 = &v43 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyACyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAA15ModifiedContentVyAQyAQyAQyAQy01_i4Kit_aB012ArtworkImageV01_iq9Internal_aB0E18artworkPlaceholderyQrx0iQ00R0VSg_So6CGSizeVAA5ColorVtcAA0E0RzlFQOy_AA012_ConditionalP0VyAQyAQyAtIE0V0OA3_VAA26_PreferenceWritingModifierVyAI016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AI0V13StyleModifierVGA16_GAI20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAI06BorderE8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_AQyAQyAQyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyACyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAA15ModifiedContentVyAQyAQyAQyAQy01_i4Kit_aB012ArtworkImageV01_iq9Internal_aB0E18artworkPlaceholderyQrx0iQ00R0VSg_So6CGSizeVAA5ColorVtcAA0E0RzlFQOy_AA012_ConditionalP0VyAQyAQyAtIE0V0OA3_VAA26_PreferenceWritingModifierVyAI016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AI0V13StyleModifierVGA16_GAI20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAI06BorderE8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_AQyAQyAQyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGMR);
  __chkstk_darwin();
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiACyACyACyACyACy01_k4Kit_aB012ArtworkImageV01_kq9Internal_aB0E18artworkPlaceholderyQrx0kQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAtKE0V0OA3_VAA26_PreferenceWritingModifierVyAK016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AK0V13StyleModifierVGA16_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderG8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_ACyACyACyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGAK05HoverG8ModifierA28_LLVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiACyACyACyACyACy01_k4Kit_aB012ArtworkImageV01_kq9Internal_aB0E18artworkPlaceholderyQrx0kQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAtKE0V0OA3_VAA26_PreferenceWritingModifierVyAK016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AK0V13StyleModifierVGA16_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderG8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_ACyACyACyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGAK05HoverG8ModifierA28_LLVGMR);
  __chkstk_darwin();
  v50 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v43 - v15;
  __chkstk_darwin();
  v18 = &v43 - v17;
  *v12 = static VerticalAlignment.center.getter();
  *(v12 + 1) = 0x4018000000000000;
  v12[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA0F0VyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAA15ModifiedContentVyAWyAWyAWyAWy01_l4Kit_aB012ArtworkImageV01_lt9Internal_aB0E18artworkPlaceholderyQrx0lT00U0VSg_So6CGSizeVAA5ColorVtcAA0D0RzlFQOy_AA012_ConditionalS0VyAWyAWyAzOE0Y0OA9_VAA26_PreferenceWritingModifierVyAO29RadiosityEnabledPreferenceKeyVGGAA06_FrameG0VGAA14GeometryReaderVyA23_GGQo_AO0Y13StyleModifierVGA22_GAO20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAO06BorderD8ModifierA34_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_AWyAWyAWyAAA9_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA51__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA56_yAA0V0V5ScaleOGGA56_yAA4FontVSgGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA0F0VyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAA15ModifiedContentVyAWyAWyAWyAWy01_l4Kit_aB012ArtworkImageV01_lt9Internal_aB0E18artworkPlaceholderyQrx0lT00U0VSg_So6CGSizeVAA5ColorVtcAA0D0RzlFQOy_AA012_ConditionalS0VyAWyAWyAzOE0Y0OA9_VAA26_PreferenceWritingModifierVyAO29RadiosityEnabledPreferenceKeyVGGAA06_FrameG0VGAA14GeometryReaderVyA23_GGQo_AO0Y13StyleModifierVGA22_GAO20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAO06BorderD8ModifierA34_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_AWyAWyAWyAAA9_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA51__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA56_yAA0V0V5ScaleOGGA56_yAA4FontVSgGGtGGMR);
  closure #1 in closure #1 in PlaylistCurators.View.body.getter(a1, &v12[*(v19 + 44)]);
  if (one-time initialization token for medium != -1)
  {
    swift_once();
  }

  v20 = unk_10063F070;
  v21 = byte_10063F078;
  if (byte_10063F078)
  {
    v22 = *&static Corner.medium;
  }

  else
  {
    v22 = *&static Corner.medium + -3.0;
  }

  outlined init with take of URL?(v12, v16, &_s7SwiftUI6HStackVyAA9TupleViewVyACyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAA15ModifiedContentVyAQyAQyAQyAQy01_i4Kit_aB012ArtworkImageV01_iq9Internal_aB0E18artworkPlaceholderyQrx0iQ00R0VSg_So6CGSizeVAA5ColorVtcAA0E0RzlFQOy_AA012_ConditionalP0VyAQyAQyAtIE0V0OA3_VAA26_PreferenceWritingModifierVyAI016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AI0V13StyleModifierVGA16_GAI20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAI06BorderE8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_AQyAQyAQyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyACyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAA15ModifiedContentVyAQyAQyAQyAQy01_i4Kit_aB012ArtworkImageV01_iq9Internal_aB0E18artworkPlaceholderyQrx0iQ00R0VSg_So6CGSizeVAA5ColorVtcAA0E0RzlFQOy_AA012_ConditionalP0VyAQyAQyAtIE0V0OA3_VAA26_PreferenceWritingModifierVyAI016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AI0V13StyleModifierVGA16_GAI20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAI06BorderE8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_AQyAQyAQyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGMR);
  v23 = &v16[*(v13 + 36)];
  *v23 = v22;
  *(v23 + 1) = v20;
  v23[16] = v21;
  *(v23 + 3) = 0x4008000000000000;
  *(v23 + 4) = 0;
  *(v23 + 20) = 257;
  outlined init with take of URL?(v16, v18, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiACyACyACyACyACy01_k4Kit_aB012ArtworkImageV01_kq9Internal_aB0E18artworkPlaceholderyQrx0kQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAtKE0V0OA3_VAA26_PreferenceWritingModifierVyAK016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AK0V13StyleModifierVGA16_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderG8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_ACyACyACyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGAK05HoverG8ModifierA28_LLVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiACyACyACyACyACy01_k4Kit_aB012ArtworkImageV01_kq9Internal_aB0E18artworkPlaceholderyQrx0kQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAtKE0V0OA3_VAA26_PreferenceWritingModifierVyAK016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AK0V13StyleModifierVGA16_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderG8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_ACyACyACyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGAK05HoverG8ModifierA28_LLVGMR);
  v24 = v52;
  PlaylistCurators.View.horizontalSizeClass.getter(v52);
  v26 = v48;
  v25 = v49;
  (*(v48 + 104))(v9, enum case for UserInterfaceSizeClass.regular(_:), v49);
  (*(v26 + 56))(v9, 0, 1, v25);
  v27 = *(v47 + 48);
  outlined init with copy of TaskPriority?(v24, v6, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  outlined init with copy of TaskPriority?(v9, &v6[v27], &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v28 = *(v26 + 48);
  v29 = v28(v6, 1, v25);
  v47 = v18;
  if (v29 != 1)
  {
    v44 = v9;
    v32 = v46;
    outlined init with copy of TaskPriority?(v6, v46, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    v33 = v25;
    if (v28(&v6[v27], 1, v25) != 1)
    {
      v34 = &v6[v27];
      v35 = v45;
      (*(v26 + 32))(v45, v34, v25);
      lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
      v36 = v32;
      v30 = dispatch thunk of static Equatable.== infix(_:_:)();
      v37 = *(v26 + 8);
      v37(v35, v33);
      outlined destroy of TaskPriority?(v44, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      outlined destroy of TaskPriority?(v52, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      v37(v36, v33);
      v31 = v47;
      outlined destroy of TaskPriority?(v6, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      goto LABEL_13;
    }

    outlined destroy of TaskPriority?(v44, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    outlined destroy of TaskPriority?(v52, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    (*(v26 + 8))(v32, v25);
    goto LABEL_11;
  }

  outlined destroy of TaskPriority?(v9, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  outlined destroy of TaskPriority?(v52, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  if (v28(&v6[v27], 1, v25) != 1)
  {
LABEL_11:
    outlined destroy of TaskPriority?(v6, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR);
    v30 = 0;
    v31 = v47;
    goto LABEL_13;
  }

  outlined destroy of TaskPriority?(v6, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v30 = 1;
  v31 = v47;
LABEL_13:
  v38 = v50;
  outlined init with copy of TaskPriority?(v31, v50, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiACyACyACyACyACy01_k4Kit_aB012ArtworkImageV01_kq9Internal_aB0E18artworkPlaceholderyQrx0kQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAtKE0V0OA3_VAA26_PreferenceWritingModifierVyAK016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AK0V13StyleModifierVGA16_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderG8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_ACyACyACyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGAK05HoverG8ModifierA28_LLVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiACyACyACyACyACy01_k4Kit_aB012ArtworkImageV01_kq9Internal_aB0E18artworkPlaceholderyQrx0kQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAtKE0V0OA3_VAA26_PreferenceWritingModifierVyAK016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AK0V13StyleModifierVGA16_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderG8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_ACyACyACyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGAK05HoverG8ModifierA28_LLVGMR);
  v39 = v31;
  v40 = v51;
  outlined init with copy of TaskPriority?(v38, v51, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiACyACyACyACyACy01_k4Kit_aB012ArtworkImageV01_kq9Internal_aB0E18artworkPlaceholderyQrx0kQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAtKE0V0OA3_VAA26_PreferenceWritingModifierVyAK016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AK0V13StyleModifierVGA16_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderG8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_ACyACyACyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGAK05HoverG8ModifierA28_LLVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiACyACyACyACyACy01_k4Kit_aB012ArtworkImageV01_kq9Internal_aB0E18artworkPlaceholderyQrx0kQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAtKE0V0OA3_VAA26_PreferenceWritingModifierVyAK016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AK0V13StyleModifierVGA16_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderG8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_ACyACyACyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGAK05HoverG8ModifierA28_LLVGMR);
  v41 = v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiACyACyACyACyACy01_k4Kit_aB012ArtworkImageV01_kq9Internal_aB0E18artworkPlaceholderyQrx0kQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAtKE0V0OA3_VAA26_PreferenceWritingModifierVyAK016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AK0V13StyleModifierVGA16_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderG8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_ACyACyACyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGAK05HoverG8ModifierA28_LLVG_AA6SpacerVSgtMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiACyACyACyACyACy01_k4Kit_aB012ArtworkImageV01_kq9Internal_aB0E18artworkPlaceholderyQrx0kQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAtKE0V0OA3_VAA26_PreferenceWritingModifierVyAK016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AK0V13StyleModifierVGA16_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderG8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_ACyACyACyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGAK05HoverG8ModifierA28_LLVG_AA6SpacerVSgtMR) + 48);
  *v41 = 0;
  *(v41 + 8) = v30 & 1;
  *(v41 + 9) = (v30 & 1) == 0;
  outlined destroy of TaskPriority?(v39, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiACyACyACyACyACy01_k4Kit_aB012ArtworkImageV01_kq9Internal_aB0E18artworkPlaceholderyQrx0kQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAtKE0V0OA3_VAA26_PreferenceWritingModifierVyAK016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AK0V13StyleModifierVGA16_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderG8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_ACyACyACyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGAK05HoverG8ModifierA28_LLVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiACyACyACyACyACy01_k4Kit_aB012ArtworkImageV01_kq9Internal_aB0E18artworkPlaceholderyQrx0kQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAtKE0V0OA3_VAA26_PreferenceWritingModifierVyAK016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AK0V13StyleModifierVGA16_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderG8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_ACyACyACyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGAK05HoverG8ModifierA28_LLVGMR);
  return outlined destroy of TaskPriority?(v38, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiACyACyACyACyACy01_k4Kit_aB012ArtworkImageV01_kq9Internal_aB0E18artworkPlaceholderyQrx0kQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAtKE0V0OA3_VAA26_PreferenceWritingModifierVyAK016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AK0V13StyleModifierVGA16_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderG8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_ACyACyACyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGAK05HoverG8ModifierA28_LLVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiACyACyACyACyACy01_k4Kit_aB012ArtworkImageV01_kq9Internal_aB0E18artworkPlaceholderyQrx0kQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAtKE0V0OA3_VAA26_PreferenceWritingModifierVyAK016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AK0V13StyleModifierVGA16_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderG8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_ACyACyACyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGAK05HoverG8ModifierA28_LLVGMR);
}

uint64_t closure #1 in closure #1 in PlaylistCurators.View.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  __chkstk_darwin();
  v66 = &v51[-v3];
  v4 = type metadata accessor for Font.TextStyle();
  v67 = *(v4 - 8);
  v68 = v4;
  __chkstk_darwin();
  v63 = &v51[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Text.Suffix();
  v59 = *(v6 - 8);
  v60 = v6;
  __chkstk_darwin();
  v57 = &v51[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10textSuffixyQrAA4TextV0G0VFQOyAH_Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGAMyAA5ImageV5ScaleOGGAMyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10textSuffixyQrAA4TextV0G0VFQOyAH_Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGAMyAA5ImageV5ScaleOGGAMyAA4FontVSgGGMR) - 8;
  __chkstk_darwin();
  v65 = &v51[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v56 = &v51[-v9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  __chkstk_darwin();
  v11 = &v51[-v10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAA15ModifiedContentVyAOyAOyAOyAOy01_g4Kit_aB012ArtworkImageV01_go9Internal_aB0E18artworkPlaceholderyQrx0gO00P0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalN0VyAOyAOyArGE0T0OA1_VAA26_PreferenceWritingModifierVyAG016RadiosityEnabledY3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA15_GGQo_AG0T13StyleModifierVGA14_GAG20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAG06BorderW8ModifierA26_LLVGAA06_TraitZ8ModifierVyAA14ZIndexTraitKeyVGGGGMd, &_s7SwiftUI6HStackVyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAA15ModifiedContentVyAOyAOyAOyAOy01_g4Kit_aB012ArtworkImageV01_go9Internal_aB0E18artworkPlaceholderyQrx0gO00P0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalN0VyAOyAOyArGE0T0OA1_VAA26_PreferenceWritingModifierVyAG016RadiosityEnabledY3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA15_GGQo_AG0T13StyleModifierVGA14_GAG20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAG06BorderW8ModifierA26_LLVGAA06_TraitZ8ModifierVyAA14ZIndexTraitKeyVGGGGMR);
  __chkstk_darwin();
  v62 = &v51[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v14 = &v51[-v13];
  PlaylistCurators.View.horizontalSizeClass.getter(v11);
  v15 = specialized static PlaylistCurators.View.Specs.faceholeSpacing(for:)(v11);
  outlined destroy of TaskPriority?(v11, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  *v14 = static VerticalAlignment.center.getter();
  v14[1] = v15;
  *(v14 + 16) = 0;
  v61 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAA15ModifiedContentVyASyASyASyASy01_k4Kit_aB012ArtworkImageV01_ks9Internal_aB0E18artworkPlaceholderyQrx0kS00T0VSg_So6CGSizeVAA5ColorVtcAA0D0RzlFQOy_AA012_ConditionalR0VyASyASyAvKE0X0OA5_VAA26_PreferenceWritingModifierVyAK29RadiosityEnabledPreferenceKeyVGGAA06_FrameG0VGAA14GeometryReaderVyA19_GGQo_AK0X13StyleModifierVGA18_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderD8ModifierA30_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAA15ModifiedContentVyASyASyASyASy01_k4Kit_aB012ArtworkImageV01_ks9Internal_aB0E18artworkPlaceholderyQrx0kS00T0VSg_So6CGSizeVAA5ColorVtcAA0D0RzlFQOy_AA012_ConditionalR0VyASyASyAvKE0X0OA5_VAA26_PreferenceWritingModifierVyAK29RadiosityEnabledPreferenceKeyVGGAA06_FrameG0VGAA14GeometryReaderVyA19_GGQo_AK0X13StyleModifierVGA18_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderD8ModifierA30_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGGMR);
  v58 = a1;
  closure #1 in closure #1 in closure #1 in PlaylistCurators.View.body.getter(a1, v16);
  v70 = PlaylistCurators.View.curatorsString.getter();
  v71 = v17;
  _sS2SSysWl_0();
  v54 = Text.init<A>(_:)();
  v53 = v18;
  v55 = v19;
  v70 = v54;
  v71 = v18;
  v52 = v20 & 1;
  v72 = v20 & 1;
  v73 = v19;
  String.nonBreakingSpace.unsafeMutableAddressor();

  Image.init(systemName:)();

  v21 = Text.init(_:)();
  v23 = v22;
  v25 = v24;
  v26 = static Text.+ infix(_:_:)();
  v28 = v27;
  v30 = v29;
  outlined consume of Text.Storage(v21, v23, v25 & 1);

  v31 = v57;
  static Text.Suffix.alwaysVisible(_:)();
  outlined consume of Text.Storage(v26, v28, v30 & 1);

  v32 = v56;
  View.textSuffix(_:)();
  (*(v59 + 8))(v31, v60);
  outlined consume of Text.Storage(v54, v53, v52);

  KeyPath = swift_getKeyPath();
  v34 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10textSuffixyQrAA4TextV0G0VFQOyAH_Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10textSuffixyQrAA4TextV0G0VFQOyAH_Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGMR) + 36);
  *v34 = KeyPath;
  *(v34 + 8) = 1;
  *(v34 + 16) = 0;
  v35 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10textSuffixyQrAA4TextV0G0VFQOyAH_Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGAMyAA5ImageV5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10textSuffixyQrAA4TextV0G0VFQOyAH_Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGAMyAA5ImageV5ScaleOGGMR) + 36));
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR) + 28);
  v37 = enum case for Image.Scale.small(_:);
  v38 = type metadata accessor for Image.Scale();
  (*(*(v38 - 8) + 104))(v35 + v36, v37, v38);
  *v35 = swift_getKeyPath();
  v39 = v63;
  PlaylistCurators.View.fontTextStyle.getter(v63);
  v40 = type metadata accessor for Font.Design();
  v41 = v66;
  (*(*(v40 - 8) + 56))(v66, 1, 1, v40);
  v42 = static Font.system(_:design:weight:)();
  outlined destroy of TaskPriority?(v41, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  (*(v67 + 8))(v39, v68);
  v43 = swift_getKeyPath();
  v44 = (v32 + *(v64 + 44));
  *v44 = v43;
  v44[1] = v42;
  v46 = v61;
  v45 = v62;
  outlined init with copy of TaskPriority?(v61, v62, &_s7SwiftUI6HStackVyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAA15ModifiedContentVyAOyAOyAOyAOy01_g4Kit_aB012ArtworkImageV01_go9Internal_aB0E18artworkPlaceholderyQrx0gO00P0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalN0VyAOyAOyArGE0T0OA1_VAA26_PreferenceWritingModifierVyAG016RadiosityEnabledY3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA15_GGQo_AG0T13StyleModifierVGA14_GAG20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAG06BorderW8ModifierA26_LLVGAA06_TraitZ8ModifierVyAA14ZIndexTraitKeyVGGGGMd, &_s7SwiftUI6HStackVyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAA15ModifiedContentVyAOyAOyAOyAOy01_g4Kit_aB012ArtworkImageV01_go9Internal_aB0E18artworkPlaceholderyQrx0gO00P0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalN0VyAOyAOyArGE0T0OA1_VAA26_PreferenceWritingModifierVyAG016RadiosityEnabledY3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA15_GGQo_AG0T13StyleModifierVGA14_GAG20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAG06BorderW8ModifierA26_LLVGAA06_TraitZ8ModifierVyAA14ZIndexTraitKeyVGGGGMR);
  v47 = v65;
  outlined init with copy of TaskPriority?(v32, v65, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10textSuffixyQrAA4TextV0G0VFQOyAH_Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGAMyAA5ImageV5ScaleOGGAMyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10textSuffixyQrAA4TextV0G0VFQOyAH_Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGAMyAA5ImageV5ScaleOGGAMyAA4FontVSgGGMR);
  v48 = v69;
  outlined init with copy of TaskPriority?(v45, v69, &_s7SwiftUI6HStackVyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAA15ModifiedContentVyAOyAOyAOyAOy01_g4Kit_aB012ArtworkImageV01_go9Internal_aB0E18artworkPlaceholderyQrx0gO00P0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalN0VyAOyAOyArGE0T0OA1_VAA26_PreferenceWritingModifierVyAG016RadiosityEnabledY3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA15_GGQo_AG0T13StyleModifierVGA14_GAG20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAG06BorderW8ModifierA26_LLVGAA06_TraitZ8ModifierVyAA14ZIndexTraitKeyVGGGGMd, &_s7SwiftUI6HStackVyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAA15ModifiedContentVyAOyAOyAOyAOy01_g4Kit_aB012ArtworkImageV01_go9Internal_aB0E18artworkPlaceholderyQrx0gO00P0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalN0VyAOyAOyArGE0T0OA1_VAA26_PreferenceWritingModifierVyAG016RadiosityEnabledY3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA15_GGQo_AG0T13StyleModifierVGA14_GAG20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAG06BorderW8ModifierA26_LLVGAA06_TraitZ8ModifierVyAA14ZIndexTraitKeyVGGGGMR);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAA15ModifiedContentVyAOyAOyAOyAOy01_g4Kit_aB012ArtworkImageV01_go9Internal_aB0E18artworkPlaceholderyQrx0gO00P0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalN0VyAOyAOyArGE0T0OA1_VAA26_PreferenceWritingModifierVyAG016RadiosityEnabledY3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA15_GGQo_AG0T13StyleModifierVGA14_GAG20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAG06BorderW8ModifierA26_LLVGAA06_TraitZ8ModifierVyAA14ZIndexTraitKeyVGGGG_AOyAOyAOyAAA1_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA43__Qo_AA015_EnvironmentKeyZ8ModifierVySiSgGGA48_yAA0Q0V5ScaleOGGA48_yAA4FontVSgGGtMd, &_s7SwiftUI6HStackVyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAA15ModifiedContentVyAOyAOyAOyAOy01_g4Kit_aB012ArtworkImageV01_go9Internal_aB0E18artworkPlaceholderyQrx0gO00P0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalN0VyAOyAOyArGE0T0OA1_VAA26_PreferenceWritingModifierVyAG016RadiosityEnabledY3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA15_GGQo_AG0T13StyleModifierVGA14_GAG20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAG06BorderW8ModifierA26_LLVGAA06_TraitZ8ModifierVyAA14ZIndexTraitKeyVGGGG_AOyAOyAOyAAA1_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA43__Qo_AA015_EnvironmentKeyZ8ModifierVySiSgGGA48_yAA0Q0V5ScaleOGGA48_yAA4FontVSgGGtMR);
  outlined init with copy of TaskPriority?(v47, v48 + *(v49 + 48), &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10textSuffixyQrAA4TextV0G0VFQOyAH_Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGAMyAA5ImageV5ScaleOGGAMyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10textSuffixyQrAA4TextV0G0VFQOyAH_Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGAMyAA5ImageV5ScaleOGGAMyAA4FontVSgGGMR);
  outlined destroy of TaskPriority?(v32, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10textSuffixyQrAA4TextV0G0VFQOyAH_Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGAMyAA5ImageV5ScaleOGGAMyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10textSuffixyQrAA4TextV0G0VFQOyAH_Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGAMyAA5ImageV5ScaleOGGAMyAA4FontVSgGGMR);
  outlined destroy of TaskPriority?(v46, &_s7SwiftUI6HStackVyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAA15ModifiedContentVyAOyAOyAOyAOy01_g4Kit_aB012ArtworkImageV01_go9Internal_aB0E18artworkPlaceholderyQrx0gO00P0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalN0VyAOyAOyArGE0T0OA1_VAA26_PreferenceWritingModifierVyAG016RadiosityEnabledY3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA15_GGQo_AG0T13StyleModifierVGA14_GAG20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAG06BorderW8ModifierA26_LLVGAA06_TraitZ8ModifierVyAA14ZIndexTraitKeyVGGGGMd, &_s7SwiftUI6HStackVyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAA15ModifiedContentVyAOyAOyAOyAOy01_g4Kit_aB012ArtworkImageV01_go9Internal_aB0E18artworkPlaceholderyQrx0gO00P0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalN0VyAOyAOyArGE0T0OA1_VAA26_PreferenceWritingModifierVyAG016RadiosityEnabledY3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA15_GGQo_AG0T13StyleModifierVGA14_GAG20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAG06BorderW8ModifierA26_LLVGAA06_TraitZ8ModifierVyAA14ZIndexTraitKeyVGGGGMR);
  outlined destroy of TaskPriority?(v47, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10textSuffixyQrAA4TextV0G0VFQOyAH_Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGAMyAA5ImageV5ScaleOGGAMyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10textSuffixyQrAA4TextV0G0VFQOyAH_Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGAMyAA5ImageV5ScaleOGGAMyAA4FontVSgGGMR);
  return outlined destroy of TaskPriority?(v45, &_s7SwiftUI6HStackVyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAA15ModifiedContentVyAOyAOyAOyAOy01_g4Kit_aB012ArtworkImageV01_go9Internal_aB0E18artworkPlaceholderyQrx0gO00P0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalN0VyAOyAOyArGE0T0OA1_VAA26_PreferenceWritingModifierVyAG016RadiosityEnabledY3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA15_GGQo_AG0T13StyleModifierVGA14_GAG20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAG06BorderW8ModifierA26_LLVGAA06_TraitZ8ModifierVyAA14ZIndexTraitKeyVGGGGMd, &_s7SwiftUI6HStackVyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAA15ModifiedContentVyAOyAOyAOyAOy01_g4Kit_aB012ArtworkImageV01_go9Internal_aB0E18artworkPlaceholderyQrx0gO00P0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalN0VyAOyAOyArGE0T0OA1_VAA26_PreferenceWritingModifierVyAG016RadiosityEnabledY3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA15_GGQo_AG0T13StyleModifierVGA14_GAG20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAG06BorderW8ModifierA26_LLVGAA06_TraitZ8ModifierVyAA14ZIndexTraitKeyVGGGGMR);
}

uint64_t closure #1 in closure #1 in closure #1 in PlaylistCurators.View.body.getter(uint64_t *a1, __n128 a2)
{
  v3 = *(type metadata accessor for PlaylistCurators.View(0) - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v5 = *a1;
  if (*(*a1 + 16) <= 3uLL)
  {
  }

  else
  {
    v6 = *(type metadata accessor for PlaylistCurators.Curator(0) - 8);
    specialized _copyCollectionToContiguousArray<A>(_:)(v5, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), 0, 7uLL);
    v5 = v7;
  }

  specialized _copySequenceToContiguousArray<A>(_:)(v8);
  v10 = v9;

  v15[1] = v10;
  swift_getKeyPath();
  outlined init with copy of Collaboration.Management.View(a1, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlaylistCurators.View);
  v11 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  outlined init with take of Collaboration.Management.View(v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for PlaylistCurators.View);
  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in PlaylistCurators.View.body.getter;
  *(v13 + 24) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi6offset_11MusicCoreUI16PlaylistCuratorsO7CuratorV7elementtGMd, &_sSaySi6offset_11MusicCoreUI16PlaylistCuratorsO7CuratorV7elementtGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGA3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A15_LLVGAA06_TraitrS0VyAA011ZIndexTraitV0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGA3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A15_LLVGAA06_TraitrS0VyAA011ZIndexTraitV0VGGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type [(offset: Int, element: PlaylistCurators.Curator)] and conformance [A], &_sSaySi6offset_11MusicCoreUI16PlaylistCuratorsO7CuratorV7elementtGMd, &_sSaySi6offset_11MusicCoreUI16PlaylistCuratorsO7CuratorV7elementtGMR, &protocol conformance descriptor for [A]);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout>, CornerRadiusModifier>, BorderViewModifier>, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>();
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in PlaylistCurators.View.body.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 16);
  v6 = __OFSUB__(v5, result);
  v7 = v5 - result;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v8 = v7;
    PlaylistCurators.View.faceholeView(_:)(a2, a4);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGA3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A15_LLVGAA06_TraitrS0VyAA011ZIndexTraitV0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGA3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A15_LLVGAA06_TraitrS0VyAA011ZIndexTraitV0VGGMR);
    *(a4 + *(result + 36)) = v8;
  }

  return result;
}

uint64_t PlaylistCurators.View.faceholeView(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a1;
  v111 = a2;
  v2 = type metadata accessor for Artwork.CropStyle();
  v115 = *(v2 - 8);
  __chkstk_darwin();
  v104 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ArtworkImage();
  v109 = *(v4 - 8);
  v110 = v4;
  __chkstk_darwin();
  v113 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v103 = &v81 - v6;
  __chkstk_darwin();
  v107 = &v81 - v7;
  __chkstk_darwin();
  v105 = &v81 - v8;
  v9 = type metadata accessor for ArtworkImage.ReusePolicy();
  v114 = *(v9 - 8);
  __chkstk_darwin();
  v116 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v11 = *(v85 + 64);
  __chkstk_darwin();
  v87 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v112 = &v81 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR_0);
  __chkstk_darwin();
  v91 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v81 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  __chkstk_darwin();
  v92 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v88 = &v81 - v17;
  __chkstk_darwin();
  v19 = &v81 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
  __chkstk_darwin();
  v89 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v84 = &v81 - v21;
  __chkstk_darwin();
  v23 = &v81 - v22;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV01_ab9Internal_cD0E18artworkPlaceholderyQrx0aB00E0VSg_So6CGSizeV0cD05ColorVtcAL4ViewRzlFQOy_AL19_ConditionalContentVyAL08ModifiedN0VyASyAC0a4CoreD0E0I0OAOVAL26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAL12_FrameLayoutVGAL14GeometryReaderVyA4_GGQo_Md, &_s17_MusicKit_SwiftUI12ArtworkImageV01_ab9Internal_cD0E18artworkPlaceholderyQrx0aB00E0VSg_So6CGSizeV0cD05ColorVtcAL4ViewRzlFQOy_AL19_ConditionalContentVyAL08ModifiedN0VyASyAC0a4CoreD0E0I0OAOVAL26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAL12_FrameLayoutVGAL14GeometryReaderVyA4_GGQo_MR);
  v100 = *(v102 - 8);
  __chkstk_darwin();
  v96 = &v81 - v24;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGMd, &_s7SwiftUI15ModifiedContentVy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGMR);
  __chkstk_darwin();
  v97 = &v81 - v25;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGA3_GMd, &_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGA3_GMR);
  __chkstk_darwin();
  v95 = &v81 - v26;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGA3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGMd, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGA3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGMR);
  __chkstk_darwin();
  v101 = &v81 - v27;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGA3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A15_LLVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGA3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A15_LLVGMR);
  __chkstk_darwin();
  v99 = &v81 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  __chkstk_darwin();
  v30 = &v81 - v29;
  PlaylistCurators.View.horizontalSizeClass.getter(&v81 - v29);
  v31 = specialized static PlaylistCurators.View.Specs.avatarLength(for:)(v30);
  outlined destroy of TaskPriority?(v30, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v32 = type metadata accessor for PlaylistCurators.Curator(0);
  outlined init with copy of TaskPriority?(v108 + *(v32 + 20), v19, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  static Artwork.CropStyle.boundedBox.getter();
  v33 = *(v115 + 56);
  v108 = v2;
  v83 = v115 + 56;
  v82 = v33;
  v33(v15, 0, 1, v2);
  v34 = type metadata accessor for Artwork();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v19, 1, v34) == 1)
  {
    outlined destroy of TaskPriority?(v15, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR_0);
    outlined destroy of TaskPriority?(v19, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
    v36 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v36 - 8) + 56))(v23, 1, 1, v36);
  }

  else
  {
    (*(v35 + 32))(v23, v19, v34);
    v36 = type metadata accessor for ArtworkImage.ViewModel(0);
    outlined init with take of URL?(v15, &v23[*(v36 + 20)], &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR_0);
    (*(*(v36 - 8) + 56))(v23, 0, 1, v36);
  }

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMd, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMR);
  v38 = v112;
  (*(*(v37 - 8) + 56))(v112, 8, 11, v37);
  v86 = v31;
  v124 = 0;
  v122 = 0;
  v120 = 1;
  v39 = *(v114 + 104);
  v106 = v9;
  v39(v116, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v9);
  v40 = v87;
  outlined init with copy of Collaboration.Management.View(v38, v87, type metadata accessor for ArtworkImage.Placeholder);
  v41 = (*(v85 + 80) + 16) & ~*(v85 + 80);
  v42 = (v11 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  outlined init with take of Collaboration.Management.View(v40, v43 + v41, type metadata accessor for ArtworkImage.Placeholder);
  v44 = v43 + v42;
  *v44 = v31;
  *(v44 + 8) = v124;
  *(v44 + 9) = *v123;
  *(v44 + 12) = *&v123[3];
  *(v44 + 16) = v31;
  *(v44 + 24) = v122;
  *(v44 + 25) = *v121;
  *(v44 + 28) = *&v121[3];
  *(v44 + 32) = 0;
  *(v44 + 40) = v120;
  *(v44 + 41) = 1;
  v45 = v84;
  outlined init with copy of TaskPriority?(v23, v84, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
  type metadata accessor for ArtworkImage.ViewModel(0);
  v46 = *(*(v36 - 8) + 48);
  v47 = v23;
  if (v46(v45, 1, v36) == 1)
  {
    outlined destroy of TaskPriority?(v45, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
    v48 = 1;
    v49 = v88;
  }

  else
  {
    v49 = v88;
    (*(v35 + 16))(v88, v45, v34);
    outlined destroy of ArtworkImage.Placeholder(v45, type metadata accessor for ArtworkImage.ViewModel);
    v48 = 0;
  }

  (*(v35 + 56))(v49, v48, 1, v34);
  outlined init with copy of TaskPriority?(v49, v92, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  v50 = v105;
  ArtworkImage.init(_:width:height:)();
  outlined destroy of TaskPriority?(v49, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  ArtworkImage.artworkReusablePolicy(_:)();
  v92 = v47;
  v51 = v89;
  outlined init with copy of TaskPriority?(v47, v89, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
  v52 = v46(v51, 1, v36);
  v53 = v106;
  if (v52 == 1)
  {
    outlined destroy of TaskPriority?(v51, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
    v54 = v91;
    v55 = v108;
    v82(v91, 1, 1, v108);
    v56 = v115;
    v57 = v104;
  }

  else
  {
    v54 = v91;
    outlined init with copy of TaskPriority?(v51 + *(v36 + 20), v91, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR_0);
    outlined destroy of ArtworkImage.Placeholder(v51, type metadata accessor for ArtworkImage.ViewModel);
    v56 = v115;
    v55 = v108;
    v58 = (*(v115 + 48))(v54, 1, v108);
    v57 = v104;
    if (v58 != 1)
    {
      (*(v56 + 32))(v104, v54, v55);
      goto LABEL_15;
    }
  }

  if (one-time initialization token for fallback != -1)
  {
    swift_once();
  }

  v59 = __swift_project_value_buffer(v55, static Artwork.CropStyle.fallback);
  (*(v56 + 16))(v57, v59, v55);
  if ((*(v56 + 48))(v54, 1, v55) != 1)
  {
    outlined destroy of TaskPriority?(v54, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR_0);
  }

LABEL_15:
  v60 = v103;
  v61 = v113;
  ArtworkImage.artworkCropStyle(_:)();
  (*(v56 + 8))(v57, v55);
  v62 = v110;
  v63 = *(v109 + 8);
  v63(v61, v110);
  v64 = v107;
  ArtworkImage.artworkIdealAspectRatio(_:contentMode:)();
  v63(v60, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy010_MusicKit_aB012ArtworkImageV0f4CoreB0E11PlaceholderO4ViewVAA26_PreferenceWritingModifierVyAI016RadiosityEnabledM3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyAVGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy010_MusicKit_aB012ArtworkImageV0f4CoreB0E11PlaceholderO4ViewVAA26_PreferenceWritingModifierVyAI016RadiosityEnabledM3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyAVGGMR);
  lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout>, GeometryReader<ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout>>> and conformance <> _ConditionalContent<A, B>();
  v65 = v96;
  ArtworkImage.artworkPlaceholder<A>(_:)();

  v63(v64, v62);
  v63(v50, v62);
  (*(v114 + 8))(v116, v53);
  outlined destroy of ArtworkImage.Placeholder(v112, type metadata accessor for ArtworkImage.Placeholder);
  outlined destroy of TaskPriority?(v92, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
  v66 = v97;
  v67 = &v97[*(v90 + 36)];
  v68 = *(type metadata accessor for PlaceholderStyleModifier(0) + 20);
  *(v67 + v68) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy010_MusicKit_aB012ArtworkImageV0e4CoreB0E11PlaceholderO4ViewV5StyleVSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOy010_MusicKit_aB012ArtworkImageV0e4CoreB0E11PlaceholderO4ViewV5StyleVSg_GMR);
  swift_storeEnumTagMultiPayload();
  *v67 = closure #1 in PlaylistCurators.View.faceholeView(_:);
  v67[1] = 0;
  (*(v100 + 32))(v66, v65, v102);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v69 = v95;
  outlined init with take of URL?(v66, v95, &_s7SwiftUI15ModifiedContentVy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGMd, &_s7SwiftUI15ModifiedContentVy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGMR);
  v70 = (v69 + *(v94 + 36));
  v71 = v118;
  *v70 = v117;
  v70[1] = v71;
  v70[2] = v119;
  v72 = v101;
  outlined init with take of URL?(v69, v101, &_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGA3_GMd, &_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGA3_GMR);
  v73 = v72 + *(v93 + 36);
  *v73 = 0;
  *(v73 + 8) = 0;
  *(v73 + 16) = 2;
  if (one-time initialization token for faceholeBorder != -1)
  {
    swift_once();
  }

  v74 = static PlaylistCurators.View.Specs.faceholeBorder;
  v75 = qword_10060C5A0;
  v76 = byte_10060C5A8;
  v77 = v72;
  v78 = v99;
  outlined init with take of URL?(v77, v99, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGA3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGMd, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGA3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGMR);
  v79 = v78 + *(v98 + 36);
  *v79 = v74;
  *(v79 + 8) = v75;
  *(v79 + 16) = v76;
  *(v79 + 24) = 0;
  *(v79 + 32) = 0;
  *(v79 + 40) = 2;
  outlined init with take of URL?(v78, v111, &_s7SwiftUI15ModifiedContentVyACyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGA3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A15_LLVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGA3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A15_LLVGMR);
}