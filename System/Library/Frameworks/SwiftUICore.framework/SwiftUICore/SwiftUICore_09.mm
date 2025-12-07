uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI14SafeAreaInsetsV7ElementV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  do
  {
    v4 = a1 + v3;
    v5 = a2 + v3;
    if (*(a1 + v3 + 32) != *(a2 + v3 + 32) || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v4 + 40), *(v5 + 40)), vceqq_f64(*(v4 + 56), *(v5 + 56))))) & 1) == 0)
    {
      return 0;
    }

    if (*(v4 + 136))
    {
      if ((*(v5 + 136) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(v5 + 136))
      {
        return 0;
      }

      v6 = 0;
      if (*(v4 + 72) != *(v5 + 72))
      {
        return v6;
      }

      if (*(v4 + 80) != *(v5 + 80))
      {
        return v6;
      }

      v6 = 0;
      if (*(v4 + 88) != *(v5 + 88) || *(v4 + 96) != *(v5 + 96) || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(v4 + 104), *(v5 + 104)), vceqq_f64(*(v4 + 120), *(v5 + 120))), xmmword_18DDA9F30)) & 0xF) != 0)
      {
        return v6;
      }
    }

    v3 += 112;
    --v2;
  }

  while (v2);
  return 1;
}

void GraphHost.setNeedsUpdate(mayDeferUpdate:values:)(char a1, __int16 a2)
{
  swift_beginAccess();
  *(v2 + 168) &= a1 & 1;
  swift_beginAccess();
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = one-time initialization token for enabledCategories;
    v6 = v4;
    if (v5 != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x48uLL)
    {
      __break(1u);
    }

    if (*(static CustomEventTrace.enabledCategories + 103) == 1)
    {
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 20039;
        type metadata accessor for (ViewGraphRootValues, AGAttribute)(0, &lazy cache variable for type metadata for (ViewGraphRootValues, AGGraphRef), type metadata accessor for AGGraphRef);
        AGGraphAddTraceEvent();
      }
    }

    AGGraphSetNeedsUpdate();
  }
}

uint64_t closure #1 in GraphHost.init(data:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = (*(*result + 192))();
    v4 = v3;

    if (v2)
    {
      ObjectType = swift_getObjectType();
      (*(v4 + 8))(_ViewInputs.base.modify, 0, MEMORY[0x1E69E7CA8] + 8, ObjectType, v4);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t type metadata completion function for FontBox(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t protocol witness for ViewGraphOwner.valuesNeedingUpdate.setter in conformance ViewGraphHost(__int16 a1)
{
  result = swift_beginAccess();
  *(v1 + 112) = a1;
  return result;
}

uint64_t outlined copy of SafeAreaInsets.OptionalValue?(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

double CGRect.inset(by:)(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v11 = a5;
  v21.origin.x = a5;
  v21.origin.y = a6;
  v21.size.width = a7;
  v21.size.height = a8;
  if (!CGRectIsNull(v21))
  {
    v22.origin.x = v11;
    v22.origin.y = a6;
    v22.size.width = a7;
    v22.size.height = a8;
    v23 = CGRectStandardize(v22);
    if (a2 == a4)
    {
      v16 = a4;
    }

    else
    {
      v16 = a2;
    }

    v11 = v16 + v23.origin.x;
    v17 = v23.origin.y + a1;
    v18 = v23.size.width - (a2 + a4);
    v19 = v23.size.height - (a1 + a3);
    v24.origin.x = v16 + v23.origin.x;
    v24.origin.y = v23.origin.y + a1;
    v24.size.width = v18;
    v24.size.height = v19;
    if (CGRectGetWidth(v24) < 0.0)
    {
      return *MEMORY[0x1E695F050];
    }

    v25.origin.x = v11;
    v25.origin.y = v17;
    v25.size.width = v18;
    v25.size.height = v19;
    if (CGRectGetHeight(v25) < 0.0)
    {
      return *MEMORY[0x1E695F050];
    }
  }

  return v11;
}

void type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void _ss7KeyPathCy7SwiftUI17EnvironmentValuesVAC15LayoutDirectionOGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for KeyPath();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _ss7KeyPathCy7SwiftUI17EnvironmentValuesVAC15LayoutDirectionOGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, const char *a4)
{
  if (!*a1)
  {
    _s7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAA15LayoutDirectionOGMaTm_0(255, a2, a3, a4);
    swift_getWitnessTable(a4, v6);
    atomic_store(v7, a1);
  }
}

void _s7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAA15LayoutDirectionOGADyxG14AttributeGraph4RuleAAWlTm_0(unint64_t *a1, const char *a2)
{
  if (!*a1)
  {
    type metadata accessor for Axis?(255, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, type metadata accessor for EnvironmentFetch);
    swift_getWitnessTable(a2, v4);
    atomic_store(v5, a1);
  }
}

void _s7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAA15LayoutDirectionOGADyxG14AttributeGraph4RuleAAWlTm_1(unint64_t *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!*a1)
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(255, a2, a3, a4);
    swift_getWitnessTable(a2, v6);
    atomic_store(v7, a1);
  }
}

void _s7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAA15LayoutDirectionOGADyxG14AttributeGraph4RuleAAWlTm_2(unint64_t *a1, const char *a2)
{
  if (!*a1)
  {
    type metadata accessor for Attribute<_ShapeStyle_Pack>(255, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, type metadata accessor for EnvironmentFetch);
    swift_getWitnessTable(a2, v4);
    atomic_store(v5, a1);
  }
}

void _s7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAA15LayoutDirectionOGADyxG14AttributeGraph4RuleAAWlTm_3(unint64_t *a1, unint64_t *a2, uint64_t a3, const char *a4)
{
  if (!*a1)
  {
    type metadata accessor for _ContiguousArrayStorage<SafeAreaInsets.Element>(255, a2, a3, type metadata accessor for EnvironmentFetch);
    swift_getWitnessTable(a4, v6);
    atomic_store(v7, a1);
  }
}

uint64_t Element.forEach(inverted:stop:_:)(char a1, _BYTE *a2, uint64_t (*a3)(float64x2_t *, _BYTE *), uint64_t a4)
{
  v9 = v4->f64[0];
  if ((a1 & 1) != 0 || (v10 = v4[2].f64[1], v4[2].f64[0] == 0.0) && v10 == 0.0 || (v13.f64[0] = v4[2].f64[0], v13.f64[1] = v10, v14 = 0, result = a3(&v13, a2), (*a2 & 1) == 0))
  {
    result = (*(*(*&v9 + 136) + 16))(a1 & 1, a2, a3, a4, *(*&v9 + 128));
    if (*a2 & 1) == 0 && (a1)
    {
      v12 = v4[2];
      if (v12.f64[0] != 0.0 || v12.f64[1] != 0.0)
      {
        v13 = vnegq_f64(v12);
        v14 = 0;
        return a3(&v13, a2);
      }
    }
  }

  return result;
}

uint64_t protocol witness for ViewTransformElement.forEach(inverted:stop:_:) in conformance SizedSpaceElement(uint64_t a1, uint64_t a2, uint64_t (*a3)(__int128 *, uint64_t))
{
  v4 = *(v3 + 2);
  v6 = *v3;
  v7 = v4;
  v8 = 0x80;
  return a3(&v6, a2);
}

__int128 *specialized closure #1 in ViewTransform.convert(_:_:)(__int128 *result, _BYTE *a2, uint64_t a3, _BYTE *a4, uint64_t (*a5)(_OWORD *))
{
  v7 = *result;
  v8 = result[1];
  v9 = result[2];
  v10 = result[3];
  v11 = result[4];
  v12 = result[5];
  v13 = result[6];
  v14 = *(result + 112);
  if ((v14 >> 5) - 3 > 1)
  {
    goto LABEL_14;
  }

  v20 = result[6];
  v21 = result[5];
  v22 = result[4];
  v23 = result[3];
  v24 = result[2];
  v25 = result[1];
  v26 = *result;
  result = swift_beginAccess();
  v17 = *(a3 + 16);
  v18 = *(a3 + 32);
  if (v18 <= 1)
  {
    v7 = v26;
    if (*(a3 + 32))
    {
      v9 = v24;
      v8 = v25;
      v11 = v22;
      v10 = v23;
      v13 = v20;
      v12 = v21;
      if (v26 == v17)
      {
        goto LABEL_12;
      }

      goto LABEL_14;
    }

LABEL_7:
    v9 = v24;
    v8 = v25;
    v11 = v22;
    v10 = v23;
    v13 = v20;
    v12 = v21;
    if (v7 == v17)
    {
      goto LABEL_10;
    }

LABEL_14:
    if (*a4 != 1)
    {
      return result;
    }

    goto LABEL_15;
  }

  v7 = v26;
  if (v18 == 2)
  {
    goto LABEL_7;
  }

  v9 = v24;
  v8 = v25;
  v11 = v22;
  v10 = v23;
  v13 = v20;
  v12 = v21;
  if (v18 == 3)
  {
    v19 = v26;
    goto LABEL_11;
  }

  v19 = v26;
  if (v26 == *(a3 + 24))
  {
LABEL_10:
    *a2 = 1;
    goto LABEL_14;
  }

LABEL_11:
  if (v19 != v17)
  {
    goto LABEL_14;
  }

LABEL_12:
  *a4 = 1;
LABEL_15:
  v27[0] = v7;
  v27[1] = v8;
  v27[2] = v9;
  v27[3] = v10;
  v27[4] = v11;
  v27[5] = v12;
  v27[6] = v13;
  v28 = v14;
  return a5(v27);
}

void specialized MutableCollection<>._applyTransform(item:)(uint64_t a1)
{
  v2 = *(a1 + 112) >> 5;
  if (v2 <= 2)
  {
    v3 = *a1;
    if (v2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 32);
      v6 = *(a1 + 48);
      if (v2 == 1)
      {
        if (*(a1 + 48))
        {
          *&v34.a = *a1;
          *&v34.c = v4;
          *&v34.tx = v5;
          CGAffineTransformInvert(&v33, &v34);
          v3 = *&v33.a;
          v4 = *&v33.c;
          v5 = *&v33.tx;
        }

        v7 = *v1;
        v8 = *(*v1 + 2);
        if (v8)
        {
          v30 = v5;
          v31 = v4;
          v32 = v3;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_36;
          }

          while (1)
          {
            v9 = 0;
            v10 = v7 + 40;
            v11 = v32;
            while (v9 < *(v7 + 2))
            {
              ++v9;
              v40 = *(v10 - 8);
              *&v34.a = v11;
              *&v34.c = v31;
              *&v34.tx = v30;
              v12 = CGPointApplyAffineTransform(v40, &v34);
              v11 = v32;
              *(v10 - 8) = v12;
              v10 += 16;
              if (v8 == v9)
              {
                goto LABEL_26;
              }
            }

            __break(1u);
LABEL_34:
            v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
LABEL_14:
            if (v8 <= *(v7 + 2))
            {
              break;
            }

            __break(1u);
LABEL_36:
            v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
          }

          if (v8 > 0xB && ((v13 = 16 * (v8 - 1), v14 = &v7[v13 + 40], v15 = &v7[v13 + 32], v14 >= (v7 + 40)) ? (v16 = v15 >= (v7 + 32)) : (v16 = 0), v16 ? (v17 = (v8 - 1) >> 60 == 0) : (v17 = 0), v17))
          {
            v18 = v8 & 0x1FFFFFFFFFFFFFFCLL;
            v25 = (v7 + 64);
            v26 = v8 & 0x1FFFFFFFFFFFFFFCLL;
            do
            {
              v27 = *v25;
              v28 = v25[1];
              v29 = vaddq_f64(v25[-1], v32);
              v25[-2] = vaddq_f64(v25[-2], v32);
              v25[-1] = v29;
              *v25 = vaddq_f64(v27, v32);
              v25[1] = vaddq_f64(v28, v32);
              v25 += 4;
              v26 -= 4;
            }

            while (v26);
            if (v8 == v18)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v18 = 0;
          }

          v19 = v8 - v18;
          v20 = &v7[16 * v18 + 32];
          do
          {
            *v20 = vaddq_f64(*v20, v32);
            ++v20;
            --v19;
          }

          while (v19);
LABEL_26:
          *v1 = v7;
        }
      }

      else
      {
        v22 = *(a1 + 49);
        v21 = a1 + 49;
        v23 = *(v21 + 23);
        v24 = *(v21 + 4);
        *&v34.a = v3;
        *&v34.c = v4;
        *&v34.tx = v5;
        v35 = v6;
        v36 = v22;
        v37 = v24;
        v38 = *(v21 + 6);
        v39 = *(v21 + 7);
        specialized MutableCollection<>._apply(_:inverse:)(&v34, v23 & 1);
      }
    }

    else
    {
      v7 = *v1;
      v8 = *(*v1 + 2);
      if (v8)
      {
        v32 = *a1;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_14;
      }
    }
  }
}

{
  v2 = *(a1 + 112) >> 5;
  if (v2 <= 2)
  {
    v3 = *a1;
    if (!v2)
    {
      v10 = v1[1];
      if (!v10)
      {
        return;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_32;
      }

      v11 = *v1;
      if (v10 > 0xB && ((v12 = v10 - 1, v13 = &v11[v12].f64[1], v14 = &v11[v12], v13 >= &v11->f64[1]) ? (v15 = v14 >= v11) : (v15 = 0), v15 ? (v16 = (v10 - 1) >> 60 == 0) : (v16 = 0), v16))
      {
        v17 = v10 & 0x1FFFFFFFFFFFFFFCLL;
        v24 = v11 + 2;
        v25 = v10 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v26 = *v24;
          v27 = v24[1];
          v28 = vaddq_f64(v24[-1], v3);
          v24[-2] = vaddq_f64(v24[-2], v3);
          v24[-1] = v28;
          *v24 = vaddq_f64(v26, v3);
          v24[1] = vaddq_f64(v27, v3);
          v24 += 4;
          v25 -= 4;
        }

        while (v25);
        if (v10 == v17)
        {
          return;
        }
      }

      else
      {
        v17 = 0;
      }

      v18 = v10 - v17;
      v19 = &v11[v17];
      do
      {
        *v19 = vaddq_f64(*v19, v3);
        ++v19;
        --v18;
      }

      while (v18);
      return;
    }

    v4 = *(a1 + 16);
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    if (v2 != 1)
    {
      v21 = *(a1 + 49);
      v20 = a1 + 49;
      v22 = *(v20 + 23);
      v23 = *(v20 + 4);
      *&v33.a = v3;
      *&v33.c = v4;
      *&v33.tx = v5;
      v34 = v6;
      v35 = v21;
      v36 = v23;
      v37 = *(v20 + 6);
      v38 = *(v20 + 7);
      specialized MutableCollection<>._apply(_:inverse:)(&v33, v22 & 1);
      return;
    }

    if (*(a1 + 48))
    {
      *&v33.a = *a1;
      *&v33.c = v4;
      *&v33.tx = v5;
      CGAffineTransformInvert(&v32, &v33);
      v3 = *&v32.a;
      v4 = *&v32.c;
      v5 = *&v32.tx;
    }

    v7 = v1[1];
    if (v7)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        v8 = &(*v1)->f64[1];
        v30 = v4;
        v31 = v3;
        v29 = v5;
        do
        {
          v39 = *(v8 - 8);
          *&v33.a = v3;
          *&v33.c = v4;
          *&v33.tx = v5;
          v9 = CGPointApplyAffineTransform(v39, &v33);
          v5 = v29;
          v4 = v30;
          v3 = v31;
          *(v8 - 8) = v9;
          v8 += 16;
          v7 = (v7 - 1);
        }

        while (v7);
        return;
      }

LABEL_32:
      __break(1u);
    }
  }
}

uint64_t specialized ViewTransform.convert(_:_:)(uint64_t result, float64x2_t *a2, float64x2_t *a3, uint64_t a4)
{
  v41[1] = *MEMORY[0x1E69E9840];
  v6 = *result;
  v7 = *(result + 8);
  v8 = *(result + 16);
  v9 = a2[2];
  v39[1] = a2[1];
  v40 = v9;
  v39[0] = *a2;
  v10 = *&v39[0];
  v41[0] = *&v39[0];
  if (*&v39[0] || v40.f64[0] != 0.0 || v40.f64[1] != 0.0)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v6;
    *(v12 + 24) = v7;
    *(v12 + 32) = v8;
    if (v8 == 4)
    {
      if (v6 != -1)
      {
        if (v7 != -1)
        {
          if (v6)
          {
            if (v7)
            {
              v37 = 0;
              v13 = a2[1];
              v38[0] = *a2;
              v38[1] = v13;
              v38[2] = a2[2];
              v35 = v7;
              v36 = v6;
              v14 = v12;
              ViewTransform.spaceBeforeSpace(_:_:)(&v36, &v35);
              v12 = v14;
              v10 = v41[0];
            }

            else
            {
              *(v12 + 24) = 0;
              *(v12 + 32) = 1;
              v37 = 0;
            }

LABEL_25:
            MEMORY[0x1EEE9AC00](v12);
            v33[10] = a3;
            v33[11] = a4;
            MEMORY[0x1EEE9AC00](v15);
            v33[2] = v39;
            v33[3] = v18;
            v33[4] = &v37;
            v33[5] = closure #1 in CGRect.convertAndClipToScrollView(to:transform:)partial apply;
            v33[6] = v19;
            if (!v10)
            {
            }

            LOBYTE(v36) = 0;
            if (v17)
            {
              v20 = v40.f64[0] == 0.0;
              if (v40.f64[1] != 0.0)
              {
                v20 = 0;
              }

              if (((v16 | v20) & 1) == 0)
              {
                *a3 = vsubq_f64(*a3, v40);
              }

              outlined init with copy of ViewTransform(v39, v38);
              outlined init with copy of AnyElement?(v41, v38);
              do
              {
                v21 = v10;
                v10 = *(v10 + 16);
                (*(*v21 + 104))(1, &v36, closure #1 in ViewTransform.convert(_:_:)partial apply, v33);
              }

              while ((v36 & 1) == 0 && v10);
              goto LABEL_52;
            }

            v22 = *(v10 + 24);
            if ((v22 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (!(v22 >> 60))
            {
              v34 = v40;
              v23 = v39;
              v24 = v38;
              if ((8 * v22) >= 1025)
              {
LABEL_57:
                outlined init with copy of ViewTransform(v23, v24);
                outlined init with copy of AnyElement?(v41, v38);
                isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
                if ((isStackAllocationSafe & 1) == 0)
                {
                  v32 = swift_slowAlloc();
                  closure #3 in ViewTransform.forEach(inverted:_:)(v32, v22, v10, v22, &v36, closure #1 in ViewTransform.convert(_:_:)partial apply, v33);
                  MEMORY[0x193AC4820](v32, -1, -1);
                  v30 = v34;
                  if (v36)
                  {
LABEL_52:
                    outlined destroy of AnyElement?(v41);
                    outlined destroy of ViewTransform(v39);
                  }

LABEL_48:
                  if ((v30.n128_f64[0] != 0.0 || v30.n128_f64[1] != 0.0) && v37 == 1)
                  {
                    *a3 = vaddq_f64(v30, *a3);
                  }

                  goto LABEL_52;
                }
              }

              else
              {
                outlined init with copy of ViewTransform(v39, v38);
                isStackAllocationSafe = outlined init with copy of AnyElement?(v41, v38);
              }

              v26.n128_f64[0] = MEMORY[0x1EEE9AC00](isStackAllocationSafe);
              v28 = v33 - v27;
              *(v33 - v27) = v10;
              v29 = *(v10 + 16);
              v30 = v34;
              if (v29)
              {
                v31 = v28 + 8;
                do
                {
                  *v31++ = v29;
                  v29 = *(v29 + 16);
                }

                while (v29);
              }

              v10 = 0;
              while (v22 != v10)
              {
                if (__OFADD__(v10, 1))
                {
                  __break(1u);
                  goto LABEL_57;
                }

                v23 = (*(**&v28[8 * (v22 - (v10 + 1))] + 104))(0, &v36, closure #1 in ViewTransform.convert(_:_:)partial apply, v33, v26, v30);
                v30 = v34;
                ++v10;
                if (v36 == 1)
                {
                  goto LABEL_52;
                }
              }

              goto LABEL_48;
            }

            __break(1u);
          }

          *(v12 + 16) = v7;
          *(v12 + 24) = 0;
          v6 = v7;
          *(v12 + 32) = 0;
LABEL_23:
          if (v6)
          {
            goto LABEL_24;
          }
        }

        *(v12 + 24) = 0;
        *(v12 + 32) = 3;
        v37 = 0;
LABEL_20:
        if (v6)
        {
          goto LABEL_25;
        }

LABEL_24:
        v37 = 1;
        goto LABEL_25;
      }

      *(v12 + 16) = v7;
      *(v12 + 24) = 0;
      *(v12 + 32) = 2;
      if (v7 == -1)
      {
      }
    }

    else
    {
      v37 = 0;
      if (v8 > 1)
      {
        if (v8 != 2)
        {
          goto LABEL_20;
        }

        if (v6 == -1)
        {
        }
      }

      else
      {
        if (!v8)
        {
          goto LABEL_23;
        }

        if (v6 != -1)
        {
          goto LABEL_25;
        }
      }
    }

    v37 = 1;
    goto LABEL_25;
  }

  return result;
}

uint64_t specialized CGRect.init(cornerPoints:)(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if ((a4 >> 1) <= a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a3 + 1 >= v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a3 + 2 >= v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a3 + 3 < v4)
  {
    return swift_unknownObjectRelease();
  }

LABEL_9:
  __break(1u);
  return v5;
}

void type metadata accessor for _ContiguousArrayStorage<CGPoint>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<CGPoint>)
  {
    type metadata accessor for CGPoint(255);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<CGPoint>);
    }
  }
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
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

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
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

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t outlined destroy of AnyElement?(uint64_t a1)
{
  type metadata accessor for _ContiguousArrayStorage<CGPoint>(0, &lazy cache variable for type metadata for AnyElement?, type metadata accessor for AnyElement, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for _ContiguousArrayStorage<Path>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<SafeAreaInsets.Element>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void _PositionAwarePlacementContext.proposedSize.getter(uint64_t a1@<X8>)
{
  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v2 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v2)
    {
      goto LABEL_7;
    }

LABEL_9:
    InputValue = AGGraphGetInputValue();
    v9 = InputValue[1];
    v14 = *InputValue;
    v15 = v9;
    ViewSize.proposal.getter(&v10);
    v6 = v10;
    v4 = v11;
    v7 = v12;
    v5 = v13;
    goto LABEL_10;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_9;
  }

LABEL_7:
  v3 = AGGraphGetInputValue();
  v4 = 0;
  v5 = 0;
  v6 = *v3;
  v7 = v3[1];
LABEL_10:
  *a1 = v6;
  *(a1 + 8) = v4;
  *(a1 + 16) = v7;
  *(a1 + 24) = v5;
}

_BYTE *protocol witness for RawRepresentable.init(rawValue:) in conformance CodableDisplayGamut.CodingKind@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

double one-time initialization function for postUpdateActions()
{
  *&result = 135444;
  static Signpost.postUpdateActions = xmmword_18DDB55B0;
  word_1ED530E00 = 0;
  byte_1ED530E02 = 3;
  return result;
}

uint64_t initializeWithCopy for CoordinateSpace.Name(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (v2 >= 2)
  {
    v2 = *a2 + 2;
  }

  if (v2 == 1)
  {
    *result = *a2;
    *(result + 40) = 1;
  }

  else
  {
    v3 = *(a2 + 24);
    *(result + 24) = v3;
    v4 = result;
    (**(v3 - 8))();
    result = v4;
    *(v4 + 40) = 0;
  }

  return result;
}

void *destroy for NamedCoordinateSpace(void *a1)
{
  if ((a1[5] & 1) == 0)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

double ViewTransform.containingSizedCoordinateSpace(name:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  outlined init with copy of CoordinateSpace.Name(a1, &v16);
  if (v19)
  {
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v20 = v17;
    v21 = v18;
  }

  *v22 = v16;
  *&v22[8] = v20;
  *&v22[24] = v21;
  v23 = v10;
  v16 = v4;
  *&v17 = v5;
  *(&v17 + 1) = v6;
  *&v18 = v7;
  *(&v18 + 1) = v8;
  v19 = v9;
  ViewTransform.coordinateSpaceTag(_:)(v22, &v20);
  if (BYTE8(v20))
  {
    if (one-time initialization token for worldReference != -1)
    {
      swift_once();
    }

    v16 = static CoordinateSpace.ID.worldReference;
    LOBYTE(v19) = 1;
    v11 = specialized static CoordinateSpace.== infix(_:_:)(v22, &v16);
    outlined destroy of CoordinateSpace(&v16);
    outlined destroy of CoordinateSpace(v22);
    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = -3;
    }
  }

  else
  {
    v12 = v20;
    outlined destroy of CoordinateSpace(v22);
  }

  memset(v22, 0, 32);
  v22[32] = 1;
  v16 = v4;
  *&v17 = v5;
  *(&v17 + 1) = v6;
  *&v18 = v7;
  *(&v18 + 1) = v8;
  v19 = v9;
  specialized ViewTransform.forEach(inverted:_:)(0, &v16, v22, v12);
  v13 = v22[32];
  result = *v22;
  v15 = *&v22[16];
  *a2 = *v22;
  *(a2 + 16) = v15;
  *(a2 + 32) = v13;
  return result;
}

uint64_t specialized ViewTransform.forEach(inverted:_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v22 = a3;
  v23 = a4;
  v4 = *a2;
  if (*a2)
  {
    v6 = *(a2 + 32);
    v20 = 0;
    if (result)
    {
      if ((v6.f64[0] != 0.0 || v6.f64[1] != 0.0) && (*(a3 + 32) & 1) == 0)
      {
        *a3 = vsubq_f64(*a3, v6);
        *(a3 + 32) = 0;
      }

      v7 = v4;
      do
      {
        v8 = v7;
        v7 = *(v7 + 16);
        (*(*v8 + 104))(1, &v20, partial apply for closure #1 in ViewTransform.containingSizedCoordinateSpace(name:), v21);
      }

      while ((v20 & 1) == 0 && v7);
    }

    v9 = *(v4 + 24);
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v19 = v6;
      if (!(v9 >> 60))
      {

        if ((8 * v9) >= 1025)
        {
LABEL_29:
          isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
          if ((isStackAllocationSafe & 1) == 0)
          {
            v18 = swift_slowAlloc();
            closure #3 in ViewTransform.forEach(inverted:_:)(v18, v9, v4, v9, &v20, partial apply for closure #1 in ViewTransform.containingSizedCoordinateSpace(name:), v21);
            MEMORY[0x193AC4820](v18, -1, -1);
            v17 = v19;
            if (v20)
            {
            }

LABEL_22:
            if ((v17.n128_f64[0] != 0.0 || v17.n128_f64[1] != 0.0) && (*(a3 + 32) & 1) == 0)
            {
              *a3 = vaddq_f64(v17, *a3);
              *(a3 + 32) = 0;
            }
          }
        }

        v11.n128_f64[0] = MEMORY[0x1EEE9AC00](isStackAllocationSafe);
        v13 = &v19 - v12;
        *(v19.n128_u64 - v12) = v4;
        v14 = *(v4 + 16);
        if (v14)
        {
          v15 = v13 + 8;
          do
          {
            *v15++ = v14;
            v14 = *(v14 + 16);
          }

          while (v14);
        }

        v16 = 0;
        v17 = v19;
        while (v9 != v16)
        {
          if (__OFADD__(v16, 1))
          {
            __break(1u);
            goto LABEL_29;
          }

          (*(**&v13[8 * (v9 - (v16 + 1))] + 104))(0, &v20, partial apply for closure #1 in ViewTransform.containingSizedCoordinateSpace(name:), v21, v11, v17);
          v17 = v19;
          ++v16;
          if (v20 == 1)
          {
          }
        }

        goto LABEL_22;
      }
    }

    __break(1u);
  }

  return result;
}

void closure #1 in ViewTransform.containingSizedCoordinateSpace(name:)(uint64_t a1, double a2, double a3, double a4, int64x2_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *a1;
  v15 = *(a1 + 16);
  v16 = *(a1 + 112) >> 5;
  if (v16 > 2)
  {
    if (v16 != 3 && v16 == 4 && *&v14.f64[0] == a8)
    {
      *a7 = 0;
      *(a7 + 8) = 0;
      *(a7 + 16) = v14.f64[1];
      *(a7 + 24) = v15;
      *(a7 + 32) = 0;
    }
  }

  else if (v16)
  {
    if (v16 != 1)
    {
      goto LABEL_11;
    }

    v17 = *(a1 + 24);
    v18 = *(a1 + 40);
    v19 = *(a1 + 48);
    a5.i64[0] = *(a1 + 16);
    v20 = v14.f64[0] == 0.0;
    if (*v17.i64 != 0.0)
    {
      v20 = 0;
    }

    v21 = v15 == 0.0 && v14.f64[1] == 0.0;
    if (v21 || v20)
    {
      if ((*(a7 + 32) & 1) == 0)
      {
        v33 = v13;
        v34 = v12;
        v35 = v11;
        v36 = v10;
        v37 = v8;
        v38 = v9;
        v25 = *(a7 + 16);
        v24 = *(a7 + 24);
        v27 = *a7;
        v26 = *(a7 + 8);
        if (v19)
        {
          *&v32.a = v14;
          v32.c = v15;
          *&v32.d = v17;
          v32.ty = v18;
          CGAffineTransformInvert(&v31, &v32);
          v30 = *&v31.c;
          v29 = *&v31.tx;
          v14 = *&v31.a;
        }

        else
        {
          v30 = vzip1q_s64(a5, v17);
          *&v29 = vdupq_laneq_s64(v17, 1).u64[0];
          *(&v29 + 1) = v18;
        }

        *&v32.a = v14;
        *&v32.c = v30;
        *&v32.tx = v29;
        v39.origin.x = v27;
        v39.origin.y = v26;
        v39.size.width = v25;
        v39.size.height = v24;
        *a7 = CGRectApplyAffineTransform(v39, &v32);
        *(a7 + 32) = 0;
      }
    }

    else
    {
LABEL_11:
      *a7 = 0u;
      *(a7 + 16) = 0u;
      *(a7 + 32) = 1;
    }
  }

  else if ((*(a7 + 32) & 1) == 0)
  {
    *a7 = vaddq_f64(*a7, v14);
    *(a7 + 32) = 0;
  }
}

uint64_t CGRect.convert(to:transform:)(uint64_t a1, float64x2_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  v10 = a2[1];
  v25[0] = *a2;
  v25[1] = v10;
  v25[2] = a2[2];
  v11 = *v5;
  v12 = v5[1];
  v14 = v5[2];
  v13 = v5[3];
  v15 = *v5;
  v10.f64[0] = v12;
  v16 = v14;
  v17 = v13;
  result = CGRectIsNull(*(&v10 - 8));
  if (result)
  {
    goto LABEL_5;
  }

  v26.origin.x = v11;
  v26.origin.y = v12;
  v26.size.width = v14;
  v26.size.height = v13;
  result = CGRectIsInfinite(v26);
  if (result)
  {
    goto LABEL_5;
  }

  type metadata accessor for _ContiguousArrayStorage<CGPoint>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CGPoint>, type metadata accessor for CGPoint, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18DDACA80;
  *(inited + 32) = v11;
  *(inited + 40) = v12;
  *(inited + 48) = v11 + v14;
  *(inited + 56) = v12;
  *(inited + 64) = v11 + v14;
  *(inited + 72) = v12 + v13;
  *(inited + 80) = v11;
  *(inited + 88) = v12 + v13;
  v24 = inited;
  specialized ApplyViewTransform.convert(to:transform:)(a1, v25, v8, a4, a5);
  result = v24;
  if (*(v24 + 16) >= 4uLL)
  {
    result = specialized CGRect.init(cornerPoints:)(v24, v24 + 32, 0, 9uLL);
    v11 = v20;
    v12 = v21;
    v14 = v22;
    v13 = v23;
LABEL_5:
    *v5 = v11;
    v5[1] = v12;
    v5[2] = v14;
    v5[3] = v13;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t *specialized ViewTransform.convert(_:_:)(uint64_t *result, float64x2_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *result;
  v9 = result[1];
  v10 = *(result + 16);
  v11 = a2[1];
  v24 = *a2;
  v12 = a2[2];
  v25 = v11;
  v26 = v12;
  if (*&v24.f64[0] || *&v26 != 0.0 || *(&v26 + 1) != 0.0)
  {
    v14 = swift_allocObject();
    v15 = v14;
    *(v14 + 16) = v8;
    *(v14 + 24) = v9;
    *(v14 + 32) = v10;
    if (v10 == 4)
    {
      if (v8 != -1)
      {
        if (v9 != -1)
        {
          if (v8)
          {
            if (v9)
            {
              v23 = 0;
              v16 = a2[1];
              v20 = *a2;
              v21 = v16;
              v22 = a2[2];
              v18[0] = v8;
              v19 = v9;
              v17 = ViewTransform.spaceBeforeSpace(_:_:)(v18, &v19) ^ 1;
            }

            else
            {
              *(v14 + 24) = 0;
              v17 = 1;
              *(v14 + 32) = 1;
              v23 = 0;
            }

            goto LABEL_25;
          }

          *(v14 + 16) = v9;
          *(v14 + 24) = 0;
          v8 = v9;
          *(v14 + 32) = 0;
LABEL_23:
          if (v8)
          {
            goto LABEL_24;
          }
        }

        *(v14 + 24) = 0;
        *(v14 + 32) = 3;
        v23 = 0;
        goto LABEL_20;
      }

      *(v14 + 16) = v9;
      *(v14 + 24) = 0;
      *(v14 + 32) = 2;
      if (v9 == -1)
      {
      }
    }

    else
    {
      v23 = 0;
      if (v10 > 1)
      {
        if (v10 != 2)
        {
LABEL_20:
          if (!v8)
          {
LABEL_24:
            v17 = 0;
            v23 = 1;
            goto LABEL_25;
          }

          v17 = 0;
LABEL_25:
          v20 = v24;
          v21 = v25;
          v22 = v26;
          outlined init with copy of ViewTransform(&v24, v18);
          return specialized ViewTransform.forEach(inverted:_:)(v17 & 1, &v20, &v24, v15, &v23, a3, a4, a5);
        }

        if (v8 == -1)
        {
        }
      }

      else
      {
        if (!v10)
        {
          goto LABEL_23;
        }

        if (v8 != -1)
        {
          v17 = 1;
          goto LABEL_25;
        }
      }
    }

    v17 = 1;
    v23 = 1;
    goto LABEL_25;
  }

  return result;
}

uint64_t specialized ViewTransform.forEach(inverted:_:)(char a1, float64x2_t *a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = *MEMORY[0x1E69E9840];
  v37 = a6;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v34 = a7;
  v35 = &v36;
  v9 = *&a2->f64[0];
  if (*&a2->f64[0])
  {
    v12 = a2[2];
    v29 = 0;
    if (a1)
    {
      if (v12.f64[0] == 0.0 && v12.f64[1] == 0.0)
      {
      }

      else
      {
        v38[0] = vnegq_f64(v12);
        v39 = 0;
        v22 = *a5;

        if (v22 == 1)
        {
          specialized MutableCollection<>._applyTransform(item:)(v38);
        }
      }

      v23 = v9;
      do
      {
        v24 = v23;
        v23 = *(v23 + 16);
        (*(*v24 + 104))(1, &v29, a8, v30);
      }

      while ((v29 & 1) == 0 && v23);
      goto LABEL_26;
    }

    v13 = *(v9 + 24);
    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v28 = v12;
      if (!(v13 >> 60))
      {

        if ((8 * v13) >= 1025)
        {
LABEL_29:
          isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
          if ((isStackAllocationSafe & 1) == 0)
          {
            v26 = swift_slowAlloc();
            closure #3 in ViewTransform.forEach(inverted:_:)(v26, v13, v9, v13, &v29, a8, v30);
            MEMORY[0x193AC4820](v26, -1, -1);
            v21 = v28;
            if (v29)
            {
LABEL_26:

              goto LABEL_27;
            }

LABEL_17:
            if (v21.n128_f64[0] != 0.0 || v21.n128_f64[1] != 0.0)
            {
              v38[0] = v21;
              v39 = 0;
              if (*a5 == 1)
              {
                specialized MutableCollection<>._applyTransform(item:)(v38);
              }
            }

            goto LABEL_26;
          }
        }

        v27[1] = v27;
        v15.n128_f64[0] = MEMORY[0x1EEE9AC00](isStackAllocationSafe);
        v17 = v27 - v16;
        *(v27 - v16) = v9;
        v18 = *(v9 + 16);
        if (v18)
        {
          v19 = v17 + 8;
          do
          {
            *v19++ = v18;
            v18 = *(v18 + 16);
          }

          while (v18);
        }

        v20 = 0;
        v21 = v28;
        while (v13 != v20)
        {
          if (__OFADD__(v20, 1))
          {
            __break(1u);
            goto LABEL_29;
          }

          (*(**&v17[8 * (v13 - (v20 + 1))] + 104))(0, &v29, a8, v30, v15, v21);
          v21 = v28;
          ++v20;
          if (v29 == 1)
          {
            goto LABEL_26;
          }
        }

        goto LABEL_17;
      }
    }

    __break(1u);
  }

LABEL_27:
  outlined destroy of ViewTransform(a3);
}

uint64_t GeometryProxy.placementContext.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    result = AGWeakAttributeGetAttribute();
    v3 = *MEMORY[0x1E698D3F8];
    if (result == *MEMORY[0x1E698D3F8] || (v4 = result, result = AGWeakAttributeGetAttribute(), result == v3) || (v5 = result, result = AGWeakAttributeGetAttribute(), result == v3) || (v6 = result, result = AGWeakAttributeGetAttribute(), result == v3) || (v7 = result, result = AGWeakAttributeGetAttribute(), result == v3))
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 24) = 0;
      *(a1 + 16) = 0;
      *(a1 + 28) = 1;
    }

    else
    {
      v8 = result;
      result = AGWeakAttributeGetAttribute();
      *a1 = v4 | (v4 << 32);
      *(a1 + 8) = v5 | (v6 << 32);
      *(a1 + 16) = v7 | (v8 << 32);
      *(a1 + 24) = result;
      *(a1 + 28) = 0;
    }
  }

  return result;
}

double specialized GeometryProxy.frame<A>(in:)(uint64_t a1)
{
  specialized static Update.begin()();
  v3 = 0;
  v4 = 0;
  if (AGWeakAttributeGetAttribute() != *MEMORY[0x1E698D3F8])
  {
    AGWeakAttributeGetAttribute();
    InputValue = AGGraphGetInputValue();
    v3 = *InputValue;
    v4 = InputValue[1];
  }

  static Update.end()();
  outlined init with copy of CoordinateSpace.Name(a1, v19);
  if (v19[40])
  {
    v6 = 1;
  }

  else
  {
    v6 = 0;
    v21 = *&v19[8];
    v22 = *&v19[24];
  }

  v23 = *v19;
  v24 = v21;
  v25 = v22;
  v26 = v6;
  specialized static Update.begin()();
  v21 = 0uLL;
  *&v22 = v3;
  *(&v22 + 1) = v4;
  v7 = *(v1 + 16);
  *v19 = *v1;
  *&v19[16] = v7;
  *&v19[32] = *(v1 + 32);
  v20 = *(v1 + 48);
  v8 = GeometryProxy.placementContext.getter(&v18);
  MEMORY[0x1EEE9AC00](v8);
  v16[2] = &v21;
  v16[3] = &v23;
  v17 = v9;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI30_PositionAwarePlacementContextV_s5NeverOytTB5(partial apply for closure #1 in GeometryProxy.rect(_:in:), v16, v11, v12, v13, v10 | (v9 << 32));
  v14 = *&v21;
  static Update.end()();
  outlined destroy of CoordinateSpace(&v23);
  return v14;
}

void *_sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI30_PositionAwarePlacementContextV_s5NeverOytTB5(void *(*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a6 & 0x100000000) != 0)
  {
    return ((a6 & 0x100000000uLL) >> 32);
  }

  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v10 = a6;
  result = a1(&v11, v9);
  if (!v6)
  {
    return ((a6 & 0x100000000uLL) >> 32);
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in GeometryProxy.rect(_:in:)(uint64_t a1)
{
  return closure #1 in GeometryProxy.rect(_:in:)(a1, *(v1 + 16), *(v1 + 24));
}

{
  return specialized ViewTransformable.convert(from:to:)(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(v1 + 24));
}

uint64_t specialized ViewTransformable.convert(from:to:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  InputValue = AGGraphGetInputValue();
  v7 = *InputValue;
  v8 = *(InputValue + 8);
  v9 = *(InputValue + 16);
  v10 = *(InputValue + 24);
  v11 = *(InputValue + 32);
  v12 = *(InputValue + 40);
  type metadata accessor for CGPoint(0);

  v13 = AGGraphGetInputValue();
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = v11 - (*v13 - v9);
  v18.f64[0] = v7;
  v18.f64[1] = v8;
  v19 = v14;
  v20 = v15;
  v21 = v16;
  v22 = v12 - (v15 - v10);
  CGRect.convert(to:transform:)(a5, &v18);
}

uint64_t ConcentricCornerPaddingModifier.CornerPadding.layoutComputer.getter@<X0>(unint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a1))
  {
    result = 0;
    v4 = 0;
  }

  else
  {
    v4 = *(AGGraphGetValue() + 8);
  }

  *a2 = result;
  a2[1] = v4;
  return result;
}

void CornerConfigurationShape_v1.resolvedRadii(size:)(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(v17, a1);
  if (_s7SwiftUI26CornerMaskingConfigurationVSgWOg(v17) != 1)
  {
    v13 = v17[10];
    v14 = v17[11];
    v15 = v17[12];
    v16 = v17[13];
    v9 = v17[6];
    v10 = v17[7];
    v11 = v17[8];
    v12 = v17[9];
    v5 = v17[2];
    v6 = v17[3];
    v7 = v17[4];
    v8 = v17[5];
    v3 = v17[0];
    v4 = v17[1];
    v2 = 0;
    closure #1 in CornerMaskingConfiguration.fixedCornerRadii(replacingUndefinedWith:)(&v2);
    v2 = 2;
    closure #1 in CornerMaskingConfiguration.fixedCornerRadii(replacingUndefinedWith:)(&v2);
    v2 = 3;
    closure #1 in CornerMaskingConfiguration.fixedCornerRadii(replacingUndefinedWith:)(&v2);
    v2 = 1;
    closure #1 in CornerMaskingConfiguration.fixedCornerRadii(replacingUndefinedWith:)(&v2);
  }
}

double protocol witness for static AnyContainerShapeType.corners(in:shape:context:) in conformance ContainerCornerShapeType<A>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  static ContainerCornerShapeType.corners(in:shape:context:)(a1, a2, *(a6 + 16), *(a6 + 24), v10);
  result = *v10;
  v9 = v10[1];
  *a7 = v10[0];
  *(a7 + 16) = v9;
  *(a7 + 32) = v11;
  return result;
}

uint64_t static ContainerCornerShapeType.corners(in:shape:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v9 = a1;
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v14)
  {
    WeakValue = AGGraphGetWeakValue();
    if (WeakValue)
    {
      v9 = *WeakValue;
      a2 = WeakValue[1];
    }

    else
    {
      v9 = 0;
      a2 = 0;
    }
  }

  result = AGGraphGetWeakValue();
  v17 = 0.0;
  if (!result)
  {
    goto LABEL_8;
  }

  (*(v11 + 16))(v13, result, a4);
  (*(a5 + 16))(&v27, v9, a2, 0, a4, a5);
  if (_s7SwiftUI30RoundedRectangularShapeCornersVSgWOg(&v27) == 1)
  {
    result = (*(v11 + 8))(v13, a4);
LABEL_8:
    v19 = 1;
    v20 = 0.0;
    v21 = 0.0;
    v22 = 0.0;
    goto LABEL_30;
  }

  v23 = v29;
  if (v30)
  {
    v23 = 0.0;
  }

  if (v28)
  {
    v17 = v23;
  }

  else
  {
    v17 = v27;
  }

  v24 = v33;
  if (v34)
  {
    v24 = 0.0;
  }

  if (v32)
  {
    v22 = v24;
  }

  else
  {
    v22 = v31;
  }

  v25 = v41;
  if (v42)
  {
    v25 = 0.0;
  }

  if (v40)
  {
    v21 = v25;
  }

  else
  {
    v21 = v39;
  }

  v18.n128_f64[0] = v35;
  v26 = v37;
  if (v38)
  {
    v26 = 0.0;
  }

  if (v36)
  {
    v20 = v26;
  }

  else
  {
    v20 = v35;
  }

  result = (*(v11 + 8))(v13, a4, v18);
  v19 = 0;
LABEL_30:
  *a6 = v17;
  *(a6 + 8) = v20;
  *(a6 + 16) = v21;
  *(a6 + 24) = v22;
  *(a6 + 32) = v19;
  return result;
}

__n128 UnevenRoundedRectangle.corners.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *&v15 = *v1;
  BYTE8(v15) = 0;
  v16 = v15;
  *&v17 = 0;
  BYTE8(v17) = 0;
  v18.n128_u64[0] = 0;
  v18.n128_u64[1] = v5;
  LOBYTE(v19) = 0;
  *(&v19 + 1) = v5;
  v20 = 0uLL;
  LOBYTE(v21) = 0;
  *(&v21 + 1) = 0;
  *&v22 = v3;
  BYTE8(v22) = 0;
  v23 = v3;
  *&v24 = 0;
  BYTE8(v24) = 0;
  *&v25 = 0;
  *(&v25 + 1) = v4;
  LOBYTE(v26) = 0;
  *(&v26 + 1) = v4;
  v27 = 0uLL;
  LOBYTE(v28) = 0;
  *(&v28 + 1) = 0;
  _s7SwiftUI26CornerMaskingConfigurationVSgWOi_(&v15);
  v6 = v26;
  v7 = v28;
  *(a1 + 192) = v27;
  *(a1 + 208) = v7;
  v8 = v22;
  v9 = v24;
  v10 = v25;
  *(a1 + 128) = v23;
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 176) = v6;
  v11 = v20;
  v12 = v21;
  *(a1 + 64) = v19;
  *(a1 + 80) = v11;
  *(a1 + 224) = v29;
  *(a1 + 96) = v12;
  *(a1 + 112) = v8;
  v13 = v16;
  *a1 = v15;
  *(a1 + 16) = v13;
  result = v18;
  *(a1 + 32) = v17;
  *(a1 + 48) = result;
  return result;
}

uint64_t _s7SwiftUI26CornerMaskingConfigurationVSgWOg(uint64_t a1)
{
  if (*(a1 + 224))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

void one-time initialization function for thick()
{
  dword_1ED52B27C = 0;
  static Material.thick = 3;
  byte_1ED52B278 = 3;
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<VibrantColorStyleKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<VibrantColorStyleKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<VibrantColorStyleKey>, &type metadata for VibrantColorStyleKey, &protocol witness table for VibrantColorStyleKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<VibrantColorStyleKey> and conformance EnvironmentPropertyKey<A>);
  }
}

uint64_t static Material.thick.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for thick != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = static Material.thick;
  v3 = dword_1ED52B27C;
  *a1 = static Material.thick;
  v4 = byte_1ED52B278;
  *(a1 + 8) = byte_1ED52B278;
  *(a1 + 12) = v3;

  return outlined copy of Material.ID(v2, v4);
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017VibrantColorStyleS033_8CCD408021CD268DDD1874045F6AD3D9LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<VibrantColorStyleKey>, &type metadata for VibrantColorStyleKey, &protocol witness table for VibrantColorStyleKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017VibrantColorStyleV033_8CCD408021CD268DDD1874045F6AD3D9LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA017VibrantColorStyleF033_8CCD408021CD268DDD1874045F6AD3D9LLVG_Tt2g5(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017VibrantColorStyleS033_8CCD408021CD268DDD1874045F6AD3D9LLVG_Tt0g5(*a1) || (type metadata accessor for VibrantColorStyle.Type?(0), result = AGCompareValues(), !result))
  {
    v7 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<VibrantColorStyleKey>>(0);
    v8 = swift_allocObject();
    *(v8 + 72) = a2;
    *(v8 + 80) = a3;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<VibrantColorStyleKey>, &type metadata for VibrantColorStyleKey, &protocol witness table for VibrantColorStyleKey, type metadata accessor for EnvironmentPropertyKey);
    v10 = v9;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v10, 0, v7);
  }

  return result;
}

uint64_t EnvironmentValues.isVibrantColorStyleEnabled.setter(char a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = &type metadata for SystemVibrantColorStyle;
  }

  else
  {
    v3 = 0;
  }

  if (a1)
  {
    v4 = &protocol witness table for SystemVibrantColorStyle;
  }

  else
  {
    v4 = 0;
  }

  v5 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA017VibrantColorStyleF033_8CCD408021CD268DDD1874045F6AD3D9LLVG_Tt2g5(v2, v3, v4);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA017VibrantColorStyleK033_8CCD408021CD268DDD1874045F6AD3D9LLVG_Ttg5(v5, *v2);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<VibrantColorStyleKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<VibrantColorStyleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<VibrantColorStyleKey>, &type metadata for VibrantColorStyleKey, &protocol witness table for VibrantColorStyleKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<VibrantColorStyleKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<VibrantColorStyleKey>>);
    }
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017VibrantColorStyleV033_8CCD408021CD268DDD1874045F6AD3D9LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017VibrantColorStyleV033_8CCD408021CD268DDD1874045F6AD3D9LLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<VibrantColorStyleKey>, &type metadata for VibrantColorStyleKey, &protocol witness table for VibrantColorStyleKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

uint64_t ViewGraph.renderDisplayList(_:asynchronously:time:nextTime:targetTimestamp:version:maxVersion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X2>, double *a4@<X3>, uint64_t a5@<X4>, double *a6@<X5>, void *a7@<X6>, double *a8@<X8>)
{
  v82 = *MEMORY[0x1E69E9840];
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 12);
  v14 = *a3;
  v15 = *a4;
  v69 = *a5;
  v16 = *(a5 + 8);
  v17 = *a6;
  v18 = *a7;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_25;
  }

  v67 = v11;
  v68 = v12;
  v66 = v13;
  v65 = v17;
  v70 = a8;
  v20 = *(v8 + 208);
  ObjectType = swift_getObjectType();
  v22 = type metadata accessor for ViewGraphRenderDelegate();
  v23 = *(v20 + 16);
  v23(&v76, v22, v22, ObjectType, v20);
  v24 = v76;
  if (*&v76 == 0.0)
  {
LABEL_24:
    result = swift_unknownObjectRelease();
    a8 = v70;
LABEL_25:
    *a8 = INFINITY;
    return result;
  }

  v64 = v77;
  v25 = type metadata accessor for DisplayList.ViewRenderer();
  v26 = (v23)(&v76, v25, v25, ObjectType, v20);
  v27 = v76;
  if (*&v76 == 0.0)
  {
    swift_unknownObjectRelease();
    goto LABEL_24;
  }

  if ((a2 & 1) == 0)
  {
    v80 = 0.0;
    v81 = 0;
    a2 = swift_getObjectType();
    (*(*&v64 + 16))(&v80, a2);
    v74 = v80;
    if (one-time initialization token for enabledCategories == -1)
    {
LABEL_27:
      v36 = v68;
      v37 = v67;
      if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
      {
        v69 = *&v18;
        if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 1346;
          LOBYTE(v76) = 1;
          v77 = v14;
          type metadata accessor for (Bool, Double)();
          AGGraphAddTraceEvent();
        }

        v38 = (*(*&v64 + 8))(a2, COERCE_DOUBLE(*&v64));
        v39 = MEMORY[0x1EEE9AC00](v38);
        v54 = v27;
        v55 = v40;
        v56 = v37;
        LOWORD(v57) = v36;
        HIDWORD(v57) = v66;
        v58 = v14;
        v59 = v15;
        v60 = v65;
        v61 = v69;
        v62 = &v74;
        (*(*&v64 + 24))(&v76, 0, partial apply for closure #1 in renderOnMainThread #1 () in ViewGraph.renderDisplayList(_:asynchronously:time:nextTime:targetTimestamp:version:maxVersion:), v39);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        v41 = *&v76;
        goto LABEL_36;
      }

      __break(1u);
      goto LABEL_45;
    }

LABEL_44:
    swift_once();
    goto LABEL_27;
  }

  if (one-time initialization token for enabledCategories != -1)
  {
    v26 = swift_once();
  }

  v28 = v65;
  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1346;
    LOBYTE(v76) = 0;
    v77 = v14;
    type metadata accessor for (Bool, Double)();
    v26 = AGGraphAddTraceEvent();
  }

  if ((*(v27 + 96) & 1) == 0 && *(v27 + 10))
  {
    v29 = *(v27 + 11);
    v30 = swift_getObjectType();
    v76 = v67;
    LOWORD(v77) = v68;
    HIDWORD(v77) = v66;
    v73 = v14;
    v74 = v69;
    v75 = v16;
    v71 = v18;
    v72 = v28;
    v31 = *(v29 + 32);
    swift_unknownObjectRetain();
    v31(&v80, &v76, &v73, &v74, &v72, &v71, v30, v29);
    v26 = swift_unknownObjectRelease();
    if ((v81 & 1) == 0)
    {
      v48 = v80;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v15 >= v48)
      {
        v49 = v48;
      }

      else
      {
        v49 = v15;
      }

      v50 = v49 - v14;
      swift_beginAccess();
      v51 = *(v27 + 4);

      if (v51 > v50)
      {
        v52 = v51;
      }

      else
      {
        v52 = v50;
      }

      v41 = v14 + v52;
      goto LABEL_36;
    }

    v28 = v65;
  }

  v74 = v15;
  MEMORY[0x1EEE9AC00](v26);
  v53[2] = &v74;
  v53[3] = v24;
  v32 = v64;
  v54 = *&v64;
  v55 = v14;
  LOBYTE(v56) = 1;
  v57 = v27;
  v58 = *&v67;
  LOWORD(v59) = v68;
  HIDWORD(v59) = v66;
  v60 = v15;
  v61 = v28;
  v62 = v18;
  if (![objc_opt_self() isMainThread])
  {
    *&v42 = COERCE_DOUBLE(swift_allocObject());
    *(v42 + 16) = partial apply for closure #1 in ViewGraph.renderDisplayList(_:asynchronously:time:nextTime:targetTimestamp:version:maxVersion:);
    *(v42 + 24) = v53;
    v43 = AGSubgraphGetCurrent();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    *&v76 = COERCE_DOUBLE(partial apply for thunk for @callee_guaranteed () -> ());
    v77 = *&v42;
    v78 = v43;
    v79 = CurrentAttribute;
    v45 = one-time initialization token for _lock;

    if (v45 == -1)
    {
      goto LABEL_34;
    }

    goto LABEL_46;
  }

  v80 = 0.0;
  v81 = 0;
  v33 = swift_getObjectType();
  (*(*&v64 + 16))(&v80, v33, COERCE_DOUBLE(*&v64));
  v73 = v80;
  if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
  {
    v69 = COERCE_DOUBLE(&v63);
    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1346;
      LOBYTE(v76) = 1;
      v77 = v14;
      type metadata accessor for (Bool, Double)();
      AGGraphAddTraceEvent();
    }

    v34 = (*(*&v32 + 8))(v33, COERCE_DOUBLE(*&v32));
    v35 = MEMORY[0x1EEE9AC00](v34);
    (*(*&v32 + 24))(&v76, 1, closure #1 in renderOnMainThread #1 () in ViewGraph.renderDisplayList(_:asynchronously:time:nextTime:targetTimestamp:version:maxVersion:)partial apply, v35);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v74 = *&v76;

    result = swift_unknownObjectRelease();
    goto LABEL_35;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  swift_once();
LABEL_34:
  _MovableLockSyncMain(static Update._lock, &v76, @objc closure #1 in closure #1 in closure #1 in static Update.syncMain(_:));
  swift_unknownObjectRelease();
  v46 = v78;

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  swift_unknownObjectRelease();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

LABEL_35:
  v41 = v74;
LABEL_36:
  *v70 = v41;
  return result;
}

uint64_t destroy for DisplayList.ViewUpdater.Model.State(uint64_t a1)
{
  outlined consume of GraphicsBlendMode(*(a1 + 16), *(a1 + 24));

  if ((~*(a1 + 112) & 0xF000000000000007) != 0)
  {
  }
}

void *CoreViewSubviewsCount(void *result, void *a2)
{
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    a2 = [a2 layer];
  }

  v2 = [a2 sublayers];

  return [v2 count];
}

char *DisplayList.ViewUpdater.Container.removeRemaining(viewCache:)(void *a1)
{
  v112 = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[4];
  v6 = (*v1 & 3);
  result = CoreViewSubviewsCount(v6, v4);
  if (v5 < result)
  {
    v8 = result;
    v9 = a1[1];
    v72 = a1;
    v73 = v3;
    v74 = v4;
    v75 = v9;
    v76 = v5;
    while (1)
    {
      if (v5 >= v8)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
      }

      --v8;
      LOBYTE(v111[0]) = v6;
      v10 = CoreViewSubviewAtIndex(v6, v4, v8, v111);
      v11 = v3;
      if (LOBYTE(v111[0]) == v6)
      {
        if (*(v9 + 16))
        {
          goto LABEL_7;
        }

LABEL_3:
        result = swift_unknownObjectRelease();
        if (v5 == v8)
        {
          return result;
        }
      }

      else
      {
        if (one-time initialization token for caLayer != -1)
        {
          v3 = v10;
          swift_once();
          v10 = v3;
          LOBYTE(v3) = v73;
        }

        v11 = static DisplayList.ViewUpdater.Platform.caLayer;
        if (!*(v9 + 16))
        {
          goto LABEL_3;
        }

LABEL_7:
        v84 = v10;
        v12 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
        if ((v13 & 1) == 0)
        {
          goto LABEL_3;
        }

        v14 = *a1;
        if (!*(*a1 + 16))
        {
          goto LABEL_35;
        }

        v79 = v11;
        v15 = (*(v9 + 56) + 20 * v12);
        v16 = *v15;
        v17 = v15[1];
        v18 = v15[2];
        v19 = v15[3];
        v20 = *(v15 + 16);
        v21 = *(v15 + 17);
        v77 = v15[1];
        v78 = *v15;
        if (v21)
        {
          v22 = 256;
        }

        else
        {
          v22 = 0;
        }

        v83 = v20;
        v80 = v22;
        v81 = v18 | (v19 << 32);
        v82 = v16 | (v17 << 32);
        v23 = specialized __RawDictionaryStorage.find<A>(_:)(v82, v81, v22 | v20);
        if ((v24 & 1) == 0)
        {
          goto LABEL_36;
        }

        v25 = *(v14 + 56) + (v23 << 7);
        v27 = *(v25 + 32);
        v26 = *(v25 + 48);
        v28 = *(v25 + 16);
        v111[0] = *v25;
        v111[1] = v28;
        v111[2] = v27;
        v111[3] = v26;
        v29 = *(v25 + 64);
        v30 = *(v25 + 80);
        v31 = *(v25 + 112);
        v111[6] = *(v25 + 96);
        v111[7] = v31;
        v111[4] = v29;
        v111[5] = v30;
        v32 = *(v25 + 16);
        v104 = *v25;
        v105 = v32;
        v33 = *(v25 + 32);
        v34 = *(v25 + 48);
        v35 = *(v25 + 96);
        v109 = *(v25 + 80);
        v110 = v35;
        v36 = *(v25 + 64);
        v107 = v34;
        v108 = v36;
        v106 = v33;
        v37 = *(v25 + 113);
        *(v103 + 7) = *(v25 + 120);
        v103[0] = v37;
        if ((v31 & 1) == 0)
        {
          v99 = v108;
          v100 = v109;
          v101 = v110;
          v95 = v104;
          v96 = v105;
          v97 = v106;
          v98 = v107;
          LOBYTE(v102) = 1;
          *(&v102 + 1) = *(v103 + 7);
          *(&v102 + 1) = v103[0];
          outlined init with copy of DisplayList.ViewUpdater.ViewInfo(v111, &v87);
          outlined init with copy of DisplayList.ViewUpdater.ViewInfo(&v95, &v87);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v86 = *a1;
          v39 = v86;
          v41 = specialized __RawDictionaryStorage.find<A>(_:)(v82, v81, v80 | v83);
          v42 = v39[2];
          v43 = (v40 & 1) == 0;
          v44 = v42 + v43;
          if (__OFADD__(v42, v43))
          {
            goto LABEL_37;
          }

          v45 = v40;
          if (v39[3] >= v44)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v4 = v74;
              if ((v40 & 1) == 0)
              {
                goto LABEL_28;
              }
            }

            else
            {
              specialized _NativeDictionary.copy()();
              v4 = v74;
              if ((v45 & 1) == 0)
              {
                goto LABEL_28;
              }
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v44, isUniquelyReferenced_nonNull_native);
            v46 = specialized __RawDictionaryStorage.find<A>(_:)(v82, v81, v80 | v83);
            if ((v45 & 1) != (v47 & 1))
            {
              result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return result;
            }

            v41 = v46;
            v4 = v74;
            if ((v45 & 1) == 0)
            {
LABEL_28:
              v3 = v86;
              v86[(v41 >> 6) + 8] |= 1 << v41;
              v61 = v3[6] + 20 * v41;
              *v61 = v78;
              *(v61 + 4) = v77;
              *(v61 + 8) = v18;
              *(v61 + 12) = v19;
              *(v61 + 16) = v83;
              *(v61 + 17) = v21;
              v62 = (v3[7] + (v41 << 7));
              v64 = v101;
              v63 = v102;
              v65 = v100;
              v62[4] = v99;
              v62[5] = v65;
              v62[6] = v64;
              v62[7] = v63;
              v67 = v97;
              v66 = v98;
              v68 = v96;
              *v62 = v95;
              v62[1] = v68;
              v62[2] = v67;
              v62[3] = v66;
              v69 = v3[2];
              v70 = __OFADD__(v69, 1);
              v71 = v69 + 1;
              if (v70)
              {
                goto LABEL_38;
              }

              v3[2] = v71;
              goto LABEL_30;
            }
          }

          v3 = v86;
          v48 = (v86[7] + (v41 << 7));
          v49 = v48[3];
          v51 = *v48;
          v50 = v48[1];
          v89 = v48[2];
          v90 = v49;
          v87 = v51;
          v88 = v50;
          v52 = v48[6];
          v54 = v48[4];
          v53 = v48[5];
          v94 = v48[7];
          v92 = v53;
          v93 = v52;
          v91 = v54;
          v55 = v95;
          v56 = v96;
          v57 = v98;
          v48[2] = v97;
          v48[3] = v57;
          *v48 = v55;
          v48[1] = v56;
          v58 = v99;
          v59 = v100;
          v60 = v102;
          v48[6] = v101;
          v48[7] = v60;
          v48[4] = v58;
          v48[5] = v59;
          outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v87);
LABEL_30:
          a1 = v72;
          *v72 = v3;
          specialized Set._Variant.insert(_:)(v85, v82, v81, v80 | v83);
          v91 = v108;
          v92 = v109;
          v93 = v110;
          v87 = v104;
          v88 = v105;
          v89 = v106;
          v90 = v107;
          LOBYTE(v94) = 1;
          *(&v94 + 1) = *(v103 + 7);
          *(&v94 + 1) = v103[0];
          outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v87);
          LOBYTE(v3) = v73;
          goto LABEL_31;
        }

        v99 = v108;
        v100 = v109;
        v101 = v110;
        v95 = v104;
        v96 = v105;
        v97 = v106;
        v98 = v107;
        LOBYTE(v102) = v31;
        *(&v102 + 1) = *(v103 + 7);
        *(&v102 + 1) = v103[0];
        outlined init with copy of DisplayList.ViewUpdater.ViewInfo(v111, &v87);
        outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v95);
LABEL_31:
        v9 = v75;
        CoreViewRemoveFromSuperview(v79 & 3, v84);
        result = swift_unknownObjectRelease();
        v5 = v76;
        if (v76 == v8)
        {
          return result;
        }
      }
    }
  }

  return result;
}

Swift::Void __swiftcall DisplayList.ViewUpdater.ViewCache.reclaim(time:)(SwiftUI::Time time)
{
  v3 = v2;
  v4 = *v1;
  v5 = *(v2 + 16);
  v8 = *(v5 + 56);
  v7 = v5 + 56;
  v6 = v8;
  v9 = 1 << *(*(v2 + 16) + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v53 = *(v2 + 16);

  v13 = 0;
  while (v11)
  {
    v14 = v11;
LABEL_10:
    v11 = (v14 - 1) & v14;
    v16 = *v3;
    if (*(*v3 + 16))
    {
      v17 = *(v53 + 48) + 20 * (__clz(__rbit64(v14)) | (v13 << 6));
      v18 = *(v17 + 16);
      v19 = *v17;
      v20 = *(v17 + 8);
      v21 = *(v17 + 17) ? 256 : 0;
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20, v21 | v18);
      if (v23)
      {
        v24 = (*(v16 + 56) + (v22 << 7));
        v25 = v24[4];
        v26 = v24[5];
        v27 = v24[6];
        v63 = v24[7];
        v29 = v24[2];
        v28 = v24[3];
        v30 = v24[1];
        v56 = *v24;
        v57 = v30;
        v58 = v29;
        v59 = v28;
        v61 = v26;
        v62 = v27;
        v60 = v25;
        if (v63 == 1)
        {
          v31 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20, v21 | v18);
          if (v32)
          {
            v33 = v31;
            outlined init with copy of DisplayList.ViewUpdater.ViewInfo(&v56, v55);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v35 = *v3;
            v54 = *v3;
            if (!isUniquelyReferenced_nonNull_native)
            {
              specialized _NativeDictionary.copy()();
              v35 = v54;
            }

            v36 = (*(v35 + 56) + (v33 << 7));
            v38 = v36[2];
            v37 = v36[3];
            v39 = v36[1];
            v55[0] = *v36;
            v55[1] = v39;
            v55[2] = v38;
            v55[3] = v37;
            v40 = v36[4];
            v41 = v36[5];
            v42 = v36[7];
            v55[6] = v36[6];
            v55[7] = v42;
            v55[4] = v40;
            v55[5] = v41;
            outlined destroy of DisplayList.ViewUpdater.ViewInfo(v55);
            specialized _NativeDictionary._delete(at:)(v33, v35);
            *v3 = v35;
          }

          else
          {
            outlined init with copy of DisplayList.ViewUpdater.ViewInfo(&v56, v55);
          }

          v43 = *(&v56 + 1);
          v44 = specialized __RawDictionaryStorage.find<A>(_:)(*(&v56 + 1));
          if (v45)
          {
            v46 = v44;
            v47 = swift_isUniquelyReferenced_nonNull_native();
            v48 = *(v3 + 8);
            *&v55[0] = v48;
            if (!v47)
            {
              specialized _NativeDictionary.copy()();
              v48 = *&v55[0];
            }

            specialized _NativeDictionary._delete(at:)(v46, v48);
            *(v3 + 8) = v48;
          }

          v49 = v60;
          if (v60 <= 0x12u && ((1 << v60) & 0x57C21) != 0)
          {
            v50 = v56;
            *&v55[0] = v56;
            DisplayList.ViewUpdater.ViewCache.removeChildren(platform:container:)(v55, *(&v57 + 1));
            if (v49 == 14)
            {
              v51 = CoreViewMaskView((v50 & 3), v43);
              if (v51)
              {
                *&v55[0] = v50;
                DisplayList.ViewUpdater.ViewCache.removeChildren(platform:container:)(v55, v51);
                swift_unknownObjectRelease();
              }
            }
          }

          outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v56);
        }
      }
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return;
    }

    if (v15 >= v12)
    {
      break;
    }

    v14 = *(v7 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_10;
    }
  }

  *(v3 + 16) = MEMORY[0x1E69E7CD0];
  if (*(*(v3 + 24) + 16))
  {
    v52 = specialized _NativeDictionary.filter(_:)(*(v3 + 24), v4);

    *(v3 + 24) = v52;
  }

  ++*(v3 + 84);
}

unint64_t type metadata accessor for ViewGraphRenderObserver()
{
  result = lazy cache variable for type metadata for ViewGraphRenderObserver;
  if (!lazy cache variable for type metadata for ViewGraphRenderObserver)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ViewGraphRenderObserver);
  }

  return result;
}

void type metadata accessor for Date?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _s10Foundation4DateVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s10Foundation4DateVSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _s10Foundation4DateVSgMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void _s10Foundation4DateVSgMaTm_3(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s10Foundation4DateVSgMaTm_4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _s10Foundation4DateVSgMaTm_5(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for (DisplayList, DisplayList.Version)()
{
  if (!lazy cache variable for type metadata for (DisplayList, DisplayList.Version))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (DisplayList, DisplayList.Version));
    }
  }
}

uint64_t destroy for AsyncTransaction(void *a1)
{
}

void *DisplayList.ViewUpdater.render(rootView:from:time:version:maxVersion:environment:)@<X0>(void *result@<X0>, uint64_t *a2@<X1>, double *a3@<X2>, unint64_t *a4@<X3>, uint64_t *a5@<X4>, unint64_t *a6@<X5>, double *a7@<X8>)
{
  v9 = v8;
  v10 = result;
  v97 = *MEMORY[0x1E69E9840];
  v12 = *a2;
  v13 = *(a2 + 4);
  v14 = *(a2 + 3);
  v15 = *a3;
  v16 = *a4;
  v17 = *a5;
  if (*a6 != *(v8 + 160))
  {
    *(v8 + 160) = *a6;
    *(v8 + 192) = 0;
    swift_beginAccess();
    DisplayList.ViewUpdater.ViewCache.invalidateAll()();
    result = swift_endAccess();
    *(v8 + 144) = 0;
  }

  if (*(v8 + 192) != 1)
  {
LABEL_9:
    DisplayList.ViewUpdater.effectiveRootPlatform.getter(&v85);
    v19 = v85;
    if (*(v8 + 184) == 0.0)
    {
      v20 = CoreViewLayer(v85 & 3, v10);
      [v20 setAllowsGroupOpacity_];
      [v20 setAllowsGroupBlending_];
    }

    if (v16)
    {
      v21 = (2 * ((33 * (v16 >> 16)) ^ v16)) | 1;
    }

    else
    {
      LOWORD(v21) = 0;
    }

    *(v9 + 144) = v21;
    *(v9 + 146) = v21;
    *(v9 + 193) = *(v9 + 192);
    *(v9 + 192) = 1;
    *(v9 + 168) = v12;
    *(v9 + 176) = v13;
    *(v9 + 180) = v14;

    *(v9 + 184) = v15;
    swift_beginAccess();
    value = printTree.value;
    v59 = a7;
    if (printTree.value == 2)
    {
      v23 = getenv("SWIFTUI_PRINT_TREE");
      if (!v23)
      {
        printTree.value = 0;
        swift_endAccess();
        goto LABEL_21;
      }

      v24 = atoi(v23);
      printTree.value = v24 != 0;
      swift_endAccess();
      if (!v24)
      {
LABEL_21:
        v27 = *(v9 + 160);
        v65[0] = v9;
        *&v65[1] = v15;
        v65[2] = v17;
        v65[3] = v27;
        v28 = one-time initialization token for normal;

        if (v28 != -1)
        {
          swift_once();
        }

        v29 = static GraphicsBlendMode.normal;
        v30 = byte_1ED52F818;
        *&v85 = v65;
        DWORD2(v85) = 1065353216;
        *&v86 = static GraphicsBlendMode.normal;
        BYTE8(v86) = byte_1ED52F818;
        v87 = 0x3FF0000000000000uLL;
        *&v88 = 0;
        *(&v88 + 1) = 0x3FF0000000000000;
        v89 = 0uLL;
        *&v90 = MEMORY[0x1E69E7CC0];
        *(&v90 + 1) = MEMORY[0x1E69E7CC0];
        *&v91 = 0;
        *(&v91 + 7) = 0;
        *&v92 = 0xF000000000000007;
        *(&v92 + 1) = MEMORY[0x1E69E7CC0];
        v96 = 0;
        v94 = 0u;
        v95 = 0u;
        v93 = 0u;
        swift_beginAccess();
        *(v9 + 104) = 0;
        *(v9 + 112) = 0;
        *(v9 + 120) = 0;
        *(v9 + 128) = v12;
        *(v9 + 136) = v13;
        *(v9 + 140) = v14;

        outlined copy of GraphicsBlendMode(v29, v30);

        DisplayList.ViewUpdater.ViewCache.clearAsyncValues()();
        swift_endAccess();
        v31 = CoreViewLayer(v19 & 3, v10);
        v58 = [v31 needsLayoutOnGeometryChange];
        [v31 setNeedsLayoutOnGeometryChange_];
        v63 = INFINITY;
        v64 = 0;
        v60 = v19;
        v61 = v10;
        v62 = 0;
        v32 = *(v12 + 16);
        if (v32)
        {
          v57 = v31;
          v33 = (v12 + 32);
          swift_unknownObjectRetain();
          do
          {
            v66 = *v33;
            v34 = v33[1];
            v35 = v33[2];
            v36 = v33[3];
            *(v69 + 12) = *(v33 + 60);
            v68 = v35;
            v69[0] = v36;
            v67 = v34;
            *&v84[12] = *(v33 + 60);
            v82 = v33[1];
            v83 = v33[2];
            *v84 = v33[3];
            v81 = *v33;
            v37 = *&v84[24];
            swift_beginAccess();
            if (v37)
            {
              v38 = 0;
              v39 = *(v9 + 104);
              v40 = *(v9 + 108);
              v41 = *(v9 + 112);
              v42 = *(v9 + 120);
              v43 = 1;
              *(v9 + 104) = v37;
            }

            else
            {
              v43 = 0;
              v39 = *(v9 + 104);
              v38 = *(v9 + 108) + 1;
              v41 = *(v9 + 112);
              v42 = *(v9 + 120);
              v40 = v38;
            }

            *(v9 + 108) = v38;
            *(v9 + 120) = v43;
            *&v75[0] = v60;
            outlined init with copy of DisplayList.Item(&v66, v79);
            outlined init with copy of DisplayList.Item(&v66, v79);
            DisplayList.ViewUpdater.ViewCache.prepare(item:platform:parentState:)(&v81, v75, &v85, v79);
            swift_endAccess();
            v44 = *v79;
            if (*v79 >= v63)
            {
              v44 = v63;
            }

            v63 = v44;
            v75[1] = v82;
            v75[2] = v83;
            v76[0] = *v84;
            *(v76 + 12) = *&v84[12];
            v75[0] = v81;
            v73 = v83;
            v74[0] = *v84;
            *(v74 + 12) = *&v84[12];
            v71 = v81;
            v72 = v82;
            outlined init with copy of DisplayList.Item(v75, v79);
            DisplayList.ViewUpdater.updateInheritedView(container:from:parentState:)(&v60, &v71, &v85);
            outlined destroy of DisplayList.Item(&v66);
            v77[2] = v73;
            v78[0] = v74[0];
            *(v78 + 12) = *(v74 + 12);
            v77[0] = v71;
            v77[1] = v72;
            outlined destroy of DisplayList.Item(v77);
            v79[2] = v83;
            v80[0] = *v84;
            *(v80 + 12) = *&v84[12];
            v79[0] = v81;
            v79[1] = v82;
            outlined destroy of DisplayList.Item(v79);
            v45 = *(v9 + 120);
            if ((v45 & 0xC) != 0)
            {
              v46 = *(v9 + 104);
              if ((*(v9 + 120) & 4) != 0)
              {
                *(v9 + 104) = *(v9 + 112);
              }

              if ((v45 & 8) != 0)
              {
                *(v9 + 112) = v46;
              }
            }

            if (v45)
            {
              *(v9 + 104) = v39;
              *(v9 + 108) = v40;
            }

            if ((v45 & 2) != 0)
            {
              *(v9 + 112) = v41;
            }

            *(v9 + 120) = v42;
            v33 += 5;
            --v32;
          }

          while (v32);
          v19 = v60;
          v10 = v61;
          v47 = v62;
          v48 = *&v63;
          v49 = v64;
          v31 = v57;
        }

        else
        {
          swift_unknownObjectRetain();
          v49 = 0;
          v47 = 0;
          v48 = 0x7FF0000000000000;
        }

        *&v66 = v19;
        *(&v66 + 1) = v10;
        *&v67 = v47;
        *(&v67 + 1) = v48;
        *&v68 = v49;
        swift_beginAccess();
        swift_unknownObjectRetain();
        DisplayList.ViewUpdater.Container.removeRemaining(viewCache:)((v9 + 40));
        swift_endAccess();
        swift_unknownObjectRelease();
        *&v81 = v15;
        swift_beginAccess();
        DisplayList.ViewUpdater.ViewCache.reclaim(time:)(v50);
        *(v9 + 128) = MEMORY[0x1E69E7CC0];
        *(v9 + 136) = 0;
        *(v9 + 140) = 0;
        swift_endAccess();

        if ((*(v9 + 192) & 1) == 0)
        {
          v63 = v15;
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v51 = *(v9 + 32);
          ObjectType = swift_getObjectType();
          v53 = type metadata accessor for ViewGraphRenderObserver();
          (*(*(*(v51 + 16) + 8) + 16))(&v66, v53, v53, ObjectType);
          swift_unknownObjectRelease();
          if (*(&v67 + 1))
          {
            outlined init with take of AnyTrackedValue(&v66, &v81);
            v54 = *(&v82 + 1);
            v55 = v83;
            __swift_project_boxed_opaque_existential_1(&v81, *(&v82 + 1));
            (*(v55 + 8))(v54, v55);
            __swift_destroy_boxed_opaque_existential_1(&v81);
LABEL_49:
            v56 = v63;
            swift_unknownObjectRelease();
            *(v9 + 152) = v56;
            *v59 = v56;
            [v31 setNeedsLayoutOnGeometryChange_];

            v69[5] = v93;
            v69[6] = v94;
            v69[7] = v95;
            v70 = v96;
            v69[1] = v89;
            v69[2] = v90;
            v69[3] = v91;
            v69[4] = v92;
            v66 = v85;
            v67 = v86;
            v68 = v87;
            v69[0] = v88;
            return outlined destroy of DisplayList.ViewUpdater.Model.State(&v66);
          }
        }

        else
        {
          *&v68 = 0;
          v66 = 0u;
          v67 = 0u;
        }

        outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(&v66, type metadata accessor for ViewGraphRenderObserver?);
        goto LABEL_49;
      }
    }

    else
    {
      swift_endAccess();
      if (!value)
      {
        goto LABEL_21;
      }
    }

    type metadata accessor for _ContiguousArrayStorage<Any>();
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_18DDA6EB0;
    *&v85 = 0;
    *(&v85 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(17);
    MEMORY[0x193ABEDD0](0x2077656956, 0xE500000000000000);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x193ABEDD0](544497952, 0xE400000000000000);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x193ABEDD0](2618, 0xE200000000000000);
    *&v66 = v12;
    WORD4(v66) = v13;
    HIDWORD(v66) = v14;
    DisplayList.description.getter();
    MEMORY[0x193ABEDD0]();

    v26 = v85;
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 32) = v26;
    print(_:separator:terminator:)();

    goto LABEL_21;
  }

  if (v16)
  {
    if (*(v8 + 144) != ((2 * ((33 * WORD1(v16)) ^ v16)) | 1))
    {
      goto LABEL_9;
    }
  }

  else if (*(v8 + 144))
  {
    goto LABEL_9;
  }

  v18 = *(v8 + 152);
  if (v18 < v15)
  {
    goto LABEL_9;
  }

  *a7 = v18;
  return result;
}

void PreferenceValues.seed.getter(_DWORD *a1@<X8>)
{
  v2 = *(*v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (*v1 + 48);
    do
    {
      v6 = *v4;
      v4 += 14;
      v5 = v6;
      if (v3 != 0xFFFFFFFFLL && v5 != 0)
      {
        if (!v3 || v5 == 0xFFFFFFFFLL)
        {
          v3 = v5;
        }

        else
        {
          v8 = (v5 | (v3 << 32)) + ~(v5 << 32);
          v9 = (v8 ^ (v8 >> 22)) + ~((v8 ^ (v8 >> 22)) << 13);
          v10 = (9 * (v9 ^ (v9 >> 8))) ^ ((9 * (v9 ^ (v9 >> 8))) >> 15);
          v3 = ((v10 + ~(v10 << 27)) >> 31) ^ (v10 + ~(v10 << 27));
        }
      }

      --v2;
    }

    while (v2);
    *a1 = v3;
  }

  else
  {
    *a1 = 0;
  }
}

void specialized GraphHost.runTransaction(_:do:id:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = *MEMORY[0x1E69E9840];
  GraphHost.instantiateIfNeeded()();
  if (a1 >= 2)
  {
    swift_beginAccess();
    v27[0] = a1;
    AGGraphSetValue();
  }

  v25 = a2;
  v26 = a1;
  v12 = a2 | ((HIDWORD(a2) & 1) << 32);
  GraphHost.startTransactionUpdate(id:)(v12);

  specialized closure #1 in withTransaction<A>(_:_:)(a4, a4, a5, a6);
  swift_beginAccess();
  v13 = *(a3 + 24);
  swift_beginAccess();
  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  do
  {
    v16 = *(a3 + 160);
    *(a3 + 160) = v15;
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = v16 + 32;
      do
      {
        outlined init with copy of AnyTrackedValue(v18, v27);
        v19 = v28;
        v20 = v29;
        __swift_project_boxed_opaque_existential_1(v27, v28);
        (*(v20 + 8))(v19, v20);
        __swift_destroy_boxed_opaque_existential_1(v27);
        v18 += 40;
        --v17;
      }

      while (v17);
    }

    ++v14;
    AGSubgraphUpdate();
  }

  while (v14 != 8 && *(*(a3 + 160) + 16));
  if ((v25 & 0x100000000) != 0)
  {

    v21 = v26;
  }

  else
  {
    v21 = v26;
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
    {
      __break(1u);
    }

    if (*(static CustomEventTrace.enabledCategories + 116))
    {
      v22 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 17748;
        v23 = *(v22 + 16);
        LODWORD(v27[0]) = v25;

        v24 = v23;
        AGGraphAddTraceEvent();
      }
    }
  }

  *(a3 + 152) = 0;
  if (v21 >= 2)
  {
    v27[0] = 0;
    AGGraphSetValue();
  }
}

uint64_t specialized closure #1 in withTransaction<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _threadTransactionData();
  v6 = one-time initialization token for v5;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524 == 1)
  {
    if ((dyld_program_minos_at_least() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (dword_1ED53C520 < v7)
  {
    goto LABEL_12;
  }

  if (_threadTransactionData())
  {
    type metadata accessor for PropertyList.Element();
    swift_unknownObjectRetain();
    swift_dynamicCastClassUnconditional();
  }

  PropertyList.merge(_:)(a1);
LABEL_12:
  _setThreadTransactionData();
  v8 = *(a4 + 16);
  if (v8)
  {
    v9 = (a4 + 32);
    do
    {
      v10 = v9[3];
      v11 = v9[4];
      __swift_project_boxed_opaque_existential_1(v9, v10);
      (*(v11 + 8))(v10, v11);
      v9 += 5;
      --v8;
    }

    while (v8);
  }

  _setThreadTransactionData();
}

uint64_t _threadTransactionID()
{
  v0 = _perThreadTransactionID();
  if ((v1 & 1) != 0 || (v2 = *v0, !v2))
  {
    v2 = atomic_fetch_add_explicit(_threadTransactionID_last_id, 1u, memory_order_relaxed) + 1;
    *v0 = v2;
  }

  return v2;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<GraphMutation>, &lazy cache variable for type metadata for GraphMutation, &protocol descriptor for GraphMutation);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyTrackedValue>, &lazy cache variable for type metadata for AnyTrackedValue, &protocol descriptor for AnyTrackedValue);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<()>, type metadata accessor for ());
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Transaction.PendingListeners.WeakListener>, type metadata accessor for Transaction.PendingListeners.WeakListener, type metadata accessor for Transaction.PendingListeners.WeakListener);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ViewList_SublistTransform_Item>, &lazy cache variable for type metadata for _ViewList_SublistTransform_Item, &protocol descriptor for _ViewList_SublistTransform_Item);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<LocalizedStringKey.FormatArgument>, type metadata accessor for LocalizedStringKey.FormatArgument, type metadata accessor for LocalizedStringKey.FormatArgument);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScrollStateRequest>, &lazy cache variable for type metadata for ScrollStateRequest, &protocol descriptor for ScrollStateRequest);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScrollableCollection>, &lazy cache variable for type metadata for ScrollableCollection, &protocol descriptor for ScrollableCollection);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityNodeAttachment>, type metadata accessor for AccessibilityNodeAttachment, type metadata accessor for AccessibilityNodeAttachment);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<ObservationTracking>, MEMORY[0x1E69E81D8], MEMORY[0x1E69E81D8]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Scrollable>, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<ContentPathObservers.Observer>, &type metadata for ContentPathObservers.Observer);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<(_:)>, type metadata accessor for (_:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Duration.UnitsFormatStyle.Unit>, MEMORY[0x1E696A1C0], MEMORY[0x1E696A1C0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry>, type metadata accessor for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

double closure #1 in renderOnMainThread #1 () in ViewGraph.renderDisplayList(_:asynchronously:time:nextTime:targetTimestamp:version:maxVersion:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, double *a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  v14 = a4;
  v18 = *a7;
  v19 = HIDWORD(a4);
  specialized DisplayList.ViewRenderer.updateRenderer(rootView:)(a2);
  v21 = v20;
  swift_beginAccess();
  if (!*(a1 + 48))
  {
    v18 = *(a1 + 40);
  }

  ObjectType = swift_getObjectType();
  v32 = a3;
  v33 = v14;
  v34 = v19;
  v31 = a9;
  v29 = a6;
  v30 = a5;
  v28 = v18;
  v23 = *(v21 + 24);
  swift_unknownObjectRetain();
  v23(&v35, a2, &v32, &v31, &v30, &v29, &v28, ObjectType, v21);
  swift_unknownObjectRelease();
  v24 = v35;
  if (v35 > a10)
  {
    v24 = a10;
  }

  v25 = v24 - a9;
  if (*(a1 + 32) > v25)
  {
    v25 = *(a1 + 32);
  }

  result = v25 + a9;
  *a8 = result;
  return result;
}

__objc2_class *specialized DisplayList.ViewRenderer.updateRenderer(rootView:)(void *a1)
{
  if (*(v1 + 96) != 1)
  {
    goto LABEL_21;
  }

  *(v1 + 96) = 0;
  swift_beginAccess();
  v3 = 1;
  if (*(v1 + 24))
  {
    v3 = 2;
  }

  if (v3 != *(v1 + 72))
  {
    if (*(v1 + 80))
    {
      v4 = *(v1 + 88);
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 40);
      swift_unknownObjectRetain();
      v6(a1, ObjectType, v4);
      swift_unknownObjectRelease();
    }

    *(v1 + 80) = 0;
    *(v1 + 88) = 0;
    swift_unknownObjectRelease();
    *(v1 + 72) = 0;
  }

  v7 = *(v1 + 80);
  v8 = *(v1 + 24);
  if (!v7)
  {
    if (!v8)
    {
      *v24 = *(v1 + 16);
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v22 = *(v1 + 64);
      type metadata accessor for DisplayList.ViewUpdater();
      swift_allocObject();
      v23 = specialized DisplayList.ViewUpdater.init(rootPlatform:host:)(v24, Strong, v22);
      swift_unknownObjectRelease();
      *(v1 + 80) = v23;
      *(v1 + 88) = &protocol witness table for DisplayList.ViewUpdater;
      swift_unknownObjectRelease();
      *(v1 + 72) = 1;
      result = *(v1 + 80);
      if (!result)
      {
        goto LABEL_24;
      }

      return result;
    }

    v32[0] = *(v8 + 16);
    *(v32 + 7) = *(v8 + 23);
    v15 = *(v8 + 27);
    v30 = *(v8 + 28);
    v31 = *(v8 + 36);
    v16 = *(v1 + 16);
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v17 = *(v1 + 64);
    type metadata accessor for DisplayList.ViewRasterizer();
    v18 = swift_allocObject();
    *(v18 + 32) = 0;
    swift_unknownObjectWeakInit();
    *(v18 + 40) = 0;
    *(v18 + 80) = 0;
    *(v18 + 88) = 0;
    *(v18 + 16) = v16;
    *(v18 + 32) = v17;
    swift_unknownObjectWeakAssign();
    *(v18 + 48) = v32[0];
    *(v18 + 55) = *(v32 + 7);
    *(v18 + 59) = v15;
    *(v18 + 60) = v30;
    *(v18 + 68) = v31;
    if (v15)
    {
      v19 = 1;
    }

    else
    {
      v19 = 3;
    }

    v24[0] = v19;
    type metadata accessor for DisplayList.GraphicsRenderer();
    swift_allocObject();
    *(v18 + 72) = DisplayList.GraphicsRenderer.init(platformViewMode:)(v24);
    *v24 = v32[0];
    *&v24[7] = *(v32 + 7);
    v24[11] = v15;
    v25 = v30;
    v26 = v31;

    RasterizationOptions.init(_:)(v24, &v27);
    *v24 = v27;
    *&v24[4] = WORD2(v27);
    *&v24[8] = v28;
    LOBYTE(v25) = v29;
    v20 = (*((v16 & 0xFFFFFFFFFFFFFFF8) + 120))(v24);
    swift_beginAccess();
    *(v18 + 40) = v20;
    swift_unknownObjectRelease();
    swift_unknownObjectRetain();
    CoreViewAddSubview((v16 & 3), a1, v16 & 3, v20, 0);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    *(v1 + 80) = v18;
    *(v1 + 88) = &protocol witness table for DisplayList.ViewRasterizer;
    swift_unknownObjectRelease();
    *(v1 + 72) = 2;

    goto LABEL_21;
  }

  if (!v8)
  {
LABEL_21:
    result = *(v1 + 80);
    if (!result)
    {
      goto LABEL_24;
    }

    return result;
  }

  v9 = *(v8 + 27);
  v27 = *(v8 + 28);
  v28 = *(v8 + 36);
  result = object_getClass(v7);
  if (result != _TtCE7SwiftUIVS_11DisplayListP33_21FFA3C7D88AC65BB559906758271BFC14ViewRasterizer)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v11 = *(v8 + 16);
  v12 = *(v8 + 24);
  *(v7 + 58) = *(v8 + 26);
  *(v7 + 56) = v12;
  *(v7 + 48) = v11;
  *(v7 + 59) = v9;
  *(v7 + 60) = v27;
  *(v7 + 68) = v28;
  if (v9)
  {
    v13 = 1;
  }

  else
  {
    v13 = 3;
  }

  v14 = *(v7 + 72);
  swift_beginAccess();
  *(v14 + 112) = v13;
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  *(v7 + 32) = *(v1 + 64);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  result = *(v1 + 80);
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  return result;
}

unint64_t type metadata accessor for ViewGraphRenderDelegate()
{
  result = lazy cache variable for type metadata for ViewGraphRenderDelegate;
  if (!lazy cache variable for type metadata for ViewGraphRenderDelegate)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ViewGraphRenderDelegate);
  }

  return result;
}

uint64_t specialized DisplayList.ViewUpdater.init(rootPlatform:host:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  *(v3 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 144) = 0;
  *(v3 + 152) = 0;
  *(v3 + 160) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *(v3 + 168) = MEMORY[0x1E69E7CC0];
  *(v3 + 176) = 0;
  *(v3 + 180) = 0;
  *(v3 + 184) = 0;
  *(v3 + 192) = 257;
  *(v3 + 16) = v5;
  *(v3 + 32) = a3;
  swift_unknownObjectWeakAssign();
  v7 = MEMORY[0x1E69E7CC8];
  *(v3 + 40) = MEMORY[0x1E69E7CC8];
  *(v3 + 48) = v7;
  *(v3 + 56) = MEMORY[0x1E69E7CD0];
  *(v3 + 64) = v7;
  *(v3 + 72) = v7;
  *(v3 + 80) = v7;
  *(v3 + 88) = 0;
  *(v3 + 96) = v6;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 124) = 0;
  *(v3 + 128) = v6;
  *(v3 + 136) = 0;
  *(v3 + 140) = 0;
  return v3;
}

Swift::Void __swiftcall DisplayList.ViewUpdater.ViewCache.invalidateAll()()
{
  v1 = *v0;
  type metadata accessor for _DictionaryStorage<DisplayList.ViewUpdater.ViewCache.Key, DisplayList.ViewUpdater.ViewInfo>(0);
  v2 = static _DictionaryStorage.copy(original:)();
  v3 = v2;
  v4 = 0;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = v2 + 64;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = 20 * v13;
      v15 = *(v1 + 48) + 20 * v13;
      v16 = *(v15 + 16);
      v17 = *(v15 + 17);
      v18 = v13 << 7;
      v19 = *(v1 + 56) + (v13 << 7);
      v20 = (v13 >> 3) & 0x1FFFFFFFFFFFFFF8;
      v21 = 1 << v13;
      v22 = *v15;
      v24 = *(v19 + 32);
      v23 = *(v19 + 48);
      v25 = *v19;
      v50[1] = *(v19 + 16);
      v50[2] = v24;
      v50[0] = v25;
      v26 = *(v19 + 112);
      v28 = *(v19 + 64);
      v27 = *(v19 + 80);
      *&v51[16] = *(v19 + 96);
      v52 = v26;
      v50[4] = v28;
      *v51 = v27;
      v50[3] = v23;
      v29 = *(v19 + 48);
      v46 = *(v19 + 32);
      v47 = v29;
      v48 = *(v19 + 64);
      v49 = *(v19 + 80);
      v30 = *(v19 + 16);
      v44 = *v19;
      v45 = v30;
      v53.val[0] = *&v51[8];
      v53.val[1] = *&v51[10];
      v53.val[0] = vqtbl2q_s8(v53, xmmword_18DDEF020);
      v53.val[0].i16[5] = *&v51[18];
      v53.val[0].i32[3] = *&v51[20];
      v43[0] = *(v19 + 106);
      *(v43 + 14) = *(v19 + 120);
      v31 = vbicq_s8((*&vmvnq_s8(v53.val[0]) | __PAIR128__(0x1000100010001, 0x1000100010001)), vceqzq_s16(v53.val[0]));
      v32 = ~*&v51[24] | 1;
      if (!*&v51[24])
      {
        v32 = 0;
      }

      *(v9 + v20) |= v21;
      v33 = v3[6] + v14;
      *v33 = v22;
      *(v33 + 16) = v16;
      *(v33 + 17) = v17;
      v34 = v3[7] + v18;
      v35 = v45;
      *v34 = v44;
      *(v34 + 16) = v35;
      *(v34 + 80) = v49;
      v36 = v48;
      *(v34 + 48) = v47;
      *(v34 + 64) = v36;
      *(v34 + 32) = v46;
      *(v34 + 88) = v31;
      *(v34 + 104) = v32;
      v37 = v43[0];
      *(v34 + 120) = *(v43 + 14);
      *(v34 + 106) = v37;
      v38 = v3[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        break;
      }

      v3[2] = v40;
      outlined init with copy of DisplayList.ViewUpdater.ViewInfo(v50, v42);
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {

        *v41 = v3;
        return;
      }

      v12 = *(v1 + 64 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void type metadata accessor for _DictionaryStorage<DisplayList.ViewUpdater.ViewCache.Key, DisplayList.ViewUpdater.ViewInfo>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<DisplayList.ViewUpdater.ViewCache.Key, DisplayList.ViewUpdater.ViewInfo>)
  {
    lazy protocol witness table accessor for type DisplayList.ViewUpdater.ViewCache.Key and conformance DisplayList.ViewUpdater.ViewCache.Key();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<DisplayList.ViewUpdater.ViewCache.Key, DisplayList.ViewUpdater.ViewInfo>);
    }
  }
}

void DisplayList.ViewUpdater.effectiveRootPlatform.getter(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  if ((v3 & 3) != 0)
  {
    swift_beginAccess();
    value = disableMixedViewHierarchy.value;
    if (disableMixedViewHierarchy.value == 2)
    {
      v5 = getenv("SWIFTUI_DISABLE_MIXED_VIEW_HIERARCHY");
      if (v5)
      {
        v6 = atoi(v5);
        disableMixedViewHierarchy.value = v6 != 0;
        swift_endAccess();
        if (v6)
        {
          goto LABEL_22;
        }
      }

      else
      {
        disableMixedViewHierarchy.value = 0;
        swift_endAccess();
      }
    }

    else
    {
      swift_endAccess();
      if (value)
      {
        goto LABEL_22;
      }
    }

    swift_beginAccess();
    if (static DisplayList.overrideMayInsertCALayers == 2)
    {
      if (one-time initialization token for v7 != -1)
      {
        swift_once();
      }

      v7 = static Semantics.v7;
      if (one-time initialization token for forced != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (byte_1ED53C51C == 1)
      {
        if ((dyld_program_sdk_at_least() & 1) == 0)
        {
LABEL_16:
          v3 &= ~4uLL;
          goto LABEL_22;
        }
      }

      else if (static Semantics.forced < v7)
      {
        goto LABEL_16;
      }

      v3 |= 4uLL;
      goto LABEL_22;
    }

    if (static DisplayList.overrideMayInsertCALayers)
    {
      v3 |= 4uLL;
    }

    else
    {
      v3 &= ~4uLL;
    }
  }

LABEL_22:
  *a1 = v3;
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance DisplayList.Key(uint64_t a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v6);
  v3 = v6;
  v4 = v7;
  v5 = v8;
  DisplayList.append(contentsOf:)(&v3);
}

uint64_t DisplayList.append(contentsOf:)(uint64_t result)
{
  v35 = *(*result + 16);
  if (v35)
  {
    v2 = v1;
    v3 = 0;
    v34 = *result + 32;
    do
    {
      v5 = (v34 + 80 * v3);
      v6 = *(v5 + 60);
      v7 = v5[3];
      v8 = v5[1];
      v41 = v5[2];
      *v42 = v7;
      *&v42[12] = v6;
      v39 = *v5;
      v40 = v8;
      v9 = *(&v41 + 1);
      v10 = v7;
      v11 = DWORD2(v6);
      v12 = DWORD1(v6) >> 30;
      if (DWORD1(v6) >> 30 == 3 && !(*v42 | *(&v41 + 1) | *&v42[8]) && *&v42[16] == 3221225472)
      {
        goto LABEL_5;
      }

      v13 = *v2;
      outlined init with copy of DisplayList.Item(&v39, v37);
      outlined init with copy of DisplayList.Item(&v39, v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item);
      }

      v15 = *(v13 + 2);
      v14 = *(v13 + 3);
      if (v15 >= v14 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v13, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item);
      }

      *(v13 + 2) = v15 + 1;
      v16 = &v13[80 * v15];
      *(v16 + 2) = v39;
      v17 = v40;
      v18 = v41;
      v19 = *v42;
      *(v16 + 92) = *&v42[12];
      *(v16 + 4) = v18;
      *(v16 + 5) = v19;
      *(v16 + 3) = v17;
      *v2 = v13;
      v37[2] = v41;
      v38[0] = *v42;
      *(v38 + 12) = *&v42[12];
      v37[0] = v39;
      v37[1] = v40;
      DisplayList.Item.features.getter(&v36);
      *(v2 + 8) |= v36;
      if (v12 > 1)
      {
        if (v12 == 2)
        {
          v20 = *(v9 + 16);
          if (v20)
          {
            if (v20 > 7)
            {
              v21 = v20 & 0x7FFFFFFFFFFFFFF8;
              v23 = (v9 + 188);
              v24 = 0uLL;
              v25 = v20 & 0x7FFFFFFFFFFFFFF8;
              v26 = 0uLL;
              do
              {
                v27.i32[0] = *(v23 - 30);
                v27.i32[1] = *(v23 - 20);
                v27.i32[2] = *(v23 - 10);
                v27.i32[3] = *v23;
                v28.i32[0] = v23[10];
                v28.i32[1] = v23[20];
                v28.i32[2] = v23[30];
                v28.i32[3] = v23[40];
                v24 = vorrq_s8(v27, v24);
                v26 = vorrq_s8(v28, v26);
                v23 += 80;
                v25 -= 8;
              }

              while (v25);
              v29 = vorrq_s8(v26, v24);
              v30 = vorr_s8(*v29.i8, *&vextq_s8(v29, v29, 8uLL));
              v4 = v30.i32[0] | v30.i32[1];
              if (v20 == v21)
              {
                goto LABEL_32;
              }
            }

            else
            {
              v4 = 0;
              v21 = 0;
            }

            v31 = v20 - v21;
            v32 = (v9 + 40 * v21 + 68);
            do
            {
              v33 = *v32;
              v32 += 10;
              v4 |= v33;
              --v31;
            }

            while (v31);
          }

          else
          {
            v4 = 0;
          }

LABEL_32:
          result = outlined destroy of DisplayList.Item(&v39);
          goto LABEL_4;
        }
      }

      else
      {
        if (v12)
        {
          switch(BYTE4(v10))
          {
            case 2u:

              v22 = v9;
              break;
            case 7u:
              v22 = *(v9 + 28);
              outlined init with copy of DisplayList.Item(&v39, v37);
              outlined consume of DisplayList.Effect(v9, v10, 7);

              result = outlined destroy of DisplayList.Item(&v39);
              break;
            case 0x12u:
              (*(*v9 + 120))(&v36);
              outlined init with copy of DisplayList.Item(&v39, v37);
              outlined consume of DisplayList.Effect(v9, v10, 18);

              result = outlined destroy of DisplayList.Item(&v39);
              v22 = v36;
              break;
            default:
              outlined copy of DisplayList.Effect(v9, v10, SBYTE4(v10));

              outlined consume of DisplayList.Effect(v9, v10, SBYTE4(v10));

              result = outlined destroy of DisplayList.Item(&v39);
              v22 = 0;
              break;
          }

          v4 = v22 | v11;
          goto LABEL_4;
        }

        if (v9 >> 60 == 6 || v9 >> 60 == 11)
        {
          v4 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
          goto LABEL_32;
        }
      }

      result = outlined destroy of DisplayList.Item(&v39);
      v4 = 0;
LABEL_4:
      *(v2 + 12) |= v4;
LABEL_5:
      ++v3;
    }

    while (v3 != v35);
  }

  return result;
}

void *CoreViewLayer(int a1, void *a2)
{
  if (a1)
  {
    return [a2 layer];
  }

  else
  {
    return a2;
  }
}

Swift::Void __swiftcall DisplayList.ViewUpdater.ViewCache.clearAsyncValues()()
{
  v1 = *(v0 + 32);
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;
  v37 = v1;

  v7 = 0;
  v35 = v6;
  v36 = v2;
LABEL_6:
  if (v5)
  {
    v8 = v7;
LABEL_11:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v8 << 6);
    v38 = *(*(v37 + 48) + 8 * v10);
    v11 = (*(v37 + 56) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    v14 = (*v11 + 56);
    v15 = 1 << *(*v11 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *v14;
    v18 = (v15 + 63) >> 6;

    v19 = 0;
    if (v17)
    {
      while (1)
      {
        v20 = v19;
LABEL_20:
        v21 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
        v22 = (*(v12 + 48) + ((v20 << 10) | (16 * v21)));
        v23 = *v22;
        v24 = v22[1];

        v25 = MEMORY[0x193ABEC20](v23, v24);
        [v38 removeAnimationForKey_];

        if (!v17)
        {
          goto LABEL_16;
        }
      }
    }

    while (1)
    {
LABEL_16:
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v20 >= v18)
      {
        break;
      }

      v17 = v14[v20];
      ++v19;
      if (v17)
      {
        v19 = v20;
        goto LABEL_20;
      }
    }

    v26 = 0;
    v27 = 1 << *(v13 + 32);
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v29 = v28 & *(v13 + 64);
    v30 = (v27 + 63) >> 6;
    while (v29)
    {
      v31 = v26;
LABEL_31:
      v32 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
      v33 = *(*(v13 + 56) + ((v31 << 9) | (8 * v32)));
      [v38 removePresentationModifier_];
    }

    while (1)
    {
      v31 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v31 >= v30)
      {

        v7 = v8;
        v6 = v35;
        v2 = v36;
        goto LABEL_6;
      }

      v29 = *(v13 + 64 + 8 * v31);
      ++v26;
      if (v29)
      {
        v26 = v31;
        goto LABEL_31;
      }
    }

LABEL_35:
    __break(1u);
  }

  else
  {
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v6)
      {

        *(v34 + 32) = MEMORY[0x1E69E7CC8];

        *(v34 + 48) = 0;
        return;
      }

      v5 = *(v2 + 8 * v8);
      ++v7;
      if (v5)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
}

__n128 Capsule.corners(in:)@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  LOBYTE(v13) = 0;
  if (a2 >= a3)
  {
    a2 = a3;
  }

  *&v13 = a2 * 0.5;
  BYTE8(v13) = 0;
  v14 = COERCE_UNSIGNED_INT64(a2 * 0.5);
  *&v15 = 0;
  BYTE8(v15) = 0;
  v16.n128_u64[0] = 0;
  v16.n128_f64[1] = a2 * 0.5;
  LOBYTE(v17) = 0;
  *(&v17 + 1) = a2 * 0.5;
  v18 = 0uLL;
  LOBYTE(v19) = 0;
  *(&v19 + 1) = 0;
  *&v20 = a2 * 0.5;
  BYTE8(v20) = 0;
  *&v21 = a2 * 0.5;
  *(&v21 + 1) = 0;
  *&v22 = 0;
  BYTE8(v22) = 0;
  *&v23 = 0;
  *(&v23 + 1) = a2 * 0.5;
  LOBYTE(v24) = 0;
  *(&v24 + 1) = a2 * 0.5;
  v25 = 0uLL;
  LOBYTE(v26) = 0;
  *(&v26 + 1) = 0;
  _s7SwiftUI26CornerMaskingConfigurationVSgWOi_(&v13);
  v4 = v24;
  v5 = v26;
  *(a1 + 192) = v25;
  *(a1 + 208) = v5;
  v6 = v20;
  v7 = v22;
  v8 = v23;
  *(a1 + 128) = v21;
  *(a1 + 144) = v7;
  *(a1 + 160) = v8;
  *(a1 + 176) = v4;
  v9 = v18;
  v10 = v19;
  *(a1 + 64) = v17;
  *(a1 + 80) = v9;
  *(a1 + 224) = v27;
  *(a1 + 96) = v10;
  *(a1 + 112) = v6;
  v11 = v14;
  *a1 = v13;
  *(a1 + 16) = v11;
  result = v16;
  *(a1 + 32) = v15;
  *(a1 + 48) = result;
  return result;
}

BOOL specialized static ConcentricLayoutComputer.Engine.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))))) & 1) == 0)
  {
    return 0;
  }

  v3 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (!v3)
    {
      return 1;
    }

LABEL_13:

    return 0;
  }

  if (!v3)
  {
    goto LABEL_13;
  }

  v4 = *(a1 + 40);
  v5 = *(a2 + 40);
  v6 = swift_retain_n();
  v8 = v4 == v5 && v6 == v3;

  return v8;
}

void lazy protocol witness table accessor for type DisplayList.ViewUpdater.ViewCache.Key and conformance DisplayList.ViewUpdater.ViewCache.Key()
{
  if (!lazy protocol witness table cache variable for type DisplayList.ViewUpdater.ViewCache.Key and conformance DisplayList.ViewUpdater.ViewCache.Key)
  {
    swift_getWitnessTable(protocol conformance descriptor for DisplayList.ViewUpdater.ViewCache.Key, &type metadata for DisplayList.ViewUpdater.ViewCache.Key, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DisplayList.ViewUpdater.ViewCache.Key and conformance DisplayList.ViewUpdater.ViewCache.Key);
  }
}

{
  if (!lazy protocol witness table cache variable for type DisplayList.ViewUpdater.ViewCache.Key and conformance DisplayList.ViewUpdater.ViewCache.Key)
  {
    swift_getWitnessTable(protocol conformance descriptor for DisplayList.ViewUpdater.ViewCache.Key, &type metadata for DisplayList.ViewUpdater.ViewCache.Key, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DisplayList.ViewUpdater.ViewCache.Key and conformance DisplayList.ViewUpdater.ViewCache.Key);
  }
}

double one-time initialization function for renderDisplayList()
{
  *&result = 266516;
  static Signpost.renderDisplayList = xmmword_18DDB55C0;
  word_1ED52EF28 = 0;
  byte_1ED52EF2A = 3;
  return result;
}

uint64_t outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for ViewGraphRenderObserver?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ViewGraphRenderObserver?)
  {
    type metadata accessor for ViewGraphRenderObserver();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ViewGraphRenderObserver?);
    }
  }
}

void lazy protocol witness table accessor for type Time and conformance Time()
{
  if (!lazy protocol witness table cache variable for type Time and conformance Time)
  {
    swift_getWitnessTable(protocol conformance descriptor for Time, &type metadata for Time, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Time and conformance Time);
  }
}

uint64_t *sub_18D0A759C(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

BOOL specialized static ViewGeometry.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v5 = *(a2 + 16);
    v4 = *(a2 + 24);
    v6 = *(a1 + 24);
    v13[0] = *(a1 + 16);
    v13[1] = v6;
    v7 = *(a1 + 48);
    v14 = *(a1 + 32);
    v15 = v7;
    v10[0] = v5;
    v10[1] = v4;
    v8 = *(a2 + 48);
    v11 = *(a2 + 32);
    v12 = v8;
    v3 = specialized static ViewDimensions.== infix(_:_:)(v13, v10);
  }

  else
  {
    return 0;
  }

  return v3;
}

BOOL specialized static ViewDimensions.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v5 = *(a2 + 32);
  v4 = *(a2 + 40);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = (~*&v6 & 0x7FF0000000000000) == 0;
  if ((*&v6 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v8 = 0;
  }

  v9 = (~v5 & 0x7FF0000000000000) != 0;
  if ((v5 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v9 = 1;
  }

  v10 = (~v4 & 0x7FF0000000000000) != 0;
  if ((v4 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v10 = 1;
  }

  v11 = *(a2 + 40);
  v12 = 0.0;
  if (!v10)
  {
    v11 = 0.0;
  }

  if ((~*&v7 & 0x7FF0000000000000) != 0 || (*&v7 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    if (v9)
    {
      v12 = *(a2 + 32);
    }

    if (v12 != v7 || !v9)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v8)
  {
    if (v10)
    {
      return 0;
    }
  }

  else if (v11 != v6 || !v10)
  {
    return 0;
  }

  return *(a1 + 8) == *(a2 + 8) && *a1 == *a2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GlassContainer.DataStorage(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI12ViewIdentityV_AC14GlassContainerO8ItemDataVTt1g5(*(a1 + 8), *(a2 + 8));
  }

  else
  {
    return 0;
  }
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI12ViewIdentityV_AC14GlassContainerO8ItemDataVTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + 4 * v12);
    v14 = *(v3 + 56) + 40 * v12;
    v15 = *(v14 + 32);
    v16 = *(v14 + 16);
    v35 = *v14;
    v36 = v16;
    v37 = v15;
    v23 = v16;
    v24 = v35;
    outlined init with copy of GlassContainer.ItemData(&v35, &v32);
    if (!v24)
    {
      return 1;
    }

    v35 = v24;
    v36 = v23;
    v37 = v15;
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
    if ((v18 & 1) == 0)
    {
      v32 = v35;
      v33 = v36;
      v34 = v37;
      outlined destroy of GlassContainer.ItemData(&v32);
      return 0;
    }

    v19 = *(a2 + 56) + 40 * v17;
    v20 = *(v19 + 32);
    v21 = *(v19 + 16);
    v28[0] = *v19;
    v28[1] = v21;
    v29 = v20;
    v27 = *(v19 + 32);
    v25 = *v19;
    v26 = *(v19 + 16);
    outlined init with copy of GlassContainer.ItemData(v28, &v32);
    lazy protocol witness table accessor for type GlassContainer.ItemData and conformance GlassContainer.ItemData();
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    v30[0] = v25;
    v30[1] = v26;
    v31 = v27;
    outlined destroy of GlassContainer.ItemData(v30);
    v32 = v35;
    v33 = v36;
    v34 = v37;
    result = outlined destroy of GlassContainer.ItemData(&v32);
    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

double ConcentricPaddingUpdater.oldValue.getter()
{
  if ((*(v0 + 48) & 1) == 0)
  {
    return *(v0 + 16);
  }

  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return 0.0;
}

void type metadata accessor for LayoutEngineBox<ConcentricLayoutComputer.Engine>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame()
{
  if (!lazy protocol witness table cache variable for type ViewFrame and conformance ViewFrame)
  {
    swift_getWitnessTable(protocol conformance descriptor for ViewFrame, &type metadata for ViewFrame, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ViewFrame and conformance ViewFrame);
  }
}

{
  if (!lazy protocol witness table cache variable for type ViewFrame and conformance ViewFrame)
  {
    swift_getWitnessTable(protocol conformance descriptor for ViewFrame, &type metadata for ViewFrame, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ViewFrame and conformance ViewFrame);
  }
}

_DWORD *initializeWithCopy for AnimatableAttributeHelper(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  v11 = ((v6 + v10 + 4) & ~v10);
  v12 = ((v7 + v10 + 4) & ~v10);
  if ((*(v9 + 48))(v12, 1, AssociatedTypeWitness))
  {
    v13 = *(v9 + 84);
    v14 = *(v9 + 64);
    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 + 1;
    }

    memcpy(v11, v12, v15);
  }

  else
  {
    (*(v9 + 16))(v11, v12, AssociatedTypeWitness);
    v17 = *(v9 + 56);
    v16 = v9 + 56;
    v17(v11, 0, 1, AssociatedTypeWitness);
    v13 = *(v16 + 28);
    v14 = *(v16 + 8);
  }

  if (v13)
  {
    v18 = v14;
  }

  else
  {
    v18 = v14 + 1;
  }

  v19 = ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  *((v19 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v20 + 11) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t destroy for AnimatableAttributeHelper(uint64_t a1, uint64_t a2)
{
  v2 = (((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (v2 + *(v4 + 80) + 4) & ~*(v4 + 80);
  if (!(*(v4 + 48))(v5, 1, AssociatedTypeWitness))
  {
    (*(v4 + 8))(v5, AssociatedTypeWitness);
  }
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 120 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 120 * a3;
  v13 = (v7 + 32 + 120 * a2);
  if (result != v13 || result >= v13 + 120 * v12)
  {
    result = memmove(result, v13, 120 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for AnyTrackedValue, &protocol descriptor for AnyTrackedValue, 1);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 104 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 104 * a3;
  v13 = (v7 + 32 + 104 * a2);
  v14 = 104 * v12;
  v15 = v13 + 104 * v12;
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 16 * result + 16 * a3;
  v10 = (v6 + 32 + 16 * a2);
  if (result != v10 || result >= v10 + 16 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 16 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  type metadata accessor for AbstractHomogeneousCollection();
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 112 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 112 * a3;
  v13 = (v7 + 32 + 112 * a2);
  if (result != v13 || result >= v13 + 112 * v12)
  {
    result = memmove(result, v13, 112 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  v14 = 40 * v12;
  v15 = v13 + 40 * v12;
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 112 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 112 * a3;
  v13 = (v7 + 32 + 112 * a2);
  v14 = 112 * v12;
  v15 = v13 + 112 * v12;
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 48 * result + 48 * a3;
  v10 = (v6 + 32 + 48 * a2);
  v11 = 48 * v9;
  if (result != v10 || result >= v10 + v11)
  {
    v13 = a3;
    result = memmove(result, v10, v11);
    a3 = v13;
  }

  v14 = *(v6 + 16);
  v8 = __OFADD__(v14, v5);
  v15 = v14 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v15;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 112 * result;
  type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 112 * a3;
  v13 = (v7 + 32 + 112 * a2);
  if (result != v13 || result >= v13 + 112 * v12)
  {
    result = memmove(result, v13, 112 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 80 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 80 * a3;
  v13 = (v7 + 32 + 80 * a2);
  if (result != v13 || result >= v13 + 80 * v12)
  {
    result = memmove(result, v13, 80 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 2 * result + 2 * a3;
  v10 = (v6 + 32 + 2 * a2);
  if (result != v10 || result >= v10 + 2 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 2 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 32 * result + 32 * a3;
  v10 = (v6 + 32 + 32 * a2);
  if (result != v10 || result >= v10 + 32 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 32 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 56 * result;
  type metadata accessor for AnimatorState<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>.Fork(0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 56 * a3;
  v13 = (v7 + 32 + 56 * a2);
  if (result != v13 || result >= v13 + 56 * v12)
  {
    result = memmove(result, v13, 56 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 56 * result;
  type metadata accessor for AnimatorState<AnimatablePair<CGFloat, CGFloat>>.Fork(0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 56 * a3;
  v13 = (v7 + 32 + 56 * a2);
  if (result != v13 || result >= v13 + 56 * v12)
  {
    result = memmove(result, v13, 56 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 48 * result;
  type metadata accessor for AnimatorState<Double>.Fork(0, &lazy cache variable for type metadata for AnimatorState<Double>.Fork, MEMORY[0x1E69E63B0], &protocol witness table for Double, type metadata accessor for AnimatorState.Fork);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 48 * a3;
  v13 = (v7 + 32 + 48 * a2);
  if (result != v13 || result >= v13 + 48 * v12)
  {
    result = memmove(result, v13, 48 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 80 * result;
  type metadata accessor for AnimatorState<CGFloat>.Fork(0, &lazy cache variable for type metadata for AnimatorState<_AnyAnimatableData>.Fork, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 80 * a3;
  v13 = (v7 + 32 + 80 * a2);
  if (result != v13 || result >= v13 + 80 * v12)
  {
    result = memmove(result, v13, 80 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 72 * result;
  type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 72 * a3;
  v13 = (v7 + 32 + 72 * a2);
  if (result != v13 || result >= v13 + 72 * v12)
  {
    result = memmove(result, v13, 72 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + (result << 6);
  type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>.Fork(0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + (a3 << 6);
  v13 = (v7 + 32 + (a2 << 6));
  if (result != v13 || result >= v13 + 64 * v12)
  {
    result = memmove(result, v13, v12 << 6);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 48 * result;
  type metadata accessor for KeyedAnimatableArray<Int, _AnyAnimatableData>(0, &lazy cache variable for type metadata for KeyedAnimatableArray<Int, _AnyAnimatableData>.Element, type metadata accessor for KeyedAnimatableArray.Element);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 48 * a3;
  v13 = (v7 + 32 + 48 * a2);
  if (result != v13 || result >= v13 + 48 * v12)
  {
    result = memmove(result, v13, 48 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + (result << 6);
  type metadata accessor for AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork(0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + (a3 << 6);
  v13 = (v7 + 32 + (a2 << 6));
  if (result != v13 || result >= v13 + 64 * v12)
  {
    result = memmove(result, v13, v12 << 6);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 104 * result;
  type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>.Fork(0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 104 * a3;
  v13 = (v7 + 32 + 104 * a2);
  if (result != v13 || result >= v13 + 104 * v12)
  {
    result = memmove(result, v13, 104 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + (result << 6);
  type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>.Fork(0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + (a3 << 6);
  v13 = (v7 + 32 + (a2 << 6));
  if (result != v13 || result >= v13 + 64 * v12)
  {
    result = memmove(result, v13, v12 << 6);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + (result << 6);
  type metadata accessor for AnimatorState<CGFloat>.Fork(0, &lazy cache variable for type metadata for AnimatorState<Color.ResolvedHDR._Animatable>.Fork, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + (a3 << 6);
  v13 = (v7 + 32 + (a2 << 6));
  if (result != v13 || result >= v13 + 64 * v12)
  {
    result = memmove(result, v13, v12 << 6);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 48 * result;
  type metadata accessor for AnimatorState<CGFloat>.Fork(0, &lazy cache variable for type metadata for AnimatorState<CGFloat>.Fork, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0]);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 48 * a3;
  v13 = (v7 + 32 + 48 * a2);
  if (result != v13 || result >= v13 + 48 * v12)
  {
    result = memmove(result, v13, 48 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 48 * result;
  type metadata accessor for AnimatorState<CGFloat>.Fork(0, &lazy cache variable for type metadata for AnimatorState<ShaderVectorData>.Fork, lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData, &type metadata for ShaderVectorData);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 48 * a3;
  v13 = (v7 + 32 + 48 * a2);
  if (result != v13 || result >= v13 + 48 * v12)
  {
    result = memmove(result, v13, 48 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 72 * result;
  type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork(0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 72 * a3;
  v13 = (v7 + 32 + 72 * a2);
  if (result != v13 || result >= v13 + 72 * v12)
  {
    result = memmove(result, v13, 72 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + (result << 6);
  type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>.Fork(0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + (a3 << 6);
  v13 = (v7 + 32 + (a2 << 6));
  if (result != v13 || result >= v13 + 64 * v12)
  {
    result = memmove(result, v13, v12 << 6);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 80 * result;
  type metadata accessor for AnimatorState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>.Fork(0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 80 * a3;
  v13 = (v7 + 32 + 80 * a2);
  if (result != v13 || result >= v13 + 80 * v12)
  {
    result = memmove(result, v13, 80 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 80 * result;
  type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork(0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 80 * a3;
  v13 = (v7 + 32 + 80 * a2);
  if (result != v13 || result >= v13 + 80 * v12)
  {
    result = memmove(result, v13, 80 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 96 * result;
  type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>.Fork(0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 96 * a3;
  v13 = (v7 + 32 + 96 * a2);
  if (result != v13 || result >= v13 + 96 * v12)
  {
    result = memmove(result, v13, 96 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 96 * result;
  type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>.Fork(0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 96 * a3;
  v13 = (v7 + 32 + 96 * a2);
  if (result != v13 || result >= v13 + 96 * v12)
  {
    result = memmove(result, v13, 96 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 96 * result;
  type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>.Fork(0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 96 * a3;
  v13 = (v7 + 32 + 96 * a2);
  if (result != v13 || result >= v13 + 96 * v12)
  {
    result = memmove(result, v13, 96 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + (result << 6);
  type metadata accessor for AnimatorState<CGFloat>.Fork(0, &lazy cache variable for type metadata for AnimatorState<ResolvedGradientVector>.Fork, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + (a3 << 6);
  v13 = (v7 + 32 + (a2 << 6));
  if (result != v13 || result >= v13 + 64 * v12)
  {
    result = memmove(result, v13, v12 << 6);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + (result << 6);
  type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>.Fork(0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + (a3 << 6);
  v13 = (v7 + 32 + (a2 << 6));
  if (result != v13 || result >= v13 + 64 * v12)
  {
    result = memmove(result, v13, v12 << 6);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 144 * result;
  type metadata accessor for AnimatorState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Fork(0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 144 * a3;
  v13 = (v7 + 32 + 144 * a2);
  if (result != v13 || result >= v13 + 144 * v12)
  {
    result = memmove(result, v13, 144 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + (result << 7);
  type metadata accessor for AnimatorState<CGFloat>.Fork(0, &lazy cache variable for type metadata for AnimatorState<_ShapeStyle_Pack.Fill.AnimatableData>.Fork, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + (a3 << 7);
  v13 = (v7 + 32 + (a2 << 7));
  if (result != v13 || result >= v13 + 128 * v12)
  {
    result = memmove(result, v13, v12 << 7);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 88 * result;
  type metadata accessor for AnimatorState<CGFloat>.Fork(0, &lazy cache variable for type metadata for AnimatorState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>.Fork, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 88 * a3;
  v13 = (v7 + 32 + 88 * a2);
  if (result != v13 || result >= v13 + 88 * v12)
  {
    result = memmove(result, v13, 88 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 96 * result;
  type metadata accessor for AnimatorState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>.Fork(0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 96 * a3;
  v13 = (v7 + 32 + 96 * a2);
  if (result != v13 || result >= v13 + 96 * v12)
  {
    result = memmove(result, v13, 96 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 296 * result;
  type metadata accessor for AnimatorState<CGFloat>.Fork(0, &lazy cache variable for type metadata for AnimatorState<ConcentricRectangle.AnimatableData>.Fork, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 296 * a3;
  v13 = (v7 + 32 + 296 * a2);
  if (result != v13 || result >= v13 + 296 * v12)
  {
    result = memmove(result, v13, 296 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 56 * result;
  type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork(0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 56 * a3;
  v13 = (v7 + 32 + 56 * a2);
  if (result != v13 || result >= v13 + 56 * v12)
  {
    result = memmove(result, v13, 56 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + (result << 6);
  type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>.Fork(0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + (a3 << 6);
  v13 = (v7 + 32 + (a2 << 6));
  if (result != v13 || result >= v13 + 64 * v12)
  {
    result = memmove(result, v13, v12 << 6);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 80 * result;
  type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>.Fork(0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 80 * a3;
  v13 = (v7 + 32 + 80 * a2);
  if (result != v13 || result >= v13 + 80 * v12)
  {
    result = memmove(result, v13, 80 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + (result << 6);
  type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>.Fork(0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + (a3 << 6);
  v13 = (v7 + 32 + (a2 << 6));
  if (result != v13 || result >= v13 + 64 * v12)
  {
    result = memmove(result, v13, v12 << 6);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + (result << 6);
  type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>.Fork(0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + (a3 << 6);
  v13 = (v7 + 32 + (a2 << 6));
  if (result != v13 || result >= v13 + 64 * v12)
  {
    result = memmove(result, v13, v12 << 6);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 136 * result;
  type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>.Fork(0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 136 * a3;
  v13 = (v7 + 32 + 136 * a2);
  if (result != v13 || result >= v13 + 136 * v12)
  {
    result = memmove(result, v13, 136 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 144 * result;
  type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>.Fork(0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 144 * a3;
  v13 = (v7 + 32 + 144 * a2);
  if (result != v13 || result >= v13 + 144 * v12)
  {
    result = memmove(result, v13, 144 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 168 * result;
  type metadata accessor for AnimatorState<CGFloat>.Fork(0, &lazy cache variable for type metadata for AnimatorState<RoundedRectangularShapeCorners.AnimatableData>.Fork, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 168 * a3;
  v13 = (v7 + 32 + 168 * a2);
  if (result != v13 || result >= v13 + 168 * v12)
  {
    result = memmove(result, v13, 168 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 72 * result;
  type metadata accessor for AnimatorState<CGFloat>.Fork(0, &lazy cache variable for type metadata for AnimatorState<Edge.Corner.Style.AnimatableData>.Fork, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData, &type metadata for Edge.Corner.Style.AnimatableData);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 72 * a3;
  v13 = (v7 + 32 + 72 * a2);
  if (result != v13 || result >= v13 + 72 * v12)
  {
    result = memmove(result, v13, 72 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + (result << 6);
  type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork(0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + (a3 << 6);
  v13 = (v7 + 32 + (a2 << 6));
  if (result != v13 || result >= v13 + 64 * v12)
  {
    result = memmove(result, v13, v12 << 6);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 80 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 80 * a3;
  v13 = (v7 + 32 + 80 * a2);
  v14 = 80 * v12;
  v15 = v13 + 80 * v12;
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 120 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 120 * a3;
  v13 = (v7 + 32 + 120 * a2);
  v14 = 120 * v12;
  v15 = v13 + 120 * v12;
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t LayoutEngineBox.mutateEngine<A, B>(as:do:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(*v4 + 176) == a4)
  {
    MEMORY[0x1EEE9AC00](a1);
    v17[2] = v5;
    v17[3] = v6;
    v8 = *(v7 + 184);
    v9 = *(v7 + 192);
    v17[4] = v10;
    v17[5] = v8;
    v17[6] = v12;
    v17[7] = v11;
    v17[8] = v13;
    return _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v4 + v9, partial apply for closure #1 in LayoutEngineBox.mutateEngine<A, B>(as:do:), v17, v5, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v14);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void *assignWithCopy for ViewGeometry(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];

  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  a1[6] = a2[6];
  a1[7] = a2[7];
  return a1;
}

uint64_t partial apply for specialized closure #1 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:)(uint64_t a1)
{
  return partial apply for specialized closure #1 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:)(a1, 1);
}

{
  return partial apply for specialized closure #1 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:)(a1, 0);
}

uint64_t specialized ViewLayoutEngine.update(layout:context:children:)(uint64_t a1, uint64_t a2, char a3, unint64_t a4, Swift::UInt32 a5, int a6, uint64_t a7, char a8)
{
  v9 = v8;

  *(v9 + 136) = a6;
  *(v9 + 144) = a7;
  *v26 = a5;
  swift_getKeyPath();
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, type metadata accessor for EnvironmentFetch);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a5);
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, LayoutDirection>, &type metadata for EnvironmentValues, &type metadata for LayoutDirection, MEMORY[0x1E69E77A8]);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  v16 = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

  *(v9 + 152) = v16;
  *v9 = a1;
  *(v9 + 8) = a2;
  v17 = a3 & 1;
  *(v9 + 16) = a3 & 1;
  v25[0] = 1;
  v26[0] = 1;
  *(v9 + 176) = 0u;
  *(v9 + 192) = 0u;
  *(v9 + 160) = 0u;
  *(v9 + 208) = 1;
  *(v9 + 216) = 0u;
  *(v9 + 232) = 0u;
  *(v9 + 248) = 0u;
  *(v9 + 264) = 1;
  *(v9 + 272) = 0u;
  *(v9 + 288) = 0u;
  *(v9 + 304) = 0u;
  *(v9 + 320) = 1;

  v18 = MEMORY[0x1E69E7CC0];
  *(v9 + 368) = 0;
  *(v9 + 376) = 0;
  *(v9 + 360) = v18;
  *(v9 + 384) = 0;
  *(v9 + 385) = *v25;
  *(v9 + 388) = *&v25[3];
  *(v9 + 392) = 0;
  *(v9 + 400) = 0;
  *(v9 + 408) = 0;
  *(v9 + 409) = *v26;
  *(v9 + 412) = *&v26[3];
  *(v9 + 432) = 0;
  *(v9 + 416) = 0;
  *(v9 + 424) = 0;

  *(v9 + 440) = 0;
  v19 = *(v9 + 136);
  v20 = *(v9 + 144);
  v21 = *(v9 + 152);

  if (v21)
  {
    v22 = 256;
  }

  else
  {
    v22 = 0;
  }

  specialized HVStack.updateCache(_:subviews:)(v9 + 24, v19, v20, v22, a1, a2, v17, a8);
}

char *specialized HVStack.updateCache(_:subviews:)(uint64_t a1, int a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  v14 = *(a1 + 98);
  v15 = a7 & 1;
  v16 = a4 & 1;
  v17 = (a4 >> 8) & 1;
  v18 = *(a1 + 80);
  v25[4] = *(a1 + 64);
  v26[0] = v18;
  *(v26 + 15) = *(a1 + 95);
  v19 = *(a1 + 16);
  v25[0] = *a1;
  v25[1] = v19;
  v20 = *(a1 + 48);
  v25[2] = *(a1 + 32);
  v25[3] = v20;

  outlined destroy of StackLayout.Header(v25);
  *a1 = a5;
  *(a1 + 8) = a6;
  *(a1 + 16) = v15;
  *(a1 + 17) = a8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xFFF0000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xFFF0000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  *(a1 + 96) = v16;
  *(a1 + 97) = v17;
  *(a1 + 98) = v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(a1 + 104);
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v22 + 16));
  }

  else
  {
    v23 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI11StackLayoutV5Child33_00690F480F8D293143B214DBE6D72CD0LLV_Tt1g5(0, *(v22 + 24) >> 1);

    *(a1 + 104) = v23;
  }

  return StackLayout.makeChildren()();
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

__n128 partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  *a1 = *v2;
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *(v2 + 64);
  *(a1 + 48) = *(v2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  v8 = *(v2 + 128);
  *(a1 + 112) = *(v2 + 112);
  *(a1 + 128) = v8;
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  result = *(v2 + 144);
  v10 = *(v2 + 160);
  v11 = *(v2 + 176);
  *(a1 + 185) = *(v2 + 185);
  *(a1 + 160) = v10;
  *(a1 + 176) = v11;
  *(a1 + 144) = result;
  return result;
}

{
  v2 = *(v1 + 16);
  *a1 = *v2;
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *(v2 + 64);
  *(a1 + 48) = *(v2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  v8 = *(v2 + 128);
  *(a1 + 112) = *(v2 + 112);
  *(a1 + 128) = v8;
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  result = *(v2 + 144);
  v10 = *(v2 + 160);
  v11 = *(v2 + 176);
  *(a1 + 192) = *(v2 + 192);
  *(a1 + 160) = v10;
  *(a1 + 176) = v11;
  *(a1 + 144) = result;
  return result;
}

{
  v2 = *(v1 + 16);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[3];
  *(a1 + 32) = v2[2];
  *(a1 + 48) = v5;
  *a1 = v3;
  *(a1 + 16) = v4;
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[7];
  *(a1 + 96) = v2[6];
  *(a1 + 112) = v8;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  result = v2[8];
  v10 = v2[9];
  v11 = v2[10];
  *(a1 + 176) = *(v2 + 176);
  *(a1 + 144) = v10;
  *(a1 + 160) = v11;
  *(a1 + 128) = result;
  return result;
}

{
  v2 = *(v1 + 16);
  v3 = *v2;
  v4 = v2[2];
  *(a1 + 16) = v2[1];
  *(a1 + 32) = v4;
  *a1 = v3;
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[6];
  *(a1 + 80) = v2[5];
  *(a1 + 96) = v7;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  result = v2[7];
  v9 = v2[8];
  v10 = v2[9];
  *(a1 + 153) = *(v2 + 153);
  *(a1 + 128) = v9;
  *(a1 + 144) = v10;
  *(a1 + 112) = result;
  return result;
}

{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v3;
  v4 = *(v2 + 32);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  *(a1 + 64) = *(v2 + 64);
  *(a1 + 80) = v6;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  v7 = *(v2 + 96);
  v8 = *(v2 + 112);
  v9 = *(v2 + 144);
  *(a1 + 128) = *(v2 + 128);
  *(a1 + 144) = v9;
  *(a1 + 96) = v7;
  *(a1 + 112) = v8;
  result = *(v2 + 160);
  v11 = *(v2 + 176);
  v12 = *(v2 + 192);
  *(a1 + 201) = *(v2 + 201);
  *(a1 + 176) = v11;
  *(a1 + 192) = v12;
  *(a1 + 160) = result;
  return result;
}

{
  v2 = *(v1 + 16);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[3];
  *(a1 + 32) = v2[2];
  *(a1 + 48) = v5;
  *a1 = v3;
  *(a1 + 16) = v4;
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[7];
  *(a1 + 96) = v2[6];
  *(a1 + 112) = v8;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  result = v2[8];
  v10 = v2[9];
  v11 = v2[10];
  *(a1 + 169) = *(v2 + 169);
  *(a1 + 144) = v10;
  *(a1 + 160) = v11;
  *(a1 + 128) = result;
  return result;
}

uint64_t Transaction.effectiveAnimation.getter(void *a1)
{
  v2 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(a1);
  if (v2 && v2[9])
  {
  }

  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA014TracksVelocityF033_FD9125BC1E04E33D1D7BE4A31225AA98LLVG_Tt2g5(a1))
  {
    if (one-time initialization token for velocityTracking != -1)
    {
      swift_once();
    }
  }

  return 0;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA014TracksVelocityF033_FD9125BC1E04E33D1D7BE4A31225AA98LLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for TransactionPropertyKey<TracksVelocityKey>, &type metadata for TracksVelocityKey, &protocol witness table for TracksVelocityKey, type metadata accessor for TransactionPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA014TracksVelocityV033_FD9125BC1E04E33D1D7BE4A31225AA98LLVG_Tt0B5(a1, v4);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA014TracksVelocityV033_FD9125BC1E04E33D1D7BE4A31225AA98LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA014TracksVelocityV033_FD9125BC1E04E33D1D7BE4A31225AA98LLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for TransactionPropertyKey<TracksVelocityKey>, &type metadata for TracksVelocityKey, &protocol witness table for TracksVelocityKey, type metadata accessor for TransactionPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

uint64_t LayoutProxy.explicitAlignment(_:at:)(uint64_t a1, __int128 *a2)
{
  v9 = a2[1];
  v10 = *a2;
  if (*(v2 + 4) == *MEMORY[0x1E698D3F8])
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    InputValue = &static LayoutComputer.defaultValue;
  }

  else
  {
    InputValue = AGGraphGetInputValue();
  }

  v5 = *InputValue;
  v6 = one-time initialization token for lockAssertionsAreEnabled;

  if (v6 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_12;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_12:
    v11[0] = v10;
    v11[1] = v9;
    v7 = (*(*v5 + 144))(a1, v11);

    return v7;
  }

  return result;
}

uint64_t UnaryLayoutEngine.layoutPriority()(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v3 = *(v2 + 2);
  v5 = *v2;
  v6 = v3;
  return (*(*(a1 + 24) + 64))(&v5, *(a1 + 16));
}

uint64_t UnaryLayoutEngine.explicitAlignment(_:at:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = a2[1];
  v20 = *a2;
  v21 = v6;
  UnaryLayoutEngine.childPlacement(at:)(&v20, a3, &v22);
  v8 = *(&v24 + 1);
  v7 = v25;
  v9 = v26;
  v10 = v27;
  v11 = v3 + *(a3 + 40);
  *&v20 = v22;
  BYTE8(v20) = v23;
  *&v21 = *(&v23 + 1);
  BYTE8(v21) = v24;
  LayoutProxy.dimensions(in:)(&v20, &v22);
  v12 = *(&v23 + 1);
  v13 = *(v11 + 8);
  *&v20 = *v11;
  DWORD2(v20) = v13;
  v22 = *(&v23 + 1);
  v19 = *&v24;
  v23 = v24;
  *&v24 = v25;
  v14 = COERCE_DOUBLE(LayoutProxy.explicitAlignment(_:at:)(a1, &v22));
  v16 = v15;

  if ((v16 & 1) == 0)
  {
    v17 = v9 - v8 * v12;
    if (a1)
    {
      v17 = v10 - v7 * v19;
    }

    v14 = v17 + v14;
  }

  return *&v14;
}

void type metadata accessor for LayoutEngineBox<UnaryPositionAwareLayoutEngine<_SafeAreaIgnoringLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<UnaryPositionAwareLayoutEngine<_SafeAreaIgnoringLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryPositionAwareLayoutEngine<_SafeAreaIgnoringLayout>, lazy protocol witness table accessor for type _SafeAreaIgnoringLayout and conformance _SafeAreaIgnoringLayout, &type metadata for _SafeAreaIgnoringLayout, type metadata accessor for UnaryPositionAwareLayoutEngine);
    v4 = type metadata accessor for LayoutEngineBox(a1, v2, &protocol witness table for UnaryPositionAwareLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LayoutEngineBox<UnaryPositionAwareLayoutEngine<_SafeAreaIgnoringLayout>>);
    }
  }
}

uint64_t UnaryLayoutEngine.childPlacement(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v4 = v3;
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v16;
  v18 = v16[1];
  v19 = v16[2];
  v20 = v16[3];
  (*(v21 + 16))(v8, v4, a2, v13);
  (*(v11 + 32))(v15, v8, v10);
  v22 = *(a2 + 40);
  v23 = (v4 + *(a2 + 36));
  v24 = *v23;
  v54 = *(v23 + 2);
  v25 = (v4 + v22);
  v26 = (v4 + *(a2 + 48));
  v70 = *(v26 + 136);
  v71 = *(v26 + 152);
  v72 = *(v26 + 168);
  v73 = *(v26 + 184);
  v68 = *(v26 + 104);
  v69 = *(v26 + 120);
  v27 = v26[16];
  v64 = v26[15];
  v65 = v27;
  v28 = v26[18];
  v66 = v26[17];
  v67 = v28;
  v29 = v26[14];
  v62 = v26[13];
  v30 = *v25;
  v53 = *(v25 + 2);
  *&v74 = v17;
  *(&v74 + 1) = v18;
  *&v75 = v19;
  *(&v75 + 1) = v20;
  v31 = *(v26 + 96);
  v32 = *(v26 + 200);
  v33 = *(v26 + 304);
  v63 = v29;
  if (((v31 & 1) != 0 || (v34 = v26[3], v57 = v26[2], v58 = v34, v35 = v26[5], v59 = v26[4], v60 = v35, v36 = v26[1], v55 = *v26, v56 = v36, v61 = v31, !specialized static ViewSize.== infix(_:_:)(&v74, &v55))) && ((v32 & 1) != 0 || (v57 = v70, v58 = v71, v59 = v72, v60 = v73, v55 = v68, v56 = v69, v61 = v32, !specialized static ViewSize.== infix(_:_:)(&v74, &v55))) && ((v33 & 1) != 0 || (v57 = v64, v58 = v65, v59 = v66, v60 = v67, v55 = v62, v56 = v63, v61 = v33, !specialized static ViewSize.== infix(_:_:)(&v74, &v55))))
  {
    v39 = *(a2 + 24);
    *&v76[0] = v30;
    DWORD2(v76[0]) = v53;
    *&v55 = v24;
    DWORD2(v55) = v54;
    *&v56 = v17;
    *(&v56 + 1) = v18;
    *&v57 = v19;
    *(&v57 + 1) = v20;
    LOBYTE(v58) = 0;
    (*(v39 + 48))(v76, &v55, v10);
    v40 = *(v26 + 152);
    v41 = *(v26 + 184);
    v26[17] = *(v26 + 168);
    v26[18] = v41;
    *(v26 + 304) = *(v26 + 200);
    v42 = *(v26 + 120);
    v26[13] = *(v26 + 104);
    v26[14] = v42;
    v26[15] = *(v26 + 136);
    v26[16] = v40;
    v43 = v26[1];
    *(v26 + 104) = *v26;
    *(v26 + 120) = v43;
    v44 = v26[3];
    *(v26 + 136) = v26[2];
    v45 = v26[4];
    v46 = v26[5];
    *(v26 + 200) = *(v26 + 96);
    *(v26 + 184) = v46;
    *(v26 + 168) = v45;
    *(v26 + 152) = v44;
    v47 = v75;
    *v26 = v74;
    v26[1] = v47;
    v48 = *a3;
    v49 = a3[1];
    v50 = a3[3];
    v26[4] = a3[2];
    v26[5] = v50;
    v26[2] = v48;
    v26[3] = v49;
    *(v26 + 96) = 0;
  }

  else
  {
    v76[0] = v57;
    v76[1] = v58;
    v77 = v59;
    v78 = v60;
    v37 = v58;
    *a3 = v57;
    a3[1] = v37;
    v38 = v78;
    a3[2] = v77;
    a3[3] = v38;
  }

  return (*(v11 + 8))(v15, v10);
}