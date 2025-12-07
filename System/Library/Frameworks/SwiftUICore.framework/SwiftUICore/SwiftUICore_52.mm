void closure #1 in ViewList.applyIDs(from:style:listAttribute:transform:to:)(void *a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *), uint64_t a6)
{
  v7 = *a2;
  v8 = *a4;
  v9 = *(a4 + 8);
  outlined init with copy of _ViewList_Node(a3, &v50);
  if (v55 > 1u)
  {
    if (v55 == 2)
    {
      v14 = 0;
      v15 = *(v50.n128_u64[0] + 16);
      v36 = v50.n128_u64[0];
      v35 = v50.n128_u64[0] + 32;
      if (v15)
      {
        goto LABEL_7;
      }

LABEL_6:
      v14 = v15;
      v48 = 0u;
      memset(v49, 0, 28);
      while (1)
      {
        *&v41[12] = *(v49 + 12);
        v40 = v48;
        *v41 = v49[0];
        if (!*(&v49[0] + 1))
        {
          break;
        }

        v16 = *&v41[24];
        outlined init with take of AnyTrackedValue(&v40, &v48);
        v17 = *(&v49[0] + 1);
        v18 = *&v49[1];
        __swift_project_boxed_opaque_existential_1(&v48, *(&v49[0] + 1));
        v47 = v7;
        v45 = v8;
        v46 = v9;
        v44 = 0;
        LOBYTE(v17) = ViewList.applyIDs(from:style:listAttribute:transform:to:)(a1, &v47, v16, &v45, a5, a6, v17, v18);
        __swift_destroy_boxed_opaque_existential_1(&v48);
        if ((v17 & 1) == 0)
        {
          break;
        }

        if (v14 == v15)
        {
          goto LABEL_6;
        }

LABEL_7:
        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v14 >= *(v36 + 16))
        {
          goto LABEL_44;
        }

        outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v35 + 48 * v14++, &v48, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
      }

      return;
    }

    v28 = 0x7FFFFFFFFFFFFFFFLL;
    if (BYTE8(v51))
    {
      v28 = 1;
    }

    if (*(v50.n128_u64[1] + 16) >= v28)
    {
      v29 = v28;
    }

    else
    {
      v29 = *(v50.n128_u64[1] + 16);
    }

    v37 = v50.n128_u64[1] + 32;

    v30 = 0;
    v31 = v29 == 0;
    if (v29)
    {
      goto LABEL_30;
    }

LABEL_29:
    v30 = v29;
    v48 = 0u;
    memset(v49, 0, 28);
    while (1)
    {
      *&v41[12] = *(v49 + 12);
      v40 = v48;
      *v41 = v49[0];
      if (!*(&v49[0] + 1))
      {

        swift_unknownObjectRelease();
        return;
      }

      v32 = *&v41[24];
      outlined init with take of AnyTrackedValue(&v40, &v48);
      v33 = *(&v49[0] + 1);
      v34 = *&v49[1];
      __swift_project_boxed_opaque_existential_1(&v48, *(&v49[0] + 1));
      v47 = v7;
      v45 = v8;
      v46 = v9;
      v44 = 0;
      if ((ViewList.applyIDs(from:style:listAttribute:transform:to:)(a1, &v47, v32, &v45, a5, a6, v33, v34) & 1) == 0)
      {

        swift_unknownObjectRelease();
        v13 = &v48;
        goto LABEL_40;
      }

      __swift_destroy_boxed_opaque_existential_1(&v48);
      v31 = v30 >= v29;
      if (v30 == v29)
      {
        goto LABEL_29;
      }

LABEL_30:
      if (v31)
      {
        break;
      }

      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v37 + 48 * v30++, &v48, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    return;
  }

  if (v55)
  {
    *&v41[16] = v52;
    v42 = v53;
    v43[0] = *v54;
    *(v43 + 13) = *&v54[13];
    v40 = v50;
    *v41 = v51;
    v19 = v50.n128_i64[1];
    if ((v7 & 1) == 0 || (v19 = v40.n128_u64[1] * (v7 >> 1), (v40.n128_i64[1] * (v7 >> 1)) >> 64 == v19 >> 63))
    {
      v20 = *a1 - v19;
      if (*a1 >= v19)
      {
        outlined destroy of _ViewList_Sublist(&v40);
        *a1 = v20;
      }

      else
      {
        *&v48 = v8;
        BYTE8(v48) = v9;
        _ViewList_TemporarySublistTransform.apply(sublist:)(&v40, v50);
        v21 = *&v41[4];
        v22 = *&v41[8];
        v23 = v40.n128_u64[1];
        v24 = v40.n128_u64[1] & ~(v40.n128_i64[1] >> 63);

        v25 = 0;
        do
        {
          if (v23 == v25)
          {
            break;
          }

          if (v25 == 0x80000000)
          {
            goto LABEL_45;
          }

          if (v24 == v25)
          {
            goto LABEL_46;
          }

          v26 = v25 + 1;
          *&v48 = __PAIR64__(v21, v25);
          *(&v48 + 1) = v22;

          v27 = a5(&v48);

          v25 = v26;
        }

        while ((v27 & 1) != 0);
        outlined destroy of _ViewList_Sublist(&v40);

        *a1 = 0;
      }

      return;
    }

    goto LABEL_47;
  }

  v10 = DWORD2(v52);
  v11 = BYTE12(v52);
  outlined init with take of AnyTrackedValue(&v50, &v40);
  v12 = *&v41[8];
  __swift_project_boxed_opaque_existential_1(&v40, *&v41[8]);
  v45 = v7;
  *&v48 = v8;
  BYTE8(v48) = v9;
  LOBYTE(v47) = v11;
  ViewList.applyIDs(from:style:listAttribute:transform:to:)(a1, &v45, v10 | (v11 << 32), &v48, a5, a6, v12, *(&v12 + 1));
  v13 = &v40;
LABEL_40:
  __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t closure #1 in closure #1 in _LazyLayout_Subviews.id(at:style:)(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = v3;
  a2[1] = v2;

  return 0;
}

void TextShadowModifier.isEqual(to:)(uint64_t a1)
{
  v2 = v1;
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + 16);
    v5 = *(v2 + 16);

    if (v4)
    {
      if (v5 != v4)
      {
        v6 = *(*v4 + 88);

        v6(v7);
      }
    }
  }
}

uint64_t getEnumTag for AccessibilityScrollableContext(uint64_t a1)
{
  result = *(a1 + 70);
  if (result >= 3)
  {
    return (*a1 + 3);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for AccessibilityScrollableContext(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 62) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 70) = a2;
  return result;
}

BOOL specialized static ContentTransition.NumericTextConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *(a1 + 6);
  v6 = *(a1 + 7);
  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  v9 = *(a1 + 10);
  v10 = *a2;
  v11 = *(a2 + 4);
  v12 = *(a2 + 5);
  if (v3)
  {
    if (v2 != v10)
    {
      v11 = 0;
    }

    if (v11 != 1)
    {
      return 0;
    }
  }

  else if ((v11 | LODWORD(v10) ^ LODWORD(v2)))
  {
    return 0;
  }

  if (v4 == 2)
  {
    result = 0;
    if (v12 != 2)
    {
      return result;
    }

    goto LABEL_14;
  }

  if (v12 == 2)
  {
    return 0;
  }

  result = 0;
  if (((v12 ^ v4) & 1) == 0)
  {
LABEL_14:
    if (v5 == *(a2 + 6) && v6 == *(a2 + 7) && v7 == *(a2 + 8) && v8 == *(a2 + 9))
    {
      return v9 == *(a2 + 10);
    }
  }

  return result;
}

double destroy for AccessibilityTextAttributes(uint64_t a1)
{
  if (*(a1 + 32))
  {
    outlined consume of Text.Storage(*(a1 + 8), *(a1 + 16), *(a1 + 24));
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Image.CGImageProvider(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return specialized static Image.CGImageProvider.== infix(_:_:)(v5, v7) & 1;
}

uint64_t specialized static Image.CGImageProvider.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || ((0x507030104060200uLL >> (8 * *(a1 + 16))) & 7) != ((0x507030104060200uLL >> (8 * *(a2 + 16))) & 7))
  {
    return 0;
  }

  v3 = *(a1 + 48);
  v4 = *(a2 + 48);
  if (!v3)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

LABEL_23:
    v21 = 0;
    return v21 & 1;
  }

  if (!v4)
  {
    goto LABEL_23;
  }

  v5 = *(a1 + 24);
  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  v8 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (v8)
    {
      v9 = a1;
      v10 = a2;
      v11 = *(*v5 + 96);
      outlined copy of Text.Storage(*(a2 + 24), *(a2 + 32), 1);
      v12 = outlined copy of Text?(v7, v6, v8, v4);
      v13 = v11(v7, v12);
      outlined consume of Text.Storage(v7, v6, 1);
      if ((v13 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    outlined copy of Text?(*(a2 + 24), *(a2 + 32), v8, v4);
    v14 = v7;
    v15 = v6;
    v16 = 0;
LABEL_22:
    outlined consume of Text.Storage(v14, v15, v16);

    goto LABEL_23;
  }

  if (v8)
  {
    outlined copy of Text?(*(a2 + 24), *(a2 + 32), v8, v4);
    v14 = v7;
    v15 = v6;
    v16 = 1;
    goto LABEL_22;
  }

  v10 = a2;
  v9 = a1;
  v17 = *(a1 + 32);
  if (__PAIR128__(v17, v5) == __PAIR128__(v6, v7))
  {
    outlined copy of Text.Storage(*(a1 + 24), v17, 0);
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of Text.Storage(v7, v6, 0);

    if ((v18 & 1) == 0)
    {
LABEL_21:
      v16 = v8 & 1;
      v14 = v7;
      v15 = v6;
      goto LABEL_22;
    }
  }

LABEL_19:
  _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(v3, v4);
  v20 = v19;
  outlined consume of Text.Storage(v7, v6, v8 & 1);

  a2 = v10;
  a1 = v9;
  if ((v20 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  v21 = *(a1 + 56) ^ *(a2 + 56) ^ 1;
  return v21 & 1;
}

uint64_t AccessibilityTextModifier.isEqual(to:)(uint64_t a1)
{
  v2 = v1;
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + 48);
    v5 = *(v3 + 16) | (*(v3 + 18) << 16);
    v6 = *(v3 + 24);
    v7 = *(v3 + 32);
    v8 = *(v3 + 40);
    outlined copy of Text?(v6, v7, v8, v4);
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v4 = 1;
  }

  v9 = *(v2 + 16);
  v10 = *(v2 + 17);
  v11 = *(v2 + 18);
  v13 = *(v2 + 24);
  v12 = *(v2 + 32);
  v14 = *(v2 + 40);
  v15 = *(v2 + 48);
  if (v4 == 1)
  {
    if (v15 == 1)
    {
      outlined copy of Text?(v13, v12, v14, 1);
      v16 = v5;
      v17 = v6;
      v18 = v7;
      v19 = v8;
      v20 = 1;
LABEL_12:
      outlined consume of AccessibilityTextAttributes?(v16, v17, v18, v19, v20);
      return v15 & 1;
    }

    v22 = v10;
    v23 = v9;
    outlined copy of Text?(v13, v12, v14, v15);
  }

  else
  {
    v29 = v5;
    v30 = v6;
    v31 = v7;
    v32 = v8;
    v33 = v4;
    if (v15 != 1)
    {
      v24[0] = v9;
      v24[1] = v10;
      v24[2] = v11;
      v25 = v13;
      v26 = v12;
      v27 = v14;
      v28 = v15;
      outlined copy of Text?(v13, v12, v14, v15);
      outlined copy of AccessibilityTextAttributes?(v5, v6, v7, v8, v4);
      LOBYTE(v15) = specialized static AccessibilityTextAttributes.== infix(_:_:)(&v29, v24);
      outlined consume of Text?(v25, v26, v27, v28);
      outlined consume of Text?(v30, v31, v32, v33);
      v16 = v5;
      v17 = v6;
      v18 = v7;
      v19 = v8;
      v20 = v4;
      goto LABEL_12;
    }

    v22 = v10;
    v23 = v9;
    outlined copy of Text?(v13, v12, v14, 1);
    outlined copy of AccessibilityTextAttributes?(v5, v6, v7, v8, v4);
    outlined consume of Text?(v6, v7, v8, v4);
  }

  outlined consume of AccessibilityTextAttributes?(v5, v6, v7, v8, v4);
  outlined consume of AccessibilityTextAttributes?(v23 | (v22 << 8) | (v11 << 16), v13, v12, v14, v15);
  LOBYTE(v15) = 0;
  return v15 & 1;
}

double outlined copy of AccessibilityTextAttributes?(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a5 != 1)
  {
    return outlined copy of Text?(a2, a3, a4, a5);
  }

  return result;
}

uint64_t specialized static AccessibilityTextAttributes.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v8 = *(a1 + 3);
  v7 = *(a1 + 4);
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v13 = *(a2 + 1);
  v12 = *(a2 + 2);
  v15 = *(a2 + 3);
  v14 = *(a2 + 4);
  if (v2 == 8)
  {
    if (v9 != 8)
    {
      goto LABEL_33;
    }
  }

  else if (v2 != v9)
  {
    goto LABEL_33;
  }

  if (v3 == 7)
  {
    if (v10 != 7)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v16 = 0;
    if (v10 == 7 || v3 != v10)
    {
      return v16 & 1;
    }
  }

  if (!v7)
  {
    if (!v14)
    {
      goto LABEL_27;
    }

LABEL_33:
    v16 = 0;
    return v16 & 1;
  }

  if (!v14)
  {
    goto LABEL_33;
  }

  if (v8)
  {
    if (v15)
    {
      v22 = *(*v5 + 96);
      outlined copy of Text?(v13, v12, v15, v14);
      outlined copy of Text?(v5, v6, v8, v7);
      outlined copy of Text.Storage(v13, v12, 1);
      LOBYTE(v22) = v22(v13);
      outlined consume of Text.Storage(v13, v12, 1);
      if ((v22 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_26;
    }

    outlined copy of Text?(*(a2 + 1), *(a2 + 2), v15, v14);
    v17 = v13;
    v18 = v12;
    v19 = 0;
    goto LABEL_21;
  }

  if (v15)
  {
    outlined copy of Text?(*(a2 + 1), *(a2 + 2), v15, v14);
    v17 = v13;
    v18 = v12;
    v19 = 1;
LABEL_21:
    outlined consume of Text.Storage(v17, v18, v19);

    goto LABEL_33;
  }

  if (v5 == v13 && v6 == v12)
  {
    outlined copy of Text?(*(a1 + 1), v6, v15, v14);
    outlined copy of Text?(v5, v6, v8, v7);
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of Text?(v13, v12, v15, v14);
    outlined copy of Text?(v5, v6, v8, v7);
    if ((v23 & 1) == 0)
    {
LABEL_32:
      outlined consume of Text.Storage(v13, v12, v15 & 1);

      outlined consume of Text?(v5, v6, v8, v7);
      goto LABEL_33;
    }
  }

LABEL_26:
  _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(v7, v14);
  v24 = v20;
  outlined consume of Text.Storage(v13, v12, v15 & 1);

  outlined consume of Text?(v5, v6, v8, v7);
  if ((v24 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_27:
  v16 = v4 == 2;
  if (v11 != 2)
  {
    v16 = 0;
  }

  if (v4 != 2 && v11 != 2)
  {
    v16 = v11 ^ v4 ^ 1;
  }

  return v16 & 1;
}

uint64_t getEnumTagSinglePayload for AccessibilityAttachment(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 296))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 280);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityAttachment(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *(result + 280) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 296) = 1;
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
      *(result + 280) = (a2 - 1);
      return result;
    }

    *(result + 296) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Binding.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  specialized Binding.wrappedValue.setter(a1);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

uint64_t LocationBox.set(_:transaction:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 168);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - v8;
  v10 = *(v5 + 184);
  swift_beginAccess();
  (*(v7 + 16))(v9, v2 + v10, v6);
  (*(*(v5 + 176) + 56))(a1, a2, v6);
  return (*(v7 + 8))(v9, v6);
}

BOOL protocol witness for Collection.isEmpty.getter in conformance _VariadicView_Children()
{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v1 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v2);
  v4 = ViewList.count.getter(v2, v3);
  static Update.end()();
  _MovableLockUnlock(v1);
  return v4 == 0;
}

uint64_t partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:)(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *v2;
  v4 = *(v2 + 1);
  v5 = v2[16];
  LOBYTE(v2) = v2[17];
  *result = v3;
  *(result + 8) = v4;
  *(result + 16) = v5;
  *(result + 17) = v2;
  return result;
}

{
  v2 = *(v1 + 16);
  v3 = *v2;
  v4 = *(v2 + 8);
  LOBYTE(v2) = *(v2 + 9);
  *result = v3;
  *(result + 8) = v4;
  *(result + 9) = v2;
  return result;
}

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  type metadata accessor for _DictionaryStorage<Int, LocalizedStringKey.FormatArgument>(0, a3, a4, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8]);
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v33 = v5;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
      }

      v24 = MEMORY[0x193AC1170](*(v9 + 40), v22);
      v25 = -1 << *(v9 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v6 & 1) == 0)
    {

      v5 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v7 + 32);
    v5 = v33;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

uint64_t AnyStaticFontModifier.modify(descriptor:in:)(uint64_t a1, _OWORD *a2)
{
  v3 = *v2;
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  v6[2] = a2[2];
  return (*(*(v3 + 144) + 16))(a1, v6);
}

void closure #1 in View.bold(_:)(unint64_t *a1, char a2, __n128 a3)
{
  if (a2)
  {
    _s7SwiftUI15AnyFontModifierC6staticyACxmAA06StaticdE0RzlFZAA0D0V04BoldE0V_Ttt0g5();
    MEMORY[0x193ABF170]();
    if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_3:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      return;
    }

LABEL_92:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_3;
  }

  v4 = *a1;
  v36 = *a1 >> 62;
  v5 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (v36)
  {
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v8 = v4 & 0xC000000000000001;
  v9 = &lazy cache variable for type metadata for AnyStaticFontModifier<Font.BoldModifier>;
  v10 = &type metadata for Font.BoldModifier;
  while (1)
  {
    if (v6 == v7)
    {
      if (v36)
      {
        v7 = __CocoaSet.count.getter();
      }

      else
      {
        v7 = *(v5 + 16);
      }

LABEL_81:
      if (v4 >> 62)
      {
        v35 = __CocoaSet.count.getter();
        if (v35 >= v7)
        {
          goto LABEL_83;
        }
      }

      else
      {
        v35 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v35 >= v7)
        {
LABEL_83:
          specialized Array.replaceSubrange<A>(_:with:)(v7, v35, a3);
          return;
        }
      }

      __break(1u);
      goto LABEL_96;
    }

    if (v8)
    {
      MEMORY[0x193AC03C0](v7, v4);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }
    }

    type metadata accessor for AnyStaticFontModifier<Font.ItalicModifier>(0, v9, v10, &protocol witness table for Font.BoldModifier);
    if (swift_dynamicCastClass())
    {
      break;
    }

    _s7SwiftUI7FontBoxCyAA0C0VAAE15DefaultProviderVGMaTm_0(0, &lazy cache variable for type metadata for AnyDynamicFontModifier<Font.WeightModifier>, lazy protocol witness table accessor for type Font.WeightModifier and conformance Font.WeightModifier, &type metadata for Font.WeightModifier, type metadata accessor for AnyDynamicFontModifier);
    v12 = swift_dynamicCastClass();
    if (v12 && *(v12 + 16) >= 0.3)
    {
      v13 = v6;
      v14 = v5;
      v15 = v10;
      if (one-time initialization token for v7 != -1)
      {
        swift_once();
      }

      v16 = v9;
      v17 = static Semantics.v7;
      if (one-time initialization token for forced != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (byte_1ED53C51C == 1)
      {
        v18 = dyld_program_sdk_at_least();

        v10 = v15;
        v5 = v14;
        v6 = v13;
        v8 = v4 & 0xC000000000000001;
        if ((v18 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v19 = static Semantics.forced;

        v20 = v19 >= v17;
        v9 = v16;
        v10 = v15;
        v5 = v14;
        v6 = v13;
        v8 = v4 & 0xC000000000000001;
        if (!v20)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
    }

    v11 = __OFADD__(v7++, 1);
    if (v11)
    {
      goto LABEL_85;
    }
  }

LABEL_29:
  v21 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    if (v36)
    {
      if (v21 == __CocoaSet.count.getter())
      {
        goto LABEL_81;
      }
    }

    else if (v21 == *(v5 + 16))
    {
      goto LABEL_81;
    }

    v22 = v7 + 5;
    while (2)
    {
      v23 = v22 - 4;
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x193AC03C0](v22 - 4, v4);
      }

      else
      {
        if ((v23 & 0x8000000000000000) != 0)
        {
          goto LABEL_86;
        }

        if (v23 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_87;
        }
      }

      if (swift_dynamicCastClass())
      {

        goto LABEL_69;
      }

      _s7SwiftUI7FontBoxCyAA0C0VAAE15DefaultProviderVGMaTm_0(0, &lazy cache variable for type metadata for AnyDynamicFontModifier<Font.WeightModifier>, lazy protocol witness table accessor for type Font.WeightModifier and conformance Font.WeightModifier, &type metadata for Font.WeightModifier, type metadata accessor for AnyDynamicFontModifier);
      v24 = swift_dynamicCastClass();
      if (!v24 || *(v24 + 16) < 0.3)
      {

        goto LABEL_44;
      }

      if (one-time initialization token for v7 != -1)
      {
        swift_once();
      }

      v27 = static Semantics.v7;
      if (one-time initialization token for forced != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (byte_1ED53C51C == 1)
      {
        v28 = dyld_program_sdk_at_least();

        if ((v28 & 1) == 0)
        {
          goto LABEL_69;
        }

LABEL_44:
        if (v23 != v7)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v25 = MEMORY[0x193AC03C0](v7, v4);
            v26 = MEMORY[0x193AC03C0](v22 - 4, v4);
          }

          else
          {
            if (v7 < 0)
            {
              goto LABEL_97;
            }

            v29 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v7 >= v29)
            {
              goto LABEL_98;
            }

            if (v23 >= v29)
            {
              goto LABEL_99;
            }

            v25 = *(v4 + 8 * v7 + 32);
            v26 = *(v4 + 8 * v22);
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
            v30 = (v4 >> 62) & 1;
          }

          else
          {
            LODWORD(v30) = 0;
          }

          v31 = v4 & 0xFFFFFFFFFFFFFF8;
          *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v26;

          if ((v4 & 0x8000000000000000) != 0 || v30)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
            v31 = v4 & 0xFFFFFFFFFFFFFF8;
            if ((v23 & 0x8000000000000000) != 0)
            {
              goto LABEL_90;
            }
          }

          else if ((v23 & 0x8000000000000000) != 0)
          {
            goto LABEL_90;
          }

          if (v23 >= *(v31 + 16))
          {
            goto LABEL_91;
          }

          *(v31 + 8 * v22) = v25;

          *a1 = v4;
        }

        v11 = __OFADD__(v7++, 1);
        if (v11)
        {
          goto LABEL_89;
        }
      }

      else
      {
        v34 = static Semantics.forced;

        if (v34 >= v27)
        {
          goto LABEL_44;
        }
      }

LABEL_69:
      v32 = v22 - 3;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_88;
      }

      if (v4 >> 62)
      {
        v33 = __CocoaSet.count.getter();
      }

      else
      {
        v33 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v22;
      if (v32 == v33)
      {
        goto LABEL_81;
      }

      continue;
    }
  }

LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
}

double ContentResponderHelper.update(data:size:position:transform:parent:)(uint64_t a1, int a2, uint64_t a3, int a4, int a5, float64x2_t *a6, int a7, uint64_t a8, __n128 a9, __n128 a10, uint64_t a11)
{
  v71 = a8;
  v74 = a7;
  LODWORD(v63) = a5;
  v58 = a10;
  v57 = a9;
  LODWORD(v67) = a4;
  *&v66 = a3;
  v15 = *(a11 + 16);
  v75 = type metadata accessor for Optional();
  v16 = *(v75 - 1);
  MEMORY[0x1EEE9AC00](v75);
  v59 = &v57 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v61 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  *&v65 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](v20);
  v23 = &v57 - v22;
  v24 = *(v15 - 8);
  (*(v24 + 16))(&v57 - v22, a1, v15, v21);
  v62 = TupleTypeMetadata2;
  v25 = *(TupleTypeMetadata2 + 48);
  v60 = v23;
  LODWORD(v68) = a2;
  v23[v25] = a2;
  v26 = *(a11 + 40);
  v64 = v11;
  v27 = &v11[v26];
  v29 = *&v11[v26];
  v28 = *&v11[v26 + 8];
  v72 = v29;
  v73 = v28;
  v30 = *(v27 + 1);
  v70 = *(v27 + 2);
  v69 = v30;
  if (v74 & 1) != 0 || (v63)
  {
    v31 = a6->f64[1];
    *v27 = a6->f64[0];
    *(v27 + 1) = v31;
    *&v32.f64[0] = v57.n128_u64[0];
    *&v32.f64[1] = v58.n128_u64[0];
    *(v27 + 2) = vsubq_f64(a6[2], vsubq_f64(v32, a6[1]));
    *(v27 + 1) = v32;
    v74 = 4;
  }

  else
  {
    v74 = 0;
  }

  v66 = *v66;

  v33 = v75;
  v34 = v64;
  if (v67)
  {
    *v64 = v66;
    v74 |= 2u;
  }

  if (LOBYTE(v68))
  {
    v35 = *(v16 + 8);
LABEL_10:
    v38 = *(a11 + 36);
    v39 = v64;
    v35(&v64[v38], v33);
    v40 = v65;
    (*(v61 + 16))(v65, v60, v62);
    (*(v24 + 32))(&v39[v38], v40, v15);
    v41 = v39;
    (*(v24 + 56))(&v39[v38], 0, 1, v15);
    v74 |= 1u;
    goto LABEL_11;
  }

  v36 = v59;
  (*(v16 + 16))(v59, &v34[*(a11 + 36)], v33);
  v37 = (*(v24 + 48))(v36, 1, v15);
  v35 = *(v16 + 8);
  v35(v36, v33);
  if (v37 == 1)
  {
    goto LABEL_10;
  }

  v41 = v64;
  if (!v74)
  {
    (*(v61 + 8))(v60, v62);

    return result;
  }

LABEL_11:
  v42 = *(v27 + 1);
  v68 = *v27;
  v67 = v42;
  v43 = *(a11 + 44);
  v44 = *(v41 + v43);
  v45 = *(v27 + 1);
  v66 = *(v27 + 2);
  v65 = v45;
  v63 = v43;
  *(v41 + v43) = MEMORY[0x1E69E7CC0];
  v46 = *(v44 + 2);
  if (v46)
  {
    v59 = v44;
    v47 = (v44 + 32);
    v75 = MEMORY[0x1E69E7CC0];
    v48 = v73;
    v49 = v68;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v47, v84);
      v83 = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v50 = v85, ObjectType = swift_getObjectType(), v82 = v74, v79[0] = v72, v79[1] = v48, v80 = v69, v81 = v70, *v76 = v49, v76[1] = v67, v77 = v65, v78 = v66, v52 = *(v50 + 16), , , , , v52(v71, &v82, v79, v76, &v83, ObjectType, v50), swift_unknownObjectRelease(), , , , , v83 == 1))
      {
        outlined destroy of weak GestureGraphDelegate?(v84);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v84, v79);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v75[2] + 1, 1, v75);
        }

        v54 = v75[2];
        v53 = v75[3];
        if (v54 >= v53 >> 1)
        {
          v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v75);
        }

        outlined destroy of weak GestureGraphDelegate?(v84);
        v55 = v75;
        v75[2] = v54 + 1;
        outlined init with take of ContentPathObservers.Observer(v79, &v55[2 * v54 + 4]);
        *&v64[v63] = v55;
      }

      v47 += 16;
      --v46;
    }

    while (v46);
  }

  else
  {
  }

  (*(v61 + 8))(v60, v62);
  return result;
}

uint64_t specialized LeafResponderFilter.responder.getter()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for LeafViewResponder<ColorView>, &type metadata for ColorView, &protocol witness table for ColorView, type metadata accessor for LeafViewResponder);
    v1 = swift_allocObject();
    *(v1 + 40) = 0u;
    *(v1 + 56) = 0u;
    *(v1 + 76) = 2;
    *(v1 + 72) = 0;
    *(v1 + 80) = 0u;
    *(v1 + 96) = 0u;
    *(v1 + 112) = 0u;
    *(v1 + 128) = MEMORY[0x1E69E7CC0];
    *(v1 + 24) = 0;
    *(v1 + 136) = 0u;
    *(v1 + 152) = 0u;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v2 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v3 = *(v2 + 208);

    swift_beginAccess();
    *(v1 + 24) = v3;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    *(v0 + 16) = v1;
  }

  return v1;
}

{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for LeafViewResponder<BackdropView>, &type metadata for BackdropView, &protocol witness table for BackdropView, type metadata accessor for LeafViewResponder);
    v1 = swift_allocObject();
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
    *(v1 + 56) = 1;
    *(v1 + 64) = 0u;
    *(v1 + 80) = 0u;
    *(v1 + 96) = 0u;
    *(v1 + 112) = MEMORY[0x1E69E7CC0];
    *(v1 + 24) = 0;
    *(v1 + 120) = 0u;
    *(v1 + 136) = 0u;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v2 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v3 = *(v2 + 208);

    swift_beginAccess();
    *(v1 + 24) = v3;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    *(v0 + 16) = v1;
  }

  return v1;
}

void specialized LeafResponderFilter.updateValue()()
{
  v61[6] = *MEMORY[0x1E69E9840];
  v0 = specialized LeafResponderFilter.responder.getter();
  Value = AGGraphGetValue();
  v3 = v2;
  v54 = *Value;
  v45 = *(Value + 8);
  v4 = *(Value + 16);
  v5 = *(Value + 20);
  v6 = *(Value + 21);
  v7 = AGGraphGetValue();
  v9 = v8;
  v10 = *v7;
  v11 = v7[1];
  type metadata accessor for CGPoint(0);
  v12 = AGGraphGetValue();
  v14 = v13;
  v47 = *v12;
  v48 = v12[1];
  v15 = AGGraphGetValue();
  v16 = *v15;
  v17 = *(v15 + 8);
  v18 = *(v15 + 16);
  v19 = *(v15 + 24);
  v21 = v20 | v14;
  v52 = *(v15 + 32);
  v43 = *(v15 + 40);

  v51 = specialized LeafResponderFilter.responder.getter();
  v22 = *(v0 + 96);
  v23 = *(v0 + 104);
  v24 = *(v0 + 112);
  v25 = *(v0 + 120);
  v49 = *(v0 + 80);
  v50 = *(v0 + 88);
  if (v21)
  {
    *(v0 + 80) = v16;
    *(v0 + 88) = v17;
    v26 = v48 - v19;
    *&v27 = v52;
    v28 = v52 - (v47 - v18);
    v29 = v43 - v26;
    *&v30 = v47;
    *(&v30 + 1) = v48;
    *(&v27 + 1) = v43;
    *(v0 + 96) = v30;
    *(v0 + 112) = v27;
    *(v0 + 112) = v28;
    *(v0 + 120) = v43 - v26;
    v53 = 4;
  }

  else
  {
    v53 = 0;
    v29 = *(v0 + 120);
    v28 = *(v0 + 112);
    v48 = *(v0 + 104);
    v47 = *(v0 + 96);
  }

  if (v9)
  {
    *(v0 + 40) = v10;
    *(v0 + 48) = v11;
    v53 |= 2u;
  }

  if ((v3 & 1) != 0 || *(v0 + 76) << 32 == 0x200000000)
  {
    v31 = 0x100000000;
    if (!v5)
    {
      v31 = 0;
    }

    *(v0 + 56) = v54;
    *(v0 + 64) = v45;
    *(v0 + 72) = v4;
    *(v0 + 76) = (v31 | (v6 << 40)) >> 32;
    LOBYTE(v53) = v53 | 1;
  }

  else if (!v53)
  {

    goto LABEL_25;
  }

  v46 = *(v0 + 80);
  v44 = *(v0 + 88);
  v32 = *(v0 + 128);
  *(v0 + 128) = MEMORY[0x1E69E7CC0];
  v33 = *(v32 + 16);
  if (v33)
  {
    v34 = v32 + 32;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v34, v58);
      v57 = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v35 = v59, ObjectType = swift_getObjectType(), v56 = v53, v61[0] = v49, v61[1] = v50, v61[2] = v22, v61[3] = v23, v61[4] = v24, v61[5] = v25, v60[0] = v46, v60[1] = v44, *&v60[2] = v47, *&v60[3] = v48, *&v60[4] = v28, *&v60[5] = v29, v36 = *(v35 + 16), , , , , v36(v51, &v56, v61, v60, &v57, ObjectType, v35), swift_unknownObjectRelease(), , , , , v57 == 1))
      {
        outlined destroy of ContentPathObservers.Observer(v58);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v58, v61);
        v37 = *(v0 + 128);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 128) = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37[2] + 1, 1, v37);
          *(v0 + 128) = v37;
        }

        v40 = v37[2];
        v39 = v37[3];
        if (v40 >= v39 >> 1)
        {
          *(v0 + 128) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v37);
        }

        outlined destroy of ContentPathObservers.Observer(v58);
        v41 = *(v0 + 128);
        *(v41 + 16) = v40 + 1;
        outlined init with take of ContentPathObservers.Observer(v61, v41 + 16 * v40 + 32);
        *(v0 + 128) = v41;
      }

      v34 += 16;
      --v33;
    }

    while (v33);
  }

  else
  {
  }

LABEL_25:

  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (!AGGraphGetOutputValue())
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_18DDAB4D0;
    *(v42 + 32) = specialized LeafResponderFilter.responder.getter();
    v61[0] = v42;
    AGGraphSetOutputValue();
  }
}

{
  v56[6] = *MEMORY[0x1E69E9840];
  v0 = specialized LeafResponderFilter.responder.getter();
  AGGraphGetValue();
  v2 = v1;
  Value = AGGraphGetValue();
  v5 = v4;
  v6 = *Value;
  v7 = Value[1];
  type metadata accessor for CGPoint(0);
  v8 = AGGraphGetValue();
  v10 = v9;
  v43 = *v8;
  v44 = v8[1];
  v11 = AGGraphGetValue();
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v11 + 16);
  v15 = *(v11 + 24);
  v17 = v16 | v10;
  v49 = *(v11 + 32);
  v47 = *(v11 + 40);

  v18 = specialized LeafResponderFilter.responder.getter();
  v19 = *(v0 + 72);
  v20 = *(v0 + 80);
  v21 = *(v0 + 88);
  v22 = *(v0 + 96);
  v23 = *(v0 + 104);
  v45 = *(v0 + 64);
  v46 = v18;
  if (v17)
  {
    *(v0 + 64) = v12;
    *(v0 + 72) = v13;
    v24 = v44 - v15;
    *&v25 = v49;
    v26 = v49 - (v43 - v14);
    v27 = v47 - v24;
    *&v28 = v43;
    *(&v28 + 1) = v44;
    *(&v25 + 1) = v47;
    *(v0 + 80) = v28;
    *(v0 + 96) = v25;
    *(v0 + 96) = v26;
    *(v0 + 104) = v47 - v24;
    v48 = 4;
  }

  else
  {
    v48 = 0;
    v27 = *(v0 + 104);
    v26 = *(v0 + 96);
    v44 = *(v0 + 88);
    v43 = *(v0 + 80);
  }

  if (v5)
  {
    *(v0 + 40) = v6;
    *(v0 + 48) = v7;
    v48 |= 2u;
  }

  if ((v2 & 1) != 0 || *(v0 + 56) == 1)
  {
    *(v0 + 56) = 0;
    LOBYTE(v48) = v48 | 1;
  }

  else if (!v48)
  {

    goto LABEL_23;
  }

  v41 = *(v0 + 64);
  v42 = v19;
  v40 = *(v0 + 72);
  v29 = *(v0 + 112);
  *(v0 + 112) = MEMORY[0x1E69E7CC0];
  v30 = *(v29 + 16);
  if (v30)
  {
    v31 = v29 + 32;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v31, v53);
      v52 = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v32 = v54, ObjectType = swift_getObjectType(), v51 = v48, v56[0] = v45, v56[1] = v42, v56[2] = v20, v56[3] = v21, v56[4] = v22, v56[5] = v23, v55[0] = v41, v55[1] = v40, *&v55[2] = v43, *&v55[3] = v44, *&v55[4] = v26, *&v55[5] = v27, v33 = *(v32 + 16), , , , , v33(v46, &v51, v56, v55, &v52, ObjectType, v32), swift_unknownObjectRelease(), , , , , v52 == 1))
      {
        outlined destroy of ContentPathObservers.Observer(v53);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v53, v56);
        v34 = *(v0 + 112);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 112) = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34[2] + 1, 1, v34);
          *(v0 + 112) = v34;
        }

        v37 = v34[2];
        v36 = v34[3];
        if (v37 >= v36 >> 1)
        {
          *(v0 + 112) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v34);
        }

        outlined destroy of ContentPathObservers.Observer(v53);
        v38 = *(v0 + 112);
        *(v38 + 16) = v37 + 1;
        outlined init with take of ContentPathObservers.Observer(v56, v38 + 16 * v37 + 32);
        *(v0 + 112) = v38;
      }

      v31 += 16;
      --v30;
    }

    while (v30);
  }

  else
  {
  }

LABEL_23:

  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (!AGGraphGetOutputValue())
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_18DDAB4D0;
    *(v39 + 32) = specialized LeafResponderFilter.responder.getter();
    v56[0] = v39;
    AGGraphSetOutputValue();
  }
}

Swift::Void __swiftcall StyledTextResponder.update()()
{
  v1 = v0;
  Value = AGGraphGetValue();
  v4 = v3;
  v5 = *Value;
  v6 = *(Value + 8);
  v60 = *(Value + 16);

  v7 = AGGraphGetValue();
  v9 = (v4 | v8) & 1;
  v10 = *v7;
  swift_retain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v11 = AGGraphGetValue();
  v13 = v12;
  v14 = *v11;
  v15 = v11[1];
  type metadata accessor for CGPoint(0);
  v16 = AGGraphGetValue();
  v18 = v17;
  v54 = *v16;
  v52 = v16[1];
  v19 = AGGraphGetValue();
  v21 = *v19;
  v20 = *(v19 + 8);
  v22 = *(v19 + 16);
  v23 = *(v19 + 24);
  v25 = v24 | v18;
  v58 = *(v19 + 32);
  v56 = *(v19 + 40);
  swift_beginAccess();
  v26 = v1[26];
  v27 = v1[27];
  v28 = v1[28];
  v29 = v1[29];
  v50 = *(v1 + 25);
  v51 = *(v1 + 24);
  if (v25)
  {
    *(v1 + 24) = v21;
    *(v1 + 25) = v20;
    *&v30 = v58;
    v31 = v58 - (v54 - v22);
    v32 = v56 - (v52 - v23);
    *&v33 = v54;
    *(&v33 + 1) = v52;
    *(&v30 + 1) = v56;
    *(v1 + 13) = v33;
    *(v1 + 14) = v30;
    v1[28] = v31;
    v1[29] = v32;

    v57 = 4;
  }

  else
  {

    v57 = 0;
    v32 = v29;
    v31 = v28;
    v52 = v27;
    v54 = v26;
  }

  if (v13)
  {
    *(v1 + 18) = v14;
    *(v1 + 19) = v15;
    v57 |= 2u;
  }

  v35 = v52;
  v34 = v54;
  v36 = *(v1 + 20);
  if ((v9 & 1) != 0 || !v36)
  {
    outlined consume of ShapeStyledResponderData<StyledTextContentView>?(v36, *(v1 + 21), *(v1 + 22), *(v1 + 23));
    *(v1 + 20) = v5;
    *(v1 + 21) = v6;
    LOBYTE(v57) = v57 | 1;
    *(v1 + 22) = v60;
    *(v1 + 23) = v10;

    v34 = v1[26];
    v35 = v1[27];
    v31 = v1[28];
    v32 = v1[29];
  }

  else if (!v57)
  {

    goto LABEL_25;
  }

  v48 = *(v1 + 25);
  v49 = *(v1 + 24);
  v37 = *(v1 + 30);
  v38 = MEMORY[0x1E69E7CC0];
  *(v1 + 30) = MEMORY[0x1E69E7CC0];
  v39 = *(v37 + 16);
  if (v39)
  {
    v53 = v35;
    v55 = v34;
    v40 = v37 + 32;
    v59 = v38;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v40, v66);
      v65 = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v41 = v1, v42 = v67, ObjectType = swift_getObjectType(), v64 = v57, v63[0] = v51, v63[1] = v50, *&v63[2] = v26, *&v63[3] = v27, *&v63[4] = v28, *&v63[5] = v29, v62[0] = v49, v62[1] = v48, *&v62[2] = v55, *&v62[3] = v53, *&v62[4] = v31, *&v62[5] = v32, v43 = *(v42 + 16), , , , , v44 = v42, v1 = v41, v43(v41, &v64, v63, v62, &v65, ObjectType, v44), swift_unknownObjectRelease(), , , , , v65 == 1))
      {
        outlined destroy of ContentPathObservers.Observer(v66);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v66, v63);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v41 + 30) = v59;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v59[2] + 1, 1, v59);
          *(v41 + 30) = v59;
        }

        v47 = v59[2];
        v46 = v59[3];
        if (v47 >= v46 >> 1)
        {
          v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v59);
          *(v41 + 30) = v59;
        }

        outlined destroy of ContentPathObservers.Observer(v66);
        v59[2] = v47 + 1;
        outlined init with take of ContentPathObservers.Observer(v63, &v59[2 * v47 + 4]);
        *(v41 + 30) = v59;
      }

      v40 += 16;
      --v39;
    }

    while (v39);
  }

  else
  {
  }

LABEL_25:

  swift_endAccess();
  swift_bridgeObjectRelease_n();
}

double outlined consume of ShapeStyledResponderData<StyledTextContentView>?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  return result;
}

uint64_t PlatformViewResponderBase.preferredFocusableView.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void MultiViewResponder.children.setter(unint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v2[5];
  if (v4 >> 62)
  {
    goto LABEL_72;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!(a1 >> 62))
  {
    goto LABEL_3;
  }

  while (2)
  {
    v6 = __CocoaSet.count.getter();
    if (!v6)
    {
      goto LABEL_74;
    }

LABEL_4:
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v40 = a1;
    v41 = v6;
    v37 = a1 + 32;
    v38 = a1 & 0xFFFFFFFFFFFFFF8;
    v43 = a1 & 0xC000000000000001;
    v44 = -v5;
LABEL_5:
    while (2)
    {
      v39 = v7;
      v10 = v8 - v9 + 0x7FFFFFFFFFFFFFFFLL;
      v42 = v6 + v8 - v9;
      v11 = 8 * v8 + 32;
      while (1)
      {
        if (v43)
        {
          v12 = MEMORY[0x193AC03C0](v9, v40);
          if (v8 == v10)
          {
            goto LABEL_63;
          }
        }

        else
        {
          if (v9 >= *(v38 + 16))
          {
            goto LABEL_65;
          }

          v12 = *(v37 + 8 * v9);

          if (v8 == v10)
          {
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
            goto LABEL_67;
          }
        }

        ++v9;
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (!Strong)
        {
          goto LABEL_28;
        }

        a1 = Strong;

        if (a1 != v2)
        {
          goto LABEL_28;
        }

        if (v5 < v8)
        {
          goto LABEL_64;
        }

        if (v8 == v5)
        {
          break;
        }

        v15 = 0;
        while (1)
        {
          v16 = v8 + v15;
          if (v8 + v15 >= v5)
          {
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

          v14 = swift_beginAccess();
          v17 = v2[5];
          if ((v17 & 0xC000000000000001) != 0)
          {
            break;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_59;
          }

          if (v16 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_60;
          }

          a1 = *(v17 + v11 + 8 * v15);
          v14 = swift_endAccess();
          if (a1 == v12)
          {
            goto LABEL_24;
          }

LABEL_21:
          ++v15;
          if (!(v44 + v8 + v15))
          {
            goto LABEL_28;
          }
        }

        a1 = MEMORY[0x193AC03C0](v8 + v15);
        swift_endAccess();
        v14 = swift_unknownObjectRelease();
        if (a1 != v12)
        {
          goto LABEL_21;
        }

LABEL_24:
        if (v15)
        {
          swift_beginAccess();
          a1 = (v2 + 5);
          specialized MutableCollection.swapAt(_:_:)(v8, v8 + v15, specialized _ArrayBuffer._consumeAndCreateNew(), v24);
          swift_endAccess();

          ++v8;
          v7 = 1;
          v6 = v41;
          if (v9 == v41)
          {
LABEL_52:

            if (v8 < v5)
            {
              goto LABEL_55;
            }

            goto LABEL_77;
          }

          goto LABEL_5;
        }

        ++v8;
        v11 += 8;
        if (v8 == v42)
        {

          v8 = v42;
          if (v42 < v5)
          {
LABEL_55:
            if (v5 < v8)
            {
              goto LABEL_97;
            }

            v25 = v8 < v5;
            if (v8 != v5)
            {
              goto LABEL_79;
            }

LABEL_76:
            swift_beginAccess();
            specialized Array.replaceSubrange<A>(_:with:)(v8, v5, v26);
            v14 = swift_endAccess();
LABEL_77:
            (*(*v2 + 336))(v14);
            return;
          }

LABEL_61:
          if ((v39 & 1) == 0)
          {
            return;
          }

          goto LABEL_77;
        }
      }

      v8 = v5;
LABEL_28:
      swift_weakLoadStrong();

      swift_weakAssign();
      swift_beginAccess();

      MEMORY[0x193ABF170](v18);
      v6 = v41;
      if (*((v2[5] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[5] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      a1 = v2[5];
      swift_endAccess();
      if (v8 >= v5)
      {
LABEL_46:

        ++v5;
        ++v8;
        --v44;
        v7 = 1;
        if (v9 == v6)
        {
          goto LABEL_52;
        }

        continue;
      }

      break;
    }

    swift_beginAccess();
    if ((a1 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x193AC03C0](v8, a1);
      v21 = MEMORY[0x193AC03C0](v5, a1);
      goto LABEL_36;
    }

    if (v8 < 0)
    {
      goto LABEL_66;
    }

    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8 >= v19)
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if (v5 >= v19)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v20 = *(a1 + 32 + 8 * v8);
    v21 = *(a1 + 32 + 8 * v5);

LABEL_36:
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v2[5] = a1;
    if (!isUniquelyReferenced_nonNull_bridgeObject || (a1 & 0x8000000000000000) != 0 || (a1 & 0x4000000000000000) != 0)
    {
      a1 = specialized _ArrayBuffer._consumeAndCreateNew()(a1);
      v2[5] = a1;
    }

    if (v8 < 0)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v23 = a1 & 0xFFFFFFFFFFFFFF8;
    if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    *((a1 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v21;

    v2[5] = a1;
    if ((a1 & 0x8000000000000000) != 0 || (a1 & 0x4000000000000000) != 0)
    {
      a1 = specialized _ArrayBuffer._consumeAndCreateNew()(a1);
      v2[5] = a1;
      v23 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v6 = v41;
    if (v5 < *(v23 + 16))
    {
      *(v23 + 8 * v5 + 32) = v20;

      v2[5] = a1;
      swift_endAccess();
      goto LABEL_46;
    }

LABEL_71:
    __break(1u);
LABEL_72:
    v5 = __CocoaSet.count.getter();
    if (a1 >> 62)
    {
      continue;
    }

    break;
  }

LABEL_3:
  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    goto LABEL_4;
  }

LABEL_74:

  if (v5 <= 0)
  {
    return;
  }

  v8 = 0;
  v25 = v5 > 0;
LABEL_79:
  if (!v25)
  {
    goto LABEL_98;
  }

  v27 = v8;
  while (2)
  {
    swift_beginAccess();
    v28 = v2[5];
    if ((v28 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x193AC03C0](v27);
LABEL_88:
      swift_endAccess();
      swift_beginAccess();
      v30 = swift_weakLoadStrong();
      if (v30)
      {
        v31 = v30;

        if (v31 == v2)
        {
          if (swift_weakLoadStrong())
          {

            swift_beginAccess();
            if (swift_unknownObjectWeakLoadStrong())
            {
              v32 = v29[3];
              ObjectType = swift_getObjectType();
              v34 = type metadata accessor for EventGraphHost();
              (*(v32 + 16))(v45, v34, v34, ObjectType, v32);
              swift_unknownObjectRelease();
              if (v45[0])
              {
                v35 = v45[1];
                v36 = swift_getObjectType();
                (*(v35 + 8))(v36, v35);
                swift_unknownObjectRelease();
                EventBindingManager.willRemoveResponder(_:)(v29);
                (*(*v29 + 120))();
              }
            }
          }

          swift_weakAssign();
        }
      }

      ++v27;

      if (v5 == v27)
      {
        goto LABEL_76;
      }

      continue;
    }

    break;
  }

  if ((v27 & 0x8000000000000000) == 0)
  {
    if (v27 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_96;
    }

    v29 = *(v28 + 8 * v27 + 32);

    goto LABEL_88;
  }

  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
}

Swift::Void __swiftcall DefaultLayoutViewResponder.childrenDidChange()()
{
  v1 = v0;
  v2 = *(v0 + 200);
  if (v2)
  {
    v3 = *(v0 + 208);

    v2(v4);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v2, v3);
  }

  swift_beginAccess();
  v5 = *(v1 + 80);
  *(v1 + 80) = MEMORY[0x1E69E7CC0];
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v7, v10);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = v11;
        ObjectType = swift_getObjectType();
        (*(v8 + 8))(v1, ObjectType, v8);
        swift_unknownObjectRelease();
      }

      outlined destroy of ContentPathObservers.Observer(v10);
      v7 += 16;
      --v6;
    }

    while (v6);
  }

  swift_endAccess();
}

void MultiViewResponder.visit(applying:)(void *(*a1)(uint64_t *__return_ptr, uint64_t)@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v8 = a1((&v16 + 1), v3);
  v9 = BYTE1(v16);
  if (!BYTE1(v16))
  {
    v10 = (*(*v4 + 208))(v8);
    v11 = v10;
    v12 = v10 & 0xFFFFFFFFFFFFFF8;
    if (v10 >> 62)
    {
LABEL_18:
      v13 = __CocoaSet.count.getter();
    }

    else
    {
      v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = 0;
    while (v13 != v14)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x193AC03C0](v14, v11);
        if (__OFADD__(v14, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v14 >= *(v12 + 16))
        {
          __break(1u);
          goto LABEL_18;
        }

        v15 = *(v11 + 8 * v14 + 32);

        if (__OFADD__(v14, 1))
        {
          goto LABEL_13;
        }
      }

      (*(*v15 + 104))(&v16, a1, a2);

      ++v14;
      if (v16 == 2)
      {
        v9 = 2;
        goto LABEL_15;
      }
    }

    v9 = 0;
LABEL_15:
  }

  *a3 = v9;
}

uint64_t ViewGraphRootValueUpdater.responderNode.getter(uint64_t a1, uint64_t a2)
{
  _sSay7SwiftUI13ViewResponderCGMaTm_9(0, &lazy cache variable for type metadata for ResponderNode?, type metadata accessor for ResponderNode, MEMORY[0x1E69E6720]);
  ViewGraphRootValueUpdater._updateViewGraph<A>(body:)(closure #1 in ViewGraphRootValueUpdater.responderNode.getter, a1, v4, a2, &v6);
  if (v6 == 1)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

void closure #1 in ViewGraphRootValueUpdater.responderNode.getter(uint64_t *a2@<X8>)
{
  _sSay7SwiftUI13ViewResponderCGMaTm_9(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
    goto LABEL_8;
  }

  v4 = *WeakValue;
  if (!(*WeakValue >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {

    v5 = MEMORY[0x193AC03C0](0, v4);

    goto LABEL_9;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v4 + 32);

LABEL_9:
    *a2 = v5;
    return;
  }

  __break(1u);
}

double HitTestBindingFilter.updateValue()()
{
  v1 = *(v0 + 8);
  _sSay7SwiftUI13ViewResponderCGMaTm_5(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);

  AGGraphGetValue();
  if (v2)
  {

    MultiViewResponder.children.setter(v3);
  }

  if (!AGGraphGetOutputValue())
  {
    type metadata accessor for _ShapeStyle_Pack.Style?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_18DDAB4D0;
    *(v5 + 32) = v1;

    AGGraphSetOutputValue();
  }

  return result;
}

void ShapeStyledResponderFilter.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 16);
  v62 = *(a1 + 24);
  v59 = type metadata accessor for ShapeStyledResponderData(255, v5, v62, a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v64 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v57 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v51 - v9;
  v11 = swift_getTupleTypeMetadata2();
  v63 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  v18 = *(v17 + 48);
  v19 = *(v4 + 12);
  v53 = *(v4 + 8);
  v55 = v19;
  v56 = *(v4 + 16);
  v52 = *(v4 + 24);
  Value = AGGraphGetValue();
  v22 = v21;
  v23 = *(v5 - 8);
  (*(v23 + 16))(v16, Value, v5);
  v16[v18] = v22 & 1;
  v24 = AGGraphGetValue();
  v26 = v22 | v25;
  v27 = *v24;
  v28 = *(v63 + 16);
  v58 = v16;
  v61 = v11;
  v28(v13, v16, v11);
  (*(v23 + 32))(v10, v13, v5);
  *&v10[*(type metadata accessor for ShapeStyledResponderData(0, v5, v62, v29) + 36)] = v27;
  v10[*(TupleTypeMetadata2 + 48)] = v26 & 1;
  v30 = *(v64 + 16);
  v31 = v57;
  v60 = v10;
  v30(v57, v10, TupleTypeMetadata2);
  v62 = TupleTypeMetadata2;
  v54 = *(v31 + *(TupleTypeMetadata2 + 48));
  v32 = v31;
  v33 = v52;

  v34 = AGGraphGetValue();
  LOBYTE(v31) = v35;
  v36 = v34[1];
  v65[0] = *v34;
  v65[1] = v36;
  type metadata accessor for CGPoint(0);
  v37 = AGGraphGetValue();
  LOBYTE(v27) = v38;
  v39 = *v37;
  v40 = v37[1];
  v41 = AGGraphGetValue();
  LOBYTE(v13) = v42;
  v43 = *(v41 + 8);
  v66[0].f64[0] = *v41;
  v66[0].f64[1] = v43;
  v44 = *(v41 + 32);
  v66[1] = *(v41 + 16);
  v66[2] = v44;
  v45 = v59;
  v47 = type metadata accessor for ContentResponderHelper(0, v59, &protocol witness table for ShapeStyledResponderData<A>, v46);

  v48.n128_u64[0] = v39;
  v49.n128_u64[0] = v40;
  ContentResponderHelper.update(data:size:position:transform:parent:)(v32, v54, v65, v31 & 1, v27 & 1, v66, v13 & 1, v33, v48, v49, v47);

  (*(*(v45 - 8) + 8))(v32, v45);
  type metadata accessor for [ViewResponder](0);
  if (AGGraphGetOutputValue())
  {
    (*(v64 + 8))(v60, v62);
    (*(v63 + 8))(v58, v61);
  }

  else
  {
    _s14AttributeGraph0A0Vy7SwiftUI11DisplayListVGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_18DDAB4D0;
    *(v50 + 32) = v33;
    *&v66[0].f64[0] = v50;

    AGGraphSetOutputValue();
    (*(v64 + 8))(v60, v62);
    (*(v63 + 8))(v58, v61);
  }
}

uint64_t initializeWithCopy for ShapeStyledResponderData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  *((*(v5 + 48) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 48) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for _OverlayStyleModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = v6 + 1;
  v9 = 8 * (v6 + 1);
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

double destroy for ShapeStyledResponderData(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();

  return result;
}

double GestureFilter.updateValue()(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = GestureFilter.responder.getter(v6);
  Value = AGGraphGetValue();
  (*(v3 + 16))(v5, Value, v2);
  v9 = (*(*(a1 + 24) + 72))(v2);
  (*(v3 + 8))(v5, v2);
  *(v7 + 220) = v9;

  GestureFilter.responder.getter(a1);
  type metadata accessor for [ViewResponder](0);
  AGGraphGetValue();
  if (v10)
  {

    MultiViewResponder.children.setter(v11);
  }

  if (!AGGraphGetOutputValue())
  {
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18DDAB4D0;
    *(v13 + 32) = GestureFilter.responder.getter(a1);
    v14[0] = v13;
    AGGraphSetOutputValue();
  }

  return result;
}

{
  GestureFilter.responder.getter(a1);
  type metadata accessor for [ViewResponder](0);
  AGGraphGetValue();
  if (v2)
  {

    MultiViewResponder.children.setter(v3);
  }

  if (!AGGraphGetOutputValue())
  {
    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_18DDAB4D0;
    *(v5 + 32) = GestureFilter.responder.getter(a1);
    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t GestureFilter.responder.getter(uint64_t a1)
{
  if (*(v1 + 104))
  {
    v2 = *(v1 + 104);
  }

  else
  {
    v2 = closure #1 in GestureFilter.responder.getter(v1, *(a1 + 16), *(a1 + 24));
    *(v1 + 104) = v2;
  }

  return v2;
}

{
  if (*(v1 + 104))
  {
    v2 = *(v1 + 104);
  }

  else
  {
    v2 = closure #1 in GestureFilter.responder.getter(v1, *(a1 + 16), *(a1 + 24));
    *(v1 + 104) = v2;
  }

  return v2;
}

uint64_t closure #1 in GestureFilter.responder.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 96);
  AGGraphClearUpdate();
  v7 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  closure #1 in closure #1 in GestureFilter.responder.getter(a1, a2, a3, &v10, v8);
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  return v10;
}

{
  v6 = *(a1 + 96);
  AGGraphClearUpdate();
  v7 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  closure #1 in closure #1 in GestureFilter.responder.getter(a1, a2, a3, &v10, v8);
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  return v10;
}

id closure #1 in closure #1 in GestureFilter.responder.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, uint64_t a5@<X3>)
{
  type metadata accessor for GestureResponder(0, a2, a3, a5);
  type metadata accessor for GestureFilter(0, a2, a3, v9);
  v10 = *(a1 + 4);
  v11 = *(a1 + 56);
  v20[2] = *(a1 + 40);
  v20[3] = v11;
  v20[4] = *(a1 + 72);
  v21 = *(a1 + 88);
  v12 = *(a1 + 24);
  v20[0] = *(a1 + 8);
  v20[1] = v12;
  v13 = *(a1 + 40);
  v14 = *(a1 + 72);
  v18[3] = *(a1 + 56);
  v18[4] = v14;
  v19 = *(a1 + 88);
  v15 = *(a1 + 24);
  v18[0] = *(a1 + 8);
  v18[1] = v15;
  v18[2] = v13;
  outlined init with copy of _ViewInputs(v20, v17);
  swift_allocObject();
  result = specialized GestureResponder.init(modifier:inputs:)(v10, v18);
  *a4 = result;
  return result;
}

{
  v5 = a3;
  type metadata accessor for GestureComponentResponder(0, a2, a3, a5);
  type metadata accessor for GestureFilter(0, a2, v5, v9);
  LODWORD(v5) = *(a1 + 4);
  v10 = *(a1 + 56);
  v20[2] = *(a1 + 40);
  v20[3] = v10;
  v20[4] = *(a1 + 72);
  v21 = *(a1 + 88);
  v11 = *(a1 + 24);
  v20[0] = *(a1 + 8);
  v20[1] = v11;
  v12 = *(a1 + 40);
  v13 = *(a1 + 72);
  v18[3] = *(a1 + 56);
  v18[4] = v13;
  v19 = *(a1 + 88);
  v14 = *(a1 + 24);
  v18[0] = *(a1 + 8);
  v18[1] = v14;
  v18[2] = v12;
  outlined init with copy of _ViewInputs(v20, v17);
  v15 = swift_allocObject();
  result = GestureComponentResponder.init(modifier:inputs:)(v5, v18);
  *a4 = v15;
  return result;
}

void GeometryEffectDisplayList.value.getter(uint64_t a1@<X0>, void *a2@<X8>)
{
  v38 = a2;
  v3 = *(a1 + 24);
  v35 = *(a1 + 16);
  v36 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  v33 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v29 - v5;
  v7 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  v12 = v2[6];
  v13 = *(v2 + 28);
  v39 = *v2;
  *&v49 = __PAIR64__(v7, v39);
  *(&v49 + 1) = __PAIR64__(v8, v9);
  v34 = v8;
  *&v50 = __PAIR64__(v11, v10);
  DWORD2(v50) = v12;
  v37 = v13;
  BYTE12(v50) = v13;
  GeometryEffectDisplayList.content.getter(v47);
  v14 = *&v47[0];
  v15 = MEMORY[0x1E69E7CC0];
  if (*&v47[0])
  {
    v16 = *&v47[0];
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (*(v16 + 16))
  {
    v30 = *(&v47[0] + 1);
    v31 = v16;
    type metadata accessor for CGPoint(0);
    v29 = *AGGraphGetValue();
    v46 = vsubq_f64(v29, *AGGraphGetValue());
    *&v49 = __PAIR64__(v7, v39);
    *(&v49 + 1) = __PAIR64__(v34, v9);
    *&v50 = __PAIR64__(v11, v10);
    DWORD2(v50) = v12;
    v17 = v37;
    BYTE12(v50) = v37;
    GeometryEffectDisplayList.effect.getter(v6);
    type metadata accessor for CGSize(0);
    Value = AGGraphGetValue();
    v19 = *Value;
    v20 = Value[1];
    LOBYTE(v42) = *AGGraphGetValue();
    (*(v36 + 24))(v47, v6, &v46, &v42, v19, v20);
    (*(v32 + 8))(v6, v33);
    v21 = *&v47[0];
    v22 = DWORD2(v47[0]);
    v23 = BYTE12(v47[0]);
    if (v14)
    {
      v24 = v30 & 0xFFFFFFFF0000FFFFLL | 0x40000000;
    }

    else
    {
      v24 = 0x40000000;
    }

    v25 = v46;
    outlined copy of DisplayList.Effect(*&v47[0], SBYTE8(v47[0]), SBYTE12(v47[0]));
    v26 = AGGraphGetValue();
    v42 = v25;
    v27 = *v26;
    ++static DisplayList.Version.lastValue;
    v43 = v27;
    *&v45[0] = v22 | (v23 << 32);
    *(&v45[0] + 1) = v31;
    *&v45[1] = v24;
    DWORD2(v45[1]) = v39;
    *&v44 = static DisplayList.Version.lastValue;
    *(&v44 + 1) = v21;
    LOBYTE(v49) = v17;
    DisplayList.Item.canonicalize(options:)(&v49);
    v47[2] = v44;
    v48[0] = v45[0];
    *(v48 + 12) = *(v45 + 12);
    v47[0] = v42;
    v47[1] = v43;
    v40[2] = v44;
    v41[0] = v45[0];
    *(v41 + 12) = *(v45 + 12);
    v40[0] = v42;
    v40[1] = v43;
    outlined init with copy of DisplayList.Item(v47, &v49);
    DisplayList.init(_:)(v40, v38);
    outlined consume of DisplayList.Effect(v21, v22, v23);
    v51 = v44;
    v52[0] = v45[0];
    *(v52 + 12) = *(v45 + 12);
    v49 = v42;
    v50 = v43;
    outlined destroy of DisplayList.Item(&v49);
  }

  else
  {

    v28 = v38;
    *v38 = v15;
    *(v28 + 4) = 0;
    *(v28 + 3) = 0;
  }
}

void GeometryEffectDisplayList.content.getter(uint64_t a1@<X8>)
{
  if (*(v1 + 24) == *MEMORY[0x1E698D3F8])
  {
    v3 = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    Value = AGGraphGetValue();
    v5 = *(Value + 12);
    *(a1 + 8) = *(Value + 8);
    *(a1 + 12) = v5;
  }

  *a1 = v3;
}

uint64_t GeometryEffectDisplayList.effect.getter@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Value = AGGraphGetValue();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, Value, AssociatedTypeWitness);
}

id specialized GestureResponder.init(modifier:inputs:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  *(v2 + 120) = *(a2 + 32);
  *(v2 + 136) = v3;
  *(v2 + 152) = *(a2 + 64);
  v4 = *(a2 + 16);
  *(v2 + 88) = *a2;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 216) = a1;
  *(v2 + 220) = 3;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 168) = *(a2 + 80);
  *(v2 + 104) = v4;
  result = AGSubgraphGetCurrent();
  if (result)
  {
    v6 = MEMORY[0x1E69E7CC0];
    *(v2 + 176) = result;
    *(v2 + 40) = v6;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = v6;
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v7 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v8 = *(v7 + 208);

    swift_beginAccess();
    *(v2 + 24) = v8;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 protocol witness for GeometryEffect.effectValue(size:) in conformance _ScaleEffect@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  _ScaleEffect.effectValue(size:)(v7, a2, a3, *v3, v3[1], v3[2], v3[3]);
  v5 = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = v5;
  *(a1 + 64) = v8;
  result = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t static DefaultGeometryEffectProvider.resolve(effect:origin:size:layoutDirection:)@<X0>(float64x2_t *a1@<X1>, unsigned __int8 *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>, double a6@<D0>)
{
  v9 = *a2;
  (*(a4 + 24))(&v23, a3, a4);
  if (v9 == 1)
  {
    v47 = 0xBFF0000000000000;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = xmmword_18DDAA020;
    v52 = a6;
    v53 = 0;
    v54 = 0x3FF0000000000000;
    ProjectionTransform.concatenating(_:)(&v23, v29);
    v42[0] = 0xBFF0000000000000;
    memset(&v42[1], 0, 24);
    v43 = xmmword_18DDAA020;
    v44 = a6;
    v45 = 0;
    v46 = 0x3FF0000000000000;
    v10 = &v30;
    ProjectionTransform.concatenating(_:)(v42, &v30);
    v11 = v32;
    v12 = v31;
    v13 = v33;
    v14 = v34;
    v15 = v35;
  }

  else
  {
    v15 = v28;
    v14 = v27;
    v13 = v26;
    v11 = v25;
    v10 = &v23;
    v12 = v24;
  }

  v21 = v11;
  v22 = v12;
  v16 = *v10;
  v37 = v12;
  v38 = v11;
  v36 = v16;
  v39 = v13;
  v20 = v14;
  v40 = v14;
  v41 = v15;
  if (ProjectionTransform.isInvertible.getter())
  {
    if (*(&v22 + 1) != 0.0 || (v13 == 0.0 ? (v17 = v15 == 1.0) : (v17 = 0), !v17))
    {
      result = swift_allocObject();
      *(result + 16) = v16;
      *(result + 40) = v21;
      *(result + 24) = v22;
      *(result + 56) = v13;
      *(result + 64) = v20;
      *(result + 80) = v15;
      v19 = 9;
      *(result + 88) = 1;
      goto LABEL_20;
    }

    if (v16 != 1.0 || *&v22 != 0.0 || *&v21 != 0.0 || *(&v21 + 1) != 1.0)
    {
      result = swift_allocObject();
      *(result + 16) = v16;
      *(result + 24) = v22;
      *(result + 32) = v21;
      *(result + 48) = v20;
      v19 = 9;
      *(result + 88) = 0;
      goto LABEL_20;
    }

    result = 0;
    *a1 = vaddq_f64(v20, *a1);
  }

  else
  {
    _StringGuts.grow(_:)(28);
    MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD78650);
    _print_unlocked<A, B>(_:_:)();
    specialized static Log.externalWarning(_:)(0, 0xE000000000000000);

    result = 0;
  }

  v19 = 20;
LABEL_20:
  *a5 = result;
  *(a5 + 8) = 0;
  *(a5 + 12) = v19;
  return result;
}

void ContentShapeKindResponderFilter.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for _ContentShapeKindModifier(0, *(a1 + 16), *(a1 + 24), a4);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - v7;
  v9 = *(v4 + 3);
  LODWORD(v7) = v4[4];
  v40 = *v4;
  v41 = v7;

  Value = AGGraphGetValue();
  v11 = *(v6 + 16);
  v38 = v12;
  v39 = v11;
  v11(v8, Value, v5);
  v13 = AGGraphGetValue();
  v37 = v14;
  v15 = v13[1];
  v42[0] = *v13;
  v42[1] = v15;
  type metadata accessor for CGPoint(0);
  v16 = AGGraphGetValue();
  v36 = v17;
  v19 = *v16;
  v18 = v16[1];
  v20 = AGGraphGetValue();
  v22 = v21;
  v23 = *(v20 + 8);
  v43[0].f64[0] = *v20;
  v43[0].f64[1] = v23;
  v24 = *(v20 + 32);
  v43[1] = *(v20 + 16);
  v43[2] = v24;
  swift_beginAccess();
  v26 = type metadata accessor for ContentResponderHelper(0, v5, &protocol witness table for _ContentShapeKindModifier<A>, v25);

  v27.n128_u64[0] = v19;
  v28.n128_u64[0] = v18;
  ContentResponderHelper.update(data:size:position:transform:parent:)(v8, v38 & 1, v42, v37 & 1, v36 & 1, v43, v22 & 1, v9, v27, v28, v26);
  swift_endAccess();

  v29 = *(v6 + 8);
  v29(v8, v5);
  v30 = AGGraphGetValue();
  v39(v8, v30, v5);
  v31 = *&v8[*(v5 + 40)];
  v29(v8, v5);
  *(v9 + 216) = v31;
  type metadata accessor for [ViewResponder](0);
  AGGraphGetValue();
  if (v32)
  {

    MultiViewResponder.children.setter(v33);
  }

  if (!AGGraphGetOutputValue())
  {
    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_18DDAB4D0;
    *(v34 + 32) = v9;
    *&v43[0].f64[0] = v34;

    AGGraphSetOutputValue();
  }
}

Swift::Void __swiftcall OpacityResponderFilter.updateValue()()
{
  v1 = *(v0 + 8);
  *(v1 + 216) = *AGGraphGetValue();
  if (*(v0 + 4) == *MEMORY[0x1E698D3F8])
  {

LABEL_6:

    goto LABEL_7;
  }

  _sSay7SwiftUI13ViewResponderCGMaTm_2(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);

  Value = AGGraphGetValue();
  v4 = v3;
  v5 = *Value;

  if (!v5)
  {
    goto LABEL_6;
  }

  if (v4)
  {
    MultiViewResponder.children.setter(v5);
    goto LABEL_6;
  }

LABEL_7:
  _sSay7SwiftUI13ViewResponderCGMaTm_2(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (!AGGraphGetOutputValue())
  {
    _ss23_ContiguousArrayStorageCy7SwiftUI17ContentTransitionV6EffectVGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18DDAB4D0;
    *(v6 + 32) = v1;

    AGGraphSetOutputValue();
  }
}

void specialized ShapeStyledResponderFilter.updateValue()()
{
  v174 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v3 = v2;
  v4 = Value[3];
  v6 = *Value;
  v5 = Value[1];
  v169[2] = Value[2];
  v169[3] = v4;
  v169[0] = v6;
  v169[1] = v5;
  v7 = Value[7];
  v9 = Value[4];
  v8 = Value[5];
  v169[6] = Value[6];
  v169[7] = v7;
  v169[4] = v9;
  v169[5] = v8;
  v11 = Value[9];
  v10 = Value[10];
  v12 = *(Value + 171);
  v169[8] = Value[8];
  *(v170 + 11) = v12;
  v169[9] = v11;
  v170[0] = v10;
  v13 = *(Value + 9);
  v166 = *(Value + 8);
  v167 = v13;
  v168[0] = Value[10];
  *(v168 + 11) = *(Value + 171);
  v14 = *(Value + 5);
  v162 = *(Value + 4);
  v163 = v14;
  v15 = *(Value + 7);
  v164 = *(Value + 6);
  v165 = v15;
  v16 = *(Value + 1);
  v158 = *Value;
  v159 = v16;
  v17 = *(Value + 3);
  v160 = *(Value + 2);
  v161 = v17;
  outlined init with copy of Image.Resolved(v169, &v133);
  v18 = *AGGraphGetValue();
  v171[2] = v160;
  v171[3] = v161;
  v171[0] = v158;
  v171[1] = v159;
  v171[6] = v164;
  v171[7] = v165;
  v171[4] = v162;
  v171[5] = v163;
  *&v172[11] = *(v168 + 11);
  *v172 = v168[0];
  v171[8] = v166;
  v171[9] = v167;
  v155 = v166;
  v156 = v167;
  v157[0] = v168[0];
  *(v157 + 11) = *(v168 + 11);
  v151 = v162;
  v152 = v163;
  v153 = v164;
  v154 = v165;
  v147 = v158;
  v148 = v159;
  v149 = v160;
  v150 = v161;
  v141 = v166;
  v142 = v167;
  v143 = v157[0];
  v144 = v157[1];
  v137 = v162;
  v138 = v163;
  v139 = v164;
  v140 = v165;
  v133 = v158;
  v134 = v159;
  v135 = v160;
  v67 = v3 & 1;
  v173 = v3 & 1;
  v20 = (v3 | v19) & 1;
  v21 = *(v0 + 24);
  v136 = v161;
  v145 = v18;
  v146 = v20;
  v22 = v18;

  outlined init with copy of (value: Image.Resolved, changed: Bool)(v171, &__dst);

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v133, &__dst, type metadata accessor for (value: ShapeStyledResponderData<Image.Resolved>, changed: Bool));
  v23 = AGGraphGetValue();
  v25 = v24;
  v26 = *v23;
  v27 = v23[1];
  type metadata accessor for CGPoint(0);
  v28 = AGGraphGetValue();
  v30 = v29;
  v31 = *v28;
  v32 = v28[1];
  v33 = AGGraphGetValue();
  v34 = *v33;
  v35 = *(v33 + 8);
  v36 = *(v33 + 16);
  v37 = *(v33 + 24);
  v39 = *(v33 + 32);
  v38 = *(v33 + 40);
  v116 = v143;
  v117 = v144;
  v118 = v145;
  v112 = v139;
  v113 = v140;
  v114 = v141;
  v115 = v142;
  v108 = v135;
  v109 = v136;
  v110 = v137;
  v111 = v138;
  v106 = v133;
  v107 = v134;
  v72 = *(v21 + 272);
  v73 = *(v21 + 288);
  v74 = *(v21 + 264);
  v77 = *(v21 + 256);
  if ((v40 | v30))
  {
    *(v21 + 256) = v34;
    *(v21 + 264) = v35;
    *(v21 + 272) = v36;
    *(v21 + 280) = v37;
    *(v21 + 288) = v39;
    *(v21 + 296) = v38;

    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v133, &__dst, type metadata accessor for (value: ShapeStyledResponderData<Image.Resolved>, changed: Bool));
    *(v21 + 288) = v39 - (v31 - v36);
    *(v21 + 296) = v38 - (v32 - v37);
    *(v21 + 272) = v31;
    *(v21 + 280) = v32;
    v75 = 4;
  }

  else
  {
    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v133, &__dst, type metadata accessor for (value: ShapeStyledResponderData<Image.Resolved>, changed: Bool));

    v75 = 0;
  }

  v41 = v3 & 1;
  if (v25)
  {
    *(v21 + 40) = v26;
    *(v21 + 48) = v27;
    v75 |= 2u;
  }

  if ((v20 & 1) != 0 || (memmove(&__dst, (v21 + 56), 0xC8uLL), _s7SwiftUI24ShapeStyledResponderDataVyAA5ImageVAAE8ResolvedVGSgWOg(&__dst) == 1))
  {
    v42 = *(v21 + 216);
    v91[9] = *(v21 + 200);
    v91[10] = v42;
    v91[11] = *(v21 + 232);
    v92 = *(v21 + 248);
    v43 = *(v21 + 152);
    v91[5] = *(v21 + 136);
    v91[6] = v43;
    v44 = *(v21 + 184);
    v91[7] = *(v21 + 168);
    v91[8] = v44;
    v45 = *(v21 + 72);
    v46 = *(v21 + 104);
    v91[2] = *(v21 + 88);
    v91[3] = v46;
    v91[4] = *(v21 + 120);
    v91[0] = *(v21 + 56);
    v91[1] = v45;
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v91, type metadata accessor for ShapeStyledResponderData<Image.Resolved>?);
    v129 = v116;
    v130 = v117;
    v125 = v112;
    v126 = v113;
    v127 = v114;
    v128 = v115;
    v121 = v108;
    v122 = v109;
    v123 = v110;
    v124 = v111;
    __dst = v106;
    v120 = v107;
    v103 = v116;
    v104 = v117;
    v99 = v112;
    v100 = v113;
    v101 = v114;
    v102 = v115;
    v95 = v108;
    v96 = v109;
    v97 = v110;
    v98 = v111;
    v131 = v118;
    v132 = v20;
    v105 = v118;
    v93 = v106;
    v94 = v107;
    _ViewInputs.base.modify();
    v47 = v101;
    *(v21 + 200) = v102;
    v48 = v104;
    *(v21 + 216) = v103;
    *(v21 + 232) = v48;
    v49 = v105;
    v50 = v97;
    *(v21 + 136) = v98;
    v51 = v100;
    *(v21 + 152) = v99;
    *(v21 + 168) = v51;
    *(v21 + 184) = v47;
    v52 = v93;
    *(v21 + 72) = v94;
    v53 = v96;
    *(v21 + 88) = v95;
    *(v21 + 104) = v53;
    *(v21 + 248) = v49;
    *(v21 + 120) = v50;
    LOBYTE(v75) = v75 | 1;
    *(v21 + 56) = v52;
    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&__dst, &v79, type metadata accessor for (value: ShapeStyledResponderData<Image.Resolved>, changed: Bool));
  }

  else if (!v75)
  {

    v129 = v116;
    v130 = v117;
    v131 = v118;
    v125 = v112;
    v126 = v113;
    v127 = v114;
    v128 = v115;
    v121 = v108;
    v122 = v109;
    v123 = v110;
    v124 = v111;
    __dst = v106;
    v120 = v107;
    v132 = v20;
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&__dst, type metadata accessor for (value: ShapeStyledResponderData<Image.Resolved>, changed: Bool));

    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v133, type metadata accessor for (value: ShapeStyledResponderData<Image.Resolved>, changed: Bool));
    goto LABEL_23;
  }

  v66 = v20;
  v71 = *(v21 + 256);
  v69 = *(v21 + 264);
  v70 = *(v21 + 288);
  v68 = *(v21 + 272);
  v54 = *(v21 + 304);
  *(v21 + 304) = MEMORY[0x1E69E7CC0];
  v55 = *(v54 + 16);
  if (v55)
  {
    v56 = v54 + 32;
    v57 = v77;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v56, &v93);
      LOBYTE(v91[0]) = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v58 = v93.n128_i64[1], ObjectType = swift_getObjectType(), v78 = v75, __dst.n128_u64[0] = v57, __dst.n128_u64[1] = v74, v120 = v72, v121 = v73, v79.n128_u64[0] = v71, v79.n128_u64[1] = v69, v80 = v68, v81 = v70, v59 = *(v58 + 16), , v57 = v77, , , , v59(v21, &v78, &__dst, &v79, v91, ObjectType, v58), swift_unknownObjectRelease(), , , , , LOBYTE(v91[0]) == 1))
      {
        outlined destroy of ContentPathObservers.Observer(&v93);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(&v93, &__dst);
        v60 = *(v21 + 304);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v21 + 304) = v60;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v60[2] + 1, 1, v60);
          *(v21 + 304) = v60;
        }

        v63 = v60[2];
        v62 = v60[3];
        if (v63 >= v62 >> 1)
        {
          *(v21 + 304) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1, v60);
        }

        outlined destroy of ContentPathObservers.Observer(&v93);
        v64 = *(v21 + 304);
        *(v64 + 16) = v63 + 1;
        outlined init with take of ContentPathObservers.Observer(&__dst, v64 + 16 * v63 + 32);
        *(v21 + 304) = v64;
      }

      v56 += 16;
      --v55;
    }

    while (v55);
  }

  else
  {
  }

  v129 = v116;
  v130 = v117;
  v131 = v118;
  v125 = v112;
  v126 = v113;
  v127 = v114;
  v128 = v115;
  v121 = v108;
  v122 = v109;
  v123 = v110;
  v124 = v111;
  __dst = v106;
  v120 = v107;
  v20 = v66;
  v132 = v66;
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&__dst, type metadata accessor for (value: ShapeStyledResponderData<Image.Resolved>, changed: Bool));

  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v133, type metadata accessor for (value: ShapeStyledResponderData<Image.Resolved>, changed: Bool));
  v41 = v67;
LABEL_23:
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (AGGraphGetOutputValue())
  {
    v127 = v155;
    v128 = v156;
    v129 = v157[0];
    v130 = v157[1];
    v123 = v151;
    v124 = v152;
    v125 = v153;
    v126 = v154;
    __dst = v147;
    v120 = v148;
    v121 = v149;
    v122 = v150;
    v131 = v22;
    v132 = v20;
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&__dst, type metadata accessor for (value: ShapeStyledResponderData<Image.Resolved>, changed: Bool));
    v87 = v166;
    v88 = v167;
    *v89 = v168[0];
    *&v89[11] = *(v168 + 11);
    v83 = v162;
    v84 = v163;
    v85 = v164;
    v86 = v165;
    v79 = v158;
    v80 = v159;
    v81 = v160;
    v82 = v161;
    v90 = v41;
    outlined destroy of (value: Image.Resolved, changed: Bool)(&v79);
  }

  else
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_18DDAB4D0;
    *(v65 + 32) = v21;
    v106.n128_u64[0] = v65;

    AGGraphSetOutputValue();
    v127 = v155;
    v128 = v156;
    v129 = v157[0];
    v130 = v157[1];
    v123 = v151;
    v124 = v152;
    v125 = v153;
    v126 = v154;
    __dst = v147;
    v120 = v148;
    v121 = v149;
    v122 = v150;
    v131 = v22;
    v132 = v20;
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&__dst, type metadata accessor for (value: ShapeStyledResponderData<Image.Resolved>, changed: Bool));
    v87 = v166;
    v88 = v167;
    *v89 = v168[0];
    *&v89[11] = *(v168 + 11);
    v83 = v162;
    v84 = v163;
    v85 = v164;
    v86 = v165;
    v79 = v158;
    v80 = v159;
    v81 = v160;
    v82 = v161;
    v90 = v41;
    outlined destroy of (value: Image.Resolved, changed: Bool)(&v79);
  }
}

{
  v101 = *MEMORY[0x1E69E9840];
  type metadata accessor for _ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>(0);
  Value = AGGraphGetValue();
  v3 = v2;
  v5 = *Value;
  v4 = *(Value + 8);
  v6 = *(Value + 16);
  v7 = *(Value + 24);
  v8 = *(Value + 32);
  v9 = *(Value + 33);
  v10 = *AGGraphGetValue();
  v12 = *(v0 + 24);
  v13 = (v3 | v11) & 1;
  v85 = v5;
  v86 = v4;
  v59 = v7;
  v60 = v6;
  v87 = v6;
  v88 = v7;
  v61 = v8;
  v62 = v9;
  v89 = v8;
  v90 = v9;
  v91 = v10;
  v92 = (v3 | v11) & 1;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v85, &v96, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>, changed: Bool));
  v14 = AGGraphGetValue();
  v77 = v15;
  v73 = *v14;
  v69 = v14[1];
  type metadata accessor for CGPoint(0);
  v16 = AGGraphGetValue();
  v18 = v17;
  v19 = *v16;
  v20 = v16[1];
  v21 = AGGraphGetValue();
  v22 = *(v21 + 8);
  v24 = v23 | v18;
  v26 = v85;
  v25 = v86;
  v27 = v87;
  v28 = v88;
  v29 = v89;
  v30 = v90;
  v31 = v91;
  v32 = *(v12 + 104);
  v71 = *(v12 + 120);
  v72 = *(v12 + 136);
  v75 = *(v12 + 112);
  if (v24)
  {
    v67 = v4;
    v63 = v86;
    v65 = v87;
    v33 = v88;
    v34 = v5;
    v35 = *(v21 + 16);
    v36 = *(v21 + 24);
    v57 = v85;
    v37 = *(v21 + 32);
    v38 = *(v21 + 40);
    *(v12 + 104) = *v21;
    *(v12 + 112) = v22;
    *(v12 + 120) = v35;
    *(v12 + 128) = v36;
    *(v12 + 136) = v37;
    *(v12 + 144) = v38;

    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v85, &v96, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>, changed: Bool));
    v39 = v19 - v35;
    v4 = v67;
    v40 = v20 - v36;
    v5 = v34;
    v28 = v33;
    v41 = v37 - v39;
    v25 = v63;
    v27 = v65;
    v42 = v38 - v40;
    v26 = v57;
    *(v12 + 136) = v41;
    *(v12 + 144) = v42;
    *(v12 + 120) = v19;
    *(v12 + 128) = v20;
    v76 = 4;
  }

  else
  {
    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v85, &v96, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>, changed: Bool));

    v76 = 0;
  }

  if (v77)
  {
    *(v12 + 40) = v73;
    *(v12 + 48) = v69;
    v76 |= 2u;
  }

  if (v13 || !*(v12 + 96))
  {

    v96 = v26;
    v97 = v25;
    *&v98 = v27;
    *(&v98 + 1) = v28;
    LOBYTE(v99) = v29;
    BYTE1(v99) = v30;
    *(&v99 + 1) = v31;
    v100 = v13;
    v44 = 256;
    if (!v30)
    {
      v44 = 0;
    }

    *(v12 + 56) = v26;
    *(v12 + 64) = v25;
    *(v12 + 72) = v27;
    *(v12 + 80) = v28;
    LOBYTE(v76) = v76 | 1;
    *(v12 + 88) = v44 | v29;
    *(v12 + 96) = v31;
    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v96, v93, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>, changed: Bool));
  }

  else if (!v76)
  {

    v96 = v26;
    v97 = v25;
    *&v98 = v27;
    *(&v98 + 1) = v28;
    LOBYTE(v99) = v29;
    BYTE1(v99) = v30;
    *(&v99 + 1) = v31;
    v100 = 0;
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v96, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>, changed: Bool));

    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v85, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>, changed: Bool));
    v43 = v62;
    goto LABEL_27;
  }

  v74 = v32;
  v56 = v13;
  v58 = v10;
  v70 = *(v12 + 104);
  v64 = *(v12 + 112);
  v66 = *(v12 + 120);
  v68 = *(v12 + 136);
  v45 = *(v12 + 152);
  *(v12 + 152) = MEMORY[0x1E69E7CC0];
  v46 = *(v45 + 16);
  if (v46)
  {
    v47 = v45 + 32;
    v79 = v12;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v47, &v82);
      v81 = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v48 = v84, ObjectType = swift_getObjectType(), v80 = v76, v96 = v74, v97 = v75, v98 = v71, v99 = v72, v93[0] = v70, v93[1] = v64, v94 = v66, v95 = v68, v49 = *(v48 + 16), , , , , v49(v79, &v80, &v96, v93, &v81, ObjectType, v48), swift_unknownObjectRelease(), , , v12 = v79, , , v81 == 1))
      {
        outlined destroy of ContentPathObservers.Observer(&v82);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(&v82, &v96);
        v50 = *(v79 + 152);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v79 + 152) = v50;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50[2] + 1, 1, v50);
          *(v79 + 152) = v50;
        }

        v53 = v50[2];
        v52 = v50[3];
        if (v53 >= v52 >> 1)
        {
          *(v79 + 152) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v50);
        }

        outlined destroy of ContentPathObservers.Observer(&v82);
        v54 = *(v79 + 152);
        *(v54 + 16) = v53 + 1;
        outlined init with take of ContentPathObservers.Observer(&v96, v54 + 16 * v53 + 32);
        *(v79 + 152) = v54;
      }

      v47 += 16;
      --v46;
    }

    while (v46);
  }

  else
  {
  }

  v96 = v26;
  v97 = v25;
  *&v98 = v27;
  *(&v98 + 1) = v28;
  LOBYTE(v99) = v29;
  BYTE1(v99) = v30;
  *(&v99 + 2) = v93[0];
  WORD3(v99) = WORD2(v93[0]);
  *(&v99 + 1) = v31;
  LOBYTE(v13) = v56;
  v100 = v56;
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v96, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>, changed: Bool));

  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v85, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>, changed: Bool));
  v8 = v61;
  v43 = v62;
  v10 = v58;
LABEL_27:
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (AGGraphGetOutputValue())
  {
    v96 = v5;
    v97 = v4;
    *&v98 = v60;
    *(&v98 + 1) = v59;
    LOBYTE(v99) = v8;
    BYTE1(v99) = v43;
    *(&v99 + 2) = v82;
    WORD3(v99) = v83;
    *(&v99 + 1) = v10;
    v100 = v13;
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v96, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>, changed: Bool));
  }

  else
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_18DDAB4D0;
    *(v55 + 32) = v12;
    v93[0] = v55;

    AGGraphSetOutputValue();
    v96 = v5;
    v97 = v4;
    *&v98 = v60;
    *(&v98 + 1) = v59;
    LOBYTE(v99) = v8;
    BYTE1(v99) = v43;
    *(&v99 + 2) = v82;
    WORD3(v99) = v83;
    *(&v99 + 1) = v10;
    v100 = v13;
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v96, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>, changed: Bool));
  }
}

{
  v85 = *MEMORY[0x1E69E9840];
  type metadata accessor for _ShapeView<Path, ForegroundStyle>(0);
  Value = AGGraphGetValue();
  v3 = v2;
  v5 = *Value;
  v4 = *(Value + 8);
  v6 = *(Value + 16);
  v7 = *(Value + 24);
  v8 = *(Value + 32);
  v9 = *(Value + 33);
  v10 = *(Value + 34);
  outlined copy of Path.Storage(*Value, v4, v6, v7, v8);
  v11 = *AGGraphGetValue();
  v13 = *(v0 + 24);
  *&v81 = v5;
  *(&v81 + 1) = v4;
  *&v82 = v6;
  *(&v82 + 1) = v7;
  LOBYTE(v83) = v8;
  v52 = v9;
  v53 = v10;
  BYTE1(v83) = v9;
  v14 = (v3 | v12) & 1;
  BYTE2(v83) = v10;
  v15 = v13;
  *(&v83 + 1) = v11;
  v84 = v14;
  v51 = v11;

  *&v54 = v5;
  *(&v54 + 1) = v4;
  v55 = v7;
  v56 = v8;
  outlined copy of Path.Storage(v5, v4, v6, v7, v8);

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v81, &v77, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Path, ForegroundStyle>>, changed: Bool));
  v16 = AGGraphGetValue();
  v18 = v17;
  v19 = *v16;
  v20 = v16[1];
  type metadata accessor for CGPoint(0);
  v21 = AGGraphGetValue();
  v23 = v22;
  v24 = *v21;
  v25 = v21[1];
  v26 = AGGraphGetValue();
  v27 = *v26;
  v28 = *(v26 + 8);
  v29 = *(v26 + 16);
  v30 = *(v26 + 24);
  v32 = *(v26 + 32);
  v31 = *(v26 + 40);
  v34 = v33 | v23;
  v74 = v81;
  v75 = v82;
  v76 = v83;
  v36 = *(v15 + 104);
  v35 = *(v15 + 112);
  v61 = *(v15 + 120);
  v62 = *(v15 + 136);
  if (v34)
  {

    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v81, &v77, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Path, ForegroundStyle>>, changed: Bool));
    *(v15 + 104) = v27;
    *(v15 + 112) = v28;
    *(v15 + 136) = v32 - (v24 - v29);
    *(v15 + 144) = v31 - (v25 - v30);
    *(v15 + 120) = v24;
    *(v15 + 128) = v25;
    v64 = 4;
  }

  else
  {
    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v81, &v77, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Path, ForegroundStyle>>, changed: Bool));

    v64 = 0;
  }

  v37 = v55;
  if (v18)
  {
    *(v15 + 40) = v19;
    *(v15 + 48) = v20;
    v64 |= 2u;
  }

  v38 = *(v15 + 96);
  v39 = v56;
  if ((v14 & 1) != 0 || !v38)
  {
    outlined consume of ShapeStyledResponderData<_ShapeView<Path, ForegroundStyle>>?(*(v15 + 56), *(v15 + 64), *(v15 + 72), *(v15 + 80), *(v15 + 88), v38);
    v77 = v74;
    v78 = v75;
    v79 = v76;
    v80 = v14;
    *(v15 + 56) = v74;
    v40 = v79;
    *(v15 + 72) = v78;
    *(v15 + 88) = v40;
    LOBYTE(v64) = v64 | 1;
    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v77, v71, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Path, ForegroundStyle>>, changed: Bool));
  }

  else if (!v64)
  {
    v77 = v74;
    v78 = v75;
    v79 = v76;
    v80 = v14;
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v77, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Path, ForegroundStyle>>, changed: Bool));

    goto LABEL_25;
  }

  *&v63 = v36;
  *(&v63 + 1) = v35;
  v59 = *(v15 + 112);
  v60 = *(v15 + 104);
  v57 = *(v15 + 120);
  v58 = *(v15 + 136);
  v41 = *(v15 + 152);
  v42 = MEMORY[0x1E69E7CC0];
  *(v15 + 152) = MEMORY[0x1E69E7CC0];
  v43 = *(v41 + 16);
  if (v43)
  {
    v44 = v41 + 32;
    v65 = v42;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v44, v69);
      v68 = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v45 = v70, ObjectType = swift_getObjectType(), v67 = v64, v77 = v63, v78 = v61, v79 = v62, v71[0] = v60, v71[1] = v59, v73 = v58, v72 = v57, v46 = *(v45 + 16), , , , , v46(v15, &v67, &v77, v71, &v68, ObjectType, v45), swift_unknownObjectRelease(), , , , , v68 == 1))
      {
        outlined destroy of ContentPathObservers.Observer(v69);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v69, &v77);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v15 + 152) = v65;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v65[2] + 1, 1, v65);
          *(v15 + 152) = v65;
        }

        v49 = v65[2];
        v48 = v65[3];
        if (v49 >= v48 >> 1)
        {
          v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v65);
          *(v15 + 152) = v65;
        }

        outlined destroy of ContentPathObservers.Observer(v69);
        v65[2] = v49 + 1;
        outlined init with take of ContentPathObservers.Observer(&v77, &v65[2 * v49 + 4]);
        *(v15 + 152) = v65;
      }

      v44 += 16;
      --v43;
    }

    while (v43);

    v39 = v56;
    v37 = v55;
  }

  else
  {
  }

  v77 = v74;
  v78 = v75;
  v79 = v76;
  v80 = v14;
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v77, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Path, ForegroundStyle>>, changed: Bool));
LABEL_25:

  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v81, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Path, ForegroundStyle>>, changed: Bool));
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (AGGraphGetOutputValue())
  {
    v77 = v54;
    *&v78 = v6;
    *(&v78 + 1) = v37;
    LOBYTE(v79) = v39;
    BYTE1(v79) = v52;
    BYTE2(v79) = v53;
    *(&v79 + 3) = v74;
    BYTE7(v79) = BYTE4(v74);
    *(&v79 + 1) = v51;
    v80 = v14;
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v77, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Path, ForegroundStyle>>, changed: Bool));
    outlined consume of Path.Storage(v54, *(&v54 + 1), v6, v37, v39);
  }

  else
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_18DDAB4D0;
    *(v50 + 32) = v15;
    v71[0] = v50;

    AGGraphSetOutputValue();
    v77 = v54;
    *&v78 = v6;
    *(&v78 + 1) = v37;
    LOBYTE(v79) = v39;
    BYTE1(v79) = v52;
    BYTE2(v79) = v53;
    *(&v79 + 3) = v74;
    BYTE7(v79) = BYTE4(v74);
    *(&v79 + 1) = v51;
    v80 = v14;
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v77, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Path, ForegroundStyle>>, changed: Bool));
    outlined consume of Path.Storage(v54, *(&v54 + 1), v6, v37, v39);
  }
}

{
  v183 = *MEMORY[0x1E69E9840];
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v3 = v2;
  v4 = *(Value + 208);
  v179 = *(Value + 192);
  v180 = v4;
  v181 = *(Value + 224);
  v5 = *(Value + 144);
  v175 = *(Value + 128);
  v176 = v5;
  v6 = *(Value + 176);
  v177 = *(Value + 160);
  v178 = v6;
  v7 = *(Value + 80);
  v171 = *(Value + 64);
  v172 = v7;
  v8 = *(Value + 112);
  v173 = *(Value + 96);
  v174 = v8;
  v9 = *(Value + 16);
  v167 = *Value;
  v168 = v9;
  v10 = *(Value + 48);
  v169 = *(Value + 32);
  v182 = *(Value + 240);
  v170 = v10;
  v11 = *AGGraphGetValue();
  v163 = v179;
  v164 = v180;
  v165 = v181;
  LOWORD(v166) = v182;
  v159 = v175;
  v160 = v176;
  v161 = v177;
  v162 = v178;
  v155 = v171;
  v156 = v172;
  v157 = v173;
  v158 = v174;
  v151 = v167;
  v152 = v168;
  v153 = v169;
  v154 = v170;
  v13 = (v3 | v12) & 1;
  v14 = *(v0 + 24);
  v146 = v179;
  v147 = v180;
  v148 = v181;
  *&v149 = v166;
  v142 = v175;
  v143 = v176;
  v144 = v177;
  v145 = v178;
  v138 = v171;
  v139 = v172;
  v140 = v173;
  v141 = v174;
  v134 = v167;
  v135 = v168;
  v136 = v169;
  v137 = v170;
  *(&v149 + 1) = v11;
  v150 = v13;

  outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v134, &__dst, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  v15 = AGGraphGetValue();
  v17 = v16;
  v18 = *v15;
  v19 = v15[1];
  type metadata accessor for CGPoint(0);
  v20 = AGGraphGetValue();
  v22 = v21;
  v23 = *v20;
  v24 = v20[1];
  v25 = AGGraphGetValue();
  v26 = *v25;
  v27 = *(v25 + 8);
  v28 = *(v25 + 16);
  v29 = *(v25 + 24);
  v31 = *(v25 + 32);
  v30 = *(v25 + 40);
  v113 = v146;
  v114 = v147;
  v115 = v148;
  v116 = v149;
  v109 = v142;
  v110 = v143;
  v111 = v144;
  v112 = v145;
  v105 = v138;
  v106 = v139;
  v107 = v140;
  v108 = v141;
  v101 = v134;
  v102 = v135;
  v103 = v136;
  v104 = v137;
  v33 = *(v14 + 312);
  v34 = *(v14 + 320);
  v73 = *(v14 + 328);
  v74 = *(v14 + 344);
  if ((v32 | v22))
  {

    outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v134, &__dst, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
    *(v14 + 312) = v26;
    *(v14 + 320) = v27;
    *(v14 + 344) = v31 - (v23 - v28);
    *(v14 + 352) = v30 - (v24 - v29);
    *(v14 + 328) = v23;
    *(v14 + 336) = v24;
    v75 = 4;
  }

  else
  {
    outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v134, &__dst, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));

    v75 = 0;
  }

  if (v17)
  {
    *(v14 + 40) = v18;
    *(v14 + 48) = v19;
    v75 |= 2u;
  }

  if ((v13 & 1) != 0 || (memmove(&__dst, (v14 + 56), 0x100uLL), _s7SwiftUI24ShapeStyledResponderDataVyAA08AnimatedC0VyAA024PartialContainerRelativeC0VGGSgWOg(&__dst) == 1))
  {
    v35 = *(v14 + 264);
    v36 = *(v14 + 280);
    v84[12] = *(v14 + 248);
    v84[13] = v35;
    v37 = *(v14 + 296);
    v84[14] = v36;
    v84[15] = v37;
    v38 = *(v14 + 200);
    v84[8] = *(v14 + 184);
    v84[9] = v38;
    v39 = *(v14 + 232);
    v84[10] = *(v14 + 216);
    v84[11] = v39;
    v40 = *(v14 + 136);
    v84[4] = *(v14 + 120);
    v84[5] = v40;
    v41 = *(v14 + 168);
    v84[6] = *(v14 + 152);
    v84[7] = v41;
    v42 = *(v14 + 72);
    v84[0] = *(v14 + 56);
    v84[1] = v42;
    v43 = *(v14 + 104);
    v84[2] = *(v14 + 88);
    v84[3] = v43;
    outlined destroy of ObservationTracking._AccessList?(v84, &lazy cache variable for type metadata for ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>?, type metadata accessor for ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v129 = v113;
    v130 = v114;
    v131 = v115;
    v132 = v116;
    v125 = v109;
    v126 = v110;
    v127 = v111;
    v128 = v112;
    v121 = v105;
    v122 = v106;
    v123 = v107;
    v124 = v108;
    __dst = v101;
    v118 = v102;
    v119 = v103;
    v120 = v104;
    v97 = v113;
    v98 = v114;
    v99 = v115;
    v100 = v116;
    v93 = v109;
    v94 = v110;
    v95 = v111;
    v96 = v112;
    v89 = v105;
    v90 = v106;
    v91 = v107;
    v92 = v108;
    v85 = v101;
    v86 = v102;
    v133 = v13;
    v87 = v103;
    v88 = v104;
    _ViewInputs.base.modify();
    v44 = v98;
    v46 = v99;
    v45 = v100;
    *(v14 + 248) = v97;
    *(v14 + 264) = v44;
    *(v14 + 280) = v46;
    *(v14 + 296) = v45;
    v47 = v94;
    v49 = v95;
    v48 = v96;
    *(v14 + 184) = v93;
    *(v14 + 200) = v47;
    *(v14 + 216) = v49;
    *(v14 + 232) = v48;
    v50 = v90;
    v52 = v91;
    v51 = v92;
    *(v14 + 120) = v89;
    *(v14 + 136) = v50;
    *(v14 + 152) = v52;
    *(v14 + 168) = v51;
    v53 = v86;
    v55 = v87;
    v54 = v88;
    *(v14 + 56) = v85;
    *(v14 + 72) = v53;
    *(v14 + 88) = v55;
    LOBYTE(v75) = v75 | 1;
    *(v14 + 104) = v54;
    outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&__dst, v81, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  }

  else if (!v75)
  {
    v129 = v113;
    v130 = v114;
    v131 = v115;
    v132 = v116;
    v125 = v109;
    v126 = v110;
    v127 = v111;
    v128 = v112;
    v121 = v105;
    v122 = v106;
    v123 = v107;
    v124 = v108;
    __dst = v101;
    v118 = v102;
    v119 = v103;
    v120 = v104;
    v133 = v13;
    outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&__dst, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));

    goto LABEL_23;
  }

  v67 = v13;
  v68 = v11;
  v71 = *(v14 + 320);
  v72 = *(v14 + 312);
  v69 = *(v14 + 328);
  v70 = *(v14 + 344);
  v56 = *(v14 + 360);
  v57 = MEMORY[0x1E69E7CC0];
  *(v14 + 360) = MEMORY[0x1E69E7CC0];
  v58 = *(v56 + 16);
  if (v58)
  {
    v59 = v56 + 32;
    v76 = v57;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v59, &v85);
      LOBYTE(v84[0]) = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v79 = v58, v60 = *(&v85 + 1), ObjectType = swift_getObjectType(), v80 = v75, *&__dst = v33, *(&__dst + 1) = v34, v118 = v73, v119 = v74, v81[0] = v72, v81[1] = v71, v83 = v70, v82 = v69, v77 = *(v60 + 16), v78 = ObjectType, , , , , v62 = v60, v58 = v79, v77(v14, &v80, &__dst, v81, v84, v78, v62), swift_unknownObjectRelease(), , , , , LOBYTE(v84[0]) == 1))
      {
        outlined destroy of ContentPathObservers.Observer(&v85);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(&v85, &__dst);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v14 + 360) = v76;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v76[2] + 1, 1, v76);
          *(v14 + 360) = v76;
        }

        v65 = v76[2];
        v64 = v76[3];
        if (v65 >= v64 >> 1)
        {
          v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1, v76);
          *(v14 + 360) = v76;
        }

        outlined destroy of ContentPathObservers.Observer(&v85);
        v76[2] = v65 + 1;
        outlined init with take of ContentPathObservers.Observer(&__dst, &v76[2 * v65 + 4]);
        *(v14 + 360) = v76;
      }

      v59 += 16;
      --v58;
    }

    while (v58);
  }

  else
  {
  }

  v129 = v113;
  v130 = v114;
  v131 = v115;
  v132 = v116;
  v125 = v109;
  v126 = v110;
  v127 = v111;
  v128 = v112;
  v121 = v105;
  v122 = v106;
  v123 = v107;
  v124 = v108;
  __dst = v101;
  v118 = v102;
  v119 = v103;
  v120 = v104;
  v13 = v67;
  v133 = v67;
  outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&__dst, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));

  v11 = v68;
LABEL_23:
  outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v134, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (AGGraphGetOutputValue())
  {
    v129 = v163;
    v130 = v164;
    v131 = v165;
    *&v132 = v166;
    v125 = v159;
    v126 = v160;
    v127 = v161;
    v128 = v162;
    v121 = v155;
    v122 = v156;
    v123 = v157;
    v124 = v158;
    __dst = v151;
    v118 = v152;
    v119 = v153;
    v120 = v154;
    *(&v132 + 1) = v11;
    v133 = v13;
    outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&__dst, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  }

  else
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_18DDAB4D0;
    *(v66 + 32) = v14;
    v81[0] = v66;

    AGGraphSetOutputValue();
    v129 = v163;
    v130 = v164;
    v131 = v165;
    *&v132 = v166;
    v125 = v159;
    v126 = v160;
    v127 = v161;
    v128 = v162;
    v121 = v155;
    v122 = v156;
    v123 = v157;
    v124 = v158;
    __dst = v151;
    v118 = v152;
    v119 = v153;
    v120 = v154;
    *(&v132 + 1) = v11;
    v133 = v13;
    outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&__dst, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  }
}

{
  v81 = *MEMORY[0x1E69E9840];
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v3 = v2;
  v5 = *Value;
  v4 = *(Value + 8);
  v7 = *(Value + 16);
  v6 = *(Value + 24);
  v8 = *(Value + 32);
  v9 = *(Value + 33);
  v10 = *(Value + 34);
  v11 = *AGGraphGetValue();
  v13 = *(v0 + 24);
  v14 = (v3 | v12) & 1;
  *&v51 = v5;
  *(&v51 + 1) = v4;
  *&v70 = v5;
  *(&v70 + 1) = v4;
  *&v52 = v7;
  *(&v52 + 1) = v6;
  *&v71 = v7;
  *(&v71 + 1) = v6;
  LOBYTE(v72) = v8;
  BYTE1(v72) = v9;
  v53 = v10;
  BYTE2(v72) = v10;
  *(&v72 + 1) = v11;
  v73 = (v3 | v12) & 1;

  outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v70, &v77, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  v15 = AGGraphGetValue();
  v17 = v16;
  v18 = *v15;
  v19 = v15[1];
  type metadata accessor for CGPoint(0);
  v20 = AGGraphGetValue();
  v22 = v21;
  v23 = *v20;
  v24 = v20[1];
  v25 = AGGraphGetValue();
  v26 = *v25;
  v27 = *(v25 + 8);
  v28 = *(v25 + 16);
  v29 = *(v25 + 24);
  v31 = *(v25 + 32);
  v30 = *(v25 + 40);
  v33 = v32 | v22;
  v34 = v13;
  v67 = v70;
  v68 = v71;
  v69 = v72;
  v35 = *(v13 + 104);
  v36 = *(v13 + 112);
  v58 = *(v34 + 120);
  v59 = *(v34 + 136);
  if (v33)
  {

    outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v70, &v77, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
    *(v34 + 104) = v26;
    *(v34 + 112) = v27;
    *(v34 + 136) = v31 - (v23 - v28);
    *(v34 + 144) = v30 - (v24 - v29);
    *(v34 + 120) = v23;
    *(v34 + 128) = v24;
    v60 = 4;
  }

  else
  {
    outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v70, &v77, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));

    v60 = 0;
  }

  if (v17)
  {
    *(v34 + 40) = v18;
    *(v34 + 48) = v19;
    v60 |= 2u;
  }

  if (v14 || !*(v34 + 96))
  {

    v77 = v67;
    v78 = v68;
    v79 = v69;
    v80 = v14;
    *(v34 + 56) = v67;
    *(v34 + 72) = v78;
    *(v34 + 88) = v79;
    LOBYTE(v60) = v60 | 1;
    outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v77, v74, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  }

  else if (!v60)
  {
    v77 = v67;
    v78 = v68;
    v79 = v69;
    v80 = 0;
    outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v77, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));

    v37 = v53;
    goto LABEL_25;
  }

  v48 = v14;
  v49 = v8;
  v50 = v9;
  v57 = *(v34 + 104);
  v55 = *(v34 + 112);
  v56 = *(v34 + 136);
  v54 = *(v34 + 120);
  v38 = *(v34 + 152);
  v39 = MEMORY[0x1E69E7CC0];
  *(v34 + 152) = MEMORY[0x1E69E7CC0];
  v40 = *(v38 + 16);
  if (v40)
  {
    v41 = v38 + 32;
    v61 = v39;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v41, v65);
      v64 = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v42 = v66, ObjectType = swift_getObjectType(), v63 = v60, *&v77 = v35, *(&v77 + 1) = v36, v79 = v59, v78 = v58, v74[0] = v57, v74[1] = v55, v75 = v54, v76 = v56, v43 = *(v42 + 16), , , , , v43(v34, &v63, &v77, v74, &v64, ObjectType, v42), swift_unknownObjectRelease(), , , , , v64 == 1))
      {
        outlined destroy of ContentPathObservers.Observer(v65);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v65, &v77);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v34 + 152) = v61;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v61[2] + 1, 1, v61);
          *(v34 + 152) = v61;
        }

        v46 = v61[2];
        v45 = v61[3];
        if (v46 >= v45 >> 1)
        {
          v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v61);
          *(v34 + 152) = v61;
        }

        outlined destroy of ContentPathObservers.Observer(v65);
        v61[2] = v46 + 1;
        outlined init with take of ContentPathObservers.Observer(&v77, &v61[2 * v46 + 4]);
        *(v34 + 152) = v61;
      }

      v41 += 16;
      --v40;
    }

    while (v40);
  }

  else
  {
  }

  v77 = v67;
  v78 = v68;
  v79 = v69;
  LOBYTE(v14) = v48;
  v80 = v48;
  outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v77, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));

  v37 = v53;
  v8 = v49;
  v9 = v50;
LABEL_25:
  outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v70, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (AGGraphGetOutputValue())
  {
    v77 = v51;
    v78 = v52;
    LOBYTE(v79) = v8;
    BYTE1(v79) = v9;
    BYTE2(v79) = v37;
    *(&v79 + 3) = v67;
    BYTE7(v79) = BYTE4(v67);
    *(&v79 + 1) = v11;
    v80 = v14;
    outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v77, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  }

  else
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_18DDAB4D0;
    *(v47 + 32) = v34;
    v74[0] = v47;

    AGGraphSetOutputValue();
    v77 = v51;
    v78 = v52;
    LOBYTE(v79) = v8;
    BYTE1(v79) = v9;
    BYTE2(v79) = v37;
    *(&v79 + 3) = v67;
    BYTE7(v79) = BYTE4(v67);
    *(&v79 + 1) = v11;
    v80 = v14;
    outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v77, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  }
}

{
  v87 = *MEMORY[0x1E69E9840];
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v3 = v2;
  v4 = *(Value + 16);
  v74 = *Value;
  v75 = v4;
  v76 = *(Value + 32);
  v77 = *(Value + 48);
  v6 = *AGGraphGetValue();
  LOWORD(v73) = v77;
  v70 = v74;
  v71 = v75;
  v72 = v76;
  v7 = (v3 | v5) & 1;
  v8 = *(v0 + 24);
  v65 = v74;
  v66 = v75;
  v67 = v76;
  *&v68 = v73;
  *(&v68 + 1) = v6;
  v69 = v7;

  outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v65, &v82, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  v9 = AGGraphGetValue();
  v11 = v10;
  v12 = *v9;
  v13 = v9[1];
  type metadata accessor for CGPoint(0);
  v14 = AGGraphGetValue();
  v16 = v15;
  v17 = *v14;
  v18 = v14[1];
  v19 = AGGraphGetValue();
  v20 = *v19;
  v21 = *(v19 + 8);
  v22 = *(v19 + 16);
  v23 = *(v19 + 24);
  v25 = *(v19 + 32);
  v24 = *(v19 + 40);
  v27 = v26 | v16;
  v61 = v65;
  v62 = v66;
  v63 = v67;
  v64 = v68;
  v29 = *(v8 + 120);
  v28 = *(v8 + 128);
  v52 = *(v8 + 136);
  v53 = *(v8 + 152);
  if (v27)
  {

    outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v65, &v82, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
    *(v8 + 120) = v20;
    *(v8 + 128) = v21;
    *(v8 + 152) = v25 - (v17 - v22);
    *(v8 + 160) = v24 - (v18 - v23);
    *(v8 + 136) = v17;
    *(v8 + 144) = v18;
    v54 = 4;
  }

  else
  {
    outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v65, &v82, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));

    v54 = 0;
  }

  if (v11)
  {
    *(v8 + 40) = v12;
    *(v8 + 48) = v13;
    v54 |= 2u;
  }

  if ((v7 & 1) != 0 || !*(v8 + 112))
  {
    v30 = *(v8 + 72);
    v81[0] = *(v8 + 56);
    v81[1] = v30;
    v31 = *(v8 + 104);
    v81[2] = *(v8 + 88);
    v81[3] = v31;
    outlined destroy of ObservationTracking._AccessList?(v81, &lazy cache variable for type metadata for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>?, type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v32 = v61;
    v82 = v61;
    v83 = v62;
    v34 = v63;
    v33 = v64;
    v84 = v63;
    v85 = v64;
    v86 = v7;
    *(v8 + 72) = v62;
    *(v8 + 88) = v34;
    *(v8 + 104) = v33;
    LOBYTE(v54) = v54 | 1;
    *(v8 + 56) = v32;
    outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v82, v78, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  }

  else if (!v54)
  {
    v82 = v61;
    v83 = v62;
    v84 = v63;
    v85 = v64;
    v86 = v7;
    outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v82, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));

    goto LABEL_25;
  }

  v46 = v7;
  v47 = v6;
  v50 = *(v8 + 128);
  v51 = *(v8 + 120);
  v48 = *(v8 + 136);
  v49 = *(v8 + 152);
  v35 = *(v8 + 168);
  v36 = MEMORY[0x1E69E7CC0];
  *(v8 + 168) = MEMORY[0x1E69E7CC0];
  v37 = *(v35 + 16);
  if (v37)
  {
    v38 = v35 + 32;
    v55 = v36;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v38, v81);
      v60 = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v58 = v37, v39 = *(&v81[0] + 1), ObjectType = swift_getObjectType(), v59 = v54, *&v82 = v29, *(&v82 + 1) = v28, v83 = v52, v84 = v53, v78[0] = v51, v78[1] = v50, v80 = v49, v79 = v48, v56 = *(v39 + 16), v57 = ObjectType, , , , , v41 = v39, v37 = v58, v56(v8, &v59, &v82, v78, &v60, v57, v41), swift_unknownObjectRelease(), , , , , v60 == 1))
      {
        outlined destroy of ContentPathObservers.Observer(v81);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v81, &v82);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v8 + 168) = v55;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55[2] + 1, 1, v55);
          *(v8 + 168) = v55;
        }

        v44 = v55[2];
        v43 = v55[3];
        if (v44 >= v43 >> 1)
        {
          v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v55);
          *(v8 + 168) = v55;
        }

        outlined destroy of ContentPathObservers.Observer(v81);
        v55[2] = v44 + 1;
        outlined init with take of ContentPathObservers.Observer(&v82, &v55[2 * v44 + 4]);
        *(v8 + 168) = v55;
      }

      v38 += 16;
      --v37;
    }

    while (v37);
  }

  else
  {
  }

  v82 = v61;
  v83 = v62;
  v84 = v63;
  v85 = v64;
  v7 = v46;
  v86 = v46;
  outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v82, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));

  v6 = v47;
LABEL_25:
  outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v65, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (AGGraphGetOutputValue())
  {
    v82 = v70;
    v83 = v71;
    v84 = v72;
    *&v85 = v73;
    *(&v85 + 1) = v6;
    v86 = v7;
    outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v82, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  }

  else
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_18DDAB4D0;
    *(v45 + 32) = v8;
    v78[0] = v45;

    AGGraphSetOutputValue();
    v82 = v70;
    v83 = v71;
    v84 = v72;
    *&v85 = v73;
    *(&v85 + 1) = v6;
    v86 = v7;
    outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v82, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  }
}

{
  v70 = *MEMORY[0x1E69E9840];
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v3 = v2;
  memcpy(__dst, Value, sizeof(__dst));
  v4 = AGGraphGetValue();
  v6 = v3 | v5;
  v7 = *v4;
  memcpy(__src, __dst, 0x182uLL);
  v8 = v6 & 1;
  v9 = *(v0 + 24);
  memcpy(v66, __src, 0x188uLL);
  v66[49] = v7;
  v67 = v6 & 1;

  outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v66, v64, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  v10 = AGGraphGetValue();
  v55 = v11;
  v12 = *v10;
  v13 = v10[1];
  type metadata accessor for CGPoint(0);
  v14 = AGGraphGetValue();
  v16 = v15;
  v17 = *v14;
  v18 = v14[1];
  v19 = AGGraphGetValue();
  v21 = *v19;
  v20 = *(v19 + 8);
  v22 = *(v19 + 16);
  v23 = *(v19 + 24);
  v25 = v24 | v16;
  v27 = *(v19 + 32);
  v26 = *(v19 + 40);
  memcpy(v63, v66, sizeof(v63));
  v28 = *(v9 + 456);
  v29 = *(v9 + 464);
  v49 = *(v9 + 472);
  v50 = *(v9 + 488);
  if (v25)
  {

    outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v66, v64, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
    *(v9 + 456) = v21;
    *(v9 + 464) = v20;
    *(v9 + 488) = v27 - (v17 - v22);
    *(v9 + 496) = v26 - (v18 - v23);
    *(v9 + 472) = v17;
    *(v9 + 480) = v18;
    v51 = 4;
  }

  else
  {
    outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v66, v64, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));

    v51 = 0;
  }

  v30 = v28;

  if (v55)
  {
    *(v9 + 40) = v12;
    *(v9 + 48) = v13;
    v51 |= 2u;
  }

  if ((v8 & 1) != 0 || (memmove(v64, (v9 + 56), 0x190uLL), _s7SwiftUI24ShapeStyledResponderDataVyAA08AnimatedC0VyAA19ConcentricRectangleVGGSgWOg(v64) == 1))
  {
    memcpy(v61, (v9 + 56), sizeof(v61));
    outlined destroy of ObservationTracking._AccessList?(v61, &lazy cache variable for type metadata for ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>?, type metadata accessor for ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    memcpy(v64, v63, sizeof(v64));
    v65 = v8;
    memcpy(v62, v63, sizeof(v62));
    _ViewInputs.base.modify();
    memcpy((v9 + 56), v62, 0x190uLL);
    LOBYTE(v51) = v51 | 1;
    outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v64, v58, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  }

  else if (!v51)
  {
    memcpy(v64, v63, sizeof(v64));
    v65 = v8;
    outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v64, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));

    goto LABEL_23;
  }

  v44 = v7;
  v47 = *(v9 + 464);
  v48 = *(v9 + 456);
  v45 = *(v9 + 472);
  v46 = *(v9 + 488);
  v31 = *(v9 + 504);
  v32 = MEMORY[0x1E69E7CC0];
  *(v9 + 504) = MEMORY[0x1E69E7CC0];
  v33 = *(v31 + 16);
  if (v33)
  {
    v34 = v31 + 32;
    v52 = v32;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v34, v62);
      v61[0] = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v56 = v33, v35 = v9, v36 = v62[1], ObjectType = swift_getObjectType(), v57 = v51, *&v64[0] = v30, *(&v64[0] + 1) = v29, v64[1] = v49, v64[2] = v50, v58[0] = v48, v58[1] = v47, v60 = v46, v59 = v45, v53 = *(v36 + 16), v54 = ObjectType, , , , , v38 = v35, v39 = v36, v9 = v35, v33 = v56, v53(v38, &v57, v64, v58, v61, v54, v39), swift_unknownObjectRelease(), , , , , v61[0] == 1))
      {
        outlined destroy of ContentPathObservers.Observer(v62);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v62, v64);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v9 + 504) = v52;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v52[2] + 1, 1, v52);
          *(v9 + 504) = v52;
        }

        v42 = v52[2];
        v41 = v52[3];
        if (v42 >= v41 >> 1)
        {
          v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v52);
          *(v9 + 504) = v52;
        }

        outlined destroy of ContentPathObservers.Observer(v62);
        v52[2] = v42 + 1;
        outlined init with take of ContentPathObservers.Observer(v64, &v52[2 * v42 + 4]);
        *(v9 + 504) = v52;
      }

      v34 += 16;
      --v33;
    }

    while (v33);
  }

  else
  {
  }

  memcpy(v64, v63, sizeof(v64));
  v65 = v8;
  outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v64, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));

  v7 = v44;
LABEL_23:
  outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v66, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (AGGraphGetOutputValue())
  {
    memcpy(v64, __src, 0x188uLL);
    *(&v64[24] + 1) = v7;
    v65 = v8;
    outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v64, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  }

  else
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_18DDAB4D0;
    *(v43 + 32) = v9;
    v58[0] = v43;

    AGGraphSetOutputValue();
    memcpy(v64, __src, 0x188uLL);
    *(&v64[24] + 1) = v7;
    v65 = v8;
    outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v64, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  }
}

{
  v66[6] = *MEMORY[0x1E69E9840];
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v3 = v2;
  v57 = *(Value + 8);
  v59 = *Value;
  v53 = *(Value + 16);
  v4 = *(Value + 17);
  v5 = *(Value + 18);
  v6 = AGGraphGetValue();
  v8 = (v3 | v7) & 1;
  v9 = *v6;
  v10 = *(v0 + 24);
  swift_bridgeObjectRetain_n();

  v11 = AGGraphGetValue();
  v13 = v12;
  v51 = v11[1];
  v52 = *v11;
  type metadata accessor for CGPoint(0);
  v14 = AGGraphGetValue();
  v16 = v15;
  v17 = *v14;
  v18 = v14[1];
  v19 = AGGraphGetValue();
  v21 = *v19;
  v20 = *(v19 + 8);
  v23 = v22 | v16;
  v24 = *(v10 + 11);
  v25 = *(v10 + 12);
  v26 = v10[13];
  v27 = v10[14];
  v28 = v10[15];
  v29 = v10[16];
  if (v23)
  {
    v31 = *(v19 + 32);
    v30 = *(v19 + 40);
    v33 = *(v19 + 16);
    v32 = *(v19 + 24);
    *(v10 + 11) = v21;
    *(v10 + 12) = v20;
    v34 = v31 - (v17 - v33);
    v35 = v30 - (v18 - v32);
    v10[15] = v34;
    v10[16] = v35;
    v10[13] = v17;
    v10[14] = v18;

    v56 = 4;
    v54 = v21;
    v55 = v20;
  }

  else
  {

    v56 = 0;
    v35 = v29;
    v34 = v28;
    v18 = v27;
    v17 = v26;
    v54 = v24;
    v55 = v25;
  }

  if (v13)
  {
    *(v10 + 5) = v52;
    *(v10 + 6) = v51;
    v56 |= 2u;
  }

  if (v8 || !*(v10 + 10))
  {

    v36 = 256;
    if (!v4)
    {
      v36 = 0;
    }

    v37 = v36 | v53;
    v38 = 0x10000;
    if (!v5)
    {
      v38 = 0;
    }

    *(v10 + 7) = v59;
    *(v10 + 8) = v57;
    *(v10 + 9) = v37 | v38;
    *(v10 + 10) = v9;
    LOBYTE(v56) = v56 | 1;

    v54 = *(v10 + 11);
    v55 = *(v10 + 12);
    v17 = v10[13];
    v18 = v10[14];
    v34 = v10[15];
    v35 = v10[16];
  }

  else if (!v56)
  {

    goto LABEL_29;
  }

  v39 = *(v10 + 17);
  v40 = MEMORY[0x1E69E7CC0];
  *(v10 + 17) = MEMORY[0x1E69E7CC0];
  v41 = *(v39 + 16);
  if (v41)
  {
    v42 = v39 + 32;
    v58 = v40;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v42, v63);
      v62 = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v43 = v10, v44 = v64, ObjectType = swift_getObjectType(), v61 = v56, v66[0] = v24, v66[1] = v25, *&v66[2] = v26, *&v66[3] = v27, *&v66[4] = v28, *&v66[5] = v29, v65[0] = v54, v65[1] = v55, *&v65[2] = v17, *&v65[3] = v18, *&v65[4] = v34, *&v65[5] = v35, v45 = *(v44 + 16), , , , , v46 = v44, v10 = v43, v45(v43, &v61, v66, v65, &v62, ObjectType, v46), swift_unknownObjectRelease(), , , , , v62 == 1))
      {
        outlined destroy of ContentPathObservers.Observer(v63);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v63, v66);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v43 + 17) = v58;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58[2] + 1, 1, v58);
          *(v43 + 17) = v58;
        }

        v49 = v58[2];
        v48 = v58[3];
        if (v49 >= v48 >> 1)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v58);
          *(v43 + 17) = v58;
        }

        outlined destroy of ContentPathObservers.Observer(v63);
        v58[2] = v49 + 1;
        outlined init with take of ContentPathObservers.Observer(v66, &v58[2 * v49 + 4]);
        *(v43 + 17) = v58;
      }

      v42 += 16;
      --v41;
    }

    while (v41);
  }

  else
  {
  }

LABEL_29:

  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (!AGGraphGetOutputValue())
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_18DDAB4D0;
    *(v50 + 32) = v10;
    v66[0] = v50;

    AGGraphSetOutputValue();
  }
}

{
  v94 = *MEMORY[0x1E69E9840];
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v3 = v2;
  v4 = *Value;
  v5 = *(Value + 8);
  v6 = *(Value + 16);
  v7 = *(Value + 24);
  v8 = *(Value + 32);
  v9 = *(Value + 33);
  v10 = *AGGraphGetValue();
  v12 = *(v0 + 24);
  v13 = (v3 | v11) & 1;
  v76 = v4;
  v77 = v5;
  v78 = v6;
  v51 = v7;
  v79 = v7;
  v52 = v8;
  v53 = v9;
  v80 = v8;
  v81 = v9;
  v82 = v10;
  v83 = (v3 | v11) & 1;

  outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v76, &v89, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  v14 = AGGraphGetValue();
  v16 = v15;
  v18 = *v14;
  v17 = v14[1];
  type metadata accessor for CGPoint(0);
  v19 = AGGraphGetValue();
  v21 = v20;
  v22 = *v19;
  v23 = v19[1];
  v24 = AGGraphGetValue();
  v25 = *v24;
  v26 = *(v24 + 8);
  v28 = v27 | v21;
  v29 = v12;
  v30 = v76;
  v54 = v77;
  v55 = v78;
  v56 = v79;
  v57 = v80;
  v58 = v81;
  v31 = v82;
  v63 = *(v29 + 120);
  v64 = *(v29 + 136);
  v65 = *(v29 + 112);
  v72 = *(v29 + 104);
  if (v28)
  {
    v69 = v76;
    v71 = v4;
    v32 = *(v24 + 16);
    v33 = *(v24 + 24);
    v34 = *(v24 + 32);
    v67 = *(v24 + 40);

    outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v76, &v89, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
    *(v29 + 104) = v25;
    *(v29 + 112) = v26;
    v35 = v34 - (v22 - v32);
    v30 = v69;
    v4 = v71;
    *(v29 + 136) = v35;
    *(v29 + 144) = v67 - (v23 - v33);
    *(v29 + 120) = v22;
    *(v29 + 128) = v23;
    v66 = 4;
  }

  else
  {
    outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v76, &v89, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));

    v66 = 0;
  }

  if (v16)
  {
    *(v29 + 40) = v18;
    *(v29 + 48) = v17;
    v66 |= 2u;
  }

  if (v13 || !*(v29 + 96))
  {

    v89 = v30;
    v90 = v54;
    LOBYTE(v91) = v55;
    *(&v91 + 1) = v56;
    LOBYTE(v92) = v57;
    BYTE1(v92) = v58;
    *(&v92 + 1) = v31;
    v93 = v13;
    v37 = 256;
    if (!v58)
    {
      v37 = 0;
    }

    *(v29 + 56) = v30;
    *(v29 + 64) = v54;
    *(v29 + 72) = v55;
    *(v29 + 80) = v56;
    LOBYTE(v66) = v66 | 1;
    *(v29 + 88) = v37 | v57;
    *(v29 + 96) = v31;
    outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v89, v86, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  }

  else if (!v66)
  {
    v89 = v30;
    v90 = v54;
    LOBYTE(v91) = v55;
    *(&v91 + 1) = v56;
    LOBYTE(v92) = v57;
    BYTE1(v92) = v58;
    *(&v92 + 1) = v31;
    v93 = 0;
    outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v89, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));

    v36 = v52;
    goto LABEL_27;
  }

  v49 = v13;
  v50 = v10;
  v62 = *(v29 + 104);
  v60 = *(v29 + 112);
  v61 = *(v29 + 136);
  v59 = *(v29 + 120);
  v38 = *(v29 + 152);
  v39 = MEMORY[0x1E69E7CC0];
  *(v29 + 152) = MEMORY[0x1E69E7CC0];
  v40 = *(v38 + 16);
  if (v40)
  {
    v41 = v38 + 32;
    v68 = v39;
    v42 = v72;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v41, v74);
      LOBYTE(v84) = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v43 = v75, ObjectType = swift_getObjectType(), v73 = v66, v89 = v42, v90 = v65, v91 = v63, v92 = v64, v86[0] = v62, v86[1] = v60, v87 = v59, v88 = v61, v44 = *(v43 + 16), , , , , v44(v29, &v73, &v89, v86, &v84, ObjectType, v43), v42 = v72, swift_unknownObjectRelease(), , , , , v84 == 1))
      {
        outlined destroy of ContentPathObservers.Observer(v74);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v74, &v89);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v29 + 152) = v68;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v68[2] + 1, 1, v68);
          *(v29 + 152) = v68;
        }

        v47 = v68[2];
        v46 = v68[3];
        if (v47 >= v46 >> 1)
        {
          v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v68);
          *(v29 + 152) = v68;
        }

        outlined destroy of ContentPathObservers.Observer(v74);
        v68[2] = v47 + 1;
        outlined init with take of ContentPathObservers.Observer(&v89, &v68[2 * v47 + 4]);
        *(v29 + 152) = v68;
      }

      v41 += 16;
      --v40;
    }

    while (v40);
  }

  else
  {
  }

  v89 = v30;
  v90 = v54;
  LOBYTE(v91) = v55;
  *(&v91 + 1) = v86[0];
  DWORD1(v91) = *(v86 + 3);
  *(&v91 + 1) = v56;
  LOBYTE(v92) = v57;
  BYTE1(v92) = v58;
  *(&v92 + 2) = *v74;
  WORD3(v92) = *&v74[4];
  *(&v92 + 1) = v31;
  LOBYTE(v13) = v49;
  v93 = v49;
  outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v89, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));

  v36 = v52;
  v9 = v53;
  v10 = v50;
LABEL_27:
  outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v76, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (AGGraphGetOutputValue())
  {
    v89 = v4;
    v90 = v5;
    LOBYTE(v91) = v6;
    *(&v91 + 1) = *v74;
    DWORD1(v91) = *&v74[3];
    *(&v91 + 1) = v51;
    LOBYTE(v92) = v36;
    BYTE1(v92) = v9;
    *(&v92 + 2) = v84;
    WORD3(v92) = v85;
    *(&v92 + 1) = v10;
    v93 = v13;
    outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v89, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  }

  else
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_18DDAB4D0;
    *(v48 + 32) = v29;
    v86[0] = v48;

    AGGraphSetOutputValue();
    v89 = v4;
    v90 = v5;
    LOBYTE(v91) = v6;
    *(&v91 + 1) = *v74;
    DWORD1(v91) = *&v74[3];
    *(&v91 + 1) = v51;
    LOBYTE(v92) = v36;
    BYTE1(v92) = v9;
    *(&v92 + 2) = v84;
    WORD3(v92) = v85;
    *(&v92 + 1) = v10;
    v93 = v13;
    outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v89, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  }
}

{
  v87 = *MEMORY[0x1E69E9840];
  type metadata accessor for _ShapeView<Rectangle, LinearGradient>(0);
  Value = AGGraphGetValue();
  v3 = v2;
  v4 = *Value;
  v6 = *(Value + 8);
  v5 = *(Value + 16);
  v8 = *(Value + 24);
  v7 = *(Value + 32);
  v9 = *(Value + 40);
  v10 = *(Value + 41);

  v11 = *AGGraphGetValue();
  v13 = *(v0 + 24);
  *&v74 = v4;
  v49 = v6;
  *&v50 = v5;
  *(&v74 + 1) = v6;
  *&v75 = v5;
  *(&v50 + 1) = v8;
  v51 = v7;
  *(&v75 + 1) = v8;
  *&v76 = v7;
  v52 = v9;
  v53 = (v3 | v12) & 1;
  BYTE8(v76) = v9;
  BYTE9(v76) = v10;
  v77 = v11;
  v78 = v53;
  v48 = v11;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v74, &v82, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle, LinearGradient>>, changed: Bool));
  v14 = AGGraphGetValue();
  v16 = v15;
  v17 = *v14;
  v18 = v14[1];
  type metadata accessor for CGPoint(0);
  v19 = AGGraphGetValue();
  v21 = v20;
  v22 = *v19;
  v23 = v19[1];
  v24 = AGGraphGetValue();
  v25 = *v24;
  v26 = *(v24 + 8);
  v27 = *(v24 + 16);
  v28 = *(v24 + 24);
  v30 = *(v24 + 32);
  v29 = *(v24 + 40);
  v32 = v31 | v21;
  v70 = v74;
  v71 = v75;
  v72 = v76;
  v73 = v77;
  v33 = *(v13 + 120);
  v58 = *(v13 + 128);
  v59 = *(v13 + 144);
  v61 = *(v13 + 112);
  if (v32)
  {

    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v74, &v82, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle, LinearGradient>>, changed: Bool));
    *(v13 + 112) = v25;
    *(v13 + 120) = v26;
    *(v13 + 144) = v30 - (v22 - v27);
    *(v13 + 152) = v29 - (v23 - v28);
    *(v13 + 128) = v22;
    *(v13 + 136) = v23;
    v62 = 4;
  }

  else
  {
    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v74, &v82, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle, LinearGradient>>, changed: Bool));

    v62 = 0;
  }

  v34 = v53;
  if (v16)
  {
    *(v13 + 40) = v17;
    *(v13 + 48) = v18;
    v62 |= 2u;
  }

  v35 = *(v13 + 56);
  if ((v53 & 1) != 0 || !v35)
  {
    outlined consume of ShapeStyledResponderData<_ShapeView<Rectangle, AngularGradient>>?(v35, *(v13 + 64), *(v13 + 72), *(v13 + 80), *(v13 + 88), *(v13 + 96), *(v13 + 104));
    v82 = v70;
    v83 = v71;
    v84 = v72;
    v86 = v53;
    v36 = v71;
    *(v13 + 56) = v70;
    v37 = v73;
    v85 = v73;
    *(v13 + 72) = v36;
    *(v13 + 88) = v84;
    *(v13 + 104) = v37;
    LOBYTE(v62) = v62 | 1;
    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v82, v79, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle, LinearGradient>>, changed: Bool));
  }

  else if (!v62)
  {
    v82 = v70;
    v83 = v71;
    v84 = v72;
    v85 = v73;
    v86 = v53;
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v82, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle, LinearGradient>>, changed: Bool));

    goto LABEL_25;
  }

  v47 = v10;
  v56 = *(v13 + 120);
  v57 = *(v13 + 112);
  v54 = *(v13 + 128);
  v55 = *(v13 + 144);
  v38 = *(v13 + 160);
  v39 = MEMORY[0x1E69E7CC0];
  *(v13 + 160) = MEMORY[0x1E69E7CC0];
  v40 = *(v38 + 16);
  if (v40)
  {
    v60 = v33;
    v41 = v38 + 32;
    v63 = v39;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v41, v68);
      v67 = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v42 = v69, ObjectType = swift_getObjectType(), v66 = v62, *&v82 = v61, *(&v82 + 1) = v60, v83 = v58, v84 = v59, v79[0] = v57, v79[1] = v56, v80 = v54, v81 = v55, v64 = *(v42 + 16), , , , , v64(v13, &v66, &v82, v79, &v67, ObjectType, v42), swift_unknownObjectRelease(), , , , , v67 == 1))
      {
        outlined destroy of ContentPathObservers.Observer(v68);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v68, &v82);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v13 + 160) = v63;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v63[2] + 1, 1, v63);
          *(v13 + 160) = v63;
        }

        v45 = v63[2];
        v44 = v63[3];
        if (v45 >= v44 >> 1)
        {
          v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v63);
          *(v13 + 160) = v63;
        }

        outlined destroy of ContentPathObservers.Observer(v68);
        v63[2] = v45 + 1;
        outlined init with take of ContentPathObservers.Observer(&v82, &v63[2 * v45 + 4]);
        *(v13 + 160) = v63;
      }

      v41 += 16;
      --v40;
    }

    while (v40);

    v34 = v53;
  }

  else
  {
  }

  v82 = v70;
  v83 = v71;
  v84 = v72;
  v85 = v73;
  v86 = v34;
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v82, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle, LinearGradient>>, changed: Bool));

  v10 = v47;
LABEL_25:
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v74, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle, LinearGradient>>, changed: Bool));
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (AGGraphGetOutputValue())
  {
    *&v82 = v4;
    *(&v82 + 1) = v49;
    v83 = v50;
    *&v84 = v51;
    BYTE8(v84) = v52;
    BYTE9(v84) = v10;
    *(&v84 + 10) = v70;
    HIWORD(v84) = WORD2(v70);
    v85 = v48;
    v86 = v34;
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v82, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle, LinearGradient>>, changed: Bool));
  }

  else
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_18DDAB4D0;
    *(v46 + 32) = v13;
    v79[0] = v46;

    AGGraphSetOutputValue();
    *&v82 = v4;
    *(&v82 + 1) = v49;
    v83 = v50;
    *&v84 = v51;
    BYTE8(v84) = v52;
    BYTE9(v84) = v10;
    *(&v84 + 10) = v70;
    HIWORD(v84) = WORD2(v70);
    v85 = v48;
    v86 = v34;
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v82, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle, LinearGradient>>, changed: Bool));
  }
}

{
  v97 = *MEMORY[0x1E69E9840];
  type metadata accessor for _ShapeView<Rectangle, MeshGradient>(0);
  Value = AGGraphGetValue();
  v3 = v2;
  v5 = *(Value + 1);
  v4 = Value[2];
  v6 = *Value;
  *(v93 + 12) = *(Value + 44);
  v92[1] = v5;
  v93[0] = v4;
  v92[0] = v6;
  v7 = *(Value + 1);
  v89 = *Value;
  v90 = v7;
  v91[0] = Value[2];
  *(v91 + 12) = *(Value + 44);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v92, &v80, type metadata accessor for _ShapeView<Rectangle, MeshGradient>);
  v8 = *AGGraphGetValue();
  v10 = v3 & 1;
  *&v95[12] = *(v91 + 12);
  v94[1] = v90;
  *v95 = v91[0];
  v94[0] = v89;
  v96 = v3 & 1;
  v86 = v89;
  v87 = v90;
  v88[0] = v91[0];
  *(v88 + 12) = *(v91 + 12);
  v11 = (v3 | v9) & 1;
  v12 = *(v0 + 24);
  v80 = v89;
  v81 = v90;
  v82 = v88[0];
  v83 = v88[1];
  v84 = v8;
  v85 = v11;

  outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v94, &v74, &lazy cache variable for type metadata for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool), type metadata accessor for _ShapeView<Rectangle, MeshGradient>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));

  outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v80, &v74, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  v13 = AGGraphGetValue();
  v15 = v14;
  v16 = *v13;
  v17 = v13[1];
  type metadata accessor for CGPoint(0);
  v18 = AGGraphGetValue();
  v20 = v19;
  v21 = *v18;
  v22 = v18[1];
  v23 = AGGraphGetValue();
  v25 = *v23;
  v24 = *(v23 + 8);
  v26 = *(v23 + 16);
  v27 = *(v23 + 24);
  v29 = *(v23 + 32);
  v28 = *(v23 + 40);
  v71 = v82;
  v72 = v83;
  v73 = v84;
  v69 = v80;
  v70 = v81;
  v31 = *(v12 + 128);
  v53 = *(v12 + 144);
  v54 = *(v12 + 160);
  v55 = *(v12 + 136);
  if ((v30 | v20))
  {

    outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v80, &v74, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
    *(v12 + 128) = v25;
    *(v12 + 136) = v24;
    *(v12 + 160) = v29 - (v21 - v26);
    *(v12 + 168) = v28 - (v22 - v27);
    *(v12 + 144) = v21;
    *(v12 + 152) = v22;
    v56 = 4;
  }

  else
  {
    outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v80, &v74, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));

    v56 = 0;
  }

  if (v15)
  {
    *(v12 + 40) = v16;
    *(v12 + 48) = v17;
    v56 |= 2u;
  }

  if ((v11 & 1) != 0 || !*(v12 + 104))
  {
    v32 = *(v12 + 88);
    v67[1] = *(v12 + 72);
    v67[2] = v32;
    v67[3] = *(v12 + 104);
    v68 = *(v12 + 120);
    v67[0] = *(v12 + 56);
    outlined destroy of ObservationTracking._AccessList?(v67, &lazy cache variable for type metadata for ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>?, type metadata accessor for ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v33 = v73;
    v78 = v73;
    v35 = v71;
    v34 = v72;
    v76 = v71;
    v77 = v72;
    v36 = v69;
    v74 = v69;
    v75 = v70;
    v79 = v11;
    *(v12 + 72) = v70;
    *(v12 + 88) = v35;
    *(v12 + 104) = v34;
    *(v12 + 120) = v33;
    LOBYTE(v56) = v56 | 1;
    *(v12 + 56) = v36;
    outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v74, &v63, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  }

  else if (!v56)
  {
    v76 = v71;
    v77 = v72;
    v78 = v73;
    v74 = v69;
    v75 = v70;
    v79 = v11;
    outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v74, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));

    goto LABEL_25;
  }

  v47 = v8;
  v48 = v10;
  v51 = *(v12 + 136);
  v52 = *(v12 + 128);
  v49 = *(v12 + 144);
  v50 = *(v12 + 160);
  v37 = *(v12 + 176);
  v38 = MEMORY[0x1E69E7CC0];
  *(v12 + 176) = MEMORY[0x1E69E7CC0];
  v39 = *(v37 + 16);
  if (v39)
  {
    v40 = v37 + 32;
    v57 = v38;
    v60 = v12;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v40, v67);
      v62 = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v41 = *(&v67[0] + 1), ObjectType = swift_getObjectType(), v61 = v56, v74.n128_u64[0] = v31, v74.n128_u64[1] = v55, v75 = v53, v76 = v54, v63.n128_u64[0] = v52, v63.n128_u64[1] = v51, v64 = v49, *v65 = v50, v58 = *(v41 + 16), v59 = ObjectType, , , , , v58(v60, &v61, &v74, &v63, &v62, v59, v41), swift_unknownObjectRelease(), , , v12 = v60, , , v62 == 1))
      {
        outlined destroy of ContentPathObservers.Observer(v67);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v67, &v74);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v60 + 176) = v57;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v57[2] + 1, 1, v57);
          *(v60 + 176) = v57;
        }

        v45 = v57[2];
        v44 = v57[3];
        if (v45 >= v44 >> 1)
        {
          v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v57);
          *(v60 + 176) = v57;
        }

        outlined destroy of ContentPathObservers.Observer(v67);
        v57[2] = v45 + 1;
        outlined init with take of ContentPathObservers.Observer(&v74, &v57[2 * v45 + 4]);
        *(v60 + 176) = v57;
      }

      v40 += 16;
      --v39;
    }

    while (v39);
  }

  else
  {
  }

  v76 = v71;
  v77 = v72;
  v78 = v73;
  v74 = v69;
  v75 = v70;
  v79 = v11;
  outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v74, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));

  v10 = v48;
  v8 = v47;
LABEL_25:
  outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v80, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (AGGraphGetOutputValue())
  {
    v74 = v86;
    v75 = v87;
    v76 = v88[0];
    v77 = v88[1];
    v78 = v8;
    v79 = v11;
    outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v74, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
    v63 = v89;
    v64 = v90;
    *v65 = v91[0];
    *&v65[12] = *(v91 + 12);
    v66 = v10;
    outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v63, &lazy cache variable for type metadata for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool), type metadata accessor for _ShapeView<Rectangle, MeshGradient>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  }

  else
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_18DDAB4D0;
    *(v46 + 32) = v12;
    *&v67[0] = v46;

    AGGraphSetOutputValue();
    v74 = v86;
    v75 = v87;
    v76 = v88[0];
    v77 = v88[1];
    v78 = v8;
    v79 = v11;
    outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v74, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
    v63 = v89;
    v64 = v90;
    *v65 = v91[0];
    *&v65[12] = *(v91 + 12);
    v66 = v10;
    outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v63, &lazy cache variable for type metadata for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool), type metadata accessor for _ShapeView<Rectangle, MeshGradient>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  }
}

void type metadata accessor for (value: ShapeStyledResponderData<Image.Resolved>, changed: Bool)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (value: ShapeStyledResponderData<Image.Resolved>, changed: Bool))
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for ShapeStyledResponderData<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for ShapeStyledResponderData);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<Image.Resolved>, changed: Bool));
    }
  }
}

void type metadata accessor for ShapeStyledResponderData<Image.Resolved>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShapeStyledResponderData<Image.Resolved>?)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for ShapeStyledResponderData<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for ShapeStyledResponderData);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ShapeStyledResponderData<Image.Resolved>?);
    }
  }
}

uint64_t getEnumTagSinglePayload for _ContentShapeKindModifier(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_27;
  }

  v8 = (v6 & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_27;
  }

  if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_27:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(a1 + v6);
    if (v17 >= 2)
    {
      return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

LABEL_20:
  v15 = v14 - 1;
  if (v10)
  {
    v15 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v15) + 1;
}

uint64_t _s7SwiftUI24ShapeStyledResponderDataVyAA5ImageVAAE8ResolvedVGSgWOg(uint64_t a1)
{
  v1 = *(a1 + 192);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void specialized static DefaultSystemColorDefinition_PhoneTV.value(for:environment:)(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v6 = *a2;
  v5 = a2[1];
  v39 = *a2;
  v40 = v5;
  EnvironmentValues.colorScheme.getter(&v38);
  v7 = v38;
  if (!v5)
  {
    v19 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019ColorSchemeContrastS033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0g5(v6);
    if (v19)
    {
      v8 = *(v19 + 72);
      if ((v7 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v8 = 0;
      if ((v7 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

LABEL_3:
    __asm { FMOV            V0.2S, #1.0 }

    v14 = 2143289344;
    v15 = _D0;
    switch(v4)
    {
      case 1:
        if (v8)
        {
          v16 = 255.0;
          v17 = 179.0;
          v18 = 1115684864;
          goto LABEL_144;
        }

        v16 = 255.0;
        v36 = 1126105088;
        goto LABEL_121;
      case 2:
        if (v8)
        {
          v16 = 255.0;
          v17 = 212.0;
          v18 = 1108869120;
          goto LABEL_144;
        }

        v16 = 255.0;
        v36 = 1129709568;
LABEL_121:
        v17 = *&v36;
        v20 = 100.0;
        v21 = 10.0;
        goto LABEL_153;
      case 3:
        v16 = 48.0;
        if (v8)
        {
          v17 = 219.0;
          v18 = 1119223808;
        }

        else
        {
          v17 = 209.0;
          v18 = 1118830592;
        }

        goto LABEL_144;
      case 4:
        if (v8)
        {
          v16 = 93.0;
          v25 = 1130758144;
          goto LABEL_95;
        }

        v16 = 64.0;
        v17 = 200.0;
        v18 = 1130364928;
        goto LABEL_144;
      case 5:
        v16 = 99.0;
        v17 = 230.0;
        v18 = 1130496000;
        goto LABEL_144;
      case 6:
        if (v8)
        {
          v16 = 112.0;
          v25 = 1129775104;
          goto LABEL_95;
        }

        v17 = 210.0;
        v21 = 255.0;
        v16 = 100.0;
        v20 = 100.0;
        goto LABEL_153;
      case 7:
        if (v8)
        {
          v16 = 64.0;
          v25 = 1125908480;
          goto LABEL_95;
        }

        v17 = 132.0;
        v21 = 255.0;
        v20 = 100.0;
        v16 = 10.0;
        goto LABEL_153;
      case 8:
        if (v8)
        {
          v16 = 125.0;
          v25 = 1123287040;
          goto LABEL_95;
        }

        v16 = 94.0;
        v35 = 1119354880;
        goto LABEL_126;
      case 9:
        if (v8)
        {
          v16 = 218.0;
          v25 = 1125056512;
LABEL_95:
          v17 = *&v25;
          v18 = 1132396544;
        }

        else
        {
          v16 = 191.0;
          v17 = 90.0;
          v18 = 1131544576;
        }

        goto LABEL_144;
      case 10:
        if (v8)
        {
          v16 = 255.0;
          v21 = 130.0;
          v17 = 100.0;
          v20 = 100.0;
          goto LABEL_153;
        }

        v16 = 255.0;
        v17 = 55.0;
        v18 = 1119748096;
        goto LABEL_144;
      case 11:
        if (v8)
        {
          v16 = 181.0;
          v17 = 148.0;
          v18 = 1121058816;
        }

        else
        {
          v16 = 172.0;
          v17 = 142.0;
          v18 = 1120927744;
        }

        goto LABEL_144;
      case 12:
        if ((v8 & 1) == 0)
        {
          goto LABEL_80;
        }

        v16 = 174.0;
        v32 = 1127350272;
        goto LABEL_81;
      case 13:
        goto LABEL_154;
      case 14:
        if (v8)
        {
          v16 = 235.0;
          v24 = 1131741184;
          goto LABEL_46;
        }

        v16 = 235.0;
        v21 = 245.0;
        v22 = 1114636288;
        goto LABEL_105;
      case 15:
        if (v8)
        {
          v16 = 235.0;
          v23 = 1131741184;
          goto LABEL_43;
        }

        v16 = 235.0;
        v37 = 1131741184;
        goto LABEL_119;
      case 16:
        if (v8)
        {
          v16 = 235.0;
          v21 = 245.0;
          v22 = 1109393408;
          goto LABEL_105;
        }

        v16 = 235.0;
        v21 = 245.0;
        goto LABEL_151;
      case 17:
        if (v8)
        {
          v28 = 0.081373;
        }

        else
        {
          v28 = 0.05;
        }

        __asm { FMOV            V0.2S, #1.0 }

        LODWORD(v15) = _D0;
        goto LABEL_63;
      case 18:
        v16 = 120.0;
        if (v8)
        {
          v33 = 1110441984;
        }

        else
        {
          v33 = 1108344832;
        }

        goto LABEL_139;
      case 19:
        if ((v8 & 1) == 0)
        {
          v29 = 1123024896;
          goto LABEL_149;
        }

        v16 = 120.0;
        v33 = 1109393408;
LABEL_139:
        v20 = *&v33;
        v21 = 128.0;
        goto LABEL_152;
      case 20:
        if ((v8 & 1) == 0)
        {
          v34 = 1122762752;
          goto LABEL_130;
        }

        v29 = 1122762752;
LABEL_149:
        v16 = *&v29;
        v21 = 128.0;
        v20 = 32.0;
        break;
      case 21:
        v16 = 116.0;
        v21 = 128.0;
        if (v8)
        {
          v20 = 26.0;
        }

        else
        {
          v20 = 18.0;
        }

        goto LABEL_152;
      default:
        v16 = 255.0;
        if (v8)
        {
          v17 = 105.0;
          v18 = 1120010240;
        }

        else
        {
          v17 = 69.0;
          v18 = 1114112000;
        }

        goto LABEL_144;
    }

    goto LABEL_152;
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA019ColorSchemeContrastI033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt1g5(v6, &v39);

  v8 = v39;
  if (v7)
  {
    goto LABEL_3;
  }

LABEL_8:
  v15 = 0x3F80000000000000;
  _D0 = 0;
  v14 = 2143289344;
  switch(v4)
  {
    case 1:
      if (v8)
      {
        v16 = 201.0;
        v26 = 1112539136;
      }

      else
      {
        v16 = 255.0;
        v26 = 1125449728;
      }

      goto LABEL_123;
    case 2:
      if (v8)
      {
        v16 = 178.0;
        v26 = 1117782016;
      }

      else
      {
        v16 = 255.0;
        v26 = 1129054208;
      }

LABEL_123:
      v17 = *&v26;
      v20 = 100.0;
      v21 = 0.0;
      goto LABEL_153;
    case 3:
      if (v8)
      {
        v16 = 36.0;
        v17 = 138.0;
        v18 = 1114898432;
      }

      else
      {
        v16 = 52.0;
        v17 = 199.0;
        v18 = 1118961664;
      }

      goto LABEL_144;
    case 4:
      if (v8)
      {
        v17 = 130.0;
        v27 = 1125711872;
        goto LABEL_147;
      }

      v16 = 48.0;
      v17 = 176.0;
      v18 = 1128726528;
      goto LABEL_144;
    case 5:
      if (v8)
      {
        v17 = 129.0;
        v21 = 123.0;
        v20 = 100.0;
        v16 = 12.0;
        goto LABEL_153;
      }

      v17 = 199.0;
      v27 = 1128136704;
      goto LABEL_147;
    case 6:
      if ((v8 & 1) == 0)
      {
        v16 = 50.0;
        v35 = 1127022592;
LABEL_126:
        v17 = *&v35;
        v18 = 1130758144;
        goto LABEL_144;
      }

      v17 = 113.0;
      v27 = 1126432768;
LABEL_147:
      v21 = *&v27;
      v20 = 100.0;
      v16 = 0.0;
      goto LABEL_153;
    case 7:
      if (v8)
      {
        v17 = 64.0;
        v27 = 1130168320;
      }

      else
      {
        v17 = 122.0;
        v27 = 1132396544;
      }

      goto LABEL_147;
    case 8:
      if (v8)
      {
        v16 = 54.0;
        v17 = 52.0;
        v18 = 1126367232;
      }

      else
      {
        v16 = 88.0;
        v17 = 86.0;
        v18 = 1129709568;
      }

      goto LABEL_144;
    case 9:
      if (v8)
      {
        v16 = 137.0;
        v17 = 68.0;
        v18 = 1126891520;
      }

      else
      {
        v16 = 175.0;
        v17 = 82.0;
        v18 = 1130233856;
      }

      goto LABEL_144;
    case 10:
      if (v8)
      {
        v16 = 211.0;
        v21 = 69.0;
        v20 = 100.0;
        v17 = 15.0;
        goto LABEL_153;
      }

      v16 = 255.0;
      v17 = 45.0;
      v18 = 1118437376;
      goto LABEL_144;
    case 11:
      if (v8)
      {
        v16 = 127.0;
        v17 = 101.0;
        v18 = 1116340224;
      }

      else
      {
        v16 = 162.0;
        v17 = 132.0;
        v18 = 1119617024;
      }

      goto LABEL_144;
    case 12:
      if (v8)
      {
        v16 = 108.0;
        v32 = 1121976320;
      }

      else
      {
LABEL_80:
        v16 = 142.0;
        v32 = 1125318656;
      }

LABEL_81:
      v21 = *&v32;
      v22 = 1120403456;
      goto LABEL_105;
    case 13:
      goto LABEL_154;
    case 14:
      if (v8)
      {
        v16 = 60.0;
        v21 = 67.0;
        v22 = 1117782016;
        goto LABEL_105;
      }

      v21 = 67.0;
      v16 = 60.0;
      v17 = 60.0;
      v20 = 60.0;
      goto LABEL_153;
    case 15:
      if (v8)
      {
        v16 = 60.0;
        v24 = 1116078080;
LABEL_46:
        v21 = *&v24;
        v22 = 1116471296;
        goto LABEL_105;
      }

      v16 = 60.0;
      v37 = 1116078080;
LABEL_119:
      v21 = *&v37;
      v20 = 30.0;
      break;
    case 16:
      if (v8)
      {
        v16 = 60.0;
        v23 = 1116078080;
LABEL_43:
        v21 = *&v23;
        v22 = 1113325568;
LABEL_105:
        v20 = *&v22;
      }

      else
      {
        v16 = 60.0;
        v21 = 67.0;
        v20 = 18.0;
      }

      break;
    case 17:
      if (v8)
      {
        v28 = 0.081373;
      }

      else
      {
        v28 = 0.05;
      }

      _D0 = 0;
      LODWORD(v15) = 0;
LABEL_63:
      *(&v15 + 1) = v28;
      v14 = 2143289344;
      goto LABEL_154;
    case 18:
      if (v8)
      {
        v16 = 120.0;
        v21 = 128.0;
        v20 = 28.0;
        break;
      }

      v30 = 1123024896;
      goto LABEL_141;
    case 19:
      if (v8)
      {
        v34 = 1123024896;
LABEL_130:
        v16 = *&v34;
        v21 = 128.0;
        v20 = 24.0;
      }

      else
      {
        v16 = 120.0;
        v21 = 128.0;
LABEL_151:
        v20 = 16.0;
      }

      break;
    case 20:
      if ((v8 & 1) == 0)
      {
        v31 = 1123024896;
        goto LABEL_132;
      }

      v30 = 1122762752;
LABEL_141:
      v16 = *&v30;
      v21 = 128.0;
      v20 = 20.0;
      break;
    case 21:
      if (v8)
      {
        v31 = 1122500608;
LABEL_132:
        v16 = *&v31;
        v21 = 128.0;
        v20 = 12.0;
      }

      else
      {
        v16 = 116.0;
        v21 = 128.0;
        v20 = 8.0;
      }

      break;
    default:
      if (v8)
      {
        v16 = 215.0;
        v20 = 100.0;
        v17 = 0.0;
        v21 = 21.0;
      }

      else
      {
        v16 = 255.0;
        v17 = 59.0;
        v18 = 1111490560;
LABEL_144:
        v21 = *&v18;
        v20 = 100.0;
      }

      goto LABEL_153;
  }

LABEL_152:
  v17 = v16;
LABEL_153:
  _s7SwiftUI21SystemColorDefinitionPAAE9systemRGByAA0D0VAAE11ResolvedHDRVSf_S3ftFZAA07DefaultcdE8_PhoneTVV_Tt3g5(&v39, v16, v17, v21, v20);
  _D0 = v39;
  v15 = v40;
  v14 = v41;
LABEL_154:
  *a3 = _D0;
  *(a3 + 8) = v15;
  *(a3 + 16) = v14;
}

uint64_t ViewResponder.isDescendant(of:)(uint64_t a1)
{
  v2 = v1;
  swift_retain_n();
  if (v1 != a1)
  {
    v4 = *(*v1 + 88);

    v6 = v4(v5);

    while (1)
    {

      if (!v6)
      {
        break;
      }

      if (v6 == a1)
      {

        LOBYTE(v9) = 1;
        return v9 & 1;
      }

      v7 = *(*v6 + 88);

      v6 = v7(v8);
    }

    type metadata accessor for ViewResponder();
    v9 = swift_dynamicCastClass();
    if (!v9)
    {
      return v9 & 1;
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_19;
    }

    v11 = Strong;
    v12 = *(v2 + 24);
    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      v15 = *(v9 + 24);
      ObjectType = swift_getObjectType();
      if (v11 != v14)
      {
        v25 = ObjectType;
        v17 = swift_getObjectType();
        v18 = type metadata accessor for EventGraphHost();
        v19 = *(v12 + 16);

        v19(v26, v18, v18, v17, v12);
        if (v26[0])
        {
          v20 = v26[1];
          (*(v15 + 16))(v26, v18, v18, v25, v15);
          if (v26[0])
          {
            v21 = swift_getObjectType();
            v22 = *(v20 + 64);
            v23 = swift_unknownObjectRetain();
            LOBYTE(v9) = v22(v23, v21, v20);

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease_n();
            return v9 & 1;
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_18;
        }
      }

      swift_unknownObjectRelease();
    }

LABEL_18:
    swift_unknownObjectRelease();
LABEL_19:
    LOBYTE(v9) = 0;
    return v9 & 1;
  }

  LOBYTE(v9) = 1;
  return v9 & 1;
}

void _s7SwiftUI21SystemColorDefinitionPAAE9systemRGByAA0D0VAAE11ResolvedHDRVSf_S3ftFZAA07DefaultcdE8_PhoneTVV_Tt3g5(uint64_t a1@<X8>, float a2@<S0>, float a3@<S1>, float a4@<S2>, float a5@<S3>)
{
  v7 = a2 / 255.0;
  v8 = a3 / 255.0;
  v9 = -(a2 / 255.0);
  if (v7 > 0.0)
  {
    v9 = v7;
  }

  if (v9 <= 0.04045)
  {
    v10 = v9 * 0.077399;
  }

  else
  {
    v10 = 1.0;
    if (v9 != 1.0)
    {
      v11 = a4;
      v12 = powf((v9 * 0.94787) + 0.052133, 2.4);
      a4 = v11;
      v10 = v12;
    }
  }

  v13 = -v8;
  if (v8 > 0.0)
  {
    v13 = v8;
  }

  v14 = a4 / 255.0;
  if (v13 <= 0.04045)
  {
    v15 = v13 * 0.077399;
  }

  else
  {
    v15 = 1.0;
    if (v13 != 1.0)
    {
      v15 = powf((v13 * 0.94787) + 0.052133, 2.4);
    }
  }

  if (v14 <= 0.0)
  {
    v16 = -v14;
  }

  else
  {
    v16 = v14;
  }

  if (v16 <= 0.04045)
  {
    v17 = v16 * 0.077399;
  }

  else
  {
    v17 = 1.0;
    if (v16 != 1.0)
    {
      v17 = powf((v16 * 0.94787) + 0.052133, 2.4);
    }
  }

  v18 = -v15;
  if (v8 > 0.0)
  {
    v18 = v15;
  }

  v19 = -v10;
  if (v7 > 0.0)
  {
    v19 = v10;
  }

  if (v14 <= 0.0)
  {
    v17 = -v17;
  }

  *a1 = v19;
  *(a1 + 4) = v18;
  *(a1 + 8) = v17;
  *(a1 + 12) = a5 * 0.01;
  *(a1 + 16) = 2143289344;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ScrollPhaseState(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[2] == a2[2])
  {
    return a1[1] == a2[1];
  }

  return 0;
}

uint64_t CoreMaterialCache.subscript.getter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 3);
  v6 = *v1;
  v7 = v4 | (v5 << 32);
  if (*(v6 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(*a1, v4 | (v5 << 32)), (v9 & 1) != 0))
  {
    v10 = *(*(v6 + 56) + 8 * v8);
  }

  else
  {
    v13 = v3;
    v14 = v4;
    v15 = v5;
    v10 = specialized CoreMaterialCache.load(material:)(&v13);
    outlined copy of Material.ID(v3, v4);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, v3, v7, isUniquelyReferenced_nonNull_native);
    outlined consume of Material.ID(v3, v4);
    *v2 = v13;
  }

  return v10;
}

uint64_t specialized CoreMaterialCache.load(material:)(uint64_t a1)
{
  v117[4] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  v2 = *(a1 + 12);
  v112.n128_u64[0] = *a1;
  v112.n128_u8[8] = v1;
  v112.n128_u32[3] = v2;
  v3 = Material.ResolvedMaterial.coreMaterialRecipe.getter();
  v105.n128_u64[0] = v112.n128_u64[0];
  v105.n128_u8[8] = v1;
  v105.n128_u32[3] = v2;
  Material.ResolvedMaterial.coreMaterialOptions.getter();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v5 = MTMaterialCreateDictionaryRepresentation();

  if (!v5)
  {
    __break(1u);
  }

  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v6 + 16) || (v7 = specialized __RawDictionaryStorage.find<A>(_:)(0x737265746C6966, 0xE700000000000000), (v8 & 1) == 0) || (outlined init with copy of Any(*(v6 + 56) + 32 * v7, &v112), type metadata accessor for [[String : Any]](0, &lazy cache variable for type metadata for [[String : Any]], type metadata accessor for [String : Any], MEMORY[0x1E69E62F8]), (swift_dynamicCast() & 1) == 0))
  {
LABEL_11:

    return MEMORY[0x1E69E7CC0];
  }

  if ((v2 & 0x80) == 0)
  {
    if ((v2 & 0x20) != 0)
    {

      v12 = 1065353216;
    }

    else
    {
      if (*(v6 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(0x656C616373, 0xE500000000000000), (v10 & 1) != 0))
      {
        outlined init with copy of Any(*(v6 + 56) + 32 * v9, &v112);

        if (swift_dynamicCast())
        {
          *&v11 = v105.n128_f64[0];
          v12 = v11;
          goto LABEL_146;
        }
      }

      else
      {
      }

      v12 = 1048576000;
    }

LABEL_146:
    v100 = v12;
    v14 = *(v105.n128_u64[0] + 16);
    if (!v14)
    {
      goto LABEL_147;
    }

    goto LABEL_13;
  }

  v100 = 0;
  v14 = *(v105.n128_u64[0] + 16);
  if (v14)
  {
LABEL_13:
    v15 = v105.n128_u64[0] + 32;
    v16 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v17 = *v15;
      if (!*(*v15 + 16))
      {
        goto LABEL_15;
      }

      v18 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000);
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }

      outlined init with copy of Any(*(v17 + 56) + 32 * v18, &v112);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_14;
      }

      v20 = v105;
      if (*&v105 == __PAIR128__(0xED00006574617275, 0x746153726F6C6F63) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        if (!*(v17 + 16))
        {
          goto LABEL_14;
        }

        v21 = specialized __RawDictionaryStorage.find<A>(_:)(0x6F6D417475706E69, 0xEB00000000746E75);
        if ((v22 & 1) == 0)
        {
          goto LABEL_14;
        }

        outlined init with copy of Any(*(v17 + 56) + 32 * v21, &v112);

        if ((swift_dynamicCast() & 1) != 0 && v105.n128_f64[0] != 1.0)
        {
          v112.n128_u64[0] = v105.n128_u64[0];
          _s7SwiftUI14GraphicsFilterOWOi9_(&v112);
LABEL_26:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
          }

          v24 = *(v16 + 2);
          v23 = *(v16 + 3);
          if (v24 >= v23 >> 1)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v16);
          }

          v109 = v115;
          v110 = *v116;
          v111[0] = *&v116[16];
          *(v111 + 12) = *&v116[28];
          v107 = *&v113[16];
          v108 = v114;
          v25 = v112;
          v105 = v112;
          v106 = *v113;
          *(v16 + 2) = v24 + 1;
          v26 = &v16[128 * v24];
          v27 = v106;
          v28 = v108;
          *(v26 + 4) = v107;
          *(v26 + 5) = v28;
          *(v26 + 3) = v27;
          v29 = v109;
          v30 = v110;
          v31 = v111[0];
          *(v26 + 140) = *(v111 + 12);
          *(v26 + 7) = v30;
          *(v26 + 8) = v31;
          *(v26 + 6) = v29;
          *(v26 + 2) = v25;
        }
      }

      else if (*&v20 == __PAIR128__(0xEF7373656E746867, 0x697242726F6C6F63) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        if (!*(v17 + 16))
        {
          goto LABEL_14;
        }

        v32 = specialized __RawDictionaryStorage.find<A>(_:)(0x6F6D417475706E69, 0xEB00000000746E75);
        if ((v33 & 1) == 0)
        {
          goto LABEL_14;
        }

        outlined init with copy of Any(*(v17 + 56) + 32 * v32, &v112);

        if ((swift_dynamicCast() & 1) != 0 && v105.n128_f64[0] != 0.0)
        {
          v112.n128_u64[0] = v105.n128_u64[0];
          _s7SwiftUI14GraphicsFilterOWOi10_(&v112);
          goto LABEL_26;
        }
      }

      else
      {
        if (*&v20 == __PAIR128__(0xEC00000072756C42, 0x6E61697373756167) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          if ((v2 & 0x20) != 0)
          {
            goto LABEL_14;
          }

          if (!*(v17 + 16))
          {
            goto LABEL_14;
          }

          v34 = specialized __RawDictionaryStorage.find<A>(_:)(0x6461527475706E69, 0xEB00000000737569);
          if ((v35 & 1) == 0)
          {
            goto LABEL_14;
          }

          outlined init with copy of Any(*(v17 + 56) + 32 * v34, &v112);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_14;
          }

          v36 = v105.n128_f64[0];
          if (*(v17 + 16) && (v37 = specialized __RawDictionaryStorage.find<A>(_:)(0x7469447475706E69, 0xEB00000000726568), (v38 & 1) != 0) && (outlined init with copy of Any(*(v17 + 56) + 32 * v37, &v112), swift_dynamicCast()))
          {
            v39 = v105.n128_u8[0];
          }

          else
          {
            v39 = 0;
          }

          if (*(v17 + 16) && (v45 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000013, 0x800000018DD7A5A0), (v46 & 1) != 0))
          {
            outlined init with copy of Any(*(v17 + 56) + 32 * v45, &v112);

            if (swift_dynamicCast())
            {
              v47 = v105.n128_u8[0];
              goto LABEL_69;
            }
          }

          else
          {
          }

          v47 = 0;
LABEL_69:
          if (v36 > 0.0)
          {
            v112.n128_f64[0] = v36;
            v112.n128_u8[8] = v47;
            v112.n128_u8[9] = v39;
            _s7SwiftUI14GraphicsFilterOWOi_(&v112);
            goto LABEL_26;
          }

          goto LABEL_15;
        }

        if (*&v20 == __PAIR128__(0xEC00000072756C42, 0x656C626169726176) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          if ((v2 & 0x20) == 0)
          {
            if (*(v17 + 16))
            {
              v40 = specialized __RawDictionaryStorage.find<A>(_:)(0x6461527475706E69, 0xEB00000000737569);
              if (v41)
              {
                outlined init with copy of Any(*(v17 + 56) + 32 * v40, &v112);
                if (swift_dynamicCast())
                {
                  v42 = v105.n128_f64[0];
                  if (v105.n128_f64[0] > 0.0)
                  {
                    if (*(v17 + 16) && (v43 = specialized __RawDictionaryStorage.find<A>(_:)(0x73614D7475706E69, 0xEE006567616D496BLL), (v44 & 1) != 0))
                    {
                      outlined init with copy of Any(*(v17 + 56) + 32 * v43, &v112);
                    }

                    else
                    {
                      v112 = 0u;
                      *v113 = 0u;
                    }

                    v105 = v112;
                    v106 = *v113;
                    if (*&v113[8])
                    {
                      outlined init with take of Any(&v105, v102);
                      type metadata accessor for CGImageRef(0);
                      swift_dynamicCast();
                      v54 = v117[0];
                      if (v117[0])
                      {
                        if (*(v17 + 16) && (v55 = specialized __RawDictionaryStorage.find<A>(_:)(0x7469447475706E69, 0xEB00000000726568), (v56 & 1) != 0) && (outlined init with copy of Any(*(v17 + 56) + 32 * v55, &v112), swift_dynamicCast()))
                        {
                          v95 = v105.n128_u8[0];
                        }

                        else
                        {
                          v95 = 0;
                        }

                        if (*(v17 + 16) && (v61 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000013, 0x800000018DD7A5A0), (v62 & 1) != 0))
                        {
                          outlined init with copy of Any(*(v17 + 56) + 32 * v61, v117);

                          if (swift_dynamicCast())
                          {
                            v63 = v112.n128_u8[0];
                            goto LABEL_122;
                          }
                        }

                        else
                        {
                        }

                        v63 = 0;
LABEL_122:
                        Width = CGImageGetWidth(v54);
                        *&v75 = CGImageGetHeight(v54);
                        v99 = v54;
                        outlined consume of GraphicsImage.Contents?(0, 0xFFu);
                        v105.n128_u8[0] = 1;
                        memset(v102, 0, sizeof(v102));
                        v103 = 0;
                        v104 = 0x80000000;
                        outlined destroy of VariableBlurStyle.Mask(v102);
                        v112.n128_f64[0] = v42 + v42;
                        v112.n128_u8[8] = v63;
                        v112.n128_u8[9] = v95;
                        *v113 = v54;
                        *&v113[8] = xmmword_18DDAB500;
                        *&v113[24] = Width;
                        v114 = v75;
                        v115 = 0uLL;
                        *v116 = 1;
                        memset(&v116[8], 0, 32);
                        *&v116[40] = 65794;
                        _s7SwiftUI14GraphicsFilterOWOi0_(&v112);
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
                        }

                        v77 = *(v16 + 2);
                        v76 = *(v16 + 3);
                        if (v77 >= v76 >> 1)
                        {
                          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), v77 + 1, 1, v16);
                        }

                        v109 = v115;
                        v110 = *v116;
                        v111[0] = *&v116[16];
                        *(v111 + 12) = *&v116[28];
                        v107 = *&v113[16];
                        v108 = v114;
                        v78 = v112;
                        v105 = v112;
                        v106 = *v113;
                        *(v16 + 2) = v77 + 1;
LABEL_127:
                        v79 = &v16[128 * v77];
                        v81 = v106;
                        v80 = v107;
                        *(v79 + 5) = v108;
                        v82 = v109;
                        v83 = v110;
                        v84 = v111[0];
                        *(v79 + 140) = *(v111 + 12);
                        *(v79 + 7) = v83;
                        *(v79 + 8) = v84;
                        *(v79 + 6) = v82;
                        *(v79 + 2) = v78;
                        *(v79 + 3) = v81;
                        *(v79 + 4) = v80;
                        goto LABEL_15;
                      }
                    }
                  }
                }
              }
            }
          }

          goto LABEL_14;
        }

        if (*&v20 != __PAIR128__(0xEC000000726F6C6FLL, 0x4365676172657661) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          if (__PAIR128__(0x800000018DD7A540, 0xD000000000000011) == *&v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            if (*(v17 + 16))
            {
              v48 = specialized __RawDictionaryStorage.find<A>(_:)(0x6F6D417475706E69, 0xEB00000000746E75);
              if (v49)
              {
                outlined init with copy of Any(*(v17 + 56) + 32 * v48, &v112);
                if (swift_dynamicCast())
                {
                  v50 = v105.n128_f64[0];
                  if (*(v17 + 16) && (v51 = specialized __RawDictionaryStorage.find<A>(_:)(0x6C61567475706E69, 0xEB00000000736575), (v52 & 1) != 0))
                  {
                    outlined init with copy of Any(*(v17 + 56) + 32 * v51, v102);

                    _sypSgMaTm_4(0, &lazy cache variable for type metadata for [Double], MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
                    if (swift_dynamicCast())
                    {
                      v53 = v112.n128_u64[0];
                    }

                    else
                    {
                      v53 = 0;
                    }
                  }

                  else
                  {

                    v53 = 0;
                  }

                  v85 = specialized SIMD4<>.init(_:)(v53);
                  v86 = v50;
                  v112 = v85;
                  *v113 = v86;
                  _s7SwiftUI14GraphicsFilterOWOi15_(&v112);
                  goto LABEL_26;
                }
              }
            }

            goto LABEL_14;
          }

          if (*&v20 == __PAIR128__(0xE600000000000000, 0x736576727563) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            if (*(v17 + 16) && (v57 = specialized __RawDictionaryStorage.find<A>(_:)(0x6465527475706E69, 0xEE007365756C6156), (v58 & 1) != 0))
            {
              outlined init with copy of Any(*(v17 + 56) + 32 * v57, &v112);
              _sypSgMaTm_4(0, &lazy cache variable for type metadata for [Double], MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
              v59 = swift_dynamicCast();
              v60 = v105.n128_u64[0];
              if (!v59)
              {
                v60 = 0;
              }

              v97 = v60;
            }

            else
            {
              v97 = 0;
            }

            if (*(v17 + 16) && (v64 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x800000018DD7A560), (v65 & 1) != 0))
            {
              outlined init with copy of Any(*(v17 + 56) + 32 * v64, &v112);
              _sypSgMaTm_4(0, &lazy cache variable for type metadata for [Double], MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
              if (swift_dynamicCast())
              {
                v66 = v105.n128_u64[0];
              }

              else
              {
                v66 = 0;
              }
            }

            else
            {
              v66 = 0;
            }

            if (*(v17 + 16) && (v67 = specialized __RawDictionaryStorage.find<A>(_:)(0x756C427475706E69, 0xEF7365756C615665), (v68 & 1) != 0))
            {
              outlined init with copy of Any(*(v17 + 56) + 32 * v67, &v112);
              _sypSgMaTm_4(0, &lazy cache variable for type metadata for [Double], MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
              if (swift_dynamicCast())
              {
                v69 = v105.n128_u64[0];
              }

              else
              {
                v69 = 0;
              }
            }

            else
            {
              v69 = 0;
            }

            if (*(v17 + 16) && (v70 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x800000018DD7A580), (v71 & 1) != 0))
            {
              outlined init with copy of Any(*(v17 + 56) + 32 * v70, v102);

              _sypSgMaTm_4(0, &lazy cache variable for type metadata for [Double], MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
              if (swift_dynamicCast())
              {
                v72 = v112.n128_u64[0];
              }

              else
              {
                v72 = 0;
              }
            }

            else
            {

              v72 = 0;
            }

            v98 = specialized SIMD4<>.init(_:)(v97);
            v96 = specialized SIMD4<>.init(_:)(v66);
            v94 = specialized SIMD4<>.init(_:)(v69);
            v73 = specialized SIMD4<>.init(_:)(v72);
            v112 = v98;
            *v113 = v96;
            *&v113[16] = v94;
            v114 = v73;
            _s7SwiftUI14GraphicsFilterOWOi16_(&v112);
            goto LABEL_26;
          }

          if (*&v20 == __PAIR128__(0xEB00000000786972, 0x74614D726F6C6F63))
          {
          }

          else
          {
            v87 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v87 & 1) == 0)
            {
LABEL_14:

              goto LABEL_15;
            }
          }

          if (*(v17 + 16))
          {
            v88 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x800000018DD7A4B0);
            if (v89)
            {
              outlined init with copy of Any(*(v17 + 56) + 32 * v88, v117);

              type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSValue, 0x1E696B098);
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_15;
              }

              *(v102 + 4) = 0uLL;
              *(&v102[1] + 4) = 0x3F80000000000000;
              LODWORD(v102[0]) = 1065353216;
              memset(&v102[1] + 12, 0, 20);
              LODWORD(v102[3]) = 1065353216;
              memset(&v102[3] + 4, 0, 20);
              *(&v102[4] + 1) = 1065353216;
              [v101 getValue_];
              if (_ColorMatrix.isIdentity.getter())
              {

                goto LABEL_15;
              }

              *&v113[16] = v102[2];
              v114 = v102[3];
              v115 = v102[4];
              v112 = v102[0];
              *v113 = v102[1];
              v116[0] = 0;
              _s7SwiftUI14GraphicsFilterOWOi5_(&v112);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
              }

              v77 = *(v16 + 2);
              v90 = *(v16 + 3);
              if (v77 >= v90 >> 1)
              {
                v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v90 > 1), v77 + 1, 1, v16);
              }

              v109 = v115;
              v110 = *v116;
              v111[0] = *&v116[16];
              *(v111 + 12) = *&v116[28];
              v107 = *&v113[16];
              v108 = v114;
              v78 = v112;
              v105 = v112;
              v106 = *v113;
              *(v16 + 2) = v77 + 1;
              goto LABEL_127;
            }
          }

          goto LABEL_14;
        }

        if ((v2 & 0x20) == 0)
        {
          _s7SwiftUI14GraphicsFilterOWOi22_(&v112);
          goto LABEL_26;
        }
      }

LABEL_15:
      v15 += 8;
      if (!--v14)
      {
        goto LABEL_148;
      }
    }
  }

LABEL_147:
  v16 = MEMORY[0x1E69E7CC0];
LABEL_148:

  if (!*(v16 + 2))
  {
    goto LABEL_11;
  }

  v91 = one-time initialization token for normal;

  if (v91 != -1)
  {
    swift_once();
  }

  v92 = static GraphicsBlendMode.normal;
  v93 = byte_1ED52F818;
  outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);

  _sypSgMaTm_4(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Material.Layer>, &type metadata for Material.Layer, MEMORY[0x1E69E6F90]);
  result = swift_allocObject();
  *(result + 16) = xmmword_18DDA6EB0;
  *(result + 32) = v100;
  *(result + 40) = xmmword_18DDCA9F0;
  *(result + 56) = v16;
  *(result + 64) = 1;
  *(result + 68) = 1065353216;
  *(result + 72) = v92;
  *(result + 80) = v93;
  return result;
}

__n128 specialized SIMD4<>.init(_:)(uint64_t a1)
{
  result.n128_u64[0] = 0;
  if (a1)
  {
    if (*(a1 + 16) == 4)
    {
      v2 = *(a1 + 32);
      v3 = *(a1 + 48);

      result.n128_u64[0] = vcvt_hight_f32_f64(vcvt_f32_f64(v2), v3).u64[0];
    }

    else
    {

      return xmmword_18DDBDEB0;
    }
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, unint64_t a2)
{
  v4 = HIDWORD(a2);
  Hasher.init(_seed:)();
  Material.ID.hash(into:)(v7);
  Hasher._combine(_:)(v4);
  v5 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2 & 0xFFFFFFFF000000FFLL, v5);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = a2;
    v8 = HIDWORD(a2);
    v9 = ~v4;
    do
    {
      v10 = *(v3 + 48) + 16 * v5;
      v11 = *(v10 + 12);
      v12 = *(v10 + 8);
      v17 = *v10;
      v18 = v12;
      v15 = a1;
      v16 = v6;
      outlined copy of Material.ID(v17, v12);
      outlined copy of Material.ID(a1, v6);
      v13 = specialized static Material.ID.== infix(_:_:)(&v17, &v15);
      outlined consume of Material.ID(v15, v16);
      outlined consume of Material.ID(v17, v18);
      if ((v13 & (v11 == v8)) == 1)
      {
        break;
      }

      v5 = (v5 + 1) & v9;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void type metadata accessor for _DictionaryStorage<Material.ResolvedMaterial, [Material.Layer]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<Material.ResolvedMaterial, [Material.Layer]>)
  {
    type metadata accessor for _ContiguousArrayStorage<Any>(255, &lazy cache variable for type metadata for [Material.Layer], &type metadata for Material.Layer, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type Material.ResolvedMaterial and conformance Material.ResolvedMaterial();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<Material.ResolvedMaterial, [Material.Layer]>);
    }
  }
}

void lazy protocol witness table accessor for type Material.ResolvedMaterial and conformance Material.ResolvedMaterial()
{
  if (!lazy protocol witness table cache variable for type Material.ResolvedMaterial and conformance Material.ResolvedMaterial)
  {
    swift_getWitnessTable(protocol conformance descriptor for Material.ResolvedMaterial, &type metadata for Material.ResolvedMaterial, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Material.ResolvedMaterial and conformance Material.ResolvedMaterial);
  }
}

{
  if (!lazy protocol witness table cache variable for type Material.ResolvedMaterial and conformance Material.ResolvedMaterial)
  {
    swift_getWitnessTable(protocol conformance descriptor for Material.ResolvedMaterial, &type metadata for Material.ResolvedMaterial, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Material.ResolvedMaterial and conformance Material.ResolvedMaterial);
  }
}

__n128 _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA9RectangleVAA15ForegroundStyleVGG_Tt1B5Tm@<Q0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, unint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, a2, a3, &protocol witness table for LeafLayoutEngine<A>, type metadata accessor for TracingLayoutEngineBox);
    v10 = swift_allocObject();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v12 = CurrentAttribute == *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v13 = 0;
    }

    else
    {
      v13 = CurrentAttribute;
    }

    *(v10 + 188) = v13;
    *(v10 + 192) = v12;
  }

  else
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, a4, a3, &protocol witness table for LeafLayoutEngine<A>, type metadata accessor for LayoutEngineBox);
    v10 = swift_allocObject();
  }

  v14 = *(a1 + 144);
  *(v10 + 144) = *(a1 + 128);
  *(v10 + 160) = v14;
  *(v10 + 169) = *(a1 + 153);
  v15 = *(a1 + 80);
  *(v10 + 80) = *(a1 + 64);
  *(v10 + 96) = v15;
  v16 = *(a1 + 112);
  *(v10 + 112) = *(a1 + 96);
  *(v10 + 128) = v16;
  v17 = *(a1 + 16);
  *(v10 + 16) = *a1;
  *(v10 + 32) = v17;
  result = *(a1 + 48);
  *(v10 + 48) = *(a1 + 32);
  *(v10 + 64) = result;
  *a5 = v10;
  a5[1] = 0;
  return result;
}

void *sub_18D3320AC@<X0>(uint64_t *a1@<X8>)
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI16ScrollTargetRoleV0G0O_SayAC20ScrollableCollection_pGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

unsigned __int8 *closure #1 in ScrollTargetRole.SetLayout.value.getter(void *a1, unint64_t a2)
{
  type metadata accessor for ScrollTargetRole.Role?();
  result = AGGraphGetValue();
  v5 = *result;
  if (v5 == 2)
  {
    return result;
  }

  type metadata accessor for ScrollableCollection();
  Value = AGGraphGetValue();
  outlined init with copy of AnyTrackedValue(Value, v21);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *a1;
  v20 = *a1;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v5 & 1);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  if (v8[3] >= v13)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *a1 = v8;
      if (v9)
      {
        goto LABEL_10;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      v8 = v20;
      *a1 = v20;
      if (v14)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    specialized _NativeDictionary._insert(at:key:value:)(v10, v5 & 1, MEMORY[0x1E69E7CC0], v8);
    goto LABEL_10;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, isUniquelyReferenced_nonNull_native);
  v8 = v20;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(v5 & 1);
  if ((v14 & 1) != (v16 & 1))
  {
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v15;
  *a1 = v20;
  if ((v14 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  v2 = v8[7];
  a1 = *(v2 + 8 * v10);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 8 * v10) = a1;
  if ((v17 & 1) == 0)
  {
LABEL_16:
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2] + 1, 1, a1);
    *(v2 + 8 * v10) = a1;
  }

  v19 = a1[2];
  v18 = a1[3];
  if (v19 >= v18 >> 1)
  {
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, a1);
    *(v2 + 8 * v10) = a1;
  }

  a1[2] = v19 + 1;
  return outlined init with take of AnyTrackedValue(v21, &a1[5 * v19 + 4]);
}

void type metadata accessor for ScrollTargetRole.Role?()
{
  if (!lazy cache variable for type metadata for ScrollTargetRole.Role?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ScrollTargetRole.Role?);
    }
  }
}

unint64_t type metadata accessor for ScrollableCollection()
{
  result = lazy cache variable for type metadata for ScrollableCollection;
  if (!lazy cache variable for type metadata for ScrollableCollection)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ScrollableCollection);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1 & 1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1 & 1, v2);
}

{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1 & 1, v2);
}

void type metadata accessor for _DictionaryStorage<ScrollTargetRole.Role, [ScrollableCollection]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ScrollTargetRole.Role, [ScrollableCollection]>)
  {
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(255, &lazy cache variable for type metadata for [ScrollableCollection], &lazy cache variable for type metadata for ScrollableCollection, &protocol descriptor for ScrollableCollection, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type ScrollTargetRole.Role and conformance ScrollTargetRole.Role();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<ScrollTargetRole.Role, [ScrollableCollection]>);
    }
  }
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2 & 1;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

double destroy for ShaderFunction(id *a1)
{

  return result;
}

uint64_t View.layerEffect(_:maxSampleOffset:isEnabled:)(__int128 *a1, char a2, double a3, double a4)
{
  v4 = *a1;
  v7 = *a1;
  v8 = a1[1];
  *v9 = *(a1 + 8);
  *&v9[8] = a3;
  *&v9[16] = a4;
  v9[24] = a2;
  View.modifier<A>(_:)();
  v10[0] = v7;
  v10[1] = v8;
  v11[0] = *v9;
  *(v11 + 9) = *&v9[9];
  v5 = v4;

  return outlined destroy of _ShaderFilterEffect(v10);
}

uint64_t initializeWithCopy for _ShaderFilterEffect(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v6 = v3;

  return a1;
}

double destroy for Shader(id *a1)
{

  return result;
}

double View.monospaced(_:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  KeyPath = swift_getKeyPath();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  View.transformEnvironment<A>(_:transform:)(KeyPath, a5, v9, a2);

  return result;
}

uint64_t getEnumTagSinglePayload for SDFStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x76 && *(a1 + 8))
  {
    return (*a1 + 118);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x75)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t getEnumTag for ScrapeableContent.Content(void *a1)
{
  v1 = *a1 >> 60;
  if (v1 <= 8)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 9;
  }
}

void *destructiveInjectEnumTag for ScrapeableContent.Content(void *result, uint64_t a2)
{
  if (a2 < 9)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 60);
  }

  else
  {
    *result = (8 * (a2 - 9)) | 0x9000000000000000;
  }

  return result;
}

void type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(255);
    v3 = v2;
    _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_0(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
    v6 = type metadata accessor for AnimatorState(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>);
    }
  }
}

void SpringAnimation.function.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  SpringModel.duration(epsilon:)(0.001);
  *a1 = v7;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = 5;
}

uint64_t specialized AnimatorState.update(_:at:environment:)(float64x2_t *a1, unint64_t a2, double a3)
{
  v4 = v3;
  v7 = *(v3 + 72);
  v8 = *(v3 + 80);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_20;
  }

  if (*(v3 + 125) <= 1u)
  {
    if (!*(v3 + 125))
    {
      *(v3 + 64) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 125) = v10;
      goto LABEL_11;
    }

    *(v3 + 125) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 80) = v8 - *(v3 + 64) + a3;
    *(v3 + 64) = a3;
LABEL_20:
    swift_beginAccess();
    v33 = vaddq_f64(*(v3 + 104), a1[1]);
    v35 = vaddq_f64(*(v3 + 88), *a1);
    swift_beginAccess();
    result = 0;
    v31 = vsubq_f64(v33, *(v3 + 48));
    *a1 = vsubq_f64(v35, *(v3 + 32));
    a1[1] = v31;
    return result;
  }

  if (*(v3 + 125) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 64))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 64) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = a3 - *(v3 + 64);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 144);

  v40[0] = v14;
  v40[1] = AGCreateWeakAttribute();
  v41 = 0;
  v42 = v15;
  v16 = *(v4 + 152);
  if (v16 != 0.0)
  {
    v17 = *(v4 + 160);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>(0);
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>, MEMORY[0x1E69E6720]);
    v38.f64[1] = v20;
    v37.f64[0] = v16;
    v37.f64[1] = v17;
    specialized Dictionary.subscript.setter(&v37, v19);
  }

  swift_beginAccess();
  v21 = *(v4 + 16);
  swift_beginAccess();
  v22 = *(v4 + 48);
  v36[0] = *(v4 + 32);
  v36[1] = v22;
  v23 = *(*v21 + 120);
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  v25 = v24;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
  v27 = v26;

  v23(&v37, v36, v40, v25, v27, v13);

  if (v39)
  {

    return 1;
  }

  else
  {
    v32 = v37;
    v34 = v38;
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v42, a2 | ((HIDWORD(a2) & 1) << 32), v13);
    *(v4 + 24) = v40[0];

    v29 = vsubq_f64(vaddq_f64(v34, a1[1]), *(v4 + 48));
    *a1 = vsubq_f64(vaddq_f64(v32, *a1), *(v4 + 32));
    a1[1] = v29;
    swift_beginAccess();
    *(v4 + 88) = v32;
    *(v4 + 104) = v34;
    *(v4 + 80) = a3;
    v30 = *(v4 + 72);
    if (v30 > 0.0)
    {
      *(v4 + 80) = v30 * (round(a3 / v30) + 1.0);
    }

    return 0;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 56);
  v8 = *(v3 + 64);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_20;
  }

  if (*(v3 + 93) <= 1u)
  {
    if (!*(v3 + 93))
    {
      *(v3 + 48) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 93) = v10;
      goto LABEL_11;
    }

    *(v3 + 93) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 64) = v8 - *(v3 + 48) + a3;
    *(v3 + 48) = a3;
LABEL_20:
    swift_beginAccess();
    v32 = vaddq_f64(*(v3 + 72), *a1);
    swift_beginAccess();
    result = 0;
    *a1 = vsubq_f64(v32, *(v3 + 32));
    return result;
  }

  if (*(v3 + 93) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 48))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 48) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = a3 - *(v3 + 48);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 112);

  v37[0] = v14;
  v37[1] = AGCreateWeakAttribute();
  v38 = 0;
  v39 = v15;
  v16 = *(v4 + 120);
  if (v16)
  {
    v17 = *(v4 + 128);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, CGFloat>>(0);
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, CGFloat>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, CGFloat>>, MEMORY[0x1E69E6720]);
    v33[3] = v20;
    v33[0] = v16;
    v33[1] = v17;
    specialized Dictionary.subscript.setter(v33, v19);
  }

  swift_beginAccess();
  v21 = *(v4 + 16);
  swift_beginAccess();
  v36 = *(v4 + 32);
  v22 = *(*v21 + 120);
  type metadata accessor for AnimatablePair<CGFloat, CGFloat>(0);
  v24 = v23;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>, protocol conformance descriptor for AnimatablePair<A, B>);
  v26 = v25;

  v22(v34, &v36, v37, v24, v26, v13);

  if (v35)
  {

    return 1;
  }

  else
  {
    v28 = *v34;
    v29 = *&v34[1];
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v39, a2 | ((HIDWORD(a2) & 1) << 32), v13);
    *(v4 + 24) = v37[0];

    v30 = v29 + a1->f64[1] - *(v4 + 40);
    a1->f64[0] = v28 + a1->f64[0] - *(v4 + 32);
    a1->f64[1] = v30;
    swift_beginAccess();
    *(v4 + 72) = v28;
    *(v4 + 80) = v29;
    *(v4 + 64) = a3;
    v31 = *(v4 + 56);
    if (v31 > 0.0)
    {
      *(v4 + 64) = v31 * (round(a3 / v31) + 1.0);
    }

    return 0;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 104);
  v8 = *(v3 + 112);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_20;
  }

  if (*(v3 + 189) <= 1u)
  {
    if (!*(v3 + 189))
    {
      *(v3 + 96) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 189) = v10;
      goto LABEL_11;
    }

    *(v3 + 189) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 112) = v8 - *(v3 + 96) + a3;
    *(v3 + 96) = a3;
LABEL_20:
    swift_beginAccess();
    v44 = vaddq_f64(*(v3 + 136), a1[1]);
    v46 = vaddq_f64(*(v3 + 120), *a1);
    v40 = vaddq_f64(*(v3 + 168), a1[3]);
    v42 = vaddq_f64(*(v3 + 152), a1[2]);
    swift_beginAccess();
    result = 0;
    v36 = *(v3 + 64);
    v37 = *(v3 + 80);
    v38 = vsubq_f64(v44, *(v3 + 48));
    *a1 = vsubq_f64(v46, *(v3 + 32));
    a1[1] = v38;
    a1[2] = vsubq_f64(v42, v36);
    a1[3] = vsubq_f64(v40, v37);
    return result;
  }

  if (*(v3 + 189) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 96))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 96) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = a3 - *(v3 + 96);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 208);

  v53[0] = v14;
  v53[1] = AGCreateWeakAttribute();
  v54 = 0;
  v55 = v15;
  v16 = *(v4 + 216);
  if (v16 != 0.0)
  {
    v17 = *(v4 + 224);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>(0);
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>, MEMORY[0x1E69E6720]);
    v49.f64[1] = v20;
    v48.f64[0] = v16;
    v48.f64[1] = v17;
    specialized Dictionary.subscript.setter(&v48, v19);
  }

  swift_beginAccess();
  v21 = *(v4 + 16);
  swift_beginAccess();
  v22 = *(v4 + 48);
  v47[0] = *(v4 + 32);
  v47[1] = v22;
  v23 = *(v4 + 80);
  v47[2] = *(v4 + 64);
  v47[3] = v23;
  v24 = *(*v21 + 120);
  type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>(0);
  v26 = v25;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>, protocol conformance descriptor for AnimatablePair<A, B>);
  v28 = v27;

  v24(&v48, v47, v53, v26, v28, v13);

  if (v52)
  {

    return 1;
  }

  else
  {
    v43 = v51;
    v45 = v49;
    v39 = v50;
    v41 = v48;
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v55, a2 | ((HIDWORD(a2) & 1) << 32), v13);
    *(v4 + 24) = v53[0];

    v30 = vaddq_f64(v39, a1[2]);
    v31 = vaddq_f64(v43, a1[3]);
    v32 = *(v4 + 64);
    v33 = *(v4 + 80);
    v34 = vsubq_f64(vaddq_f64(v45, a1[1]), *(v4 + 48));
    *a1 = vsubq_f64(vaddq_f64(v41, *a1), *(v4 + 32));
    a1[1] = v34;
    a1[2] = vsubq_f64(v30, v32);
    a1[3] = vsubq_f64(v31, v33);
    swift_beginAccess();
    *(v4 + 120) = v41;
    *(v4 + 136) = v45;
    *(v4 + 152) = v39;
    *(v4 + 168) = v43;
    *(v4 + 112) = a3;
    v35 = *(v4 + 104);
    if (v35 > 0.0)
    {
      *(v4 + 112) = v35 * (round(a3 / v35) + 1.0);
    }

    return 0;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 64);
  v8 = *(v3 + 72);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_20;
  }

  if (*(v3 + 109) <= 1u)
  {
    if (!*(v3 + 109))
    {
      *(v3 + 56) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 109) = v10;
      goto LABEL_11;
    }

    *(v3 + 109) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 72) = v8 - *(v3 + 56) + a3;
    *(v3 + 56) = a3;
LABEL_20:
    swift_beginAccess();
    v36 = *(v3 + 96) + a1[1].f64[0];
    v38 = vaddq_f64(*(v3 + 80), *a1);
    swift_beginAccess();
    result = 0;
    v37 = *(v3 + 48);
    *a1 = vsubq_f64(v38, *(v3 + 32));
    a1[1].f64[0] = v36 - v37;
    return result;
  }

  if (*(v3 + 109) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 56))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 56) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = a3 - *(v3 + 56);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 128);

  v45[0] = v14;
  v45[1] = AGCreateWeakAttribute();
  v46 = 0;
  v47 = v15;
  v16 = *(v4 + 136);
  if (v16 != 0.0)
  {
    v17 = *(v4 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>(0);
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>, MEMORY[0x1E69E6720]);
    v42 = v20;
    v39 = v16;
    v40 = v17;
    specialized Dictionary.subscript.setter(&v39, v19);
  }

  swift_beginAccess();
  v21 = *(v4 + 16);
  swift_beginAccess();
  v22 = *(v4 + 48);
  v43 = *(v4 + 32);
  v44 = v22;
  v23 = *(*v21 + 120);
  type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>(0);
  v25 = v24;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
  v27 = v26;

  v23(&v39, &v43, v45, v25, v27, v13);

  if (v42)
  {

    return 1;
  }

  else
  {
    v29 = v39;
    v30 = v40;
    v31 = v41;
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v47, a2 | ((HIDWORD(a2) & 1) << 32), v13);
    *(v4 + 24) = v45[0];

    v32 = v31 + a1[1].f64[0];
    v33 = *(v4 + 48);
    v34 = v30 + a1->f64[1] - *(v4 + 40);
    a1->f64[0] = v29 + a1->f64[0] - *(v4 + 32);
    a1->f64[1] = v34;
    a1[1].f64[0] = v32 - v33;
    swift_beginAccess();
    *(v4 + 88) = v30;
    *(v4 + 96) = v31;
    *(v4 + 72) = a3;
    *(v4 + 80) = v29;
    v35 = *(v4 + 64);
    if (v35 > 0.0)
    {
      *(v4 + 72) = v35 * (round(a3 / v35) + 1.0);
    }

    return 0;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 72);
  v8 = *(v3 + 80);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_20;
  }

  if (*(v3 + 125) <= 1u)
  {
    if (!*(v3 + 125))
    {
      *(v3 + 64) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 125) = v10;
      goto LABEL_11;
    }

    *(v3 + 125) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 80) = v8 - *(v3 + 64) + a3;
    *(v3 + 64) = a3;
LABEL_20:
    swift_beginAccess();
    v31 = vaddq_f64(*(v3 + 104), a1[1]);
    v33 = vaddq_f64(*(v3 + 88), *a1);
    swift_beginAccess();
    result = 0;
    v29 = vsubq_f64(v31, *(v3 + 48));
    *a1 = vsubq_f64(v33, *(v3 + 32));
    a1[1] = v29;
    return result;
  }

  if (*(v3 + 125) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 64))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 64) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = a3 - *(v3 + 64);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 144);

  v34[0] = v14;
  v34[1] = AGCreateWeakAttribute();
  v35 = 0;
  v36 = v15;
  v16 = *(v4 + 152);
  if (v16 != 0.0)
  {
    v17 = *(v4 + 160);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>(0);
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>, MEMORY[0x1E69E6720]);
    v38.f64[1] = v20;
    v37.f64[0] = v16;
    v37.f64[1] = v17;
    specialized Dictionary.subscript.setter(&v37, v19);
  }

  swift_beginAccess();
  v21 = *(v4 + 16);
  swift_beginAccess();
  v22 = *(v4 + 32);
  v23 = *(v4 + 40);
  v24 = *(v4 + 48);
  v25 = *(v4 + 56);

  specialized Animation.animate<A>(value:time:context:)(v34, v21, &v37, v22, v23, v24, v25, v13);
  v30 = v37;
  v32 = v38;

  if (v39)
  {

    return 1;
  }

  else
  {
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v36, a2 | ((HIDWORD(a2) & 1) << 32), v13);
    *(v4 + 24) = v34[0];

    v27 = vsubq_f64(vaddq_f64(v32, a1[1]), *(v4 + 48));
    *a1 = vsubq_f64(vaddq_f64(v30, *a1), *(v4 + 32));
    a1[1] = v27;
    swift_beginAccess();
    *(v4 + 88) = v30;
    *(v4 + 104) = v32;
    *(v4 + 80) = a3;
    v28 = *(v4 + 72);
    if (v28 > 0.0)
    {
      *(v4 + 80) = v28 * (round(a3 / v28) + 1.0);
    }

    return 0;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 64);
  v8 = *(v3 + 72);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_20;
  }

  if (*(v3 + 109) <= 1u)
  {
    if (!*(v3 + 109))
    {
      *(v3 + 56) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 109) = v10;
      goto LABEL_11;
    }

    *(v3 + 109) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 72) = v8 - *(v3 + 56) + a3;
    *(v3 + 56) = a3;
LABEL_20:
    swift_beginAccess();
    v37 = *(v3 + 96) + a1[1].f64[0];
    v39 = vaddq_f64(*(v3 + 80), *a1);
    swift_beginAccess();
    result = 0;
    v38 = *(v3 + 48);
    *a1 = vsubq_f64(v39, *(v3 + 32));
    a1[1].f64[0] = v37 - v38;
    return result;
  }

  if (*(v3 + 109) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 56))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 56) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = a3 - *(v3 + 56);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 128);

  v41[0] = v14;
  v41[1] = AGCreateWeakAttribute();
  v42 = 0;
  v43 = v15;
  v16 = *(v4 + 136);
  if (v16)
  {
    v17 = *(v4 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>(0);
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>, MEMORY[0x1E69E6720]);
    v40[3] = v20;
    v40[0] = v16;
    v40[1] = v17;
    specialized Dictionary.subscript.setter(v40, v19);
  }

  swift_beginAccess();
  v21 = *(v4 + 16);
  swift_beginAccess();
  v22 = *(v4 + 32);
  v23 = *(v4 + 40);
  v24 = *(v4 + 48);

  v25 = COERCE_DOUBLE(specialized Animation.animate<A>(value:time:context:)(v41, v21, v22, v23, v24, v13));
  v27 = v26;
  v29 = v28;
  v31 = v30;

  if (v31)
  {

    return 1;
  }

  else
  {
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v43, a2 | ((HIDWORD(a2) & 1) << 32), v13);
    *(v4 + 24) = v41[0];

    v33 = a1[1].f64[0] + v29;
    v34 = *(v4 + 48);
    v35 = a1->f64[1] + v27 - *(v4 + 40);
    a1->f64[0] = a1->f64[0] + v25 - *(v4 + 32);
    a1->f64[1] = v35;
    a1[1].f64[0] = v33 - v34;
    swift_beginAccess();
    *(v4 + 80) = v25;
    *(v4 + 88) = v27;
    *(v4 + 96) = v29;
    *(v4 + 72) = a3;
    v36 = *(v4 + 64);
    if (v36 > 0.0)
    {
      *(v4 + 72) = v36 * (round(a3 / v36) + 1.0);
    }

    return 0;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 96);
  v8 = *(v3 + 104);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_19;
  }

  if (*(v3 + 169) <= 1u)
  {
    if (!*(v3 + 169))
    {
      *(v3 + 88) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 169) = v10;
      goto LABEL_11;
    }

    *(v3 + 169) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 104) = v8 - *(v3 + 88) + a3;
    *(v3 + 88) = a3;
LABEL_19:
    swift_beginAccess();
    v32 = *(v3 + 152);
    v33 = *(v3 + 156);
    v34 = *(v3 + 160);
    v71.f64[0] = *(v3 + 144);
    LOBYTE(v71.f64[1]) = v32;
    HIDWORD(v71.f64[1]) = v33;
    v58 = vaddq_f64(*(v3 + 112), *a1);
    v60 = vaddq_f64(*(v3 + 128), a1[1]);
    LOBYTE(v72.f64[0]) = v34;
    ResolvedGradientVector.add(_:scaledBy:)(&v71, 1.0);
    swift_beginAccess();
    v35 = *(v3 + 64);
    v36 = *(v3 + 72);
    v37 = *(v3 + 76);
    v38 = *(v3 + 80);
    v39 = vsubq_f64(v60, *(v3 + 48));
    *a1 = vsubq_f64(v58, *(v3 + 32));
    a1[1] = v39;
    v67.f64[0] = v35;
    LOBYTE(v67.f64[1]) = v36;
    HIDWORD(v67.f64[1]) = v37;
    LOBYTE(v68.f64[0]) = v38;
    ResolvedGradientVector.add(_:scaledBy:)(&v67, -1.0);
    return 0;
  }

  if (*(v3 + 169) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 88))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 88) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = *(v3 + 88);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 192);

  v80[0] = v14;
  v80[1] = AGCreateWeakAttribute();
  v81 = 0;
  v82 = v15;
  v16 = *(v4 + 200);
  if (v16)
  {
    v17 = *(v4 + 208);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>(0);
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>, MEMORY[0x1E69E6720]);
    *(&v77 + 1) = v20;
    *&v76 = v16;
    *(&v76 + 1) = v17;
    specialized Dictionary.subscript.setter(&v76, v19);
  }

  v21 = a3 - v13;
  swift_beginAccess();
  v22 = *(v4 + 16);
  swift_beginAccess();
  v23 = *(v4 + 48);
  v76 = *(v4 + 32);
  v77 = v23;
  v25 = *(v4 + 32);
  v24 = *(v4 + 48);
  v78 = *(v4 + 64);
  v79 = *(v4 + 80);
  v67 = v25;
  v68 = v24;
  v69 = *(v4 + 64);
  v70 = *(v4 + 80);
  type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>(0);
  if (v26 == MEMORY[0x1E69E63B0])
  {
    *v62 = v67.f64[0];
    v31 = *(*v22 + 120);

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v76, &v63, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
    v31(&v63, v62, v80, MEMORY[0x1E69E63B0], &protocol witness table for Double, v21);
    v71.f64[0] = v63.f64[0];
    LOBYTE(v71.f64[1]) = LOBYTE(v63.f64[1]);
  }

  else
  {
    v27 = v26;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v27 == v28)
    {
      v41 = v28;
      v62[0] = v67;
      v62[1] = v68;
      v42 = *(*v22 + 120);

      _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v76, &v63, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
      v42(&v63, v62, v80, v41, v43, v21);
      v71 = v63;
      v72 = v64;
      LOBYTE(v73) = v65;
    }

    else
    {
      v29 = *(*v22 + 120);

      _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v76, &v63, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>, protocol conformance descriptor for AnimatablePair<A, B>);
      v29(&v71, &v67, v80, v27, v30, v21);
    }
  }

  outlined destroy of Slice<IndexSet>(&v76, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
  v44 = v73;
  if (v73 == 0.0)
  {

    return 1;
  }

  else
  {
    v45 = v74;
    v46 = v75;
    v47 = HIDWORD(v74);
    v59 = v72;
    v61 = v71;
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v82, a2 | ((HIDWORD(a2) & 1) << 32), v21);
    *(v4 + 24) = v80[0];

    v56 = vaddq_f64(*a1, v61);
    v57 = vaddq_f64(a1[1], v59);
    v67.f64[0] = v44;
    LOBYTE(v67.f64[1]) = v45;
    HIDWORD(v67.f64[1]) = v47;
    LOBYTE(v68.f64[0]) = v46 & 1;
    ResolvedGradientVector.add(_:scaledBy:)(&v67, 1.0);
    v48 = *(v4 + 64);
    v49 = *(v4 + 72);
    v50 = *(v4 + 76);
    v51 = *(v4 + 80);
    v52 = vsubq_f64(v57, *(v4 + 48));
    *a1 = vsubq_f64(v56, *(v4 + 32));
    a1[1] = v52;
    v67.f64[0] = v48;
    LOBYTE(v67.f64[1]) = v49;
    HIDWORD(v67.f64[1]) = v50;
    LOBYTE(v68.f64[0]) = v51;
    ResolvedGradientVector.add(_:scaledBy:)(&v67, -1.0);
    swift_beginAccess();
    v53 = *(v4 + 128);
    v63 = *(v4 + 112);
    v54 = *(v4 + 144);
    v64 = v53;
    v65 = v54;
    v66 = *(v4 + 160);
    v67 = v61;
    v68 = v59;
    *&v69 = v44;
    *(&v69 + 1) = v45;
    v70 = v46;
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v67, v62, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
    *(v4 + 112) = v61;
    *(v4 + 128) = v59;
    *(v4 + 144) = v44;
    *(v4 + 152) = v45;
    *(v4 + 160) = v46;
    outlined destroy of Slice<IndexSet>(&v63, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
    *(v4 + 104) = a3;
    v55 = *(v4 + 96);

    if (v55 > 0.0)
    {
      *(v4 + 104) = (round(a3 / v55) + 1.0) * *(v4 + 96);
    }

    return 0;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 96);
  v8 = *(v3 + 104);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_19;
  }

  if (*(v3 + 173) <= 1u)
  {
    if (!*(v3 + 173))
    {
      *(v3 + 88) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 173) = v10;
      goto LABEL_11;
    }

    *(v3 + 173) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 104) = v8 - *(v3 + 88) + a3;
    *(v3 + 88) = a3;
LABEL_19:
    swift_beginAccess();
    v32 = *(v3 + 136);
    v33 = *(v3 + 140);
    v34 = *(v3 + 144);
    v35 = *(v3 + 152);
    v36 = *(v3 + 160);
    *&v83 = *(v3 + 128);
    BYTE8(v83) = v32;
    HIDWORD(v83) = v33;
    v74 = vaddq_f64(*(v3 + 112), *a1);
    v84[0] = v34;
    ResolvedGradientVector.add(_:scaledBy:)(&v83, 1.0);
    v37 = v35 + a1[2].f64[1];
    v38 = v36 + a1[3].f64[0];
    swift_beginAccess();
    v39 = *(v3 + 48);
    v40 = *(v3 + 56);
    v41 = *(v3 + 60);
    v42 = *(v3 + 64);
    v43 = *(v3 + 72);
    v44 = *(v3 + 80);
    *a1 = vsubq_f64(v74, *(v3 + 32));
    *&v81 = v39;
    BYTE8(v81) = v40;
    HIDWORD(v81) = v41;
    v82[0] = v42;
    ResolvedGradientVector.add(_:scaledBy:)(&v81, -1.0);
    result = 0;
    a1[2].f64[1] = v37 - v43;
    a1[3].f64[0] = v38 - v44;
    return result;
  }

  if (*(v3 + 173) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 88))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 88) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = *(v3 + 88);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 192);

  v90[0] = v14;
  v90[1] = AGCreateWeakAttribute();
  v91 = 0;
  v92 = v15;
  v16 = *(v4 + 200);
  if (v16)
  {
    v17 = *(v4 + 208);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>(0);
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>, MEMORY[0x1E69E6720]);
    *(&v87 + 1) = v20;
    *&v86 = v16;
    *(&v86 + 1) = v17;
    specialized Dictionary.subscript.setter(&v86, v19);
  }

  v21 = a3 - v13;
  swift_beginAccess();
  v22 = *(v4 + 16);
  swift_beginAccess();
  v23 = *(v4 + 48);
  v86 = *(v4 + 32);
  v87 = v23;
  v25 = *(v4 + 32);
  v24 = *(v4 + 48);
  v88 = *(v4 + 64);
  v89 = *(v4 + 80);
  v81 = v25;
  *v82 = v24;
  *&v82[16] = *(v4 + 64);
  *&v82[32] = *(v4 + 80);
  type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v26 == MEMORY[0x1E69E63B0])
  {
    *&v76[0] = v81;
    v31 = *(*v22 + 120);

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v86, &v77, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
    v31(&v77, v76, v90, MEMORY[0x1E69E63B0], &protocol witness table for Double, v21);
    *&v83 = v77;
    BYTE8(v83) = BYTE8(v77);
  }

  else
  {
    v27 = v26;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v27 == v28)
    {
      v46 = v28;
      v76[0] = v81;
      v76[1] = *v82;
      v47 = *(*v22 + 120);

      _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v86, &v77, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
      v47(&v77, v76, v90, v46, v48, v21);
      v83 = v77;
      *v84 = v78;
      v84[16] = v79;
    }

    else
    {
      v29 = *(*v22 + 120);

      _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v86, &v77, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
      v29(&v83, &v81, v90, v27, v30, v21);
    }
  }

  outlined destroy of Slice<IndexSet>(&v86, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
  v49 = *v84;
  if (*v84)
  {
    v50 = v83;
    v51 = v84[16];
    v72 = *&v84[21];
    v70 = v84[23];
    v71 = *&v84[17];
    v52 = a2 | ((HIDWORD(a2) & 1) << 32);
    v53 = v83;
    v73 = *&v84[8];
    v75 = v85;
    v54 = v84[8];
    v55 = HIDWORD(*&v84[8]);
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v92, v52, v21);
    *(v4 + 24) = v90[0];

    v56 = a1->f64[0] + *&v53;
    v57 = a1->f64[1] + *(&v53 + 1);
    *&v81 = v49;
    BYTE8(v81) = v54;
    HIDWORD(v81) = v55;
    v82[0] = v51 & 1;
    ResolvedGradientVector.add(_:scaledBy:)(&v81, 1.0);
    v58 = a1[2].f64[1] + v75.f64[0];
    v59 = a1[3].f64[0] + v75.f64[1];
    v60 = *(v4 + 48);
    v61 = *(v4 + 56);
    v62 = *(v4 + 60);
    v63 = *(v4 + 64);
    v64 = *(v4 + 72);
    v65 = *(v4 + 80);
    v66 = v57 - *(v4 + 40);
    a1->f64[0] = v56 - *(v4 + 32);
    a1->f64[1] = v66;
    *&v81 = v60;
    BYTE8(v81) = v61;
    HIDWORD(v81) = v62;
    v82[0] = v63;
    ResolvedGradientVector.add(_:scaledBy:)(&v81, -1.0);
    a1[2].f64[1] = v58 - v64;
    a1[3].f64[0] = v59 - v65;
    swift_beginAccess();
    v67 = *(v4 + 128);
    v77 = *(v4 + 112);
    v68 = *(v4 + 144);
    v78 = v67;
    v79 = v68;
    v80 = *(v4 + 160);
    v81 = v50;
    *v82 = v49;
    *&v82[24] = v75;
    *&v82[8] = v73;
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v81, v76, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
    *(v4 + 112) = v50;
    *(v4 + 128) = v49;
    *(v4 + 136) = v73;
    *(v4 + 144) = v51;
    *(v4 + 151) = v70;
    *(v4 + 149) = v72;
    *(v4 + 145) = v71;
    *(v4 + 152) = v75;
    outlined destroy of Slice<IndexSet>(&v77, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
    *(v4 + 104) = a3;
    v69 = *(v4 + 96);

    if (v69 > 0.0)
    {
      *(v4 + 104) = (round(a3 / v69) + 1.0) * *(v4 + 96);
    }

    return 0;
  }

  else
  {

    return 1;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 96);
  v8 = *(v3 + 104);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_19;
  }

  if (*(v3 + 173) <= 1u)
  {
    if (!*(v3 + 173))
    {
      *(v3 + 88) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 173) = v10;
      goto LABEL_11;
    }

    *(v3 + 173) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 104) = v8 - *(v3 + 88) + a3;
    *(v3 + 88) = a3;
LABEL_19:
    swift_beginAccess();
    v32 = *(v3 + 136);
    v33 = *(v3 + 140);
    v34 = *(v3 + 144);
    v35 = *(v3 + 152);
    v36 = *(v3 + 160);
    *&v83 = *(v3 + 128);
    BYTE8(v83) = v32;
    HIDWORD(v83) = v33;
    v74 = vaddq_f64(*(v3 + 112), *a1);
    v84[0] = v34;
    ResolvedGradientVector.add(_:scaledBy:)(&v83, 1.0);
    v37 = v35 + a1[2].f64[1];
    v38 = v36 + a1[3].f64[0];
    swift_beginAccess();
    v39 = *(v3 + 48);
    v40 = *(v3 + 56);
    v41 = *(v3 + 60);
    v42 = *(v3 + 64);
    v43 = *(v3 + 72);
    v44 = *(v3 + 80);
    *a1 = vsubq_f64(v74, *(v3 + 32));
    *&v81 = v39;
    BYTE8(v81) = v40;
    HIDWORD(v81) = v41;
    v82[0] = v42;
    ResolvedGradientVector.add(_:scaledBy:)(&v81, -1.0);
    result = 0;
    a1[2].f64[1] = v37 - v43;
    a1[3].f64[0] = v38 - v44;
    return result;
  }

  if (*(v3 + 173) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 88))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 88) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = *(v3 + 88);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 192);

  v90[0] = v14;
  v90[1] = AGCreateWeakAttribute();
  v91 = 0;
  v92 = v15;
  v16 = *(v4 + 200);
  if (v16)
  {
    v17 = *(v4 + 208);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>(0);
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>, MEMORY[0x1E69E6720]);
    *(&v87 + 1) = v20;
    *&v86 = v16;
    *(&v86 + 1) = v17;
    specialized Dictionary.subscript.setter(&v86, v19);
  }

  v21 = a3 - v13;
  swift_beginAccess();
  v22 = *(v4 + 16);
  swift_beginAccess();
  v23 = *(v4 + 48);
  v86 = *(v4 + 32);
  v87 = v23;
  v25 = *(v4 + 32);
  v24 = *(v4 + 48);
  v88 = *(v4 + 64);
  v89 = *(v4 + 80);
  v81 = v25;
  *v82 = v24;
  *&v82[16] = *(v4 + 64);
  *&v82[32] = *(v4 + 80);
  type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>(0);
  if (v26 == MEMORY[0x1E69E63B0])
  {
    *&v76[0] = v81;
    v31 = *(*v22 + 120);

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v86, &v77, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
    v31(&v77, v76, v90, MEMORY[0x1E69E63B0], &protocol witness table for Double, v21);
    *&v83 = v77;
    BYTE8(v83) = BYTE8(v77);
  }

  else
  {
    v27 = v26;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v27 == v28)
    {
      v46 = v28;
      v76[0] = v81;
      v76[1] = *v82;
      v47 = *(*v22 + 120);

      _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v86, &v77, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
      v47(&v77, v76, v90, v46, v48, v21);
      v83 = v77;
      *v84 = v78;
      v84[16] = v79;
    }

    else
    {
      v29 = *(*v22 + 120);

      _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v86, &v77, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>, protocol conformance descriptor for AnimatablePair<A, B>);
      v29(&v83, &v81, v90, v27, v30, v21);
    }
  }

  outlined destroy of Slice<IndexSet>(&v86, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
  v49 = *v84;
  if (*v84)
  {
    v50 = v83;
    v51 = v84[16];
    v72 = *&v84[21];
    v70 = v84[23];
    v71 = *&v84[17];
    v52 = a2 | ((HIDWORD(a2) & 1) << 32);
    v53 = v83;
    v73 = *&v84[8];
    v75 = v85;
    v54 = v84[8];
    v55 = HIDWORD(*&v84[8]);
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v92, v52, v21);
    *(v4 + 24) = v90[0];

    v56 = a1->f64[0] + *&v53;
    v57 = a1->f64[1] + *(&v53 + 1);
    *&v81 = v49;
    BYTE8(v81) = v54;
    HIDWORD(v81) = v55;
    v82[0] = v51 & 1;
    ResolvedGradientVector.add(_:scaledBy:)(&v81, 1.0);
    v58 = a1[2].f64[1] + v75.f64[0];
    v59 = a1[3].f64[0] + v75.f64[1];
    v60 = *(v4 + 48);
    v61 = *(v4 + 56);
    v62 = *(v4 + 60);
    v63 = *(v4 + 64);
    v64 = *(v4 + 72);
    v65 = *(v4 + 80);
    v66 = v57 - *(v4 + 40);
    a1->f64[0] = v56 - *(v4 + 32);
    a1->f64[1] = v66;
    *&v81 = v60;
    BYTE8(v81) = v61;
    HIDWORD(v81) = v62;
    v82[0] = v63;
    ResolvedGradientVector.add(_:scaledBy:)(&v81, -1.0);
    a1[2].f64[1] = v58 - v64;
    a1[3].f64[0] = v59 - v65;
    swift_beginAccess();
    v67 = *(v4 + 128);
    v77 = *(v4 + 112);
    v68 = *(v4 + 144);
    v78 = v67;
    v79 = v68;
    v80 = *(v4 + 160);
    v81 = v50;
    *v82 = v49;
    *&v82[24] = v75;
    *&v82[8] = v73;
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v81, v76, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
    *(v4 + 112) = v50;
    *(v4 + 128) = v49;
    *(v4 + 136) = v73;
    *(v4 + 144) = v51;
    *(v4 + 151) = v70;
    *(v4 + 149) = v72;
    *(v4 + 145) = v71;
    *(v4 + 152) = v75;
    outlined destroy of Slice<IndexSet>(&v77, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
    *(v4 + 104) = a3;
    v69 = *(v4 + 96);

    if (v69 > 0.0)
    {
      *(v4 + 104) = (round(a3 / v69) + 1.0) * *(v4 + 96);
    }

    return 0;
  }

  else
  {

    return 1;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 64);
  v8 = *(v3 + 72);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_20;
  }

  if (*(v3 + 109) <= 1u)
  {
    if (!*(v3 + 109))
    {
      *(v3 + 56) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 109) = v10;
      goto LABEL_11;
    }

    *(v3 + 109) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 72) = v8 - *(v3 + 56) + a3;
    *(v3 + 56) = a3;
LABEL_20:
    swift_beginAccess();
    v37 = *(v3 + 96) + a1[1].f64[0];
    v39 = vaddq_f64(*(v3 + 80), *a1);
    swift_beginAccess();
    result = 0;
    v38 = *(v3 + 48);
    *a1 = vsubq_f64(v39, *(v3 + 32));
    a1[1].f64[0] = v37 - v38;
    return result;
  }

  if (*(v3 + 109) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 56))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 56) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = a3 - *(v3 + 56);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 128);

  v41[0] = v14;
  v41[1] = AGCreateWeakAttribute();
  v42 = 0;
  v43 = v15;
  v16 = *(v4 + 136);
  if (v16)
  {
    v17 = *(v4 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>(0);
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>, MEMORY[0x1E69E6720]);
    v40[3] = v20;
    v40[0] = v16;
    v40[1] = v17;
    specialized Dictionary.subscript.setter(v40, v19);
  }

  swift_beginAccess();
  v21 = *(v4 + 16);
  swift_beginAccess();
  v22 = *(v4 + 32);
  v23 = *(v4 + 40);
  v24 = *(v4 + 48);

  v25 = COERCE_DOUBLE(specialized Animation.animate<A>(value:time:context:)(v41, v21, v22, v23, v24, v13));
  v27 = v26;
  v29 = v28;
  v31 = v30;

  if (v31)
  {

    return 1;
  }

  else
  {
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v43, a2 | ((HIDWORD(a2) & 1) << 32), v13);
    *(v4 + 24) = v41[0];

    v33 = a1[1].f64[0] + v29;
    v34 = *(v4 + 48);
    v35 = a1->f64[1] + v27 - *(v4 + 40);
    a1->f64[0] = a1->f64[0] + v25 - *(v4 + 32);
    a1->f64[1] = v35;
    a1[1].f64[0] = v33 - v34;
    swift_beginAccess();
    *(v4 + 80) = v25;
    *(v4 + 88) = v27;
    *(v4 + 96) = v29;
    *(v4 + 72) = a3;
    v36 = *(v4 + 64);
    if (v36 > 0.0)
    {
      *(v4 + 72) = v36 * (round(a3 / v36) + 1.0);
    }

    return 0;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 296);
  v8 = *(v3 + 304);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_22;
  }

  if (*(v3 + 573) <= 1u)
  {
    if (!*(v3 + 573))
    {
      *(v3 + 288) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 573) = v10;
      goto LABEL_11;
    }

    *(v3 + 573) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 304) = v8 - *(v3 + 288) + a3;
    *(v3 + 288) = a3;
LABEL_22:
    swift_beginAccess();
    v78 = *(v3 + 520);
    __src[12] = *(v3 + 504);
    __src[13] = v78;
    v79 = *(v3 + 552);
    __src[14] = *(v3 + 536);
    __src[15] = v79;
    v80 = *(v3 + 456);
    __src[8] = *(v3 + 440);
    __src[9] = v80;
    v81 = *(v3 + 488);
    __src[10] = *(v3 + 472);
    __src[11] = v81;
    v82 = *(v3 + 392);
    __src[4] = *(v3 + 376);
    __src[5] = v82;
    v83 = *(v3 + 424);
    __src[6] = *(v3 + 408);
    __src[7] = v83;
    v84 = *(v3 + 328);
    __src[0] = *(v3 + 312);
    __src[1] = v84;
    v85 = *(v3 + 360);
    __src[2] = *(v3 + 344);
    __src[3] = v85;
    v86 = a1[13];
    __dst[12] = a1[12];
    __dst[13] = v86;
    v87 = a1[15];
    __dst[14] = a1[14];
    __dst[15] = v87;
    v88 = a1[9];
    __dst[8] = a1[8];
    __dst[9] = v88;
    v89 = a1[11];
    __dst[10] = a1[10];
    __dst[11] = v89;
    v90 = a1[5];
    __dst[4] = a1[4];
    __dst[5] = v90;
    v91 = a1[7];
    __dst[6] = a1[6];
    __dst[7] = v91;
    v92 = a1[1];
    __dst[0] = *a1;
    __dst[1] = v92;
    v93 = a1[3];
    __dst[2] = a1[2];
    __dst[3] = v93;
    static ConcentricRectangle.AnimatableData.+ infix(_:_:)(__dst, __src, a1);
    swift_beginAccess();
    v94 = *(v3 + 240);
    __src[12] = *(v3 + 224);
    __src[13] = v94;
    v95 = *(v3 + 272);
    __src[14] = *(v3 + 256);
    __src[15] = v95;
    v96 = *(v3 + 176);
    __src[8] = *(v3 + 160);
    __src[9] = v96;
    v97 = *(v3 + 208);
    __src[10] = *(v3 + 192);
    __src[11] = v97;
    v98 = *(v3 + 112);
    __src[4] = *(v3 + 96);
    __src[5] = v98;
    v99 = *(v3 + 144);
    __src[6] = *(v3 + 128);
    __src[7] = v99;
    v100 = *(v3 + 48);
    __src[0] = *(v3 + 32);
    __src[1] = v100;
    v101 = *(v3 + 80);
    __src[2] = *(v3 + 64);
    __src[3] = v101;
    v102 = a1[13];
    __dst[12] = a1[12];
    __dst[13] = v102;
    v103 = a1[15];
    __dst[14] = a1[14];
    __dst[15] = v103;
    v104 = a1[9];
    __dst[8] = a1[8];
    __dst[9] = v104;
    v105 = a1[11];
    __dst[10] = a1[10];
    __dst[11] = v105;
    v106 = a1[5];
    __dst[4] = a1[4];
    __dst[5] = v106;
    v107 = a1[7];
    __dst[6] = a1[6];
    __dst[7] = v107;
    v108 = a1[1];
    __dst[0] = *a1;
    __dst[1] = v108;
    v109 = a1[3];
    __dst[2] = a1[2];
    __dst[3] = v109;
    static ConcentricRectangle.AnimatableData.- infix(_:_:)(__dst, __src, a1);
    return 0;
  }

  if (*(v3 + 573) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 288))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 288) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = *(v3 + 288);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 592);

  v161[0] = v14;
  v161[1] = AGCreateWeakAttribute();
  v162 = 0;
  v163 = v15;
  v16 = *(v4 + 600);
  if (v16 != 0.0)
  {
    v17 = *(v4 + 608);
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ConcentricRectangle.AnimatableData>, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData, type metadata accessor for AnimationFinishingDefinitionKey);
    v19 = v18;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ConcentricRectangle.AnimatableData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ConcentricRectangle.AnimatableData>, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData);
    __src[1].f64[1] = v20;
    __src[0].f64[0] = v16;
    __src[0].f64[1] = v17;
    specialized Dictionary.subscript.setter(__src, v19);
  }

  v21 = a3 - v13;
  swift_beginAccess();
  v22 = *(v4 + 16);
  swift_beginAccess();
  v23 = *(v4 + 240);
  v140 = *(v4 + 224);
  v141 = v23;
  v24 = *(v4 + 272);
  v142 = *(v4 + 256);
  v143 = v24;
  v25 = *(v4 + 176);
  v136 = *(v4 + 160);
  v137 = v25;
  v26 = *(v4 + 208);
  v138 = *(v4 + 192);
  v139 = v26;
  v27 = *(v4 + 112);
  v132 = *(v4 + 96);
  v133 = v27;
  v28 = *(v4 + 144);
  v134 = *(v4 + 128);
  v135 = v28;
  v29 = *(v4 + 48);
  v128 = *(v4 + 32);
  v129 = v29;
  v30 = *(v4 + 80);
  v130 = *(v4 + 64);
  v131 = v30;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v31 == &type metadata for ConcentricRectangle.AnimatableData)
  {
    v111 = v128;
    v112 = v129;
    v35 = *(*v22 + 120);
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
    v37 = v36;

    v35(__dst, &v111, v161, &type metadata for ConcentricRectangle.AnimatableData, v37, v21);
    __src[0] = __dst[0];
    __src[1] = __dst[1];
    LOBYTE(__src[2].f64[0]) = LOBYTE(__dst[2].f64[0]);
  }

  else
  {
    v32 = *(*v22 + 120);
    lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData();
    v34 = v33;

    v32(__src, &v128, v161, &type metadata for ConcentricRectangle.AnimatableData, v34, v21);
  }

  memcpy(__dst, __src, 0x101uLL);
  if (_s7SwiftUI19ConcentricRectangleV14AnimatableDataVSgWOg(__dst) == 1)
  {

    return 1;
  }

  v157 = __src[12];
  v158 = __src[13];
  v159 = __src[14];
  v160 = __src[15];
  v153 = __src[8];
  v154 = __src[9];
  v155 = __src[10];
  v156 = __src[11];
  v149 = __src[4];
  v150 = __src[5];
  v151 = __src[6];
  v152 = __src[7];
  v145 = __src[0];
  v146 = __src[1];
  v147 = __src[2];
  v148 = __src[3];
  specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v163, a2 | ((HIDWORD(a2) & 1) << 32), v21);
  *(v4 + 24) = v161[0];

  v39 = a1[13];
  v123 = a1[12];
  v124 = v39;
  v40 = a1[15];
  v125 = a1[14];
  v126 = v40;
  v41 = a1[9];
  v119 = a1[8];
  v120 = v41;
  v42 = a1[11];
  v121 = a1[10];
  v122 = v42;
  v43 = a1[5];
  v115 = a1[4];
  v116 = v43;
  v44 = a1[7];
  v117 = a1[6];
  v118 = v44;
  v45 = a1[1];
  v111 = *a1;
  v112 = v45;
  v46 = a1[3];
  v113 = a1[2];
  v114 = v46;
  static ConcentricRectangle.AnimatableData.+ infix(_:_:)(&v111, &v145, a1);
  v47 = *(v4 + 224);
  v48 = *(v4 + 256);
  v49 = *(v4 + 272);
  v124 = *(v4 + 240);
  v125 = v48;
  v126 = v49;
  v50 = *(v4 + 160);
  v51 = *(v4 + 192);
  v52 = *(v4 + 208);
  v120 = *(v4 + 176);
  v121 = v51;
  v122 = v52;
  v123 = v47;
  v53 = *(v4 + 96);
  v54 = *(v4 + 128);
  v55 = *(v4 + 144);
  v116 = *(v4 + 112);
  v117 = v54;
  v118 = v55;
  v119 = v50;
  v56 = *(v4 + 32);
  v57 = *(v4 + 64);
  v58 = *(v4 + 80);
  v112 = *(v4 + 48);
  v113 = v57;
  v114 = v58;
  v115 = v53;
  v59 = a1[12];
  v60 = a1[14];
  v61 = a1[15];
  v110[13] = a1[13];
  v110[14] = v60;
  v110[15] = v61;
  v111 = v56;
  v62 = a1[8];
  v63 = a1[10];
  v64 = a1[11];
  v110[9] = a1[9];
  v110[10] = v63;
  v110[11] = v64;
  v110[12] = v59;
  v65 = a1[5];
  v110[4] = a1[4];
  v110[5] = v65;
  v66 = a1[7];
  v110[6] = a1[6];
  v110[7] = v66;
  v110[8] = v62;
  v67 = a1[1];
  v110[0] = *a1;
  v110[1] = v67;
  v68 = a1[3];
  v110[2] = a1[2];
  v110[3] = v68;
  static ConcentricRectangle.AnimatableData.- infix(_:_:)(v110, &v111, a1);
  swift_beginAccess();
  v69 = v158;
  *(v4 + 504) = v157;
  *(v4 + 520) = v69;
  v70 = v160;
  *(v4 + 536) = v159;
  *(v4 + 552) = v70;
  v71 = v154;
  *(v4 + 440) = v153;
  *(v4 + 456) = v71;
  v72 = v156;
  *(v4 + 472) = v155;
  *(v4 + 488) = v72;
  v73 = v150;
  *(v4 + 376) = v149;
  *(v4 + 392) = v73;
  v74 = v152;
  *(v4 + 408) = v151;
  *(v4 + 424) = v74;
  v75 = v146;
  *(v4 + 312) = v145;
  *(v4 + 328) = v75;
  v76 = v148;
  *(v4 + 344) = v147;
  *(v4 + 360) = v76;
  v77 = *(v4 + 296);
  *(v4 + 304) = a3;
  if (v77 > 0.0)
  {
    *(v4 + 304) = v77 * (round(a3 / v77) + 1.0);
  }

  return 0;
}

{
  v4 = v3;
  v7 = *(v3 + 80);
  v8 = *(v3 + 88);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_20;
  }

  if (*(v3 + 141) <= 1u)
  {
    if (!*(v3 + 141))
    {
      *(v3 + 72) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 141) = v10;
      goto LABEL_11;
    }

    *(v3 + 141) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 88) = v8 - *(v3 + 72) + a3;
    *(v3 + 72) = a3;
LABEL_20:
    swift_beginAccess();
    v29 = *(v3 + 128) + a1[2].f64[0];
    v33 = vaddq_f64(*(v3 + 96), *a1);
    v35 = vaddq_f64(*(v3 + 112), a1[1]);
    swift_beginAccess();
    result = 0;
    v30 = *(v3 + 64);
    v31 = vsubq_f64(v35, *(v3 + 48));
    *a1 = vsubq_f64(v33, *(v3 + 32));
    a1[1] = v31;
    a1[2].f64[0] = v29 - v30;
    return result;
  }

  if (*(v3 + 141) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 72))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 72) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = a3 - *(v3 + 72);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 160);

  v36[0] = v14;
  v36[1] = AGCreateWeakAttribute();
  v37 = 0;
  v38 = v15;
  v16 = *(v4 + 168);
  if (v16 != 0.0)
  {
    v17 = *(v4 + 176);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>(0);
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>, MEMORY[0x1E69E6720]);
    v40.f64[1] = v20;
    v39.f64[0] = v16;
    v39.f64[1] = v17;
    specialized Dictionary.subscript.setter(&v39, v19);
  }

  swift_beginAccess();
  v21 = *(v4 + 16);
  swift_beginAccess();
  v22 = *(v4 + 48);
  v43[0] = *(v4 + 32);
  v43[1] = v22;
  v44 = *(v4 + 64);

  specialized Animation.animate<A>(value:time:context:)(v43, v36, v21, &v39, v13);
  v32 = v39;
  v34 = v40;
  v23 = v41;

  if (v42)
  {

    return 1;
  }

  else
  {
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v38, a2 | ((HIDWORD(a2) & 1) << 32), v13);
    *(v4 + 24) = v36[0];

    v25 = v23 + a1[2].f64[0];
    v26 = *(v4 + 64);
    v27 = vsubq_f64(vaddq_f64(v34, a1[1]), *(v4 + 48));
    *a1 = vsubq_f64(vaddq_f64(v32, *a1), *(v4 + 32));
    a1[1] = v27;
    a1[2].f64[0] = v25 - v26;
    swift_beginAccess();
    *(v4 + 96) = v32;
    *(v4 + 112) = v34;
    *(v4 + 128) = v23;
    *(v4 + 88) = a3;
    v28 = *(v4 + 80);
    if (v28 > 0.0)
    {
      *(v4 + 88) = v28 * (round(a3 / v28) + 1.0);
    }

    return 0;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 72);
  v8 = *(v3 + 80);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_22;
  }

  if (*(v3 + 125) <= 1u)
  {
    if (!*(v3 + 125))
    {
      *(v3 + 64) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 125) = v10;
      goto LABEL_11;
    }

    *(v3 + 125) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 80) = v8 - *(v3 + 64) + a3;
    *(v3 + 64) = a3;
LABEL_22:
    swift_beginAccess();
    v39 = vaddq_f64(*(v3 + 104), a1[1]);
    v41 = vaddq_f64(*(v3 + 88), *a1);
    swift_beginAccess();
    result = 0;
    v37 = vsubq_f64(v39, *(v3 + 48));
    *a1 = vsubq_f64(v41, *(v3 + 32));
    a1[1] = v37;
    return result;
  }

  if (*(v3 + 125) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 64))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 64) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = *(v3 + 64);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 144);

  v49[0] = v14;
  v49[1] = AGCreateWeakAttribute();
  v50 = 0;
  v51 = v15;
  v16 = *(v4 + 152);
  if (v16 != 0.0)
  {
    v17 = *(v4 + 160);
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Edge.Corner.Style.AnimatableData>, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData, &type metadata for Edge.Corner.Style.AnimatableData, type metadata accessor for AnimationFinishingDefinitionKey);
    v19 = v18;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Edge.Corner.Style.AnimatableData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Edge.Corner.Style.AnimatableData>, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData, &type metadata for Edge.Corner.Style.AnimatableData);
    v47.f64[1] = v20;
    v46.f64[0] = v16;
    v46.f64[1] = v17;
    specialized Dictionary.subscript.setter(&v46, v19);
  }

  v21 = a3 - v13;
  swift_beginAccess();
  v22 = *(v4 + 16);
  swift_beginAccess();
  v23 = *(v4 + 32);
  v24 = *(v4 + 40);
  v25 = *(v4 + 48);
  v26 = *(v4 + 56);
  v45[0] = v23;
  v45[1] = v24;
  v45[2] = v25;
  v45[3] = v26;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v27 == &type metadata for Edge.Corner.Style.AnimatableData)
  {
    v42[0] = v23;
    v42[1] = v24;
    v42[2] = v25;
    v42[3] = v26;
    v32 = *(*v22 + 120);
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
    v34 = v33;

    v32(v43, v42, v49, &type metadata for Edge.Corner.Style.AnimatableData, v34, v21);
    LOBYTE(v34) = v44;
    v46 = v43[0];
    v47 = v43[1];
    v48 = v44;

    if (v34)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v28 = *(*v22 + 120);
    lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData();
    v30 = v29;

    v28(&v46, v45, v49, &type metadata for Edge.Corner.Style.AnimatableData, v30, v21);

    if (v48)
    {
LABEL_15:

      return 1;
    }
  }

  v38 = v46;
  v40 = v47;
  specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v51, a2 | ((HIDWORD(a2) & 1) << 32), v21);
  *(v4 + 24) = v49[0];

  v35 = vsubq_f64(vaddq_f64(v40, a1[1]), *(v4 + 48));
  *a1 = vsubq_f64(vaddq_f64(v38, *a1), *(v4 + 32));
  a1[1] = v35;
  swift_beginAccess();
  *(v4 + 88) = v38;
  *(v4 + 104) = v40;
  *(v4 + 80) = a3;
  v36 = *(v4 + 72);
  if (v36 > 0.0)
  {
    *(v4 + 80) = v36 * (round(a3 / v36) + 1.0);
  }

  return 0;
}