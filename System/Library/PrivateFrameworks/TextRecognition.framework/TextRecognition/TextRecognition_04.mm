uint64_t static CRTextDecodingUtilsTesting.adjustedBeamSearchDecodedString(_:greedyDecodedString:decodingLocale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v5 = *a5;
  v6 = sub_1B429FB88();
  v7 = sub_1B429FB88();
  if (v5 == 30)
  {
    v8 = 0;
  }

  else
  {
    CRLocale.rawValue.getter();
    v8 = sub_1B429FB88();
  }

  v9 = [objc_opt_self() adjustedBeamSearchDecodedString:v6 greedyDecodedString:v7 decodingLocale:v8];

  v10 = sub_1B429FB98();
  return v10;
}

unint64_t sub_1B4126014@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v46 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v12 = a5;
  v16 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v17 = HIBYTE(a6) & 0xF) : (v17 = a5 & 0xFFFFFFFFFFFFLL), !v17))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v16 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v16 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v8 = sub_1B429FD58();
    v12 = v31;
    v13 = v32;
    v14 = v33;

    v15 = sub_1B4126500(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v10 = *(v15 + 16);
    a7 = *(v15 + 24);
LABEL_39:
    v11 = v10 + 1;
    if (v10 < a7 >> 1)
    {
LABEL_40:
      *(v15 + 16) = v11;
      v37 = (v15 + 32 * v10);
      v37[4] = v8;
      v37[5] = v12;
      v37[6] = v13;
      v37[7] = v14;
      return v15;
    }

LABEL_43:
    v15 = sub_1B4126500((a7 > 1), v11, 1, v15);
    goto LABEL_40;
  }

  v8 = a4;
  v18 = 4 * v17;
  v15 = MEMORY[0x1E69E7CC0];
  v19 = 15;
  while (1)
  {
    v14 = v19 >> 14;
    if (v19 >> 14 == v18)
    {
      goto LABEL_33;
    }

    v42 = v15;
    v40 = a1;
    while (2)
    {
      v43 = v19;
      v15 = v19;
      while (1)
      {
        v20 = sub_1B429FD48();
        v13 = v21;
        v45[0] = v20;
        v45[1] = v21;
        v22 = v46(v45);
        if (v9)
        {

          return v15;
        }

        v23 = v22;

        if (v23)
        {
          break;
        }

        v15 = sub_1B429FC78();
        v14 = v15 >> 14;
        if (v15 >> 14 == v18)
        {
          v15 = v42;
          v19 = v43;
          goto LABEL_33;
        }
      }

      result = v43;
      if (v43 >> 14 == v14 && (a2 & 1) != 0)
      {
        v19 = sub_1B429FC78();
        v14 = v19 >> 14;
        if (v19 >> 14 != v18)
        {
          continue;
        }

        v15 = v42;
LABEL_33:
        if (v19 >> 14 == v18 && (a2 & 1) != 0)
        {

          return v15;
        }

        if (v18 < v19 >> 14)
        {
          __break(1u);
        }

        else
        {
          v8 = sub_1B429FD58();
          v12 = v34;
          v13 = v35;
          v14 = v36;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v10 = *(v15 + 16);
            a7 = *(v15 + 24);
            goto LABEL_39;
          }
        }

        v15 = sub_1B4126500(0, *(v15 + 16) + 1, 1, v15);
        goto LABEL_38;
      }

      break;
    }

    if (v14 < v43 >> 14)
    {
      break;
    }

    v25 = sub_1B429FD58();
    v44 = v26;
    v38 = v28;
    v39 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_1B4126500(0, *(v42 + 2) + 1, 1, v42);
    }

    v14 = *(v42 + 2);
    v29 = *(v42 + 3);
    v13 = v14 + 1;
    if (v14 >= v29 >> 1)
    {
      v42 = sub_1B4126500((v29 > 1), v14 + 1, 1, v42);
    }

    *(v42 + 2) = v13;
    v30 = &v42[32 * v14];
    *(v30 + 4) = v25;
    *(v30 + 5) = v44;
    *(v30 + 6) = v39;
    *(v30 + 7) = v38;
    v15 = v42;
    v19 = sub_1B429FC78();
    a1 = v40;
    if (*(v42 + 2) == v40)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_1B41263D4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B41263F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B41263F4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885180, ".C");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B4126500(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885180, ".C");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1B412660C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = sub_1B41269F8(a1, a2, a3, a4, a5, a6, a7, a8, *(v8 + 16));

  return v9;
}

uint64_t sub_1B412666C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v54 = *(a2 + 16);
  v55 = *(a1 + 16);
  if (v54 >= v55)
  {
    v5 = *(a1 + 16);
  }

  else
  {
    v5 = *(a2 + 16);
  }

  v63 = MEMORY[0x1E69E7CC0];
  sub_1B41263D4(0, v5, 0);
  result = v63;
  v51 = a1;
  v52 = a2;
  v56 = v5;
  if (v5)
  {
    v7 = (a1 + 56);
    v8 = (a2 + 56);
    v9 = v5;
    do
    {
      v59 = v9;
      v61 = result;
      v10 = *(v7 - 3);
      v11 = *(v7 - 2);
      v12 = *(v7 - 1);
      v13 = *v7;
      v14 = *(v8 - 1);
      v15 = *v8;
      v17 = *(v8 - 3);
      v16 = *(v8 - 2);

      if (!v13)
      {
        goto LABEL_25;
      }

      v18 = a3(v10, v11, v12, v13, v17, v16, v14, v15);
      v20 = v19;
      v22 = v21;
      v24 = v23;

      result = v61;
      v26 = *(v61 + 16);
      v25 = *(v61 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1B41263D4((v25 > 1), v26 + 1, 1);
        result = v61;
      }

      v8 += 4;
      *(result + 16) = v26 + 1;
      v27 = (result + 32 * v26);
      v27[4] = v18;
      v27[5] = v20;
      v27[6] = v22;
      v27[7] = v24;
      v7 += 4;
      v9 = v59 - 1;
    }

    while (v59 != 1);
  }

  v29 = v54;
  v28 = v55;
  if (v55 > v54)
  {
    v30 = v56;
    v53 = 32 * v56;
    v31 = v51;
    v32 = v52;
    while (v30 < v28)
    {
      if (__OFADD__(v30, 1))
      {
        goto LABEL_22;
      }

      if (v29 == v30)
      {
        return result;
      }

      if (v30 >= v29)
      {
        goto LABEL_23;
      }

      if (__OFADD__(v30, 1))
      {
        goto LABEL_24;
      }

      v60 = v30 + 1;
      v62 = result;
      v57 = v30;
      v34 = *(v31 + v53 + 32);
      v33 = *(v31 + v53 + 40);
      v35 = *(v31 + v53 + 48);
      v36 = *(v31 + v53 + 56);
      v37 = *(v32 + v53 + 48);
      v38 = *(v32 + v53 + 56);
      v40 = *(v32 + v53 + 32);
      v39 = *(v32 + v53 + 40);

      v41 = a3(v34, v33, v35, v36, v40, v39, v37, v38);
      v43 = v42;
      v45 = v44;
      v47 = v46;

      result = v62;
      v49 = *(v62 + 16);
      v48 = *(v62 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_1B41263D4((v48 > 1), v49 + 1, 1);
        result = v62;
      }

      *(result + 16) = v49 + 1;
      v50 = (result + 32 * v49);
      v50[4] = v41;
      v50[5] = v43;
      v50[6] = v45;
      v50[7] = v47;
      v28 = v55;
      v30 = v57 + 1;
      v31 += 32;
      v32 += 32;
      v29 = v54;
      if (v60 == v55)
      {
        return result;
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

unint64_t sub_1B4126930()
{
  result = qword_1ED95E6E8;
  if (!qword_1ED95E6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB885178, "HC");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED95E6E8);
  }

  return result;
}

unint64_t sub_1B4126994()
{
  result = qword_1ED95E710;
  if (!qword_1ED95E710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED95E710);
  }

  return result;
}

unint64_t sub_1B41269F8(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  result = sub_1B42A02A8();
  if (v16)
  {
    result = a2;
  }

  v30 = a2 >> 14;
  if (a2 >> 14 < result >> 14)
  {
    __break(1u);
    goto LABEL_28;
  }

  v29 = a5;
  v17 = sub_1B42A02F8();
  v19 = v18;
  result = sub_1B42A02B8();
  if (__OFSUB__(result, 1))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return result;
  }

  result = sub_1B42A02A8();
  if (v20)
  {
    v21 = v19;
  }

  else
  {
    v21 = result;
  }

  if (v21 >> 14 < v17 >> 14)
  {
    goto LABEL_29;
  }

  sub_1B42A02F8();

  sub_1B4126994();
  sub_1B40EEE90();
  v22 = sub_1B42A0338();

  v23 = a5;
  if ((v22 & 1) == 0 && (sub_1B4125CD8(0x2F2F3A70747468, 0xE700000000000000, a1, a2, a3, a4) & 1) == 0 && (sub_1B4125CD8(0x2F2F3A7370747468, 0xE800000000000000, a1, a2, a3, a4) & 1) == 0 || (v24 = sub_1B42A02B8(), sub_1B42A02B8() < v24))
  {
    while (v30 != a1 >> 14)
    {
      v25 = sub_1B42A02D8();
      sub_1B42A02C8();
      if (utf16CheckIsDigit(v25))
      {
        while ((v29 ^ a6) >= 0x4000)
        {
          v26 = sub_1B42A02D8();
          sub_1B42A02C8();
          if (utf16CheckIsLatin(v26))
          {
            return v23;
          }
        }

        break;
      }
    }

    if ((a9 & 1) != 0 || sub_1B429FD28() < 10)
    {
      return a1;
    }

    else
    {
      while (v30 != a1 >> 14)
      {
        v27 = sub_1B42A02D8();
        sub_1B42A02C8();
        if (!utf16CheckIsEnglishCapital(v27))
        {
          return a1;
        }
      }

      while ((v29 ^ a6) >= 0x4000)
      {
        v28 = sub_1B42A02D8();
        sub_1B42A02C8();
        if (!utf16CheckIsEnglishCapital(v28))
        {
          return a1;
        }
      }
    }
  }

  return v23;
}

CRNormalizedQuad __swiftcall CRNormalizedQuad.transformed(_:)(CGAffineTransform *a1)
{
  a = a1->a;
  b = a1->b;
  c = a1->c;
  d = a1->d;
  tx = a1->tx;
  ty = a1->ty;
  [v1 topLeft];
  v22.a = a;
  v22.b = b;
  v22.c = c;
  v22.d = d;
  v22.tx = tx;
  v22.ty = ty;
  v8 = CGPointApplyAffineTransform(v23, &v22);
  [v1 topRight];
  v22.a = a;
  v22.b = b;
  v22.c = c;
  v22.d = d;
  v22.tx = tx;
  v22.ty = ty;
  v9 = CGPointApplyAffineTransform(v24, &v22);
  [v1 bottomLeft];
  v22.a = a;
  v22.b = b;
  v22.c = c;
  v22.d = d;
  v22.tx = tx;
  v22.ty = ty;
  v10 = CGPointApplyAffineTransform(v25, &v22);
  [v1 bottomRight];
  v22.a = a;
  v22.b = b;
  v22.c = c;
  v22.d = d;
  v22.tx = tx;
  v22.ty = ty;
  v11 = CGPointApplyAffineTransform(v26, &v22);
  [v1 normalizationSize];
  v13 = v12;
  v15 = v14;
  v22.a = a;
  v22.b = b;
  v22.c = c;
  v22.d = d;
  v22.tx = tx;
  v22.ty = ty;
  CGAffineTransformInvert(&v21, &v22);
  v22 = v21;
  v27.width = v13;
  v27.height = v15;
  v16 = CGSizeApplyAffineTransform(v27, &v22);
  v17 = [objc_allocWithZone(CRNormalizedQuad) initWithNormalizedTopLeft:v8.x topRight:v8.y bottomRight:v9.x bottomLeft:v9.y size:{v11.x, v11.y, v10.x, v10.y, *&v16.width, *&v16.height}];
  result._normalizationSize.height = v20;
  result._normalizationSize.width = v19;
  result._denormalizedQuad = v18;
  result.super.isa = v17;
  return result;
}

BOOL sub_1B4126F44(uint64_t a1)
{
  v3 = sub_1B429F868();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = &v14 - v9;
  [v1 boundingBox];
  sub_1B429F878();
  (*(v4 + 16))(v6, a1, v3);
  sub_1B429F828();
  v11 = sub_1B429F858();
  v12 = *(v4 + 8);
  v12(v6, v3);
  v12(v10, v3);
  return (v11 & 1) == 0;
}

id sub_1B4127090(CGAffineTransform *a1)
{
  v2 = v1;
  v4 = [v1 boundingQuad];
  if (v4)
  {
    v5 = v4;
    v6 = CRNormalizedQuad.transformed(_:)(a1);
  }

  else
  {
    v6 = 0;
  }

  [v2 setBoundingQuad_];

  v7 = [v2 polygon];
  if (v7)
  {
    v9 = v7;
    CRNormalizedPolyline.transformed(_:)(v8, a1);
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  [v2 setPolygon_];

  v12 = [v2 originalBoundingQuad];
  if (v12)
  {
    v13 = v12;
    v14 = CRNormalizedQuad.transformed(_:)(a1);
  }

  else
  {
    v14 = 0;
  }

  [v2 setOriginalBoundingQuad_];

  v15 = [v2 boundingQuadAtOCRDispatch];
  if (v15)
  {
    v16 = v15;
    v17 = CRNormalizedQuad.transformed(_:)(a1);
  }

  else
  {
    v17 = 0;
  }

  [v2 setBoundingQuadAtOCRDispatch_];

  [v2 setGeometryInfo_];
  v18 = [v2 children];
  if (!v18)
  {
    goto LABEL_26;
  }

  v19 = v18;
  sub_1B40E27B4(0, &qword_1ED95EE70, off_1E7BC1008);
  v20 = sub_1B429FDF8();

  if (v20 >> 62)
  {
    goto LABEL_134;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B42A0518())
  {

    if (i)
    {
      v22 = 0;
      while (1)
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x1B8C72CD0](v22, v20);
        }

        else
        {
          if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_119;
          }

          v23 = *(v20 + 8 * v22 + 32);
        }

        v24 = v23;
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        sub_1B4127090(a1);

        ++v22;
        if (v25 == i)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

LABEL_25:
    swift_bridgeObjectRelease_n();
LABEL_26:
    v26 = [v2 candidates];
    if (v26)
    {
      v27 = v26;
      sub_1B40E27B4(0, &qword_1ED95EE70, off_1E7BC1008);
      v20 = sub_1B429FDF8();

      if (v20 >> 62)
      {
        v28 = sub_1B42A0518();
      }

      else
      {
        v28 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v28)
      {
        v29 = 0;
        while (1)
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            v30 = MEMORY[0x1B8C72CD0](v29, v20);
          }

          else
          {
            if (v29 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_121;
            }

            v30 = *(v20 + 8 * v29 + 32);
          }

          v31 = v30;
          v32 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            break;
          }

          sub_1B4127090(a1);

          ++v29;
          if (v32 == v28)
          {
            goto LABEL_38;
          }
        }

LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

LABEL_38:
      swift_bridgeObjectRelease_n();
    }

    v33 = [v2 dataDetectorRegions];
    if (v33)
    {
      v34 = v33;
      sub_1B40E27B4(0, &qword_1EB885198, off_1E7BC0D60);
      v20 = sub_1B429FDF8();

      if (v20 >> 62)
      {
        v35 = sub_1B42A0518();
      }

      else
      {
        v35 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v35)
      {
        v36 = 0;
        while (1)
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            v37 = MEMORY[0x1B8C72CD0](v36, v20);
          }

          else
          {
            if (v36 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_123;
            }

            v37 = *(v20 + 8 * v36 + 32);
          }

          v38 = v37;
          v39 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            break;
          }

          sub_1B4127090(a1);

          ++v36;
          if (v39 == v35)
          {
            goto LABEL_51;
          }
        }

LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

LABEL_51:
      swift_bridgeObjectRelease_n();
    }

    v40 = [v2 dataDetectorGroupRegions];
    if (v40)
    {
      v41 = v40;
      sub_1B40E27B4(0, &qword_1EB885190, off_1E7BC0D58);
      v20 = sub_1B429FDF8();

      if (v20 >> 62)
      {
        v42 = sub_1B42A0518();
      }

      else
      {
        v42 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v42)
      {
        v43 = 0;
        while (1)
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            v44 = MEMORY[0x1B8C72CD0](v43, v20);
          }

          else
          {
            if (v43 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_125;
            }

            v44 = *(v20 + 8 * v43 + 32);
          }

          v45 = v44;
          v46 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            break;
          }

          sub_1B4127090(a1);

          ++v43;
          if (v46 == v42)
          {
            goto LABEL_64;
          }
        }

LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }

LABEL_64:
      swift_bridgeObjectRelease_n();
    }

    v47 = [v2 paragraphRegions];
    if (v47)
    {
      v48 = v47;
      sub_1B40E27B4(0, &qword_1ED95EE70, off_1E7BC1008);
      v20 = sub_1B429FDF8();

      if (v20 >> 62)
      {
        v49 = sub_1B42A0518();
      }

      else
      {
        v49 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v49)
      {
        v50 = 0;
        while (1)
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            v51 = MEMORY[0x1B8C72CD0](v50, v20);
          }

          else
          {
            if (v50 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_127;
            }

            v51 = *(v20 + 8 * v50 + 32);
          }

          v52 = v51;
          v53 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
            break;
          }

          sub_1B4127090(a1);

          ++v50;
          if (v53 == v49)
          {
            goto LABEL_77;
          }
        }

LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
        goto LABEL_128;
      }

LABEL_77:
      swift_bridgeObjectRelease_n();
    }

    v54 = [v2 listRegions];
    if (v54)
    {
      v55 = v54;
      sub_1B40E27B4(0, &qword_1EB885188, off_1E7BC0F88);
      v20 = sub_1B429FDF8();

      if (v20 >> 62)
      {
        v56 = sub_1B42A0518();
      }

      else
      {
        v56 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v56)
      {
        v57 = 0;
        while (1)
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            v58 = MEMORY[0x1B8C72CD0](v57, v20);
          }

          else
          {
            if (v57 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_129;
            }

            v58 = *(v20 + 8 * v57 + 32);
          }

          v59 = v58;
          v60 = v57 + 1;
          if (__OFADD__(v57, 1))
          {
            break;
          }

          sub_1B4127090(a1);

          ++v57;
          if (v60 == v56)
          {
            goto LABEL_90;
          }
        }

LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
        goto LABEL_130;
      }

LABEL_90:
      swift_bridgeObjectRelease_n();
    }

    v61 = [v2 tableRegions];
    if (v61)
    {
      v62 = v61;
      sub_1B40E27B4(0, &unk_1ED95E690, off_1E7BC1090);
      v20 = sub_1B429FDF8();

      if (v20 >> 62)
      {
        v63 = sub_1B42A0518();
      }

      else
      {
        v63 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v63)
      {
        v64 = 0;
        while (1)
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            v65 = MEMORY[0x1B8C72CD0](v64, v20);
          }

          else
          {
            if (v64 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_131;
            }

            v65 = *(v20 + 8 * v64 + 32);
          }

          v66 = v65;
          v67 = v64 + 1;
          if (__OFADD__(v64, 1))
          {
            break;
          }

          sub_1B4127090(a1);

          ++v64;
          if (v67 == v63)
          {
            goto LABEL_103;
          }
        }

LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
        goto LABEL_132;
      }

LABEL_103:
      swift_bridgeObjectRelease_n();
    }

    result = [v2 formFieldRegions];
    if (!result)
    {
      return result;
    }

    v69 = result;
    sub_1B40E27B4(0, &qword_1EB884810, off_1E7BC0E20);
    v2 = sub_1B429FDF8();

    v20 = v2 >> 62 ? sub_1B42A0518() : *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v20)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v71 = MEMORY[0x1B8C72CD0](j, v2);
      }

      else
      {
        if (j >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_133;
        }

        v71 = *(v2 + 8 * j + 32);
      }

      v72 = v71;
      v73 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1B4127090(a1);

      if (v73 == v20)
      {
        return swift_bridgeObjectRelease_n();
      }
    }

LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    ;
  }

  return swift_bridgeObjectRelease_n();
}

void sub_1B41279D8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a1 recognizedLocale];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1B429FB98();
    v10 = v9;

    v11 = [v5 boundingQuad];
    if (!v11)
    {
LABEL_7:

      goto LABEL_8;
    }

    v12 = v11;
    [v11 area];
    v14 = v13;

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a2 = *(a3 + 16);
    v34 = a2;
    *(a3 + 16) = 0x8000000000000000;
    v16 = sub_1B40F0030(v8, v10);
    v18 = *(a2 + 16);
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      __break(1u);
    }

    else
    {
      v5 = v17;
      if (*(a2 + 24) < v21)
      {
        sub_1B4128170(v21, isUniquelyReferenced_nonNull_native);
        v16 = sub_1B40F0030(v8, v10);
        if ((v5 & 1) != (v22 & 1))
        {
          sub_1B42A06E8();
          __break(1u);
          goto LABEL_7;
        }

LABEL_20:
        *(a3 + 16) = a2;
        if ((v5 & 1) == 0)
        {
          *(a2 + 8 * (v16 >> 6) + 64) |= 1 << v16;
          v29 = (*(a2 + 48) + 16 * v16);
          *v29 = v8;
          v29[1] = v10;
          *(*(a2 + 56) + 8 * v16) = 0;
          v30 = *(a2 + 16);
          v20 = __OFADD__(v30, 1);
          v31 = v30 + 1;
          if (v20)
          {
            __break(1u);
            goto LABEL_28;
          }

          v32 = v16;
          *(a2 + 16) = v31;

          v16 = v32;
        }

        *(*(a2 + 56) + 8 * v16) = v14 + *(*(a2 + 56) + 8 * v16);
        swift_endAccess();

        return;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_20;
      }
    }

    v33 = v16;
    sub_1B4128414();
    v16 = v33;
    goto LABEL_20;
  }

LABEL_8:
  v23 = [v5 children];
  if (!v23)
  {
    return;
  }

  v24 = v23;
  sub_1B40E27B4(0, &qword_1ED95EE70, off_1E7BC1008);
  v10 = sub_1B429FDF8();

  if (a2 > 2 || [v5 type] == 8)
  {
    goto LABEL_29;
  }

  if (v10 >> 62)
  {
LABEL_28:
    v25 = sub_1B42A0518();
    if (v25)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

  v25 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v25)
  {
LABEL_13:
    if (v25 < 1)
    {
      __break(1u);
      return;
    }

    for (i = 0; i != v25; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1B8C72CD0](i, v10);
      }

      else
      {
        v27 = *(v10 + 8 * i + 32);
      }

      v28 = v27;
      sub_1B41279D8(v27, a2 + 1, a3);
    }
  }

LABEL_29:
}

void sub_1B4127D68()
{
  v1 = [v0 text];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 recognizedLocale];
    if (v3)
    {
      v4 = v3;
      sub_1B429FB98();

      v5 = objc_opt_self();
LABEL_4:
      v6 = sub_1B429FB88();

      goto LABEL_30;
    }

    v7 = swift_allocObject();
    *(v7 + 16) = sub_1B412857C(MEMORY[0x1E69E7CC0]);
    sub_1B41279D8(v0, 0, v7);
    swift_beginAccess();
    v8 = *(v7 + 16);
    if (*(v8 + 16))
    {
      v9 = 1 << *(v8 + 32);
      v10 = -1;
      if (v9 < 64)
      {
        v10 = ~(-1 << v9);
      }

      v11 = v10 & *(v8 + 64);
      if (v11)
      {
        v12 = 0;
        v13 = __clz(__rbit64(v11));
        v14 = (v11 - 1) & v11;
        v15 = (v9 + 63) >> 6;
LABEL_17:
        v18 = *(*(v8 + 48) + 16 * v13 + 8);
        v19 = *(*(v8 + 56) + 8 * v13);
        swift_bridgeObjectRetain_n();

        if (!v14)
        {
          goto LABEL_20;
        }

        do
        {
LABEL_18:
          while (1)
          {
            v20 = __clz(__rbit64(v14));
            v14 &= v14 - 1;
            v21 = v20 | (v12 << 6);
            v22 = *(*(v8 + 56) + 8 * v21);
            if (v19 < v22)
            {
              break;
            }

            if (!v14)
            {
              goto LABEL_20;
            }
          }

          v28 = *(*(v8 + 48) + 16 * v21 + 8);

          v18 = v28;
          v19 = v22;
        }

        while (v14);
        while (1)
        {
LABEL_20:
          v23 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
            return;
          }

          if (v23 >= v15)
          {
            break;
          }

          v14 = *(v8 + 64 + 8 * v23);
          ++v12;
          if (v14)
          {
            v12 = v23;
            goto LABEL_18;
          }
        }

        v5 = objc_opt_self();
        if (v18)
        {
          goto LABEL_4;
        }

        goto LABEL_29;
      }

      v16 = 0;
      v15 = (v9 + 63) >> 6;
      while (v15 - 1 != v11)
      {
        v12 = v11 + 1;
        v17 = *(v8 + 72 + 8 * v11);
        v16 -= 64;
        ++v11;
        if (v17)
        {
          v14 = (v17 - 1) & v17;
          v13 = __clz(__rbit64(v17)) - v16;
          goto LABEL_17;
        }
      }
    }

    v5 = objc_opt_self();
LABEL_29:
    v6 = 0;
LABEL_30:
    v24 = [v0 transcriptComponents];
    if (v24)
    {
      v25 = v24;
      sub_1B40E27B4(0, &qword_1EB8851A0, off_1E7BC1010);
      sub_1B429FDF8();
    }

    sub_1B40E27B4(0, &qword_1EB8851A0, off_1E7BC1010);
    v26 = sub_1B429FDE8();

    v27 = [v5 computeDataDetectorRegionsForText:v2 locale:v6 transcriptComponents:v26 ddQOS:2];

    [v0 setDataDetectorRegions_];
    return;
  }

  [v0 setDataDetectorRegions_];
}

uint64_t sub_1B4128170(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8851A8, "<C");
  v33 = v4;
  result = sub_1B42A05D8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_1B42A0778();
      sub_1B429FC48();
      result = sub_1B42A07A8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_1B4128414()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8851A8, "<C");
  v2 = *v0;
  v3 = sub_1B42A05C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

unint64_t sub_1B412857C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8851A8, "<C");
    v3 = sub_1B42A05F8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1B40F0030(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B41287BC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_uuid;
  swift_beginAccess();
  return sub_1B40DDA80(v1 + v3, a1);
}

uint64_t sub_1B4128954(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_uuid;
  swift_beginAccess();
  sub_1B41289B4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1B41289B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870, &qword_1B42AC0A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4128B00()
{
  v1 = (v0 + OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_text);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_1B4128BC4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_text);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

double sub_1B4128DDC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_subregions;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void *sub_1B4128EE0()
{
  v1 = OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_boundingQuad;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1B4128F8C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_boundingQuad;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1B412908C()
{
  v1 = OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_canWrapToNextGroup;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B4129124(char a1)
{
  v3 = OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_canWrapToNextGroup;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_1B4129208(unint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_uuid;
  v5 = sub_1B429F6D8();
  (*(*(v5 - 8) + 56))(&v2[v4], 1, 1, v5);
  v6 = &v2[OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_text];
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_boundingQuad;
  *&v2[OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_boundingQuad] = 0;
  v2[OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_canWrapToNextGroup] = 0;
  v50 = a1;
  v48 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v8 = a1 & 0xFFFFFFFFFFFFFF8;

    sub_1B42A0698();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884BF0, &qword_1B42ACD90);
    v9 = swift_dynamicCastMetatype();
    v10 = a1;
    if (!v9)
    {
      v32 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = a1;
      if (v32)
      {
        v33 = v8 + 32;
        while (1)
        {
          v52 = &unk_1F2C037E0;
          if (!swift_dynamicCastObjCProtocolConditional())
          {
            break;
          }

          v33 += 8;
          if (!--v32)
          {
            v10 = a1;
            goto LABEL_3;
          }
        }

        v10 = v8 | 1;
      }
    }

LABEL_3:
    *&v2[OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_subregions] = v10;
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v49 = v11;
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_30:
    v31 = 0.0;
LABEL_31:
    swift_beginAccess();
    v34 = *&v2[v7];
    *&v2[v7] = 0;

    if (v11)
    {
      v35 = 0;
      v36 = a1 & 0xC000000000000001;
      v37 = a1 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v36)
        {
          v40 = MEMORY[0x1B8C72CD0](v35, a1);
          v41 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            goto LABEL_45;
          }
        }

        else
        {
          if (v35 >= *(v37 + 16))
          {
            goto LABEL_46;
          }

          v40 = *(a1 + 8 * v35 + 32);
          swift_unknownObjectRetain();
          v41 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }
        }

        v42 = *&v2[v7];
        if (v42)
        {
          v43 = v42;
          v44 = [v40 boundingQuad];
          if (!v44)
          {
            goto LABEL_49;
          }

          v46 = v44;
          *&v45 = v31;
          v38 = [v43 unionWithNormalizedQuad:v44 baselineAngle:v45];
          swift_unknownObjectRelease();

          v11 = v49;
          a1 = v50;
        }

        else
        {
          v38 = [v40 boundingQuad];
          swift_unknownObjectRelease();
        }

        v39 = *&v2[v7];
        *&v2[v7] = v38;

        ++v35;
      }

      while (v41 != v11);
    }

    v51.receiver = v2;
    v51.super_class = type metadata accessor for CRLayoutParagraph(0);
    objc_msgSendSuper2(&v51, sel_init);
    return;
  }

LABEL_29:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884BF0, &qword_1B42ACD90);
  *&v2[OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_subregions] = sub_1B42A0558();
  v11 = sub_1B42A0518();
  v49 = v11;
  if (!v11)
  {
    goto LABEL_30;
  }

LABEL_4:
  v12 = 0;
  v13 = a1 & 0xC000000000000001;
  a1 &= 0xFFFFFFFFFFFFFF8uLL;
  v47 = v13;
  v14 = 0.0;
  while (1)
  {
    if (v47)
    {
      v15 = MEMORY[0x1B8C72CD0](v12, v50);
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
LABEL_19:
        __break(1u);
LABEL_20:
        v31 = v14;
        v11 = v49;
        a1 = v50;
        goto LABEL_31;
      }
    }

    else
    {
      if (v12 >= *(a1 + 16))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v15 = *(v50 + 8 * v12 + 32);
      swift_unknownObjectRetain();
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_19;
      }
    }

    v17 = [v15 boundingQuad];
    if (!v17)
    {
      goto LABEL_47;
    }

    v18 = v17;
    [v17 baselineAngle];
    v20 = v19;

    v14 = weightedAverageAngleFromEuclideanSpace(v20, v14, 1.0, v12);
    v21 = [v15 text];
    if (!v21)
    {
      break;
    }

    v22 = v21;
    v23 = sub_1B429FB98();
    v25 = v24;

    swift_beginAccess();
    MEMORY[0x1B8C72530](v23, v25);
    swift_endAccess();

    if (v48)
    {
      v26 = sub_1B42A0518();
    }

    else
    {
      v26 = *(a1 + 16);
    }

    if (__OFSUB__(v26, 1))
    {
      goto LABEL_28;
    }

    if (v12 < v26 - 1)
    {
      v27 = [objc_opt_self() joiningDelimiterForLine_];
      v28 = sub_1B429FB98();
      v30 = v29;

      swift_beginAccess();
      MEMORY[0x1B8C72530](v28, v30);
      swift_endAccess();
    }

    swift_unknownObjectRelease();
    ++v12;
    if (v16 == v49)
    {
      goto LABEL_20;
    }
  }

LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
}

uint64_t type metadata accessor for CRLayoutParagraph(uint64_t a1)
{
  result = qword_1EB895AC0;
  if (!qword_1EB895AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B4129870()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA8))();
  if (result >> 62)
  {
    v4 = result;
    v5 = sub_1B42A0518();
    result = v4;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1B8C72CD0](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(result + 32);
    swift_unknownObjectRetain();
LABEL_6:

    v3 = [v2 layoutDirection];
    swift_unknownObjectRelease();
    return v3;
  }

  __break(1u);
  return result;
}

id sub_1B41299AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLayoutParagraph(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B4129A5C(uint64_t a1)
{
  sub_1B4124B78(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1B4129B18(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  result = sub_1B412A4BC(a1, a3, a4);
  if (a2 < 0)
  {
    v14 = 0;
    while (1)
    {
      if (result < 0x10000)
      {
        goto LABEL_38;
      }

      if ((a4 & 0x1000000000000000) == 0)
      {
        break;
      }

      result = sub_1B429FC28();
LABEL_20:
      if (--v14 <= a2)
      {
        return result;
      }
    }

    v15 = result >> 16;
    if ((a4 & 0x2000000000000000) != 0)
    {
      v22 = a3;
      v23 = a4 & 0xFFFFFFFFFFFFFFLL;
      if ((*(&v22 + v15 - 1) & 0xC0) == 0x80)
      {
        v20 = -2;
        do
        {
          v21 = *(&v22 + v15 + v20--) & 0xC0;
        }

        while (v21 == 128);
        v19 = v20 + 1;
        goto LABEL_35;
      }
    }

    else
    {
      v16 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v16 = sub_1B42A0448();
      }

      if ((*(v16 + v15 - 1) & 0xC0) == 0x80)
      {
        v17 = -2;
        do
        {
          v18 = *(v16 + v15 + v17--) & 0xC0;
        }

        while (v18 == 128);
        v19 = v17 + 1;
        goto LABEL_35;
      }
    }

    v19 = -1;
LABEL_35:
    result = ((v19 + v15) << 16) | 5;
    goto LABEL_20;
  }

  if (a2)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(a4) & 0xF;
    }

    else
    {
      v8 = a3 & 0xFFFFFFFFFFFFLL;
    }

    while (1)
    {
      v9 = result >> 16;
      if (result >> 16 >= v8)
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_1B429FC18();
        if (!--a2)
        {
          return result;
        }
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v22 = a3;
          v23 = a4 & 0xFFFFFFFFFFFFFFLL;
          v11 = *(&v22 + v9);
        }

        else
        {
          v10 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v10 = sub_1B42A0448();
          }

          v11 = *(v10 + v9);
        }

        v12 = v11;
        v13 = __clz(v11 ^ 0xFF) - 24;
        if (v12 >= 0)
        {
          LOBYTE(v13) = 1;
        }

        result = ((v9 + v13) << 16) | 5;
        if (!--a2)
        {
          return result;
        }
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4129D84(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() joiningDelimiterForLine:a1 useLineSeparatorAsLineBreak:0];
  v2 = sub_1B429FB98();

  return v2;
}

uint64_t sub_1B4129E64(unint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884D10, &unk_1B42ACD40);
  v5 = sub_1B429FDE8();
  [v2 predictLineWrappingTypesForAllLinesInGroups:v5 useHandwritingConfig:a2 & 1];

  v30 = MEMORY[0x1E69E7CC0];
  v31 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_42;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v8 = 0;
    v29 = a1 & 0xC000000000000001;
    v25 = a1 + 32;
    v26 = a1 & 0xFFFFFFFFFFFFFF8;
    v9 = MEMORY[0x1E69E7CC0];
    v27 = v6;
    v28 = a1;
    while (1)
    {
      if (v29)
      {
        v10 = MEMORY[0x1B8C72CD0](v8, a1);
        v11 = __OFADD__(v8++, 1);
        if (v11)
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v8 >= *(v26 + 16))
        {
          goto LABEL_41;
        }

        v10 = *(v25 + 8 * v8);
        swift_unknownObjectRetain();
        v11 = __OFADD__(v8++, 1);
        if (v11)
        {
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          v6 = sub_1B42A0518();
          goto LABEL_3;
        }
      }

      v12 = [v10 subregions];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884BF0, &qword_1B42ACD90);
      v13 = sub_1B429FDF8();

      v14 = sub_1B412A294(v13);

      if (v14)
      {
        if (v14 >> 62)
        {
          v15 = sub_1B42A0518();
          if (!v15)
          {
LABEL_32:
            swift_unknownObjectRelease();

            goto LABEL_6;
          }
        }

        else
        {
          v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v15)
          {
            goto LABEL_32;
          }
        }

        if (v15 < 1)
        {
          goto LABEL_40;
        }

        for (i = 0; i != v15; ++i)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x1B8C72CD0](i, v14);
          }

          else
          {
            v17 = *(v14 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          v18 = swift_unknownObjectRetain();
          MEMORY[0x1B8C72680](v18);
          if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1B429FE08();
          }

          sub_1B429FE38();
          v7 = v30;
          if ([v17 lineWrappingType] == 1 || !objc_msgSend(v17, sel_lineWrappingType))
          {
            type metadata accessor for CRLayoutParagraph(0);

            sub_1B41291D4(v19);
            v21 = v20;
            MEMORY[0x1B8C72680]();
            if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1B429FE08();
            }

            sub_1B429FE38();
            swift_unknownObjectRelease();

            v9 = v31;

            v7 = MEMORY[0x1E69E7CC0];
            v30 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        swift_unknownObjectRelease();

        v6 = v27;
        a1 = v28;
      }

      else
      {
        swift_unknownObjectRelease();
      }

LABEL_6:
      if (v8 == v6)
      {
        goto LABEL_34;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_34:
  if (v7 >> 62)
  {
    if (sub_1B42A0518())
    {
      goto LABEL_36;
    }

LABEL_44:

    return v9;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_44;
  }

LABEL_36:
  type metadata accessor for CRLayoutParagraph(0);
  sub_1B41291D4(v7);
  v23 = v22;
  MEMORY[0x1B8C72680]();
  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1B429FE08();
  }

  sub_1B429FE38();

  return v31;
}

uint64_t sub_1B412A294(unint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_15:
    sub_1B42A0518();
    sub_1B42A0488();
    v2 = sub_1B42A0518();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1B42A0488();
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1B8C72CD0](v3, a1);
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        if (!swift_dynamicCastObjCProtocolConditional())
        {
          goto LABEL_13;
        }

        sub_1B42A0458();
        sub_1B42A0498();
        sub_1B42A04A8();
        sub_1B42A0468();
        ++v3;
      }

      while (v4 != v2);
    }
  }

  return v6;
}

unint64_t sub_1B412A4BC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1B412A554(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1B412A5C8(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1B412A554(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1B412A6EC(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B412A5C8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1B42A0448();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

unint64_t sub_1B412A6EC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1B429FD08();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1B8C72570](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_1B412A768(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1B412A800(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1B412A5C8(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1B412A800(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1B412A6EC(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B412A874(void *a1, char a2)
{
  v4 = sub_1B429F578();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B429F768();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885210, &unk_1B42ADA00);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = MEMORY[0x1EEE9AC00](v15).n128_u64[0];
  v18 = &v47 - v17;
  v19 = [a1 lineWrappingType];
  if (v19 <= 5 && ((1 << v19) & 0x23) != 0)
  {
    if (a2)
    {
      return 11043042;
    }

    else
    {
      return 10;
    }
  }

  v47 = v5;
  v21 = v19;
  v22 = [a1 locale];
  if (v22)
  {
    v23 = v22;
    sub_1B429F728();

    (*(v9 + 56))(v18, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v18, 1, 1, v8);
  }

  sub_1B412AF74(v18, v14);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    sub_1B412AFE4(v18);
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    v24._countAndFlagsBits = sub_1B429F6F8();
    CRLocale.init(rawValue:)(v24);
    (*(v9 + 8))(v11, v8);
    sub_1B412AFE4(v18);
    v25 = v51;
    if (v51 != 30)
    {
      CRLocale.script.getter(&v50);
      v49 = v50;
      v48 = 2;
      sub_1B410D624();
      if (sub_1B429FB58())
      {
        return 0;
      }

      LOBYTE(v51) = v25;
      CRLocale.script.getter(&v50);
      v49 = v50;
      v48 = 3;
      if (sub_1B429FB58())
      {
        return 0;
      }
    }
  }

  if (v21 != 3)
  {
    if (v21 == 4)
    {
      return sub_1B429FB98();
    }

    else
    {
      return 32;
    }
  }

  result = [a1 text];
  if (!result)
  {
    __break(1u);
    goto LABEL_41;
  }

  v26 = result;
  v27 = [result _crEndsWithHyphen];

  v28 = v47;
  if (!v27)
  {
    return 0;
  }

  result = [a1 text];
  if (!result)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v29 = result;
  sub_1B429FB98();

  v30 = sub_1B429FC68();

  if (v30 < 2)
  {
    return 0;
  }

  result = [a1 text];
  if (!result)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v31 = result;
  v32 = sub_1B429FB98();
  v34 = v33;

  result = [a1 text];
  if (!result)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    return result;
  }

  v35 = result;
  v36 = sub_1B429FB98();
  v38 = v37;

  v39 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v39 = v36;
  }

  v40 = 7;
  if (((v38 >> 60) & ((v36 & 0x800000000000000) == 0)) != 0)
  {
    v40 = 11;
  }

  v41 = sub_1B4129B18(v40 | (v39 << 16), -2, v32, v34);

  result = [a1 text];
  if (!result)
  {
    goto LABEL_44;
  }

  v42 = result;
  v43 = sub_1B429FB98();
  v45 = v44;

  sub_1B412A768(v41, v43, v45);
  if ((v45 & 0x1000000000000000) != 0)
  {
    sub_1B42A03F8();
LABEL_30:

    goto LABEL_36;
  }

  if ((v45 & 0x2000000000000000) == 0)
  {
    if ((v43 & 0x1000000000000000) == 0)
    {
      sub_1B42A0448();
    }

    goto LABEL_30;
  }

  v51 = v43;
  v52 = v45 & 0xFFFFFFFFFFFFFFLL;
LABEL_36:
  sub_1B429F4E8();
  v46 = sub_1B429F568();
  (*(v28 + 8))(v7, v4);
  if (v46)
  {
    return 32;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B412AF74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885210, &unk_1B42ADA00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B412AFE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885210, &unk_1B42ADA00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1B412B1E0(uint64_t a1, unint64_t a2, char a3, char a4)
{
  v5 = v4;
  v156 = sub_1B429FA68();
  v155 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v157 = &v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  v153 = a1;
  v12 = sub_1B429FB88();
  v13 = [v11 modelLocaleForLocale_];

  v14 = sub_1B429FB98();
  v16 = v15;

  v17 = 0xD000000000000011;
  if ((a3 & 1) == 0)
  {
    v17 = 0x697461756C617665;
  }

  v154 = v17;
  if (a3)
  {
    v18 = 0x80000001B42B44B0;
  }

  else
  {
    v18 = 0xEA00000000006E6FLL;
  }

  result = lineWrappingConfig();
  if (!result)
  {
    __break(1u);
    goto LABEL_197;
  }

  v20 = result;
  v21 = sub_1B429FAF8();

  v159 = v14;
  v160 = v16;

  sub_1B42A03B8();
  if (!*(v21 + 16))
  {
    goto LABEL_15;
  }

  v22 = sub_1B4100E08(v161);
  if ((v23 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_1B40E2888(*(v21 + 56) + 32 * v22, v162);
  sub_1B41012A0(v161);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8852D0, &qword_1B42ADA18);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v163 = 0u;
    v164 = 0u;
    goto LABEL_17;
  }

  v24 = v159;
  v162[0] = v154;
  v162[1] = v18;

  sub_1B42A03B8();
  if (!*(v24 + 16) || (v25 = sub_1B4100E08(v161), (v26 & 1) == 0))
  {
LABEL_15:

    sub_1B41012A0(v161);
    goto LABEL_16;
  }

  sub_1B40E2888(*(v24 + 56) + 32 * v25, &v163);
  sub_1B41012A0(v161);

  if (!*(&v164 + 1))
  {
LABEL_17:
    sub_1B410F21C(&v163);
    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v165 = 0;
  }

  if (a4)
  {
    result = lineWrappingConfig();
    if (result)
    {
      v27 = result;
      v28 = sub_1B429FAF8();

      v159 = v14;
      v160 = v16;
      sub_1B42A03B8();
      if (*(v28 + 16) && (v29 = sub_1B4100E08(v161), (v30 & 1) != 0))
      {
        sub_1B40E2888(*(v28 + 56) + 32 * v29, v162);
        sub_1B41012A0(v161);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8852D0, &qword_1B42ADA18);
        v31 = swift_dynamicCast();
        v32 = v156;
        v33 = v157;
        if (v31)
        {
          v34 = v159;
          strcpy(v162, "evaluation-hw");
          HIWORD(v162[1]) = -4864;
          sub_1B42A03B8();
          v35 = v155;
          if (*(v34 + 16))
          {
            v36 = sub_1B4100E08(v161);
            if (v37)
            {
              sub_1B40E2888(*(v34 + 56) + 32 * v36, &v163);
              sub_1B41012A0(v161);

              if (*(&v164 + 1))
              {
                if (swift_dynamicCast())
                {
                  v165 = v161[0];

                  v38 = v165;
                  if (!v165)
                  {
                    goto LABEL_141;
                  }

LABEL_32:

                  v162[0] = 0xD000000000000015;
                  v162[1] = 0x80000001B42B4150;
                  sub_1B42A03B8();
                  if (*(v38 + 16) && (v39 = sub_1B4100E08(v161), (v40 & 1) != 0))
                  {
                    sub_1B40E2888(*(v38 + 56) + 32 * v39, &v163);
                    sub_1B41012A0(v161);
                    sub_1B40E27B4(0, &qword_1ED95EE90, 0x1E696AD98);
                    if (swift_dynamicCast())
                    {
                      v41 = v162[0];
                      [v162[0] floatValue];
                      v43 = v42;

LABEL_38:
                      *&v5[OBJC_IVAR___CRLineWrappingParameters_heightSimilarityRatio] = v43;
                      v162[0] = 0xD00000000000001DLL;
                      v162[1] = 0x80000001B42B4170;
                      sub_1B42A03B8();
                      if (*(v38 + 16) && (v44 = sub_1B4100E08(v161), (v45 & 1) != 0))
                      {
                        sub_1B40E2888(*(v38 + 56) + 32 * v44, &v163);
                        sub_1B41012A0(v161);
                        sub_1B40E27B4(0, &qword_1ED95EE90, 0x1E696AD98);
                        if (swift_dynamicCast())
                        {
                          v46 = v162[0];
                          [v162[0] floatValue];
                          v48 = v47;

LABEL_44:
                          *&v5[OBJC_IVAR___CRLineWrappingParameters_leadingDistanceRatioTolerance] = v48;
                          v162[0] = 0xD00000000000001DLL;
                          v162[1] = 0x80000001B42B4190;
                          sub_1B42A03B8();
                          if (*(v38 + 16) && (v49 = sub_1B4100E08(v161), (v50 & 1) != 0))
                          {
                            sub_1B40E2888(*(v38 + 56) + 32 * v49, &v163);
                            sub_1B41012A0(v161);
                            sub_1B40E27B4(0, &qword_1ED95EE90, 0x1E696AD98);
                            if (swift_dynamicCast())
                            {
                              v51 = v162[0];
                              [v162[0] floatValue];
                              v53 = v52;

LABEL_50:
                              *&v5[OBJC_IVAR___CRLineWrappingParameters_verticalSpacingRatioTolerance] = v53;
                              v162[0] = 0xD000000000000028;
                              v162[1] = 0x80000001B42B41B0;
                              sub_1B42A03B8();
                              if (*(v38 + 16) && (v54 = sub_1B4100E08(v161), (v55 & 1) != 0))
                              {
                                sub_1B40E2888(*(v38 + 56) + 32 * v54, &v163);
                                sub_1B41012A0(v161);
                                sub_1B40E27B4(0, &qword_1ED95EE90, 0x1E696AD98);
                                if (swift_dynamicCast())
                                {
                                  v56 = v162[0];
                                  [v162[0] floatValue];
                                  v58 = v57;

LABEL_56:
                                  *&v5[OBJC_IVAR___CRLineWrappingParameters_newParagraphIndentDistanceRatioTolerance] = v58;
                                  v162[0] = 0xD000000000000029;
                                  v162[1] = 0x80000001B42B41E0;
                                  sub_1B42A03B8();
                                  if (*(v38 + 16) && (v59 = sub_1B4100E08(v161), (v60 & 1) != 0))
                                  {
                                    sub_1B40E2888(*(v38 + 56) + 32 * v59, &v163);
                                    sub_1B41012A0(v161);
                                    sub_1B40E27B4(0, &qword_1ED95EE90, 0x1E696AD98);
                                    if (swift_dynamicCast())
                                    {
                                      v61 = v162[0];
                                      [v162[0] floatValue];
                                      v63 = v62;

LABEL_62:
                                      *&v5[OBJC_IVAR___CRLineWrappingParameters_oversegmentedDistanceHeightRatioTolerance] = v63;
                                      v162[0] = 0xD000000000000023;
                                      v162[1] = 0x80000001B42B4210;
                                      sub_1B42A03B8();
                                      if (*(v38 + 16) && (v64 = sub_1B4100E08(v161), (v65 & 1) != 0))
                                      {
                                        sub_1B40E2888(*(v38 + 56) + 32 * v64, &v163);
                                        sub_1B41012A0(v161);
                                        sub_1B40E27B4(0, &qword_1ED95EE90, 0x1E696AD98);
                                        if (swift_dynamicCast())
                                        {
                                          v66 = v162[0];
                                          [v162[0] floatValue];
                                          v68 = v67;

LABEL_68:
                                          *&v5[OBJC_IVAR___CRLineWrappingParameters_smallestVerticalDistanceHeightRatio] = v68;
                                          v162[0] = 0xD000000000000022;
                                          v162[1] = 0x80000001B42B4240;
                                          sub_1B42A03B8();
                                          if (*(v38 + 16) && (v69 = sub_1B4100E08(v161), (v70 & 1) != 0))
                                          {
                                            sub_1B40E2888(*(v38 + 56) + 32 * v69, &v163);
                                            sub_1B41012A0(v161);
                                            sub_1B40E27B4(0, &qword_1ED95EE90, 0x1E696AD98);
                                            if (swift_dynamicCast())
                                            {
                                              v71 = v162[0];
                                              [v162[0] floatValue];
                                              v73 = v72;

LABEL_74:
                                              *&v5[OBJC_IVAR___CRLineWrappingParameters_maximumVerticalDistanceGrowthRatio] = v73;
                                              v162[0] = 0xD000000000000018;
                                              v162[1] = 0x80000001B42B4270;
                                              sub_1B42A03B8();
                                              if (*(v38 + 16) && (v74 = sub_1B4100E08(v161), (v75 & 1) != 0))
                                              {
                                                sub_1B40E2888(*(v38 + 56) + 32 * v74, &v163);
                                                sub_1B41012A0(v161);
                                                sub_1B40E27B4(0, &qword_1ED95EE90, 0x1E696AD98);
                                                if (swift_dynamicCast())
                                                {
                                                  v76 = v162[0];
                                                  [v162[0] floatValue];
                                                  v78 = v77;

LABEL_80:
                                                  *&v5[OBJC_IVAR___CRLineWrappingParameters_angleSimilarityThreshold] = v78;
                                                  v162[0] = 0xD000000000000010;
                                                  v162[1] = 0x80000001B42B4290;
                                                  sub_1B42A03B8();
                                                  if (*(v38 + 16) && (v79 = sub_1B4100E08(v161), (v80 & 1) != 0))
                                                  {
                                                    sub_1B40E2888(*(v38 + 56) + 32 * v79, &v163);
                                                    sub_1B41012A0(v161);
                                                    sub_1B40E27B4(0, &qword_1ED95EE90, 0x1E696AD98);
                                                    if (swift_dynamicCast())
                                                    {
                                                      v81 = v162[0];
                                                      [v162[0] floatValue];
                                                      v83 = v82;

LABEL_86:
                                                      *&v5[OBJC_IVAR___CRLineWrappingParameters_widthGrowthLimit] = v83;
                                                      v162[0] = 0xD000000000000017;
                                                      v162[1] = 0x80000001B42B42B0;
                                                      sub_1B42A03B8();
                                                      if (*(v38 + 16) && (v84 = sub_1B4100E08(v161), (v85 & 1) != 0))
                                                      {
                                                        sub_1B40E2888(*(v38 + 56) + 32 * v84, &v163);
                                                        sub_1B41012A0(v161);
                                                        sub_1B40E27B4(0, &qword_1ED95EE90, 0x1E696AD98);
                                                        if (swift_dynamicCast())
                                                        {
                                                          v86 = v162[0];
                                                          v87 = [v162[0] integerValue];

LABEL_92:
                                                          *&v5[OBJC_IVAR___CRLineWrappingParameters_tokenCountIncreaseLimit] = v87;
                                                          v162[0] = 0xD000000000000031;
                                                          v162[1] = 0x80000001B42B42D0;
                                                          sub_1B42A03B8();
                                                          if (*(v38 + 16) && (v88 = sub_1B4100E08(v161), (v89 & 1) != 0))
                                                          {
                                                            sub_1B40E2888(*(v38 + 56) + 32 * v88, &v163);
                                                            sub_1B41012A0(v161);
                                                            sub_1B40E27B4(0, &qword_1ED95EE90, 0x1E696AD98);
                                                            if (swift_dynamicCast())
                                                            {
                                                              v90 = v162[0];
                                                              [v162[0] floatValue];
                                                              v92 = v91;

LABEL_98:
                                                              *&v5[OBJC_IVAR___CRLineWrappingParameters_oversegmentedDistanceHeightRatioListItemTolerance] = v92;
                                                              *&v163 = 0xD000000000000016;
                                                              *(&v163 + 1) = 0x80000001B42B4310;
                                                              sub_1B42A03B8();
                                                              if (*(v38 + 16) && (v93 = sub_1B4100E08(v161), (v94 & 1) != 0))
                                                              {
                                                                sub_1B40E2888(*(v38 + 56) + 32 * v93, &v163);
                                                                sub_1B41012A0(v161);
                                                                v95 = swift_dynamicCast();
                                                                v96 = v95 == 0;
                                                                if (v95)
                                                                {
                                                                  v97 = v162[0];
                                                                }

                                                                else
                                                                {
                                                                  v97 = 0;
                                                                }

                                                                if (v96)
                                                                {
                                                                  v98 = 0;
                                                                }

                                                                else
                                                                {
                                                                  v98 = v162[1];
                                                                }
                                                              }

                                                              else
                                                              {
                                                                sub_1B41012A0(v161);
                                                                v97 = 0;
                                                                v98 = 0;
                                                              }

                                                              v99 = sub_1B412D3F8(v97, v98);

                                                              *&v5[OBJC_IVAR___CRLineWrappingParameters_correctionMode] = v99;
                                                              v162[0] = 0xD000000000000013;
                                                              v162[1] = 0x80000001B42B4330;
                                                              sub_1B42A03B8();
                                                              if (*(v38 + 16) && (v100 = sub_1B4100E08(v161), (v101 & 1) != 0))
                                                              {
                                                                sub_1B40E2888(*(v38 + 56) + 32 * v100, &v163);
                                                                sub_1B41012A0(v161);
                                                                sub_1B40E27B4(0, &qword_1ED95EE90, 0x1E696AD98);
                                                                if (swift_dynamicCast())
                                                                {
                                                                  v102 = v162[0];
                                                                  [v162[0] floatValue];
                                                                  v104 = v103;

LABEL_113:
                                                                  *&v5[OBJC_IVAR___CRLineWrappingParameters_confidenceThreshold] = v104;
                                                                  v162[0] = 0xD00000000000001ALL;
                                                                  v162[1] = 0x80000001B42B4350;
                                                                  sub_1B42A03B8();
                                                                  if (*(v38 + 16) && (v105 = sub_1B4100E08(v161), (v106 & 1) != 0))
                                                                  {
                                                                    sub_1B40E2888(*(v38 + 56) + 32 * v105, &v163);
                                                                    sub_1B41012A0(v161);
                                                                    sub_1B40E27B4(0, &qword_1ED95EE90, 0x1E696AD98);
                                                                    if (swift_dynamicCast())
                                                                    {
                                                                      v107 = v162[0];
                                                                      [v162[0] floatValue];
                                                                      v109 = v108;

LABEL_119:
                                                                      *&v5[OBJC_IVAR___CRLineWrappingParameters_contextConfidenceThreshold] = v109;
                                                                      v162[0] = 0xD000000000000010;
                                                                      v162[1] = 0x80000001B42B4370;
                                                                      sub_1B42A03B8();
                                                                      if (*(v38 + 16) && (v110 = sub_1B4100E08(v161), (v111 & 1) != 0))
                                                                      {
                                                                        sub_1B40E2888(*(v38 + 56) + 32 * v110, &v163);
                                                                        sub_1B41012A0(v161);
                                                                        sub_1B40E27B4(0, &qword_1ED95EE90, 0x1E696AD98);
                                                                        if (swift_dynamicCast())
                                                                        {
                                                                          v112 = v162[0];
                                                                          [v162[0] doubleValue];
                                                                          v114 = v113;

LABEL_125:
                                                                          *&v5[OBJC_IVAR___CRLineWrappingParameters_lmScoreThreshold] = v114;
                                                                          v162[0] = 0xD000000000000012;
                                                                          v162[1] = 0x80000001B42B4390;
                                                                          sub_1B42A03B8();
                                                                          if (*(v38 + 16) && (v115 = sub_1B4100E08(v161), (v116 & 1) != 0))
                                                                          {
                                                                            sub_1B40E2888(*(v38 + 56) + 32 * v115, &v163);
                                                                            sub_1B41012A0(v161);
                                                                            sub_1B40E27B4(0, &qword_1ED95EE90, 0x1E696AD98);
                                                                            if (swift_dynamicCast())
                                                                            {
                                                                              v117 = v162[0];
                                                                              [v162[0] doubleValue];
                                                                              v119 = v118;

LABEL_131:
                                                                              *&v5[OBJC_IVAR___CRLineWrappingParameters_lmScoreEOSMinRatio] = v119;
                                                                              strcpy(v162, "lmContextSize");
                                                                              HIWORD(v162[1]) = -4864;
                                                                              sub_1B42A03B8();
                                                                              if (*(v38 + 16) && (v120 = sub_1B4100E08(v161), (v121 & 1) != 0))
                                                                              {
                                                                                sub_1B40E2888(*(v38 + 56) + 32 * v120, &v163);
                                                                              }

                                                                              else
                                                                              {
                                                                                v163 = 0u;
                                                                                v164 = 0u;
                                                                              }

                                                                              sub_1B41012A0(v161);
                                                                              if (*(&v164 + 1))
                                                                              {
                                                                                sub_1B40E27B4(0, &qword_1ED95EE90, 0x1E696AD98);
                                                                                if (swift_dynamicCast())
                                                                                {
                                                                                  v122 = v162[0];
                                                                                  v123 = [v162[0] integerValue];

LABEL_145:
                                                                                  *&v5[OBJC_IVAR___CRLineWrappingParameters_lmContextSize] = v123;
                                                                                  v162[0] = 0xD000000000000014;
                                                                                  v162[1] = 0x80000001B42B43B0;
                                                                                  sub_1B42A03B8();
                                                                                  if (*(v38 + 16) && (v131 = sub_1B4100E08(v161), (v132 & 1) != 0))
                                                                                  {
                                                                                    sub_1B40E2888(*(v38 + 56) + 32 * v131, &v163);
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v163 = 0u;
                                                                                    v164 = 0u;
                                                                                  }

                                                                                  sub_1B41012A0(v161);
                                                                                  if (*(&v164 + 1))
                                                                                  {
                                                                                    sub_1B40E27B4(0, &qword_1ED95EE90, 0x1E696AD98);
                                                                                    if (swift_dynamicCast())
                                                                                    {
                                                                                      v133 = v162[0];
                                                                                      [v162[0] floatValue];
                                                                                      v135 = v134;

LABEL_154:
                                                                                      *&v5[OBJC_IVAR___CRLineWrappingParameters_probabilityThreshold] = v135;
                                                                                      v162[0] = 0xD00000000000001BLL;
                                                                                      v162[1] = 0x80000001B42B43D0;
                                                                                      sub_1B42A03B8();
                                                                                      if (*(v38 + 16) && (v136 = sub_1B4100E08(v161), (v137 & 1) != 0))
                                                                                      {
                                                                                        sub_1B40E2888(*(v38 + 56) + 32 * v136, &v163);
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v163 = 0u;
                                                                                        v164 = 0u;
                                                                                      }

                                                                                      sub_1B41012A0(v161);
                                                                                      if (*(&v164 + 1))
                                                                                      {
                                                                                        sub_1B40E27B4(0, &qword_1ED95EE90, 0x1E696AD98);
                                                                                        if (swift_dynamicCast())
                                                                                        {
                                                                                          v138 = v162[0];
                                                                                          v139 = [v162[0] integerValue];

LABEL_163:
                                                                                          *&v5[OBJC_IVAR___CRLineWrappingParameters_wrappingEvaluationThreshold] = v139;
                                                                                          v162[0] = 0xD00000000000001DLL;
                                                                                          v162[1] = 0x80000001B42B43F0;
                                                                                          sub_1B42A03B8();
                                                                                          if (*(v38 + 16) && (v140 = sub_1B4100E08(v161), (v141 & 1) != 0))
                                                                                          {
                                                                                            sub_1B40E2888(*(v38 + 56) + 32 * v140, &v163);
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v163 = 0u;
                                                                                            v164 = 0u;
                                                                                          }

                                                                                          sub_1B41012A0(v161);
                                                                                          if (*(&v164 + 1))
                                                                                          {
                                                                                            sub_1B40E27B4(0, &qword_1ED95EE90, 0x1E696AD98);
                                                                                            if (swift_dynamicCast())
                                                                                            {
                                                                                              v142 = v162[0];
                                                                                              v143 = [v162[0] integerValue];

LABEL_172:
                                                                                              *&v5[OBJC_IVAR___CRLineWrappingParameters_noWrappingEvaluationThreshold] = v143;
                                                                                              v162[0] = 0xD000000000000025;
                                                                                              v162[1] = 0x80000001B42B4410;
                                                                                              sub_1B42A03B8();
                                                                                              if (*(v38 + 16) && (v144 = sub_1B4100E08(v161), (v145 & 1) != 0))
                                                                                              {
                                                                                                sub_1B40E2888(*(v38 + 56) + 32 * v144, &v163);
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v163 = 0u;
                                                                                                v164 = 0u;
                                                                                              }

                                                                                              sub_1B41012A0(v161);
                                                                                              if (*(&v164 + 1))
                                                                                              {
                                                                                                sub_1B40E27B4(0, &qword_1ED95EE90, 0x1E696AD98);
                                                                                                if (swift_dynamicCast())
                                                                                                {
                                                                                                  v146 = v162[0];
                                                                                                  v147 = [v162[0] integerValue];

                                                                                                  goto LABEL_181;
                                                                                                }
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                sub_1B410F21C(&v163);
                                                                                              }

                                                                                              v147 = 10;
LABEL_181:
                                                                                              *&v5[OBJC_IVAR___CRLineWrappingParameters_caseWrappingScoreWithNoCapitalization] = v147;
                                                                                              v162[0] = 0xD000000000000025;
                                                                                              v162[1] = 0x80000001B42B4440;
                                                                                              sub_1B42A03B8();
                                                                                              sub_1B412CB94(v161, v38, &v163);
                                                                                              sub_1B41012A0(v161);
                                                                                              if (*(&v164 + 1))
                                                                                              {
                                                                                                sub_1B40E27B4(0, &qword_1ED95EE90, 0x1E696AD98);
                                                                                                if (swift_dynamicCast())
                                                                                                {
                                                                                                  v148 = v162[0];
                                                                                                  v149 = [v162[0] integerValue];

                                                                                                  goto LABEL_186;
                                                                                                }
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                sub_1B410F21C(&v163);
                                                                                              }

                                                                                              v149 = 10;
LABEL_186:
                                                                                              *&v5[OBJC_IVAR___CRLineWrappingParameters_punctuationWrappingScoreWithEndingMOS] = v149;
                                                                                              v162[0] = 0xD000000000000030;
                                                                                              v162[1] = 0x80000001B42B4470;
                                                                                              sub_1B42A03B8();
                                                                                              sub_1B412CB94(v161, v38, &v163);

                                                                                              sub_1B41012A0(v161);
                                                                                              if (*(&v164 + 1))
                                                                                              {
                                                                                                sub_1B40E27B4(0, &qword_1ED95EE90, 0x1E696AD98);
                                                                                                if (swift_dynamicCast())
                                                                                                {
                                                                                                  v150 = v162[0];
                                                                                                  v151 = [v162[0] integerValue];

LABEL_191:
                                                                                                  *&v5[OBJC_IVAR___CRLineWrappingParameters_punctuationWrappingScoreWithNoClosingPunctuation] = v151;

                                                                                                  v158.receiver = v5;
                                                                                                  v158.super_class = CRLineWrappingParameters;
                                                                                                  return objc_msgSendSuper2(&v158, sel_init);
                                                                                                }
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                sub_1B410F21C(&v163);
                                                                                              }

                                                                                              v151 = 10;
                                                                                              goto LABEL_191;
                                                                                            }
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            sub_1B410F21C(&v163);
                                                                                          }

                                                                                          v143 = -6;
                                                                                          goto LABEL_172;
                                                                                        }
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        sub_1B410F21C(&v163);
                                                                                      }

                                                                                      v139 = 2;
                                                                                      goto LABEL_163;
                                                                                    }
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    sub_1B410F21C(&v163);
                                                                                  }

                                                                                  v135 = 0.5;
                                                                                  goto LABEL_154;
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                sub_1B410F21C(&v163);
                                                                              }

                                                                              v123 = 0;
                                                                              goto LABEL_145;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            sub_1B41012A0(v161);
                                                                          }

                                                                          v119 = 0;
                                                                          goto LABEL_131;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        sub_1B41012A0(v161);
                                                                      }

                                                                      v114 = 0;
                                                                      goto LABEL_125;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    sub_1B41012A0(v161);
                                                                  }

                                                                  v109 = 0;
                                                                  goto LABEL_119;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                sub_1B41012A0(v161);
                                                              }

                                                              v104 = 0;
                                                              goto LABEL_113;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            sub_1B41012A0(v161);
                                                          }

                                                          v92 = 0;
                                                          goto LABEL_98;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        sub_1B41012A0(v161);
                                                      }

                                                      v87 = 0;
                                                      goto LABEL_92;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    sub_1B41012A0(v161);
                                                  }

                                                  v83 = 0;
                                                  goto LABEL_86;
                                                }
                                              }

                                              else
                                              {
                                                sub_1B41012A0(v161);
                                              }

                                              v78 = 0;
                                              goto LABEL_80;
                                            }
                                          }

                                          else
                                          {
                                            sub_1B41012A0(v161);
                                          }

                                          v73 = 0;
                                          goto LABEL_74;
                                        }
                                      }

                                      else
                                      {
                                        sub_1B41012A0(v161);
                                      }

                                      v68 = 0;
                                      goto LABEL_68;
                                    }
                                  }

                                  else
                                  {
                                    sub_1B41012A0(v161);
                                  }

                                  v63 = 0;
                                  goto LABEL_62;
                                }
                              }

                              else
                              {
                                sub_1B41012A0(v161);
                              }

                              v58 = 0;
                              goto LABEL_56;
                            }
                          }

                          else
                          {
                            sub_1B41012A0(v161);
                          }

                          v53 = 0;
                          goto LABEL_50;
                        }
                      }

                      else
                      {
                        sub_1B41012A0(v161);
                      }

                      v48 = 0;
                      goto LABEL_44;
                    }
                  }

                  else
                  {
                    sub_1B41012A0(v161);
                  }

                  v43 = 0;
                  goto LABEL_38;
                }

                goto LABEL_31;
              }

LABEL_140:
              sub_1B410F21C(&v163);
              v38 = v165;
              if (v165)
              {
                goto LABEL_32;
              }

              goto LABEL_141;
            }
          }

          sub_1B41012A0(v161);
        }

        else
        {
          v35 = v155;
        }
      }

      else
      {

        sub_1B41012A0(v161);
        v32 = v156;
        v35 = v155;
        v33 = v157;
      }

      v163 = 0u;
      v164 = 0u;
      goto LABEL_140;
    }

LABEL_197:
    __break(1u);
    return result;
  }

  v32 = v156;
  v35 = v155;
  v33 = v157;
LABEL_31:
  v38 = v165;
  if (v165)
  {
    goto LABEL_32;
  }

LABEL_141:
  v124 = sub_1B4125430();
  (*(v35 + 16))(v33, v124, v32);

  v125 = sub_1B429FA48();
  v126 = sub_1B42A0148();

  if (os_log_type_enabled(v125, v126))
  {
    v127 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    v161[0] = v128;
    *v127 = 136315394;
    v129 = sub_1B40DDE8C(v153, a2, v161);

    *(v127 + 4) = v129;
    *(v127 + 12) = 2080;
    v130 = sub_1B40DDE8C(v154, v18, v161);

    *(v127 + 14) = v130;
    _os_log_impl(&dword_1B40D2000, v125, v126, "Failed to load line wrapping config for locale %s and category %s", v127, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8C74FA0](v128, -1, -1);
    MEMORY[0x1B8C74FA0](v127, -1, -1);

    (*(v35 + 8))(v157, v156);
  }

  else
  {

    (*(v35 + 8))(v33, v32);
  }

  type metadata accessor for CRLineWrappingParameters(v152);
  swift_deallocPartialClassInstance();
  return 0;
}

double sub_1B412CB94@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1B4100E08(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_1B40E2888(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t CRLineWrappingParameters.description.getter()
{
  sub_1B42A0408();
  MEMORY[0x1B8C72530](0xD000000000000017, 0x80000001B42B44D0);
  [v0 heightSimilarityRatio];
  sub_1B42A0058();
  MEMORY[0x1B8C72530](0xD000000000000020, 0x80000001B42B44F0);
  [v0 leadingDistanceRatioTolerance];
  sub_1B42A0058();
  MEMORY[0x1B8C72530](0xD000000000000020, 0x80000001B42B4520);
  [v0 verticalSpacingRatioTolerance];
  sub_1B42A0058();
  MEMORY[0x1B8C72530](0xD00000000000002BLL, 0x80000001B42B4550);
  [v0 newParagraphIndentDistanceRatioTolerance];
  sub_1B42A0058();
  MEMORY[0x1B8C72530](0xD00000000000002CLL, 0x80000001B42B4580);
  [v0 oversegmentedDistanceHeightRatioTolerance];
  sub_1B42A0058();
  MEMORY[0x1B8C72530](0xD000000000000026, 0x80000001B42B45B0);
  [v0 smallestVerticalDistanceHeightRatio];
  sub_1B42A0058();
  MEMORY[0x1B8C72530](0xD000000000000025, 0x80000001B42B45E0);
  [v0 maximumVerticalDistanceGrowthRatio];
  sub_1B42A0058();
  MEMORY[0x1B8C72530](0xD00000000000001BLL, 0x80000001B42B4610);
  [v0 angleSimilarityThreshold];
  sub_1B42A0058();
  MEMORY[0x1B8C72530](0xD000000000000013, 0x80000001B42B4630);
  [v0 widthGrowthLimit];
  sub_1B42A0058();
  MEMORY[0x1B8C72530](0xD00000000000001ALL, 0x80000001B42B4650);
  [v0 tokenCountIncreaseLimit];
  v1 = sub_1B42A0648();
  MEMORY[0x1B8C72530](v1);

  MEMORY[0x1B8C72530](0xD000000000000034, 0x80000001B42B4670);
  [v0 oversegmentedDistanceHeightRatioListItemTolerance];
  sub_1B42A0058();
  MEMORY[0x1B8C72530](0xD000000000000019, 0x80000001B42B46B0);
  [v0 correctionMode];
  type metadata accessor for CRWrappingCorrectionMode(0);
  sub_1B42A04E8();
  MEMORY[0x1B8C72530](0xD000000000000016, 0x80000001B42B46D0);
  [v0 confidenceThreshold];
  sub_1B42A0058();
  MEMORY[0x1B8C72530](0xD00000000000001DLL, 0x80000001B42B46F0);
  [v0 contextConfidenceThreshold];
  sub_1B42A0058();
  MEMORY[0x1B8C72530](0xD000000000000013, 0x80000001B42B4710);
  [v0 lmScoreThreshold];
  sub_1B42A0038();
  MEMORY[0x1B8C72530](0xD000000000000015, 0x80000001B42B4730);
  [v0 lmScoreEOSMinRatio];
  sub_1B42A0038();
  MEMORY[0x1B8C72530](0xD000000000000010, 0x80000001B42B4750);
  [v0 lmContextSize];
  v2 = sub_1B42A0648();
  MEMORY[0x1B8C72530](v2);

  MEMORY[0x1B8C72530](0xD000000000000017, 0x80000001B42B4770);
  [v0 probabilityThreshold];
  sub_1B42A0058();
  MEMORY[0x1B8C72530](0xD00000000000001ELL, 0x80000001B42B4790);
  [v0 wrappingEvaluationThreshold];
  type metadata accessor for CRWrapEvaluation(0);
  sub_1B42A04E8();
  MEMORY[0x1B8C72530](0xD000000000000020, 0x80000001B42B47B0);
  [v0 noWrappingEvaluationThreshold];
  sub_1B42A04E8();
  MEMORY[0x1B8C72530](0xD000000000000028, 0x80000001B42B47E0);
  [v0 caseWrappingScoreWithNoCapitalization];
  sub_1B42A04E8();
  MEMORY[0x1B8C72530](0xD000000000000028, 0x80000001B42B4810);
  [v0 punctuationWrappingScoreWithEndingMOS];
  sub_1B42A04E8();
  MEMORY[0x1B8C72530](0xD000000000000033, 0x80000001B42B4840);
  [v0 punctuationWrappingScoreWithNoClosingPunctuation];
  sub_1B42A04E8();
  return 0;
}

void __swiftcall CRLineWrappingParameters.init()(CRLineWrappingParameters *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_1B412D3F8(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B429FA68();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  if (!a2)
  {
    v12 = sub_1B4125430();
    (*(v5 + 16))(v7, v12, v4);
    v13 = sub_1B429FA48();
    v14 = sub_1B42A0148();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      MEMORY[0x1B8C74FA0](v15, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return 0;
  }

  if (a1 == 0x737961776C61 && a2 == 0xE600000000000000 || (sub_1B42A0678() & 1) != 0)
  {
    return 2;
  }

  if ((a1 != 0xD000000000000012 || 0x80000001B42B4D50 != a2) && (sub_1B42A0678() & 1) == 0)
  {
    if ((a1 != 0x64656C6261736964 || a2 != 0xE800000000000000) && (sub_1B42A0678() & 1) == 0)
    {
      v16 = sub_1B4125430();
      (*(v5 + 16))(v10, v16, v4);

      v17 = sub_1B429FA48();
      v18 = sub_1B42A0148();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v22 = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_1B40DDE8C(a1, a2, &v22);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x1B8C74FA0](v20, -1, -1);
        MEMORY[0x1B8C74FA0](v19, -1, -1);
      }

      (*(v5 + 8))(v10, v4);
    }

    return 0;
  }

  return 1;
}

unint64_t sub_1B412D774()
{
  result = sub_1B41300CC(MEMORY[0x1E69E7CC0]);
  dword_1ED95F4A8 = 0;
  qword_1ED95F4B0 = result;
  return result;
}

unint64_t sub_1B412D7A4()
{
  result = sub_1B41300CC(MEMORY[0x1E69E7CC0]);
  dword_1ED95F4C0 = 0;
  qword_1ED95F4C8 = result;
  return result;
}

void sub_1B412D7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870, &qword_1B42AC0A0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  v16 = *a4;
  if (!*(*a4 + 16) || (sub_1B412E6FC(a1), (v17 & 1) == 0))
  {
    v4 = sub_1B41302A8(MEMORY[0x1E69E7CC0]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *a4;
    sub_1B412FF24(v4, a1, isUniquelyReferenced_nonNull_native);
    v16 = v38;
    *a4 = v38;
  }

  sub_1B40E6464(a1, v15, &unk_1EB884870, &qword_1B42AC0A0);
  if (!*(v16 + 16))
  {
    __break(1u);
    goto LABEL_25;
  }

  v19 = sub_1B412E6FC(a1);
  if ((v20 & 1) == 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = *(*(v16 + 56) + 8 * v19);
  if (*(v21 + 16))
  {

    v22 = sub_1B40F0030(a2, a3);
    if (v23)
    {
      v4 = *(*(v21 + 56) + 8 * v22);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  a1 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    goto LABEL_26;
  }

  v35 = v9;
  v36 = v10;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  sub_1B40E6464(v15, v12, &unk_1EB884870, &qword_1B42AC0A0);
  v38 = *a4;
  v25 = v38;
  v9 = sub_1B412E6FC(v12);
  v27 = *(v25 + 16);
  v28 = (v26 & 1) == 0;
  v29 = v27 + v28;
  if (__OFADD__(v27, v28))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  LOBYTE(v4) = v26;
  if (*(v25 + 24) >= v29)
  {
    if (v24)
    {
      if ((v26 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_20;
    }

LABEL_28:
    sub_1B412FB90();
    if ((v4 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_20;
  }

  sub_1B412F000(v29, v24);
  v30 = sub_1B412E6FC(v12);
  if ((v4 & 1) != (v31 & 1))
  {
LABEL_30:
    sub_1B42A06E8();
    __break(1u);
    return;
  }

  v9 = v30;
  if ((v4 & 1) == 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_20:
  v32 = v38;
  v33 = *(*(v38 + 56) + 8 * v9);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v37 = v33;
  sub_1B412FDC0(a1, a2, a3, v34);
  if (v37)
  {
    *(*(v32 + 56) + 8 * v9) = v37;

    sub_1B40E26E8(v12, &unk_1EB884870, &qword_1B42AC0A0);
    sub_1B40E26E8(v15, &unk_1EB884870, &qword_1B42AC0A0);
  }

  else
  {
    sub_1B40E26E8(*(v32 + 48) + *(v36 + 72) * v9, &unk_1EB884870, &qword_1B42AC0A0);
    sub_1B412F540(v9, v32);
    sub_1B40E26E8(v12, &unk_1EB884870, &qword_1B42AC0A0);
    sub_1B40E26E8(v15, &unk_1EB884870, &qword_1B42AC0A0);
  }

  *a4 = v32;
}

void static CRLoadCounter.record(unload:owner:)(uint64_t a1, uint64_t a2)
{
  swift_getMetatypeMetadata();
  v3 = sub_1B429FBE8();
  v5 = v4;
  if (qword_1ED95F4A0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1ED95F4A8);
  sub_1B412DBFC(a2, v3, v5);

  os_unfair_lock_unlock(&dword_1ED95F4A8);
}

void sub_1B412DBFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870, &qword_1B42AC0A0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  p_info = &OBJC_METACLASS___CRDetectionResult.info;
  v14 = qword_1ED95F4B0;
  if (!*(qword_1ED95F4B0 + 16) || (sub_1B412E6FC(a1), (v15 & 1) == 0))
  {
    v16 = sub_1B41302A8(MEMORY[0x1E69E7CC0]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = qword_1ED95F4B0;
    sub_1B412FF24(v16, a1, isUniquelyReferenced_nonNull_native);
    v14 = v38;
    qword_1ED95F4B0 = v38;
  }

  sub_1B40E6464(a1, v12, &unk_1EB884870, &qword_1B42AC0A0);
  if (!*(v14 + 16))
  {
    __break(1u);
    goto LABEL_25;
  }

  v18 = sub_1B412E6FC(a1);
  if ((v19 & 1) == 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = *(*(v14 + 56) + 8 * v18);
  if (*(v20 + 16))
  {

    v21 = sub_1B40F0030(a2, a3);
    if (v22)
    {
      v23 = *(*(v20 + 56) + 8 * v21);
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  a1 = v23 - 1;
  if (__OFSUB__(v23, 1))
  {
    goto LABEL_26;
  }

  v36 = v7;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  sub_1B40E6464(v12, v9, &unk_1EB884870, &qword_1B42AC0A0);
  v25 = qword_1ED95F4B0;
  v38 = qword_1ED95F4B0;
  p_info = sub_1B412E6FC(v9);
  v27 = *(v25 + 16);
  v28 = (v26 & 1) == 0;
  v29 = v27 + v28;
  if (__OFADD__(v27, v28))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  LOBYTE(v7) = v26;
  if (*(v25 + 24) >= v29)
  {
    if (v24)
    {
      if ((v26 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_20;
    }

LABEL_28:
    sub_1B412FB90();
    if ((v7 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_20;
  }

  sub_1B412F000(v29, v24);
  v30 = sub_1B412E6FC(v9);
  if ((v7 & 1) != (v31 & 1))
  {
LABEL_30:
    sub_1B42A06E8();
    __break(1u);
    return;
  }

  p_info = v30;
  if ((v7 & 1) == 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_20:
  v32 = v38;
  v33 = *(*(v38 + 56) + 8 * p_info);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v37 = v33;
  sub_1B412FDC0(a1, a2, a3, v34);
  if (v37)
  {
    *(*(v32 + 56) + 8 * p_info) = v37;

    sub_1B40E26E8(v9, &unk_1EB884870, &qword_1B42AC0A0);
    sub_1B40E26E8(v12, &unk_1EB884870, &qword_1B42AC0A0);
  }

  else
  {
    sub_1B40E26E8(*(v32 + 48) + *(v36 + 72) * p_info, &unk_1EB884870, &qword_1B42AC0A0);
    sub_1B412F540(p_info, v32);
    sub_1B40E26E8(v9, &unk_1EB884870, &qword_1B42AC0A0);
    sub_1B40E26E8(v12, &unk_1EB884870, &qword_1B42AC0A0);
  }

  qword_1ED95F4B0 = v32;
}

uint64_t sub_1B412DFC8(uint64_t a1, uint64_t a2, void *a3, os_unfair_lock_s *a4, uint64_t *a5, uint64_t a6)
{
  swift_getMetatypeMetadata();
  v10 = sub_1B429FBE8();
  v12 = v11;
  if (*a3 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(a4);
  v13 = *a5;
  if (*(*a5 + 16) && (v14 = sub_1B412E6FC(a2), (v15 & 1) != 0) && (v16 = *(*(v13 + 56) + 8 * v14), *(v16 + 16)) && (, v17 = sub_1B40F0030(v10, v12), v19 = v18, , (v19 & 1) != 0))
  {
    v20 = *(*(v16 + 56) + 8 * v17);
  }

  else
  {

    v20 = 0;
  }

  os_unfair_lock_unlock(a4);
  return v20;
}

void static CRLoadCounter.resetTotal(owner:)()
{
  if (qword_1ED95F4B8 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1ED95F4C0);
  if (*(qword_1ED95F4C8 + 16))
  {
    swift_isUniquelyReferenced_nonNull_native();
    v0 = qword_1ED95F4C8;
    qword_1ED95F4C8 = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8852E8, &qword_1B42ADA60);
    sub_1B42A04F8();
    qword_1ED95F4C8 = v0;
  }

  os_unfair_lock_unlock(&dword_1ED95F4C0);
}

uint64_t static CRLoadCounter.debugDescription.getter()
{
  if (qword_1ED95F4A0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1ED95F4A8);
  if (qword_1ED95F4B8 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1ED95F4C0);
  sub_1B42A0408();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870, &qword_1B42AC0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8852F0, &qword_1B42ADA68);
  sub_1B41304B0();
  v0 = sub_1B429FB08();
  v2 = v1;

  MEMORY[0x1B8C72530](v0, v2);

  MEMORY[0x1B8C72530](0xA3A6C61746F540ALL, 0xE800000000000000);
  v3 = sub_1B429FB08();
  MEMORY[0x1B8C72530](v3);

  os_unfair_lock_unlock(&dword_1ED95F4C0);
  os_unfair_lock_unlock(&dword_1ED95F4A8);
  return 0xA3A657669746341;
}

CRLoadCounterFacade __swiftcall CRLoadCounterFacade.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t sub_1B412E6FC(uint64_t a1)
{
  v2 = sub_1B429F6D8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870, &qword_1B42AC0A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  sub_1B42A0778();
  sub_1B40E6464(a1, v8, &unk_1EB884870, &qword_1B42AC0A0);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1B42A0798();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1B42A0798();
    sub_1B4130670(&unk_1EB884860, MEMORY[0x1E69695B8]);
    sub_1B429FB38();
    (*(v3 + 8))(v5, v2);
  }

  v9 = sub_1B42A07A8();
  return sub_1B412E8F8(a1, v9);
}

unint64_t sub_1B412E8F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = a1;
  v5 = sub_1B429F6D8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885310, &qword_1B42ADA98);
  MEMORY[0x1EEE9AC00](v37);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870, &qword_1B42AC0A0) - 8;
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - v14;
  v39 = v3;
  v16 = -1 << *(v3 + 32);
  v17 = a2 & ~v16;
  v36 = v3 + 64;
  if ((*(v3 + 64 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    v19 = (v6 + 48);
    v20 = *(v12 + 72);
    v34 = v13;
    v35 = v20;
    v28 = (v6 + 48);
    v29 = (v6 + 32);
    v32 = (v6 + 8);
    v33 = ~v16;
    while (1)
    {
      sub_1B40E6464(*(v39 + 48) + v35 * v17, v15, &unk_1EB884870, &qword_1B42AC0A0);
      v21 = *(v37 + 48);
      sub_1B40E6464(v15, v9, &unk_1EB884870, &qword_1B42AC0A0);
      sub_1B40E6464(v38, &v9[v21], &unk_1EB884870, &qword_1B42AC0A0);
      v22 = *v19;
      if ((*v19)(v9, 1, v5) == 1)
      {
        break;
      }

      v23 = v34;
      sub_1B40E6464(v9, v34, &unk_1EB884870, &qword_1B42AC0A0);
      if (v22(&v9[v21], 1, v5) == 1)
      {
        sub_1B40E26E8(v15, &unk_1EB884870, &qword_1B42AC0A0);
        (*v32)(v23, v5);
        v18 = v33;
LABEL_4:
        sub_1B40E26E8(v9, &qword_1EB885310, &qword_1B42ADA98);
        goto LABEL_5;
      }

      v24 = &v9[v21];
      v25 = v30;
      (*v29)(v30, v24, v5);
      sub_1B4130670(&unk_1EB884850, MEMORY[0x1E69695C8]);
      v31 = sub_1B429FB58();
      v26 = *v32;
      (*v32)(v25, v5);
      sub_1B40E26E8(v15, &unk_1EB884870, &qword_1B42AC0A0);
      v26(v23, v5);
      v19 = v28;
      sub_1B40E26E8(v9, &unk_1EB884870, &qword_1B42AC0A0);
      v18 = v33;
      if (v31)
      {
        return v17;
      }

LABEL_5:
      v17 = (v17 + 1) & v18;
      if (((*(v36 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        return v17;
      }
    }

    sub_1B40E26E8(v15, &unk_1EB884870, &qword_1B42AC0A0);
    if (v22(&v9[v21], 1, v5) == 1)
    {
      sub_1B40E26E8(v9, &unk_1EB884870, &qword_1B42AC0A0);
      return v17;
    }

    goto LABEL_4;
  }

  return v17;
}

uint64_t sub_1B412ED60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885318, &qword_1B42ADAA0);
  v34 = v4;
  result = sub_1B42A05D8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1B42A0778();
      sub_1B429FC48();
      result = sub_1B42A07A8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B412F000(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1B429F6D8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870, &qword_1B42AC0A0);
  v53 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v52 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v42 - v11;
  v12 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885308, &qword_1B42ADA90);
  v54 = v4;
  result = sub_1B42A05D8();
  v14 = result;
  if (*(v12 + 16))
  {
    v51 = v5;
    v43 = v2;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v49 = (v6 + 48);
    v45 = (v6 + 32);
    v44 = (v6 + 8);
    v21 = result + 64;
    v50 = v12;
    v22 = v47;
    v48 = result;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v25 = (v19 - 1) & v19;
LABEL_15:
      v28 = v24 | (v15 << 6);
      v29 = *(v12 + 48);
      v56 = *(v53 + 72);
      v57 = v25;
      v30 = v29 + v56 * v28;
      if (v54)
      {
        sub_1B40E3B64(v30, v22);
        v55 = *(*(v12 + 56) + 8 * v28);
      }

      else
      {
        sub_1B40E6464(v30, v22, &unk_1EB884870, &qword_1B42AC0A0);
        v55 = *(*(v12 + 56) + 8 * v28);
      }

      sub_1B42A0778();
      v31 = v52;
      sub_1B40E6464(v22, v52, &unk_1EB884870, &qword_1B42AC0A0);
      v32 = v51;
      if ((*v49)(v31, 1, v51) == 1)
      {
        sub_1B42A0798();
      }

      else
      {
        v33 = v46;
        (*v45)(v46, v31, v32);
        sub_1B42A0798();
        sub_1B4130670(&unk_1EB884860, MEMORY[0x1E69695B8]);
        sub_1B429FB38();
        v22 = v47;
        (*v44)(v33, v32);
      }

      result = sub_1B42A07A8();
      v14 = v48;
      v34 = -1 << *(v48 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      v12 = v50;
      if (((-1 << v35) & ~*(v21 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v21 + 8 * v36);
          if (v40 != -1)
          {
            v23 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v35) & ~*(v21 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = sub_1B40E3B64(v22, v14[6] + v56 * v23);
      *(v14[7] + 8 * v23) = v55;
      ++v14[2];
      v19 = v57;
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v15 >= v20)
      {
        break;
      }

      v27 = v16[v15];
      ++v26;
      if (v27)
      {
        v24 = __clz(__rbit64(v27));
        v25 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v54 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_37;
    }

    v41 = 1 << *(v12 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v16, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v41;
    }

    *(v12 + 16) = 0;
  }

LABEL_37:
  *v3 = v14;
  return result;
}

void sub_1B412F540(int64_t a1, uint64_t a2)
{
  v4 = sub_1B429F6D8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870, &qword_1B42AC0A0);
  v7 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  v13 = a2 + 64;
  v14 = -1 << *(a2 + 32);
  v15 = (a1 + 1) & ~v14;
  if ((*(a2 + 64 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v45 = v4;
    v16 = ~v14;
    v17 = sub_1B42A0388();
    v18 = *(v7 + 72);
    v19 = v16;
    v42 = (v5 + 48);
    v43 = v18;
    v38 = (v5 + 8);
    v39 = (v5 + 32);
    v20 = v18;
    v40 = v12;
    v44 = (v17 + 1) & v16;
    do
    {
      v21 = v20 * v15;
      sub_1B40E6464(*(a2 + 48) + v20 * v15, v12, &unk_1EB884870, &qword_1B42AC0A0);
      sub_1B42A0778();
      sub_1B40E6464(v12, v9, &unk_1EB884870, &qword_1B42AC0A0);
      v22 = v45;
      if ((*v42)(v9, 1, v45) == 1)
      {
        sub_1B42A0798();
      }

      else
      {
        v23 = a1;
        v24 = a2;
        v25 = v19;
        v26 = v13;
        v27 = v41;
        (*v39)(v41, v9, v22);
        sub_1B42A0798();
        sub_1B4130670(&unk_1EB884860, MEMORY[0x1E69695B8]);
        sub_1B429FB38();
        v28 = v27;
        v13 = v26;
        v19 = v25;
        a2 = v24;
        a1 = v23;
        v12 = v40;
        (*v38)(v28, v22);
      }

      v29 = sub_1B42A07A8();
      sub_1B40E26E8(v12, &unk_1EB884870, &qword_1B42AC0A0);
      v30 = v29 & v19;
      if (a1 >= v44)
      {
        v20 = v43;
        if (v30 < v44)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v20 = v43;
        if (v30 >= v44)
        {
          goto LABEL_13;
        }
      }

      if (a1 >= v30)
      {
LABEL_13:
        if (v20 * a1 < v21 || *(a2 + 48) + v20 * a1 >= (*(a2 + 48) + v21 + v20))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v20 * a1 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v31 = *(a2 + 56);
        v32 = (v31 + 8 * a1);
        v33 = (v31 + 8 * v15);
        if (a1 != v15 || v32 >= v33 + 1)
        {
          *v32 = *v33;
          a1 = v15;
        }
      }

LABEL_4:
      v15 = (v15 + 1) & v19;
    }

    while (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }
}

uint64_t sub_1B412F97C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870, &qword_1B42AC0A0);
  result = sub_1B40E3B64(a2, v8 + *(*(v9 - 8) + 72) * a1);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_1B412FA28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885318, &qword_1B42ADAA0);
  v2 = *v0;
  v3 = sub_1B42A05C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1B412FB90()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870, &qword_1B42AC0A0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885308, &qword_1B42ADA90);
  v5 = *v0;
  v6 = sub_1B42A05C8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    v14 = *(v5 + 64);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_1B40E6464(*(v5 + 48) + v21, v4, &unk_1EB884870, &qword_1B42AC0A0);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_1B40E3B64(v4, *(v7 + 48) + v21);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

unint64_t sub_1B412FDC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1B40F0030(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1B412ED60(v16, a4 & 1);
      result = sub_1B40F0030(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1B42A06E8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1B412FA28();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void sub_1B412FF24(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870, &qword_1B42AC0A0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v11 = *v3;
  v13 = sub_1B412E6FC(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_1B412FB90();
      goto LABEL_7;
    }

    sub_1B412F000(v16, a3 & 1);
    v20 = sub_1B412E6FC(a2);
    if ((v17 & 1) == (v21 & 1))
    {
      v13 = v20;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1B40E6464(a2, v10, &unk_1EB884870, &qword_1B42AC0A0);
      sub_1B412F97C(v13, v10, a1, v19);
      return;
    }

LABEL_15:
    sub_1B42A06E8();
    __break(1u);
    return;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v19[7] + 8 * v13) = a1;
}

unint64_t sub_1B41300CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885300, &qword_1B42ADA88);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885308, &qword_1B42ADA90);
    v7 = sub_1B42A05F8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B40E6464(v9, v5, &qword_1EB885300, &qword_1B42ADA88);
      result = sub_1B412E6FC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870, &qword_1B42AC0A0);
      result = sub_1B40E3B64(v5, v14 + *(*(v15 - 8) + 72) * v13);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B41302A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885318, &qword_1B42ADAA0);
    v3 = sub_1B42A05F8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1B40F0030(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void _s15TextRecognition13CRLoadCounterV6record4load5owneryypXp_10Foundation4UUIDVSgtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_getMetatypeMetadata();
  v3 = sub_1B429FBE8();
  v5 = v4;
  if (qword_1ED95F4A0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1ED95F4A8);
  sub_1B412D7D8(a2, v3, v5, &qword_1ED95F4B0);
  os_unfair_lock_unlock(&dword_1ED95F4A8);
  if (qword_1ED95F4B8 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1ED95F4C0);
  sub_1B412D7D8(a2, v3, v5, &qword_1ED95F4C8);

  os_unfair_lock_unlock(&dword_1ED95F4C0);
}

unint64_t sub_1B41304B0()
{
  result = qword_1EB8852F8;
  if (!qword_1EB8852F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB884870, &qword_1B42AC0A0);
    sub_1B4130670(&unk_1EB884860, MEMORY[0x1E69695B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8852F8);
  }

  return result;
}

void sub_1B4130550(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  v3 = sub_1B429FBE8();
  v5 = v4;
  if (qword_1ED95F4A0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1ED95F4A8);
  sub_1B412DBFC(a2, v3, v5);

  os_unfair_lock_unlock(&dword_1ED95F4A8);
}

unint64_t type metadata accessor for CRLoadCounterFacade()
{
  result = qword_1EB895AD8[0];
  if (!qword_1EB895AD8[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EB895AD8);
  }

  return result;
}

uint64_t sub_1B4130670(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B429F6D8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B41306B4()
{
  result = qword_1ED95E050;
  if (!qword_1ED95E050)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED95E050);
  }

  return result;
}

uint64_t sub_1B4130700(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1B42A0518();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = sub_1B4130BB4(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1B8C72CD0](0, a1);
    result = sub_1B42A0218();
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(a1 + 32);
  result = sub_1B42A0218();
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1B41308CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    sub_1B42A0488();
    v4 = a1 + 40;
    do
    {
      sub_1B42A0208();
      sub_1B42A0458();
      sub_1B42A0498();
      sub_1B42A04A8();
      sub_1B42A0468();
      v4 += 16;
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

void __swiftcall CRNormalizedPolyline.transformed(_:)(CRNormalizedPolyline *__return_ptr retstr, CGAffineTransform *a2)
{
  v3 = v2;
  a = a2->a;
  b = a2->b;
  c = a2->c;
  d = a2->d;
  tx = a2->tx;
  ty = a2->ty;
  v10 = [v2 pointValues];
  sub_1B41306B4();
  v11 = sub_1B429FDF8();

  v12 = sub_1B4130700(v11);

  v13 = *(v12 + 16);
  if (v13)
  {
    *&v29.a = MEMORY[0x1E69E7CC0];
    sub_1B4130BB4(0, v13, 0);
    v14 = v29.a;
    v15 = v12 + 40;
    do
    {
      v31 = *(v15 - 8);
      v30.a = a;
      v30.b = b;
      v30.c = c;
      v30.d = d;
      v30.tx = tx;
      v30.ty = ty;
      v18 = CGPointApplyAffineTransform(v31, &v30);
      y = v18.y;
      x = v18.x;
      v29.a = v14;
      v20 = *(*&v14 + 16);
      v19 = *(*&v14 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1B4130BB4((v19 > 1), v20 + 1, 1);
        y = v18.y;
        x = v18.x;
        v14 = v29.a;
      }

      *(*&v14 + 16) = v20 + 1;
      v21 = *&v14 + 16 * v20;
      *(v21 + 32) = x;
      *(v21 + 40) = y;
      v15 += 16;
      --v13;
    }

    while (v13);
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  [v3 normalizationSize];
  v23 = v22;
  v25 = v24;
  v30.a = a;
  v30.b = b;
  v30.c = c;
  v30.d = d;
  v30.tx = tx;
  v30.ty = ty;
  CGAffineTransformInvert(&v29, &v30);
  v30 = v29;
  v32.width = v23;
  v32.height = v25;
  v26 = CGSizeApplyAffineTransform(v32, &v30);
  sub_1B41308CC(*&v14);

  v27 = objc_allocWithZone(CRNormalizedPolyline);
  v28 = sub_1B429FDE8();

  [v27 initWithNormalizedPointValues:v28 size:{v26.width, v26.height}];
}

char *sub_1B4130BB4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4130BD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4130BD4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB885320, &qword_1B42ADAA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void sub_1B4130CD8()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1B429FB88();
  v3 = sub_1B429FB88();
  v4 = [v1 pathForResource:v2 ofType:v3];

  if (v4)
  {
    sub_1B429FB98();

    sub_1B429F5D8();
  }

  else
  {
    __break(1u);
  }
}

id CRTextOrientationModelV1.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CRTextOrientationModelV1.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CRTextOrientationModelV1();
  return objc_msgSendSuper2(&v3, sel_init);
}

id CRTextOrientationModelV1.__allocating_init(configuration:owner:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B429F6D8();
  v7 = *(v6 - 8);
  v8 = 0;
  if ((*(v7 + 48))(a2, 1, v6) != 1)
  {
    v8 = sub_1B429F6A8();
    (*(v7 + 8))(a2, v6);
  }

  v13[0] = 0;
  v9 = [objc_allocWithZone(v3) initWithConfiguration:a1 owner:v8 error:v13];

  if (v9)
  {
    v10 = v13[0];
  }

  else
  {
    v11 = v13[0];
    sub_1B429F598();

    swift_willThrow();
  }

  return v9;
}

id CRTextOrientationModelV1.init(configuration:owner:)(void *a1, uint64_t a2)
{
  v3 = sub_1B4131468(a1, a2);

  return v3;
}

id CRTextOrientationModelV1.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRTextOrientationModelV1();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B4131468(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870, &qword_1B42AC0A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  sub_1B40DDA80(a2, &v17 - v7);
  v9 = sub_1B429F6D8();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v11 = sub_1B429F6A8();
    (*(v10 + 8))(v8, v9);
  }

  v18[0] = 0;
  v12 = type metadata accessor for CRTextOrientationModelV1();
  v17.receiver = v3;
  v17.super_class = v12;
  v13 = objc_msgSendSuper2(&v17, sel_initWithConfiguration_owner_error_, a1, v11, v18);

  if (v13)
  {
    v14 = v18[0];
  }

  else
  {
    v15 = v18[0];
    sub_1B429F598();

    swift_willThrow();
  }

  sub_1B40EF494(a2);
  return v13;
}

void sub_1B4131628()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1B429FB88();
  v3 = sub_1B429FB88();
  v4 = [v1 pathForResource:v2 ofType:v3];

  if (v4)
  {
    sub_1B429FB98();

    sub_1B429F5D8();
  }

  else
  {
    __break(1u);
  }
}

id CRTextRecognizerModelArabicV3.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CRTextRecognizerModelArabicV3.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRTextRecognizerModelArabicV3();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CRTextRecognizerModelArabicV3.__allocating_init(configuration:owner:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B429F6D8();
  v7 = *(v6 - 8);
  v8 = 0;
  if ((*(v7 + 48))(a2, 1, v6) != 1)
  {
    v8 = sub_1B429F6A8();
    (*(v7 + 8))(a2, v6);
  }

  v13[0] = 0;
  v9 = [objc_allocWithZone(v3) initWithConfiguration:a1 owner:v8 error:v13];

  if (v9)
  {
    v10 = v13[0];
  }

  else
  {
    v11 = v13[0];
    sub_1B429F598();

    swift_willThrow();
  }

  return v9;
}

id CRTextRecognizerModelArabicV3.init(configuration:owner:)(void *a1, uint64_t a2)
{
  v3 = sub_1B4131D08(a1, a2);

  return v3;
}

id CRTextRecognizerModelArabicV3.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRTextRecognizerModelArabicV3();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B4131D08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870, &qword_1B42AC0A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  sub_1B40DDA80(a2, &v17 - v7);
  v9 = sub_1B429F6D8();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v11 = sub_1B429F6A8();
    (*(v10 + 8))(v8, v9);
  }

  v18[0] = 0;
  v12 = type metadata accessor for CRTextRecognizerModelArabicV3();
  v17.receiver = v3;
  v17.super_class = v12;
  v13 = objc_msgSendSuper2(&v17, sel_initWithConfiguration_owner_error_, a1, v11, v18);

  if (v13)
  {
    v14 = v18[0];
  }

  else
  {
    v15 = v18[0];
    sub_1B429F598();

    swift_willThrow();
  }

  sub_1B40EF494(a2);
  return v13;
}

void sub_1B4131EC8()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1B429FB88();
  v3 = sub_1B429FB88();
  v4 = [v1 pathForResource:v2 ofType:v3];

  if (v4)
  {
    sub_1B429FB98();

    sub_1B429F5D8();
  }

  else
  {
    __break(1u);
  }
}

id CRTextRecognizerModelChineseV3.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CRTextRecognizerModelChineseV3.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRTextRecognizerModelChineseV3();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CRTextRecognizerModelChineseV3.__allocating_init(configuration:owner:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B429F6D8();
  v7 = *(v6 - 8);
  v8 = 0;
  if ((*(v7 + 48))(a2, 1, v6) != 1)
  {
    v8 = sub_1B429F6A8();
    (*(v7 + 8))(a2, v6);
  }

  v13[0] = 0;
  v9 = [objc_allocWithZone(v3) initWithConfiguration:a1 owner:v8 error:v13];

  if (v9)
  {
    v10 = v13[0];
  }

  else
  {
    v11 = v13[0];
    sub_1B429F598();

    swift_willThrow();
  }

  return v9;
}

id CRTextRecognizerModelChineseV3.init(configuration:owner:)(void *a1, uint64_t a2)
{
  v3 = sub_1B413255C(a1, a2);

  return v3;
}

id CRTextRecognizerModelChineseV3.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRTextRecognizerModelChineseV3();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B413255C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870, &qword_1B42AC0A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  sub_1B40DDA80(a2, &v17 - v7);
  v9 = sub_1B429F6D8();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v11 = sub_1B429F6A8();
    (*(v10 + 8))(v8, v9);
  }

  v18[0] = 0;
  v12 = type metadata accessor for CRTextRecognizerModelChineseV3();
  v17.receiver = v3;
  v17.super_class = v12;
  v13 = objc_msgSendSuper2(&v17, sel_initWithConfiguration_owner_error_, a1, v11, v18);

  if (v13)
  {
    v14 = v18[0];
  }

  else
  {
    v15 = v18[0];
    sub_1B429F598();

    swift_willThrow();
  }

  sub_1B40EF494(a2);
  return v13;
}

void sub_1B413271C()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1B429FB88();
  v3 = sub_1B429FB88();
  v4 = [v1 pathForResource:v2 ofType:v3];

  if (v4)
  {
    sub_1B429FB98();

    sub_1B429F5D8();
  }

  else
  {
    __break(1u);
  }
}

id CRTextRecognizerModelJapaneseV3.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CRTextRecognizerModelJapaneseV3.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRTextRecognizerModelJapaneseV3();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CRTextRecognizerModelJapaneseV3.__allocating_init(configuration:owner:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B429F6D8();
  v7 = *(v6 - 8);
  v8 = 0;
  if ((*(v7 + 48))(a2, 1, v6) != 1)
  {
    v8 = sub_1B429F6A8();
    (*(v7 + 8))(a2, v6);
  }

  v13[0] = 0;
  v9 = [objc_allocWithZone(v3) initWithConfiguration:a1 owner:v8 error:v13];

  if (v9)
  {
    v10 = v13[0];
  }

  else
  {
    v11 = v13[0];
    sub_1B429F598();

    swift_willThrow();
  }

  return v9;
}

id CRTextRecognizerModelJapaneseV3.init(configuration:owner:)(void *a1, uint64_t a2)
{
  v3 = sub_1B4132DFC(a1, a2);

  return v3;
}

id CRTextRecognizerModelJapaneseV3.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRTextRecognizerModelJapaneseV3();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B4132DFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870, &qword_1B42AC0A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  sub_1B40DDA80(a2, &v17 - v7);
  v9 = sub_1B429F6D8();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v11 = sub_1B429F6A8();
    (*(v10 + 8))(v8, v9);
  }

  v18[0] = 0;
  v12 = type metadata accessor for CRTextRecognizerModelJapaneseV3();
  v17.receiver = v3;
  v17.super_class = v12;
  v13 = objc_msgSendSuper2(&v17, sel_initWithConfiguration_owner_error_, a1, v11, v18);

  if (v13)
  {
    v14 = v18[0];
  }

  else
  {
    v15 = v18[0];
    sub_1B429F598();

    swift_willThrow();
  }

  sub_1B40EF494(a2);
  return v13;
}

void sub_1B4132FBC()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1B429FB88();
  v3 = sub_1B429FB88();
  v4 = [v1 pathForResource:v2 ofType:v3];

  if (v4)
  {
    sub_1B429FB98();

    sub_1B429F5D8();
  }

  else
  {
    __break(1u);
  }
}

id CRTextRecognizerModelKoreanV3.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CRTextRecognizerModelKoreanV3.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRTextRecognizerModelKoreanV3();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CRTextRecognizerModelKoreanV3.__allocating_init(configuration:owner:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B429F6D8();
  v7 = *(v6 - 8);
  v8 = 0;
  if ((*(v7 + 48))(a2, 1, v6) != 1)
  {
    v8 = sub_1B429F6A8();
    (*(v7 + 8))(a2, v6);
  }

  v13[0] = 0;
  v9 = [objc_allocWithZone(v3) initWithConfiguration:a1 owner:v8 error:v13];

  if (v9)
  {
    v10 = v13[0];
  }

  else
  {
    v11 = v13[0];
    sub_1B429F598();

    swift_willThrow();
  }

  return v9;
}

id CRTextRecognizerModelKoreanV3.init(configuration:owner:)(void *a1, uint64_t a2)
{
  v3 = sub_1B41336D8(a1, a2);

  return v3;
}

id CRTextRecognizerModelKoreanV3.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRTextRecognizerModelKoreanV3();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B41336D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870, &qword_1B42AC0A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  sub_1B40DDA80(a2, &v17 - v7);
  v9 = sub_1B429F6D8();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v11 = sub_1B429F6A8();
    (*(v10 + 8))(v8, v9);
  }

  v18[0] = 0;
  v12 = type metadata accessor for CRTextRecognizerModelKoreanV3();
  v17.receiver = v3;
  v17.super_class = v12;
  v13 = objc_msgSendSuper2(&v17, sel_initWithConfiguration_owner_error_, a1, v11, v18);

  if (v13)
  {
    v14 = v18[0];
  }

  else
  {
    v15 = v18[0];
    sub_1B429F598();

    swift_willThrow();
  }

  sub_1B40EF494(a2);
  return v13;
}

void sub_1B4133898()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1B429FB88();
  v3 = sub_1B429FB88();
  v4 = [v1 pathForResource:v2 ofType:v3];

  if (v4)
  {
    sub_1B429FB98();

    sub_1B429F5D8();
  }

  else
  {
    __break(1u);
  }
}

id CRTextRecognizerModelLatinCyrillicV3.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CRTextRecognizerModelLatinCyrillicV3.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRTextRecognizerModelLatinCyrillicV3();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CRTextRecognizerModelLatinCyrillicV3.__allocating_init(configuration:owner:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B429F6D8();
  v7 = *(v6 - 8);
  v8 = 0;
  if ((*(v7 + 48))(a2, 1, v6) != 1)
  {
    v8 = sub_1B429F6A8();
    (*(v7 + 8))(a2, v6);
  }

  v13[0] = 0;
  v9 = [objc_allocWithZone(v3) initWithConfiguration:a1 owner:v8 error:v13];

  if (v9)
  {
    v10 = v13[0];
  }

  else
  {
    v11 = v13[0];
    sub_1B429F598();

    swift_willThrow();
  }

  return v9;
}

id CRTextRecognizerModelLatinCyrillicV3.init(configuration:owner:)(void *a1, uint64_t a2)
{
  v3 = sub_1B4133F68(a1, a2);

  return v3;
}

id CRTextRecognizerModelLatinCyrillicV3.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRTextRecognizerModelLatinCyrillicV3();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B4133F68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870, &qword_1B42AC0A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  sub_1B40DDA80(a2, &v17 - v7);
  v9 = sub_1B429F6D8();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v11 = sub_1B429F6A8();
    (*(v10 + 8))(v8, v9);
  }

  v18[0] = 0;
  v12 = type metadata accessor for CRTextRecognizerModelLatinCyrillicV3();
  v17.receiver = v3;
  v17.super_class = v12;
  v13 = objc_msgSendSuper2(&v17, sel_initWithConfiguration_owner_error_, a1, v11, v18);

  if (v13)
  {
    v14 = v18[0];
  }

  else
  {
    v15 = v18[0];
    sub_1B429F598();

    swift_willThrow();
  }

  sub_1B40EF494(a2);
  return v13;
}

void sub_1B4134128()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1B429FB88();
  v3 = sub_1B429FB88();
  v4 = [v1 pathForResource:v2 ofType:v3];

  if (v4)
  {
    sub_1B429FB98();

    sub_1B429F5D8();
  }

  else
  {
    __break(1u);
  }
}

id CRTextRecognizerModelThaiV3.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CRTextRecognizerModelThaiV3.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRTextRecognizerModelThaiV3();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CRTextRecognizerModelThaiV3.__allocating_init(configuration:owner:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B429F6D8();
  v7 = *(v6 - 8);
  v8 = 0;
  if ((*(v7 + 48))(a2, 1, v6) != 1)
  {
    v8 = sub_1B429F6A8();
    (*(v7 + 8))(a2, v6);
  }

  v13[0] = 0;
  v9 = [objc_allocWithZone(v3) initWithConfiguration:a1 owner:v8 error:v13];

  if (v9)
  {
    v10 = v13[0];
  }

  else
  {
    v11 = v13[0];
    sub_1B429F598();

    swift_willThrow();
  }

  return v9;
}

id CRTextRecognizerModelThaiV3.init(configuration:owner:)(void *a1, uint64_t a2)
{
  v3 = sub_1B4134844(a1, a2);

  return v3;
}

id CRTextRecognizerModelThaiV3.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRTextRecognizerModelThaiV3();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B4134844(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870, &qword_1B42AC0A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  sub_1B40DDA80(a2, &v17 - v7);
  v9 = sub_1B429F6D8();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v11 = sub_1B429F6A8();
    (*(v10 + 8))(v8, v9);
  }

  v18[0] = 0;
  v12 = type metadata accessor for CRTextRecognizerModelThaiV3();
  v17.receiver = v3;
  v17.super_class = v12;
  v13 = objc_msgSendSuper2(&v17, sel_initWithConfiguration_owner_error_, a1, v11, v18);

  if (v13)
  {
    v14 = v18[0];
  }

  else
  {
    v15 = v18[0];
    sub_1B429F598();

    swift_willThrow();
  }

  sub_1B40EF494(a2);
  return v13;
}

id CREngineFast.confidenceThresholdProvider.getter()
{
  result = *(v0 + 16);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

uint64_t CREngineFast.__allocating_init(configuration:owner:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  CREngineFast.init(configuration:owner:)(a1, a2, v5);
  return v4;
}

uint64_t CREngineFast.init(configuration:owner:)(void *a1, uint64_t a2, __n128 a3)
{
  v60 = a2;
  v59 = sub_1B429F9B8();
  v5 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v54 - v9;
  v11 = sub_1B429F9E8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 16) = 0;
  v61 = v3;
  *(v3 + 72) = 0;
  v15 = sub_1B410F8A0();
  (*(v12 + 16))(v14, v15, v11);
  v16 = sub_1B410F91C();
  v17 = *v16;
  v58 = *(v16 + 16);
  sub_1B429F9A8();
  v18 = sub_1B429F9C8();
  v57 = sub_1B42A01C8();
  result = sub_1B42A0278();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v54 = v14;
  v55 = v7;
  v56 = a1;
  if (v58)
  {
    if (!(v17 >> 32))
    {
      if ((v17 & 0xFFFFF800) == 0xD800)
      {
LABEL_22:
        __break(1u);
        return result;
      }

      if (v17 >> 16 <= 0x10)
      {
        v20 = v18;
        v17 = &v65;
        goto LABEL_9;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v17)
  {
    __break(1u);
    goto LABEL_20;
  }

  v20 = v18;
LABEL_9:
  v21 = swift_slowAlloc();
  *v21 = 0;
  v22 = sub_1B429F998();
  _os_signpost_emit_with_name_impl(&dword_1B40D2000, v20, v57, v22, v17, "", v21, 2u);
  MEMORY[0x1B8C74FA0](v21, -1, -1);
  v7 = v55;
  a1 = v56;
  v18 = v20;
  v14 = v54;
LABEL_10:

  v23 = v59;
  (*(v5 + 16))(v7, v10, v59);
  sub_1B429FA28();
  swift_allocObject();
  v24 = sub_1B429FA18();
  (*(v5 + 8))(v10, v23);
  (*(v12 + 8))(v14, v11);
  v25 = v61;
  sub_1B40E33EC(a1, v61 + 32);
  *(v25 + 80) = 0;
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v26);
  if ((*(v27 + 312))(v26, v27))
  {
    v28 = objc_opt_self();
    v29 = a1[3];
    v30 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, v29);
    (*(v30 + 560))(v29, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990, &qword_1B42ACB60);
    v31 = sub_1B429FAE8();

    v32 = [v28 languageSetFromOptionsDictionary_];

    v33 = [v32 firstObject];
    if (v33)
    {
      sub_1B42A0348();
      swift_unknownObjectRelease();
    }

    else
    {
      v62 = 0u;
      v63 = 0u;
    }

    v64[0] = v62;
    v64[1] = v63;
    if (*(&v63 + 1))
    {
      if (swift_dynamicCast())
      {
        v34 = a1[3];
        v35 = a1[4];
        __swift_project_boxed_opaque_existential_0(a1, v34);
        v59 = (*(v35 + 24))(v34, v35);
        v36 = a1;
        v37 = a1[3];
        v38 = a1[4];
        __swift_project_boxed_opaque_existential_0(v36, v37);
        (*(v38 + 432))(v37, v38);
        v39 = v36[3];
        v40 = v36[4];
        __swift_project_boxed_opaque_existential_0(v36, v39);
        v41 = (*(v40 + 560))(v39, v40);
        sub_1B40EFB78(v41);

        v42 = objc_allocWithZone(CRLanguageCorrectionFacade);
        v43 = sub_1B429FB88();

        v44 = sub_1B429FDE8();

        v25 = v61;
        v45 = sub_1B429FAE8();
        a1 = v36;

        v46 = [v42 initWithRevision:v59 localeCode:v43 customWords:v44 numberResultsNeeded:12 options:v45];

        v47 = *(v25 + 72);
        *(v25 + 72) = v46;
      }
    }

    else
    {
      sub_1B40E26E8(v64, &unk_1EB885330, &qword_1B42ADA10);
    }
  }

  v48 = objc_allocWithZone(CRPerformanceStatistics);
  v49 = sub_1B429FB88();
  v50 = [v48 initWithName:v49 measureRecentPeak:0];

  *(v25 + 24) = v50;
  type metadata accessor for CRConfidenceThresholdProviderFacade();
  v51 = swift_allocObject();
  swift_weakInit();
  v52 = sub_1B40ED1D8(sub_1B4135CE0, v51);
  v53 = *(v25 + 16);
  *(v25 + 16) = v52;

  sub_1B4135158(v24);

  sub_1B40E26E8(v60, &unk_1EB884870, &qword_1B42AC0A0);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v25;
}

uint64_t sub_1B4135158(uint64_t a1)
{
  v1 = sub_1B429F9F8();
  v25 = *(v1 - 8);
  v26 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v27 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B429F9B8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B429F9E8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B410F8A0();
  (*(v8 + 16))(v10, v11, v7);
  v12 = sub_1B410F91C();
  v28 = *v12;
  v13 = *(v12 + 16);
  v14 = sub_1B429F9C8();
  sub_1B429FA08();
  v24 = sub_1B42A01B8();
  result = sub_1B42A0278();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v10, v7);
  }

  v23 = v4;
  if ((v13 & 1) == 0)
  {
    if (v28)
    {
      v16 = v27;
LABEL_9:

      sub_1B429FA38();

      v18 = v25;
      v17 = v26;
      if ((*(v25 + 88))(v16, v26) == *MEMORY[0x1E69E93E8])
      {
        v19 = "[Error] Interval already ended";
      }

      else
      {
        (*(v18 + 8))(v16, v17);
        v19 = "";
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = sub_1B429F998();
      _os_signpost_emit_with_name_impl(&dword_1B40D2000, v14, v24, v21, v28, v19, v20, 2u);
      MEMORY[0x1B8C74FA0](v20, -1, -1);
      v4 = v23;
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v28 >> 32)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v28 & 0xFFFFF800) != 0xD800)
  {
    v16 = v27;
    if (v28 >> 16 <= 0x10)
    {
      v28 = &v29;
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t CREngineFast.resultDocument(for:roi:configuration:trackingSession:progressHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1B40DD740;

  return sub_1B4135D8C(a1, a2, a3, a5, a6);
}

void sub_1B41355A8(uint64_t a1, void *a2, double a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v4(a3);
}

void CREngineFast.smallestImageSizeForText(withRelativeHeight:originalImageSize:)(double a1, double a2, double a3)
{
  if (a2 <= 0.0 || a3 <= 0.0)
  {
    __break(1u);
  }
}

uint64_t CREngineFast.computeDevice()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C80, &qword_1B42ACAE0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = v0[7];
  v5 = v0[8];
  __swift_project_boxed_opaque_existential_0(v0 + 4, v4);
  (*(v5 + 96))(v4, v5);
  v6 = sub_1B429FA88();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v3, 1, v6) == 1)
  {
    sub_1B40E26E8(v3, &unk_1EB884C80, &qword_1B42ACAE0);
    return 0;
  }

  else
  {
    v9 = sub_1B40EFE04();
    (*(v7 + 8))(v3, v6);
    return v9;
  }
}

uint64_t static CREngineFast.supportedComputeDevices(revision:)()
{
  v0 = objc_opt_self();
  v1 = [v0 allComputeDevices];
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853A0, &qword_1B42ACB00);
    sub_1B429FDF8();
    v1 = sub_1B429FDE8();
  }

  v2 = [v0 computeDevices:v1 ofTypes:1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853A0, &qword_1B42ACB00);
  v3 = sub_1B429FDF8();

  return v3;
}

uint64_t CREngineFast.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return v0;
}

uint64_t CREngineFast.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1B4135928(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  CREngineFast.init(configuration:owner:)(a1, a2, v5);
  return v4;
}

uint64_t sub_1B4135980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1B40E28F0;

  return sub_1B4135D8C(a1, a2, a3, a5, a6);
}

void sub_1B4135A5C(double a1, double a2, double a3)
{
  if (a2 <= 0.0 || a3 <= 0.0)
  {
    __break(1u);
  }
}

uint64_t sub_1B4135A7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C80, &qword_1B42ACAE0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = v0[7];
  v5 = v0[8];
  __swift_project_boxed_opaque_existential_0(v0 + 4, v4);
  (*(v5 + 96))(v4, v5);
  v6 = sub_1B429FA88();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v3, 1, v6) == 1)
  {
    sub_1B40E26E8(v3, &unk_1EB884C80, &qword_1B42ACAE0);
    return 0;
  }

  else
  {
    v9 = sub_1B40EFE04();
    (*(v7 + 8))(v3, v6);
    return v9;
  }
}

uint64_t sub_1B4135BE0()
{
  v0 = objc_opt_self();
  v1 = [v0 allComputeDevices];
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853A0, &qword_1B42ACB00);
    sub_1B429FDF8();
    v1 = sub_1B429FDE8();
  }

  v2 = [v0 computeDevices:v1 ofTypes:1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853A0, &qword_1B42ACB00);
  v3 = sub_1B429FDF8();

  return v3;
}

id sub_1B4135CE0()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v0 = objc_allocWithZone(CRConfidenceThresholds);
    LODWORD(v1) = 0.25;
    LODWORD(v2) = 1.0;
    v3 = [v0 initWithMediumThreshold:v1 highThreshold:v2];

    return v3;
  }

  else
  {
    v5 = [objc_opt_self() defaultConfidenceThresholds];

    return v5;
  }
}

uint64_t sub_1B4135D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[13] = a5;
  v6[14] = v5;
  v6[11] = a3;
  v6[12] = a4;
  v6[10] = a1;
  v6[15] = *v5;

  return MEMORY[0x1EEE6DFA0](sub_1B4135E4C, 0, 0);
}

void sub_1B4135E4C()
{
  v155 = v0;
  v2 = v0;
  v154[3] = *MEMORY[0x1E69E9840];
  v3 = *(v0 + 112);
  if (*(v3 + 80))
  {
    sub_1B429FEC8();
    sub_1B4105D4C();
    swift_allocError();
    sub_1B429FAD8();
    swift_willThrow();
    goto LABEL_18;
  }

  v4 = v0 + 72;
  v5 = *(v0 + 120);
  *(v2 + 72) = 0;
  *v149 = *(v2 + 80);
  v152 = *(v2 + 96);
  v6 = sub_1B410F97C();
  v7 = *v6;
  v8 = *(v6 + 16);
  v9 = swift_task_alloc();
  *(v9 + 16) = v4;
  *(v9 + 24) = *v149;
  *(v9 + 40) = v152;
  *(v9 + 56) = v5;
  sub_1B40FFA20(v7, v8, sub_1B413753C, v9, MEMORY[0x1E69E7CA8]);
  v10 = 0;
  v153 = v3;
  v11 = *(v2 + 88);

  inst_meths = v11->inst_meths;
  class_meths = v11->class_meths;
  __swift_project_boxed_opaque_existential_0(v11, inst_meths);
  if ((class_meths[51])(inst_meths, class_meths) <= 0.0)
  {
    v151 = 0;
  }

  else
  {
    v14 = *v4;
    if (!*v4)
    {
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
      goto LABEL_167;
    }

    v15 = [*v4 detectorResults];
    if (v15 && (v16 = v15, v17 = [v15 textFeatures], v16, v17))
    {
      sub_1B40E27B4(0, &qword_1ED95E6D8, off_1E7BC10E8);
      *v150 = *(v2 + 80);
      v18 = sub_1B429FDF8();

      v3 = swift_task_alloc();
      *(v3 + 16) = *v150;
      v19 = sub_1B40F06F0(sub_1B4137668, v3, v18);
      v10 = 0;

      v151 = 0;
    }

    else
    {
      v151 = 0;
      v19 = 0;
    }

    v20 = [v14 detectorResults];
    if (v20)
    {
      v21 = v20;
      if (v19)
      {
        sub_1B40E27B4(0, &qword_1ED95E6D8, off_1E7BC10E8);
        v22 = sub_1B429FDE8();
      }

      else
      {
        v22 = 0;
      }

      [v21 setTextFeatures_];
    }

    else
    {
    }
  }

  if (*(v153 + 80))
  {
    sub_1B429FEC8();
    sub_1B4105D4C();
    swift_allocError();
    sub_1B429FAD8();
    swift_willThrow();

    goto LABEL_18;
  }

  v24 = v11->inst_meths;
  v25 = v11->class_meths;
  __swift_project_boxed_opaque_existential_0(*(v2 + 88), v24);
  v26 = (v25[24])(v24, v25);
  v27 = 0x1E7BC4000;
  if (v26)
  {
    if (*v4)
    {
      v28 = *v4;
      v29 = [v28 detectorResults];
      if (v29)
      {
        v30 = v29;
        v31 = [v29 textFeatures];

        if (v31)
        {
          sub_1B40E27B4(0, &qword_1ED95E6D8, off_1E7BC10E8);
          v32 = sub_1B429FDF8();

          goto LABEL_26;
        }
      }

      goto LABEL_40;
    }

    goto LABEL_166;
  }

  aBlock = (v2 + 16);
  v34 = *(*(v2 + 112) + 72);
  if (v34)
  {
    v36 = v11->inst_meths;
    v35 = v11->class_meths;
    __swift_project_boxed_opaque_existential_0(*(v2 + 88), v36);
    v37 = v35[69];
    v38 = v34;
    v37(v154, v36, v35);
    v39 = LOBYTE(v154[0]);

    v40 = *(v2 + 72);
    if (v39 != 1)
    {
      if (v40)
      {
        v95 = v40;
        v96 = [(__objc2_prot *)v95 detectorResults];
        v151 = v38;
        if (v96 && (v97 = v96, v98 = [v96 textFeatures], v97, v98))
        {
          v99 = v95;
          sub_1B40E27B4(0, &qword_1ED95E6D8, off_1E7BC10E8);
          sub_1B429FDF8();
        }

        else
        {
          v99 = v95;
        }

        v109 = *(v2 + 96);
        sub_1B40E27B4(0, &qword_1ED95E6D8, off_1E7BC10E8);
        v110 = sub_1B429FDE8();

        if (v109)
        {
          v111 = *(v2 + 96);
          v112 = *(v2 + 104);
          v1 = swift_allocObject();
          v1[2] = v111;
          v1[3] = v112;
          v113 = swift_allocObject();
          v4 = sub_1B4137600;
          *(v113 + 16) = sub_1B4137600;
          *(v113 + 24) = v1;
          *(v2 + 48) = sub_1B4137628;
          *(v2 + 56) = v113;
          *(v2 + 16) = MEMORY[0x1E69E9820];
          *(v2 + 24) = 1107296256;
          *(v2 + 32) = sub_1B41355A8;
          *(v2 + 40) = &block_descriptor_4;
          v114 = _Block_copy(aBlock);
        }

        else
        {
          v114 = 0;
          v4 = 0;
          v1 = 0;
        }

        v28 = v99;
        v121 = [v151 applyLanguageCorrectionToResults:v110 image:*(v2 + 80) latticeResults:0 progressHandler:v114];
        _Block_release(v114);

        v32 = sub_1B429FDF8();
        v3 = 0;
        v33 = 0;
        v27 = 0x1E7BC4000;
        goto LABEL_121;
      }

      goto LABEL_169;
    }

    if (v40)
    {
      v41 = v40;
      v42 = [(__objc2_prot *)v41 detectorResults];
      if (v42 && (v43 = v42, v44 = [v42 textFeatures], v43, v44))
      {
        v45 = v41;
        sub_1B40E27B4(0, &qword_1ED95E6D8, off_1E7BC10E8);
        sub_1B429FDF8();
      }

      else
      {
        v45 = v41;
      }

      v100 = *(v2 + 96);
      sub_1B40E27B4(0, &qword_1ED95E6D8, off_1E7BC10E8);
      v101 = sub_1B429FDE8();

      if (v100)
      {
        v102 = *(v2 + 96);
        v103 = *(v2 + 104);
        v104 = swift_allocObject();
        *(v104 + 16) = v102;
        *(v104 + 24) = v103;
        v105 = swift_allocObject();
        v146 = sub_1B4137780;
        *(v105 + 16) = sub_1B4137780;
        *(v105 + 24) = v104;
        v106 = v104;
        *(v2 + 48) = sub_1B413777C;
        *(v2 + 56) = v105;
        v107 = (v2 + 16);
        *(v2 + 16) = MEMORY[0x1E69E9820];
        *(v2 + 24) = 1107296256;
        *(v2 + 32) = sub_1B41355A8;
        *(v2 + 40) = &block_descriptor_25;
        v108 = _Block_copy(aBlock);
      }

      else
      {
        v108 = 0;
        v146 = 0;
        v106 = 0;
        v107 = (v2 + 16);
      }

      v115 = *(v2 + 80);
      *(v2 + 16) = 0;
      v116 = [v38 applyLanguageCorrectionToResults:v101 image:v115 latticeResults:v107 progressHandler:v108];
      _Block_release(v108);

      v117 = *(v2 + 16);
      v32 = sub_1B429FDF8();
      v118 = v117;

      v28 = v45;
      v119 = [(__objc2_prot *)v45 recognizerResults];
      if (v119)
      {
        v120 = v119;
        [v119 setLatticeResults_];
      }

      else
      {
      }

      v4 = 0;
      v1 = 0;
      v27 = &_OBJC_LABEL_PROTOCOL___CRFormPostProcessingStep;
      v33 = v106;
      v3 = v146;
      goto LABEL_121;
    }

LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
    return;
  }

  if (!*v4)
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  v28 = *v4;
  v46 = [v28 detectorResults];
  if (!v46)
  {
LABEL_40:
    v3 = 0;
    v33 = 0;
    v4 = 0;
    v1 = 0;
    v32 = 0;
    goto LABEL_121;
  }

  v47 = v46;
  v32 = [v46 textFeatures];

  if (!v32)
  {
    goto LABEL_26;
  }

  sub_1B40E27B4(0, &qword_1ED95E6D8, off_1E7BC10E8);
  v48 = sub_1B429FDF8();

  v154[0] = MEMORY[0x1E69E7CC0];
  if (v48 >> 62)
  {
    goto LABEL_163;
  }

  for (i = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B42A0518())
  {

    if (!i)
    {
      v32 = MEMORY[0x1E69E7CC0];
      goto LABEL_148;
    }

    v33 = 0;
    v139 = v48 & 0xFFFFFFFFFFFFFF8;
    v140 = v48 & 0xC000000000000001;
    v138 = v48 + 32;
    v137 = *(v2 + 112);
    v148 = v28;
    v135 = i;
    v136 = v48;
    do
    {
      if (v140)
      {
        v50 = MEMORY[0x1B8C72CD0](v33, v48);
      }

      else
      {
        if (v33 >= *(v139 + 16))
        {
          goto LABEL_155;
        }

        v50 = *(v138 + 8 * v33);
      }

      v27 = v50;
      if (__OFADD__(v33++, 1))
      {
        goto LABEL_154;
      }

      v52 = [v50 stringValue];
      v145 = v27;
      if (v52)
      {
        v53 = v52;
        v54 = sub_1B429FB98();
        v56 = v55;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853C0, &qword_1B42AD920);
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_1B42ACFB0;
        *(v57 + 32) = v54;
        *(v57 + 40) = v56;
        v27 = v145;
      }

      v58 = sub_1B429FDE8();

      [v27 setStringValueCandidates_];

      v59 = [v27 subFeatures];
      if (v59)
      {
        v60 = v59;
        v61 = sub_1B429FDF8();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853B8, &qword_1B42ADCB0);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_1B42ACFB0;
        *(v62 + 32) = v61;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853B0, &qword_1B42ADCA8);
      v63 = sub_1B429FDE8();

      [v27 setSubFeatureCandidates_];

      v64 = [v27 subFeatures];
      if (v64)
      {
        v65 = v64;
        v4 = sub_1B429FDF8();
      }

      else
      {
        v4 = MEMORY[0x1E69E7CC0];
      }

      if (v4 >> 62)
      {
        v48 = sub_1B42A0518();
        v142 = v33;
        if (!v48)
        {
          goto LABEL_74;
        }

LABEL_56:
        if (v48 < 1)
        {
          __break(1u);
          goto LABEL_162;
        }

        v28 = v2;
        v2 = 0;
        v33 = v4 & 0xC000000000000001;
        while (1)
        {
          if (v33)
          {
            v67 = MEMORY[0x1B8C72CD0](v2, v4);
          }

          else
          {
            v67 = *(v4 + 8 * v2 + 32);
          }

          v27 = v67;
          v1 = [v67 candidateProbs];
          v3 = sub_1B40E27B4(0, &qword_1ED95EE90, 0x1E696AD98);
          v68 = sub_1B429FDF8();

          if (v68 >> 62)
          {
            if (!sub_1B42A0518())
            {
LABEL_58:

              v66 = sub_1B42A0228();
              goto LABEL_59;
            }
          }

          else if (!*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_58;
          }

          if ((v68 & 0xC000000000000001) != 0)
          {
            v69 = MEMORY[0x1B8C72CD0](0, v68);
          }

          else
          {
            if (!*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_150:
              __break(1u);
              goto LABEL_151;
            }

            v69 = *(v68 + 32);
          }

          v66 = v69;

LABEL_59:
          ++v2;
          [v27 setConfidence_];

          if (v48 == v2)
          {
            goto LABEL_75;
          }
        }
      }

      v48 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v142 = v33;
      if (v48)
      {
        goto LABEL_56;
      }

LABEL_74:
      v28 = v2;
LABEL_75:

      v3 = v145;
      v70 = [v145 subFeatures];
      if (v70)
      {
        v71 = v70;
        v72 = sub_1B429FDF8();

        v2 = v28;
        if (v72 >> 62)
        {
          v73 = sub_1B42A0518();
          if (v73)
          {
LABEL_78:
            v27 = 0;
            v28 = (v72 & 0xC000000000000001);
            v33 = v72 & 0xFFFFFFFFFFFFFF8;
            v74 = 0.0;
            while (1)
            {
              if (v28)
              {
                v75 = MEMORY[0x1B8C72CD0](v27, v72);
              }

              else
              {
                if (v27 >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_152;
                }

                v75 = *(v72 + 8 * v27 + 32);
              }

              v3 = v75;
              v1 = (v27 + 1);
              if (__OFADD__(v27, 1))
              {
                break;
              }

              v4 = [v75 confidence];
              [v4 doubleValue];
              v77 = v76;

              v74 = v74 + v77;
              ++v27;
              if (v1 == v73)
              {
                goto LABEL_88;
              }
            }

LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
            goto LABEL_156;
          }
        }

        else
        {
          v73 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v73)
          {
            goto LABEL_78;
          }
        }

LABEL_88:

        v33 = v142;
        v3 = v145;
      }

      else
      {
        v2 = v28;
        v33 = v142;
      }

      v78 = [v3 subFeatures];
      v28 = v148;
      if (v78)
      {
        v79 = v78;
        v80 = sub_1B429FDF8();

        if (v80 >> 62)
        {
          sub_1B42A0518();
          v28 = v148;
        }
      }

      v81 = sub_1B42A0018();
      [v3 setConfidence_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884E90, &qword_1B42AC360);
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_1B42AC090;
      *(v82 + 32) = [v3 confidence];
      sub_1B40E27B4(0, &qword_1ED95EE90, 0x1E696AD98);
      v83 = sub_1B429FDE8();

      [v3 setCandidateProbs_];

      v84 = [v3 confidence];
      [v84 doubleValue];
      v86 = v85;

      inst_props = v137->inst_props;
      v88 = *&v137->cb;
      __swift_project_boxed_opaque_existential_0(&v137->class_meths, inst_props);
      v89 = (*(v88 + 560))(inst_props, v88);
      v90 = sub_1B429FB98();
      if (!*(v89 + 16))
      {

LABEL_99:

        v94 = 0.0;
        v27 = 0x1E7BC4000;
        if (v151)
        {
          goto LABEL_144;
        }

        goto LABEL_100;
      }

      v92 = sub_1B40F0030(v90, v91);
      v3 = v93;

      if ((v3 & 1) == 0)
      {
        goto LABEL_99;
      }

      sub_1B40E2888(*(v89 + 56) + 32 * v92, aBlock);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990, &qword_1B42ACB60);
      v27 = 0x1E7BC4000;
      if (swift_dynamicCast())
      {
        if (v151)
        {
          goto LABEL_144;
        }

        v94 = *(v2 + 64);
      }

      else
      {
        v94 = 0.0;
        if (v151)
        {
LABEL_144:

          return;
        }
      }

LABEL_100:
      if (v94 > v86)
      {
      }

      else
      {
        sub_1B42A0458();
        sub_1B42A0498();
        sub_1B42A04A8();
        sub_1B42A0468();
      }

      v48 = v136;
    }

    while (v33 != v135);
    v32 = v154[0];
LABEL_148:
    swift_bridgeObjectRelease_n();
LABEL_26:
    v3 = 0;
    v33 = 0;
    v4 = 0;
    v1 = 0;
LABEL_121:
    v148 = v28;
    v122 = [v28 *(v27 + 928)];
    if (v122)
    {
      v123 = v122;
      if (v32)
      {
        sub_1B40E27B4(0, &qword_1ED95E6D8, off_1E7BC10E8);
        v124 = sub_1B429FDE8();
      }

      else
      {
        v124 = 0;
      }

      [v123 setTextFeatures_];
    }

    v10 = MEMORY[0x1E69E7CC0];
    if (v32)
    {
      sub_1B40E27B4(0, &qword_1ED95E6D8, off_1E7BC10E8);
      v125 = sub_1B429FDE8();
      v27 = v32;
    }

    else
    {
      v125 = 0;
      v27 = MEMORY[0x1E69E7CC0];
    }

    [v28 setTextFeatures_];

    if (*(v153 + 80))
    {
      break;
    }

    if (!(v27 >> 62))
    {
      v48 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v48)
      {
        goto LABEL_157;
      }

      goto LABEL_133;
    }

LABEL_156:
    v48 = sub_1B42A0518();
    if (!v48)
    {
LABEL_157:

LABEL_158:
      v129 = *(v2 + 80);
      v130 = objc_opt_self();
      sub_1B40E27B4(0, &qword_1EB8853A8, off_1E7BC0F48);
      v131 = sub_1B429FDE8();
      [(__objc2_prot *)v129 size];
      v132 = [v130 documentWithLines:v131 title:0 confidence:2 imageSize:?];

      v133 = [v28 detectorResults];
      [v132 setDetectorResults_];

      sub_1B40D6000(v3, v33);
      sub_1B40D6000(v4, v1);
      v134 = *(v2 + 8);

      (v134)(v132);
      return;
    }

LABEL_133:
    v153 = v27;
    aBlock = v4;
    v143 = v1;
    v144 = v33;
    v147 = v3;
    v154[0] = v10;
    sub_1B42A0488();
    if ((v48 & 0x8000000000000000) == 0)
    {
      v27 = v2;
      v4 = *(v2 + 112);
      v10 = objc_opt_self();
      v2 = 0;
      v1 = (v153 & 0xC000000000000001);
      v151 = (v153 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        v28 = (v2 + 1);
        if (__OFADD__(v2, 1))
        {
          __break(1u);
          goto LABEL_150;
        }

        if (v1)
        {
          v126 = MEMORY[0x1B8C72CD0](v2, v153);
        }

        else
        {
          if (v2 >= *((v153 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_153;
          }

          v126 = *(v153 + 8 * v2 + 32);
        }

        v127 = v126;
        [*(v27 + 80) size];
        v128 = *(v4 + 16);
        if (!v128)
        {
          break;
        }

        v3 = [v10 lineWithTextFeature:v127 subfeatureType:32 imageSize:v128 confidenceThresholdProvider:0 injectSpaceCharacter:?];

        sub_1B42A0458();
        v33 = *(v154[0] + 16);
        sub_1B42A0498();
        sub_1B42A04A8();
        sub_1B42A0468();
        ++v2;
        if (v28 == v48)
        {

          v2 = v27;
          v3 = v147;
          v28 = v148;
          v1 = v143;
          v33 = v144;
          v4 = aBlock;
          goto LABEL_158;
        }
      }

      __break(1u);
      goto LABEL_165;
    }

LABEL_162:
    __break(1u);
LABEL_163:
    ;
  }

  sub_1B429FEC8();
  sub_1B4105D4C();
  swift_allocError();
  sub_1B429FAD8();
  swift_willThrow();

  sub_1B40D6000(v3, v33);
  sub_1B40D6000(v4, v1);
LABEL_18:
  v23 = *(v2 + 8);

  v23();
}

id sub_1B41373FC(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v1 = [objc_opt_self() supportedLanguagesForRevision:a1 error:v7];
  v2 = v7[0];
  if (v1)
  {
    v3 = v1;
    v4 = sub_1B429FDF8();
    v5 = v2;
  }

  else
  {
    v4 = v7[0];
    sub_1B429F598();

    swift_willThrow();
  }

  return v4;
}

void sub_1B413753C()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  sub_1B40D5FF0(v5, v6);
  v8 = sub_1B4137860();
  v9 = sub_1B4137868(v2, v4, 12, v8, sub_1B4137738, v7);

  if (!v1)
  {
    v10 = *v3;
    *v3 = v9;
  }
}

double block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

BOOL sub_1B4137668(id *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  [*a1 calculateTextBoxHeightForImageWidth:objc_msgSend(v3 imageHeight:{sel_width), objc_msgSend(v3, sel_height)}];
  v5 = v4 / [v3 height];
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v6);
  return (*(v7 + 408))(v6, v7) <= v5;
}

uint64_t sub_1B4137738(double a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2(a1 * 0.7);
  }

  return result;
}

BOOL CROrderedIndexSet.isEmpty.getter()
{
  v1 = [v0 indices];
  sub_1B4137814();
  v2 = sub_1B429FDF8();

  if (v2 >> 62)
  {
    v3 = sub_1B42A0518();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3 == 0;
}

unint64_t sub_1B4137814()
{
  result = qword_1ED95EE90;
  if (!qword_1ED95EE90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED95EE90);
  }

  return result;
}

uint64_t sub_1B4137868(void *a1, void *a2, uint64_t a3, unint64_t a4, void (*a5)(void, double), uint64_t a6)
{
  v218 = a6;
  v224 = a5;
  v225 = a3;
  v230[1] = *MEMORY[0x1E69E9840];
  v10 = sub_1B429F698();
  v220 = *(v10 - 8);
  v221 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v219 = &v196 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v223 = &v196 - v13;
  v14 = sub_1B429FA68();
  v227 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v196 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v196 - v18);
  v20 = a2[3];
  v21 = a2[4];
  v226 = a2;
  __swift_project_boxed_opaque_existential_0(a2, v20);
  v22 = (*(v21 + 192))(v20, v21);
  v23 = [objc_allocWithZone(MEMORY[0x1E699FD60]) initWithDimensions_];
  if (!v23)
  {
    sub_1B40DF594();
    swift_allocError();
    *v39 = 5;
    *(v39 + 4) = 1;
    swift_willThrow();
    return v16;
  }

  v24 = v23;
  v222 = v6;
  [v23 setReturnSubFeatures_];
  [v24 setMinimizeFalseDetections_];
  v25 = &selRef_bytesPerPixelForColorSpace_;
  v26 = [a1 height];
  v27 = [a1 width];
  if (v27 >= v26)
  {
    v29 = v26;
  }

  else
  {
    v29 = v27;
  }

  v30 = fmax(v29 * 0.005, 5.0);
  if (v30 == INFINITY)
  {
    __break(1u);
    goto LABEL_167;
  }

  if (v30 <= -2147483650.0)
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  if (v30 >= 2147483650.0)
  {
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  [v24 setMinimumCharacterHeight_];
  [v24 setDetectDiacritics_];
  [v24 setThresholdingAlgorithm_];
  if ((v22 & 1) == 0)
  {
    v31 = sub_1B41395F4(v226);
    sub_1B4122F3C(v31);

    v32 = sub_1B429FDE8();
    v25 = &selRef_bytesPerPixelForColorSpace_;

    [v24 setRecognitionLanguages_];
  }

  if (a4 >= 1)
  {
    if (!(a4 >> 31))
    {
      [v24 setMergeSettings_];
      goto LABEL_13;
    }

LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

LABEL_13:
  v33 = [a1 imageByConvertingToColorSpace_];
  if (!v33)
  {
    sub_1B40DF594();
    swift_allocError();
    *v40 = 3;
    *(v40 + 4) = 1;
    swift_willThrow();

    return v16;
  }

  a4 = v33;
  v215 = v22;
  v230[0] = 0;
  objc_opt_self();
  v34 = swift_dynamicCastObjCClass();
  v217 = v24;
  if (v34)
  {
    v35 = [a4 pixelBuffer];
    v230[0] = v35;
    v36 = v35;
    v25 = v222;
    if (v35)
    {
      v37 = v36;
      PixelFormatType = CVPixelBufferGetPixelFormatType(v36);

      if (PixelFormatType == 1278226488)
      {
        v19 = v35;
        goto LABEL_36;
      }

      v229[0] = v37;
      type metadata accessor for CVBuffer();
      v54 = v37;
      v53 = sub_1B429FBE8();
      v52 = v55;
    }

    else
    {
      v52 = 0x80000001B42B5190;
      v53 = 0xD000000000000012;
    }

    v56 = sub_1B41252AC();
    v57 = v227;
    (*(v227 + 2))(v19, v56, v14);

    v58 = sub_1B429FA48();
    v16 = sub_1B42A0138();

    if (os_log_type_enabled(v58, v16))
    {
      v59 = swift_slowAlloc();
      v213 = a4;
      v60 = v59;
      v61 = swift_slowAlloc();
      v229[0] = v61;
      *v60 = 136315138;
      v62 = sub_1B40DDE8C(v53, v52, v229);

      *(v60 + 4) = v62;
      _os_log_impl(&dword_1B40D2000, v58, v16, "Unexpected pixel format: %s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x1B8C74FA0](v61, -1, -1);
      v63 = v60;
      a4 = v213;
      MEMORY[0x1B8C74FA0](v63, -1, -1);
    }

    else
    {
    }

    (*(v57 + 1))(v19, v14);
LABEL_31:
    sub_1B40DF594();
    swift_allocError();
    *v64 = 3;
    *(v64 + 4) = 1;
    swift_willThrow();

LABEL_32:
    goto LABEL_33;
  }

  v41 = [a4 width];
  v42 = [a4 height];
  result = [a4 vImage];
  v44 = v229[0];
  if (!v229[0])
  {
    __break(1u);
LABEL_181:
    __break(1u);
    return result;
  }

  [a4 vImage];
  v45 = CVPixelBufferCreateWithBytes(0, v41, v42, 0x4C303038u, v44, v229[3], 0, 0, 0, v230);
  v25 = v222;
  if (v45)
  {
    v46 = v45;
    v47 = sub_1B41252AC();
    v48 = v227;
    (*(v227 + 2))(v16, v47, v14);
    v49 = sub_1B429FA48();
    v50 = sub_1B42A0138();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 67109120;
      *(v51 + 4) = v46;
      _os_log_impl(&dword_1B40D2000, v49, v50, "Failed to create pixel buffer with error: %d", v51, 8u);
      MEMORY[0x1B8C74FA0](v51, -1, -1);
    }

    (*(v48 + 1))(v16, v14);
    goto LABEL_31;
  }

  v19 = v230[0];
LABEL_36:
  v65 = v217;
  v66 = v224;
  if (!v19)
  {
    sub_1B40DF594();
    swift_allocError();
    *v68 = 3;
    *(v68 + 4) = 1;
    swift_willThrow();

    goto LABEL_32;
  }

  if (v224)
  {
    v67 = v19;
    v66(0, 0.2);
  }

  else
  {
    v69 = v19;
  }

  v70 = v223;
  sub_1B429F688();
  v229[0] = 0;
  v71 = [v65 detectFeaturesInBuffer:v19 error:v229];
  v72 = v229[0];
  if (!v71)
  {
    v141 = v229[0];
    sub_1B429F598();

    swift_willThrow();
    (*(v220 + 8))(v70, v221);
    goto LABEL_33;
  }

  v73 = v71;
  v74 = sub_1B429FDF8();
  v75 = v72;

  v76 = sub_1B41393EC(v74, &qword_1EB8853E0, 0x1E699FD68);

  if (!v76)
  {
    sub_1B40DF594();
    swift_allocError();
    *v142 = 5;
    *(v142 + 4) = 1;
    swift_willThrow();

    (*(v220 + 8))(v223, v221);
    goto LABEL_33;
  }

  sub_1B429F688();
  v28 = (v76 & 0xFFFFFFFFFFFFFF8);
  v203 = v76;
  v77 = v76 >> 62;
  v22 = v217;
  if (!v77)
  {
    v78 = v28[2];
    goto LABEL_45;
  }

LABEL_175:
  v195 = v28;
  v78 = sub_1B42A0518();
  v28 = v195;
LABEL_45:
  v206 = v19;
  v213 = a4;
  if (!v78)
  {
LABEL_126:

    v16 = [objc_allocWithZone(CRTextResults) init];
    v143 = [objc_allocWithZone(CRTextDetectorResults) init];
    [v16 setDetectorResults_];

    v144 = [v16 detectorResults];
    if (v144)
    {
      v145 = v144;
      v146 = sub_1B429F678();
      [v145 setStartTime_];
    }

    v147 = [v16 detectorResults];
    if (v147)
    {
      v148 = v147;
      v149 = sub_1B429F678();
      [v148 setEndTime_];
    }

    v150 = [v16 detectorResults];
    if (v150)
    {
      v151 = v150;
      v152 = v226[3];
      v153 = v226[4];
      __swift_project_boxed_opaque_existential_0(v226, v152);
      v154 = *(v153 + 560);
      v155 = v153;
      v19 = v206;
      v154(v152, v155);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990, &qword_1B42ACB60);
      v156 = sub_1B429FAE8();

      [v151 setInputOptions_];
    }

    v157 = [v16 detectorResults];
    v158 = &_OBJC_LABEL_PROTOCOL___CRFormPostProcessingStep;
    if (v157)
    {
      v159 = v157;
      sub_1B40E27B4(0, &qword_1ED95E6D8, off_1E7BC10E8);
      v160 = sub_1B429FDE8();
      [v159 setTextFeatures_];
    }

    if (v215)
    {

      v161 = [v16 detectorResults];
      if (!v161 || (v162 = v161, v163 = [v161 textFeatures], v162, !v163))
      {
        v163 = 0;
      }

      v164 = v217;
      v165 = v213;
      v166 = v224;
    }

    else
    {
      v170 = [objc_allocWithZone(CRTextRecognizerResults) init];
      [v16 setRecognizerResults_];

      v171 = [v16 recognizerResults];
      if (v171)
      {
        v172 = v171;
        v173 = sub_1B429F678();
        [v172 setStartTime_];
      }

      v174 = [v16 recognizerResults];
      if (v174)
      {
        v175 = v174;
        v176 = sub_1B429F678();
        [v175 setEndTime_];
      }

      v177 = [v16 recognizerResults];
      v165 = v213;
      if (v177)
      {
        v178 = v177;
        v179 = sub_1B429FDE8();
        [v178 setCodeMaps_];
      }

      v180 = [v16 recognizerResults];
      if (v180)
      {
        v181 = v180;
        sub_1B40E27B4(0, &qword_1ED95E6D8, off_1E7BC10E8);
        v182 = sub_1B429FDE8();

        [v181 setTextFeatures_];
      }

      else
      {
      }

      v164 = v217;
      v166 = v224;
      v186 = [v16 recognizerResults];
      if (v186)
      {
        v187 = v186;
        v188 = [v16 detectorResults];
        if (v188)
        {
          v189 = v188;
          v190 = [v188 inputOptions];

          if (v190)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990, &qword_1B42ACB60);
            sub_1B429FAF8();

            v19 = v206;
            v190 = sub_1B429FAE8();
          }

          v158 = &_OBJC_LABEL_PROTOCOL___CRFormPostProcessingStep;
        }

        else
        {
          v190 = 0;
        }

        [v187 setInputOptions_];

        v164 = v217;
        v166 = v224;
      }

      v191 = [v16 recognizerResults];
      if (!v191 || (v192 = v191, v163 = [v191 textFeatures], v192, v166 = v224, v164 = v217, !v163))
      {
        v163 = 0;
      }
    }

    [v16 v158[72]];

    if (v166)
    {
      v166(0, 1.0);
    }

    v193 = *(v220 + 8);
    v194 = v221;
    v193(v219, v221);
    v193(v223, v194);

    return v16;
  }

  v197 = v28;
  v229[0] = MEMORY[0x1E69E7CC0];
  sub_1B42A0488();
  if (v78 < 0)
  {
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
  }

  v79 = 0;
  v199 = v203 & 0xC000000000000001;
  v196 = v203 + 32;
  v16 = &_OBJC_LABEL_PROTOCOL___CRFormPostProcessingStep;
  v80 = off_1E7BC1000;
  v198 = v78;
  while (1)
  {
    v28 = (v79 + 1);
    if (__OFADD__(v79, 1))
    {
      goto LABEL_174;
    }

    v200 = v79 + 1;
    if (v199)
    {
      v81 = MEMORY[0x1B8C72CD0]();
    }

    else
    {
      if (v79 >= v197[2])
      {
        goto LABEL_178;
      }

      v81 = *(v196 + 8 * v79);
    }

    v82 = v81;
    [v81 *(v16 + 3936)];
    v202 = [objc_allocWithZone(v80[29]) initWithTopLeft:v85 topRight:v86 bottomLeft:v85 + v83 bottomRight:{v86, v85, v86 + v84, v85 + v83, v86 + v84}];
    if ((v215 & 1) == 0)
    {
      v87 = [v82 text];
      [v202 setStringValue_];
    }

    v201 = v82;
    v88 = [v82 subFeatures];
    if (!v88 || (v89 = v88, v90 = sub_1B429FDF8(), v89, v91 = sub_1B41393EC(v90, &qword_1EB8853E0, 0x1E699FD68), v22 = v217, , !v91))
    {

      sub_1B40DF594();
      swift_allocError();
      *v183 = 5;
      *(v183 + 4) = 1;
      swift_willThrow();

      v184 = *(v220 + 8);
      v185 = v221;
      v184(v219, v221);
      v184(v223, v185);
      goto LABEL_141;
    }

    v92 = v91 & 0xFFFFFFFFFFFFFF8;
    v210 = v91;
    if (v91 >> 62)
    {
      v93 = sub_1B42A0518();
      v92 = v91 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v93 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = v215;
    if (v93)
    {
      break;
    }

LABEL_121:

    sub_1B40E27B4(0, &qword_1ED95E6D8, off_1E7BC10E8);
    v140 = sub_1B429FDE8();

    [v202 setSubFeatures_];

    sub_1B42A0458();
    sub_1B42A0498();
    sub_1B42A04A8();
    sub_1B42A0468();
    v79 = v200;
    v22 = v217;
    if (v200 == v198)
    {
      goto LABEL_126;
    }
  }

  v205 = v92;
  v228 = MEMORY[0x1E69E7CC0];
  v212 = v93;
  sub_1B42A0488();
  if (v212 < 0)
  {
    __break(1u);
    goto LABEL_177;
  }

  v94 = 0;
  v211 = v210 & 0xC000000000000001;
  v28 = &v231;
  v204 = v210 + 32;
  while (1)
  {
    if (__OFADD__(v94, 1))
    {
      goto LABEL_170;
    }

    v28 = &v232;
    v214 = (v94 + 1);
    if (v211)
    {
      v95 = MEMORY[0x1B8C72CD0]();
    }

    else
    {
      if (v94 >= *(v205 + 16))
      {
        goto LABEL_173;
      }

      v95 = *(v204 + 8 * v94);
    }

    v216 = v95;
    [v95 *(v16 + 3936)];
    v100 = [objc_allocWithZone(v80[29]) initWithTopLeft:v98 topRight:v99 bottomLeft:v98 + v96 bottomRight:{v99, v98, v99 + v97, v98 + v96, v99 + v97}];
    if (v22)
    {
      goto LABEL_91;
    }

    v101 = v216;
    v102 = [v216 text];
    [v100 setStringValue_];

    v103 = [v101 candidates];
    if (!v103)
    {
      break;
    }

    v104 = v103;
    v105 = sub_1B429FDF8();

    v16 = sub_1B41393EC(v105, &qword_1EB8853D0, 0x1E699FD58);

    if (!v16)
    {
      break;
    }

    if (v225 < 0)
    {
      goto LABEL_171;
    }

    v209 = v100;
    v22 = v16 >> 62;
    if (v16 >> 62)
    {
      v138 = sub_1B42A0518();
      result = sub_1B42A0518();
      if (result < 0)
      {
        goto LABEL_181;
      }

      if (v138 >= v225)
      {
        v139 = v225;
      }

      else
      {
        v139 = v138;
      }

      if (v138 < 0)
      {
        v139 = v225;
      }

      if (v225)
      {
        v108 = v139;
      }

      else
      {
        v108 = 0;
      }

      if (sub_1B42A0518() < v108)
      {
        goto LABEL_172;
      }
    }

    else
    {
      v106 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v28 = v225;
      if (v106 >= v225)
      {
        v107 = v225;
      }

      else
      {
        v107 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v225)
      {
        v108 = v107;
      }

      else
      {
        v108 = 0;
      }

      if (v106 < v108)
      {
        goto LABEL_172;
      }
    }

    v208 = v16;
    if ((v16 & 0xC000000000000001) != 0)
    {
      if (v108)
      {
        sub_1B40E27B4(0, &qword_1EB8853D0, 0x1E699FD58);

        v109 = 0;
        do
        {
          v110 = v109 + 1;
          sub_1B42A0418();
          v109 = v110;
        }

        while (v108 != v110);
        if (v22)
        {
LABEL_88:

          v112 = sub_1B42A05B8();
          v113 = v114;
          v111 = v115;
          v108 = v116 >> 1;
          goto LABEL_89;
        }
      }

      else
      {

        if (v22)
        {
          goto LABEL_88;
        }
      }
    }

    else
    {
    }

    v111 = 0;
    v112 = v16 & 0xFFFFFFFFFFFFFF8;
    v113 = (v16 & 0xFFFFFFFFFFFFFF8) + 32;
LABEL_89:
    v207 = v112;
    swift_unknownObjectRetain();
    v117 = MEMORY[0x1E69E7CC0];
    v227 = MEMORY[0x1E69E7CC0];
    v118 = v108 - v111;
    if (v108 != v111)
    {
      if (v108 <= v111)
      {
        v122 = v111;
      }

      else
      {
        v122 = v108;
      }

      v123 = (v113 + 8 * v111);
      v19 = (v122 - v111);
      v117 = MEMORY[0x1E69E7CC0];
      v227 = MEMORY[0x1E69E7CC0];
      while (v19)
      {
        v124 = *v123;
        [v124 confidence];
        v126 = v125;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v117 = sub_1B41394F0(0, *(v117 + 2) + 1, 1, v117);
        }

        v128 = *(v117 + 2);
        v127 = *(v117 + 3);
        if (v128 >= v127 >> 1)
        {
          v117 = sub_1B41394F0((v127 > 1), v128 + 1, 1, v117);
        }

        *(v117 + 2) = v128 + 1;
        *&v117[4 * v128 + 32] = v126;
        v129 = [v124 text];
        if (!v129)
        {
          goto LABEL_179;
        }

        v130 = v129;
        v131 = sub_1B429FB98();
        v133 = v132;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v227 = sub_1B41232C0(0, *(v227 + 2) + 1, 1, v227);
        }

        v135 = *(v227 + 2);
        v134 = *(v227 + 3);
        if (v135 >= v134 >> 1)
        {
          v227 = sub_1B41232C0((v134 > 1), v135 + 1, 1, v227);
        }

        v136 = v227;
        *(v227 + 2) = v135 + 1;
        v137 = &v136[16 * v135];
        *(v137 + 4) = v131;
        *(v137 + 5) = v133;
        ++v123;
        v19 = (v19 - 1);
        if (!--v118)
        {
          goto LABEL_90;
        }
      }

      __break(1u);
      goto LABEL_126;
    }

LABEL_90:
    swift_unknownObjectRelease_n();

    sub_1B4139230(v117);

    sub_1B40E27B4(0, &qword_1ED95EE90, 0x1E696AD98);
    v119 = sub_1B429FDE8();

    v120 = v209;
    [v209 setCandidateProbs_];

    v121 = sub_1B429FDE8();

    [v120 setStringValueCandidates_];

    v25 = v222;
    a4 = v213;
    v19 = v206;
    v22 = v215;
    v16 = 0x1E7BC4000;
    v80 = off_1E7BC1000;
LABEL_91:
    if (v25)
    {
      goto LABEL_140;
    }

    sub_1B42A0458();
    sub_1B42A0498();
    sub_1B42A04A8();
    sub_1B42A0468();
    v28 = v214;
    v94 = v214;
    if (v214 == v212)
    {
      goto LABEL_121;
    }
  }

  sub_1B40DF594();
  swift_allocError();
  *v167 = 5;
  *(v167 + 4) = 1;
  swift_willThrow();

LABEL_140:

  v168 = *(v220 + 8);
  v169 = v221;
  v168(v219, v221);
  v168(v223, v169);

LABEL_141:

LABEL_33:

  return v16;
}

uint64_t sub_1B4139230(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    sub_1B42A0488();
    v4 = a1 + 32;
    do
    {
      v4 += 4;
      sub_1B42A0048();
      sub_1B42A0458();
      sub_1B42A0498();
      sub_1B42A04A8();
      sub_1B42A0468();
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

uint64_t sub_1B41392D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1B40FE1A8(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1B40E2888(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1B40FE1A8((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1B41393EC(uint64_t a1, unint64_t *a2, void *a3)
{
  v10 = MEMORY[0x1E69E7CC0];
  v6 = *(a1 + 16);
  sub_1B42A0488();
  if (!v6)
  {
    return v10;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1B40E2888(i, v9);
    sub_1B40E27B4(0, a2, a3);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1B42A0458();
    sub_1B42A0498();
    sub_1B42A04A8();
    sub_1B42A0468();
    if (!--v6)
    {
      return v10;
    }
  }

  return 0;
}

char *sub_1B41394F0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853D8, "|A");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1B41395F4(void *a1)
{
  v43 = sub_1B429F748();
  v39 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1B429F768();
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853E8, "vA");
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v36 - v7;
  v9 = sub_1B429F5B8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v13);
  if ((*(v14 + 312))(v13, v14))
  {
    v36 = v10;
    v37 = v9;
    v41 = [objc_allocWithZone(MEMORY[0x1E695DFA0]) init];
    v15 = objc_opt_self();
    v17 = a1[3];
    v16 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, v17);
    (*(v16 + 560))(v17, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990, &qword_1B42ACB60);
    v18 = sub_1B429FAE8();

    v19 = [v15 languageSetFromOptionsDictionary_];

    sub_1B42A0108();
    sub_1B429F5A8();
    if (v46)
    {
      v20 = (v38 + 8);
      v21 = (v39 + 8);
      v40 = v5;
      do
      {
        sub_1B40E28EC(&v45, &v44);
        if (swift_dynamicCast())
        {
          sub_1B429F6E8();
          sub_1B429F758();
          (*v20)(v5, v42);
          sub_1B429F738();
          (*v21)(v3, v43);
          v23 = sub_1B429F718();
          v24 = *(v23 - 8);
          if ((*(v24 + 48))(v8, 1, v23) == 1)
          {
            sub_1B4139C18(v8);
          }

          else
          {
            sub_1B429F708();
            (*(v24 + 8))(v8, v23);
            v22 = sub_1B429FB88();
            v5 = v40;

            [v41 addObject_];
          }
        }

        sub_1B429F5A8();
      }

      while (v46);
    }

    (*(v36 + 8))(v12, v37);
    v32 = v41;
    v33 = [v41 array];
    v34 = sub_1B429FDF8();

    v35 = sub_1B41392D8(v34);

    if (v35)
    {
      return v35;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v25 = a1[3];
    v26 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, v25);
    result = (*(v26 + 456))(v25, v26);
    if (!*(result + 2))
    {
      v28 = result;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        result = v28;
      }

      else
      {
        result = sub_1B41232C0(0, 1, 1, v28);
      }

      v30 = *(result + 2);
      v29 = *(result + 3);
      if (v30 >= v29 >> 1)
      {
        result = sub_1B41232C0((v29 > 1), v30 + 1, 1, result);
      }

      *(result + 2) = v30 + 1;
      v31 = &result[16 * v30];
      *(v31 + 4) = 28261;
      *(v31 + 5) = 0xE200000000000000;
    }
  }

  return result;
}

void type metadata accessor for CVBuffer()
{
  if (!qword_1EB8853C8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB8853C8);
    }
  }
}

uint64_t sub_1B4139C18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853E8, "vA");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of CRTextRecognizerModelInputProvider.inputBatch(lineRegions:image:regionWidth:configuration:rectifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v18 = (*(a6 + 8) + **(a6 + 8));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1B40E6368;
  v16.n128_f64[0] = a7;

  return v18(a1, a2, a3, a4, a5, a6, v16);
}

BOOL sub_1B4139E48(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  CRLocale.init(rawValue:)(v4);
  if (v7 == 30)
  {
    return 0;
  }

  v6[1] = v7;
  CRLocale.script.getter(v6);
  return v6[0] < 6u;
}

uint64_t ImageReader.Pipeline.hashValue.getter()
{
  v1 = *v0;
  sub_1B42A0778();
  MEMORY[0x1B8C73030](v1);
  return sub_1B42A07A8();
}

uint64_t ImageReader.Prioritization.hashValue.getter()
{
  v1 = *v0;
  sub_1B42A0778();
  MEMORY[0x1B8C73030](v1);
  return sub_1B42A07A8();
}

uint64_t sub_1B413A0BC(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + 112));
  sub_1B40D5F90(a1, v1 + 112);
  return swift_endAccess();
}

uint64_t sub_1B413A114@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B413A160(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(**a2 + 144);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_1B413A208(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return swift_unknownObjectRelease();
}

uint64_t ImageReader.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15TextRecognition11ImageReader_uuid;
  v4 = sub_1B429F6D8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ImageReader.__allocating_init(configuration:)(void *a1)
{
  v2 = swift_allocObject();
  ImageReader.init(configuration:)(a1);
  return v2;
}

uint64_t ImageReader.init(configuration:)(void *a1)
{
  v2 = v1;
  v4 = sub_1B429FA68();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v1 + 152) = 0;
  *(v1 + 160) = 0;
  sub_1B429F6C8();
  sub_1B40E33EC(a1, v1 + 112);
  v8 = sub_1B41252AC();
  (*(v5 + 16))(v7, v8, v4);
  sub_1B40E33EC(a1, v22);
  v9 = sub_1B429FA48();
  v10 = sub_1B42A0158();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v20 = v4;
    v12 = v11;
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_1B40DDE8C(0xD000000000000014, 0x80000001B42B51D0, &v21);
    *(v12 + 12) = 2080;
    __swift_project_boxed_opaque_existential_0(v22, v22[3]);
    v14 = sub_1B42A0688();
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_0(v22);
    v17 = sub_1B40DDE8C(v14, v16, &v21);

    *(v12 + 14) = v17;
    _os_log_impl(&dword_1B40D2000, v9, v10, "%s: config=%s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8C74FA0](v13, -1, -1);
    MEMORY[0x1B8C74FA0](v12, -1, -1);

    __swift_destroy_boxed_opaque_existential_0(a1);
    (*(v5 + 8))(v7, v20);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(a1);
    (*(v5 + 8))(v7, v4);
    __swift_destroy_boxed_opaque_existential_0(v22);
  }

  return v2;
}

uint64_t sub_1B413A5B8()
{
  result = (*(*v0 + 176))();
  if (!v1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B413A608()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870, &qword_1B42AC0A0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20[-v5];
  result = (*(*v0 + 136))(v4);
  if (!result)
  {
    v8 = *(*v0 + 112);
    v8(&v20[8]);
    v9 = v21;
    v10 = v22;
    __swift_project_boxed_opaque_existential_0(&v20[8], v21);
    (*(v10 + 72))(&v20[7], v9, v10);
    __swift_destroy_boxed_opaque_existential_0(&v20[8]);
    v11 = ImageReader.Pipeline.engineClass.getter();
    v13 = v12;
    v8(&v20[8]);
    v14 = OBJC_IVAR____TtC15TextRecognition11ImageReader_uuid;
    v15 = sub_1B429F6D8();
    v16 = *(v15 - 8);
    (*(v16 + 16))(v6, v2 + v14, v15);
    (*(v16 + 56))(v6, 0, 1, v15);
    result = (*(v13 + 8))(&v20[8], v6, v11, v13);
    if (!v1)
    {
      v17 = *(*v2 + 144);
      v18 = result;
      v19 = swift_unknownObjectRetain();
      v17(v19, v13);
      return v18;
    }
  }

  return result;
}