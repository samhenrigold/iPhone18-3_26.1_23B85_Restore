void sub_1CA5F0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_2F9C(a3, a4);
    v5 = sub_264A60();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1CA648()
{
  result = qword_324350;
  if (!qword_324350)
  {
    sub_2F9C(&qword_324358, &qword_284C80);
    sub_2F9C(&qword_3241A8, &qword_284B10);
    sub_261760();
    sub_8E38(&qword_3241B8, &qword_3241A8, &qword_284B10, &protocol conformance descriptor for BooksActionButton<A>);
    sub_1CAAD0(&qword_319400, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_1C97F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324350);
  }

  return result;
}

uint64_t sub_1CA7C4(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for FontConstants.SectionHeader(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CA824(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1CA8A4()
{
  result = qword_3243B8;
  if (!qword_3243B8)
  {
    sub_2F9C(&qword_3243B0, &qword_284D78);
    sub_1CA95C();
    sub_8E38(&qword_317590, &qword_317530, &qword_26FCC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3243B8);
  }

  return result;
}

unint64_t sub_1CA95C()
{
  result = qword_3243C0;
  if (!qword_3243C0)
  {
    sub_2F9C(&qword_3243C8, &qword_284D80);
    sub_1CAA14();
    sub_8E38(&qword_3189E0, &qword_3189E8, &unk_26F980, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3243C0);
  }

  return result;
}

unint64_t sub_1CAA14()
{
  result = qword_3243D0;
  if (!qword_3243D0)
  {
    sub_2F9C(&qword_3243D8, &qword_284D88);
    sub_65384();
    sub_1CAAD0(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3243D0);
  }

  return result;
}

uint64_t sub_1CAAD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CAB48()
{
  v1 = type metadata accessor for ShelfHeaderView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_261180();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v3 + v1[5];
  sub_2EF0(&qword_316C08, &unk_26AEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v7 = sub_261690();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v3 + v1[6];
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v10 = sub_261690();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  else
  {
  }

  sub_4054(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v11 = v1[8];
  sub_2EF0(&qword_316C18, &unk_26F830);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_2616C0();
    (*(*(v12 - 8) + 8))(v3 + v11, v12);
  }

  else
  {
  }

  v13 = v1[9];
  v14 = sub_260BD0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(v3 + v13, 1, v14);
  v18 = *(v15 + 8);
  if (!v17)
  {
    v18(v3 + v13, v14);
  }

  v18(v3 + v1[10], v14);
  v19 = v1[11];
  if (!v16(v3 + v19, 1, v14))
  {
    v18(v3 + v19, v14);
  }

  v20 = (v3 + v1[13]);
  v21 = v20[3];
  v22 = v20[6];
  v23 = v20[14];
  if ((v21 & 0xFFFFFFFFFFFFFCFELL) != 0x7FFFFFCFELL || v22 > 1 || v23 >= 0x100)
  {
    sub_57200(*v20, v20[1], v20[2], v21, v20[4], v20[5], v22, v20[7], v20[8], v20[9], v20[10], v20[11], v20[12], v20[13], v23);
  }

  v24 = (v3 + v1[14]);
  if (v24[3])
  {
    sub_3080(v24);
  }

  return swift_deallocObject();
}

uint64_t sub_1CAF50(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ShelfHeaderView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

void *KeyedDecodingContainer.decode<A>(_:forKey:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = &v20 - v8;
  v11 = type metadata accessor for _DecodeDefault_Wrapper(255, a3, a4, v10);
  v12 = sub_264A60();
  v22 = *(v12 - 8);
  v23 = v12;
  __chkstk_darwin(v12);
  v14 = &v20 - v13;
  swift_getWitnessTable();
  v15 = v26;
  result = sub_264DB0();
  if (!v15)
  {
    v21 = AssociatedTypeWitness;
    v17 = v25;
    v26 = 0;
    v18 = *(v11 - 8);
    v19 = *(v18 + 48);
    if (v19(v14, 1, v11) == 1)
    {
      (*(a4 + 24))(a3, a4);
      (*(v24 + 32))(v17, v9, v21);
      result = v19(v14, 1, v11);
      if (result != 1)
      {
        return (*(v22 + 8))(v14, v23);
      }
    }

    else
    {
      return (*(v18 + 32))(v17, v14, v11);
    }
  }

  return result;
}

uint64_t _DecodeDefault_Wrapper.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 32);

  return v7(a4, a1, AssociatedTypeWitness);
}

uint64_t _DecodeDefault_Wrapper.wrappedValue.getter@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, v2, AssociatedTypeWitness);
}

uint64_t _DecodeDefault_Wrapper.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 40);

  return v5(v2, a1, AssociatedTypeWitness);
}

uint64_t _DecodeDefault_Wrapper.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v8 = &v20 - v7;
  v10 = type metadata accessor for _DecodeDefault_Wrapper(0, a2, a3, v9);
  v26 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  sub_2E18(a1, a1[3]);
  v13 = v29;
  sub_2650F0();
  if (v13)
  {
    v14 = a1;
  }

  else
  {
    v20 = v8;
    v21 = v12;
    v29 = a1;
    v15 = AssociatedTypeWitness;
    v22 = v10;
    sub_2E18(v27, v28);
    if (sub_264F40())
    {
      v16 = v21;
      (*(a3 + 24))(a2, a3);
      v17 = v26;
    }

    else
    {
      sub_2E18(v27, v28);
      swift_getAssociatedConformanceWitness();
      v18 = v20;
      sub_264F30();
      v17 = v26;
      v16 = v21;
      (*(v23 + 32))(v21, v18, v15);
    }

    sub_3080(v27);
    (*(v17 + 32))(v24, v16, v22);
    v14 = v29;
  }

  return sub_3080(v14);
}

uint64_t _DecodeDefault_Wrapper<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();

  return sub_264330();
}

Swift::Int _DecodeDefault_Wrapper<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_265050();
  swift_getAssociatedTypeWitness();
  sub_264330();
  return sub_265080();
}

Swift::Int sub_1CB888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_265050();
  _DecodeDefault_Wrapper<>.hash(into:)(v6, a2, v4);
  return sub_265080();
}

uint64_t _DecodeDefault_Wrapper<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_2E18(a1, a1[3]);
  sub_265130();
  sub_17450(v4, v4[3]);
  swift_getAssociatedTypeWitness();
  sub_264F50();
  return sub_3080(v4);
}

uint64_t static DecodeDefault.Providers.UUIDString.defaultValue.getter()
{
  v0 = sub_2601E0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2601D0();
  v4 = sub_2601C0();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1CBB04@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2601E0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2601D0();
  v6 = sub_2601C0();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  a1[1] = v8;
  return result;
}

uint64_t sub_1CBC14(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CBC94(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v6)
  {
LABEL_23:
    v12 = *(v5 + 48);

    return v12(a1);
  }

  v8 = 8 * v7;
  if (v7 <= 3)
  {
    v10 = ((a2 - v6 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v6)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v11 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return v6 + (v7 | v11) + 1;
}

void sub_1CBE28(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (a3 <= v8)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 - v8 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (v8 < a2)
  {
    v11 = ~v8 + a2;
    if (v9 < 4)
    {
      v12 = (v11 >> (8 * v9)) + 1;
      if (v9)
      {
        v15 = v11 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v15;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&a1[v9] = v12;
              }

              else
              {
                *&a1[v9] = v12;
              }

              return;
            }
          }

          else
          {
            *a1 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v15;
        a1[2] = BYTE2(v15);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      a1[v9] = v12;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v10)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v16 = *(v7 + 56);

  v16(a1, a2);
}

uint64_t static ComponentKinds.table.getter()
{
  if (qword_315AC0 != -1)
  {
    swift_once();
  }

  sub_2EF0(&qword_324518, &qword_285000);
  sub_260D20();
  return v1;
}

uint64_t sub_1CC118()
{
  if (qword_315AC8 != -1)
  {
    swift_once();
  }

  v0 = qword_324510;
  sub_2EF0(&qword_324530, &qword_285098);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = v0;
  qword_324508 = v1;
}

unint64_t sub_1CC1B0()
{
  result = sub_F024(_swiftEmptyArrayStorage);
  qword_324510 = result;
  return result;
}

void static ComponentKinds.register<A>(_:name:)(uint64_t a1)
{
  if (qword_315AC0 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  v1 = qword_324508;
  __chkstk_darwin(a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1CC2B8((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1CC2B8(uint64_t *a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *a1;
  result = sub_E308(v6, v3, v4, v5, isUniquelyReferenced_nonNull_native);
  *a1 = v9;
  return result;
}

uint64_t sub_1CC334(uint64_t a1)
{
  sub_1CC414();
  v1 = sub_263E90();
  sub_A8A44(v1);
  v3 = v2;

  return v3;
}

unint64_t sub_1CC3B0()
{
  result = qword_324520;
  if (!qword_324520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324520);
  }

  return result;
}

unint64_t sub_1CC414()
{
  result = qword_324528;
  if (!qword_324528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324528);
  }

  return result;
}

__n128 PageUpdateInstruction.ShelfItemUpdateDescriptor.init(items:shelfID:paginationUpdate:dedupe:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = *a4;
  *(a6 + 40) = a4[1];
  v7 = a4[3];
  *(a6 + 56) = a4[2];
  *(a6 + 72) = v7;
  result = *(a4 + 57);
  *(a6 + 81) = result;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = v6;
  *(a6 + 97) = a5;
  return result;
}

uint64_t PageUpdateInstruction.ShelfItemRemovalDescriptor.init(itemIDs:shelfID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t PageUpdateInstruction.ShelfHeaderFooterUpdateDescriptor.init(model:shelfID:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_F7CC(a1, a4);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t PageUpdateAction.instructionIntent.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v11[0] = *(a1 + 16);
  v11[1] = v5;
  updated = type metadata accessor for PageUpdateInstruction(255, v11);
  v9 = type metadata accessor for CodeAnyIntentModel(0, updated, v7, v8);
  (*(*(v9 - 8) + 16))(v11, v2 + v4, v9);
  return sub_F7CC(v11, a2);
}

uint64_t sub_1CC5C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v7[0] = *(a1 + a2 - 32);
  v7[1] = v4;
  updated = type metadata accessor for PageUpdateAction(0, v7);
  return PageUpdateAction.instructionIntent.getter(updated, a3);
}

uint64_t sub_1CC60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 32);
  sub_30CC(a1, v9);
  v8[0] = v7;
  v8[1] = v6;
  updated = type metadata accessor for PageUpdateAction(0, v8);
  return sub_1CC668(v9, updated);
}

uint64_t sub_1CC668(__int128 *a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  sub_3080((v2 + v4));

  return sub_F7CC(a1, v2 + v4);
}

uint64_t PageUpdateAction.init(actionMetrics:instructionIntent:animated:clickData:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v18 = sub_263AF0();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  updated = type metadata accessor for PageUpdateAction(0, &v22);
  v20 = updated[14];
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  type metadata accessor for PageUpdateInstruction(0, &v22);
  ListItemAccessoryMoreButton.init(assetInfo:)(a2, a9 + v20);
  *(a9 + updated[15]) = a3;
  return sub_129C04(a4, a9 + updated[13]);
}

uint64_t PageUpdateAction.init(actionMetrics:instruction:animated:clickData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v24 = a7;
  v25 = a8;
  v27 = a4;
  *&v28 = a5;
  v26 = a3;
  v23 = a9;
  *(&v28 + 1) = a6;
  v29 = a7;
  v30 = a8;
  updated = type metadata accessor for PageUpdateInstruction(0, &v28);
  v14 = *(updated - 8);
  __chkstk_darwin(updated);
  v16 = &v23 - v15;
  v17 = sub_263AF0();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, a1, v17, v19);
  (*(v14 + 16))(v16, a2, updated);
  v30 = sub_263AA0();
  WitnessTable = swift_getWitnessTable();
  sub_10934(&v28);
  sub_263AB0();
  (*(v14 + 8))(a2, updated);
  (*(v18 + 8))(a1, v17);
  return PageUpdateAction.init(actionMetrics:instructionIntent:animated:clickData:)(v21, &v28, v26, v27, a5, a6, v24, v25, v23);
}

uint64_t sub_1CCA0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461446B63696C63 && a2 == 0xE900000000000061 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000000294770 == a2 || (sub_264F10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646574616D696E61 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_264F10();

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

unint64_t sub_1CCB88(unsigned __int8 a1)
{
  v1 = 0x654D6E6F69746361;
  v2 = 0xD000000000000011;
  if (a1 != 2)
  {
    v2 = 0x646574616D696E61;
  }

  if (a1)
  {
    v1 = 0x7461446B63696C63;
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

Swift::Int sub_1CCC50(uint64_t a1)
{
  sub_265050();
  sub_8006C(v3, *v1);
  return sub_265080();
}

uint64_t sub_1CCCAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CCA0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CCCE0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_D40E4();
  *a1 = result;
  return result;
}

uint64_t sub_1CCD14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1CCD68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t PageUpdateAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v42 = a6;
  v11 = sub_2EF0(&qword_316B98, &unk_275840);
  __chkstk_darwin(v11 - 8);
  v47 = &v40 - v12;
  v50 = sub_263AF0();
  v45 = *(v50 - 8);
  __chkstk_darwin(v50);
  v51 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v55 = a2;
  *(&v55 + 1) = a3;
  *&v56 = a4;
  *(&v56 + 1) = a5;
  type metadata accessor for PageUpdateAction.CodingKeys(255, &v55);
  swift_getWitnessTable();
  v52 = sub_264E20();
  v46 = *(v52 - 8);
  __chkstk_darwin(v52);
  v15 = &v40 - v14;
  v43 = a5;
  v44 = a2;
  *&v55 = a2;
  *(&v55 + 1) = a3;
  v48 = a3;
  v49 = a4;
  *&v56 = a4;
  *(&v56 + 1) = a5;
  updated = type metadata accessor for PageUpdateAction(0, &v55);
  v17 = *(updated - 8);
  __chkstk_darwin(updated);
  v19 = &v40 - v18;
  sub_2E18(a1, a1[3]);
  v53 = v15;
  v20 = v58;
  sub_265120();
  if (v20)
  {
    return sub_3080(a1);
  }

  v21 = v47;
  v40 = v17;
  v22 = v46;
  v41 = v19;
  v58 = a1;
  v24 = v48;
  v23 = v49;
  LOBYTE(v55) = 0;
  sub_1CD424(&qword_31C5A0, &type metadata accessor for ActionMetrics, &protocol conformance descriptor for ActionMetrics);
  v25 = v50;
  sub_264DF0();
  (*(v45 + 32))(v41, v51, v25);
  sub_260620();
  LOBYTE(v55) = 1;
  sub_1CD424(&qword_31F0B8, &type metadata accessor for ClickData, &protocol conformance descriptor for ClickData);
  sub_264DB0();
  sub_129C04(v21, &v41[*(updated + 52)]);
  v54[0] = v44;
  v54[1] = v24;
  v54[2] = v23;
  v54[3] = v43;
  v26 = type metadata accessor for PageUpdateInstruction(255, v54);
  type metadata accessor for CodeAnyIntentModel(0, v26, v27, v28);
  LOBYTE(v54[0]) = 2;
  swift_getWitnessTable();
  sub_264DF0();
  v29 = updated;
  v30 = &v41[*(updated + 56)];
  v31 = v56;
  *v30 = v55;
  *(v30 + 1) = v31;
  *(v30 + 4) = v57;
  LOBYTE(v55) = 3;
  v32 = sub_264DD0();
  v33 = v58;
  v34 = v32;
  (*(v22 + 8))(v53, v52);
  v35 = v29;
  v36 = *(v29 + 60);
  v37 = v41;
  v41[v36] = v34 & 1;
  v38 = v40;
  (*(v40 + 16))(v42, v37, v35);
  sub_3080(v33);
  return (*(v38 + 8))(v37, v35);
}

uint64_t sub_1CD424(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PageUpdateInstruction.ShelfItemRemovalDescriptor.shelfID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t PageUpdateInstruction.ShelfItemUpdateDescriptor.paginationUpdate.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 72);
  v9 = *(v1 + 56);
  v10[0] = v3;
  *(v10 + 9) = *(v1 + 81);
  v4 = *(v10 + 9);
  v8[0] = *(v1 + 24);
  v5 = v8[0];
  v8[1] = v2;
  a1[2] = v9;
  a1[3] = v3;
  *(a1 + 57) = v4;
  *a1 = v5;
  a1[1] = v2;
  return sub_8198(v8, &v7, qword_31C918, &qword_273598);
}

BOOL PageUpdateInstruction.affectsPageVisibility.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = __chkstk_darwin(a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  v6 = swift_getEnumCaseMultiPayload() == 0;
  (*(v2 + 8))(v5, a1);
  return v6;
}

uint64_t PaginationUpdate.source.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return sub_1CD638(v2, v3, v4, v5, v6);
}

uint64_t sub_1CD638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {

    v5 = vars8;
  }
}

uint64_t PaginationUpdate.next.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 72);
  *(a1 + 32) = v6;
  return sub_1CD694(v2, v3, v4, v5, v6);
}

uint64_t sub_1CD694(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1CD638(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

__n128 PaginationUpdate.init(source:next:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  result = *a2;
  v5 = *(a2 + 16);
  *(a3 + 40) = *a2;
  v6 = *(a2 + 32);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 56) = v5;
  *(a3 + 72) = v6;
  return result;
}

uint64_t sub_1CD6D4()
{
  if (*v0)
  {
    return 1954047342;
  }

  else
  {
    return 0x656372756F73;
  }
}

void sub_1CD704(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v6 || (sub_264F10() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1954047342 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_264F10();

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
}

uint64_t sub_1CD7DC(uint64_t a1)
{
  v2 = sub_1CDA68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1CD818(uint64_t a1)
{
  v2 = sub_1CDA68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PaginationUpdate.encode(to:)(void *a1)
{
  v23 = sub_2EF0(&qword_324538, &qword_2850A0);
  v25 = *(v23 - 8);
  __chkstk_darwin(v23);
  v4 = &v17 - v3;
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v20 = *(v1 + 48);
  v21 = v10;
  v11 = *(v1 + 56);
  v18 = *(v1 + 64);
  v19 = v11;
  v31 = *(v1 + 72);
  v12 = a1[3];
  v22 = a1[4];
  sub_2E18(a1, v12);
  sub_1CD638(v5, v6, v7, v8, v9);
  sub_1CDA68();
  v13 = v23;
  sub_265140();
  v26 = v5;
  v27 = v6;
  v28 = v7;
  v29 = v8;
  v30 = v9;
  v32 = 0;
  sub_1CDABC();
  v14 = v24;
  sub_264E90();
  v15.n128_f64[0] = sub_1CDB10(v26, v27, v28, v29, v30);
  if (!v14)
  {
    v26 = v21;
    v27 = v20;
    v28 = v19;
    v29 = v18;
    v30 = v31;
    v32 = 1;
    sub_1CD694(v21, v20, v19, v18, v31);
    sub_264E60();
    v15.n128_f64[0] = sub_1CDB50(v26, v27, v28, v29, v30);
  }

  return (*(v25 + 8))(v4, v13, v15);
}

unint64_t sub_1CDA68()
{
  result = qword_324540;
  if (!qword_324540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324540);
  }

  return result;
}

unint64_t sub_1CDABC()
{
  result = qword_324548;
  if (!qword_324548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324548);
  }

  return result;
}

double sub_1CDB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {

    v5 = vars8;
  }

  return result;
}

double sub_1CDB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1CDB10(a1, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t PaginationUpdate.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_2EF0(&qword_324550, &qword_2850A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_2E18(a1, a1[3]);
  sub_1CDA68();
  sub_265120();
  if (v2)
  {
    return sub_3080(a1);
  }

  v9 = a2;
  LOBYTE(v26[0]) = 0;
  sub_1CDEB4();
  sub_264DF0();
  v24 = v29;
  v25 = v30;
  v41 = v31;
  v42 = 1;
  sub_264DB0();
  (*(v6 + 8))(v8, v5);
  v23 = v37;
  v21 = *(&v38 + 1);
  v22 = v38;
  v20 = v39;
  v10 = v40;
  v11 = v24;
  v26[0] = v24;
  v12 = *(&v24 + 1);
  v13 = v25;
  v26[1] = v25;
  v14 = *(&v25 + 1);
  v15 = v41;
  LOBYTE(v27) = v41;
  *(&v27 + 1) = v37;
  *v28 = v38;
  *&v28[16] = v39;
  v28[24] = v40;
  v16 = v24;
  v17 = v25;
  *(v9 + 57) = *&v28[9];
  v18 = *v28;
  v9[2] = v27;
  v9[3] = v18;
  *v9 = v16;
  v9[1] = v17;
  sub_1CDF08(v26, &v29);
  sub_3080(a1);
  *&v29 = v11;
  *(&v29 + 1) = v12;
  *&v30 = v13;
  *(&v30 + 1) = v14;
  v31 = v15;
  v32 = v23;
  v33 = v22;
  v34 = v21;
  v35 = v20;
  v36 = v10;
  return sub_1CDF40(&v29);
}

unint64_t sub_1CDEB4()
{
  result = qword_324558;
  if (!qword_324558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324558);
  }

  return result;
}

uint64_t sub_1CDFA4()
{
  if (*v0)
  {
    return 0x657373417478656ELL;
  }

  else
  {
    return 0x666572487478656ELL;
  }
}

void sub_1CDFE8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x666572487478656ELL && a2 == 0xE800000000000000;
  if (v6 || (sub_264F10() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x657373417478656ELL && a2 == 0xEC00000073444974)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_264F10();

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
}

uint64_t sub_1CE0C8(uint64_t a1)
{
  v2 = sub_1D055C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1CE104(uint64_t a1)
{
  v2 = sub_1D055C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1CE14C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_264F10();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1CE1CC(uint64_t a1)
{
  v2 = sub_1D05B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1CE208(uint64_t a1)
{
  v2 = sub_1D05B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1CE244()
{
  if (*v0)
  {
    return 0x65526F5468746170;
  }

  else
  {
    return 12383;
  }
}

void sub_1CE280(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_264F10() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x65526F5468746170 && a2 == 0xEF73656372756F73)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_264F10();

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
}

uint64_t sub_1CE35C(uint64_t a1)
{
  v2 = sub_1D0604();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1CE398(uint64_t a1)
{
  v2 = sub_1D0604();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PaginationInfo.encode(to:)(void *a1)
{
  v3 = sub_2EF0(&qword_324560, &qword_2850B0);
  v24 = *(v3 - 8);
  v25 = v3;
  __chkstk_darwin(v3);
  v5 = v21 - v4;
  v6 = sub_2EF0(&qword_324568, &qword_2850B8);
  v22 = *(v6 - 8);
  v23 = v6;
  __chkstk_darwin(v6);
  v8 = v21 - v7;
  v28 = sub_2EF0(&qword_324570, &unk_2850C0);
  v9 = *(v28 - 8);
  __chkstk_darwin(v28);
  v11 = v21 - v10;
  v12 = v1[1];
  v26 = *v1;
  v13 = v1[3];
  v21[2] = v1[2];
  v21[3] = v12;
  v21[1] = v13;
  v14 = *(v1 + 32);
  sub_2E18(a1, a1[3]);
  sub_1D055C();
  sub_265140();
  if (v14)
  {
    v33 = 1;
    sub_1D05B0();
    v15 = v28;
    sub_264E30();
    v29 = v26;
    sub_2EF0(&qword_3160B0, &qword_267D40);
    sub_1D0658(&qword_324588, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    v16 = v25;
    sub_264E90();
    v17 = *(v24 + 8);
    v18 = v5;
LABEL_6:
    v17(v18, v16);
    return (*(v9 + 8))(v11, v15);
  }

  v32 = 0;
  sub_1D0604();
  v15 = v28;
  sub_264E30();
  v31 = 0;
  v19 = v27;
  v16 = v23;
  sub_264E70();
  if (!v19)
  {
    v30 = 1;
    sub_264E40();
    v17 = *(v22 + 8);
    v18 = v8;
    goto LABEL_6;
  }

  (*(v22 + 8))(v8, v16);
  return (*(v9 + 8))(v11, v15);
}

uint64_t PaginationInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_2EF0(&qword_324598, &qword_2850D0);
  v4 = *(v3 - 8);
  v39 = v3;
  v40 = v4;
  __chkstk_darwin(v3);
  v6 = &v36 - v5;
  v7 = sub_2EF0(&qword_3245A0, &qword_2850D8);
  v38 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  v10 = sub_2EF0(qword_3245A8, &unk_2850E0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - v12;
  v14 = a1[3];
  v43 = a1;
  sub_2E18(a1, v14);
  sub_1D055C();
  v15 = v42;
  sub_265120();
  if (!v15)
  {
    v42 = v11;
    v16 = v41;
    v17 = sub_264E00();
    v18 = (2 * *(v17 + 16)) | 1;
    v44 = v17;
    v45 = v17 + 32;
    v46 = 0;
    v47 = v18;
    v19 = sub_AFA8();
    v20 = v10;
    if (v19 == 2 || v46 != v47 >> 1)
    {
      v22 = sub_264C10();
      swift_allocError();
      v24 = v23;
      sub_2EF0(&qword_315CD0, &qword_266E00);
      *v24 = &type metadata for PaginationInfo;
      sub_264D60();
      sub_264BF0();
      (*(*(v22 - 8) + 104))(v24, enum case for DecodingError.typeMismatch(_:), v22);
      swift_willThrow();
      (*(v42 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v37 = v19;
      if (v19)
      {
        LOBYTE(v48) = 1;
        sub_1D05B0();
        sub_264D50();
        v21 = v42;
        sub_2EF0(&qword_3160B0, &qword_267D40);
        sub_1D0658(&qword_31C8E8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
        v27 = v39;
        sub_264DF0();
        (*(v40 + 8))(v6, v27);
        (*(v21 + 8))(v13, v20);
        swift_unknownObjectRelease();
        v28 = 0;
        v39 = 0;
        v29 = 0;
        v30 = v48;
      }

      else
      {
        LOBYTE(v48) = 0;
        sub_1D0604();
        sub_264D50();
        v26 = v42;
        v40 = v20;
        LOBYTE(v48) = 0;
        v31 = sub_264DC0();
        v28 = v32;
        v36 = v31;
        LOBYTE(v48) = 1;
        v39 = sub_264D70();
        v33 = (v26 + 8);
        v35 = v34;
        (*(v38 + 8))(v9, v7);
        (*v33)(v13, v40);
        swift_unknownObjectRelease();
        v29 = v35;
        v30 = v36;
      }

      *v16 = v30;
      *(v16 + 8) = v28;
      *(v16 + 16) = v39;
      *(v16 + 24) = v29;
      *(v16 + 32) = v37 & 1;
    }
  }

  return sub_3080(v43);
}

unint64_t PageUpdateAction.description.getter(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0xE000000000000000;
  sub_264BC0(46);

  v5 = 0xD000000000000011;
  v6 = 0x8000000000294600;
  v7._countAndFlagsBits = sub_265260();
  sub_264530(v7);

  v8._countAndFlagsBits = 8236;
  v8._object = 0xE200000000000000;
  sub_264530(v8);
  v9._countAndFlagsBits = sub_265260();
  sub_264530(v9);

  v10._countAndFlagsBits = 0xD000000000000015;
  v10._object = 0x8000000000294620;
  sub_264530(v10);
  PageUpdateAction.instructionIntent.getter(a1, v4);
  sub_2E18(v4, v4[3]);
  sub_2638A0();
  sub_2E18(v3, v3[3]);
  v11._countAndFlagsBits = sub_2638C0();
  sub_264530(v11);

  sub_3080(v3);
  sub_3080(v4);
  return v5;
}

unint64_t PageUpdateInstruction.description.getter(uint64_t a1)
{
  v3 = type metadata accessor for BooksAlertAction.Button(0);
  v98 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v5 = (&v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for BooksAlertAction(0);
  __chkstk_darwin(v6);
  v8 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ToolbarItemType(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v95 - v14;
  v17 = __chkstk_darwin(v16);
  v19 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v1, a1, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x646E6550706F7473;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v51 = *v19;
      v99.n128_u64[0] = 0;
      v99.n128_u64[1] = 0xE000000000000000;
      sub_264BC0(17);
      v106._countAndFlagsBits = 0x6853646E65707061;
      v106._object = 0xEE00287365766C65;
      sub_264530(v106);
      v102.n128_u64[0] = v51;
      __chkstk_darwin(v52);
      v53 = (&v95 - 6);
      *(&v95 - 4) = *(a1 + 16);
      *(&v95 - 3) = *(a1 + 24);
      *(&v95 - 1) = *(a1 + 40);
      v54 = sub_2646F0();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      WitnessTable = swift_getWitnessTable();
      v58 = sub_1D16B8;
      goto LABEL_29;
    case 2:
      v59 = *v19;
      v99.n128_u64[0] = 0;
      v99.n128_u64[1] = 0xE000000000000000;
      sub_264BC0(18);
      v107._countAndFlagsBits = 0x536563616C706572;
      v107._object = 0xEF287365766C6568;
      sub_264530(v107);
      v102.n128_u64[0] = v59;
      __chkstk_darwin(v60);
      v53 = (&v95 - 6);
      *(&v95 - 4) = *(a1 + 16);
      *(&v95 - 3) = *(a1 + 24);
      *(&v95 - 1) = *(a1 + 40);
      v54 = sub_2646F0();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      WitnessTable = swift_getWitnessTable();
      v58 = sub_1D0894;
LABEL_29:
      v61 = sub_1ABAD4(v58, v53, v54, AssociatedTypeWitness, &type metadata for Never, WitnessTable, &protocol witness table for Never, v57);

      v102.n128_u64[0] = v61;
      sub_2646F0();
      swift_getWitnessTable();
      sub_264EF0();
      goto LABEL_53;
    case 3:
      v99.n128_u64[0] = 0;
      v99.n128_u64[1] = 0xE000000000000000;
      sub_264BC0(17);

      strcpy(&v99, "removeShelves(");
      v99.n128_u8[15] = -18;
      v26 = sub_2646A0();
      v28 = v27;

      v105._countAndFlagsBits = v26;
      v105._object = v28;
      sub_264530(v105);
      goto LABEL_53;
    case 4:
      v64 = *v19;
      v65 = *(v19 + 1);
      v99.n128_u64[0] = 0;
      v99.n128_u64[1] = 0xE000000000000000;
      sub_264BC0(24);

      v99.n128_u64[0] = 0xD000000000000015;
      v99.n128_u64[1] = 0x80000000002946C0;
      goto LABEL_52;
    case 5:
      v74 = *v19;
      v102.n128_u64[0] = 0;
      v102.n128_u64[1] = 0xE000000000000000;
      v75._countAndFlagsBits = 0x7449646E65707061;
      v75._object = 0xEC00000028736D65;
      goto LABEL_37;
    case 6:
      v62 = *v19;
      v102.n128_u64[0] = 0;
      v102.n128_u64[1] = 0xE000000000000000;
      v108._countAndFlagsBits = 0x744965766F6D6572;
      v108._object = 0xEC00000028736D65;
      sub_264530(v108);
      v101 = v62;
      v63 = *(a1 + 32);
      v99 = *(a1 + 16);
      v100 = v63;
      type metadata accessor for PageUpdateInstruction.ShelfItemRemovalDescriptor(255, &v99);
      goto LABEL_38;
    case 7:
      v74 = *v19;
      v99.n128_u64[0] = 0;
      v99.n128_u64[1] = 0xE000000000000000;
      sub_264BC0(16);
      v102 = v99;
      v75._countAndFlagsBits = 0x496563616C706572;
      v75._object = 0xED000028736D6574;
LABEL_37:
      sub_264530(v75);
      v101 = v74;
      v77 = *(a1 + 32);
      v99 = *(a1 + 16);
      v100 = v77;
      type metadata accessor for PageUpdateInstruction.ShelfItemUpdateDescriptor(255, &v99);
      goto LABEL_38;
    case 8:
      v32 = *v19;
      v99.n128_u64[0] = 0;
      v99.n128_u64[1] = 0xE000000000000000;
      sub_264BC0(31);

      v99.n128_u64[0] = 0xD00000000000001CLL;
      v99.n128_u64[1] = 0x80000000002946A0;
      v33 = *(v32 + 16);
      if (v33)
      {
        v102.n128_u64[0] = _swiftEmptyArrayStorage;
        sub_2DAA4(0, v33, 0);
        v34 = v32 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
        v35 = v102.n128_u64[0];
        v36 = *(v10 + 72);
        v97 = 0x800000000028FB90;
        v98 = v36;
        v95 = v32;
        v96 = 0x800000000028FB40;
        do
        {
          sub_1D079C(v34, v15, type metadata accessor for ToolbarItemType);
          sub_1D079C(v15, v12, type metadata accessor for ToolbarItemType);
          v37 = swift_getEnumCaseMultiPayload();
          if (v37 <= 2)
          {
            if (v37)
            {
              if (v37 == 1)
              {
                sub_1D0804(v12, type metadata accessor for ToolbarItemType);
                sub_1D0804(v15, type metadata accessor for ToolbarItemType);
                v41 = 0xD000000000000014;
                v42 = v96;
              }

              else
              {

                v43 = sub_2EF0(&qword_31B7C8, &qword_270F70);
                v44 = *(v43 + 48);
                v45 = *(v43 + 64);

                sub_1D0804(v15, type metadata accessor for ToolbarItemType);
                sub_3080(&v12[v45]);
                sub_8E80(&v12[v44], &qword_316960, &unk_2689F0);
                v41 = 0x69576E6F74747562;
                v42 = 0xEF656C7469546874;
              }
            }

            else
            {
              sub_1D0804(v12, type metadata accessor for ToolbarItemType);
              sub_1D0804(v15, type metadata accessor for ToolbarItemType);
              v41 = 0x4D747865746E6F63;
              v42 = 0xEB00000000756E65;
            }
          }

          else if (v37 > 4)
          {
            if (v37 == 5)
            {
              sub_1D0804(v12, type metadata accessor for ToolbarItemType);
              sub_1D0804(v15, type metadata accessor for ToolbarItemType);
              v42 = 0xE600000000000000;
              v41 = 0x70756B636F6CLL;
            }

            else
            {
              sub_1D0804(v15, type metadata accessor for ToolbarItemType);
              sub_3080(v12 + 1);
              v41 = 0xD000000000000016;
              v42 = v97;
            }
          }

          else if (v37 == 3)
          {

            v38 = sub_2EF0(&qword_31B7C0, &unk_270F60);
            v39 = *(v38 + 48);
            v40 = *(v38 + 64);
            sub_1D0804(v15, type metadata accessor for ToolbarItemType);
            sub_3080(&v12[v40]);
            sub_8E80(&v12[v39], &qword_316960, &unk_2689F0);
            v41 = 0x69576E6F74747562;
            v42 = 0xEF6567616D496874;
          }

          else
          {
            v46 = *(sub_2EF0(&qword_31B7B8, &unk_277F10) + 48);
            sub_1D0804(v15, type metadata accessor for ToolbarItemType);
            sub_3080(&v12[v46]);
            v47 = sub_2610B0();
            (*(*(v47 - 8) + 8))(v12, v47);
            v41 = 0x75426D6574737973;
            v42 = 0xEC0000006E6F7474;
          }

          v102.n128_u64[0] = v35;
          v49 = *(v35 + 16);
          v48 = *(v35 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_2DAA4((v48 > 1), v49 + 1, 1);
            v35 = v102.n128_u64[0];
          }

          *(v35 + 16) = v49 + 1;
          v50 = v35 + 16 * v49;
          *(v50 + 32) = v41;
          *(v50 + 40) = v42;
          v34 += v98;
          --v33;
        }

        while (v33);
      }

      v64 = sub_2646A0();
      v65 = v94;

LABEL_52:
      v118._countAndFlagsBits = v64;
      v118._object = v65;
      sub_264530(v118);
LABEL_53:

      v119._countAndFlagsBits = 41;
      v119._object = 0xE100000000000000;
      sub_264530(v119);
      return v99.n128_u64[0];
    case 9:
      v24 = *v19;
      v99.n128_u64[0] = 0;
      v99.n128_u64[1] = 0xE000000000000000;
      sub_264BC0(23);
      v102 = v99;
      v25 = "replaceShelfHeaders(";
      goto LABEL_35;
    case 10:
      v24 = *v19;
      v99.n128_u64[0] = 0;
      v99.n128_u64[1] = 0xE000000000000000;
      sub_264BC0(23);
      v102 = v99;
      v25 = "replaceShelfFooters(";
LABEL_35:
      v110._object = ((v25 - 32) | 0x8000000000000000);
      v110._countAndFlagsBits = 0xD000000000000014;
      sub_264530(v110);
      v101 = v24;
      v76 = *(a1 + 32);
      v99 = *(a1 + 16);
      v100 = v76;
      type metadata accessor for PageUpdateInstruction.ShelfHeaderFooterUpdateDescriptor(255, &v99);
LABEL_38:
      sub_2646F0();
      swift_getWitnessTable();
      sub_264EF0();

      v111._countAndFlagsBits = 41;
      v111._object = 0xE100000000000000;
      sub_264530(v111);
      return v102.n128_u64[0];
    case 11:
      sub_1D0720(v19, v8);
      v99.n128_u64[0] = 0;
      v99.n128_u64[1] = 0xE000000000000000;
      sub_264BC0(50);

      v99.n128_u64[0] = 0xD000000000000014;
      v99.n128_u64[1] = 0x8000000000294640;
      v29 = &v8[v6[5]];
      if (v29[1])
      {
        v30 = *v29;
        v31 = v29[1];
      }

      else
      {
        v30 = 0x6E776F6E6B6E753CLL;
        v31 = 0xE90000000000003ELL;
      }

      v112._countAndFlagsBits = v30;
      v112._object = v31;
      sub_264530(v112);

      v113._countAndFlagsBits = 0x67617373656D202CLL;
      v113._object = 0xEB00000000203A65;
      sub_264530(v113);
      v78 = &v8[v6[6]];
      if (v78[1])
      {
        v79 = *v78;
        v80 = v78[1];
      }

      else
      {
        v79 = 0x6E776F6E6B6E753CLL;
        v80 = 0xE90000000000003ELL;
      }

      v114._countAndFlagsBits = v79;
      v114._object = v80;
      sub_264530(v114);

      v115._countAndFlagsBits = 0x6E6F74747562202CLL;
      v115._object = 0xEB00000000203A73;
      sub_264530(v115);
      v81 = *&v8[v6[7]];
      v82 = *(v81 + 16);
      v83 = _swiftEmptyArrayStorage;
      if (v82)
      {
        v97 = v8;
        v102.n128_u64[0] = _swiftEmptyArrayStorage;
        sub_2DAA4(0, v82, 0);
        v83 = v102.n128_u64[0];
        v84 = v81 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
        v85 = *(v98 + 72);
        do
        {
          sub_1D079C(v84, v5, type metadata accessor for BooksAlertAction.Button);
          v87 = *v5;
          v86 = v5[1];

          sub_1D0804(v5, type metadata accessor for BooksAlertAction.Button);
          v102.n128_u64[0] = v83;
          v89 = v83[2];
          v88 = v83[3];
          if (v89 >= v88 >> 1)
          {
            sub_2DAA4((v88 > 1), v89 + 1, 1);
            v83 = v102.n128_u64[0];
          }

          v83[2] = v89 + 1;
          v90 = &v83[2 * v89];
          v90[4] = v87;
          v90[5] = v86;
          v84 += v85;
          --v82;
        }

        while (v82);
        v8 = v97;
      }

      v102.n128_u64[0] = v83;
      sub_2EF0(&qword_3160B0, &qword_267D40);
      sub_DDE0();
      v91 = sub_264340();
      v93 = v92;

      v116._countAndFlagsBits = v91;
      v116._object = v93;
      sub_264530(v116);

      v117._countAndFlagsBits = 10528;
      v117._object = 0xE200000000000000;
      sub_264530(v117);
      v23 = v99.n128_u64[0];
      sub_1D0804(v8, type metadata accessor for BooksAlertAction);
      return v23;
    case 12:
      v66 = *v19;
      v99.n128_u64[0] = 0x646E756F706D6F63;
      v99.n128_u64[1] = 0xE900000000000028;
      v102.n128_u64[0] = v66;
      __chkstk_darwin(0x646E6550706F7473);
      v67 = *(a1 + 32);
      *(&v95 - 2) = *(a1 + 16);
      *(&v95 - 1) = v67;
      v68 = sub_2646F0();
      v69 = swift_getWitnessTable();
      sub_1ABAD4(sub_1D06C4, (&v95 - 6), v68, &type metadata for String, &type metadata for Never, v69, &protocol witness table for Never, v70);

      v71 = sub_2646A0();
      v73 = v72;

      v109._countAndFlagsBits = v71;
      v109._object = v73;
      sub_264530(v109);

      return v99.n128_u64[0];
    case 13:
      return 0xD000000000000010;
    case 14:
      return result;
    default:
      sub_F7CC(v19, &v99);
      strcpy(&v102, "replacePage(");
      v102.n128_u8[13] = 0;
      v102.n128_u16[7] = -5120;
      sub_2E18(&v99, *(&v100 + 1));
      v103._countAndFlagsBits = sub_2638C0();
      sub_264530(v103);

      v104._countAndFlagsBits = 41;
      v104._object = 0xE100000000000000;
      sub_264530(v104);
      v23 = v102.n128_u64[0];
      sub_3080(&v99);
      return v23;
  }
}

uint64_t PageUpdateInstruction.ShelfItemUpdateDescriptor.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 5);
  v5 = *(v0 + 9);
  v16 = *(v0 + 7);
  v17[0] = v5;
  *(v17 + 9) = *(v0 + 81);
  v14 = *(v0 + 3);
  v15 = v4;
  v6 = *(v0 + 97);
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_8198(&v14, v10, qword_31C918, &qword_273598);
  sub_264BC0(81);
  v18._countAndFlagsBits = 0xD00000000000001ALL;
  v18._object = 0x80000000002946E0;
  sub_264530(v18);
  *&v10[0] = *(v2 + 16);
  v19._countAndFlagsBits = sub_264EB0();
  sub_264530(v19);

  v20._object = 0x8000000000294700;
  v20._countAndFlagsBits = 0xD000000000000011;
  sub_264530(v20);
  v21._countAndFlagsBits = v1;
  v21._object = v3;
  sub_264530(v21);
  v22._countAndFlagsBits = 0xD000000000000014;
  v22._object = 0x8000000000294720;
  sub_264530(v22);
  v10[2] = v16;
  v11[0] = v17[0];
  *(v11 + 9) = *(v17 + 9);
  v10[0] = v14;
  v10[1] = v15;
  sub_2EF0(qword_31C918, &qword_273598);
  v23._countAndFlagsBits = sub_2644A0();
  sub_264530(v23);

  v24._countAndFlagsBits = 0x657075646564202CLL;
  v24._object = 0xEA0000000000203ALL;
  sub_264530(v24);
  if (v6)
  {
    v7._countAndFlagsBits = 1702195828;
  }

  else
  {
    v7._countAndFlagsBits = 0x65736C6166;
  }

  if (v6)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  v7._object = v8;
  sub_264530(v7);

  return v12;
}

unint64_t PageUpdateInstruction.ShelfHeaderFooterUpdateDescriptor.description.getter()
{
  sub_264BC0(46);

  sub_264530(*(v0 + 40));
  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  sub_264530(v2);
  return 0xD00000000000002BLL;
}

uint64_t _s7BooksUI14PaginationInfoO2eeoiySbAC_ACtFZ_0(void *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (v6)
  {
    if (*(a2 + 32))
    {
      v12 = sub_C887C(*a1, *a2);
      sub_1CD638(v8, v7, v9, v10, 1);
      sub_1CD638(v3, v2, v4, v5, 1);
      sub_1CDB10(v3, v2, v4, v5, 1);
      sub_1CDB10(v8, v7, v9, v10, 1);
      return v12 & 1;
    }

    goto LABEL_5;
  }

  if (*(a2 + 32))
  {
LABEL_5:
    sub_1CD638(*a2, *(a2 + 8), v9, v10, v11);
    sub_1CD638(v3, v2, v4, v5, v6);
    sub_1CDB10(v3, v2, v4, v5, v6);
    v14 = v8;
    v15 = v7;
    v16 = v9;
    v17 = v10;
    v18 = v11;
LABEL_6:
    sub_1CDB10(v14, v15, v16, v17, v18);
    return 0;
  }

  v19 = v3 == v8 && v2 == v7;
  if (!v19 && (sub_264F10() & 1) == 0)
  {
    sub_1CD638(v8, v7, v9, v10, 0);
    sub_1CD638(v3, v2, v4, v5, 0);
    sub_1CDB10(v3, v2, v4, v5, 0);
    v14 = v8;
    v15 = v7;
    v16 = v9;
    v17 = v10;
    v18 = 0;
    goto LABEL_6;
  }

  if (v5)
  {
    if (!v10)
    {
      sub_1CD638(v8, v7, v9, 0, 0);
      sub_1CD638(v3, v2, v4, v5, 0);
      sub_1CDB10(v3, v2, v4, v5, 0);
      v14 = v8;
      v15 = v7;
      v16 = v9;
      v17 = 0;
      v18 = 0;
      goto LABEL_6;
    }

    if (v4 == v9 && v5 == v10)
    {
      sub_1CD638(v8, v7, v4, v5, 0);
      sub_1CD638(v3, v2, v4, v5, 0);
      sub_1CDB10(v3, v2, v4, v5, 0);
      sub_1CDB10(v8, v7, v4, v5, 0);
      return 1;
    }

    v20 = sub_264F10();
    sub_1CD638(v8, v7, v9, v10, 0);
    sub_1CD638(v3, v2, v4, v5, 0);
    sub_1CDB10(v3, v2, v4, v5, 0);
    sub_1CDB10(v8, v7, v9, v10, 0);
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    sub_1CD638(v8, v7, v9, v10, 0);
    sub_1CD638(v3, v2, v4, 0, 0);

    sub_1CDB10(v3, v2, v4, 0, 0);
    sub_1CDB10(v8, v7, v9, v10, 0);
    if (v10)
    {

      return 0;
    }
  }

  return 1;
}

unint64_t sub_1D055C()
{
  result = qword_324578;
  if (!qword_324578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324578);
  }

  return result;
}

unint64_t sub_1D05B0()
{
  result = qword_324580;
  if (!qword_324580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324580);
  }

  return result;
}

unint64_t sub_1D0604()
{
  result = qword_324590;
  if (!qword_324590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324590);
  }

  return result;
}

uint64_t sub_1D0658(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(&qword_3160B0, &qword_267D40);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D06C4@<X0>(unint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  v7[0] = *(v1 + 16);
  v7[1] = v3;
  updated = type metadata accessor for PageUpdateInstruction(0, v7);
  result = PageUpdateInstruction.description.getter(updated);
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t sub_1D0720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BooksAlertAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D079C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D0804(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D08D0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

__n128 sub_1D0920(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

void sub_1D092C(uint64_t a1)
{
  v2 = sub_263AF0();
  if (v3 <= 0x3F)
  {
    v13 = 0;
    v16 = v2;
    sub_1D0E7C(319, &qword_31F140, &type metadata accessor for ClickData, &type metadata accessor for Optional);
    if (v5 <= 0x3F)
    {
      v14 = 0;
      v17 = v4;
      v6 = *(a1 + 32);
      v12[0] = *(a1 + 16);
      v12[1] = v6;
      updated = type metadata accessor for PageUpdateInstruction(255, v12);
      v10 = type metadata accessor for CodeAnyIntentModel(319, updated, v8, v9);
      if (v11 <= 0x3F)
      {
        v15 = 0;
        v18 = v10;
        v19 = &type metadata for Bool;
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D0A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_263AF0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_316B98, &unk_275840);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 52);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 56) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1D0B5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_263AF0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2EF0(&qword_316B98, &unk_275840);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 56) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 52);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1D0C74(void *a1)
{
  v2 = a1[2];
  v23 = v2;
  ExtendedExistentialTypeMetadata = swift_getExtendedExistentialTypeMetadata();
  v3 = a1[3];
  v4 = sub_2646F0();
  if (v5 <= 0x3F)
  {
    v28 = v4;
    v29 = v4;
    sub_1D0E2C();
    if (v7 <= 0x3F)
    {
      v30 = v6;
      v31 = &type metadata for String;
      v8 = a1[4];
      v9 = a1[5];
      v23 = v2;
      v24 = v3;
      v25 = v8;
      v26 = v9;
      type metadata accessor for PageUpdateInstruction.ShelfItemUpdateDescriptor(255, &v23);
      v10 = sub_2646F0();
      if (v11 <= 0x3F)
      {
        v12 = v10;
        v32 = v10;
        v23 = v2;
        v24 = v3;
        v25 = v8;
        v26 = v9;
        type metadata accessor for PageUpdateInstruction.ShelfItemRemovalDescriptor(255, &v23);
        v13 = sub_2646F0();
        if (v14 <= 0x3F)
        {
          v33 = v13;
          v34 = v12;
          sub_1D0E7C(319, qword_3246B8, type metadata accessor for ToolbarItemType, &type metadata accessor for Array);
          if (v16 <= 0x3F)
          {
            v35 = v15;
            v23 = v2;
            v24 = v3;
            v25 = v8;
            v26 = v9;
            type metadata accessor for PageUpdateInstruction.ShelfHeaderFooterUpdateDescriptor(255, &v23);
            v17 = sub_2646F0();
            if (v18 <= 0x3F)
            {
              v36 = v17;
              v37 = v17;
              v19 = type metadata accessor for BooksAlertAction(319);
              if (v20 <= 0x3F)
              {
                v38 = v19;
                v21 = sub_2646F0();
                if (v22 <= 0x3F)
                {
                  v39 = v21;
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D0E2C()
{
  if (!qword_3246B0)
  {
    v0 = sub_2646F0();
    if (!v1)
    {
      atomic_store(v0, &qword_3246B0);
    }
  }
}

void sub_1D0E7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D0EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D0F28(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1D0F3C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1D0F68(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 98))
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

uint64_t sub_1D0FB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 98) = 1;
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

    *(result + 98) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D100C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D1048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1D1084(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D10A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 73))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D10F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D1158(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D11A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_1D1264()
{
  result = qword_3248C0;
  if (!qword_3248C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3248C0);
  }

  return result;
}

unint64_t sub_1D12BC()
{
  result = qword_3248C8;
  if (!qword_3248C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3248C8);
  }

  return result;
}

unint64_t sub_1D1314()
{
  result = qword_3248D0;
  if (!qword_3248D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3248D0);
  }

  return result;
}

unint64_t sub_1D136C()
{
  result = qword_3248D8;
  if (!qword_3248D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3248D8);
  }

  return result;
}

unint64_t sub_1D13C4()
{
  result = qword_3248E0;
  if (!qword_3248E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3248E0);
  }

  return result;
}

unint64_t sub_1D141C()
{
  result = qword_3248E8;
  if (!qword_3248E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3248E8);
  }

  return result;
}

unint64_t sub_1D1474()
{
  result = qword_3248F0;
  if (!qword_3248F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3248F0);
  }

  return result;
}

unint64_t sub_1D14CC()
{
  result = qword_3248F8;
  if (!qword_3248F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3248F8);
  }

  return result;
}

unint64_t sub_1D1524()
{
  result = qword_324900;
  if (!qword_324900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324900);
  }

  return result;
}

unint64_t sub_1D157C()
{
  result = qword_324908;
  if (!qword_324908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324908);
  }

  return result;
}

unint64_t sub_1D15D4()
{
  result = qword_324910;
  if (!qword_324910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324910);
  }

  return result;
}

unint64_t sub_1D162C()
{
  result = qword_324918;
  if (!qword_324918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324918);
  }

  return result;
}

uint64_t sub_1D16F0(uint64_t result, __n128 a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = sub_261DE0();
    sub_1D5538(v4);
    sub_264820();
    sub_264860();
    sub_264840();
    if (v6)
    {
      sub_264860();
    }

    else
    {
      v8 = v5;
    }

    result = sub_264820();
    if (v8 >= v7)
    {
      sub_264890();
      return (*(*(v3 - 8) + 8))(v2, v3);
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_1D1858(uint64_t a1)
{
  sub_265050();
  VerticalMasonryCoverGridViewModel.GridStyle.hash(into:)();
  return sub_265080();
}

uint64_t ShelfCollage2.init(_:layout:spacing:itemContent:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *x8_0@<X8>, uint64_t a9)
{
  v29 = a7;
  v30 = a8;
  v26 = a4;
  v27 = a5;
  v28 = a9;
  v15 = sub_260C50();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a6 - 8);
  v21 = __chkstk_darwin(v20);
  v23 = &v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a2) = *a2;
  (*(v19 + 16))(v23, a1, a6, v21);
  (*(v16 + 16))(v18, a3, v15);
  if (a2)
  {
    sub_1D20FC(v23, v18, v26, v27, a6, v29, v30, v28, x8_0);
  }

  else
  {
    sub_1D1A90(v23, v18, v26, v27, a6, v29, v30, v28, x8_0);
  }

  (*(v16 + 8))(a3, v15);
  return (*(v19 + 8))(a1, a6);
}

void sub_1D1A90(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v12 = a5;
  *v70 = a5;
  *&v70[8] = a6;
  *&v70[16] = a7;
  *&v70[24] = a8;
  v62 = type metadata accessor for ShelfCollage2(0, v70);
  v17 = &a9[v62[16]];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = *(sub_263850() + 16);

  v19 = v18 % 5;
  v20 = sub_263850();
  v21 = v19 == 2 || v19 == 4;
  v63 = a9;
  v60 = a7;
  if (v21)
  {
    v22 = *(sub_263850() + 16);

    if (!v22)
    {
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v23 = v22 - 1;
  }

  else
  {
    v23 = *(sub_263850() + 16);
  }

  if (*(v20 + 16) >= v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = *(v20 + 16);
  }

  v10 = _swiftEmptyArrayStorage;
  v59 = a3;
  v64 = a1;
  v65 = v12;
  if (v23 && v24)
  {
    v25 = v20 + 32;
    v79 = _swiftEmptyArrayStorage;
    sub_2DBA4(0, v24, 0);
    v26 = 0;
    v10 = v79;
    do
    {
      sub_30CC(v25, &v75 + 8);
      *&v74[0] = v26;
      sub_F7CC((&v75 + 8), v74 + 8);
      v73[0] = v74[0];
      v73[1] = v74[1];
      v73[2] = v74[2];
      sub_F7CC((v73 + 8), v70);
      *(&v71 + 1) = v26;
      v79 = v10;
      v28 = v10[2];
      v27 = v10[3];
      if (v28 >= v27 >> 1)
      {
        sub_2DBA4((v27 > 1), v28 + 1, 1);
        v10 = v79;
      }

      v10[2] = v28 + 1;
      v29 = &v10[6 * v28];
      v30 = *v70;
      v31 = v71;
      v29[3] = *&v70[16];
      v29[4] = v31;
      v29[2] = v30;
      ++v26;
      v25 += 40;
    }

    while (v24 != v26);
  }

  v9 = v10[2];
  if (!v9)
  {
    v32 = a4;

    a9 = _swiftEmptyArrayStorage;
    goto LABEL_62;
  }

  v67 = v10 + 4;
  sub_1D5500((v10 + 4), &v75);

  if (v9 == 1)
  {

    a1 = 0;
    a9 = _swiftEmptyArrayStorage;
    goto LABEL_55;
  }

  v58 = a4;
  a1 = 0;
  a4 = v70;
  v33 = (v10 + 10);
  a9 = _swiftEmptyArrayStorage;
  v34 = 1;
  v35 = 3;
  v66 = v9;
  do
  {
    if (v34 >= v10[2])
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    sub_1D5500(v33, &v70[8]);
    if (!v71)
    {
      break;
    }

    v36 = *&v70[24];
    v37 = v72;
    v38 = 5 * (v78 / 5);
    v39 = v78 % 5;
    if ((v78 % 5 - 1) < 2)
    {
      ++v38;
    }

    else if ((v39 - 3) >= 2)
    {
      if (v39)
      {
        v38 = -1;
      }
    }

    else
    {
      v40 = __OFADD__(v38, 3);
      v38 += 3;
      if (v40)
      {
        goto LABEL_66;
      }
    }

    v41 = 5 * (v72 / 5);
    v42 = v72 % 5;
    v68 = *&v70[8];
    v69 = v71;
    if ((v72 % 5 - 1) < 2)
    {
      ++v41;
      goto LABEL_41;
    }

    if ((v42 - 3) < 2)
    {
      v40 = __OFADD__(v41, 3);
      v41 += 3;
      if (v40)
      {
        goto LABEL_67;
      }

LABEL_41:
      if (v38 == v41)
      {
        goto LABEL_22;
      }

      goto LABEL_44;
    }

    if (!v42)
    {
      goto LABEL_41;
    }

    if (v38 == -1)
    {
LABEL_22:
      sub_1D48B8(&v75);
      goto LABEL_23;
    }

LABEL_44:
    if (v34 < a1)
    {
      goto LABEL_64;
    }

    v43 = v10[2];
    if (v43 < a1 || v43 < v34)
    {
      goto LABEL_65;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a9 = sub_E99B4(0, *(a9 + 2) + 1, 1, a9);
    }

    v45 = *(a9 + 2);
    v44 = *(a9 + 3);
    if (v45 >= v44 >> 1)
    {
      a9 = sub_E99B4((v44 > 1), v45 + 1, 1, a9);
    }

    sub_1D48B8(&v75);
    *(a9 + 2) = v45 + 1;
    v46 = &a9[32 * v45];
    v9 = v66;
    *(v46 + 4) = v10;
    *(v46 + 5) = v67;
    *(v46 + 6) = a1;
    *(v46 + 7) = v35;
    a1 = v34;
    a4 = v70;
LABEL_23:
    ++v34;
    v75 = v68;
    v77 = v69;
    v76 = v36;
    v78 = v37;
    v33 += 48;
    v35 += 2;
  }

  while (v9 != v34);

  if (a1 == v9)
  {

    sub_1D48B8(&v75);
    v32 = v58;
    goto LABEL_61;
  }

  a4 = v58;
  if (v9 < a1)
  {
    __break(1u);
    return;
  }

LABEL_55:
  v47 = v10[2];
  if (v47 < a1 || v47 < v9)
  {
    goto LABEL_69;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_70:
    a9 = sub_E99B4(0, *(a9 + 2) + 1, 1, a9);
  }

  v49 = *(a9 + 2);
  v48 = *(a9 + 3);
  if (v49 >= v48 >> 1)
  {
    a9 = sub_E99B4((v48 > 1), v49 + 1, 1, a9);
  }

  v32 = a4;

  sub_1D48B8(&v75);
  *(a9 + 2) = v49 + 1;
  v50 = &a9[32 * v49];
  *(v50 + 4) = v10;
  *(v50 + 5) = v67;
  *(v50 + 6) = a1;
  *(v50 + 7) = (2 * v9) | 1;
LABEL_61:
  a1 = v64;
  v12 = v65;
LABEL_62:
  *v63 = a9;
  v51 = v62[13];
  v52 = sub_260C50();
  v53 = *(v52 - 8);
  (*(v53 + 16))(&v63[v51], a2, v52);
  v54 = ShelfModel.tallestCoverAspectRatio.getter(v12, v60);
  LOBYTE(v51) = v55;
  swift_unknownObjectRelease();
  (*(v53 + 8))(a2, v52);
  (*(*(v12 - 8) + 8))(a1, v12);
  v56 = &v63[v62[14]];
  *v56 = v54;
  v56[8] = v51 & 1;
  v57 = &v63[v62[15]];
  *v57 = v59;
  v57[1] = v32;
}

uint64_t sub_1D20FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *&v49 = a5;
  *(&v49 + 1) = a6;
  *&v50 = a7;
  *(&v50 + 1) = a8;
  v41 = type metadata accessor for ShelfCollage2(0, &v49);
  v15 = a9 + v41[16];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = sub_263850();
  v17 = *(sub_263850() + 16);

  v18 = v17 & 0x7FFFFFFFFFFFFFFELL;
  if (*(v16 + 16) >= (v17 & 0x7FFFFFFFFFFFFFFEuLL))
  {
    v19 = v17 & 0x7FFFFFFFFFFFFFFELL;
  }

  else
  {
    v19 = *(v16 + 16);
  }

  if (v18)
  {
    v20 = v19 == 0;
  }

  else
  {
    v20 = 1;
  }

  v42 = a4;
  if (v20)
  {
    swift_unknownObjectRelease();
    v23 = _swiftEmptyArrayStorage;
  }

  else
  {
    v39 = a9;
    v21 = v16 + 32;
    v52 = _swiftEmptyArrayStorage;
    sub_2DBA4(0, v19, 0);
    v22 = 0;
    v23 = v52;
    do
    {
      sub_30CC(v21, v48);
      v44 = v22;
      sub_F7CC(v48, &v45);
      *(&v43[0] + 1) = v45;
      v43[1] = v46;
      v43[2] = v47;
      sub_F7CC((v43 + 8), &v49);
      *(&v51 + 1) = v22;
      v52 = v23;
      v25 = v23[2];
      v24 = v23[3];
      if (v25 >= v24 >> 1)
      {
        sub_2DBA4((v24 > 1), v25 + 1, 1);
        v23 = v52;
      }

      v23[2] = v25 + 1;
      v26 = &v23[6 * v25];
      v27 = v49;
      v28 = v51;
      v26[3] = v50;
      v26[4] = v28;
      v26[2] = v27;
      ++v22;
      v21 += 40;
    }

    while (v19 != v22);
    swift_unknownObjectRelease();
    a9 = v39;
  }

  if (v23[2] >= 2uLL)
  {
    v29 = 2;
  }

  else
  {
    v29 = v23[2];
  }

  v30 = sub_C8AE8(v23, 2, v29);

  *a9 = v30;
  v31 = v41[13];
  v32 = sub_260C50();
  v33 = *(v32 - 8);
  (*(v33 + 16))(a9 + v31, a2, v32);
  v34 = ShelfModel.tallestCoverAspectRatio.getter(a5, a7);
  LOBYTE(v31) = v35;
  (*(v33 + 8))(a2, v32);
  result = (*(*(a5 - 8) + 8))(a1, a5);
  v37 = a9 + v41[14];
  *v37 = v34;
  v37[8] = v31 & 1;
  v38 = (a9 + v41[15]);
  *v38 = a3;
  v38[1] = v42;
  return result;
}

uint64_t ShelfCollage2.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v101 = sub_262320();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_262470();
  v96 = *(v98 - 8);
  __chkstk_darwin(v98);
  v95 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v93 = v70 - v6;
  v103 = sub_262490();
  v97 = *(v103 - 8);
  __chkstk_darwin(v103);
  v92 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_261FF0();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2F9C(&qword_324920, &unk_285D40);
  v10 = sub_2F9C(&qword_31D528, &qword_2755F0);
  v11 = sub_8E38(&qword_324928, &qword_31D528, &qword_2755F0, &protocol conformance descriptor for ArraySlice<A>);
  v116 = v10;
  v117 = &type metadata for AnyHashable;
  v119 = v11;
  v120 = &protocol witness table for AnyHashable;
  v86 = a1;
  v88 = *(a1 + 24);
  v118 = v88;
  sub_2633D0();
  v87 = *(a1 + 40);
  v115 = v87;
  swift_getWitnessTable();
  sub_2632E0();
  sub_2F9C(&qword_322DC8, &qword_285D50);
  sub_261730();
  sub_2F9C(&qword_319848, &unk_26D5A0);
  v12 = sub_261730();
  v13 = sub_8E38(qword_324930, &qword_324920, &unk_285D40, &protocol conformance descriptor for IndexedRandomAccessCollection<A>);
  v116 = v9;
  v117 = &type metadata for Int;
  v118 = v12;
  v119 = v13;
  v120 = &protocol witness table for Int;
  v14 = sub_2633D0();
  WitnessTable = swift_getWitnessTable();
  v16 = sub_8E38(&qword_322DD0, &qword_322DC8, &qword_285D50, &protocol conformance descriptor for _ContainerValueWritingModifier<A>);
  v113 = WitnessTable;
  v114 = v16;
  v17 = swift_getWitnessTable();
  v18 = sub_8E38(&qword_319850, &qword_319848, &unk_26D5A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v111 = v17;
  v112 = v18;
  v110 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v21 = type metadata accessor for ColumnHStack(255, v14, v19, v20);
  v22 = swift_getWitnessTable();
  v116 = v21;
  v117 = v22;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v116 = v21;
  v117 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = sub_261120();
  v72 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = v70 - v24;
  v26 = swift_getWitnessTable();
  v116 = v23;
  v117 = v26;
  v27 = swift_getOpaqueTypeMetadata2();
  v76 = *(v27 - 8);
  __chkstk_darwin(v27);
  v71 = v70 - v28;
  v116 = v23;
  v117 = v26;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = v103;
  v116 = v27;
  v117 = v103;
  v118 = v29;
  v119 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v70[2] = v29;
  v31 = swift_getOpaqueTypeMetadata2();
  v74 = *(v31 - 8);
  __chkstk_darwin(v31);
  v33 = v70 - v32;
  v116 = v27;
  v117 = v30;
  v118 = v29;
  v119 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v34 = swift_getOpaqueTypeConformance2();
  v116 = v31;
  v117 = v34;
  v35 = v34;
  v70[1] = v34;
  v36 = swift_getOpaqueTypeMetadata2();
  v83 = *(v36 - 8);
  __chkstk_darwin(v36);
  v70[0] = v70 - v37;
  v116 = v31;
  v117 = v35;
  v38 = swift_getOpaqueTypeConformance2();
  v84 = v36;
  v116 = v36;
  v117 = v38;
  v78 = v38;
  v39 = swift_getOpaqueTypeMetadata2();
  v80 = *(v39 - 8);
  __chkstk_darwin(v39);
  v77 = v70 - v40;
  v82 = v41;
  v42 = sub_261730();
  v85 = *(v42 - 8);
  __chkstk_darwin(v42);
  v79 = v70 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v81 = v70 - v45;
  sub_2624C0();
  *&v46 = *(v86 + 16);
  *(&v46 + 1) = v88;
  *&v47 = *(v86 + 32);
  *(&v47 + 1) = v87;
  v105 = v47;
  v104 = v46;
  v106 = v94;
  sub_261130();
  v48 = v89;
  sub_261FE0();
  sub_2624C0();
  v49 = v71;
  sub_262C80();
  (*(v90 + 8))(v48, v91);
  (*(v72 + 8))(v25, v23);
  v50 = v93;
  sub_262450();
  v51 = v96;
  v52 = v98;
  (*(v96 + 16))(v95, v50, v98);
  v53 = v92;
  v54 = v70[0];
  sub_262480();
  (*(v51 + 8))(v50, v52);
  v55 = v103;
  sub_262C90();
  (*(v97 + 8))(v53, v55);
  (*(v76 + 8))(v49, v27);
  sub_262C40();
  v56 = v31;
  v57 = v99;
  (*(v74 + 8))(v33, v56);
  sub_262300();
  sub_2EF0(&qword_317310, &qword_2721D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269100;
  LOBYTE(v27) = sub_2624E0();
  *(inited + 32) = v27;
  v59 = sub_2624C0();
  *(inited + 33) = v59;
  sub_2624D0();
  sub_2624D0();
  if (sub_2624D0() != v27)
  {
    sub_2624D0();
  }

  sub_2624D0();
  if (sub_2624D0() != v59)
  {
    sub_2624D0();
  }

  v60 = v77;
  v61 = v84;
  v62 = v78;
  sub_262BA0();
  (*(v100 + 8))(v57, v101);
  (*(v83 + 8))(v54, v61);
  v109 = 1;
  v116 = v61;
  v117 = v62;
  v63 = swift_getOpaqueTypeConformance2();
  v64 = v79;
  v65 = v82;
  View.applyPageMargin(_:marginType:)(1, &v109, v82, v63);
  (*(v80 + 8))(v60, v65);
  v66 = sub_EFAB0();
  v107 = v63;
  v108 = v66;
  swift_getWitnessTable();
  v67 = v81;
  sub_1609C();
  v68 = *(v85 + 8);
  v68(v64, v42);
  sub_1609C();
  return (v68)(v67, v42);
}

uint64_t sub_1D3240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28 = a5;
  v32 = a4;
  v29 = a3;
  v30 = a2;
  v31 = a1;
  v33 = a6;
  v7 = sub_2F9C(&qword_324920, &unk_285D40);
  sub_2F9C(&qword_31D528, &qword_2755F0);
  sub_8E38(&qword_324928, &qword_31D528, &qword_2755F0, &protocol conformance descriptor for ArraySlice<A>);
  sub_2633D0();
  v45 = a5;
  swift_getWitnessTable();
  sub_2632E0();
  sub_2F9C(&qword_322DC8, &qword_285D50);
  sub_261730();
  sub_2F9C(&qword_319848, &unk_26D5A0);
  v46 = v7;
  v47 = &type metadata for Int;
  v48 = sub_261730();
  v49 = sub_8E38(qword_324930, &qword_324920, &unk_285D40, &protocol conformance descriptor for IndexedRandomAccessCollection<A>);
  v50 = &protocol witness table for Int;
  v8 = sub_2633D0();
  WitnessTable = swift_getWitnessTable();
  v44 = sub_8E38(&qword_322DD0, &qword_322DC8, &qword_285D50, &protocol conformance descriptor for _ContainerValueWritingModifier<A>);
  v41 = swift_getWitnessTable();
  v42 = sub_8E38(&qword_319850, &qword_319848, &unk_26D5A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v40 = swift_getWitnessTable();
  v27 = v8;
  v9 = swift_getWitnessTable();
  v11 = type metadata accessor for ColumnHStack(0, v8, v9, v10);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  v15 = swift_getWitnessTable();
  v46 = v11;
  v47 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v17 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v26 - v21;
  v23 = sub_261D20();
  v35 = v30;
  v36 = v29;
  v37 = v32;
  v38 = v28;
  v39 = v31;
  ColumnHStack.init(alignment:fillSinglePage:content:)(v23, 0, sub_1D5120, v27, v9, v14, v34);
  sub_262C50();
  (*(v12 + 8))(v14, v11);
  v46 = v11;
  v47 = v15;
  swift_getOpaqueTypeConformance2();
  sub_1609C();
  v24 = *(v17 + 8);
  v24(v19, OpaqueTypeMetadata2);
  sub_1609C();
  return (v24)(v22, OpaqueTypeMetadata2);
}

uint64_t sub_1D3774@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v51 = a2;
  v52 = a4;
  v54 = a6;
  v62 = a2;
  v63 = a3;
  v64 = a4;
  v65 = a5;
  v39 = a5;
  v50 = type metadata accessor for ShelfCollage2(0, &v62);
  v9 = *(v50 - 8);
  v49 = *(v9 + 64);
  __chkstk_darwin(v50);
  v47 = &KeyPath - v10;
  v11 = sub_2EF0(&qword_324920, &unk_285D40);
  v46 = v11;
  __chkstk_darwin(v11);
  v55 = &KeyPath - v12;
  v13 = sub_2F9C(&qword_31D528, &qword_2755F0);
  v14 = sub_8E38(&qword_324928, &qword_31D528, &qword_2755F0, &protocol conformance descriptor for ArraySlice<A>);
  v62 = v13;
  v63 = &type metadata for AnyHashable;
  v64 = a3;
  v65 = v14;
  v66 = &protocol witness table for AnyHashable;
  sub_2633D0();
  v61 = a5;
  v53 = &protocol conformance descriptor for <> ForEach<A, B, C>;
  swift_getWitnessTable();
  v41 = sub_2632E0();
  sub_2F9C(&qword_322DC8, &qword_285D50);
  v42 = sub_261730();
  sub_2F9C(&qword_319848, &unk_26D5A0);
  v15 = sub_261730();
  v44 = v15;
  v45 = sub_8E38(qword_324930, &qword_324920, &unk_285D40, &protocol conformance descriptor for IndexedRandomAccessCollection<A>);
  v62 = v11;
  v63 = &type metadata for Int;
  v64 = v15;
  v65 = v45;
  v66 = &protocol witness table for Int;
  v16 = sub_2633D0();
  v48 = *(v16 - 8);
  __chkstk_darwin(v16);
  v40 = &KeyPath - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v43 = &KeyPath - v19;
  v62 = *a1;

  sub_2EF0(&qword_324A40, &qword_285EA8);
  sub_8E38(&qword_324A48, &qword_324A40, &qword_285EA8, &protocol conformance descriptor for [A]);
  sub_260CC0();
  KeyPath = swift_getKeyPath();
  v20 = v47;
  v21 = v50;
  (*(v9 + 16))(v47, a1, v50);
  v22 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v23 = swift_allocObject();
  v24 = v51;
  *(v23 + 2) = v51;
  *(v23 + 3) = a3;
  v25 = a3;
  v26 = v52;
  v27 = v39;
  *(v23 + 4) = v52;
  *(v23 + 5) = v27;
  (*(v9 + 32))(&v23[v22], v20, v21);
  v28 = swift_allocObject();
  v28[2] = v24;
  v28[3] = v25;
  v28[4] = v26;
  v28[5] = v27;
  v28[6] = sub_1D5154;
  v28[7] = v23;
  WitnessTable = swift_getWitnessTable();
  v30 = sub_8E38(&qword_322DD0, &qword_322DC8, &qword_285D50, &protocol conformance descriptor for _ContainerValueWritingModifier<A>);
  v59 = WitnessTable;
  v60 = v30;
  v31 = swift_getWitnessTable();
  v32 = sub_8E38(&qword_319850, &qword_319848, &unk_26D5A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v57 = v31;
  v58 = v32;
  v37 = swift_getWitnessTable();
  v33 = v40;
  sub_2633B0();
  v56 = v37;
  swift_getWitnessTable();
  v34 = v43;
  sub_1609C();
  v35 = *(v48 + 8);
  v35(v33, v16);
  sub_1609C();
  return (v35)(v34, v16);
}

uint64_t sub_1D3DA8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X7>, uint64_t a8@<X8>, void *a9, uint64_t a10)
{
  v56 = a4;
  v53 = a3;
  v55 = a2;
  v54 = a1;
  v50 = a8;
  v70 = sub_2F9C(&qword_31D528, &qword_2755F0);
  v71 = &type metadata for AnyHashable;
  v72 = a7;
  v73 = sub_8E38(&qword_324928, &qword_31D528, &qword_2755F0, &protocol conformance descriptor for ArraySlice<A>);
  v74 = &protocol witness table for AnyHashable;
  v52 = sub_2633D0();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_2632E0();
  v44 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v41 - v14;
  sub_2F9C(&qword_322DC8, &qword_285D50);
  v16 = sub_261730();
  v47 = *(v16 - 8);
  __chkstk_darwin(v16);
  v43 = &v41 - v17;
  sub_2F9C(&qword_319848, &unk_26D5A0);
  v45 = v16;
  v18 = sub_261730();
  v49 = *(v18 - 8);
  __chkstk_darwin(v18);
  v46 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v48 = &v41 - v21;
  v70 = a6;
  v71 = a7;
  v72 = a9;
  v73 = a10;
  v42 = type metadata accessor for ShelfCollage2(0, &v70);
  sub_260C40();
  v57 = a6;
  v58 = a7;
  v59 = a9;
  v60 = a10;
  v61 = v54;
  v62 = v55;
  v22 = v53;
  v23 = v56;
  v63 = v53;
  v64 = v56;
  v55 = a5;
  v65 = a5;
  sub_261E50();
  result = sub_2632D0();
  v25 = __OFSUB__(v23 >> 1, v22);
  v26 = (v23 >> 1) - v22;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    v27 = 1;
    if (v26 == 1)
    {
      v28 = 2;
    }

    else
    {
      v28 = 1;
    }

    v29 = swift_getWitnessTable();
    v30 = v43;
    v31 = View.shelfGridColumnSpan(_:)(v28, v13, v29);
    (*(v44 + 8))(v15, v13, v31);
    swift_getKeyPath();
    if (v26 == 1)
    {
      v32 = v55 + *(v42 + 56);
      v33 = *v32;
      v27 = *(v32 + 8);
    }

    else
    {
      v33 = 0;
    }

    v70 = v33;
    LOBYTE(v71) = v27;
    v34 = sub_8E38(&qword_322DD0, &qword_322DC8, &qword_285D50, &protocol conformance descriptor for _ContainerValueWritingModifier<A>);
    v68 = v29;
    v69 = v34;
    v35 = v45;
    v36 = swift_getWitnessTable();
    v37 = v46;
    sub_262A90();

    (*(v47 + 8))(v30, v35);
    v38 = sub_8E38(&qword_319850, &qword_319848, &unk_26D5A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    v66 = v36;
    v67 = v38;
    swift_getWitnessTable();
    v39 = v48;
    sub_1609C();
    v40 = *(v49 + 8);
    v40(v37, v18);
    sub_1609C();
    return (v40)(v39, v18);
  }

  return result;
}

uint64_t sub_1D4380@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v36 = a8;
  KeyPath = a3;
  v42 = a6;
  v43 = a9;
  v34 = a1;
  v40 = a5;
  v41 = a10;
  v44 = a6;
  v45 = a7;
  v46 = a8;
  v47 = a10;
  v33 = type metadata accessor for ShelfCollage2(0, &v44);
  v13 = *(v33 - 8);
  __chkstk_darwin(v33);
  v15 = &v31 - v14;
  v16 = sub_2F9C(&qword_31D528, &qword_2755F0);
  v38 = v16;
  v35 = sub_8E38(&qword_324928, &qword_31D528, &qword_2755F0, &protocol conformance descriptor for ArraySlice<A>);
  v44 = v16;
  v45 = &type metadata for AnyHashable;
  v46 = a7;
  v47 = v35;
  v48 = &protocol witness table for AnyHashable;
  v17 = sub_2633D0();
  v39 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v32 = &v31 - v21;
  v44 = v34;
  v45 = a2;
  v46 = KeyPath;
  v47 = a4;
  KeyPath = swift_getKeyPath();
  v22 = v15;
  v23 = v15;
  v24 = v33;
  (*(v13 + 16))(v23, v40, v33);
  v25 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v26 = swift_allocObject();
  *(v26 + 2) = v42;
  *(v26 + 3) = a7;
  v27 = v41;
  *(v26 + 4) = v36;
  *(v26 + 5) = v27;
  (*(v13 + 32))(&v26[v25], v22, v24);
  swift_unknownObjectRetain();
  sub_2633B0();
  swift_getWitnessTable();
  v28 = v32;
  sub_1609C();
  v29 = *(v39 + 8);
  v29(v19, v17);
  sub_1609C();
  return (v29)(v28, v17);
}

uint64_t sub_1D46DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  __chkstk_darwin(a1);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v20 - v11;
  v20[0] = v13;
  v20[1] = v14;
  v20[2] = v15;
  v20[3] = v16;
  v17 = type metadata accessor for ShelfCollage2(0, v20);
  (*(a2 + *(v17 + 60)))(a1);
  sub_1609C();
  v18 = *(v7 + 8);
  v18(v9, a4);
  sub_1609C();
  return (v18)(v12, a4);
}

uint64_t ComponentView.init(_:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_30CC(a1, v7);
  sub_260AF0();
  return sub_1D48B8(a1);
}

void sub_1D4948(uint64_t a1)
{
  sub_1D4BEC(319);
  if (v1 <= 0x3F)
  {
    sub_260C50();
    if (v2 <= 0x3F)
    {
      sub_15D3D8(319, &unk_3198D8, &type metadata for CGFloat, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_16D28();
        if (v4 <= 0x3F)
        {
          sub_15D3D8(319, &qword_31D880, &type metadata for ShelfGridBreakpoint, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1D4A70(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_260C50();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

void *sub_1D4B30(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_260C50();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1D4BEC(uint64_t a1)
{
  if (!qword_3249B8[0])
  {
    sub_2F9C(&qword_31D528, &qword_2755F0);
    v1 = sub_2646F0();
    if (!v2)
    {
      atomic_store(v1, qword_3249B8);
    }
  }
}

uint64_t sub_1D4C78(uint64_t a1)
{
  sub_2F9C(&qword_324920, &unk_285D40);
  sub_2F9C(&qword_31D528, &qword_2755F0);
  sub_8E38(&qword_324928, &qword_31D528, &qword_2755F0, &protocol conformance descriptor for ArraySlice<A>);
  sub_2633D0();
  swift_getWitnessTable();
  sub_2632E0();
  sub_2F9C(&qword_322DC8, &qword_285D50);
  sub_261730();
  sub_2F9C(&qword_319848, &unk_26D5A0);
  sub_261730();
  sub_8E38(qword_324930, &qword_324920, &unk_285D40, &protocol conformance descriptor for IndexedRandomAccessCollection<A>);
  v1 = sub_2633D0();
  swift_getWitnessTable();
  sub_8E38(&qword_322DD0, &qword_322DC8, &qword_285D50, &protocol conformance descriptor for _ContainerValueWritingModifier<A>);
  swift_getWitnessTable();
  sub_8E38(&qword_319850, &qword_319848, &unk_26D5A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for ColumnHStack(255, v1, WitnessTable, v3);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_261120();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_262490();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_261730();
  swift_getOpaqueTypeConformance2();
  sub_EFAB0();
  return swift_getWitnessTable();
}

uint64_t sub_1D5154@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v11 = v5[3];
  v13 = v5[4];
  v12 = v5[5];
  v17[0] = v5[2];
  v10 = v17[0];
  v17[1] = v11;
  v17[2] = v13;
  v17[3] = v12;
  v14 = *(type metadata accessor for ShelfCollage2(0, v17) - 8);
  return sub_1D3DA8(a1, a2, a3, a4, v5 + ((*(v14 + 80) + 48) & ~*(v14 + 80)), v10, v11, a5, v13, v12);
}

uint64_t sub_1D5228()
{

  return swift_deallocObject();
}

uint64_t sub_1D5320()
{
  v1 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v1;
  v2 = (type metadata accessor for ShelfCollage2(0, v7) - 8);
  v3 = v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80));

  v4 = v2[15];
  v5 = sub_260C50();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  sub_4054(*(v3 + v2[18]), *(v3 + v2[18] + 8));
  return swift_deallocObject();
}

uint64_t sub_1D543C(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v10[0] = v1[2];
  v3 = v10[0];
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = *(type metadata accessor for ShelfCollage2(0, v10) - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_1D46DC(a1, v8, v3, v4);
}

unint64_t sub_1D5538(__n128 a1)
{
  result = qword_322DE0;
  if (!qword_322DE0)
  {
    sub_261DE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322DE0);
  }

  return result;
}

uint64_t PlainToolbarIconView.init(kind:)@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *(type metadata accessor for PlainToolbarIconView(0) + 20);
  *&a2[v4] = swift_getKeyPath();
  sub_2EF0(&qword_318F68, &qword_26C578);
  result = swift_storeEnumTagMultiPayload();
  *a2 = v3;
  return result;
}

uint64_t type metadata accessor for PlainToolbarIconView(uint64_t a1)
{
  result = qword_324AB0;
  if (!qword_324AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5654@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_318F68, &qword_26C578);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for PlainToolbarIconView(0);
  sub_1D5F1C(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1D5F8C(v9, a1, v11);
  }

  sub_264900();
  v13 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t PlainToolbarIconView.body.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  v4 = *(type metadata accessor for SymbolImage(0) + 20);
  *&a1[v4] = swift_getKeyPath();
  sub_2EF0(&qword_3190A0, &unk_283550);
  swift_storeEnumTagMultiPayload();
  *a1 = v3;
  v5 = sub_1D58BC();
  KeyPath = swift_getKeyPath();
  result = sub_2EF0(&qword_324A50, &qword_285FF0);
  v8 = &a1[*(result + 36)];
  *v8 = KeyPath;
  v8[1] = v5;
  return result;
}

uint64_t sub_1D58BC()
{
  v1 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = sub_262730();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FontConstants.Navigation(0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*v0 == 6)
  {

    return static Font.headline.getter(v9);
  }

  else
  {
    sub_1D5654(v11);
    (*(v5 + 104))(v7, enum case for Font.TextStyle.callout(_:), v4);
    v12 = sub_2625C0();
    (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
    sub_262650();
    v13 = sub_262680();
    sub_179B10(v3);
    v14.n128_f64[0] = (*(v5 + 8))(v7, v4);
    sub_1D5EC0(v11, v14);
    return v13;
  }
}

uint64_t sub_1D5B2C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 248)
  {
    v4 = *a1;
    if (v4 >= 8)
    {
      return v4 - 7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_2EF0(&qword_318FA0, &unk_286050);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1D5BF4(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 248)
  {
    *result = a2 + 7;
  }

  else
  {
    v7 = sub_2EF0(&qword_318FA0, &unk_286050);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1D5CA0(uint64_t a1, __n128 a2)
{
  sub_1D5D1C(319, a2);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D5D1C(uint64_t a1, __n128 a2)
{
  if (!qword_319010)
  {
    type metadata accessor for FontConstants.Navigation(255);
    v2 = sub_2611E0();
    if (!v3)
    {
      atomic_store(v2, &qword_319010);
    }
  }
}

unint64_t sub_1D5D78()
{
  result = qword_324AE8;
  if (!qword_324AE8)
  {
    sub_2F9C(&qword_324A50, &qword_285FF0);
    sub_1D5E04();
    sub_1D5E5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324AE8);
  }

  return result;
}

unint64_t sub_1D5E04()
{
  result = qword_324AF0;
  if (!qword_324AF0)
  {
    type metadata accessor for SymbolImage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324AF0);
  }

  return result;
}

unint64_t sub_1D5E5C()
{
  result = qword_317580;
  if (!qword_317580)
  {
    sub_2F9C(&qword_317588, &qword_26B7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317580);
  }

  return result;
}

uint64_t sub_1D5EC0(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for FontConstants.Navigation(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5F1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_318F68, &qword_26C578);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5F8C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for FontConstants.Navigation(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t static FlowActionDestination<>.newCardSet(focusedAdamID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

uint64_t sub_1D5FFC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x4164657375636F66;
  }

  else
  {
    v3 = 0x536472614377656ELL;
  }

  if (v2)
  {
    v4 = 0xEA00000000007465;
  }

  else
  {
    v4 = 0xED000044496D6164;
  }

  if (*a2)
  {
    v5 = 0x4164657375636F66;
  }

  else
  {
    v5 = 0x536472614377656ELL;
  }

  if (*a2)
  {
    v6 = 0xED000044496D6164;
  }

  else
  {
    v6 = 0xEA00000000007465;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_264F10();
  }

  return v8 & 1;
}

Swift::Int sub_1D60B4()
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

double sub_1D6148(uint64_t a1)
{
  sub_264500();

  return result;
}

Swift::Int sub_1D61C8(uint64_t a1)
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

void sub_1D6258(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_301488;
  v7._object = v3;
  v5 = sub_264D40(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_1D62B8(uint64_t *a1@<X8>)
{
  v2 = 0x536472614377656ELL;
  if (*v1)
  {
    v2 = 0x4164657375636F66;
  }

  v3 = 0xEA00000000007465;
  if (*v1)
  {
    v3 = 0xED000044496D6164;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D6308()
{
  if (*v0)
  {
    return 0x4164657375636F66;
  }

  else
  {
    return 0x536472614377656ELL;
  }
}

void sub_1D6354(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_301488;
  v8._object = a2;
  v6 = sub_264D40(v5, v8);

  if (v6 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v6)
  {
    v7 = 0;
  }

  *a3 = v7;
}

uint64_t sub_1D63B8(uint64_t a1)
{
  v2 = sub_1D6940();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1D63F4(uint64_t a1)
{
  v2 = sub_1D6940();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1D6430()
{
  sub_265050();
  sub_264500();
  return sub_265080();
}

Swift::Int sub_1D64B4(uint64_t a1)
{
  sub_265050();
  sub_264500();
  return sub_265080();
}

void sub_1D6510(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v6._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_3014D8;
  v6._object = v3;
  v5 = sub_264D40(v4, v6);

  *a2 = v5 != 0;
}

void sub_1D65B0(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v7._countAndFlagsBits = a1;
  v5._rawValue = &off_301510;
  v7._object = a2;
  v6 = sub_264D40(v5, v7);

  *a3 = v6 != 0;
}

uint64_t sub_1D6608(uint64_t a1)
{
  v2 = sub_1D6994();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1D6644(uint64_t a1)
{
  v2 = sub_1D6994();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FlowAction.NewCardSetDestination.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v23 = a2;
  v4 = sub_2EF0(&qword_324AF8, &qword_286080);
  v22 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v21 - v5;
  v24 = sub_2EF0(&qword_324B00, &qword_286088);
  v7 = *(v24 - 8);
  __chkstk_darwin(v24);
  v9 = &v21 - v8;
  sub_2E18(a1, a1[3]);
  sub_1D6940();
  sub_265120();
  if (!v2)
  {
    v11 = v7;
    v12 = v23;
    v27 = 0;
    if (sub_264E10())
    {
      v25 = 0;
      sub_1D6994();
      sub_264D50();
      v15 = v6;
      v16 = v4;
      v17 = sub_264DC0();
      v19 = v18;
      (*(v22 + 8))(v15, v16);
      (*(v11 + 8))(v9, v24);
      v20 = v17;
    }

    else
    {
      v26 = 1;
      v13 = v24;
      v20 = sub_264DC0();
      v19 = v14;
      (*(v7 + 8))(v9, v13);
    }

    *v12 = v20;
    v12[1] = v19;
  }

  return sub_3080(a1);
}

unint64_t sub_1D6940()
{
  result = qword_324B08;
  if (!qword_324B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324B08);
  }

  return result;
}

unint64_t sub_1D6994()
{
  result = qword_324B10;
  if (!qword_324B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324B10);
  }

  return result;
}

unint64_t sub_1D69E8(uint64_t a1)
{
  result = sub_1D6A10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6A10()
{
  result = qword_324B18;
  if (!qword_324B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324B18);
  }

  return result;
}

unint64_t sub_1D6AB0()
{
  result = qword_324B20;
  if (!qword_324B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324B20);
  }

  return result;
}

unint64_t sub_1D6B08()
{
  result = qword_324B28;
  if (!qword_324B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324B28);
  }

  return result;
}

unint64_t sub_1D6B60()
{
  result = qword_324B30;
  if (!qword_324B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324B30);
  }

  return result;
}

unint64_t sub_1D6BB8()
{
  result = qword_324B38;
  if (!qword_324B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324B38);
  }

  return result;
}

unint64_t sub_1D6C10()
{
  result = qword_324B40;
  if (!qword_324B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324B40);
  }

  return result;
}

unint64_t sub_1D6C68()
{
  result = qword_324B48;
  if (!qword_324B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324B48);
  }

  return result;
}

uint64_t sub_1D6CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_260BD0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D6D88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_260BD0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for NavigationTitleForNonRootPage(uint64_t a1)
{
  result = qword_324BA8;
  if (!qword_324BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6E74(uint64_t a1)
{
  sub_3E7AC();
  if (v1 <= 0x3F)
  {
    sub_260BD0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D6F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v23 = a2;
  v24 = sub_2EF0(&qword_324BE0, &qword_286450);
  v21 = *(v24 - 8);
  __chkstk_darwin(v24);
  v4 = &v21 - v3;
  v5 = sub_2EF0(&qword_324BE8, &qword_286458);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = sub_261C90();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  if (*(v2 + 8) == 1)
  {
    if ((v12 & 1) == 0)
    {
LABEL_3:
      type metadata accessor for NavigationTitleForNonRootPage(0);
      v13 = sub_2EF0(&qword_324BF0, &qword_286460);
      v14 = sub_1D72C8();
      sub_262920();
      v15 = v21;
      v16 = v24;
      (*(v21 + 16))(v7, v4, v24);
      swift_storeEnumTagMultiPayload();
      v25 = v13;
      v26 = v14;
      swift_getOpaqueTypeConformance2();
      sub_261F80();
      return (*(v15 + 8))(v4, v16);
    }
  }

  else
  {

    sub_264900();
    v18 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v12, 0);
    (*(v9 + 8))(v11, v8);
    if (v25 != 1)
    {
      goto LABEL_3;
    }
  }

  v19 = sub_2EF0(&qword_324BF0, &qword_286460);
  (*(*(v19 - 8) + 16))(v7, v22, v19);
  swift_storeEnumTagMultiPayload();
  v20 = sub_1D72C8();
  v25 = v19;
  v26 = v20;
  swift_getOpaqueTypeConformance2();
  return sub_261F80();
}

unint64_t sub_1D72C8()
{
  result = qword_324BF8;
  if (!qword_324BF8)
  {
    sub_2F9C(&qword_324BF0, &qword_286460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324BF8);
  }

  return result;
}

unint64_t sub_1D7330()
{
  result = qword_324C00;
  if (!qword_324C00)
  {
    sub_2F9C(&qword_324C08, &qword_286468);
    sub_1D72C8();
    sub_2F9C(&qword_324BF0, &qword_286460);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324C00);
  }

  return result;
}

double static ListItemViewModel.recommendationsPage(sectionName:assetInfo:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  sub_2E18(a3, a3[3]);
  v8 = sub_2606E0();
  v10 = v9;
  sub_30CC(a3, &v18);
  KeyPath = swift_getKeyPath();
  v17 = 0;
  sub_30CC(a3, a4 + 8);
  *(a4 + 48) = 0x407F400000000000;
  *(a4 + 56) = 2;
  *(a4 + 64) = 0x407F400000000000;
  *(a4 + 72) = 3;

  static ListItemMetadata.recommendationsPage(assetInfo:)(a3, a4 + 80);
  v15[3] = &type metadata for ListItemAccessoryRecommendationControls;
  v15[4] = sub_1D7610();
  v15[0] = swift_allocObject();
  sub_1D76A8(&KeyPath, v15[0] + 16);
  sub_30CC(a3, a4 + 408);
  sub_30CC(a3, v14);
  v11 = type metadata accessor for ListItemViewModel(0);
  CardInfo.init(with:alwaysPresentNewCardSet:)(v14, 1, a4 + *(v11 + 40));
  sub_1D7704(&KeyPath);
  *(a4 + 392) = 0;
  *(a4 + 360) = 0u;
  *(a4 + 376) = 0u;
  *a4 = 2;
  sub_82704(v15, a4 + 360);
  *(a4 + 400) = 0;
  v12 = a4 + *(v11 + 44);
  *v12 = 0xD000000000000014;
  *(v12 + 8) = 0x80000000002947B0;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  result = 0.0;
  *(v12 + 96) = 0u;
  *(v12 + 112) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 0u;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 128) = v8;
  *(v12 + 136) = v10;
  *(v12 + 144) = 2;
  return result;
}

unint64_t sub_1D7610()
{
  result = qword_324C10;
  if (!qword_324C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324C10);
  }

  return result;
}

uint64_t sub_1D7664()
{
  sub_4054(*(v0 + 16), *(v0 + 24));
  sub_3080((v0 + 32));

  return swift_deallocObject();
}

uint64_t PaddleView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = sub_2EF0(&qword_324C18, &qword_286498);
  __chkstk_darwin(v2 - 8);
  v56 = &v48[-v3];
  v4 = sub_2EF0(&qword_324C20, &qword_2864A0);
  __chkstk_darwin(v4);
  v6 = &v48[-v5];
  v51 = sub_2EF0(&qword_324C28, &qword_2864A8);
  __chkstk_darwin(v51);
  v8 = &v48[-v7];
  v52 = sub_2EF0(&qword_324C30, &qword_2864B0);
  __chkstk_darwin(v52);
  v10 = &v48[-v9];
  v50 = sub_2EF0(&qword_324C38, &qword_2864B8);
  __chkstk_darwin(v50);
  v12 = &v48[-v11];
  v53 = sub_2EF0(&qword_324C40, &qword_2864C0);
  __chkstk_darwin(v53);
  v55 = &v48[-v13];
  v14 = *v1;
  v54 = v1[1];
  v15 = v1[2];
  v49 = v14;
  v16 = sub_2630B0();
  if (v15)
  {
    v17 = sub_262120();
  }

  else
  {
    v17 = sub_262130();
  }

  v18 = v17;
  v19 = &v6[*(v4 + 36)];
  v20 = *(sub_2EF0(&qword_317530, &qword_26FCC0) + 28);
  v21 = enum case for Image.Scale.large(_:);
  v22 = sub_2630F0();
  (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
  *v19 = swift_getKeyPath();
  *v6 = v16;
  *(v6 + 2) = v18;
  v23 = sub_262570();
  KeyPath = swift_getKeyPath();
  sub_22148(v6, v8, &qword_324C20, &qword_2864A0);
  v25 = &v8[*(v51 + 36)];
  *v25 = KeyPath;
  v25[1] = v23;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  sub_22148(v8, v10, &qword_324C28, &qword_2864A8);
  v26 = &v10[*(v52 + 36)];
  v27 = v59;
  *v26 = v58;
  v26[1] = v27;
  v26[2] = v60;
  v28 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v30 = v29;
  v31 = &v12[*(v50 + 36)];
  v32 = v54;
  if (v54)
  {
    v33 = 256;
  }

  else
  {
    v33 = 0;
  }

  sub_1D7D04(v33 | (v15 << 16) | v49);
  v34 = &v31[*(sub_2EF0(&qword_324C48, &qword_286528) + 36)];
  *v34 = v28;
  v34[1] = v30;
  sub_22148(v10, v12, &qword_324C30, &qword_2864B0);
  v35 = v55;
  v36 = &v55[*(v53 + 36)];
  v37 = enum case for RoundedCornerStyle.continuous(_:);
  v38 = sub_261DD0();
  (*(*(v38 - 8) + 104))(v36, v37, v38);
  v36[*(sub_2EF0(&qword_324C50, &qword_286530) + 36)] = 0;
  sub_22148(v12, v35, &qword_324C38, &qword_2864B8);
  v39 = swift_getKeyPath();
  if (v32)
  {
    v40 = v56;
    sub_2634D0();
    v41 = 0;
  }

  else
  {
    v41 = 1;
    v40 = v56;
  }

  v42 = sub_2634E0();
  (*(*(v42 - 8) + 56))(v40, v41, 1, v42);
  v43 = sub_2EF0(&qword_324C58, &qword_286568);
  v44 = v57;
  v45 = (v57 + *(v43 + 36));
  v46 = sub_2EF0(&qword_324C60, &qword_286570);
  sub_22148(v40, v45 + *(v46 + 28), &qword_324C18, &qword_286498);
  *v45 = v39;
  return sub_22148(v35, v44, &qword_324C40, &qword_2864C0);
}

uint64_t sub_1D7D04(int a1)
{
  v2 = sub_2EF0(&qword_324CD8, &qword_286760);
  __chkstk_darwin(v2);
  v4 = (&v32 - v3);
  v5 = sub_2EF0(&qword_324CE0, &qword_286768);
  __chkstk_darwin(v5);
  v7 = &v32 - v6;
  v8 = sub_263390();
  __chkstk_darwin(v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2EF0(&qword_31A6F0, &qword_26F6C8);
  __chkstk_darwin(v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v32 - v15;
  if ((a1 & 0x100) != 0)
  {
    *v4 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    v4[1] = v20;
    v21 = sub_2EF0(&qword_324CE8, &qword_286770);
    sub_1D8154(a1 & 0xFF0101, v4 + *(v21 + 44));
    v22 = v4 + *(v2 + 36);
    v23 = enum case for RoundedCornerStyle.continuous(_:);
    v24 = sub_261DD0();
    (*(*(v24 - 8) + 104))(v22, v23, v24);
    *&v22[*(sub_2EF0(&qword_324CF0, &qword_286778) + 36)] = 256;
    v25 = &qword_286760;
    sub_8198(v4, v7, &qword_324CD8, &qword_286760);
    swift_storeEnumTagMultiPayload();
    sub_8E38(&qword_31B630, &qword_31A6F0, &qword_26F6C8, &protocol conformance descriptor for _ShapeView<A, B>);
    sub_1D8B78();
    sub_261F80();
    v26 = v4;
    v27 = &qword_324CD8;
  }

  else
  {
    v17 = enum case for RoundedCornerStyle.continuous(_:);
    v18 = sub_261DD0();
    (*(*(v18 - 8) + 104))(v10, v17, v18);
    if (BYTE2(a1) >= 2u)
    {
      if (BYTE2(a1) == 2)
      {
        v28 = [objc_opt_self() tertiarySystemFillColor];
      }

      else
      {
        v28 = [objc_opt_self() systemFillColor];
      }

      v29 = v28;
      v19 = sub_262EE0();
    }

    else
    {
      v19 = sub_262FA0();
    }

    v30 = v19;
    sub_86B68(v10, v13);
    *&v13[*(v11 + 52)] = v30;
    *&v13[*(v11 + 56)] = 256;
    v25 = &qword_26F6C8;
    sub_22148(v13, v16, &qword_31A6F0, &qword_26F6C8);
    sub_8198(v16, v7, &qword_31A6F0, &qword_26F6C8);
    swift_storeEnumTagMultiPayload();
    sub_8E38(&qword_31B630, &qword_31A6F0, &qword_26F6C8, &protocol conformance descriptor for _ShapeView<A, B>);
    sub_1D8B78();
    sub_261F80();
    v26 = v16;
    v27 = &qword_31A6F0;
  }

  return sub_8E80(v26, v27, v25);
}

uint64_t sub_1D8154@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_2EF0(&qword_324D18, &qword_286788);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - v6;
  v8 = sub_2EF0(&qword_324D20, &qword_286790);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v14 = &v22 - v12;
  if ((a1 & 0x100) != 0)
  {
    sub_2634D0();
    *&v7[*(v4 + 56)] = 256;
    sub_22148(v7, v14, &qword_324D18, &qword_286788);
    (*(v5 + 56))(v14, 0, 1, v4, v15);
  }

  else
  {
    (*(v5 + 56))(&v22 - v12, 1, 1, v4, v13);
  }

  if (BYTE2(a1) > 1u)
  {
    if (BYTE2(a1) != 2)
    {
      v17 = [objc_opt_self() systemFillColor];
      goto LABEL_10;
    }

LABEL_8:
    v17 = [objc_opt_self() tertiarySystemFillColor];
LABEL_10:
    v18 = v17;
    v16 = sub_262EE0();
    goto LABEL_11;
  }

  if ((a1 & 0x100) != 0)
  {
    goto LABEL_8;
  }

  v16 = sub_262FA0();
LABEL_11:
  v19 = v16;
  sub_8198(v14, v10, &qword_324D20, &qword_286790);
  sub_8198(v10, a2, &qword_324D20, &qword_286790);
  v20 = a2 + *(sub_2EF0(&qword_324D28, &qword_286798) + 48);
  *v20 = v19;
  *(v20 + 8) = 256;

  sub_8E80(v14, &qword_324D20, &qword_286790);

  return sub_8E80(v10, &qword_324D20, &qword_286790);
}

uint64_t sub_1D83E0(uint64_t a1)
{
  v2 = sub_2EF0(&qword_324C18, &qword_286498);
  __chkstk_darwin(v2 - 8);
  sub_8198(a1, &v5 - v3, &qword_324C18, &qword_286498);
  return sub_261B10();
}

unint64_t sub_1D84C8()
{
  result = qword_324C68;
  if (!qword_324C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324C68);
  }

  return result;
}

unint64_t sub_1D8520()
{
  result = qword_324C70;
  if (!qword_324C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324C70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PaddleView(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = v4 - 2;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

unint64_t sub_1D8634()
{
  result = qword_324C78;
  if (!qword_324C78)
  {
    sub_2F9C(&qword_324C58, &qword_286568);
    sub_1D86EC();
    sub_8E38(&qword_324CC8, &qword_324C60, &qword_286570, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324C78);
  }

  return result;
}

unint64_t sub_1D86EC()
{
  result = qword_324C80;
  if (!qword_324C80)
  {
    sub_2F9C(&qword_324C40, &qword_2864C0);
    sub_1D87A4();
    sub_8E38(&qword_324CC0, &qword_324C50, &qword_286530, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324C80);
  }

  return result;
}

unint64_t sub_1D87A4()
{
  result = qword_324C88;
  if (!qword_324C88)
  {
    sub_2F9C(&qword_324C38, &qword_2864B8);
    sub_1D885C();
    sub_8E38(&qword_324CB8, &qword_324C48, &qword_286528, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324C88);
  }

  return result;
}

unint64_t sub_1D885C()
{
  result = qword_324C90;
  if (!qword_324C90)
  {
    sub_2F9C(&qword_324C30, &qword_2864B0);
    sub_1D88E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324C90);
  }

  return result;
}

unint64_t sub_1D88E8()
{
  result = qword_324C98;
  if (!qword_324C98)
  {
    sub_2F9C(&qword_324C28, &qword_2864A8);
    sub_1D89A0();
    sub_8E38(&qword_317580, &qword_317588, &qword_26B7B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324C98);
  }

  return result;
}

unint64_t sub_1D89A0()
{
  result = qword_324CA0;
  if (!qword_324CA0)
  {
    sub_2F9C(&qword_324C20, &qword_2864A0);
    sub_1D8A58();
    sub_8E38(&qword_317590, &qword_317530, &qword_26FCC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324CA0);
  }

  return result;
}

unint64_t sub_1D8A58()
{
  result = qword_324CA8;
  if (!qword_324CA8)
  {
    sub_2F9C(&qword_324CB0, &qword_2866E8);
    sub_8E38(&qword_3239B0, &qword_3239B8, &qword_283AD0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324CA8);
  }

  return result;
}

unint64_t sub_1D8B24()
{
  result = qword_324CD0;
  if (!qword_324CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324CD0);
  }

  return result;
}

unint64_t sub_1D8B78()
{
  result = qword_324CF8;
  if (!qword_324CF8)
  {
    sub_2F9C(&qword_324CD8, &qword_286760);
    sub_8E38(&qword_324D00, &qword_324D08, &qword_286780, &protocol conformance descriptor for ZStack<A>);
    sub_8E38(&qword_324D10, &qword_324CF0, &qword_286778, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324CF8);
  }

  return result;
}

BooksUI::ImageFilter::Environment_optional __swiftcall ImageFilter.Environment.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_301548;
  v8._object = object;
  v5 = sub_264D40(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t ImageFilter.Environment.rawValue.getter()
{
  v1 = 0x646168536B726164;
  if (*v0 == 1)
  {
    v1 = 0;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746867696ELL;
  }
}

uint64_t sub_1D8D10(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE000000000000000;
  v4 = 0x646168536B726164;
  if (v2 == 1)
  {
    v4 = 0;
  }

  else
  {
    v3 = 0xEA0000000000776FLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746867696ELL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE000000000000000;
  v8 = 0x646168536B726164;
  if (*a2 == 1)
  {
    v8 = 0;
  }

  else
  {
    v7 = 0xEA0000000000776FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746867696ELL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_264F10();
  }

  return v11 & 1;
}

Swift::Int sub_1D8DF8()
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

double sub_1D8E8C(uint64_t a1)
{
  sub_264500();

  return result;
}

Swift::Int sub_1D8F0C(uint64_t a1)
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

void sub_1D8FA8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE000000000000000;
  v5 = 0x646168536B726164;
  if (v2 == 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = 0xEA0000000000776FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746867696ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

Swift::String __swiftcall ImageFilter.build()()
{
  LODWORD(v1) = *v0 | (*(v0 + 2) << 16);
  if (!(*(v0 + 2) >> 6))
  {
    v12 = sub_E9098(0, 1, 1, _swiftEmptyArrayStorage);
    v14 = *(v12 + 2);
    v13 = *(v12 + 3);
    if (v14 >= v13 >> 1)
    {
      v12 = sub_E9098((v13 > 1), v14 + 1, 1, v12);
    }

    *(v12 + 2) = v14 + 1;
    v15 = &v12[16 * v14];
    v16 = 0xE500000000000000;
    *(v15 + 4) = 0x7265766F63;
    *(v15 + 5) = 0xE500000000000000;
    v49 = v12;
    if (v1)
    {
      v17 = &off_301600;
    }

    else
    {
      v17 = &off_301650;
    }

    sub_1D9738(v17);
    if (BYTE1(v1))
    {
      if (BYTE1(v1) == 1)
      {
        v4 = 0;
        v16 = 0xE000000000000000;
      }

      else
      {
        v4 = 0x646168536B726164;
        v16 = 0xEA0000000000776FLL;
      }
    }

    else
    {
      v4 = 0x746867696ELL;
    }

    v2 = v49;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_E9098(0, *(v49 + 2) + 1, 1, v49);
    }

    v29 = *(v2 + 2);
    v28 = *(v2 + 3);
    v6 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      v2 = sub_E9098((v28 > 1), v29 + 1, 1, v2);
    }

    *(v2 + 2) = v6;
    v30 = &v2[16 * v29];
    *(v30 + 4) = v4;
    *(v30 + 5) = v16;
    if ((v1 & 0x10000) == 0)
    {
      goto LABEL_45;
    }

    v1 = 0xEA00000000006465;
    v26 = *(v2 + 3);
    v27 = v29 + 2;
    if ((v29 + 2) <= (v26 >> 1))
    {
      goto LABEL_31;
    }

    goto LABEL_39;
  }

  if (*(v0 + 2) >> 6 != 1)
  {
    v2 = sub_E9098(0, 1, 1, _swiftEmptyArrayStorage);
    v4 = *(v2 + 2);
    v18 = *(v2 + 3);
    v19 = v18 >> 1;
    v20 = v4 + 1;
    if (v18 >> 1 <= v4)
    {
      v2 = sub_E9098((v18 > 1), v4 + 1, 1, v2);
      v18 = *(v2 + 3);
      v19 = v18 >> 1;
    }

    *(v2 + 2) = v20;
    v21 = &v2[16 * v4];
    *(v21 + 4) = 0x7265766F63;
    *(v21 + 5) = 0xE500000000000000;
    v6 = v4 + 2;
    if (v19 < (v4 + 2))
    {
      v2 = sub_E9098((v18 > 1), v4 + 2, 1, v2);
    }

    *(v2 + 2) = v6;
    v22 = &v2[16 * v20];
    *(v22 + 4) = 6710384;
    *(v22 + 5) = 0xE300000000000000;
    if (v1)
    {
      if (v1 == 1)
      {
        v23 = 0;
        v1 = 0xE000000000000000;
      }

      else
      {
        v23 = 0x646168536B726164;
        v1 = 0xEA0000000000776FLL;
      }
    }

    else
    {
      v1 = 0xE500000000000000;
      v23 = 0x746867696ELL;
    }

    v31 = *(v2 + 3);
    v27 = v4 + 3;
    if ((v4 + 3) > (v31 >> 1))
    {
      v2 = sub_E9098((v31 > 1), v4 + 3, 1, v2);
    }

    goto LABEL_44;
  }

  v2 = sub_E9098(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  v5 = v3 >> 1;
  v6 = v4 + 1;
  if (v3 >> 1 <= v4)
  {
LABEL_59:
    v2 = sub_E9098((v3 > 1), v6, 1, v2);
    v3 = *(v2 + 3);
    v5 = v3 >> 1;
  }

  *(v2 + 2) = v6;
  v7 = &v2[16 * v4];
  *(v7 + 4) = 0x7265766F63;
  *(v7 + 5) = 0xE500000000000000;
  v8 = v4 + 2;
  if (v5 < (v4 + 2))
  {
    v2 = sub_E9098((v3 > 1), v4 + 2, 1, v2);
  }

  *(v2 + 2) = v8;
  v9 = &v2[16 * v6];
  *(v9 + 4) = 0x6F6F626F69647561;
  *(v9 + 5) = 0xE90000000000006BLL;
  if (v1)
  {
    if (v1 == 1)
    {
      v10 = 0;
      v11 = 0xE000000000000000;
    }

    else
    {
      v10 = 0x646168536B726164;
      v11 = 0xEA0000000000776FLL;
    }
  }

  else
  {
    v11 = 0xE500000000000000;
    v10 = 0x746867696ELL;
  }

  v24 = *(v2 + 3);
  v6 = v4 + 3;
  if ((v4 + 3) > (v24 >> 1))
  {
    v2 = sub_E9098((v24 > 1), v4 + 3, 1, v2);
  }

  *(v2 + 2) = v6;
  v25 = &v2[16 * v8];
  *(v25 + 4) = v10;
  *(v25 + 5) = v11;
  if ((v1 & 0x100) == 0)
  {
    goto LABEL_45;
  }

  v1 = 0xEA00000000006465;
  v26 = *(v2 + 3);
  v27 = v4 + 4;
  if ((v4 + 4) > (v26 >> 1))
  {
LABEL_39:
    v2 = sub_E9098((v26 > 1), v27, 1, v2);
  }

LABEL_31:
  v23 = 0x7463697274736572;
LABEL_44:
  *(v2 + 2) = v27;
  v32 = &v2[16 * v6];
  *(v32 + 4) = v23;
  *(v32 + 5) = v1;
LABEL_45:
  v33 = 0;
  v34 = *(v2 + 2);
  v35 = _swiftEmptyArrayStorage;
LABEL_46:
  v3 = &v2[16 * v33 + 40];
  while (v34 != v33)
  {
    if (v33 >= *(v2 + 2))
    {
      __break(1u);
      goto LABEL_59;
    }

    ++v33;
    v36 = *(v3 - 8);
    v1 = *v3;
    v3 += 16;
    v37 = HIBYTE(v1) & 0xF;
    if ((v1 & 0x2000000000000000) == 0)
    {
      v37 = v36 & 0xFFFFFFFFFFFFLL;
    }

    if (v37)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v6 = &v48;
        sub_2DAA4(0, v35[2] + 1, 1);
        v35 = v48;
      }

      v40 = v35[2];
      v39 = v35[3];
      v4 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        v6 = &v48;
        sub_2DAA4((v39 > 1), v40 + 1, 1);
        v35 = v48;
      }

      v35[2] = v4;
      v41 = &v35[2 * v40];
      v41[4] = v36;
      v41[5] = v1;
      goto LABEL_46;
    }
  }

  v48 = v35;
  sub_2EF0(&qword_3160B0, &qword_267D40);
  sub_8E38(&qword_3160B8, &qword_3160B0, &qword_267D40, &protocol conformance descriptor for [A]);
  v42 = sub_264340();
  v44 = v43;

  v45 = v42;
  v46 = v44;
  result._object = v46;
  result._countAndFlagsBits = v45;
  return result;
}

void sub_1D9618(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(a1 + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v6 = a2();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_2EF0(a3, a4);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return;
  }

  v12 = *(v6 + 16);
  v13 = __OFADD__(v12, v5);
  v14 = v12 + v5;
  if (!v13)
  {
    *(v6 + 16) = v14;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

void sub_1D9738(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_E9098(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1D982C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_E9AE8(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_2EF0(&qword_3160D0, &unk_270CF0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

unint64_t sub_1D9934()
{
  result = qword_324D30;
  if (!qword_324D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324D30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImageFilter(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFD)
  {
    if ((a2 + 33030146) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16252930;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16252930;
      }
    }
  }

  if ((((*(a1 + 2) >> 6) | (4 * ((*a1 >> 4) & 0xFC0 | (*a1 >> 2) | (((*(a1 + 2) >> 1) & 0x1F) << 12)))) ^ 0x7FFFFu) >= 0x7FFFD)
  {
    v4 = -1;
  }

  else
  {
    v4 = ((*(a1 + 2) >> 6) | (4 * ((*a1 >> 4) & 0xFC0 | (*a1 >> 2) | (((*(a1 + 2) >> 1) & 0x1F) << 12)))) ^ 0x7FFFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ImageFilter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33030146) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0x7FFFD)
  {
    v3 = 0;
  }

  if (a2 > 0x7FFFD)
  {
    *result = a2 + 2;
    *(result + 2) = (a2 - 524286) >> 16;
    if (v3)
    {
      v4 = ((a2 - 524286) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      v5 = ((-a2 >> 2) & 0x1FFFF) - (a2 << 17);
      *(result + 2) = ((32 * v5) & 0xFE0000) >> 16;
      *result = (16 * v5) & 0xFC00 | (4 * (v5 & 0x3F));
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unsigned __int16 *sub_1D9B4C(unsigned __int16 *result, int a2)
{
  v2 = (*result | (*(result + 2) << 16)) & 0x10303 | (a2 << 22);
  *result &= 0x303u;
  *(result + 2) = BYTE2(v2);
  return result;
}

double StarRatingView.init(rating:)@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  result = 0.0;
  *(a1 + 8) = xmmword_2868C0;
  *(a1 + 24) = 0x4008000000000000;
  return result;
}

uint64_t StarRatingView.body.getter()
{
  v1 = sub_262370();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2EF0(&qword_324D48, &qword_2868D0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = *v0;
  v9 = v0[1];
  v10 = v0[2];
  v11 = v0[3];
  *v7 = sub_261D30();
  *(v7 + 1) = 0x4000000000000000;
  v7[16] = 0;
  v12 = sub_2EF0(&qword_324D50, &qword_2868D8);
  sub_1D9D94(&v7[*(v12 + 44)], v8, v9, v10, v11);
  sub_262340();
  sub_8E38(&qword_324D58, &qword_324D48, &qword_2868D0, &protocol conformance descriptor for HStack<A>);
  sub_262C70();
  (*(v2 + 8))(v4, v1);
  return sub_8E80(v7, &qword_324D48, &qword_2868D0);
}

void sub_1D9D94(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v66 = a1;
  v65 = sub_2EF0(&qword_324D60, &qword_286960);
  __chkstk_darwin(v65);
  v10 = &v53 - v9;
  v11 = sub_2EF0(&qword_324D68, &qword_286968);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v53 - v16;
  __chkstk_darwin(v18);
  v20 = &v53 - v19;
  __chkstk_darwin(v21);
  v23 = &v53 - v22;
  v24 = sub_2EF0(&qword_324D70, &unk_286970);
  __chkstk_darwin(v24);
  v27 = (&v53 - v26);
  if (a4 < a2 || a2 < a3)
  {
    v52 = swift_allocObject();
    *(v52 + 16) = 0xD000000000000027;
    *(v52 + 24) = 0x8000000000294810;
    *v27 = sub_1F458;
    v27[1] = v52;
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_316968, &qword_268A00);
    sub_8E38(&qword_316970, &qword_316968, &qword_268A00, &protocol conformance descriptor for BooksFailureView<A>);
    sub_8E38(&qword_324D80, &qword_324D60, &qword_286960, &protocol conformance descriptor for TupleView<A>);
    sub_261F80();
    return;
  }

  v28 = floor(a2);
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v28 < 0)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v59 = v25;
  v60 = v11;
  v61 = &v53 - v26;
  v58 = v12;
  v64 = v10;
  v68 = 0;
  v69 = v28;
  swift_getKeyPath();
  sub_2EF0(&qword_31BEA8, &qword_271FD0);
  sub_C092C();
  v63 = v23;
  sub_2633B0();
  v67 = 0;
  v29 = 0;
  v62 = 0;
  v30 = 0;
  v31 = 0;
  v32 = a2 - v28;
  if (v32 > 0.0)
  {
    v33 = sub_2630B0();
    v30 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    v31 = v34;
    v35 = swift_allocObject();
    v35[2] = a2;
    v35[3] = a3;
    v35[4] = a4;
    v35[5] = a5;
    v35[6] = v32;
    v67 = v33;

    v62 = v35;

    v29 = sub_1DA80C;
  }

  v36 = a4 - a2;
  if (COERCE__INT64(fabs(a4 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

  if (v36 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v36 < 9.22337204e18)
  {
    if ((v36 & 0x8000000000000000) == 0)
    {
      v68 = 0;
      v69 = v36;
      v54 = v17;
      v37 = v14;
      v38 = v29;
      swift_getKeyPath();
      v57 = v20;
      sub_2633B0();
      v39 = v58;
      v40 = *(v58 + 16);
      v41 = v30;
      v42 = v60;
      v40(v17, v63, v60);
      v40(v37, v20, v42);
      v43 = v64;
      v40(v64, v17, v42);
      v44 = sub_2EF0(&qword_324D78, &qword_286998);
      v45 = v43;
      v46 = (v43 + *(v44 + 48));
      v47 = v67;
      *v46 = v67;
      v46[1] = v38;
      v48 = v62;
      v46[2] = v62;
      v46[3] = v41;
      v46[4] = v31;
      v40((v45 + *(v44 + 64)), v37, v42);
      v55 = v41;
      v56 = v38;
      sub_1DA70C(v47, v38, v48);
      v49 = *(v39 + 8);
      v49(v37, v42);
      v50 = sub_1DA74C(v47, v38, v48);
      (v49)(v54, v42, v50);
      v51 = v64;
      sub_1DA78C(v64, v61);
      swift_storeEnumTagMultiPayload();
      sub_2EF0(&qword_316968, &qword_268A00);
      sub_8E38(&qword_316970, &qword_316968, &qword_268A00, &protocol conformance descriptor for BooksFailureView<A>);
      sub_8E38(&qword_324D80, &qword_324D60, &qword_286960, &protocol conformance descriptor for TupleView<A>);
      sub_261F80();
      sub_1DA74C(v67, v56, v48);
      sub_8E80(v51, &qword_324D60, &qword_286960);
      v49(v57, v42);
      v49(v63, v42);
      return;
    }

    goto LABEL_22;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_1DA514@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2630B0();
  *a1 = result;
  return result;
}

double sub_1DA554@<D0>(uint64_t a1@<X8>)
{
  v4 = sub_2630B0();
  sub_261420();
  sub_261420();
  sub_263580();
  sub_2613A0();
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  result = *&v10;
  *(a1 + 40) = v10;
  *(a1 + 56) = 0;
  return result;
}

uint64_t sub_1DA630@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2630B0();
  *a1 = result;
  return result;
}

uint64_t sub_1DA674()
{
  sub_2F9C(&qword_324D48, &qword_2868D0);
  sub_8E38(&qword_324D58, &qword_324D48, &qword_2868D0, &protocol conformance descriptor for HStack<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1DA70C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

double sub_1DA74C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1DA78C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_324D60, &qword_286960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA81C()
{

  return swift_deallocObject();
}

uint64_t String.sizedURLFromTemplatedURL(cropCode:size:contentsScale:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a8@<D2>)
{
  v51 = a1;
  v15 = sub_2EF0(&qword_322C70, &qword_272AD0);
  __chkstk_darwin(v15 - 8);
  v17 = &v46 - v16;
  sub_2649D0();
  v20 = round(v19);
  v56 = a3;
  v57 = a4;
  v54 = 8222587;
  v55 = 0xE300000000000000;
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v47 = a3;
  v21 = round(v18);
  v8 = 8217467;
  v52 = v20;
  v52 = sub_264EB0();
  v53 = v22;
  sub_10A84();
  v9 = &type metadata for String;
  v23 = sub_264AA0();
  v25 = v24;

  v56 = v23;
  v57 = v25;
  v54 = 8218747;
  v55 = 0xE300000000000000;
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_9;
  }

  v48 = a4;
  v50 = a5;
  v52 = v21;
  v52 = sub_264EB0();
  v53 = v26;
  v27 = sub_264AA0();
  v28 = a2;
  v30 = v29;

  v56 = v27;
  v57 = v30;
  v54 = 8217467;
  v55 = 0xE300000000000000;
  v52 = v51;
  v53 = v28;
  v49 = v28;
  v31 = sub_264AA0();
  v33 = v32;

  v56 = v31;
  v57 = v33;
  v54 = 8218235;
  v55 = 0xE300000000000000;
  v52 = 6778986;
  v53 = 0xE300000000000000;
  sub_264AA0();

  sub_260050();

  v9 = sub_260060();
  v8 = *(v9 - 1);
  if ((*(v8 + 48))(v17, 1, v9) != 1)
  {
    v44 = v50;
    (*(v8 + 32))(v50, v17, v9);
    v43 = 0;
    return (*(v8 + 56))(v44, v43, 1, v9);
  }

  sub_17EBC(v17);
  if (qword_315878 != -1)
  {
    goto LABEL_20;
  }

LABEL_9:
  v34 = sub_260D50();
  sub_B080(v34, qword_316018);
  v35 = v48;

  v36 = v49;

  v37 = sub_260D30();
  v38 = sub_2648F0();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v39 = 136315906;
    *(v39 + 4) = sub_191368(v47, v35, &v56);
    *(v39 + 12) = 2080;
    v40 = sub_2649C0();
    v42 = sub_191368(v40, v41, &v56);

    *(v39 + 14) = v42;
    *(v39 + 22) = 2048;
    *(v39 + 24) = a8;
    *(v39 + 32) = 2080;
    *(v39 + 34) = sub_191368(v51, v36, &v56);
    _os_log_impl(&dword_0, v37, v38, "Invalid templated URL: %s with size: %s, contentsScale: %f, cropCode: %s", v39, 0x2Au);
    swift_arrayDestroy();
  }

  v43 = 1;
  v44 = v50;
  return (*(v8 + 56))(v44, v43, 1, v9);
}

uint64_t sub_1DAE00@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C00, &qword_26A520);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_186994(v2, &v13 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1DEF58(v10, a1, type metadata accessor for ColorConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t ShelfBackgroundViewModel.Externals.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_3080(a1);
  *a2 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  return swift_storeEnumTagMultiPayload();
}

uint64_t ShelfBackgroundViewModel.init(kind:ignoreShelf:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  *(a3 + 8) = *a1;
  *(a3 + 16) = v4;
  *a3 = a2;
  v5 = *(type metadata accessor for ShelfBackgroundViewModel(0) + 24);
  *(a3 + v5) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DB0D0()
{
  v0 = type metadata accessor for ShelfBackgroundViewModel(0);
  sub_B600(v0, qword_324D88);
  v1 = sub_B080(v0, qword_324D88);
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *v1 = 0;
  v2 = *(v0 + 24);
  *(v1 + v2) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static ShelfBackgroundViewModel.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_315AD0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ShelfBackgroundViewModel(0);
  v3 = sub_B080(v2, qword_324D88);
  return sub_1DB288(v3, a1, type metadata accessor for ShelfBackgroundViewModel);
}

uint64_t ShelfBackgroundViewModel.kind.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  v3 = *(v1 + 16);
  *(a1 + 8) = v3;
  return sub_1DB208(v2, v3);
}

uint64_t sub_1DB208(uint64_t result, char a2)
{
  if (a2 == 2 || a2 == 1)
  {
  }

  if (!a2)
  {
    return sub_1DB22C(result);
  }

  return result;
}

unint64_t sub_1DB22C(unint64_t result)
{
  if (result >= 5)
  {
  }

  return result;
}

uint64_t sub_1DB288(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DB310(char a1, uint64_t a2)
{
  v5 = type metadata accessor for ColorConstants.Environment(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 8) > 1u)
  {
    if (*(v2 + 8) != 2)
    {
LABEL_11:
      v12 = sub_262FA0();
      return sub_2613B0();
    }

    swift_getAtKeyPath();
    v11 = v12;
  }

  else
  {
    if (!*(v2 + 8))
    {
      if (*v2)
      {
        v12 = *v2;
LABEL_10:
        sub_1DB288(a2, v7, type metadata accessor for ColorConstants.Environment);
        v8 = sub_1DB504(v7);
        v9 = sub_261180();
        (*(*(v9 - 8) + 8))(v7, v9);
        return v8;
      }

      if (a1)
      {
        v12 = 0;
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    v12 = *v2;
  }

  return sub_2613B0();
}

uint64_t sub_1DB484(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 8) > 1u)
  {
    if (*(v2 + 8) == 2)
    {
      return sub_1DBC1C();
    }
  }

  else if (*(v2 + 8))
  {
    return sub_1DBC1C();
  }

  sub_262FA0();
  return sub_2613B0();
}

uint64_t sub_1DB504(uint64_t a1)
{
  v2 = sub_262F00();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261180();
  v7 = *(v6 - 8);
  v9 = __chkstk_darwin(v6);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  if (*v1 <= 1)
  {
    if (!v12)
    {
      v26 = enum case for ColorScheme.light(_:);
      v27 = *(v7 + 104);
      v28 = v8;
      (v27)(v11, enum case for ColorScheme.light(_:), v8, v9);
      v29 = sub_261170();
      v30 = *(v7 + 8);
      v31 = v28;
      v30(v11, v28);
      v15 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
      if ((v29 & 1) == 0)
      {
        v32 = sub_263000();

        v15 = v32;
      }

      v27(v11, v26, v31);

      v33 = sub_261170();
      v30(v11, v31);
      v22 = sub_262F80();
      if (v33)
      {
        v34 = sub_263000();

        v22 = v34;
      }

      goto LABEL_12;
    }

    if (v12 == 1)
    {
      v16 = enum case for Color.RGBColorSpace.sRGB(_:);
      v17 = *(v3 + 104);
      (v17)(v5, enum case for Color.RGBColorSpace.sRGB(_:), v2, v9);
      v15 = sub_263060();
      v17(v5, v16, v2);

      goto LABEL_11;
    }

LABEL_18:
    v35[1] = sub_263040();
    return sub_2613B0();
  }

  if (v12 == 2)
  {
    v18 = enum case for Color.RGBColorSpace.sRGB(_:);
    v19 = *(v3 + 104);
    (v19)(v5, enum case for Color.RGBColorSpace.sRGB(_:), v2, v9);
    v15 = sub_263060();
    v19(v5, v18, v2);

    goto LABEL_11;
  }

  if (v12 == 3)
  {
    v20 = enum case for Color.RGBColorSpace.sRGB(_:);
    v21 = *(v3 + 104);
    (v21)(v5, enum case for Color.RGBColorSpace.sRGB(_:), v2, v9);
    v15 = sub_263060();
    v21(v5, v20, v2);

    goto LABEL_11;
  }

  if (v12 != 4)
  {
    goto LABEL_18;
  }

  v13 = enum case for Color.RGBColorSpace.sRGB(_:);
  v14 = *(v3 + 104);
  (v14)(v5, enum case for Color.RGBColorSpace.sRGB(_:), v2, v9);
  v15 = sub_263060();
  v14(v5, v13, v2);

LABEL_11:
  v22 = sub_263060();
LABEL_12:
  sub_2EF0(&qword_3205C0, &qword_27C958);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_269100;
  *(v23 + 32) = v15;
  *(v23 + 40) = v22;

  sub_263700();
  sub_263710();
  sub_263470();
  sub_261590();
  v24 = sub_2613B0();

  return v24;
}

BOOL ShelfBackgroundViewModel.BackgroundKind.requiresBlendForButtons.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 >= 3)
  {
    v3 = 3;
  }

  else
  {
    sub_1DB208(v1, v2);
    v3 = v2;
  }

  sub_1DDE58(v1, v3);
  sub_1DDE58(0, 3);
  return v2 < 3;
}

uint64_t ShelfBackgroundViewModel.BackgroundKind.requiresBlendForText.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 > 2)
  {
    sub_1DDE58(v1, 3);
    v4 = 3;
    goto LABEL_5;
  }

  sub_1DB208(v1, v2);
  sub_1DDE58(v1, v2);
  sub_1DDE58(0, 3);
  if (!v2)
  {
    if (v1)
    {
      sub_1DB208(v1, 0);
      sub_1DB22C(v1);
      sub_1DB22C(v1);
      sub_1DDE7C(v1);
      sub_1DDE7C(0);
      sub_1DDE58(v1, 0);
      sub_1DDE58(0, 0);
      v3 = v1;
      goto LABEL_8;
    }

    sub_1DDE7C(0);
    sub_1DDE7C(0);
    sub_1DDE58(0, 0);
    sub_1DDE58(0, 0);
    v4 = 0;
LABEL_5:
    sub_1DDE58(0, v4);
    return 0;
  }

  sub_1DB208(v1, v2);
  sub_1DDE58(v1, v2);
  v3 = 0;
LABEL_8:
  sub_1DDE58(v3, 0);
  return 1;
}

uint64_t sub_1DBC1C()
{
  v0 = sub_262F00();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_2EF0(&qword_324FA0, &unk_2871C0);
  __chkstk_darwin(v4);
  v6 = &v15[-v5];
  sub_2EF0(&qword_3205C0, &qword_27C958);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_269100;
  v8 = enum case for Color.RGBColorSpace.sRGB(_:);
  v9 = *(v1 + 104);
  v9(v3, enum case for Color.RGBColorSpace.sRGB(_:), v0);
  *(v7 + 32) = sub_263060();
  v9(v3, v8, v0);
  *(v7 + 40) = sub_263060();
  sub_263700();
  sub_263710();
  sub_263470();
  sub_261590();
  v10 = *(v4 + 36);
  v11 = enum case for BlendMode.overlay(_:);
  v12 = sub_263640();
  (*(*(v12 - 8) + 104))(&v6[v10], v11, v12);
  v13 = v16;
  *v6 = *&v15[8];
  *(v6 + 1) = v13;
  *(v6 + 4) = v17;
  sub_8E38(&qword_324FA8, &qword_324FA0, &unk_2871C0, &protocol conformance descriptor for _BlendModeShapeStyle<A>);
  return sub_2613B0();
}

uint64_t sub_1DBEC4(uint64_t a1)
{
  v3 = sub_261180();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ColorConstants.Environment(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  if (*(v1 + 8) > 1u)
  {
    if (*(v1 + 8) != 2)
    {
LABEL_8:
      sub_1DB288(a1, v9, type metadata accessor for ColorConstants.Environment);
      (*(v4 + 104))(v6, enum case for ColorScheme.dark(_:), v3);
      v11 = sub_261170();
      v19 = *(v4 + 8);
      v19(v6, v3);
      v19(v9, v3);
      return v11 & 1;
    }

    swift_getAtKeyPath();
    *&v12 = Color.rgbaComponents.getter(v27);
    v14 = v13;
    v25 = v15;
    v26 = v12;

    v16 = v14 * 255.0 * (v14 * 255.0 * 0.587);
    *&v17.f64[0] = v25;
    *&v17.f64[1] = v26;
    v18 = vmulq_f64(v17, vdupq_n_s64(0x406FE00000000000uLL));
LABEL_10:
    v23 = vmulq_f64(v18, vmulq_f64(v18, xmmword_26BA40));
    v11 = sqrt(v23.f64[0] + v23.f64[1] + v16) < 205.0;
    return v11 & 1;
  }

  if (*(v1 + 8))
  {
LABEL_9:
    v20 = Color.rgbaComponents.getter(*v1);
    v16 = v21 * 255.0 * (v21 * 255.0 * 0.587);
    v22.f64[1] = v20;
    v18 = vmulq_f64(v22, vdupq_n_s64(0x406FE00000000000uLL));
    goto LABEL_10;
  }

  if ((v10 - 1) >= 4)
  {
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v11 = 1;
  return v11 & 1;
}

uint64_t ShelfBackgroundViewModel.isDark(colorConstants:)(uint64_t a1)
{
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  sub_1DB208(v4, v5);
  LOBYTE(a1) = sub_1DBEC4(a1);
  sub_1DDE58(v4, v5);
  return a1 & 1;
}

uint64_t sub_1DC1A4()
{
  v1 = 1684957547;
  if (*v0 != 1)
  {
    v1 = 0x6C616E7265747865;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x685365726F6E6769;
  }
}

uint64_t sub_1DC204@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DED50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DC22C(uint64_t a1)
{
  v2 = sub_1DE060();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1DC268(uint64_t a1)
{
  v2 = sub_1DE060();

  return CodingKey.debugDescription.getter(a1, v2);
}

void ShelfBackgroundViewModel.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = type metadata accessor for ShelfBackgroundViewModel.Externals(0);
  __chkstk_darwin(v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2EF0(&qword_324DA0, &unk_286A30);
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for ShelfBackgroundViewModel(0);
  __chkstk_darwin(v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2E18(a1, a1[3]);
  sub_1DE060();
  v24 = v9;
  v13 = v27;
  sub_265120();
  if (v13)
  {
    sub_3080(a1);
  }

  else
  {
    v27 = a1;
    v21 = v5;
    v22 = v12;
    v33 = 0;
    sub_2EF0(&qword_316BD8, &qword_268BC0);
    sub_8E38(&qword_316BE0, &qword_316BD8, &qword_268BC0, &protocol conformance descriptor for _DecodeDefault_Wrapper<A>);
    v14 = v24;
    v15 = v25;
    sub_264DB0();
    v16 = v22;
    *v22 = v32 & 1;
    v31 = 1;
    sub_1DE0B4();
    sub_264DF0();
    v17 = v26;
    v18 = v29;
    *(v16 + 8) = v28;
    *(v16 + 16) = v18;
    v30 = 2;
    sub_1DE3B8(&qword_324DB8, type metadata accessor for ShelfBackgroundViewModel.Externals, &protocol conformance descriptor for ShelfBackgroundViewModel.Externals);
    v19 = v21;
    sub_264DF0();
    (*(v17 + 8))(v14, v15);
    sub_1DEF58(v19, v16 + *(v10 + 24), type metadata accessor for ShelfBackgroundViewModel.Externals);
    sub_1DB288(v16, v23, type metadata accessor for ShelfBackgroundViewModel);
    sub_3080(v27);
    sub_1DE108(v16);
  }
}

Swift::Int sub_1DC6B4()
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

double sub_1DC760(uint64_t a1)
{
  sub_264500();

  return result;
}

Swift::Int sub_1DC7F8(uint64_t a1)
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

unint64_t sub_1DC8A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DEE74(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DC8D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEF746E6569646172;
  v5 = 0x47746C7561666564;
  if (v2 != 1)
  {
    v5 = 0xD00000000000001ELL;
    v4 = 0x800000000028FDE0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DC938(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x47746C7561666564;
  v4 = 0xEF746E6569646172;
  v5 = 0x800000000028FDE0;
  if (v2 != 1)
  {
    v3 = 0xD00000000000001ELL;
    v4 = 0x800000000028FDE0;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 1701736302;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 0x47746C7561666564;
  if (*a2 == 1)
  {
    v5 = 0xEF746E6569646172;
  }

  else
  {
    v8 = 0xD00000000000001ELL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_264F10();
  }

  return v11 & 1;
}

uint64_t sub_1DCAA4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x61745364696C6F73;
  v4 = 0xEB00000000636974;
  if (v2 != 1)
  {
    v3 = 0x6E794464696C6F73;
    v4 = 0xEC00000063696D61;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x746E656964617267;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x61745364696C6F73;
  v8 = 0xEB00000000636974;
  if (*a2 != 1)
  {
    v7 = 0x6E794464696C6F73;
    v8 = 0xEC00000063696D61;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x746E656964617267;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_264F10();
  }

  return v11 & 1;
}

Swift::Int sub_1DCBC8()
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

double sub_1DCC7C(uint64_t a1)
{
  sub_264500();

  return result;
}

Swift::Int sub_1DCD1C(uint64_t a1)
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

unint64_t sub_1DCDCC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DEEC0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DCDFC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEB00000000636974;
  v5 = 0x61745364696C6F73;
  if (v2 != 1)
  {
    v5 = 0x6E794464696C6F73;
    v4 = 0xEC00000063696D61;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746E656964617267;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DCE6C()
{
  v1 = 0x61745364696C6F73;
  if (*v0 != 1)
  {
    v1 = 0x6E794464696C6F73;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E656964617267;
  }
}

unint64_t sub_1DCED8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DEEC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCF00(uint64_t a1)
{
  v2 = sub_1DE20C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1DCF3C(uint64_t a1)
{
  v2 = sub_1DE20C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ShelfBackgroundViewModel.BackgroundKind.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v65 = a2;
  v4 = sub_2EF0(&qword_324DC0, &unk_286A40);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v54 - v6;
  v8 = sub_264C00();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_30CC(a1, v62);
  sub_1DE164();
  sub_1DE1B8();
  sub_264660();
  if (!v2)
  {
    KeyPath = v61;
    if (v61)
    {
      if (v61 == 1)
      {
        KeyPath = 0;
        v15 = 0;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        v15 = 2;
      }
    }

    else
    {
      v15 = 3;
    }

    goto LABEL_15;
  }

  v58 = v2;
  v57 = v4;
  v56 = v5;
  v12 = a1[3];
  v59 = a1;
  sub_2E18(a1, v12);
  v13 = sub_1DE20C();
  sub_265120();
  v55 = v7;
  v16 = sub_264E00();
  v17 = (2 * *(v16 + 16)) | 1;
  v62[0] = v16;
  v62[1] = v16 + 32;
  v63 = 0;
  v64 = v17;
  v18 = sub_AFAC();
  if (v18 == 3 || v63 != v64 >> 1)
  {
    v21 = v57;
    v22 = v55;
    sub_264D60();
    sub_264BF0();
    v23 = sub_264C10();
    swift_allocError();
    v25 = v24;
    v26 = *(sub_2EF0(&qword_315CD0, &qword_266E00) + 48);
    *v25 = &type metadata for ShelfBackgroundViewModel.BackgroundKind;
    (*(v9 + 16))(&v25[v26], v11, v8);
    (*(*(v23 - 8) + 104))(v25, enum case for DecodingError.typeMismatch(_:), v23);
    swift_willThrow();

    (*(v56 + 8))(v22, v21);
    (*(v9 + 8))(v11, v8);
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = v18;
    if (!v18)
    {
      v60 = 0;
      sub_1DE260();
      v30 = v57;
      v31 = v55;
      sub_264DF0();
      (*(v56 + 8))(v31, v30);

      swift_unknownObjectRelease();
      KeyPath = v61;
LABEL_26:
      a1 = v59;
LABEL_15:
      v28 = v65;
      *v65 = KeyPath;
      *(v28 + 8) = v15;
      v27 = a1;
      return sub_3080(v27);
    }

    v19 = v55;
    if (v18 == 1)
    {
      LOBYTE(v61) = 1;
      v20 = sub_264DC0();
      v35 = Color.init(hexString:)(v20, v34);
      if (v35)
      {
        v36 = v35;
        (*(v56 + 8))(v19, v57);

        swift_unknownObjectRelease();
        KeyPath = v36;
        goto LABEL_26;
      }

      v42 = sub_264C10();
      swift_allocError();
      v43 = v19;
      v45 = v44;
      v46 = v57;
      v47 = sub_264D60();
      sub_2EF0(&qword_31D510, &qword_286A50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_267D30;
      *(inited + 56) = &type metadata for ShelfBackgroundViewModel.BackgroundKind.CodingKeys;
      *(inited + 64) = v13;
      *(inited + 32) = 1;
      v61 = v47;
      sub_1D95C8(inited);
    }

    else
    {
      LOBYTE(v61) = 2;
      v32 = sub_264DC0();
      if (qword_315AD8 != -1)
      {
        v52 = v32;
        v53 = v33;
        swift_once();
        v32 = v52;
        v33 = v53;
      }

      v37 = qword_354040;
      if (*(qword_354040 + 16))
      {
        v38 = sub_D410(v32, v33);
        v40 = v39;

        if (v40)
        {
          v41 = *(*(v37 + 56) + 8 * v38);

          (*(v56 + 8))(v55, v57);
          swift_unknownObjectRelease();
          KeyPath = v41;
          goto LABEL_26;
        }
      }

      else
      {
      }

      v42 = sub_264C10();
      swift_allocError();
      v45 = v49;
      v46 = v57;
      v43 = v55;
      v50 = sub_264D60();
      sub_2EF0(&qword_31D510, &qword_286A50);
      v51 = swift_initStackObject();
      *(v51 + 16) = xmmword_267D30;
      *(v51 + 56) = &type metadata for ShelfBackgroundViewModel.BackgroundKind.CodingKeys;
      *(v51 + 64) = v13;
      *(v51 + 32) = 2;
      v61 = v50;
      sub_1D95C8(v51);
    }

    sub_264BF0();
    (*(*(v42 - 8) + 104))(v45, enum case for DecodingError.dataCorrupted(_:), v42);
    swift_willThrow();

    (*(v56 + 8))(v43, v46);
    swift_unknownObjectRelease();
  }

  v27 = v59;
  return sub_3080(v27);
}

uint64_t sub_1DD7CC@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() secondarySystemBackgroundColor];
  result = sub_263070();
  *a1 = result;
  return result;
}

Swift::Int sub_1DD82C()
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

double sub_1DD8F4(uint64_t a1)
{
  sub_264500();

  return result;
}

Swift::Int sub_1DD9A8(uint64_t a1)
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

unint64_t sub_1DDA6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DEF0C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DDA9C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x746C7561666564;
  v5 = 0xE400000000000000;
  v6 = 1818322292;
  v7 = 0xE300000000000000;
  v8 = 6579570;
  if (v2 != 3)
  {
    v8 = 1702194274;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6B63616C62;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t ShelfBackgroundViewModel.BackgroundKind.Gradient.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_30CC(a1, v13);
  sub_1DE2B8();
  sub_1DE30C();
  sub_264660();
  if (v2)
  {
    sub_30CC(a1, v13);
    v5 = sub_2644F0();
    v7 = Color.init(hexString:)(v5, v6);
    if (v7)
    {
      v8 = v7;

      *a2 = v8;
    }

    else
    {
      v9 = sub_264C10();
      swift_allocError();
      v11 = v10;
      sub_2E18(a1, a1[3]);
      sub_2650E0();
      sub_264BF0();
      (*(*(v9 - 8) + 104))(v11, enum case for DecodingError.dataCorrupted(_:), v9);
      swift_willThrow();
    }
  }

  else
  {
    *a2 = v13[47];
  }

  return sub_3080(a1);
}

uint64_t _s7BooksUI24ShelfBackgroundViewModelV0D4KindO8GradientO2eeoiySbAG_AGtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 <= 1)
  {
    if (v2)
    {
      if (v2 != 1)
      {
LABEL_17:
        if (v3 >= 5)
        {
          sub_1DB22C(*a2);
          sub_1DB22C(v2);
          v4 = sub_262F10();
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      if (v3 == 1)
      {
        v2 = 1;
        v4 = 1;
        goto LABEL_19;
      }
    }

    else if (!v3)
    {
      v2 = 0;
      v4 = 1;
      goto LABEL_19;
    }

LABEL_18:
    sub_1DB22C(*a2);
    sub_1DB22C(v2);
    v4 = 0;
    goto LABEL_19;
  }

  if (v2 == 2)
  {
    if (v3 == 2)
    {
      v4 = 1;
      v2 = 2;
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v2 == 3)
  {
    if (v3 == 3)
    {
      v4 = 1;
      v2 = 3;
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v2 != 4)
  {
    goto LABEL_17;
  }

  if (v3 != 4)
  {
    goto LABEL_18;
  }

  v4 = 1;
  v2 = 4;
LABEL_19:
  sub_1DDE7C(v2);
  sub_1DDE7C(v3);
  return v4 & 1;
}

double sub_1DDE58(unint64_t a1, char a2)
{
  if (a2 == 2 || a2 == 1)
  {
  }

  else if (!a2)
  {
    return sub_1DDE7C(a1);
  }

  return result;
}

double sub_1DDE7C(unint64_t a1)
{
  if (a1 >= 5)
  {
  }

  return result;
}

uint64_t _s7BooksUI24ShelfBackgroundViewModelV0D4KindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (v5 == 2)
      {
        sub_264AE0();
        sub_1DB208(v4, 2);
        sub_1DB208(v2, 2);
        LOBYTE(v5) = sub_264AD0();
        sub_1DDE58(v2, 2);
        sub_1DDE58(v4, 2);
        return v5 & 1;
      }
    }

    else if (v5 == 3 && v4 == 0)
    {
      sub_1DDE58(*a1, 3);
      sub_1DDE58(0, 3);
      LOBYTE(v5) = 1;
      return v5 & 1;
    }

LABEL_14:
    sub_1DB208(*a2, *(a2 + 8));
    sub_1DB208(v2, v3);
    sub_1DDE58(v2, v3);
    sub_1DDE58(v4, v5);
    LOBYTE(v5) = 0;
    return v5 & 1;
  }

  if (*(a1 + 8))
  {
    if (v5 == 1)
    {
      sub_1DB208(*a2, 1);
      sub_1DB208(v2, 1);
      LOBYTE(v5) = sub_262F10();
      sub_1DDE58(v2, 1);
      sub_1DDE58(v4, 1);
      return v5 & 1;
    }

    goto LABEL_14;
  }

  if (*(a2 + 8))
  {
    goto LABEL_14;
  }

  v8 = *a2;
  v9 = v2;
  sub_1DB208(v4, 0);
  sub_1DB208(v2, 0);
  sub_1DB208(v4, 0);
  sub_1DB208(v2, 0);
  v5 = _s7BooksUI24ShelfBackgroundViewModelV0D4KindO8GradientO2eeoiySbAG_AGtFZ_0(&v9, &v8);
  sub_1DDE58(v2, 0);
  sub_1DDE58(v4, 0);
  sub_1DDE58(v4, 0);
  sub_1DDE58(v2, 0);
  return v5 & 1;
}

unint64_t sub_1DE060()
{
  result = qword_324DA8;
  if (!qword_324DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324DA8);
  }

  return result;
}

unint64_t sub_1DE0B4()
{
  result = qword_324DB0;
  if (!qword_324DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324DB0);
  }

  return result;
}

uint64_t sub_1DE108(uint64_t a1)
{
  v2 = type metadata accessor for ShelfBackgroundViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DE164()
{
  result = qword_324DC8;
  if (!qword_324DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324DC8);
  }

  return result;
}

unint64_t sub_1DE1B8()
{
  result = qword_324DD0;
  if (!qword_324DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324DD0);
  }

  return result;
}

unint64_t sub_1DE20C()
{
  result = qword_324DD8;
  if (!qword_324DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324DD8);
  }

  return result;
}

unint64_t sub_1DE260()
{
  result = qword_324DE0;
  if (!qword_324DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324DE0);
  }

  return result;
}

unint64_t sub_1DE2B8()
{
  result = qword_324DE8;
  if (!qword_324DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324DE8);
  }

  return result;
}

unint64_t sub_1DE30C()
{
  result = qword_324DF0;
  if (!qword_324DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324DF0);
  }

  return result;
}

uint64_t sub_1DE360(uint64_t a1)
{
  result = sub_1DE3B8(&qword_324DF8, type metadata accessor for ShelfBackgroundViewModel, &protocol conformance descriptor for ShelfBackgroundViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DE3B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DE448(uint64_t a1)
{
  result = sub_1DE3B8(&qword_324E30, type metadata accessor for ShelfBackgroundViewModel, &protocol conformance descriptor for ShelfBackgroundViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DE4CC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
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
    v10 = type metadata accessor for ShelfBackgroundViewModel.Externals(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1DE58C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for ShelfBackgroundViewModel.Externals(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1DE62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22994(319, a2, a3, a4);
  if (v4 <= 0x3F)
  {
    type metadata accessor for ShelfBackgroundViewModel.Externals(319);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1DE6CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316F68, &unk_269C50);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DE758(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316F68, &unk_269C50);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1DE7D4(uint64_t a1)
{
  sub_C4F38(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1DE840(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DE858(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t getEnumTagSinglePayload for HVStackKind(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for HVStackKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DE900(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1DE928(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DE980(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void *sub_1DE9D0(void *result, int a2)
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

unint64_t sub_1DEA44()
{
  result = qword_324F60;
  if (!qword_324F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324F60);
  }

  return result;
}

unint64_t sub_1DEA9C()
{
  result = qword_324F68;
  if (!qword_324F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324F68);
  }

  return result;
}

unint64_t sub_1DEAF0(uint64_t a1)
{
  result = sub_1DE164();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DEB1C()
{
  result = qword_324F70;
  if (!qword_324F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324F70);
  }

  return result;
}

unint64_t sub_1DEB70(uint64_t a1)
{
  result = sub_1DE2B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DEB9C()
{
  result = qword_324F78;
  if (!qword_324F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324F78);
  }

  return result;
}

unint64_t sub_1DEBF4()
{
  result = qword_324F80;
  if (!qword_324F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324F80);
  }

  return result;
}

unint64_t sub_1DEC4C()
{
  result = qword_324F88;
  if (!qword_324F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324F88);
  }

  return result;
}

unint64_t sub_1DECA4()
{
  result = qword_324F90;
  if (!qword_324F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324F90);
  }

  return result;
}

unint64_t sub_1DECFC()
{
  result = qword_324F98;
  if (!qword_324F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324F98);
  }

  return result;
}

uint64_t sub_1DED50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x685365726F6E6769 && a2 == 0xEB00000000666C65;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C616E7265747865 && a2 == 0xE900000000000073)
  {

    return 2;
  }

  else
  {
    v6 = sub_264F10();

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

unint64_t sub_1DEE74(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_3016A0;
  v6._object = a2;
  v4 = sub_264D40(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1DEEC0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_301708;
  v6._object = a2;
  v4 = sub_264D40(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1DEF0C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_301770;
  v6._object = a2;
  v4 = sub_264D40(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1DEF58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void __swiftcall GridItemMetadataTitleWithSubtitle.init(title:subtitle:titleLines:subtitleLines:)(BooksUI::GridItemMetadataTitleWithSubtitle *__return_ptr retstr, Swift::String title, Swift::String_optional subtitle, Swift::Int titleLines, Swift::Int subtitleLines)
{
  retstr->title = title;
  retstr->subtitle = subtitle;
  retstr->titleLines = titleLines;
  retstr->subtitleLines = subtitleLines;
}

uint64_t sub_1DEFD4()
{
  v1 = 0x656C746974;
  v2 = 0x6E694C656C746974;
  if (*v0 != 2)
  {
    v2 = 0x656C746974627573;
  }

  if (*v0)
  {
    v1 = 0x656C746974627573;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DF04C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DF740(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DF074(uint64_t a1)
{
  v2 = sub_1DF370();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1DF0B0(uint64_t a1)
{
  v2 = sub_1DF370();

  return CodingKey.debugDescription.getter(a1, v2);
}

void GridItemMetadataTitleWithSubtitle.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2EF0(&qword_324FB0, &qword_2871D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_2E18(a1, a1[3]);
  sub_1DF370();
  sub_265120();
  if (v2)
  {
    sub_3080(a1);
  }

  else
  {
    v24 = 0;
    v9 = sub_264DC0();
    v11 = v10;
    v20 = v9;
    v23 = 1;
    v12 = sub_264D70();
    v14 = v13;
    v19 = v12;
    v22 = 2;
    v18 = sub_264DE0();
    v21 = 3;
    v15 = sub_264DE0();
    (*(v6 + 8))(v8, v5);
    v16 = v19;
    *a2 = v20;
    a2[1] = v11;
    a2[2] = v16;
    a2[3] = v14;
    a2[4] = v18;
    a2[5] = v15;

    sub_3080(a1);
  }
}

unint64_t sub_1DF370()
{
  result = qword_324FB8;
  if (!qword_324FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324FB8);
  }

  return result;
}

uint64_t GridItemMetadataTitleWithSubtitle.content(contextActionMenuView:)@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = sub_2EF0(&qword_324FC0, &qword_2871D8);
  v6 = a1 + v5[11];
  *v6 = v4;
  *(v6 + 1) = v3;
  v7 = *(v1 + 2);
  *(v6 + 1) = *(v1 + 1);
  *(v6 + 2) = v7;
  *a1 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v8 = v5[9];
  *(a1 + v8) = swift_getKeyPath();
  sub_2EF0(&qword_316C08, &unk_26AEF0);
  swift_storeEnumTagMultiPayload();
  v9 = v5[10];
  *(a1 + v9) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
}

unint64_t sub_1DF500(uint64_t a1)
{
  result = sub_1DF528();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DF528()
{
  result = qword_324FC8;
  if (!qword_324FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324FC8);
  }

  return result;
}

unint64_t sub_1DF5C4()
{
  result = qword_325018;
  if (!qword_325018)
  {
    sub_2F9C(&qword_324FC0, &qword_2871D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325018);
  }

  return result;
}

unint64_t sub_1DF63C()
{
  result = qword_325020;
  if (!qword_325020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325020);
  }

  return result;
}

unint64_t sub_1DF694()
{
  result = qword_325028;
  if (!qword_325028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325028);
  }

  return result;
}

unint64_t sub_1DF6EC()
{
  result = qword_325030;
  if (!qword_325030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325030);
  }

  return result;
}

uint64_t sub_1DF740(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E694C656C746974 && a2 == 0xEA00000000007365 || (sub_264F10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xED000073656E694CLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_264F10();

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

void SeriesCardCoverStackLayout.init(covers:containingWidth:)(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = a1;
  v6 = *(a1 + 16);
  if (v6 >= 4)
  {
    sub_C8914(a1, a1 + 32, 0, 7uLL);
    v8 = v7;

    v6 = *(v8 + 16);
    v4 = v8;
  }

  if (!v6)
  {

    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v9 = v4[7];
  v123 = v4[6];
  v124 = v9;
  v10 = v4[9];
  v125 = v4[8];
  v126 = v10;
  v11 = v4[3];
  v119 = v4[2];
  v120 = v11;
  v12 = v4[5];
  v121 = v4[4];
  v122 = v12;
  memmove(__dst, v4 + 2, 0x80uLL);
  v13 = sub_2F8B8(__dst);
  v14 = sub_2F950(__dst);
  if (v13)
  {
    v15 = 1.0;
    if (v13 != 1)
    {
      v15 = 0.641025641;
    }
  }

  else
  {
    v15 = *(v14 + 16);
    sub_5757C(&v119, &v102);
  }

  v16 = a3 * 0.73 / v15;

  v17 = 0;
  v18 = _swiftEmptyArrayStorage;
  do
  {
    v19 = (v17 << 7) | 0x20;
    v20 = v17;
    while (1)
    {
      v21 = *(v4 + 2);
      if (v20 >= v21)
      {
        __break(1u);
LABEL_52:
        __break(1u);
        return;
      }

      v22 = *(v4 + v19);
      v23 = *(v4 + v19 + 16);
      v24 = *(v4 + v19 + 48);
      v96 = *(v4 + v19 + 32);
      v97 = v24;
      v94 = v22;
      v95 = v23;
      v25 = *(v4 + v19 + 64);
      v26 = *(v4 + v19 + 80);
      v27 = *(v4 + v19 + 112);
      v100 = *(v4 + v19 + 96);
      v101 = v27;
      v98 = v25;
      v99 = v26;
      v29 = *(v4 + v19 + 32);
      v28 = *(v4 + v19 + 48);
      v31 = *(v4 + v19);
      v30 = *(v4 + v19 + 16);
      v33 = *(v4 + v19 + 96);
      v32 = *(v4 + v19 + 112);
      v35 = *(v4 + v19 + 64);
      v34 = *(v4 + v19 + 80);
      v102 = v20;
      v107 = v35;
      v108 = v34;
      v109 = v33;
      v110 = v32;
      v103 = v31;
      v104 = v30;
      v105 = v29;
      v106 = v28;
      v113 = v121;
      v114 = v122;
      v111 = v119;
      v112 = v120;
      v117 = v125;
      v118 = v126;
      v115 = v123;
      v116 = v124;
      v36 = sub_2F8B8(&v111);
      v37 = sub_2F950(&v111);
      if (!v36)
      {
        v38 = *(v37 + 16);
        if (v20 <= 2)
        {
          break;
        }

        goto LABEL_18;
      }

      v38 = 1.0;
      if (v36 != 1)
      {
        v38 = 0.641025641;
      }

      if (v20 <= 2)
      {
        break;
      }

LABEL_18:
      ++v20;
      sub_5757C(&v94, v85);
      sub_1DFE84(&v102);
      v19 += 128;
      if (v6 == v20)
      {
        goto LABEL_29;
      }
    }

    v90 = v107;
    v91 = v108;
    v92 = v109;
    v93 = v110;
    v86 = v103;
    v87 = v104;
    v88 = v105;
    v89 = v106;
    v85[0] = v103;
    v85[1] = v104;
    v85[2] = v105;
    v85[3] = v106;
    v85[4] = v107;
    v85[5] = v108;
    v85[6] = v109;
    v85[7] = v110;
    v39 = sub_2F8B8(v85);
    v40 = sub_2F950(v85);
    if (v39)
    {
      v41 = 1.0;
      if (v39 != 1)
      {
        v41 = 0.641025641;
      }
    }

    else
    {
      v41 = *(v40 + 16);
    }

    v81 = v90;
    v82 = v91;
    v83 = v92;
    v84 = v93;
    v77 = v86;
    v78 = v87;
    v79 = v88;
    v80 = v89;
    sub_5757C(&v94, v76);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_E9768(0, *(v18 + 2) + 1, 1, v18);
    }

    v43 = *(v18 + 2);
    v42 = *(v18 + 3);
    if (v43 >= v42 >> 1)
    {
      v18 = sub_E9768((v42 > 1), v43 + 1, 1, v18);
    }

    v17 = v20 + 1;
    *(v18 + 2) = v43 + 1;
    v44 = &v18[168 * v43];
    v44[32] = v20;
    v45 = *&v76[3];
    *(v44 + 33) = *v76;
    *(v44 + 9) = v45;
    *(v44 + 5) = v21;
    *(v44 + 6) = v16;
    *(v44 + 7) = v38;
    *(v44 + 8) = v41;
    v46 = v77;
    v47 = v78;
    v48 = v79;
    *(v44 + 120) = v80;
    *(v44 + 104) = v48;
    *(v44 + 88) = v47;
    *(v44 + 72) = v46;
    v49 = v81;
    v50 = v82;
    v51 = v83;
    *(v44 + 184) = v84;
    *(v44 + 168) = v51;
    *(v44 + 152) = v50;
    *(v44 + 136) = v49;
  }

  while (v6 - 1 != v20);
LABEL_29:
  sub_2F8C4(&v119);

  v52 = *(v4 + 2);
  if (v52 > 1)
  {
    memmove(&v102, v4 + 2, 0x80uLL);
    v53 = sub_2F8B8(&v102);
    v54 = sub_2F950(&v102);
    if (!v53)
    {
      if (v54[8])
      {
        v58 = v54[12];
        v59 = v54[13];
        v60 = 2;
        while (v52)
        {
          v61 = v4[v60];
          v62 = v4[v60 + 1];
          v63 = v4[v60 + 3];
          v96 = v4[v60 + 2];
          v97 = v63;
          v94 = v61;
          v95 = v62;
          v64 = v4[v60 + 4];
          v65 = v4[v60 + 5];
          v66 = v4[v60 + 7];
          v100 = v4[v60 + 6];
          v101 = v66;
          v98 = v64;
          v99 = v65;
          memmove(&v111, &v4[v60], 0x80uLL);
          v67 = sub_2F8B8(&v111);
          v68 = sub_2F950(&v111);
          if (v67)
          {
            sub_2F8C4(&v94);
            goto LABEL_31;
          }

          if (!v68[8])
          {
            goto LABEL_31;
          }

          if (!v59)
          {
            goto LABEL_31;
          }

          v69 = v68[13];
          if (!v69)
          {
            goto LABEL_31;
          }

          if ((v68[12] != v58 || v69 != v59) && (sub_264F10() & 1) == 0)
          {
            goto LABEL_31;
          }

          --v52;
          v60 += 8;
          if (!--v6)
          {
            v70 = v4[7];
            v98 = v4[6];
            v99 = v70;
            v71 = v4[9];
            v100 = v4[8];
            v101 = v71;
            v72 = v4[3];
            v94 = v4[2];
            v95 = v72;
            v73 = v4[5];
            v96 = v4[4];
            v97 = v73;
            sub_5757C(&v94, &v86);

            v115 = v98;
            v116 = v99;
            v117 = v100;
            v118 = v101;
            v111 = v94;
            v112 = v95;
            v113 = v96;
            v114 = v97;
            v74 = sub_2F8B8(&v111);
            v75 = sub_2F950(&v111);
            if (!v74 && v75[8] && (v57 = v75[13]) != 0)
            {
              v56 = v75[12];

              sub_2F8C4(&v94);
              v55 = 1;
            }

            else
            {
              sub_2F8C4(&v94);
              v56 = 0;
              v57 = 0xE000000000000000;
              v55 = 1;
            }

            goto LABEL_32;
          }
        }

        goto LABEL_52;
      }
    }
  }

LABEL_31:

  v55 = 0;
  v56 = 0;
  v57 = 0xE000000000000000;
LABEL_32:
  *a2 = a3;
  *(a2 + 8) = v16;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = v18;
  *(a2 + 40) = v55;
  *(a2 + 48) = v56;
  *(a2 + 56) = v57;
}

uint64_t sub_1DFE84(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31C400, &qword_287460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s7BooksUI26SeriesCardCoverStackLayoutV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a2 + 40);
  v10 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a1 + 40);
  v13 = *(a1 + 24);
  v12 = *(a1 + 32);
  v14 = sub_C80DC(*(a1 + 16), *(a2 + 16));
  result = 0;
  if (v14)
  {
    v15 = v13 == v10 && v12 == v9;
    if (v15 && ((v8 ^ v11) & 1) == 0)
    {
      if (v4 == v6 && v5 == v7)
      {
        return 1;
      }

      else
      {

        return sub_264F10();
      }
    }
  }

  return result;
}

unint64_t sub_1DFFE0()
{
  result = qword_325038;
  if (!qword_325038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325038);
  }

  return result;
}

unint64_t sub_1E0034(uint64_t a1)
{
  result = sub_1E005C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E005C()
{
  result = qword_325088;
  if (!qword_325088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325088);
  }

  return result;
}

uint64_t AssetMetadataRatingInfo.init(assetInfo:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2E18(a1, a1[3]);
  v4 = sub_260700();
  if (v4)
  {
    v5 = v4;
    [v4 averageRating];
    v7 = v6;

    v8 = v7 == 0.0;
    if (v7 == 0.0)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = v7 * 5.0;
    }
  }

  else
  {
    v9 = 0.0;
    v8 = 1;
  }

  sub_2E18(a1, a1[3]);
  v10 = sub_260700();
  if (v10 && ((v11 = v10, v12 = [v10 ratingCount], v11, !v12) ? (v13 = 1) : (v13 = v8), (v13 & 1) == 0))
  {
    *a2 = v9;
    *(a2 + 8) = v12;
    *(a2 + 16) = 0;

    return sub_3080(a1);
  }

  else
  {
    result = sub_3080(a1);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
  }

  return result;
}

BooksUI::AssetMetadataRatingInfo __swiftcall AssetMetadataRatingInfo.init(averageRating:ratingCount:)(Swift::Double averageRating, Swift::UInt ratingCount)
{
  *v2 = averageRating;
  *(v2 + 8) = ratingCount;
  result.averageRating = averageRating;
  result.ratingCount = ratingCount;
  return result;
}

uint64_t AssetMetadataRatingInfo.formattedAverageRating(with:)(void *a1)
{
  v2 = sub_263D20();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2E18(a1, a1[3]);
  isa = sub_264780().super.super.isa;
  (*(v3 + 104))(v5, enum case for LocalizerContext.standalone(_:), v2);
  v7 = sub_264220();

  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t sub_1E03E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E0428(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_1E04A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v89 = a1;
  v88 = sub_264010();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2EF0(&qword_325090, &qword_287648);
  __chkstk_darwin(v4 - 8);
  v85 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v84 = &v76 - v7;
  v100 = sub_263FA0();
  v98 = *(v100 - 8);
  __chkstk_darwin(v100);
  v81 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v97 = &v76 - v10;
  v96 = sub_263D20();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_262370();
  v93 = *(v101 - 8);
  __chkstk_darwin(v101);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2EF0(&qword_31AB88, &qword_287650);
  __chkstk_darwin(v14);
  v16 = &v76 - v15;
  v83 = sub_2EF0(&qword_325098, &unk_287658);
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v18 = &v76 - v17;
  v19 = v1[2];
  v99 = v1[3];
  v104 = v19;
  v105 = v99;
  v20 = sub_1E1018(&v104, v1 + 4);
  v91 = v21;
  v23 = v22;
  v92 = v24;
  v25 = &v16[*(v14 + 36)];
  v26 = *(sub_2EF0(&qword_317530, &qword_26FCC0) + 28);
  v27 = enum case for Image.Scale.small(_:);
  v28 = sub_2630F0();
  (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
  *v25 = swift_getKeyPath();
  v29 = v91;
  *v16 = v20;
  *(v16 + 1) = v29;
  v16[16] = v23 & 1;
  *(v16 + 3) = v92;
  sub_262340();
  v30 = sub_93DBC();
  v80 = v18;
  v79 = v14;
  v78 = v30;
  sub_262C70();
  (*(v93 + 8))(v13, v101);
  sub_8E80(v16, &qword_31AB88, &qword_287650);
  sub_2EF0(&qword_317240, &qword_269790);
  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_269100;
  v92 = v2[7];
  v93 = v2[8];
  v91 = sub_2E18(v2 + 4, v92);
  v90 = "e or color hex string";
  v77 = sub_2EF0(&qword_31ACF0, &unk_26FF60);
  inited = swift_initStackObject();
  v76 = xmmword_267D30;
  *(inited + 16) = xmmword_267D30;
  *(inited + 32) = 0x5265676172657661;
  v32 = inited + 32;
  *(inited + 40) = 0xED0000676E697461;
  sub_2E18(v2 + 4, v2[7]);
  isa = sub_264780().super.super.isa;
  v34 = v95;
  v35 = v94;
  v36 = v96;
  (*(v95 + 13))(v94, enum case for LocalizerContext.standalone(_:), v96);
  v37 = sub_264220();
  v39 = v38;

  (*(v34 + 1))(v35, v36);
  *(inited + 48) = v37;
  *(inited + 56) = v39;
  sub_F13C(inited);
  v40 = v98;
  swift_setDeallocating();
  sub_8E80(v32, &qword_31ACF8, &qword_273580);
  v41 = v97;
  sub_263F90();
  v42 = v41;
  v43 = sub_264250();
  v45 = v44;

  v46 = *(v40 + 8);
  v47 = v42;
  v46(v42, v100);
  v48 = v101;
  *(v101 + 32) = v43;
  *(v48 + 40) = v45;
  v49 = v2[7];
  v50 = v2[8];
  result = sub_2E18(v2 + 4, v49);
  if (v99 < 0)
  {
    __break(1u);
  }

  else
  {
    v94 = result;
    v52 = swift_initStackObject();
    v93 = v50;
    v53 = v52;
    *(v52 + 16) = v76;
    *(v52 + 32) = 0x746E756F63;
    v54 = v52 + 32;
    *(v52 + 40) = 0xE500000000000000;
    v96 = v40 + 8;
    v95 = v46;
    sub_2E18(v2 + 4, v2[7]);
    v92 = v49;
    v91 = "Rating: @@averageRating@@";
    *(v53 + 48) = sub_2641E0();
    *(v53 + 56) = v55;
    v56 = sub_F13C(v53);
    swift_setDeallocating();
    sub_8E80(v54, &qword_31ACF8, &qword_273580);
    v57 = v47;
    sub_263F90();
    v58 = v81;
    sub_263F90();
    v59 = *(v40 + 56);
    v60 = v84;
    v61 = v100;
    v59(v84, 1, 1, v100);
    v62 = v85;
    v59(v85, 1, 1, v61);
    v63 = v87;
    v64 = v86;
    v65 = v88;
    (*(v87 + 104))(v86, enum case for LocalizerLookupStrategy.default(_:), v88);
    v66 = sub_AF8D4(v99, 0xD000000000000021, v91 | 0x8000000000000000, v56, v57, v58, v60, v62, v64, v92, v93);
    v99 = v67;

    (*(v63 + 8))(v64, v65);
    sub_8E80(v62, &qword_325090, &qword_287648);
    sub_8E80(v60, &qword_325090, &qword_287648);
    v68 = v95;
    v95(v58, v61);
    v68(v57, v61);
    v69 = v101;
    v70 = v99;
    *(v101 + 48) = v66;
    *(v69 + 56) = v70;
    v104 = v69;
    sub_2EF0(&qword_3160B0, &qword_267D40);
    sub_8E38(&qword_3160B8, &qword_3160B0, &qword_267D40, &protocol conformance descriptor for [A]);
    v71 = sub_264340();
    v73 = v72;

    v104 = v71;
    v105 = v73;
    v102 = v79;
    v103 = v78;
    swift_getOpaqueTypeConformance2();
    sub_10A84();
    v74 = v83;
    v75 = v80;
    sub_262C00();

    return (*(v82 + 8))(v75, v74);
  }

  return result;
}

uint64_t sub_1E1018(uint64_t a1, void *a2)
{
  v3 = v2;
  v59 = a2;
  v56 = sub_261C90();
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v54 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_263FA0();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_263D20();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2630B0();
  v10 = sub_262900();
  v12 = v11;
  v14 = v13;
  v58 = sub_262820();
  v16 = v15;
  v18 = v17;
  v57 = v19;
  sub_39DBC(v10, v12, v14 & 1);

  sub_2E18((v3 + 32), *(v3 + 56));
  isa = sub_264780().super.super.isa;
  (*(v7 + 104))(v9, enum case for LocalizerContext.standalone(_:), v6);
  sub_264220();

  (*(v7 + 8))(v9, v6);
  v21 = v58;
  v66 = sub_262820();
  v65 = v22;
  v64 = v23;
  v63 = v24;

  sub_39DBC(v21, v16, v18 & 1);

  v25 = v59[3];
  v58 = v59[4];
  sub_2E18(v59, v25);
  sub_2EF0(&qword_31ACF0, &unk_26FF60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267D30;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x8000000000294980;
  sub_2E18((v3 + 32), *(v3 + 56));
  *(inited + 48) = sub_2641E0();
  *(inited + 56) = v27;
  sub_F13C(inited);
  swift_setDeallocating();
  sub_8E80(inited + 32, &qword_31ACF8, &qword_273580);
  v28 = v60;
  sub_263F90();
  sub_264250();
  v30 = v29;

  (*(v61 + 8))(v28, v62);
  v31 = *v3;
  v32 = *(v3 + 8) == 1;
  v59 = v30;
  if (v32)
  {
    if (v31)
    {
LABEL_6:
      v48 = sub_262820();
      v50 = v49;
      v52 = v51;
      _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
      v42 = sub_2627E0();

      v43 = v52 & 1;
      v44 = v48;
      v45 = v50;
      goto LABEL_7;
    }
  }

  else
  {

    sub_264900();
    v46 = sub_2624B0();
    sub_260D10();

    v47 = v54;
    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v31, 0);
    (*(v55 + 8))(v47, v56);
    if (v67 == 1)
    {
      goto LABEL_6;
    }
  }

  _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  v33 = sub_2627E0();
  v61 = v34;
  LODWORD(v62) = v35;

  LODWORD(v67) = sub_262130();
  v36 = sub_2627F0();
  v38 = v37;
  v40 = v39;
  v41 = v33;
  v42 = sub_262820();
  sub_39DBC(v36, v38, v40 & 1);

  v43 = v62 & 1;
  v44 = v41;
  v45 = v61;
LABEL_7:
  sub_39DBC(v44, v45, v43);

  sub_39DBC(v66, v65, v64 & 1);

  return v42;
}