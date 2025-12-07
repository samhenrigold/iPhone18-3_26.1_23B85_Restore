uint64_t outlined destroy of URL?(uint64_t a1)
{
  type metadata accessor for URL?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for URL?(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Image.Orientation@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Image.Orientation.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Image.Orientation()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x507030104060200uLL >> (8 * v1));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Image.Orientation(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x507030104060200uLL >> (8 * v2));
  return Hasher._finalize()();
}

double CGRect.apply(_:in:)(unsigned __int8 a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v7 = a7;
  v8 = a5;
  v10 = 1;
  if (a1 <= 3u)
  {
    if (a1 <= 1u)
    {
      v11 = a4;
      v12 = a6;
      v13 = a4;
      if (!a1)
      {
        return v13;
      }

      goto LABEL_13;
    }

    if (a1 == 2)
    {
      v10 = 0;
      v11 = a4;
      v12 = a6;
      goto LABEL_13;
    }

    v13 = a4;
    v14 = a7;
    a4 = a5;
LABEL_17:
    v17.origin.x = v13;
    v17.origin.y = a4;
    v17.size.width = a6;
    v17.size.height = v14;
    CGRectGetHeight(v17);
    return v13;
  }

  if (a1 > 5u)
  {
    if (a1 != 6)
    {
      v13 = a3 - a5;
      v14 = a6;
      a6 = a7;
      goto LABEL_17;
    }

    v10 = 0;
LABEL_12:
    v11 = a3 - a5;
    v8 = a4;
    v12 = a7;
    v7 = a6;
    a2 = a3;
LABEL_13:
    v16.origin.x = v11;
    v16.origin.y = v8;
    v16.size.width = v12;
    v16.size.height = v7;
    v13 = a2 - (v11 + CGRectGetWidth(v16));
    v14 = v7;
    a6 = v12;
    a4 = v8;
    if (v10)
    {
      return v13;
    }

    goto LABEL_17;
  }

  if (a1 != 4)
  {
    goto LABEL_12;
  }

  return a3 - a5;
}

double CGRect.unapply(_:in:)(unsigned __int8 a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v9 = a5;
  v10 = a4;
  if (a1 > 3u)
  {
    if (a1 <= 5u)
    {
      if (a1 == 4)
      {
        v11 = 1;
      }

      else
      {
        v11 = 3;
      }

      goto LABEL_9;
    }

    if (a1 == 6)
    {
      v14 = 7;
    }

    else
    {
      v14 = 5;
    }
  }

  else
  {
    if (a1 <= 1u)
    {
      if (!a1)
      {
        return v10;
      }

      v11 = 2;
LABEL_9:
      v12 = (v11 & 1) == 0;
      if (v11)
      {
        v13 = a3;
      }

      else
      {
        v13 = a2;
      }

      if ((v11 & 2) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    if (a1 == 2)
    {
      v14 = 6;
    }

    else
    {
      v14 = 4;
    }
  }

  v12 = (v14 & 1) == 0;
  if (v14)
  {
    v13 = a3;
  }

  else
  {
    v13 = a2;
  }

  if (v14)
  {
    v15 = a2;
  }

  else
  {
    v15 = a3;
  }

  v17.origin.x = a4;
  v17.origin.y = a5;
  v17.size.width = a6;
  v17.size.height = a7;
  v9 = v15 - (CGRectGetHeight(v17) + v9);
  if ((v14 & 2) == 0)
  {
    goto LABEL_28;
  }

LABEL_27:
  v18.origin.x = v10;
  v18.origin.y = v9;
  v18.size.width = a6;
  v18.size.height = a7;
  v10 = v13 - (CGRectGetWidth(v18) + v10);
LABEL_28:
  if (!v12)
  {
    return v9;
  }

  return v10;
}

double CGAffineTransform.init(orientation:in:)@<D0>(CGAffineTransform *a1@<X0>, _OWORD *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  specialized CGAffineTransform.init(orientation:in:)(a1, v7, a3, a4);
  v5 = v7[1];
  *a2 = v7[0];
  a2[1] = v5;
  result = *&v8;
  a2[2] = v8;
  return result;
}

CGFloat CGAffineTransform.init(orientation:in:)@<D0>(CGAffineTransform *a1@<X0>, _OWORD *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  specialized CGAffineTransform.init(orientation:in:)(a1, v21, a5, a6);
  v9 = v22;
  v10 = v23;
  CGAffineTransformMakeTranslation(&t1, a3, a4);
  tx = t1.tx;
  ty = t1.ty;
  v16 = *&t1.c;
  v17 = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, -a3, -a4);
  *&t2.a = v21[0];
  *&t2.c = v21[1];
  t2.tx = v9;
  t2.ty = v10;
  CGAffineTransformConcat(&v18, &t1, &t2);
  t1 = v18;
  *&t2.a = v17;
  *&t2.c = v16;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v18, &t1, &t2);
  result = v18.a;
  v14 = *&v18.c;
  v15 = *&v18.tx;
  *a2 = *&v18.a;
  a2[1] = v14;
  a2[2] = v15;
  return result;
}

CGFloat CGAffineTransform.apply(_:)(unsigned __int8 a1, CGFloat result)
{
  if (a1 > 3u)
  {
    v3 = xmmword_18DDAA020;
    if (a1 <= 5u)
    {
      if (a1 == 4)
      {
        v4 = xmmword_18DDBA6A0;
      }

      else
      {
        v4 = xmmword_18DDAB500;
      }

      goto LABEL_16;
    }

    if (a1 == 6)
    {
      v4 = xmmword_18DDAB500;
    }

    else
    {
      v4 = xmmword_18DDBA6A0;
    }

    goto LABEL_15;
  }

  if (a1 > 1u)
  {
    v3 = xmmword_18DDAB500;
    if (a1 == 2)
    {
      v4 = xmmword_18DDBA6B0;
    }

    else
    {
      v4 = xmmword_18DDAA020;
    }

LABEL_15:
    v3 = vnegq_f64(v3);
    goto LABEL_16;
  }

  if (!a1)
  {
    return result;
  }

  v3 = xmmword_18DDAB500;
  v4 = xmmword_18DDBA6B0;
LABEL_16:
  *&t1.a = v4;
  *&t1.c = v3;
  __asm { FMOV            V0.2D, #0.5 }

  *&t1.tx = _Q0;
  CGAffineTransformTranslate(&t2, &t1, -0.5, -0.5);
  t1 = t2;
  v10 = v2[1];
  *&t2.a = *v2;
  *&t2.c = v10;
  *&t2.tx = v2[2];
  CGAffineTransformConcat(&v13, &t1, &t2);
  result = v13.a;
  v11 = *&v13.c;
  v12 = *&v13.tx;
  *v2 = *&v13.a;
  v2[1] = v11;
  v2[2] = v12;
  return result;
}

CGAffineTransform *specialized CGAffineTransform.init(orientation:in:)@<X0>(CGAffineTransform *result@<X0>, __int128 *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  if (result > 3u)
  {
    v8 = a3 * 0.5;
    v9 = a4 * 0.5;
    v10 = xmmword_18DDAA020;
    if (result <= 5u)
    {
      if (result == 4)
      {
        v11 = xmmword_18DDBA6A0;
      }

      else
      {
        v11 = xmmword_18DDAB500;
      }

      v12 = a3 * 0.5;
      v13 = v9;
      goto LABEL_20;
    }

    if (result == 6)
    {
      v11 = xmmword_18DDAB500;
    }

    else
    {
      v11 = xmmword_18DDBA6A0;
    }

    v12 = a3 * 0.5;
    v13 = v9;
    goto LABEL_19;
  }

  if (result > 1u)
  {
    v8 = a3 * 0.5;
    v9 = a4 * 0.5;
    v10 = xmmword_18DDAB500;
    if (result == 2)
    {
      v11 = xmmword_18DDBA6B0;
    }

    else
    {
      v11 = xmmword_18DDAA020;
    }

    v12 = a4 * 0.5;
    v13 = a3 * 0.5;
LABEL_19:
    v10 = vnegq_f64(v10);
    goto LABEL_20;
  }

  if (result)
  {
    v8 = a3 * 0.5;
    v9 = a4 * 0.5;
    v10 = xmmword_18DDAB500;
    v11 = xmmword_18DDBA6B0;
    v12 = a4 * 0.5;
    v13 = a3 * 0.5;
LABEL_20:
    *&v15.a = v11;
    *&v15.c = v10;
    v15.tx = v8;
    v15.ty = v9;
    result = CGAffineTransformTranslate(&v14, &v15, -v13, -v12);
    v6 = *&v14.a;
    v5 = *&v14.c;
    v7 = *&v14.tx;
    goto LABEL_21;
  }

  v5 = xmmword_18DDAB500;
  v6 = xmmword_18DDAA020;
  v7 = 0uLL;
LABEL_21:
  *a2 = v6;
  a2[1] = v5;
  a2[2] = v7;
  return result;
}

uint64_t specialized Image.Orientation.init(rawValue:)(char a1)
{
  if ((a1 & 0xF8) != 0)
  {
    return 8;
  }

  else
  {
    return (0x602070305010400uLL >> (8 * a1));
  }
}

void lazy protocol witness table accessor for type [Image.Orientation] and conformance [A]()
{
  if (!lazy protocol witness table cache variable for type [Image.Orientation] and conformance [A])
  {
    type metadata accessor for [Image.Orientation]();
    swift_getWitnessTable(MEMORY[0x1E69E6340], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type [Image.Orientation] and conformance [A]);
  }
}

void type metadata accessor for [Image.Orientation]()
{
  if (!lazy cache variable for type metadata for [Image.Orientation])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [Image.Orientation]);
    }
  }
}

void lazy protocol witness table accessor for type Image.Orientation and conformance Image.Orientation()
{
  if (!lazy protocol witness table cache variable for type Image.Orientation and conformance Image.Orientation)
  {
    swift_getWitnessTable(protocol conformance descriptor for Image.Orientation, &type metadata for Image.Orientation, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Image.Orientation and conformance Image.Orientation);
  }
}

Swift::Double __swiftcall UnitCurve.velocity(at:)(Swift::Double at)
{
  v3 = *v1;
  v4 = v1[3];
  v5 = at > 0.0;
  v6 = 0.0;
  if (v5)
  {
    v6 = at;
  }

  v7 = 1.0;
  if (v6 > 1.0)
  {
    v6 = 1.0;
  }

  if (*(v1 + 32) != 1)
  {
    return UnitCurve.CubicSolver.velocity(at:)(v6);
  }

  v8 = v1[2] | v1[1];
  if (!(v8 | v3 | v4))
  {
    return v7;
  }

  v9 = v8 | v4;
  if (v3 == 1 && v9 == 0)
  {
    v15 = at / sqrt(1.0 - at * at);
  }

  else
  {
    if (v3 == 2 && v9 == 0)
    {
      v12 = at + -1.0;
      v17 = -((at + -2.0) * at);
    }

    else
    {
      v12 = at + at;
      if (at >= 0.5)
      {
        v12 = v12 + -2.0;
        v13 = (at * -4.0 + 8.0) * at;
        v14 = -3.0;
      }

      else
      {
        v13 = at * -4.0 * at;
        v14 = 1.0;
      }

      v17 = v13 + v14;
    }

    v15 = v12 / sqrt(v17);
  }

  return fabs(v15);
}

__n128 UnitCurve.function.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 UnitCurve.function.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  *(v1 + 32) = v2;
  return result;
}

void static UnitCurve.bezier(startControlPoint:endControlPoint:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = 0;
}

Swift::Double __swiftcall UnitCurve.CubicSolver.value(at:)(Swift::Double at)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = UnitCurve.CubicSolver.solveX(_:epsilon:)(at, 0.000000953674316);
  return round(v5 * (v4 + v5 * (v3 + v2 * v5)) * 1048576.0) * 0.000000953674316;
}

Swift::Double __swiftcall UnitCurve.CubicSolver.velocity(at:)(Swift::Double at)
{
  v13 = v1[3];
  v14 = *v1;
  v15 = v1[4];
  v16 = v1[1];
  v17 = v1[5];
  v18 = v1[2];
  v2 = UnitCurve.CubicSolver.solveX(_:epsilon:)(at, 0.000000953674316);
  v3.f64[0] = v14;
  v3.f64[1] = v13;
  __asm { FMOV            V1.2D, #3.0 }

  v9 = vmulq_n_f64(vmulq_f64(v3, _Q1), v2);
  v3.f64[0] = v16;
  v3.f64[1] = v15;
  v10 = vmulq_n_f64(vaddq_f64(vaddq_f64(v3, v3), v9), v2);
  v9.f64[0] = v18;
  v9.f64[1] = v17;
  v11 = vaddq_f64(v9, v10);
  result = 1.0;
  if (v11.f64[0] != v11.f64[1])
  {
    if (v11.f64[0] == 0.0)
    {
      result = INFINITY;
      if (v11.f64[1] < 0.0)
      {
        return -INFINITY;
      }
    }

    else
    {
      return round(v11.f64[1] / v11.f64[0] * 1048576.0) * 0.000000953674316;
    }
  }

  return result;
}

void UnitCurve.inverse.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  if (*(v1 + 32) != 1)
  {
    *a1 = v3;
    *(a1 + 8) = v2;
    *(a1 + 16) = v4;
    *(a1 + 24) = v5;
    *(a1 + 32) = 0;
    return;
  }

  v6 = v5 | v3;
  if (!(v6 | v2 | v4))
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
LABEL_16:
    *(a1 + 32) = 1;
    return;
  }

  v7 = v6 | v4;
  if (v2 == 1 && v7 == 0)
  {
    v10 = 2;
    goto LABEL_15;
  }

  if (v2 != 2 || v7 != 0)
  {
    v10 = 3;
LABEL_15:
    *a1 = v10;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    goto LABEL_16;
  }

  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
}

BOOL static UnitCurve.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 16);
  v5 = *a2;
  v4 = *(a2 + 16);
  if (*(a1 + 32) != 1)
  {
    return (*(a2 + 32) & 1) == 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, v5), vceqq_f64(v2, v4)))) & 1) != 0;
  }

  if (!(*&v2.f64[0] | *&v3.f64[1] | *&v3.f64[0] | *&v2.f64[1]))
  {
    return *(a2 + 32) && !(*&v4.f64[0] | *&v5.f64[0] | *&v5.f64[1] | *&v4.f64[1]);
  }

  v6 = *&v2.f64[0] | *&v3.f64[1] | *&v2.f64[1];
  if (*&v3.f64[0] == 1 && v6 == 0)
  {
    if (!*(a2 + 32))
    {
      return 0;
    }

    v10 = *&v4.f64[0] | *&v5.f64[1] | *&v5.f64[0] | *&v4.f64[1] && *&v5.f64[0] == 1;
    return v10 && (*&v4.f64[0] | *&v5.f64[1] | *&v4.f64[1]) == 0;
  }

  if (*&v3.f64[0] == 2 && v6 == 0)
  {
    if (!*(a2 + 32))
    {
      return 0;
    }

    if (!(*&v4.f64[0] | *&v5.f64[1] | *&v5.f64[0] | *&v4.f64[1]))
    {
      return 0;
    }

    v12 = *&v4.f64[0] | *&v5.f64[1] | *&v4.f64[1];
    if (*&v5.f64[0] == 1 && !v12)
    {
      return 0;
    }

    return *&v5.f64[0] == 2 && !v12;
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    return 0;
  }

  if (!(*&v4.f64[0] | *&v5.f64[1] | *&v5.f64[0] | *&v4.f64[1]))
  {
    return 0;
  }

  result = 1;
  if ((*&v5.f64[0] - 1) <= 1 && !(*&v4.f64[0] | *&v5.f64[1] | *&v4.f64[1]))
  {
    return 0;
  }

  return result;
}

uint64_t UnitCurve.Function.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 24);
  if (*(v1 + 32) == 1)
  {
    v4 = *(v1 + 16) | *(v1 + 8);
    if (v4 | *&v2 | v3)
    {
      v5 = v4 | v3;
      if (*&v2 == 1 && v5 == 0)
      {
        v8 = 1;
      }

      else if (*&v2 == 2 && v5 == 0)
      {
        v8 = 2;
      }

      else
      {
        v8 = 3;
      }
    }

    else
    {
      v8 = 0;
    }

    return MEMORY[0x193AC11A0](v8);
  }

  else
  {
    v9 = *v1;
    v10 = *(v1 + 8);
    v11 = *(v1 + 16);
    v12 = *(v1 + 24);
    MEMORY[0x193AC11A0](4);
    UnitPoint.hash(into:)(v9, v10);

    return UnitPoint.hash(into:)(v11, v12);
  }
}

Swift::Int UnitCurve.Function.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  Hasher.init(_seed:)();
  if (v5 == 1)
  {
    if (*&v4 | *&v2 | *&v1 | *&v3)
    {
      v6 = *&v4 | *&v2 | *&v3;
      if (*&v1 == 1 && v6 == 0)
      {
        v8 = 1;
      }

      else if (*&v1 != 2 || v6)
      {
        v8 = 3;
      }

      else
      {
        v8 = 2;
      }
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x193AC11A0](v8);
  }

  else
  {
    MEMORY[0x193AC11A0](4);
    UnitPoint.hash(into:)(v1, v2);
    UnitPoint.hash(into:)(v4, v3);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UnitCurve.Function(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *v1;
  v3 = *(v1 + 24);
  if (*(v1 + 32) == 1)
  {
    v4 = *(v1 + 16) | *(v1 + 8);
    if (v4 | *&v2 | v3)
    {
      v5 = v4 | v3;
      if (*&v2 == 1 && v5 == 0)
      {
        v7 = 1;
      }

      else if (*&v2 != 2 || v5)
      {
        v7 = 3;
      }

      else
      {
        v7 = 2;
      }
    }

    else
    {
      v7 = 0;
    }

    MEMORY[0x193AC11A0](v7);
  }

  else
  {
    v8 = *v1;
    v9 = *(v1 + 8);
    v10 = *(v1 + 16);
    v11 = *(v1 + 24);
    MEMORY[0x193AC11A0](4);
    UnitPoint.hash(into:)(v8, v9);
    UnitPoint.hash(into:)(v10, v11);
  }

  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance UnitCurve(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  if (*(a1 + 32) != 1)
  {
    if (*(a2 + 32))
    {
      return 0;
    }

    if (v2 == v6 && v3 == v7 && v5 == v9)
    {
      return v4 == v8;
    }

    return 0;
  }

  v10 = *&v5 | *&v3;
  if (!(v10 | *&v2 | *&v4))
  {
    if (*(a2 + 32))
    {
      return (*&v9 | *&v7 | *&v6 | *&v8) == 0;
    }

    return 0;
  }

  v11 = v10 | *&v4;
  if (*&v2 == 1 && v11 == 0)
  {
    if (*(a2 + 32))
    {
      v20 = *&v9 | *&v7;
      if (v20 | *&v6 | *&v8)
      {
        if (*&v6 == 1 && !(v20 | *&v8))
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (*&v2 != 2 || v11 != 0)
  {
    if (*(a2 + 32))
    {
      v14 = *&v9 | *&v7;
      if (v14 | *&v6 | *&v8)
      {
        v15 = v14 | *&v8;
        if (*&v6 != 1 || v15)
        {
          return *&v6 != 2 || v15 != 0;
        }
      }
    }

    return 0;
  }

  if (!*(a2 + 32))
  {
    return 0;
  }

  v21 = *&v9 | *&v7;
  if (!(v21 | *&v6 | *&v8))
  {
    return 0;
  }

  v22 = v21 | *&v8;
  if (*&v6 == 1 && !v22)
  {
    return 0;
  }

  return *&v6 == 2 && v22 == 0;
}

double static UnitCurve.easeIn.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.42;
  __asm { FMOV            V1.2D, #1.0 }

  *a1 = xmmword_18DDBA7C0;
  *(a1 + 16) = _Q1;
  *(a1 + 32) = 0;
  return result;
}

double static UnitCurve.easeOut.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  result = 0.58;
  *(a1 + 16) = xmmword_18DDBA7D0;
  *(a1 + 32) = 0;
  return result;
}

void static UnitCurve.circularEaseIn.getter(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
}

void static UnitCurve.circularEaseOut.getter(uint64_t a1@<X8>)
{
  *a1 = 2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
}

void static UnitCurve.circularEaseInOut.getter(uint64_t a1@<X8>)
{
  *a1 = 3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
}

double static UnitCurve.linear.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

double UnitCurve.CubicSolver.init(startControlPoint:endControlPoint:)@<D0>(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v5 = a2 * 3.0;
  v6 = (a4 - a2) * 3.0 - a2 * 3.0;
  v7 = a3 * 3.0;
  v8 = (a5 - a3) * 3.0 - a3 * 3.0;
  *a1 = 1.0 - v5 - v6;
  a1[1] = v6;
  result = 1.0 - v7 - v8;
  a1[2] = v5;
  a1[3] = result;
  a1[4] = v8;
  a1[5] = v7;
  return result;
}

uint64_t UnitCurve.CubicSolver.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v1);
  if (v2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  MEMORY[0x193AC11E0](*&v7);
  if (v3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v3;
  }

  MEMORY[0x193AC11E0](*&v8);
  if (v4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x193AC11E0](*&v9);
  if (v5 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v5;
  }

  MEMORY[0x193AC11E0](*&v10);
  if (v6 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v6;
  }

  return MEMORY[0x193AC11E0](*&v11);
}

Swift::Int UnitCurve.CubicSolver.hashValue.getter()
{
  Hasher.init(_seed:)();
  UnitCurve.CubicSolver.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UnitCurve.CubicSolver()
{
  Hasher.init(_seed:)();
  UnitCurve.CubicSolver.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UnitCurve.CubicSolver(uint64_t a1)
{
  Hasher.init(_seed:)();
  UnitCurve.CubicSolver.hash(into:)();
  return Hasher._finalize()();
}

uint64_t static Animation.timingCurve(_:duration:)(uint64_t a1, double a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (*(a1 + 32) == 1)
  {
    if (*&v5 | *&v4 | *&v3 | *&v6)
    {
      type metadata accessor for InternalAnimationBox<UnitCurveAnimation>(0, &lazy cache variable for type metadata for InternalAnimationBox<UnitCurveAnimation>, lazy protocol witness table accessor for type UnitCurveAnimation and conformance UnitCurveAnimation, &type metadata for UnitCurveAnimation);
      result = swift_allocObject();
      *(result + 16) = a2;
      *(result + 24) = v3;
      *(result + 32) = v4;
      *(result + 40) = v5;
      *(result + 48) = v6;
      *(result + 56) = 1;
    }

    else
    {
      type metadata accessor for InternalAnimationBox<UnitCurveAnimation>(0, &lazy cache variable for type metadata for InternalAnimationBox<BezierAnimation>, lazy protocol witness table accessor for type BezierAnimation and conformance BezierAnimation, &type metadata for BezierAnimation);
      result = swift_allocObject();
      *(result + 16) = a2;
      *(result + 24) = xmmword_18DDAF520;
      *(result + 40) = xmmword_18DDBA7E0;
      *(result + 56) = xmmword_18DDBA7F0;
    }
  }

  else
  {
    v8 = (v5 - v3) * 3.0 - v3 * 3.0;
    v9 = (v6 - v4) * 3.0 - v4 * 3.0;
    type metadata accessor for InternalAnimationBox<UnitCurveAnimation>(0, &lazy cache variable for type metadata for InternalAnimationBox<BezierAnimation>, lazy protocol witness table accessor for type BezierAnimation and conformance BezierAnimation, &type metadata for BezierAnimation);
    result = swift_allocObject();
    *(result + 16) = a2;
    *(result + 24) = 1.0 - v3 * 3.0 - v8;
    *(result + 32) = v8;
    *(result + 40) = v3 * 3.0;
    *(result + 48) = 1.0 - v4 * 3.0 - v9;
    *(result + 56) = v9;
    *(result + 64) = v4 * 3.0;
  }

  return result;
}

__n128 UnitCurveAnimation.init(curve:duration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *(a1 + 32);
  *a2 = a3;
  result = *a1;
  v5 = *(a1 + 16);
  *(a2 + 8) = *a1;
  *(a2 + 24) = v5;
  *(a2 + 40) = v3;
  return result;
}

double *UnitCurve.CubicSolver.encode(to:)(double *result)
{
  v2 = v1;
  v3 = result;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v5 / 3.0;
  if (v5 / 3.0 != 0.0)
  {
    ProtobufEncoder.encodeVarint(_:)(9uLL);
    v9 = *(v3 + 1);
    result = (v9 + 8);
    if (__OFADD__(v9, 8))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (*(v3 + 2) < result)
    {
      goto LABEL_21;
    }

    *(v3 + 1) = result;
    *(*v3 + v9) = v8;
  }

  while (1)
  {
    v10 = v7 / 3.0;
    if (v7 / 3.0 == 0.0)
    {
      break;
    }

    ProtobufEncoder.encodeVarint(_:)(0x11uLL);
    v11 = *(v3 + 1);
    result = (v11 + 8);
    if (!__OFADD__(v11, 8))
    {
      if (*(v3 + 2) >= result)
      {
        *(v3 + 1) = result;
        *(*v3 + v11) = v10;
        goto LABEL_9;
      }

      goto LABEL_23;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = v8;
  }

  while (1)
  {
LABEL_9:
    v4 = v8 + (v4 + v5) / 3.0;
    if (v4 != 0.0)
    {
      ProtobufEncoder.encodeVarint(_:)(0x19uLL);
      v12 = *(v3 + 1);
      result = (v12 + 8);
      if (__OFADD__(v12, 8))
      {
        goto LABEL_20;
      }

      if (*(v3 + 2) < result)
      {
        result = ProtobufEncoder.growBufferSlow(to:)(result);
        *result = v4;
      }

      else
      {
        *(v3 + 1) = result;
        *(*v3 + v12) = v4;
      }
    }

    v6 = v10 + (v6 + v7) / 3.0;
    if (v6 == 0.0)
    {
      return result;
    }

    ProtobufEncoder.encodeVarint(_:)(0x21uLL);
    v13 = *(v3 + 1);
    result = (v13 + 8);
    if (!__OFADD__(v13, 8))
    {
      if (*(v3 + 2) < result)
      {
        result = ProtobufEncoder.growBufferSlow(to:)(result);
        *result = v6;
      }

      else
      {
        *(v3 + 1) = result;
        *(*v3 + v13) = v6;
      }

      return result;
    }

    __break(1u);
LABEL_23:
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = v10;
  }
}

unint64_t UnitCurve.CubicSolver.init(from:)@<X0>(unint64_t result@<X0>, double *a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = 0.0;
  if (v5 >= v6)
  {
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
LABEL_4:
    v3[3] = 0;
    v11 = (v8 - v10) * 3.0 - v10 * 3.0;
    v12 = (v7 - v9) * 3.0 - v9 * 3.0;
    *a2 = 1.0 - v10 * 3.0 - v11;
    a2[1] = v11;
    a2[2] = v10 * 3.0;
    a2[3] = 1.0 - v9 * 3.0 - v12;
    a2[4] = v12;
    a2[5] = v9 * 3.0;
    return result;
  }

  v8 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v13 = v3[4];
      if (v5 < v13)
      {
        goto LABEL_15;
      }

      if (v13 < v5)
      {
        goto LABEL_80;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
      goto LABEL_80;
    }

LABEL_15:
    v14 = result >> 3;
    v15 = result & 7;
    if (result >> 3 > 2)
    {
      break;
    }

    if (v14 == 1)
    {
      if (v15 != 5)
      {
        if (v15 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_83;
          }

          v18 = v3[1];
          if (v6 < v18 + result)
          {
            goto LABEL_80;
          }

          v3[3] = 9;
          v3[4] = v18 + result;
        }

        else
        {
          if (v15 != 1)
          {
            goto LABEL_80;
          }

          v18 = v3[1];
        }

        v5 = (v18 + 1);
        if (v6 < (v18 + 1))
        {
          goto LABEL_80;
        }

        v10 = *v18;
        goto LABEL_7;
      }

      v24 = v3[1];
      v5 = (v24 + 1);
      if (v6 < (v24 + 1))
      {
        goto LABEL_80;
      }

      v25 = *v24;
      v3[1] = v5;
      v10 = v25;
      goto LABEL_8;
    }

    if (v14 == 2)
    {
      if (v15 != 5)
      {
        if (v15 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_85;
          }

          v16 = v3[1];
          if (v6 < v16 + result)
          {
            goto LABEL_80;
          }

          v3[3] = 17;
          v3[4] = v16 + result;
        }

        else
        {
          if (v15 != 1)
          {
            goto LABEL_80;
          }

          v16 = v3[1];
        }

        v5 = (v16 + 1);
        if (v6 < (v16 + 1))
        {
          goto LABEL_80;
        }

        v9 = *v16;
        goto LABEL_7;
      }

      v20 = v3[1];
      v5 = (v20 + 1);
      if (v6 < (v20 + 1))
      {
        goto LABEL_80;
      }

      v21 = *v20;
      v3[1] = v5;
      v9 = v21;
      goto LABEL_8;
    }

LABEL_28:
    if ((result & 7) > 1)
    {
      if (v15 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_80:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          return swift_willThrow();
        }

        v5 = v3[1] + result;
      }

      else
      {
        if (v15 != 5)
        {
          goto LABEL_80;
        }

        v5 = v3[1] + 4;
      }

LABEL_6:
      if (v6 < v5)
      {
        goto LABEL_80;
      }

LABEL_7:
      v3[1] = v5;
      goto LABEL_8;
    }

    if ((result & 7) != 0)
    {
      if (v15 != 1)
      {
        goto LABEL_80;
      }

      v5 = v3[1] + 8;
      goto LABEL_6;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    v5 = v3[1];
LABEL_8:
    if (v5 >= v6)
    {
      goto LABEL_4;
    }
  }

  if (v14 == 3)
  {
    if (v15 != 5)
    {
      if (v15 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_84;
        }

        v19 = v3[1];
        if (v6 < v19 + result)
        {
          goto LABEL_80;
        }

        v3[3] = 25;
        v3[4] = v19 + result;
      }

      else
      {
        if (v15 != 1)
        {
          goto LABEL_80;
        }

        v19 = v3[1];
      }

      v5 = (v19 + 1);
      if (v6 < (v19 + 1))
      {
        goto LABEL_80;
      }

      v8 = *v19;
      goto LABEL_7;
    }

    v26 = v3[1];
    v5 = (v26 + 1);
    if (v6 < (v26 + 1))
    {
      goto LABEL_80;
    }

    v27 = *v26;
    v3[1] = v5;
    v8 = v27;
    goto LABEL_8;
  }

  if (v14 != 4)
  {
    goto LABEL_28;
  }

  if (v15 == 5)
  {
    v22 = v3[1];
    v5 = (v22 + 1);
    if (v6 < (v22 + 1))
    {
      goto LABEL_80;
    }

    v23 = *v22;
    v3[1] = v5;
    v7 = v23;
    goto LABEL_8;
  }

  if (v15 != 2)
  {
    if (v15 != 1)
    {
      goto LABEL_80;
    }

    v17 = v3[1];
LABEL_53:
    v5 = (v17 + 1);
    if (v6 < (v17 + 1))
    {
      goto LABEL_80;
    }

    v7 = *v17;
    goto LABEL_7;
  }

  result = ProtobufDecoder.decodeVarint()(result);
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v17 = v3[1];
    if (v6 < v17 + result)
    {
      goto LABEL_80;
    }

    v3[3] = 33;
    v3[4] = v17 + result;
    goto LABEL_53;
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
  return result;
}

uint64_t UnitCurve.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v8 + 16);
  v12(v11, a1, a2, v9);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  BinaryFloatingPoint.init<A>(_:)();
  v22 = v24;
  v14 = type metadata accessor for BezierTimingFunction(0, a2, a3, v13);
  (v12)(v11, a1 + v14[9], a2);
  BinaryFloatingPoint.init<A>(_:)();
  v21 = v23;
  (v12)(v11, a1 + v14[10], a2);
  BinaryFloatingPoint.init<A>(_:)();
  v20 = v24;
  (v12)(v11, a1 + v14[11], a2);
  BinaryFloatingPoint.init<A>(_:)();
  result = (*(*(v14 - 1) + 8))(a1, v14);
  v16 = v23;
  v17 = v20;
  v18 = v21;
  *a4 = v22;
  *(a4 + 8) = v18;
  *(a4 + 16) = v17;
  *(a4 + 24) = v16;
  *(a4 + 32) = 0;
  return result;
}

__n128 UnitCurveAnimation.curve.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  result = *(v1 + 8);
  v4 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 UnitCurveAnimation.curve.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v4;
  *(v1 + 40) = v2;
  return result;
}

void UnitCurveAnimation.animate<A>(value:time:context:)(float64x2_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, double a5@<D0>)
{
  if (a2 == MEMORY[0x1E69E63B0])
  {
    v18 = *v5 <= 0.0 || *v5 < a5;
    v19 = 0.0;
    if (!v18)
    {
      v21 = a5 / *v5;
      if (v21 > 1.0)
      {
        v21 = 1.0;
      }

      if (v21 <= 0.0)
      {
        v21 = 0.0;
      }

      v20 = a1->f64[0];
      v19 = v20 * UnitCurve.value(at:)(v21);
    }

    *a4 = v19;
    *(a4 + 8) = v18;
  }

  else
  {
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    v11 = *v5;
    if (v12 == a2)
    {
      v22 = v11 <= 0.0 || v11 < a5;
      v23 = 0uLL;
      v24 = 0uLL;
      if (!v22)
      {
        v25 = a5 / v11;
        if (v25 > 1.0)
        {
          v25 = 1.0;
        }

        if (v25 <= 0.0)
        {
          v25 = 0.0;
        }

        v27 = a1[1];
        v28 = *a1;
        v26 = UnitCurve.value(at:)(v25);
        v23 = vmulq_n_f64(v28, v26);
        v24 = vmulq_n_f64(v27, v26);
      }

      *a4 = v23;
      *(a4 + 16) = v24;
      *(a4 + 32) = v22;
    }

    else
    {
      if (v11 < a5 || v11 <= 0.0)
      {
        v15 = *(*(a2 - 8) + 56);
        v16 = a4;
        v17 = 1;
      }

      else
      {
        v13 = a5 / v11;
        if (v13 > 1.0)
        {
          v13 = 1.0;
        }

        if (v13 <= 0.0)
        {
          v13 = 0.0;
        }

        v14 = UnitCurve.value(at:)(v13);
        VectorArithmetic.scaled(by:)(a2, a3, a4, v14);
        v15 = *(*(a2 - 8) + 56);
        v16 = a4;
        v17 = 0;
      }

      v15(v16, v17, 1, a2);
    }
  }
}

uint64_t UnitCurveAnimation.velocity<A>(value:time:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v4;
  if (*v4 < v9 || v12 <= 0.0)
  {
    v18 = *(v8 + 56);

    return v18(a4, 1, 1, a2);
  }

  else
  {
    v13 = *(v4 + 40);
    v14 = v9 / v12;
    if (v14 > 1.0)
    {
      v14 = 1.0;
    }

    v15 = *(v4 + 24);
    if (v14 <= 0.0)
    {
      v14 = 0.0;
    }

    v21 = *(v4 + 8);
    v22 = v15;
    v23 = v13;
    v20 = v8;
    v16 = UnitCurve.velocity(at:)(v14);
    VectorArithmetic.scaled(by:)(a2, a3, v11, 1.0 / v12);
    VectorArithmetic.scaled(by:)(a2, a3, a4, v16);
    (*(v20 + 8))(v11, a2);
    return (*(v20 + 56))(a4, 0, 1, a2);
  }
}

void UnitCurveAnimation.function.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  if (*(v1 + 40) == 1)
  {
    v6 = v4 | v3;
    v7 = v6 | v2 | v5;
    v8 = v6 | v5;
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = v2 == 2;
    }

    if (v9)
    {
      v10 = 2;
    }

    else
    {
      v10 = 3;
    }

    v11 = v2 == 1 && v8 == 0;
    v5 = 0;
    if (v11)
    {
      v10 = 1;
    }

    v9 = v7 == 0;
    v2 = 0;
    v3 = 0;
    v4 = 0;
    if (v9)
    {
      v5 = 0;
      v10 = 0;
    }
  }

  else
  {
    v10 = 4;
  }

  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v10;
}

void UnitCurveAnimation.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v6 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v2);
  if (v7 == 1)
  {
    if (*&v6 | *&v4 | *&v3 | *&v5)
    {
      v8 = *&v6 | *&v4 | *&v5;
      if (*&v3 == 1 && v8 == 0)
      {
        v10 = 1;
      }

      else if (*&v3 != 2 || v8)
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x193AC11A0](v10);
  }

  else
  {
    MEMORY[0x193AC11A0](4);
    UnitPoint.hash(into:)(v3, v4);

    UnitPoint.hash(into:)(v6, v5);
  }
}

Swift::Int UnitCurveAnimation.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  Hasher.init(_seed:)();
  v7 = 0.0;
  if (v1 != 0.0)
  {
    v7 = v1;
  }

  MEMORY[0x193AC11E0](*&v7);
  if (v6 == 1)
  {
    if (*&v5 | *&v3 | *&v2 | *&v4)
    {
      v8 = *&v5 | *&v3 | *&v4;
      if (*&v2 == 1 && v8 == 0)
      {
        v10 = 1;
      }

      else if (*&v2 != 2 || v8)
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x193AC11A0](v10);
  }

  else
  {
    MEMORY[0x193AC11A0](4);
    UnitPoint.hash(into:)(v2, v3);
    UnitPoint.hash(into:)(v5, v4);
  }

  return Hasher._finalize()();
}

void protocol witness for InternalCustomAnimation.function.getter in conformance UnitCurveAnimation(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  if (*(v1 + 40) == 1)
  {
    v6 = v4 | v3;
    v7 = v6 | v2 | v5;
    v8 = v6 | v5;
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = v2 == 2;
    }

    if (v9)
    {
      v10 = 2;
    }

    else
    {
      v10 = 3;
    }

    v11 = v2 == 1 && v8 == 0;
    v5 = 0;
    if (v11)
    {
      v10 = 1;
    }

    v9 = v7 == 0;
    v2 = 0;
    v3 = 0;
    v4 = 0;
    if (v9)
    {
      v5 = 0;
      v10 = 0;
    }
  }

  else
  {
    v10 = 4;
  }

  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v10;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UnitCurveAnimation(uint64_t a1)
{
  Hasher.init(_seed:)();
  UnitCurveAnimation.hash(into:)(v2);
  return Hasher._finalize()();
}

BOOL specialized static UnitCurveAnimation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a1 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 8);
  if (*(a1 + 40) != 1)
  {
    return (*(a2 + 40) & 1) == 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, v5), vceqq_f64(v2, v4)))) & 1) != 0;
  }

  if (!(*&v2.f64[0] | *&v3.f64[1] | *&v3.f64[0] | *&v2.f64[1]))
  {
    return *(a2 + 40) && !(*&v4.f64[0] | *&v5.f64[0] | *&v5.f64[1] | *&v4.f64[1]);
  }

  v6 = *&v2.f64[0] | *&v3.f64[1] | *&v2.f64[1];
  if (*&v3.f64[0] == 1 && v6 == 0)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }

    v9 = *&v4.f64[0] | *&v5.f64[1] | *&v5.f64[0] | *&v4.f64[1] && *&v5.f64[0] == 1;
    return v9 && (*&v4.f64[0] | *&v5.f64[1] | *&v4.f64[1]) == 0;
  }

  if (*&v3.f64[0] == 2 && !v6)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }

    if (!(*&v4.f64[0] | *&v5.f64[1] | *&v5.f64[0] | *&v4.f64[1]))
    {
      return 0;
    }

    v8 = *&v4.f64[0] | *&v5.f64[1] | *&v4.f64[1];
    if (*&v5.f64[0] == 1 && !v8)
    {
      return 0;
    }

    return *&v5.f64[0] == 2 && !v8;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    return 0;
  }

  if (!(*&v4.f64[0] | *&v5.f64[1] | *&v5.f64[0] | *&v4.f64[1]))
  {
    return 0;
  }

  result = 1;
  if ((*&v5.f64[0] - 1) <= 1 && !(*&v4.f64[0] | *&v5.f64[1] | *&v4.f64[1]))
  {
    return 0;
  }

  return result;
}

BOOL specialized static UnitCurve.Function.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  if (*(a1 + 32) != 1)
  {
    if (*(a2 + 32))
    {
      return 0;
    }

    if (v2 == v6 && v3 == v7)
    {
      return v4 == v8 && v5 == v9;
    }

    return 0;
  }

  v10 = *&v5 | *&v3;
  if (!(v10 | *&v2 | *&v4))
  {
    if (*(a2 + 32))
    {
      return (*&v9 | *&v7 | *&v6 | *&v8) == 0;
    }

    return 0;
  }

  v11 = v10 | *&v4;
  if (*&v2 == 1 && v11 == 0)
  {
    if (*(a2 + 32))
    {
      v19 = *&v9 | *&v7;
      if (v19 | *&v6 | *&v8)
      {
        if (*&v6 == 1 && !(v19 | *&v8))
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (*&v2 != 2 || v11 != 0)
  {
    if (*(a2 + 32))
    {
      v14 = *&v9 | *&v7;
      if (v14 | *&v6 | *&v8)
      {
        v15 = v14 | *&v8;
        if (*&v6 != 1 || v15)
        {
          return *&v6 != 2 || v15 != 0;
        }
      }
    }

    return 0;
  }

  if (!*(a2 + 32))
  {
    return 0;
  }

  v20 = *&v9 | *&v7;
  if (!(v20 | *&v6 | *&v8))
  {
    return 0;
  }

  v21 = v20 | *&v8;
  if (*&v6 == 1 && !v21)
  {
    return 0;
  }

  return *&v6 == 2 && v21 == 0;
}

void lazy protocol witness table accessor for type UnitCurveAnimation and conformance UnitCurveAnimation()
{
  if (!lazy protocol witness table cache variable for type UnitCurveAnimation and conformance UnitCurveAnimation)
  {
    swift_getWitnessTable(protocol conformance descriptor for UnitCurveAnimation, &type metadata for UnitCurveAnimation, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type UnitCurveAnimation and conformance UnitCurveAnimation);
  }
}

{
  if (!lazy protocol witness table cache variable for type UnitCurveAnimation and conformance UnitCurveAnimation)
  {
    swift_getWitnessTable(protocol conformance descriptor for UnitCurveAnimation, &type metadata for UnitCurveAnimation, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type UnitCurveAnimation and conformance UnitCurveAnimation);
  }
}

{
  if (!lazy protocol witness table cache variable for type UnitCurveAnimation and conformance UnitCurveAnimation)
  {
    swift_getWitnessTable(protocol conformance descriptor for UnitCurveAnimation, &type metadata for UnitCurveAnimation, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type UnitCurveAnimation and conformance UnitCurveAnimation);
  }
}

{
  if (!lazy protocol witness table cache variable for type UnitCurveAnimation and conformance UnitCurveAnimation)
  {
    swift_getWitnessTable(protocol conformance descriptor for UnitCurveAnimation, &type metadata for UnitCurveAnimation, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type UnitCurveAnimation and conformance UnitCurveAnimation);
  }
}

void type metadata accessor for InternalAnimationBox<UnitCurveAnimation>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for InternalAnimationBox(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void lazy protocol witness table accessor for type UnitCurve.Function and conformance UnitCurve.Function()
{
  if (!lazy protocol witness table cache variable for type UnitCurve.Function and conformance UnitCurve.Function)
  {
    swift_getWitnessTable(protocol conformance descriptor for UnitCurve.Function, &type metadata for UnitCurve.Function, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type UnitCurve.Function and conformance UnitCurve.Function);
  }
}

void lazy protocol witness table accessor for type UnitCurve and conformance UnitCurve()
{
  if (!lazy protocol witness table cache variable for type UnitCurve and conformance UnitCurve)
  {
    swift_getWitnessTable(protocol conformance descriptor for UnitCurve, &type metadata for UnitCurve, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type UnitCurve and conformance UnitCurve);
  }
}

void lazy protocol witness table accessor for type UnitCurve.CubicSolver and conformance UnitCurve.CubicSolver()
{
  if (!lazy protocol witness table cache variable for type UnitCurve.CubicSolver and conformance UnitCurve.CubicSolver)
  {
    swift_getWitnessTable(protocol conformance descriptor for UnitCurve.CubicSolver, &type metadata for UnitCurve.CubicSolver, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type UnitCurve.CubicSolver and conformance UnitCurve.CubicSolver);
  }
}

void instantiation function for generic protocol witness table for UnitCurveAnimation(uint64_t a1)
{
  lazy protocol witness table accessor for type UnitCurveAnimation and conformance UnitCurveAnimation();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type UnitCurveAnimation and conformance UnitCurveAnimation();
  *(a1 + 8) = v2;
}

uint64_t storeEnumTagSinglePayload for UnitCurve.Function(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
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

  *(result + 33) = v3;
  return result;
}

uint64_t _MatchedGeometryEffect.init(id:namespace:properties:anchor:isSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  (*(*(a5 - 8) + 32))(a7, a1, a5);
  result = type metadata accessor for _MatchedGeometryEffect(0, a5, a6, v17);
  *(a7 + *(result + 36)) = a2;
  v19 = a7 + *(result + 40);
  *v19 = a3;
  *(v19 + 8) = a8;
  *(v19 + 16) = a9;
  *(v19 + 24) = a4;
  return result;
}

uint64_t View.matchedGeometryEffect<A, B>(id:in:clipShape:properties:anchor:isSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v51 = a6;
  v46 = a4;
  v47 = a5;
  v49 = a3;
  v50 = a9;
  v42 = a14;
  v43 = a1;
  v44 = *(a8 - 8);
  v45 = a2;
  v48 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v25;
  v41 = v25;
  v29 = type metadata accessor for _MatchedGeometryEffect(0, v28, v25, v27);
  v30 = v29 - 8;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v41 - v31;
  v52[0] = a7;
  v52[1] = a8;
  v52[2] = v26;
  v52[3] = a14;
  v33 = type metadata accessor for MatchedGeometryEffect2(0, v52);
  v34 = *(v33 - 8);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v37 = &v41 - v36;
  (*(v21 + 16))(v24, v43, a7, v35);
  (*(v21 + 32))(v32, v24, a7);
  *&v32[*(v30 + 44)] = v45;
  v38 = &v32[*(v30 + 48)];
  v39 = v47;
  *v38 = v46;
  *(v38 + 1) = a10;
  *(v38 + 2) = a11;
  v38[24] = v39;
  (*(v44 + 16))(v19, v49, a8);
  MatchedGeometryEffect2.init(base:clipShape:)(v32, v19, a7, a8, v41, v42, v37);
  View.modifier<A>(_:)();
  return (*(v34 + 8))(v37, v33);
}

uint64_t MatchedGeometryEffect2.init(base:clipShape:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for _MatchedGeometryEffect(0, a3, a5, a4);
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v15 = type metadata accessor for MatchedGeometryEffect2(0, v17);
  return (*(*(a4 - 8) + 32))(a7 + *(v15 + 52), a2, a4);
}

uint64_t _MatchedGeometryEffect.args.setter(uint64_t result, char a2, uint64_t a3, double a4, double a5)
{
  v6 = v5 + *(a3 + 40);
  *v6 = result;
  *(v6 + 8) = a4;
  *(v6 + 16) = a5;
  *(v6 + 24) = a2;
  return result;
}

void lazy protocol witness table accessor for type MatchedGeometryProperties and conformance MatchedGeometryProperties()
{
  if (!lazy protocol witness table cache variable for type MatchedGeometryProperties and conformance MatchedGeometryProperties)
  {
    swift_getWitnessTable(protocol conformance descriptor for MatchedGeometryProperties, &type metadata for MatchedGeometryProperties, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type MatchedGeometryProperties and conformance MatchedGeometryProperties);
  }
}

{
  if (!lazy protocol witness table cache variable for type MatchedGeometryProperties and conformance MatchedGeometryProperties)
  {
    swift_getWitnessTable(protocol conformance descriptor for MatchedGeometryProperties, &type metadata for MatchedGeometryProperties, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type MatchedGeometryProperties and conformance MatchedGeometryProperties);
  }
}

{
  if (!lazy protocol witness table cache variable for type MatchedGeometryProperties and conformance MatchedGeometryProperties)
  {
    swift_getWitnessTable(protocol conformance descriptor for MatchedGeometryProperties, &type metadata for MatchedGeometryProperties, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type MatchedGeometryProperties and conformance MatchedGeometryProperties);
  }
}

{
  if (!lazy protocol witness table cache variable for type MatchedGeometryProperties and conformance MatchedGeometryProperties)
  {
    swift_getWitnessTable(protocol conformance descriptor for MatchedGeometryProperties, &type metadata for MatchedGeometryProperties, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type MatchedGeometryProperties and conformance MatchedGeometryProperties);
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for _MatchedGeometryEffect(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) == 0 && ((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFFFFFFFE7)
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v11;
    v12 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
    v13 = *v12;
    v14 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
    *(v14 + 9) = *(v12 + 9);
    *v14 = v13;
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  return v3;
}

uint64_t initializeWithTake for _MatchedGeometryEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = *(v10 + 9);
  *v9 = *v10;
  *(v9 + 9) = v11;
  return a1;
}

uint64_t assignWithTake for _MatchedGeometryEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  *(v9 + 16) = *(v10 + 16);
  *(v9 + 24) = *(v10 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for _MatchedGeometryEffect(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 25;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_20;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_27;
  }

  if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_27:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 2)
    {
      return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

LABEL_20:
  v14 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v15 = *a1;
  }

  else
  {
    v14 = 0;
    v15 = *a1;
  }

  return v7 + (v15 | v14) + 1;
}

void storeEnumTagSinglePayload for _MatchedGeometryEffect(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 25;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFE)
      {
        v18 = ((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFE)
        {
          *(v18 + 8) = 0;
          *(v18 + 16) = 0;
          *(v18 + 24) = 0;
          *v18 = a2 - 255;
        }

        else
        {
          *(v18 + 24) = a2 + 1;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 25);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t static MatchedGeometryEffect2._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v13 = *a1;
  v14 = a2[3];
  v37 = a2[2];
  v38 = v14;
  v39 = a2[4];
  v40 = *(a2 + 20);
  v15 = a2[1];
  v35 = *a2;
  v36 = v15;
  LODWORD(v41[0]) = v13;
  *&v27 = a5;
  *(&v27 + 1) = a6;
  *&v28 = a7;
  *(&v28 + 1) = a8;
  v16 = type metadata accessor for MatchedGeometryEffect2(255, &v27);
  type metadata accessor for _GraphValue(0, v16, v17, v18);
  _GraphValue.subscript.getter(partial apply for closure #1 in static MatchedGeometryEffect2._makeView(modifier:inputs:body:), a6, &v34);
  v27 = v35;
  v28 = v36;
  v29 = v37;
  v19 = *(a8 + 8);
  v20 = *(v19 + 48);
  outlined init with copy of _GraphInputs(&v35, v41);
  v20(&v34, &v27, a6, v19);
  v41[0] = v27;
  v41[1] = v28;
  v41[2] = v29;
  outlined destroy of _GraphInputs(v41);
  v33[1] = v13;
  v22 = type metadata accessor for _MatchedGeometryEffect(0, a5, a7, v21);
  _GraphValue.subscript.getter(partial apply for closure #2 in static MatchedGeometryEffect2._makeView(modifier:inputs:body:), v22, v33);
  v29 = v37;
  v30 = v38;
  v31 = v39;
  v32 = v40;
  v27 = v35;
  v28 = v36;
  return static _MatchedGeometryEffect.makeView<A>(modifier:inputs:clipShape:body:)(v33, &v27, v34, a3, a4, a5, a6, a7, a9, a8);
}

uint64_t closure #1 in static MatchedGeometryEffect2._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v7 = type metadata accessor for MatchedGeometryEffect2(0, v13);
  v8 = *(v7 + 52);
  v12[2] = v7;
  v12[3] = a3;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, closure #1 in static PointerOffset.of(_:)partial apply, v12, a3, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13[0];
}

uint64_t closure #2 in static MatchedGeometryEffect2._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  v12[2] = type metadata accessor for MatchedGeometryEffect2(0, v14);
  v13 = type metadata accessor for _MatchedGeometryEffect(0, a2, a4, v8);
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v12, v13, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v14[0];
}

void MatchedGeometryScope.releaseFrame(index:owner:)(int64_t a1, char *a2)
{
  v6 = v2;
  swift_beginAccess();
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v3 = *(v6 + 112);
  if (*(v3 + 2) <= a1)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    *(v6 + 112) = v3;
    goto LABEL_9;
  }

  v5 = a1 << 6;
  v9 = *&v3[64 * a1 + 80];
  v10 = *(v9 + 16);
  if (!v10)
  {
    return;
  }

  v4 = 0;
  v11 = (v9 + 32);
  while (1)
  {
    v12 = *v11;
    v11 += 7;
    if (v12 == a2)
    {
      break;
    }

    if (v10 == ++v4)
    {
      return;
    }
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + 112) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_9:
  if (*(v3 + 2) <= a1)
  {
    __break(1u);
    goto LABEL_24;
  }

  v14 = &v3[v5];
  a2 = &v3[v5 + 80];
  specialized Array.remove(at:)(v4, v17);
  *(v6 + 112) = v3;
  swift_endAccess();
  if (*(v3 + 2) <= a1)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    goto LABEL_13;
  }

  if (!*(*(v14 + 10) + 16))
  {
    outlined init with copy of AnyHashable((v14 + 40), v17);
    swift_beginAccess();
    specialized Dictionary.removeValue(forKey:)(v17);
    swift_endAccess();
    outlined destroy of AnyHashable(v17);
    lazy protocol witness table accessor for type MatchedGeometryScope.EmptyKey and conformance MatchedGeometryScope.EmptyKey();
    AnyHashable.init<A>(_:)();
    swift_beginAccess();
    a2 = *(v6 + 112);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 112) = a2;
    if (v16)
    {
LABEL_16:
      if (*(a2 + 2) <= a1)
      {
        __break(1u);
        return;
      }

      outlined assign with take of AnyHashable(v17, &a2[v5 + 40]);
      *(v6 + 112) = a2;
      goto LABEL_18;
    }

LABEL_27:
    a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
    *(v6 + 112) = a2;
    goto LABEL_16;
  }

  swift_beginAccess();
  v15 = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + 112) = v3;
  if ((v15 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_13:
  if (*(v3 + 2) <= a1)
  {
    __break(1u);
    goto LABEL_27;
  }

  ++*&v3[v5 + 88];
  *(v6 + 112) = v3;
LABEL_18:
  swift_endAccess();
}

void closure #2 in MatchedGeometryScope.frame<A>(index:for:view:)(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      v6 = __CocoaSet.count.getter();
      if (v6)
      {
        v3 = v6;
        if (v6 >= 1)
        {
LABEL_3:
          for (i = 0; i != v3; ++i)
          {
            if ((v2 & 0xC000000000000001) != 0)
            {
              v5 = MEMORY[0x193AC03C0](i, v2);
            }

            else
            {
              v5 = *(v2 + 8 * i + 32);
            }

            (*(*v5 + 96))();
          }

          goto LABEL_12;
        }

        __break(1u);
      }

LABEL_12:

      *(a1 + 24) = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
}

double destroy for MatchedGeometryScope.Frame(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1((a1 + 8));

  return result;
}

uint64_t assignWithCopy for MatchedGeometryScope.Frame(uint64_t a1, uint64_t a2, __n128 a3)
{
  *a1 = *a2;
  __swift_assign_boxed_opaque_existential_1((a1 + 8), (a2 + 8), a3);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  return a1;
}

__n128 __swift_memcpy61_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t assignWithTake for MatchedGeometryScope.Frame(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  __swift_destroy_boxed_opaque_existential_1((a1 + 8));
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  return a1;
}

uint64_t type metadata completion function for MatchedGeometryEffect2(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for _MatchedGeometryEffect(319, a1[2], a1[4], a4);
  if (v5 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for MatchedGeometryEffect2(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 25;
  v10 = v8 | *(v4 + 80) & 0xF8;
  if (v10 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || (v9 & ~v8) + *(v7 + 64) > 0x18)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + (((v10 | 7) + 16) & ~(v10 | 7)));
  }

  else
  {
    v14 = ~v8;
    (*(v4 + 16))(a1);
    v16 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v17 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v16 = *v17;
    v18 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
    v19 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
    v20 = *v19;
    *(v18 + 9) = *(v19 + 9);
    *v18 = v20;
    (*(v7 + 16))((v3 + v9) & v14, (a2 + v9) & v14, v6);
  }

  return v3;
}

uint64_t destroy for MatchedGeometryEffect2(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(*(a2 + 24) - 8);
  v6 = *(v5 + 8);
  v7 = (a1 + *(v5 + 80) + ((((*(v4 + 56) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 25) & ~*(v5 + 80);

  return v6(v7);
}

uint64_t initializeWithCopy for MatchedGeometryEffect2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48) + 7;
  v8 = ((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + a1) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v8;
  v10 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = *(v11 + 9);
  *v10 = *v11;
  *(v10 + 9) = v12;
  v13 = *(*(a3 + 24) - 8);
  v14 = *(v13 + 80);
  v15 = (((v7 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v14 + 25;
  (*(v13 + 16))((v15 + a1) & ~v14, (v15 + a2) & ~v14);
  return a1;
}

uint64_t assignWithCopy for MatchedGeometryEffect2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40) + 7;
  v8 = ((v7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v9;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v10 = *v11;
  *(v10 + 8) = *(v11 + 8);
  *(v10 + 16) = *(v11 + 16);
  *(v10 + 24) = *(v11 + 24);
  v12 = *(*(a3 + 24) - 8);
  v13 = *(v12 + 80);
  v14 = (((v7 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v13 + 25;
  (*(v12 + 24))((v14 + a1) & ~v13, (v14 + a2) & ~v13);
  return a1;
}

uint64_t initializeWithTake for MatchedGeometryEffect2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32) + 7;
  v8 = ((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + a1) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v8;
  v10 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = *(v11 + 9);
  *v10 = *v11;
  *(v10 + 9) = v12;
  v13 = *(*(a3 + 24) - 8);
  v14 = *(v13 + 80);
  v15 = (((v7 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v14 + 25;
  (*(v13 + 32))((v15 + a1) & ~v14, (v15 + a2) & ~v14);
  return a1;
}

uint64_t assignWithTake for MatchedGeometryEffect2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24) + 7;
  v8 = ((v7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v9;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v10 = *v11;
  *(v10 + 8) = *(v11 + 8);
  *(v10 + 16) = *(v11 + 16);
  *(v10 + 24) = *(v11 + 24);
  v12 = *(*(a3 + 24) - 8);
  v13 = *(v12 + 80);
  v14 = (((v7 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v13 + 25;
  (*(v12 + 40))((v14 + a1) & ~v13, (v14 + a2) & ~v13);
  return a1;
}

uint64_t getEnumTagSinglePayload for MatchedGeometryEffect2(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0xFE)
  {
    v6 = 254;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(*(*(a3 + 16) - 8) + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = ((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 25;
  v14 = a2 - v12;
  if (a2 <= v12)
  {
    goto LABEL_30;
  }

  v15 = (v13 & ~v11) + *(*(v7 - 8) + 64);
  v16 = 8 * v15;
  if (v15 > 3)
  {
    goto LABEL_10;
  }

  v18 = ((v14 + ~(-1 << v16)) >> v16) + 1;
  if (HIWORD(v18))
  {
    v17 = *(a1 + v15);
    if (v17)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v18 <= 0xFF)
    {
      if (v18 < 2)
      {
        goto LABEL_30;
      }

LABEL_10:
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_30;
      }

LABEL_17:
      v19 = (v17 - 1) << v16;
      if (v15 > 3)
      {
        v19 = 0;
      }

      if (v15)
      {
        if (v15 <= 3)
        {
          v20 = v15;
        }

        else
        {
          v20 = 4;
        }

        if (v20 > 2)
        {
          if (v20 == 3)
          {
            v21 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v21 = *a1;
          }
        }

        else if (v20 == 1)
        {
          v21 = *a1;
        }

        else
        {
          v21 = *a1;
        }
      }

      else
      {
        v21 = 0;
      }

      return v12 + (v21 | v19) + 1;
    }

    v17 = *(a1 + v15);
    if (*(a1 + v15))
    {
      goto LABEL_17;
    }
  }

LABEL_30:
  if (v6 < v9)
  {
    return (*(v8 + 48))((a1 + v13) & ~v11, v9, v7);
  }

  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v23 = *(((((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24);
  if (v23 < 2)
  {
    return 0;
  }

  return ((v23 + 2147483646) & 0x7FFFFFFF) + 1;
}

void storeEnumTagSinglePayload for MatchedGeometryEffect2(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  v13 = *(v10 + 80);
  if (v11 <= v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = ((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 25;
  v16 = ((v15 + v13) & ~v13) + *(*(v9 - 8) + 64);
  v17 = a3 >= v14;
  v18 = a3 - v14;
  if (v18 != 0 && v17)
  {
    if (v16 <= 3)
    {
      v22 = ((v18 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v14 < a2)
  {
    v20 = ~v14 + a2;
    if (v16 < 4)
    {
      v21 = (v20 >> (8 * v16)) + 1;
      if (v16)
      {
        v24 = v20 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v24;
            if (v19 > 1)
            {
LABEL_53:
              if (v19 == 2)
              {
                *&a1[v16] = v21;
              }

              else
              {
                *&a1[v16] = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v19 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v24;
        a1[2] = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v19)
    {
      a1[v16] = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v16] = 0;
  }

  else if (v19)
  {
    a1[v16] = 0;
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
  if (v8 >= v11)
  {
    if (v8 >= a2)
    {
      if (v7 < 0xFE)
      {
        v28 = ((&a1[v12 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFE)
        {
          *(v28 + 8) = 0;
          *(v28 + 16) = 0;
          *(v28 + 24) = 0;
          *v28 = a2 - 255;
        }

        else
        {
          *(v28 + 24) = a2 + 1;
        }
      }

      else
      {
        v27 = *(v6 + 56);

        v27(a1);
      }
    }

    else
    {
      v26 = ~v8 + a2;
      bzero(a1, ((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 25);
      if (v15 <= 3)
      {
        *a1 = v26;
      }

      else
      {
        *a1 = v26;
      }
    }
  }

  else
  {
    v25 = *(v10 + 56);

    v25(&a1[v15 + v13] & ~v13);
  }
}

void protocol witness for static _AttributeBody._destroySelf(_:) in conformance SharedFrame(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v3 = *(a1 + 24);
  if (v3 >> 62)
  {
    v4 = __CocoaSet.count.getter();
    if (v4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_5:
      if (v4 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v4; ++i)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x193AC03C0](i, v3);
        }

        else
        {
          v6 = *(v3 + 8 * i + 32);
        }

        (*(*v6 + 96))();
      }
    }
  }

  *(a1 + 24) = MEMORY[0x1E69E7CC0];
}

void MatchedSharedFrame.destroy()()
{
  if ((*(v0 + 48) & 1) == 0)
  {
    MatchedGeometryScope.releaseFrame(index:owner:)(*(v0 + 40), *(v0 + 52));
    *(v0 + 40) = 0;
    *(v0 + 48) = 1;
  }
}

uint64_t static MatchedSharedFrame.willRemove(attribute:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AGGraphGetAttributeInfo();
  v6 = v5;
  v8 = type metadata accessor for MatchedSharedFrame(0, a2, a3, v7);
  if ((*(v6 + 48) & 1) == 0)
  {
    MatchedGeometryScope.releaseFrame(index:owner:)(*(v6 + 40), *(v6 + 52));
    *(v6 + 40) = 0;
    *(v6 + 48) = 1;
  }

  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  return AGGraphMutateAttribute();
}

uint64_t MatchedDisplayList.sharedFrame.getter(uint64_t a1)
{
  type metadata accessor for (ViewFrame?, AnyOptionalAttribute)(0);
  Value = AGGraphGetValue();
  v3 = *(Value + 48);
  v4 = *(Value + 52);
  v5 = *(Value + 16);
  *a1 = *Value;
  *(a1 + 16) = v5;
  *(a1 + 32) = *(Value + 32);
  *(a1 + 48) = v3;
  return v4;
}

double MatchedDisplayList.transform.getter@<D0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  *a1 = *Value;
  *(a1 + 8) = v3;
  v4 = *(Value + 32);
  *(a1 + 16) = *(Value + 16);
  *(a1 + 32) = v4;

  return result;
}

uint64_t MatchedDisplayList.clipShape.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 32);
  v6 = *(a1 + 16);
  if (v5 == *MEMORY[0x1E698D3F8])
  {
    v7 = *(v6 - 8);
    v8 = 1;
  }

  else
  {
    Value = AGGraphGetValue();
    v12 = *(v6 - 8);
    (*(v12 + 16))(a2, Value, v6);
    v7 = v12;
    v8 = 0;
  }

  v10 = *(v7 + 56);

  return v10(a2, v8, 1, v6);
}

uint64_t assignWithCopy for MatchedSharedFrame(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  v4 = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  return a1;
}

uint64_t assignWithTake for MatchedSharedFrame(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 60) = *(a2 + 60);
  return a1;
}

uint64_t getEnumTagSinglePayload for MatchedGeometryScope.Frame(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 61))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MatchedGeometryScope.Frame(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 61) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 61) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MatchedDisplayList(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 37))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MatchedDisplayList(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
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

  *(result + 37) = v3;
  return result;
}

void lazy protocol witness table accessor for type MatchedGeometryScope.EmptyKey and conformance MatchedGeometryScope.EmptyKey()
{
  if (!lazy protocol witness table cache variable for type MatchedGeometryScope.EmptyKey and conformance MatchedGeometryScope.EmptyKey)
  {
    swift_getWitnessTable(protocol conformance descriptor for MatchedGeometryScope.EmptyKey, &unk_1F005C320, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type MatchedGeometryScope.EmptyKey and conformance MatchedGeometryScope.EmptyKey);
  }
}

{
  if (!lazy protocol witness table cache variable for type MatchedGeometryScope.EmptyKey and conformance MatchedGeometryScope.EmptyKey)
  {
    swift_getWitnessTable(protocol conformance descriptor for MatchedGeometryScope.EmptyKey, &unk_1F005C320, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type MatchedGeometryScope.EmptyKey and conformance MatchedGeometryScope.EmptyKey);
  }
}

uint64_t assignWithCopy for SharedFrame(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

__n128 __swift_memcpy52_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t assignWithTake for SharedFrame(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for SharedFrame(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 52))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SharedFrame(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 52) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 52) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t Color.ResolvedHDR.init(platformColor:)(void *a1)
{
  result = specialized Color.Resolved.init(platformColor:)(a1);
  if (v2)
  {
    return 0;
  }

  return result;
}

uint64_t static PlatformColorDefinition.resolvedHDRColor(_:environment:)(uint64_t a1, __int128 *a2)
{
  v5 = *a2;
  result = (*(v2 + 96))(a1, &v5);
  if (v4)
  {
    return 0;
  }

  return result;
}

id specialized PlatformColorProvider.staticColor.getter(id result)
{
  v1 = result;
  if (one-time initialization token for safeDefinition != -1)
  {
    result = swift_once();
  }

  if (static UIKitPlatformColorProvider.safeDefinition)
  {
    v2 = *(static UIKitPlatformColorProvider.safeDefinition + 10);
    v2((&v3 + 1));
    if (CoreColorDependsOnEnvironment(v1, SBYTE1(v3)))
    {
      return 0;
    }

    else
    {
      v2(&v3);
      return CGColorForCoreColor(v3, v1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id specialized PlatformColorProvider.staticColor.getter(void *a1)
{
  v2 = swift_beginAccess();
  v3 = static PlatformColorDefinition.appKitInternal;
  if (!static PlatformColorDefinition.appKitInternal)
  {
    v2 = swift_beginAccess();
    v3 = static PlatformColorDefinition.appKit;
    if (!static PlatformColorDefinition.appKit)
    {
      result = CoreColorGetKitColorClass(1);
      if (!result || (swift_getObjCClassMetadata(), type metadata accessor for NSObject(), (result = swift_dynamicCastMetatype()) == 0) || (result = [swift_getObjCClassFromMetadata() _swiftUI_platformColorDefinition]) == 0)
      {
        __break(1u);
        goto LABEL_18;
      }

      type metadata accessor for PlatformColorDefinition();
      v2 = swift_dynamicCastMetatypeUnconditional();
      v3 = v2;
      static PlatformColorDefinition.appKit = v2;
    }
  }

  (v3)[10](v6 + 1, v2);
  if (CoreColorDependsOnEnvironment(a1, SBYTE1(v6[0])))
  {
    return 0;
  }

  v5 = static PlatformColorDefinition.appKitInternal;
  if (static PlatformColorDefinition.appKitInternal)
  {
    goto LABEL_15;
  }

  swift_beginAccess();
  v5 = static PlatformColorDefinition.appKit;
  if (static PlatformColorDefinition.appKit)
  {
    goto LABEL_15;
  }

  result = CoreColorGetKitColorClass(1);
  if (!result || (swift_getObjCClassMetadata(), type metadata accessor for NSObject(), (result = swift_dynamicCastMetatype()) == 0) || (result = [swift_getObjCClassFromMetadata() _swiftUI_platformColorDefinition]) == 0)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  type metadata accessor for PlatformColorDefinition();
  v5 = swift_dynamicCastMetatypeUnconditional();
  static PlatformColorDefinition.appKit = v5;
LABEL_15:
  (*(v5 + 10))(v6);
  return CGColorForCoreColor(LOBYTE(v6[0]), a1);
}

void *specialized static PlatformColorProvider.deserialize(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (one-time initialization token for safeDefinition != -1)
  {
    swift_once();
  }

  if (static UIKitPlatformColorProvider.safeDefinition)
  {
    v5 = (*(static UIKitPlatformColorProvider.safeDefinition + 11))();
    result = static NSSecureCoding.deserialize(from:)(a1, v5);
    if (!v2)
    {
      *a2 = result;
    }
  }

  else
  {
    v7 = type metadata accessor for DecodingError();
    swift_allocError();
    v9 = v8;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of Decoder.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6B00], v7);
    return swift_willThrow();
  }

  return result;
}

{
  v5 = swift_beginAccess();
  v6 = static PlatformColorDefinition.appKitInternal;
  if (!static PlatformColorDefinition.appKitInternal)
  {
    v5 = swift_beginAccess();
    v6 = static PlatformColorDefinition.appKit;
    if (!static PlatformColorDefinition.appKit)
    {
      if (!CoreColorGetKitColorClass(1) || (swift_getObjCClassMetadata(), type metadata accessor for NSObject(), !swift_dynamicCastMetatype()) || ![swift_getObjCClassFromMetadata() _swiftUI_platformColorDefinition])
      {
        v9 = type metadata accessor for DecodingError();
        swift_allocError();
        v11 = v10;
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        dispatch thunk of Decoder.codingPath.getter();
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v9 - 8) + 104))(v11, *MEMORY[0x1E69E6B00], v9);
        return swift_willThrow();
      }

      type metadata accessor for PlatformColorDefinition();
      v5 = swift_dynamicCastMetatypeUnconditional();
      v6 = v5;
      static PlatformColorDefinition.appKit = v5;
    }
  }

  v7 = v6[11](v5);
  result = static NSSecureCoding.deserialize(from:)(a1, v7);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void one-time initialization function for safeDefinition()
{
  swift_beginAccess();
  v0 = static PlatformColorDefinition.uiKitInternal;
  if (!static PlatformColorDefinition.uiKitInternal)
  {
    swift_beginAccess();
    v0 = static PlatformColorDefinition.uiKit;
    if (!static PlatformColorDefinition.uiKit)
    {
      if (CoreColorGetKitColorClass(0) && (swift_getObjCClassMetadata(), type metadata accessor for NSObject(), swift_dynamicCastMetatype()))
      {
        v0 = [swift_getObjCClassFromMetadata() _swiftUI_platformColorDefinition];
        if (v0)
        {
          type metadata accessor for PlatformColorDefinition();
          v0 = swift_dynamicCastMetatypeUnconditional();
          swift_beginAccess();
          static PlatformColorDefinition.uiKit = v0;
        }
      }

      else
      {
        v0 = 0;
      }
    }
  }

  static UIKitPlatformColorProvider.safeDefinition = v0;
}

void *static PlatformColorDefinition.for (system:)(_BYTE *a1)
{
  if (*a1 == 1)
  {
    swift_beginAccess();
    result = static PlatformColorDefinition.appKitInternal;
    if (static PlatformColorDefinition.appKitInternal)
    {
      return result;
    }

    v2 = &static PlatformColorDefinition.appKit;
  }

  else
  {
    swift_beginAccess();
    result = static PlatformColorDefinition.uiKitInternal;
    if (static PlatformColorDefinition.uiKitInternal)
    {
      return result;
    }

    v2 = &static PlatformColorDefinition.uiKit;
  }

  swift_beginAccess();
  return *v2;
}

id static PlatformColorDefinition.for (_:)(uint64_t a1)
{
  type metadata accessor for NSObject();
  result = swift_dynamicCastMetatype();
  if (result)
  {
    result = [swift_getObjCClassFromMetadata() _swiftUI_platformColorDefinition];
    if (result)
    {
      type metadata accessor for PlatformColorDefinition();
      return swift_dynamicCastMetatypeUnconditional();
    }
  }

  return result;
}

void *static UIKitPlatformColorProvider.safeDefinition.getter()
{
  if (one-time initialization token for safeDefinition != -1)
  {
    swift_once();
  }

  return static UIKitPlatformColorProvider.safeDefinition;
}

Swift::Int UIKitPlatformColorProvider.hashValue.getter()
{
  Hasher.init(_seed:)();
  v0 = NSObject.hashValue.getter();
  MEMORY[0x193AC11A0](v0);
  return Hasher._finalize()();
}

double protocol witness for ColorProvider.resolveHDR(in:) in conformance AppKitPlatformColorProvider@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized PlatformColorProvider.resolveHDR(in:)(*a1, a1[1], *v2, &v5);
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UIKitPlatformColorProvider(uint64_t a1)
{
  Hasher.init(_seed:)();
  v1 = NSObject.hashValue.getter();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

void static PlatformColorDefinition.setDefinition(_:system:)(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    v3 = &static PlatformColorDefinition.appKit;
  }

  else
  {
    if (*a2)
    {
      return;
    }

    v3 = &static PlatformColorDefinition.uiKit;
  }

  swift_beginAccess();
  if (!*v3)
  {
    *v3 = a1;
  }
}

void static PlatformColorDefinition.setInternalDefinition(_:system:)(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    v3 = &static PlatformColorDefinition.appKitInternal;
  }

  else
  {
    if (*a2)
    {
      return;
    }

    v3 = &static PlatformColorDefinition.uiKitInternal;
  }

  swift_beginAccess();
  if (!*v3)
  {
    *v3 = a1;
  }
}

id specialized static AppKitPlatformColorProvider.safeDefinition.getter()
{
  swift_beginAccess();
  result = static PlatformColorDefinition.appKitInternal;
  if (!static PlatformColorDefinition.appKitInternal)
  {
    swift_beginAccess();
    result = static PlatformColorDefinition.appKit;
    if (!static PlatformColorDefinition.appKit)
    {
      result = CoreColorGetKitColorClass(1);
      if (result)
      {
        swift_getObjCClassMetadata();
        type metadata accessor for NSObject();
        result = swift_dynamicCastMetatype();
        if (result)
        {
          result = [swift_getObjCClassFromMetadata() _swiftUI_platformColorDefinition];
          if (result)
          {
            type metadata accessor for PlatformColorDefinition();
            result = swift_dynamicCastMetatypeUnconditional();
            static PlatformColorDefinition.appKit = result;
          }
        }
      }
    }
  }

  return result;
}

void instantiation function for generic protocol witness table for AppKitPlatformColorProvider(uint64_t a1)
{
  lazy protocol witness table accessor for type AppKitPlatformColorProvider and conformance AppKitPlatformColorProvider();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type AppKitPlatformColorProvider and conformance AppKitPlatformColorProvider();
  *(a1 + 8) = v2;
}

void lazy protocol witness table accessor for type AppKitPlatformColorProvider and conformance AppKitPlatformColorProvider()
{
  if (!lazy protocol witness table cache variable for type AppKitPlatformColorProvider and conformance AppKitPlatformColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for AppKitPlatformColorProvider, &type metadata for AppKitPlatformColorProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AppKitPlatformColorProvider and conformance AppKitPlatformColorProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type AppKitPlatformColorProvider and conformance AppKitPlatformColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for AppKitPlatformColorProvider, &type metadata for AppKitPlatformColorProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AppKitPlatformColorProvider and conformance AppKitPlatformColorProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type AppKitPlatformColorProvider and conformance AppKitPlatformColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for AppKitPlatformColorProvider, &type metadata for AppKitPlatformColorProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AppKitPlatformColorProvider and conformance AppKitPlatformColorProvider);
  }
}

void specialized GradientLayer.GradientGeometry.init(size:function:bounds:)(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>, CGFloat a7@<D4>, CGFloat a8@<D5>)
{
  v8 = a4;
  v9 = a3;
  v12 = *a1;
  v11 = *(a1 + 8);
  v14 = *(a1 + 16);
  v13 = *(a1 + 24);
  v15 = *(a1 + 32);
  if (v15 <= 1)
  {
    v24 = *MEMORY[0x1E6979DA0];
    if (*(a1 + 32))
    {
      v25 = *a1;
      v26 = *(a1 + 8);
      v27 = *(a1 + 16);
      v28 = *(a1 + 24);
    }

    else
    {
      v25 = v12 * a7 + a5;
      v26 = v11 * a8 + a6;
      v27 = v14 * a7 + a5;
      v28 = v13 * a8 + a6;
    }

    v16 = makeAxis #1 (start:end:) in GradientLayer.GradientGeometry.init(size:function:bounds:)(v25, v26, v27, v28, v9, v8);
    v17 = v39;
    v21 = v40;
    v22 = v41;
    v23 = v24;
    goto LABEL_17;
  }

  if (v15 == 2)
  {
    if (v14 > v13)
    {
      v29 = *(a1 + 16);
    }

    else
    {
      v29 = *(a1 + 24);
    }

    v34 = *MEMORY[0x1E6979DB0];
    v45.origin.x = a5;
    v45.origin.y = a6;
    v45.size.width = a7;
    v45.size.height = a8;
    v42 = v29 / CGRectGetWidth(v45);
    v46.origin.x = a5;
    v46.origin.y = a6;
    v46.size.width = a7;
    v46.size.height = a8;
    v35 = v29 / CGRectGetHeight(v46);
    v16 = (v12 * a7 + a5) / a3;
    v17 = (v11 * a8 + a6) / a4;
    v36 = (v12 - v42) * a7 + a5;
    v9 = a3;
    v8 = a4;
    v37 = (v11 - v35) * a8 + a6;
    v21 = v36 / a3;
    v22 = v37 / a4;
  }

  else
  {
    if (v15 == 3)
    {
      v16 = (v12 * a7 + a5) / a3;
      v17 = (v11 * a8 + a6) / a4;
      if (v14 > v13)
      {
        v18 = *(a1 + 16);
      }

      else
      {
        v18 = *(a1 + 24);
      }

      v19 = v12 - v18;
      v20 = (v11 - v18) * a8 + a6;
      v21 = (v19 * a7 + a5) / v9;
      v22 = v20 / v8;
      v23 = *MEMORY[0x1E6979DB0];
LABEL_17:
      v34 = v23;
      goto LABEL_18;
    }

    v16 = (v12 * a7 + a5) / a3;
    v17 = (v11 * a8 + a6) / a4;
    v34 = *MEMORY[0x1E6979DA8];
    v38 = __sincos_stret(v14);
    v21 = v16 + v38.__cosval;
    v22 = v17 + v38.__sinval;
  }

LABEL_18:
  *a2 = v9;
  *(a2 + 8) = v8;
  *(a2 + 16) = v16;
  *(a2 + 24) = v17;
  *(a2 + 32) = v21;
  *(a2 + 40) = v22;
  *(a2 + 48) = v34;
}

uint64_t initializeWithCopy for GradientLayer.GradientGeometry(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 48) = v4;
  v5 = v4;
  return a1;
}

void *assignWithCopy for GradientLayer.GradientGeometry(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  v3 = a2[6];
  v4 = a1[6];
  a1[6] = v3;
  v5 = v3;

  return a1;
}

uint64_t assignWithTake for GradientLayer.GradientGeometry(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for AlignedTimelineSchedule.Entries(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      _s10Foundation4DateVSgMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v11 = *(a3 + 20);
    v12 = *(a3 + 24);
    *(a1 + v11) = *(a2 + v11);
    v13 = type metadata accessor for DateComponents();
    (*(*(v13 - 8) + 16))(a1 + v12, a2 + v12, v13);
  }

  return a1;
}

uint64_t destroy for AlignedTimelineSchedule.Entries(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1, v4))
  {
    (*(v5 + 8))(a1, v4);
  }

  v6 = *(a2 + 24);
  v7 = type metadata accessor for DateComponents();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1 + v6, v7);
}

char *initializeWithCopy for AlignedTimelineSchedule.Entries(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    _s10Foundation4DateVSgMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 20);
  v10 = *(a3 + 24);
  *&a1[v9] = *&a2[v9];
  v11 = type metadata accessor for DateComponents();
  (*(*(v11 - 8) + 16))(&a1[v10], &a2[v10], v11);
  return a1;
}

char *assignWithCopy for AlignedTimelineSchedule.Entries(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    _s10Foundation4DateVSgMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 16))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  v12 = *(a3 + 24);
  v13 = type metadata accessor for DateComponents();
  (*(*(v13 - 8) + 24))(&a1[v12], &a2[v12], v13);
  return a1;
}

char *initializeWithTake for AlignedTimelineSchedule.Entries(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    _s10Foundation4DateVSgMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 20);
  v10 = *(a3 + 24);
  *&a1[v9] = *&a2[v9];
  v11 = type metadata accessor for DateComponents();
  (*(*(v11 - 8) + 32))(&a1[v10], &a2[v10], v11);
  return a1;
}

char *assignWithTake for AlignedTimelineSchedule.Entries(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    _s10Foundation4DateVSgMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 32))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  v12 = *(a3 + 20);
  v13 = *(a3 + 24);
  *&a1[v12] = *&a2[v12];
  v14 = type metadata accessor for DateComponents();
  (*(*(v14 - 8) + 40))(&a1[v13], &a2[v13], v14);
  return a1;
}

uint64_t type metadata accessor for AlignedTimelineSchedule.Entries(uint64_t a1)
{
  result = type metadata singleton initialization cache for AlignedTimelineSchedule.Entries;
  if (!type metadata singleton initialization cache for AlignedTimelineSchedule.Entries)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for AlignedTimelineSchedule.Entries(uint64_t a1)
{
  _s10Foundation4DateVSgMaTm_1(319, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DateComponents();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

uint64_t AlignedTimelineSchedule.Entries.init(startDate:alignment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a1;
  v55 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v51 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v53 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for Calendar.SearchDirection();
  v50 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v49 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for Calendar.MatchingPolicy();
  v47 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation4DateVSgMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v52 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v42 - v12;
  v13 = type metadata accessor for Calendar();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v56 = v17;
  v19(a3, 1, 1);
  *(a3 + *(type metadata accessor for AlignedTimelineSchedule.Entries(0) + 20)) = a2;
  NSCalendarUnit.smallerUnits.getter(a2);
  DateComponents.init(zeroingUnits:)(v20);
  static Calendar.current.getter();
  v21 = Calendar.date(_:matchesComponents:)();
  v22 = *(v14 + 8);
  v48 = v13;
  v46 = v14 + 8;
  v22(v16, v13);
  if (v21)
  {
    outlined destroy of Date?(a3);
    v23 = v56;
    (*(v18 + 32))(a3, v60, v56);
    return (v19)(a3, 0, 1, v23);
  }

  else
  {
    v44 = v19;
    v45 = v18 + 56;
    static Calendar.current.getter();
    v25 = v47;
    (*(v47 + 104))(v57, *MEMORY[0x1E69698D0], v58);
    v27 = v49;
    v26 = v50;
    (*(v50 + 104))(v49, *MEMORY[0x1E69699A0], v59);
    v28 = *MEMORY[0x1E69699C8];
    v29 = v51;
    v30 = *(v51 + 104);
    v42 = v22;
    v43 = a3;
    v31 = v53;
    v32 = v55;
    v30(v53, v28, v55);
    v33 = v52;
    v34 = v57;
    Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
    (*(v29 + 8))(v31, v32);
    (*(v26 + 8))(v27, v59);
    (*(v25 + 8))(v34, v58);
    v42(v16, v48);
    v35 = *(v18 + 48);
    v36 = v56;
    v37 = v35(v33, 1, v56);
    v38 = v43;
    if (v37 == 1)
    {
      v39 = v54;
      (*(v18 + 32))(v54, v60, v36);
      v40 = v35(v33, 1, v36);
      v41 = v44;
      if (v40 != 1)
      {
        outlined destroy of Date?(v33);
      }
    }

    else
    {
      (*(v18 + 8))(v60, v36);
      v39 = v54;
      (*(v18 + 32))(v54, v33, v36);
      v41 = v44;
    }

    (v41)(v39, 0, 1, v36);
    return outlined assign with take of Date?(v39, v38);
  }
}

void NSCalendarUnit.smallerUnits.getter(uint64_t a1)
{
  if ((qword_1F0043CF8 & ~a1) == 0)
  {
    goto LABEL_9;
  }

  v1 = qword_1F0043D00;
  if ((qword_1F0043D00 & ~a1) != 0)
  {
    v1 = qword_1F0043D08;
    if ((qword_1F0043D08 & ~a1) != 0)
    {
      v1 = qword_1F0043D10;
      if ((qword_1F0043D10 & ~a1) != 0)
      {
        v1 = qword_1F0043D18;
        if ((qword_1F0043D18 & ~a1) != 0)
        {
          v1 = qword_1F0043D20;
          if ((qword_1F0043D20 & ~a1) != 0)
          {
            v1 = qword_1F0043D28;
            if ((qword_1F0043D28 & ~a1) != 0)
            {
              return;
            }
          }
        }
      }
    }
  }

  if (qword_1F0043CF8 != v1)
  {
    if (qword_1F0043D00 == v1)
    {
      v2 = 2;
    }

    else if (qword_1F0043D08 == v1)
    {
      v2 = 3;
    }

    else if (qword_1F0043D10 == v1)
    {
      v2 = 4;
    }

    else if (qword_1F0043D18 == v1)
    {
      v2 = 5;
    }

    else if (qword_1F0043D20 == v1)
    {
      v2 = 6;
    }

    else
    {
      if (qword_1F0043D28 != v1)
      {
        return;
      }

      v2 = 7;
    }
  }

  else
  {
LABEL_9:
    v2 = 1;
  }

  v3 = swift_unknownObjectRetain_n();

  specialized _copyCollectionToContiguousArray<A>(_:)(v3, v3 + 32, v2, 0xFuLL);
}

double DateComponents.init(zeroingUnits:)(uint64_t a1)
{
  _s10Foundation4DateVSgMaTm_1(0, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - v3;
  _s10Foundation4DateVSgMaTm_1(0, &lazy cache variable for type metadata for Calendar?, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - v6;
  v8 = type metadata accessor for Calendar();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = type metadata accessor for TimeZone();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v10 = 0;
  v11 = *(a1 + 16);
  while (v11 != v10)
  {
    v12 = a1 + 8 * v10++;
    if (*(v12 + 32) == 4)
    {
      DateComponents.year.setter();
      v11 = *(a1 + 16);
      break;
    }
  }

  v13 = 0;
  while (v11 != v13)
  {
    v14 = a1 + 8 * v13++;
    if (*(v14 + 32) == 8)
    {
      DateComponents.month.setter();
      v11 = *(a1 + 16);
      break;
    }
  }

  v15 = 0;
  while (v11 != v15)
  {
    v16 = a1 + 8 * v15++;
    if (*(v16 + 32) == 16)
    {
      DateComponents.day.setter();
      v11 = *(a1 + 16);
      break;
    }
  }

  v17 = 0;
  while (v11 != v17)
  {
    v18 = a1 + 8 * v17++;
    if (*(v18 + 32) == 32)
    {
      DateComponents.hour.setter();
      v11 = *(a1 + 16);
      break;
    }
  }

  v19 = 0;
  while (v11 != v19)
  {
    v20 = a1 + 8 * v19++;
    if (*(v20 + 32) == 64)
    {
      DateComponents.minute.setter();
      v11 = *(a1 + 16);
      break;
    }
  }

  v21 = 0;
  while (v11 != v21)
  {
    v22 = a1 + 8 * v21++;
    if (*(v22 + 32) == 128)
    {
      DateComponents.second.setter();
      v11 = *(a1 + 16);
      break;
    }
  }

  v23 = 32;
  while (v11)
  {
    v24 = *(a1 + v23);
    v23 += 8;
    --v11;
    if (v24 == 0x8000)
    {

      DateComponents.nanosecond.setter();
      return result;
    }
  }

  return result;
}

uint64_t AlignedTimelineSchedule.Entries.next()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v53 = type metadata accessor for Calendar.SearchDirection();
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v49 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v47 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Calendar.MatchingPolicy();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for Calendar();
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation4DateVSgMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v56 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v45 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v38 - v21;
  v55 = v2;
  outlined init with copy of Date?(v2, v16);
  v46 = *(v18 + 48);
  if (v46(v16, 1, v17) == 1)
  {
    outlined destroy of Date?(v16);
    return (*(v18 + 56))(a1, 1, 1, v17);
  }

  else
  {
    v43 = v18;
    v44 = a1;
    v40 = *(v18 + 32);
    v41 = v18 + 32;
    v40(v22, v16, v17);
    v38 = v11;
    static Calendar.current.getter();
    v24 = type metadata accessor for AlignedTimelineSchedule.Entries(0);
    v39 = v6;
    v42 = *(v24 + 24);
    v25 = v9;
    (*(v7 + 104))(v9, *MEMORY[0x1E69698D0], v6);
    v26 = v49;
    v27 = v47;
    (*(v49 + 104))(v47, *MEMORY[0x1E69699C8], v54);
    v28 = v51;
    v29 = v52;
    v30 = v53;
    (*(v51 + 104))(v52, *MEMORY[0x1E6969998], v53);
    v42 = v22;
    v31 = v38;
    Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
    (*(v28 + 8))(v29, v30);
    (*(v26 + 8))(v27, v54);
    (*(v7 + 8))(v25, v39);
    (*(v48 + 8))(v31, v50);
    if (v46(v56, 1, v17) == 1)
    {
      outlined destroy of Date?(v56);
      v32 = v55;
      outlined destroy of Date?(v55);
      v33 = 1;
      v34 = v40;
    }

    else
    {
      v35 = v45;
      v34 = v40;
      v40(v45, v56, v17);
      v32 = v55;
      outlined destroy of Date?(v55);
      v34(v32, v35, v17);
      v33 = 0;
    }

    v36 = *(v43 + 56);
    v36(v32, v33, 1, v17);
    v37 = v44;
    v34(v44, v42, v17);
    return (v36)(v37, 0, 1, v17);
  }
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance AlignedTimelineSchedule.Entries()
{
  specialized _copySequenceToContiguousArray<A>(_:)(v0);
  v2 = v1;
  outlined destroy of AlignedTimelineSchedule.Entries(v0);
  return v2;
}

uint64_t protocol witness for TimelineSchedule.entries(from:mode:) in conformance AlignedTimelineSchedule@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Date();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  (*(v10 + 16))(v8, a1, v6);
  return AlignedTimelineSchedule.Entries.init(startDate:alignment:)(v8, v9, a2);
}

uint64_t outlined destroy of AlignedTimelineSchedule.Entries(uint64_t a1)
{
  v2 = type metadata accessor for AlignedTimelineSchedule.Entries(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of AlignedTimelineSchedule.Entries(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlignedTimelineSchedule.Entries(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void lazy protocol witness table accessor for type AlignedTimelineSchedule.Entries and conformance AlignedTimelineSchedule.Entries(unint64_t *a1, const char *a2)
{
  if (!*a1)
  {
    v4 = type metadata accessor for AlignedTimelineSchedule.Entries(255);
    swift_getWitnessTable(a2, v4);
    atomic_store(v5, a1);
  }
}

uint64_t CollectionChanges.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v7[3] = a4;
  type metadata accessor for CollectionChanges.Element(0, v7);
  result = Array.init()();
  *a5 = result;
  return result;
}

uint64_t CollectionChanges.init<A, B>(from:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedConformanceWitness();
  v23 = a3;
  v24 = a4;
  v25 = AssociatedConformanceWitness;
  v26 = v18;
  type metadata accessor for CollectionChanges.Element(0, &v23);
  *a9 = Array.init()();
  v23 = a3;
  v24 = a4;
  v25 = AssociatedConformanceWitness;
  v26 = v18;
  v19 = type metadata accessor for CollectionChanges(0, &v23);
  CollectionChanges.formChanges<A, B>(from:to:)(a1, a2, v19, a5, a6, a7, a8, a10);
  (*(*(a6 - 8) + 8))(a2, a6);
  return (*(*(a5 - 8) + 8))(a1, a5);
}

void CollectionChanges.removals.getter(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v11 = 0;
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = type metadata accessor for Range();
  v10 = a1[5];

  CollectionChanges.Projection.init(kind:changes:)(&v11, v5, v6, v7, v9, v8, v10, a2);
}

void CollectionChanges.insertions.getter(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v11 = 1;
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[5];
  v9 = type metadata accessor for Range();
  v10 = a1[4];

  CollectionChanges.Projection.init(kind:changes:)(&v11, v5, v6, v7, v9, v10, v8, a2);
}

void CollectionChanges.matches.getter(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v11 = 2;
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  type metadata accessor for Range();
  v9 = a1[5];
  type metadata accessor for Range();

  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  CollectionChanges.Projection.init(kind:changes:)(&v11, v5, v6, v7, TupleTypeMetadata2, v8, v9, a2);
}

Swift::Int CollectionChanges.Element.Kind.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CollectionChanges<A, B>.Element.Kind(uint64_t a1)
{
  Hasher.init(_seed:)();
  CollectionChanges.Element.Kind.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int __swiftcall CollectionChanges.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall CollectionChanges.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance CollectionChanges<A, B>@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *protocol witness for BidirectionalCollection.formIndex(before:) in conformance CollectionChanges<A, B>(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance CollectionChanges<A, B>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = CollectionChanges.endIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance CollectionChanges<A, B>(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = CollectionChanges.subscript.read(v6, *a2, a3);
  return protocol witness for Collection.subscript.read in conformance UnsafeMutableBufferProjectionPointer<A, B>;
}

void (*CollectionChanges.subscript.read(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  v10 = *(a3 + 32);
  *v8 = *(a3 + 16);
  v8[1] = v10;
  v11 = type metadata accessor for CollectionChanges.Element(0, v8);
  v9[5] = v11;
  v12 = *(v11 - 8);
  v9[6] = v12;
  if (v7)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  v9[4] = *v3;
  v9[7] = v13;
  CollectionChanges.subscript.getter(a2, a3);
  return CollectionChanges.subscript.read;
}

void CollectionChanges.subscript.read(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 56);
  (*(*(*a1 + 48) + 8))(v2, *(*a1 + 40));
  free(v2);

  free(v1);
}

void *protocol witness for Collection.indices.getter in conformance CollectionChanges<A, B>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for CollectionChanges<A, B>, a1);

  return RandomAccessCollection<>.indices.getter();
}

void *protocol witness for Collection.index(after:) in conformance CollectionChanges<A, B>@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance CollectionChanges<A, B>(uint64_t a1)
{
  v3.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for CollectionChanges<A, B>, a1);

  return MEMORY[0x1EEE698E0](a1, v2, v3);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance CollectionChanges<A, B>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for CollectionChanges<A, B>, a1);

  return Collection._copyToContiguousArray()();
}

uint64_t CollectionChanges.description.getter(uint64_t a1)
{
  v8 = *v1;

  v3 = *(a1 + 32);
  v7[0] = *(a1 + 16);
  v7[1] = v3;
  type metadata accessor for CollectionChanges.Element(0, v7);
  swift_getWitnessTable(protocol conformance descriptor for CollectionChanges<A, B>, a1);
  *&v7[0] = Array.init<A>(_:)();
  v4 = type metadata accessor for Array();
  swift_getWitnessTable(MEMORY[0x1E69E6358], v4);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();

  return v5;
}

Swift::Int __swiftcall CollectionChanges.Projection.index(before:)(Swift::Int before)
{
  if (__OFSUB__(before, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = *(v2 + 8);
    v9 = *(v1 + 40);
    v10[0] = *(v1 + 16);
    v10[1] = v9;
    type metadata accessor for CollectionChanges.Element(255, v10);
    v3 = type metadata accessor for Array();
    v4 = MEMORY[0x1E69E6ED0];
    type metadata accessor for PartialRangeThrough<Int>(0, &lazy cache variable for type metadata for PartialRangeThrough<Int>, MEMORY[0x1E69E6ED0]);
    swift_getWitnessTable(MEMORY[0x1E69E6318], v3);
    lazy protocol witness table accessor for type PartialRangeThrough<Int> and conformance PartialRangeThrough<A>(&lazy protocol witness table cache variable for type PartialRangeThrough<Int> and conformance PartialRangeThrough<A>, &lazy cache variable for type metadata for PartialRangeThrough<Int>, v4, MEMORY[0x1E69E6ED8]);
    v5 = MutableCollection.subscript.getter();
    MEMORY[0x1EEE9AC00](v5);
    v6 = type metadata accessor for ArraySlice();
    swift_getWitnessTable(MEMORY[0x1E69E6958], v6);
    BidirectionalCollection.lastIndex(where:)();
    swift_unknownObjectRelease();
    if ((v13 & 1) == 0)
    {
      return v12;
    }
  }

  *&v10[0] = 0;
  *(&v10[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  *&v10[0] = 0xD000000000000015;
  *(&v10[0] + 1) = 0x800000018DD74EE0;
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v8);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Int __swiftcall CollectionChanges.Projection.index(after:)(Swift::Int after)
{
  if (__OFADD__(after, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 24);
    if (after + 1 >= v3)
    {
      return v3;
    }

    v12 = *(v2 + 8);
    v10 = *(v1 + 40);
    v11[0] = *(v1 + 16);
    v11[1] = v10;
    type metadata accessor for CollectionChanges.Element(255, v11);
    v4 = type metadata accessor for Array();
    v5 = MEMORY[0x1E69E6D08];
    type metadata accessor for PartialRangeThrough<Int>(0, &lazy cache variable for type metadata for PartialRangeFrom<Int>, MEMORY[0x1E69E6D08]);
    swift_getWitnessTable(MEMORY[0x1E69E6318], v4);
    lazy protocol witness table accessor for type PartialRangeThrough<Int> and conformance PartialRangeThrough<A>(&lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>, &lazy cache variable for type metadata for PartialRangeFrom<Int>, v5, MEMORY[0x1E69E6D18]);
    v6 = MutableCollection.subscript.getter();
    MEMORY[0x1EEE9AC00](v6);
    v7 = type metadata accessor for ArraySlice();
    swift_getWitnessTable(MEMORY[0x1E69E6978], v7);
    Collection.firstIndex(where:)();
    swift_unknownObjectRelease();
    if ((v14 & 1) == 0)
    {
      return v13;
    }
  }

  *&v11[0] = 0;
  *(&v11[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  *&v11[0] = 0xD000000000000015;
  *(&v11[0] + 1) = 0x800000018DD74EE0;
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v9);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t CollectionChanges.Projection.subscript.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a1;
  v65 = a3;
  v4 = a2[2];
  v5 = a2[5];
  v6 = type metadata accessor for Range();
  v7 = a2[3];
  v8 = a2[6];
  v9 = type metadata accessor for Range();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v57 = &v53 - v10;
  v59 = v9;
  v60 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53 - v14;
  v64 = a2[4];
  v16 = type metadata accessor for Optional();
  v53 = *(v16 - 8);
  v54 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v56 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v53 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v53 - v22;
  v61 = v6;
  v24 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v53 - v29;
  *&v31 = v4;
  *(&v31 + 1) = v7;
  *&v32 = v5;
  *(&v32 + 1) = v8;
  v67[0] = v31;
  v67[1] = v32;
  v33 = type metadata accessor for CollectionChanges.Element(0, v67);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v53 - v34;
  Array.subscript.getter();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v60 + 32))(v15, v35, v59);
      v37 = v64;
      v38 = swift_dynamicCast();
      v39 = *(*(v37 - 8) + 56);
      if (v38)
      {
        v40 = *(v37 - 8);
        v39(v20, 0, 1, v37);
        v23 = v20;
        return (*(v40 + 32))(v65, v23, v37);
      }

      v23 = v20;
      goto LABEL_12;
    }

    v41 = TupleTypeMetadata2;
    v42 = *(TupleTypeMetadata2 + 48);
    v43 = *(v24 + 32);
    v44 = v61;
    v43(v27, v35, v61);
    v45 = *(v60 + 32);
    v46 = &v35[v42];
    v47 = v55;
    v48 = v59;
    v45(v55, v46, v59);
    v62 = *(v41 + 48);
    v49 = v57;
    v43(v57, v27, v44);
    v45(&v49[v62], v47, v48);
    v23 = v56;
  }

  else
  {
    (*(v24 + 32))(v30, v35, v61);
  }

  v37 = v64;
  v50 = swift_dynamicCast();
  v39 = *(*(v37 - 8) + 56);
  if (v50)
  {
    v40 = *(v37 - 8);
    v39(v23, 0, 1, v37);
    return (*(v40 + 32))(v65, v23, v37);
  }

LABEL_12:
  v39(v23, 1, 1, v64);
  (*(v53 + 8))(v23, v54);
  *&v67[0] = 0;
  *(&v67[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  *&v67[0] = 0x2064696C61766E69;
  *(&v67[0] + 1) = 0xEF203A7865646E69;
  v66 = v63;
  v52 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v52);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Int protocol witness for BidirectionalCollection.index(before:) in conformance CollectionChanges<A, B>.Projection<A1>@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = CollectionChanges.Projection.index(before:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int protocol witness for BidirectionalCollection.formIndex(before:) in conformance CollectionChanges<A, B>.Projection<A1>(Swift::Int *a1)
{
  result = CollectionChanges.Projection.index(before:)(*a1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for Collection.startIndex.getter in conformance CollectionChanges<A, B>.Projection<A1>@<X0>(uint64_t *a1@<X8>)
{
  result = CollectionChanges.Projection.startIndex.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance CollectionChanges<A, B>.Projection<A1>@<X0>(uint64_t *a1@<X8>)
{
  result = CollectionChanges.Projection.endIndex.getter();
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance CollectionChanges<A, B>.Projection<A1>(uint64_t **a1, uint64_t *a2, void *a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = CollectionChanges.Projection.subscript.read(v6, *a2, a3);
  return protocol witness for Collection.subscript.read in conformance CollectionOfTwo<A>;
}

void (*CollectionChanges.Projection.subscript.read(uint64_t *a1, uint64_t a2, void *a3))(uint64_t a1)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v10 = a3[4];
  *(v8 + 32) = v10;
  v11 = *(v10 - 8);
  *(v8 + 40) = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(v12);
  }

  *(v9 + 48) = v13;
  v14 = *(v3 + 8);
  *v9 = *v3;
  *(v9 + 8) = v14;
  *(v9 + 16) = *(v3 + 16);
  CollectionChanges.Projection.subscript.getter(a2, a3, v13);
  return CollectionChanges.Projection.subscript.read;
}

void CollectionChanges.Projection.subscript.read(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  (*(*(*a1 + 40) + 8))(v2, *(*a1 + 32));
  free(v2);

  free(v1);
}

uint64_t protocol witness for Collection.index(_:offsetBy:) in conformance CollectionChanges<A, B>.Projection<A1>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for CollectionChanges<A, B>.Projection<A1>, a3);

  return BidirectionalCollection.index(_:offsetBy:)();
}

uint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance CollectionChanges<A, B>.Projection<A1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for CollectionChanges<A, B>.Projection<A1>, a4);

  return MEMORY[0x1EEE68B98](a1, a2, a3, a4, v8, v9);
}

void protocol witness for Collection.distance(from:to:) in conformance CollectionChanges<A, B>.Projection<A1>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for CollectionChanges<A, B>.Projection<A1>, a3);

  JUMPOUT(0x193ABE9B0);
}

Swift::Int protocol witness for Collection.index(after:) in conformance CollectionChanges<A, B>.Projection<A1>@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = CollectionChanges.Projection.index(after:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int protocol witness for Collection.formIndex(after:) in conformance CollectionChanges<A, B>.Projection<A1>(Swift::Int *a1)
{
  result = CollectionChanges.Projection.index(after:)(*a1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance CollectionChanges<A, B>.Projection<A1>@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v1 + 16);
  result = CollectionChanges.Projection.startIndex.getter();
  *(a1 + 32) = result;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance CollectionChanges<A, B>.Projection<A1>(uint64_t a1)
{
  v3.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for CollectionChanges<A, B>.Projection<A1>, a1);

  return MEMORY[0x1EEE698E0](a1, v2, v3);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance CollectionChanges<A, B>.Projection<A1>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for CollectionChanges<A, B>.Projection<A1>, a1);

  return Collection._copyToContiguousArray()();
}

uint64_t specialized CollectionChanges.getOffset<A>(from:)(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for CollectionDifference.Change();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - v9;
  (*(v11 + 16))(&v15 - v9, a1, v8);
  v12 = *v10;
  type metadata accessor for Int?(255, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6720]);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  (*(*(a5 - 8) + 8))(&v10[*(TupleTypeMetadata3 + 48)], a5);
  return v12;
}

void lazy protocol witness table accessor for type PartialRangeThrough<Int> and conformance PartialRangeThrough<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void, void), const char *a4)
{
  if (!*a1)
  {
    type metadata accessor for PartialRangeThrough<Int>(255, a2, a3);
    swift_getWitnessTable(a4, v6);
    atomic_store(v7, a1);
  }
}

void type metadata accessor for PartialRangeThrough<Int>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double associated type witness table accessor for Collection.SubSequence : RandomAccessCollection in CollectionChanges<A, B>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionChanges<A, B>);
  v5 = v3;
  return swift_getWitnessTable(MEMORY[0x1E69E74F0], a1, &v5, WitnessTable);
}

double associated type witness table accessor for Collection.SubSequence : BidirectionalCollection in CollectionChanges<A, B>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionChanges<A, B>);
  v5 = v3;
  return swift_getWitnessTable(MEMORY[0x1E69E74D8], a1, &v5, WitnessTable);
}

double associated type witness table accessor for Collection.Indices : BidirectionalCollection in CollectionChanges<A, B>.Projection<A1>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionChanges<A, B>.Projection<A1>);
  v5 = v3;
  return swift_getWitnessTable(MEMORY[0x1E69E5EB0], a1, &v5, WitnessTable);
}

double associated type witness table accessor for Collection.SubSequence : BidirectionalCollection in CollectionChanges<A, B>.Projection<A1>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionChanges<A, B>.Projection<A1>);
  v5 = v3;
  return swift_getWitnessTable(MEMORY[0x1E69E74D8], a1, &v5, WitnessTable);
}

void *initializeBufferWithCopyOfBuffer for CollectionChanges.Element(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  v7 = v5 + v6;
  v8 = ((v5 + v6) & ~v6) + v5;
  v9 = *(*(a3 + 24) - 8);
  v10 = *(v9 + 64);
  v11 = *(v9 + 80);
  v12 = v10 + v11;
  v13 = (v12 & ~v11) + v10;
  if (v13 <= v8)
  {
    v14 = ((v5 + v6) & ~v6) + v5;
  }

  else
  {
    v14 = v13;
  }

  v15 = v8 + v11;
  if (v13 + (v15 & ~v11) <= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v13 + (v15 & ~v11);
  }

  if ((v11 | v6) > 7 || ((v11 | *(v4 + 80)) & 0x100000) != 0 || v16 + 1 > 0x18)
  {
    v19 = *a2;
    *v3 = *a2;
    v3 = (v19 + (((v11 | v6) + 16) & ~(v11 | v6)));

    return v3;
  }

  v20 = *(a2 + v16);
  v21 = v20 - 3;
  if (v20 >= 3)
  {
    if (v16 <= 3)
    {
      v22 = v16;
    }

    else
    {
      v22 = 4;
    }

    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v23 = *a2;
        if (v16 >= 4)
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v22 == 3)
        {
          v23 = *a2 | (*(a2 + 2) << 16);
          if (v16 < 4)
          {
            goto LABEL_31;
          }

LABEL_29:
          v20 = v23 + 3;
          goto LABEL_32;
        }

        v23 = *a2;
        if (v16 >= 4)
        {
          goto LABEL_29;
        }
      }

LABEL_31:
      v20 = (v23 | (v21 << (8 * v16))) + 3;
      goto LABEL_32;
    }

    if (!v22)
    {
      goto LABEL_32;
    }

    v23 = *a2;
    if (v16 < 4)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

LABEL_32:
  v24 = ~v6;
  v25 = ~v11;
  if (v20 == 2)
  {
    v37 = *(a3 + 24);
    v38 = *(v4 + 16);
    v36 = *(a3 + 16);
    (v38)(a1);
    v38((v3 + v7) & v24, (a2 + v7) & v24, v36);
    v30 = (a2 + v15) & v25;
    v31 = *(v9 + 16);
    v31((v3 + v15) & v25, v30, v37);
    v31((v12 + ((v3 + v15) & v25)) & v25, (v12 + v30) & v25, v37);
    *(v3 + v16) = 2;
  }

  else if (v20 == 1)
  {
    v26 = *(v9 + 16);
    v28 = *(a3 + 24);
    (v26)(a1);
    v26((v3 + v12) & v25, (a2 + v12) & v25, v28);
    *(v3 + v16) = 1;
  }

  else
  {
    v32 = *(v4 + 16);
    v34 = *(a3 + 16);
    (v32)(a1);
    v32((v3 + v7) & v24, (a2 + v7) & v24, v34);
    *(v3 + v16) = 0;
  }

  return v3;
}

uint64_t destroy for CollectionChanges.Element(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = *(v4 - 8);
  v9 = *(v8 + 64);
  v10 = v6 + v7;
  v11 = ((v6 + v7) & ~v7) + v6;
  v12 = *(v8 + 80);
  v13 = v9 + v12;
  v14 = ((v9 + v12) & ~v12) + v9;
  if (v14 <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = v14;
  }

  v16 = v11 + v12;
  v17 = v14 + ((v11 + v12) & ~v12);
  if (v17 <= v15)
  {
    v17 = v15;
  }

  v18 = a1[v17];
  v19 = v18 - 3;
  if (v18 >= 3)
  {
    if (v17 <= 3)
    {
      v20 = v17;
    }

    else
    {
      v20 = 4;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        goto LABEL_20;
      }

      v21 = *a1;
    }

    else if (v20 == 2)
    {
      v21 = *a1;
    }

    else if (v20 == 3)
    {
      v21 = *a1 | (a1[2] << 16);
    }

    else
    {
      v21 = *a1;
    }

    v22 = (v21 | (v19 << (8 * v17))) + 3;
    v18 = v21 + 3;
    if (v17 < 4)
    {
      v18 = v22;
    }
  }

LABEL_20:
  v23 = ~v7;
  v24 = ~v12;
  if (v18 == 2)
  {
    v28 = *(v5 + 8);
    v33 = *(v4 - 8);
    v28(a1, v3);
    v28((&a1[v10] & v23), v3);
    v29 = &a1[v16] & v24;
    v32 = *(v33 + 8);
    v32(v29, v4);

    return (v32)((v13 + v29) & v24, v4);
  }

  else
  {
    if (v18 == 1)
    {
      v31 = *(v8 + 8);
      v31(a1, v4);
      v25 = &a1[v13] & v24;
      v26 = v4;
      v27 = v31;
    }

    else
    {
      v34 = *(v5 + 8);
      v34(a1, v3);
      v25 = &a1[v10] & v23;
      v26 = v3;
      v27 = v34;
    }

    return v27(v25, v26);
  }
}

uint64_t initializeWithCopy for CollectionChanges.Element(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  v9 = *(v7 + 80);
  v10 = v8 + v9;
  v11 = ((v8 + v9) & ~v9) + v8;
  v12 = *(v6 - 8);
  v13 = *(v12 + 64);
  v14 = *(v12 + 80);
  v15 = v13 + v14;
  v16 = ((v13 + v14) & ~v14) + v13;
  if (v16 <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = v16;
  }

  v18 = v11 + v14;
  v19 = v16 + ((v11 + v14) & ~v14);
  if (v19 <= v17)
  {
    v20 = v17;
  }

  else
  {
    v20 = v19;
  }

  v21 = a2[v20];
  v22 = v21 - 3;
  if (v21 < 3)
  {
    goto LABEL_21;
  }

  if (v20 <= 3)
  {
    v23 = v20;
  }

  else
  {
    v23 = 4;
  }

  if (v23 <= 1)
  {
    if (!v23)
    {
      goto LABEL_21;
    }

    v24 = *a2;
  }

  else if (v23 == 2)
  {
    v24 = *a2;
  }

  else if (v23 == 3)
  {
    v24 = *a2 | (a2[2] << 16);
  }

  else
  {
    v24 = *a2;
  }

  v25 = (v24 | (v22 << (8 * v20))) + 3;
  v21 = v24 + 3;
  if (v20 < 4)
  {
    v21 = v25;
  }

LABEL_21:
  v26 = ~v9;
  v27 = ~v14;
  if (v21 == 2)
  {
    v38 = v15;
    v39 = *(a3 + 24);
    v30 = *(v7 + 16);
    v37 = *(a3 + 16);
    v31 = v18;
    v30(a1, a2, v5);
    v30((v10 + a1) & v26, (&a2[v10] & v26), v37);
    v32 = &a2[v31] & v27;
    v33 = *(v12 + 16);
    v33((v31 + a1) & v27, v32, v39);
    v33((v38 + ((v31 + a1) & v27)) & v27, (v38 + v32) & v27, v39);
    v29 = 2;
  }

  else if (v21 == 1)
  {
    v28 = *(v12 + 16);
    v28(a1, a2, v6);
    v28((v15 + a1) & v27, (&a2[v15] & v27), v6);
    v29 = 1;
  }

  else
  {
    v34 = *(v7 + 16);
    v35 = *(a3 + 16);
    v34(a1, a2, v5);
    v34((v10 + a1) & v26, (&a2[v10] & v26), v35);
    v29 = 0;
  }

  *(a1 + v20) = v29;
  return a1;
}

unsigned __int8 *assignWithCopy for CollectionChanges.Element(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(a3 + 24);
    v7 = *(v5 - 8);
    v8 = *(v7 + 64);
    v9 = *(v7 + 80);
    v44 = v8 + v9;
    v10 = ((v8 + v9) & ~v9) + v8;
    v11 = *(*(v6 - 8) + 64);
    v42 = *(v6 - 8);
    v12 = *(v42 + 80);
    v13 = v11 + v12;
    v14 = ((v11 + v12) & ~v12) + v11;
    if (v14 <= v10)
    {
      v15 = v10;
    }

    else
    {
      v15 = v14;
    }

    v41 = v10 + v12;
    v16 = v14 + ((v10 + v12) & ~v12);
    if (v16 <= v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v16;
    }

    v18 = a1[v17];
    v19 = v18 - 3;
    if (v18 < 3)
    {
LABEL_24:
      v22 = ~v9;
      v43 = ~v12;
      if (v18 == 2)
      {
        v24 = *(v7 + 8);
        v24(a1, v5);
        v24((&a1[v44] & v22), v5);
        v40 = v7;
        v25 = v5;
        v26 = *(v42 + 8);
        v26(&a1[v41] & v43, v6);
        v26((v13 + (&a1[v41] & v43)) & v43, v6);
        v5 = v25;
        v7 = v40;
      }

      else if (v18 == 1)
      {
        v23 = *(v42 + 8);
        v23(a1, v6);
        v23((&a1[v13] & v43), v6);
      }

      else
      {
        v27 = *(v7 + 8);
        v27(a1, v5);
        v27((&a1[v44] & v22), v5);
      }

      v28 = a2[v17];
      v29 = v28 - 3;
      if (v28 >= 3)
      {
        if (v17 <= 3)
        {
          v30 = v17;
        }

        else
        {
          v30 = 4;
        }

        if (v30 <= 1)
        {
          if (!v30)
          {
            goto LABEL_43;
          }

          v31 = *a2;
          if (v17 < 4)
          {
LABEL_48:
            v35 = v31 | (v29 << (8 * v17));
            v28 = v35 + 3;
            if (v35 == -1)
            {
              goto LABEL_49;
            }

            goto LABEL_44;
          }
        }

        else if (v30 == 2)
        {
          v31 = *a2;
          if (v17 < 4)
          {
            goto LABEL_48;
          }
        }

        else if (v30 == 3)
        {
          v31 = *a2 | (a2[2] << 16);
          if (v17 < 4)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v31 = *a2;
          if (v17 < 4)
          {
            goto LABEL_48;
          }
        }

        v28 = v31 + 3;
      }

LABEL_43:
      if (v28 == 2)
      {
LABEL_49:
        v36 = *(v7 + 16);
        v36(a1, a2, v5);
        v36((&a1[v44] & v22), (&a2[v44] & v22), v5);
        v37 = &a2[v41] & v43;
        v38 = *(v42 + 16);
        v38(&a1[v41] & v43, v37, v6);
        v38((v13 + (&a1[v41] & v43)) & v43, (v13 + v37) & v43, v6);
        v33 = 2;
LABEL_50:
        a1[v17] = v33;
        return a1;
      }

LABEL_44:
      if (v28 == 1)
      {
        v32 = *(v42 + 16);
        v32(a1, a2, v6);
        v32((&a1[v13] & v43), (&a2[v13] & v43), v6);
        v33 = 1;
      }

      else
      {
        v34 = *(v7 + 16);
        v34(a1, a2, v5);
        v34((&a1[v44] & v22), (&a2[v44] & v22), v5);
        v33 = 0;
      }

      goto LABEL_50;
    }

    if (v17 <= 3)
    {
      v20 = v17;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v21 = *a1;
        if (v17 >= 4)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v20 == 3)
        {
          v21 = *a1 | (a1[2] << 16);
          if (v17 < 4)
          {
            goto LABEL_23;
          }

LABEL_21:
          v18 = v21 + 3;
          goto LABEL_24;
        }

        v21 = *a1;
        if (v17 >= 4)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      v18 = (v21 | (v19 << (8 * v17))) + 3;
      goto LABEL_24;
    }

    if (!v20)
    {
      goto LABEL_24;
    }

    v21 = *a1;
    if (v17 < 4)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  return a1;
}

uint64_t initializeWithTake for CollectionChanges.Element(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  v9 = *(v7 + 80);
  v10 = v8 + v9;
  v11 = ((v8 + v9) & ~v9) + v8;
  v12 = *(v6 - 8);
  v13 = *(v12 + 64);
  v14 = *(v12 + 80);
  v15 = v13 + v14;
  v16 = ((v13 + v14) & ~v14) + v13;
  if (v16 <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = v16;
  }

  v18 = v11 + v14;
  v19 = v16 + ((v11 + v14) & ~v14);
  if (v19 <= v17)
  {
    v20 = v17;
  }

  else
  {
    v20 = v19;
  }

  v21 = a2[v20];
  v22 = v21 - 3;
  if (v21 < 3)
  {
    goto LABEL_21;
  }

  if (v20 <= 3)
  {
    v23 = v20;
  }

  else
  {
    v23 = 4;
  }

  if (v23 <= 1)
  {
    if (!v23)
    {
      goto LABEL_21;
    }

    v24 = *a2;
  }

  else if (v23 == 2)
  {
    v24 = *a2;
  }

  else if (v23 == 3)
  {
    v24 = *a2 | (a2[2] << 16);
  }

  else
  {
    v24 = *a2;
  }

  v25 = (v24 | (v22 << (8 * v20))) + 3;
  v21 = v24 + 3;
  if (v20 < 4)
  {
    v21 = v25;
  }

LABEL_21:
  v26 = ~v9;
  v27 = ~v14;
  if (v21 == 2)
  {
    v38 = v15;
    v39 = *(a3 + 24);
    v30 = *(v7 + 32);
    v37 = *(a3 + 16);
    v31 = v18;
    v30(a1, a2, v5);
    v30((v10 + a1) & v26, (&a2[v10] & v26), v37);
    v32 = &a2[v31] & v27;
    v33 = *(v12 + 32);
    v33((v31 + a1) & v27, v32, v39);
    v33((v38 + ((v31 + a1) & v27)) & v27, (v38 + v32) & v27, v39);
    v29 = 2;
  }

  else if (v21 == 1)
  {
    v28 = *(v12 + 32);
    v28(a1, a2, v6);
    v28((v15 + a1) & v27, (&a2[v15] & v27), v6);
    v29 = 1;
  }

  else
  {
    v34 = *(v7 + 32);
    v35 = *(a3 + 16);
    v34(a1, a2, v5);
    v34((v10 + a1) & v26, (&a2[v10] & v26), v35);
    v29 = 0;
  }

  *(a1 + v20) = v29;
  return a1;
}

unsigned __int8 *assignWithTake for CollectionChanges.Element(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(a3 + 24);
    v7 = *(v5 - 8);
    v8 = *(v7 + 64);
    v9 = *(v7 + 80);
    v44 = v8 + v9;
    v10 = ((v8 + v9) & ~v9) + v8;
    v11 = *(*(v6 - 8) + 64);
    v42 = *(v6 - 8);
    v12 = *(v42 + 80);
    v13 = v11 + v12;
    v14 = ((v11 + v12) & ~v12) + v11;
    if (v14 <= v10)
    {
      v15 = v10;
    }

    else
    {
      v15 = v14;
    }

    v41 = v10 + v12;
    v16 = v14 + ((v10 + v12) & ~v12);
    if (v16 <= v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v16;
    }

    v18 = a1[v17];
    v19 = v18 - 3;
    if (v18 < 3)
    {
LABEL_24:
      v22 = ~v9;
      v43 = ~v12;
      if (v18 == 2)
      {
        v24 = *(v7 + 8);
        v24(a1, v5);
        v24((&a1[v44] & v22), v5);
        v40 = v7;
        v25 = v5;
        v26 = *(v42 + 8);
        v26(&a1[v41] & v43, v6);
        v26((v13 + (&a1[v41] & v43)) & v43, v6);
        v5 = v25;
        v7 = v40;
      }

      else if (v18 == 1)
      {
        v23 = *(v42 + 8);
        v23(a1, v6);
        v23((&a1[v13] & v43), v6);
      }

      else
      {
        v27 = *(v7 + 8);
        v27(a1, v5);
        v27((&a1[v44] & v22), v5);
      }

      v28 = a2[v17];
      v29 = v28 - 3;
      if (v28 >= 3)
      {
        if (v17 <= 3)
        {
          v30 = v17;
        }

        else
        {
          v30 = 4;
        }

        if (v30 <= 1)
        {
          if (!v30)
          {
            goto LABEL_43;
          }

          v31 = *a2;
          if (v17 < 4)
          {
LABEL_48:
            v35 = v31 | (v29 << (8 * v17));
            v28 = v35 + 3;
            if (v35 == -1)
            {
              goto LABEL_49;
            }

            goto LABEL_44;
          }
        }

        else if (v30 == 2)
        {
          v31 = *a2;
          if (v17 < 4)
          {
            goto LABEL_48;
          }
        }

        else if (v30 == 3)
        {
          v31 = *a2 | (a2[2] << 16);
          if (v17 < 4)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v31 = *a2;
          if (v17 < 4)
          {
            goto LABEL_48;
          }
        }

        v28 = v31 + 3;
      }

LABEL_43:
      if (v28 == 2)
      {
LABEL_49:
        v36 = *(v7 + 32);
        v36(a1, a2, v5);
        v36((&a1[v44] & v22), (&a2[v44] & v22), v5);
        v37 = &a2[v41] & v43;
        v38 = *(v42 + 32);
        v38(&a1[v41] & v43, v37, v6);
        v38((v13 + (&a1[v41] & v43)) & v43, (v13 + v37) & v43, v6);
        v33 = 2;
LABEL_50:
        a1[v17] = v33;
        return a1;
      }

LABEL_44:
      if (v28 == 1)
      {
        v32 = *(v42 + 32);
        v32(a1, a2, v6);
        v32((&a1[v13] & v43), (&a2[v13] & v43), v6);
        v33 = 1;
      }

      else
      {
        v34 = *(v7 + 32);
        v34(a1, a2, v5);
        v34((&a1[v44] & v22), (&a2[v44] & v22), v5);
        v33 = 0;
      }

      goto LABEL_50;
    }

    if (v17 <= 3)
    {
      v20 = v17;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v21 = *a1;
        if (v17 >= 4)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v20 == 3)
        {
          v21 = *a1 | (a1[2] << 16);
          if (v17 < 4)
          {
            goto LABEL_23;
          }

LABEL_21:
          v18 = v21 + 3;
          goto LABEL_24;
        }

        v21 = *a1;
        if (v17 >= 4)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      v18 = (v21 | (v19 << (8 * v17))) + 3;
      goto LABEL_24;
    }

    if (!v20)
    {
      goto LABEL_24;
    }

    v21 = *a1;
    if (v17 < 4)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for CollectionChanges.Element(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = *(*(a3 + 24) - 8);
  v5 = ((v3 + *(*(*(a3 + 16) - 8) + 80)) & ~*(*(*(a3 + 16) - 8) + 80)) + v3;
  v6 = *(v4 + 80);
  v7 = ((*(v4 + 64) + v6) & ~v6) + *(v4 + 64);
  if (v7 <= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  v9 = v7 + ((v5 + v6) & ~v6);
  if (v9 <= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_29;
  }

  v11 = v10 + 1;
  v12 = 8 * (v10 + 1);
  if ((v10 + 1) <= 3)
  {
    v15 = ((a2 + ~(-1 << v12) - 253) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v15 < 2)
    {
LABEL_29:
      v17 = *(a1 + v10);
      if (v17 >= 3)
      {
        return (v17 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_29;
  }

LABEL_18:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return (v11 | v16) + 254;
}

void storeEnumTagSinglePayload for CollectionChanges.Element(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 16) - 8) + 64) + *(*(*(a4 + 16) - 8) + 80)) & ~*(*(*(a4 + 16) - 8) + 80)) + *(*(*(a4 + 16) - 8) + 64);
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 80);
  v8 = ((*(v6 + 64) + v7) & ~v7) + *(v6 + 64);
  if (v8 <= v5)
  {
    v9 = ((*(*(*(a4 + 16) - 8) + 64) + *(*(*(a4 + 16) - 8) + 80)) & ~*(*(*(a4 + 16) - 8) + 80)) + *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v9 = v8;
  }

  v10 = v8 + ((v5 + v7) & ~v7);
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

uint64_t getEnumTag for CollectionChanges.Element(unsigned __int8 *a1, uint64_t a2)
{
  v2 = ((*(*(*(a2 + 16) - 8) + 64) + *(*(*(a2 + 16) - 8) + 80)) & ~*(*(*(a2 + 16) - 8) + 80)) + *(*(*(a2 + 16) - 8) + 64);
  v3 = *(*(a2 + 24) - 8);
  v4 = *(v3 + 80);
  v5 = ((*(v3 + 64) + v4) & ~v4) + *(v3 + 64);
  if (v5 <= v2)
  {
    v6 = ((*(*(*(a2 + 16) - 8) + 64) + *(*(*(a2 + 16) - 8) + 80)) & ~*(*(*(a2 + 16) - 8) + 80)) + *(*(*(a2 + 16) - 8) + 64);
  }

  else
  {
    v6 = v5;
  }

  v7 = v5 + ((v2 + v4) & ~v4);
  if (v7 <= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = a1[v8];
  v10 = v9 - 3;
  if (v9 >= 3)
  {
    if (v8 <= 3)
    {
      v11 = v8;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        return v9;
      }

      v12 = *a1;
    }

    else if (v11 == 2)
    {
      v12 = *a1;
    }

    else if (v11 == 3)
    {
      v12 = *a1 | (a1[2] << 16);
    }

    else
    {
      v12 = *a1;
    }

    v13 = (v12 | (v10 << (8 * v8))) + 3;
    LODWORD(v9) = v12 + 3;
    if (v8 >= 4)
    {
      return v9;
    }

    else
    {
      return v13;
    }
  }

  return v9;
}

void destructiveInjectEnumTag for CollectionChanges.Element(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (a2 > 2)
  {
    v3 = *(*(a3 + 16) - 8);
    v10 = ((*(v3 + 64) + *(v3 + 80)) & ~*(v3 + 80)) + *(v3 + 64);
    v11 = *(*(a3 + 24) - 8);
    v12 = *(v11 + 80);
    v13 = ((*(v11 + 64) + v12) & ~v12) + *(v11 + 64);
    if (v13 <= v10)
    {
      v14 = ((*(v3 + 64) + *(v3 + 80)) & ~*(v3 + 80)) + *(v3 + 64);
    }

    else
    {
      v14 = v13;
    }

    v15 = v13 + ((v10 + v12) & ~v12);
    if (v15 <= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    v17 = a2 - 3;
    if (v16 < 4)
    {
      a1[v16] = (v17 >> (8 * v16)) + 3;
      if (v16)
      {
        v19 = v17 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v16 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      a1[v16] = 3;
      bzero(a1, v16);
      *a1 = v17;
    }
  }

  else
  {
    v4 = *(*(a3 + 24) - 8);
    v5 = ((*(*(*(a3 + 16) - 8) + 64) + *(*(*(a3 + 16) - 8) + 80)) & ~*(*(*(a3 + 16) - 8) + 80)) + *(*(*(a3 + 16) - 8) + 64);
    v6 = *(v4 + 80);
    v7 = (v5 + v6) & ~v6;
    v8 = ((*(v4 + 64) + v6) & ~v6) + *(v4 + 64);
    v9 = v7 + v8;
    if (v8 > v5)
    {
      v5 = v8;
    }

    if (v9 > v5)
    {
      v5 = v9;
    }

    a1[v5] = a2;
  }
}

uint64_t initializeWithCopy for CollectionChanges.Projection(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for CollectionChanges.Projection(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for CollectionChanges.Projection(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in CollectionChanges.changedOffsets<A, B>(from:to:limit:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = specialized CollectionChanges.getOffset<A>(from:)(a1, v8, v5, v6, AssociatedTypeWitness);
  *a2 = result;
  return result;
}

{
  return partial apply for closure #2 in closure #1 in closure #1 in CollectionChanges.changedOffsets<A, B>(from:to:limit:)(a1, a2);
}

uint64_t *initializeBufferWithCopyOfBuffer for _EnvironmentKeyWritingModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-9 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    v10 = a2 + v6 + 8;
    v11 = *(v5 + 16);

    v11((v3 + v6 + 8) & ~v6, v10 & ~v6, v4);
  }

  else
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return v3;
}

void *initializeBufferWithCopyOfBuffer for ChildEnvironment(_DWORD *a1, int *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  v8 = ((v7 + 8) & ~v7) + *(v5 + 64);
  if (v7 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-9 - v7) | v7 | 7) - v8 >= 0xFFFFFFFFFFFFFFE7)
  {
    v13 = *a2;
    v12 = a2 + 7;
    *a1 = v13;
    v14 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v14 = *(v12 & 0xFFFFFFFFFFFFFFFCLL);
    v15 = v14 + 11;
    v16 = (((v12 & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8);
    if ((v6 & 0x80000000) != 0)
    {
      v19 = (*(v5 + 48))(v16 + 1, v6, v4);
      v18 = (v15 & 0xFFFFFFFFFFFFFFF8);
      if (v19)
      {
LABEL_13:
        memcpy(v18, v16, v8);
        return v3;
      }
    }

    else
    {
      v17 = *v16;
      if (*v16 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      v18 = (v15 & 0xFFFFFFFFFFFFFFF8);
      if (v17 != -1)
      {
        goto LABEL_13;
      }
    }

    *v18 = *v16;
    v20 = *(v5 + 16);
    v21 = v18 + 1;

    v20(v21, v16 + 1, v4);
    return v3;
  }

  v11 = *a2;
  *v3 = *a2;
  v3 = (v11 + ((v7 + 16) & ~(v7 | 7)));

  return v3;
}

_DWORD *assignWithCopy for ChildEnvironment(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v3 = a1;
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 | 7) + 4;
  v10 = ((v4 + v9) & ~(v8 | 7));
  v11 = ((v5 + v9) & ~(v8 | 7));
  v12 = *(v7 + 84);
  v13 = ~v8;
  v14 = v8 + 8;
  v15 = *(v7 + 64);
  v16 = (v8 + 8) & ~v8;
  if ((v12 & 0x80000000) != 0)
  {
    v23 = *(v7 + 64);
    v19 = *(v7 + 48);
    v22 = v19((v10 + v14) & v13, v12, v6);
    v18 = v19((v11 + v14) & v13, v12, v6);
    v15 = v23;
    v3 = a1;
    if (!v22)
    {
LABEL_5:
      if (!v18)
      {
        *v10 = *v11;

        (*(v7 + 24))((v10 + v14) & v13, (v11 + v14) & v13, v6);
        return v3;
      }

      (*(v7 + 8))((v10 + v14) & v13, v6);
      goto LABEL_9;
    }
  }

  else
  {
    v17 = *v11;
    if (*v11 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 + 1;
    if (*v10 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v18)
  {
    *v10 = *v11;
    v20 = *(v7 + 16);

    v20((v10 + v14) & v13, (v11 + v14) & v13, v6);
    return v3;
  }

LABEL_9:
  memcpy(v10, v11, v16 + v15);
  return v3;
}

{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((v4 + v8 + 4) & ~v8);
  v10 = ((v5 + v8 + 4) & ~v8);
  v11 = *(v7 + 48);
  v12 = v11(v9, 1, v6);
  v13 = v11(v10, 1, v6);
  if (v12)
  {
    if (!v13)
    {
      (*(v7 + 16))(v9, v10, v6);
      (*(v7 + 56))(v9, 0, 1, v6);
      goto LABEL_12;
    }

    v14 = *(v7 + 84);
    v15 = *(v7 + 64);
  }

  else
  {
    if (!v13)
    {
      (*(v7 + 24))(v9, v10, v6);
      goto LABEL_12;
    }

    (*(v7 + 8))(v9, v6);
    v14 = *(v7 + 84);
    v15 = *(v7 + 64);
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 1;
  }

  memcpy(v9, v10, v16);
LABEL_12:
  if (*(v7 + 84))
  {
    v17 = *(v7 + 64);
  }

  else
  {
    v17 = *(v7 + 64) + 1;
  }

  *((v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

_DWORD *initializeWithTake for ChildEnvironment(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 | 7) + 4;
  v10 = ((v4 + v9) & ~(v8 | 7));
  v11 = ((v5 + v9) & ~(v8 | 7));
  v12 = ~v8;
  v13 = *(v7 + 64);
  v14 = v8 + 8;
  if ((*(v7 + 84) & 0x80000000) == 0)
  {
    v15 = *v11;
    if (*v11 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    if (v15 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v10 = *v11;
    (*(v7 + 32))((v10 + v14) & v12, (v11 + v14) & v12, v6);
    return a1;
  }

  if (!(*(v7 + 48))((v11 + v14) & v12))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v10, v11, (v14 & ~v8) + v13);
  return a1;
}

{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((v4 + v8 + 4) & ~v8);
  v10 = ((v5 + v8 + 4) & ~v8);
  if ((*(v7 + 48))(v10, 1, v6))
  {
    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 + 1;
    }

    memcpy(v9, v10, v13);
  }

  else
  {
    (*(v7 + 32))(v9, v10, v6);
    v15 = *(v7 + 56);
    v14 = v7 + 56;
    v15(v9, 0, 1, v6);
    v11 = *(v14 + 28);
    v12 = *(v14 + 8);
  }

  if (v11)
  {
    v16 = v12;
  }

  else
  {
    v16 = v12 + 1;
  }

  *((v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_DWORD *assignWithTake for ChildEnvironment(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v3 = a1;
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 | 7) + 4;
  v10 = ((v4 + v9) & ~(v8 | 7));
  v11 = ((v5 + v9) & ~(v8 | 7));
  v12 = *(v7 + 84);
  v13 = ~v8;
  v14 = v8 + 8;
  v15 = *(v7 + 64);
  v16 = (v8 + 8) & ~v8;
  if ((v12 & 0x80000000) != 0)
  {
    v19 = *(v7 + 48);
    v21 = v19((v10 + v14) & v13, v12, v6);
    v18 = v19((v11 + v14) & v13, v12, v6);
    v3 = a1;
    if (!v21)
    {
LABEL_5:
      if (!v18)
      {
        *v10 = *v11;

        (*(v7 + 40))((v10 + v14) & v13, (v11 + v14) & v13, v6);
        return v3;
      }

      (*(v7 + 8))((v10 + v14) & v13, v6);
      goto LABEL_9;
    }
  }

  else
  {
    v17 = *v11;
    if (*v11 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 + 1;
    if (*v10 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v18)
  {
    *v10 = *v11;
    (*(v7 + 32))((v10 + v14) & v13, (v11 + v14) & v13, v6);
    return v3;
  }

LABEL_9:
  memcpy(v10, v11, v16 + v15);
  return v3;
}

{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((v4 + v8 + 4) & ~v8);
  v10 = ((v5 + v8 + 4) & ~v8);
  v11 = *(v7 + 48);
  v12 = v11(v9, 1, v6);
  v13 = v11(v10, 1, v6);
  if (v12)
  {
    if (!v13)
    {
      (*(v7 + 32))(v9, v10, v6);
      (*(v7 + 56))(v9, 0, 1, v6);
      goto LABEL_12;
    }

    v14 = *(v7 + 84);
    v15 = *(v7 + 64);
  }

  else
  {
    if (!v13)
    {
      (*(v7 + 40))(v9, v10, v6);
      goto LABEL_12;
    }

    (*(v7 + 8))(v9, v6);
    v14 = *(v7 + 84);
    v15 = *(v7 + 64);
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 1;
  }

  memcpy(v9, v10, v16);
LABEL_12:
  if (*(v7 + 84))
  {
    v17 = *(v7 + 64);
  }

  else
  {
    v17 = *(v7 + 64) + 1;
  }

  *((v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for ChildEnvironment(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = v6 | 7;
  if (v7 - 1 >= a2)
  {
    goto LABEL_28;
  }

  v9 = *(*(*(a3 + 16) - 8) + 64) - (((-9 - v6) | v6) + ((-9 - v6) | v8)) - 2;
  v10 = 8 * v9;
  if (v9 > 3)
  {
    goto LABEL_7;
  }

  v13 = (((1 << v10) + a2 - v7) >> v10) + 1;
  if (HIWORD(v13))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_15;
    }

LABEL_28:
    v17 = ((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v8 + 4) & ~v8);
    if ((v5 & 0x80000000) != 0)
    {
      v19 = (*(v4 + 48))((v17 + v6 + 8) & ~v6);
    }

    else
    {
      v18 = *v17;
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      v19 = v18 + 1;
    }

    if (v19 >= 2)
    {
      return v19 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v13 > 0xFF)
  {
    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

  if (v13 < 2)
  {
    goto LABEL_28;
  }

LABEL_7:
  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_28;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (*(*(*(a3 + 16) - 8) + 64) - (((-9 - v6) | v6) + ((-9 - v6) | v8)) == 2)
  {
    v16 = 0;
  }

  else
  {
    if (v9 <= 3)
    {
      v15 = *(*(*(a3 + 16) - 8) + 64) - (((-9 - v6) | v6) + ((-9 - v6) | v8)) - 2;
    }

    else
    {
      v15 = 4;
    }

    if (v15 > 2)
    {
      if (v15 == 3)
      {
        v16 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v16 = *a1;
      }
    }

    else if (v15 == 1)
    {
      v16 = *a1;
    }

    else
    {
      v16 = *a1;
    }
  }

  return (v16 | v14) + v7;
}

void storeEnumTagSinglePayload for ChildEnvironment(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = v8 - 1;
  v10 = *(v6 + 80);
  v11 = ((v10 + 8) & ~v10) + *(*(*(a4 + 16) - 8) + 64) + ((v10 + 8) & ~(v10 | 7));
  if (v8 - 1 >= a3)
  {
    v12 = 0;
LABEL_16:
    if (v9 >= a2)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  v12 = 1;
  if (v11 > 3)
  {
    goto LABEL_16;
  }

  v13 = (((1 << (8 * v11)) + a3 - v8) >> (8 * v11)) + 1;
  if (HIWORD(v13))
  {
    v12 = 4;
    if (v9 >= a2)
    {
      goto LABEL_26;
    }
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
      v12 = v14;
    }

    else
    {
      v12 = 0;
    }

    if (v9 >= a2)
    {
LABEL_26:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *&a1[v11] = 0;
      }

      else if (v12)
      {
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      v18 = ((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + (v10 | 7) + 4) & ~(v10 | 7));
      if ((v7 & 0x80000000) != 0)
      {
        v19 = *(v6 + 56);
        v20 = a2 + 1;

        v19((v18 + v10 + 8) & ~v10, v20);
      }

      else if (((a2 + 1) & 0x80000000) != 0)
      {
        *v18 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v18 = a2;
      }

      return;
    }
  }

LABEL_17:
  v15 = a2 - v8;
  if (v11 >= 4)
  {
    bzero(a1, v11);
    *a1 = v15;
    v16 = 1;
    if (v12 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v16 = (v15 >> (8 * v11)) + 1;
  if (!v11)
  {
LABEL_43:
    if (v12 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v17 = v15 & ~(-1 << (8 * v11));
  bzero(a1, v11);
  if (v11 == 3)
  {
    *a1 = v17;
    a1[2] = BYTE2(v17);
    goto LABEL_43;
  }

  if (v11 == 2)
  {
    *a1 = v17;
    if (v12 > 1)
    {
LABEL_47:
      if (v12 == 2)
      {
        *&a1[v11] = v16;
      }

      else
      {
        *&a1[v11] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v12 > 1)
    {
      goto LABEL_47;
    }
  }

LABEL_44:
  if (v12)
  {
    a1[v11] = v16;
  }
}

unint64_t specialized ChildEnvironment.description.getter(uint64_t a1)
{
  _StringGuts.grow(_:)(22);

  v1 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v1);

  return 0xD000000000000014;
}

double resolvedDistance(from:to:pixelLength:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9)
{
  v42.origin.x = a5;
  v42.origin.y = a6;
  v42.size.width = a7;
  v42.size.height = a8;
  v40 = CGRectGetWidth(v42) * 0.5 + a5;
  v43.origin.x = a5;
  v43.origin.y = a6;
  v43.size.width = a7;
  v43.size.height = a8;
  CGRectGetHeight(v43);
  v44.origin.x = a1;
  v44.origin.y = a2;
  v44.size.width = a3;
  v44.size.height = a4;
  v39 = CGRectGetWidth(v44) * 0.5 + a1;
  v45.origin.x = a1;
  v45.origin.y = a2;
  v45.size.width = a3;
  v45.size.height = a4;
  CGRectGetHeight(v45);
  v41 = vabdd_f64(v40, v39);
  v46.origin.x = a5;
  v46.origin.y = a6;
  v46.size.width = a7;
  v46.size.height = a8;
  CGRectGetWidth(v46);
  v47.origin.x = a5;
  v47.origin.y = a6;
  v38 = a7;
  v47.size.width = a7;
  v47.size.height = a8;
  v17 = CGRectGetHeight(v47) * 0.5 + a6;
  v48.origin.x = a1;
  v48.origin.y = a2;
  v48.size.width = a3;
  v48.size.height = a4;
  CGRectGetWidth(v48);
  v49.origin.x = a1;
  v49.origin.y = a2;
  v37 = a3;
  v49.size.width = a3;
  v18 = a4;
  v49.size.height = a4;
  v19 = vabdd_f64(v17, CGRectGetHeight(v49) * 0.5 + a2);
  v20 = byte_1F0044740;
  v21 = v41;
  if (byte_1F0044740)
  {
    v21 = v19;
  }

  v36 = a5;
  if (v21 <= 0.0)
  {
    v22 = a9;
    v27 = v37;
    v28 = v41;
  }

  else
  {
    CGRect.minDistance(to:in:)(byte_1F0044740, a5, a6, v38, a8, a1, a2, v37, v18);
    v22 = a9;
    v24 = round(v23 / a9) * a9;
    v25 = round(v23);
    if (a9 != 1.0)
    {
      v25 = v24;
    }

    if (v20)
    {
      v19 = v25;
    }

    v26 = v41;
    if (!v20)
    {
      v26 = v25;
    }

    v27 = v37;
    v28 = v26;
  }

  v29 = byte_1F0044741;
  if (byte_1F0044741)
  {
    v30 = v19;
  }

  else
  {
    v30 = v28;
  }

  if (v30 > 0.0)
  {
    v31 = v22;
    CGRect.minDistance(to:in:)(byte_1F0044741, v36, a6, v38, a8, a1, a2, v27, v18);
    v33 = round(v32);
    v34 = round(v32 / v31) * v31;
    if (v31 == 1.0)
    {
      v34 = v33;
    }

    if (v29)
    {
      v19 = v34;
    }

    else
    {
      v28 = v34;
    }
  }

  return sqrt(v19 * v19 + v28 * v28);
}

void GlassContainer.Item.matchingResult(to:context:)(Swift::UInt32 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 8);
  v7 = *(a2 + 40);
  v8 = *(a2 + 80);
  v67 = *(a2 + 64);
  v68 = v8;
  v69 = *(a2 + 96);
  v70 = *(a2 + 112);
  v9 = *(a2 + 120);
  v10 = *v3;
  if (*(v6 + 16))
  {
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(*v3);
    if (v12)
    {
      v13 = *(v6 + 56) + 40 * v11;
      v14 = *(v13 + 32);
      v15 = *(v13 + 16);
      v64 = *v13;
      v65 = v15;
      v66 = v14;
      type metadata accessor for Anchor<CGRect>(0);
      outlined init with copy of GlassContainer.ItemData(&v64, v63);
      WeakValue = AGGraphGetWeakValue();
      if (WeakValue)
      {
        goto LABEL_8;
      }

      outlined destroy of GlassContainer.ItemData(&v64);
    }
  }

  if (!*(v7 + 16) || (v17 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v18 & 1) == 0))
  {
LABEL_11:
    v22 = 0;
    if (!*(v6 + 16))
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v19 = *(v7 + 56) + 40 * v17;
  v20 = *(v19 + 32);
  v21 = *(v19 + 16);
  v64 = *v19;
  v65 = v21;
  v66 = v20;
  type metadata accessor for Anchor<CGRect>(0);
  outlined init with copy of GlassContainer.ItemData(&v64, v63);
  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
    outlined destroy of GlassContainer.ItemData(&v64);
    goto LABEL_11;
  }

LABEL_8:
  v22 = *WeakValue;

  outlined destroy of GlassContainer.ItemData(&v64);
  if (!*(v6 + 16))
  {
    goto LABEL_15;
  }

LABEL_12:
  v23 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
  if (v24)
  {
    v25 = *(v6 + 56) + 40 * v23;
    v26 = *(v25 + 32);
    v27 = *(v25 + 16);
    v64 = *v25;
    v65 = v27;
    v66 = v26;
    type metadata accessor for Anchor<CGRect>(0);
    outlined init with copy of GlassContainer.ItemData(&v64, v63);
    v28 = AGGraphGetWeakValue();
    if (v28)
    {
      goto LABEL_18;
    }

    outlined destroy of GlassContainer.ItemData(&v64);
  }

LABEL_15:
  if (!*(v7 + 16) || (v29 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v30 & 1) == 0))
  {
LABEL_21:
    v34 = 0;
    if (!v22)
    {
      goto LABEL_32;
    }

    goto LABEL_22;
  }

  v31 = *(v7 + 56) + 40 * v29;
  v32 = *(v31 + 32);
  v33 = *(v31 + 16);
  v64 = *v31;
  v65 = v33;
  v66 = v32;
  type metadata accessor for Anchor<CGRect>(0);
  outlined init with copy of GlassContainer.ItemData(&v64, v63);
  v28 = AGGraphGetWeakValue();
  if (!v28)
  {
    outlined destroy of GlassContainer.ItemData(&v64);
    goto LABEL_21;
  }

LABEL_18:
  v34 = *v28;

  outlined destroy of GlassContainer.ItemData(&v64);
  if (!v22)
  {
    goto LABEL_32;
  }

LABEL_22:
  if (!v34)
  {
LABEL_32:

    v50 = 0.0;
    v54 = 1;
    v36 = 0.0;
    v38 = 0.0;
    v55 = 0x7FF0000000000000;
    v40 = 0.0;
    v41 = 0.0;
    v43 = 0.0;
    v45 = 0.0;
    v47 = 0.0;
    v53 = 0.0;
    v51 = 0.0;
    goto LABEL_33;
  }

  v57 = specialized GeometryProxy.subscript.getter(v22);
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = specialized GeometryProxy.subscript.getter(v34);
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v62 = resolvedDistance(from:to:pixelLength:)(v57, v36, v38, v40, v41, v42, v44, v46, v9);
  v71.origin.x = v41;
  v71.origin.y = v43;
  v71.size.width = v45;
  v71.size.height = v47;
  Width = CGRectGetWidth(v71);
  v72.origin.x = v41;
  v72.origin.y = v43;
  v72.size.width = v45;
  v72.size.height = v47;
  Height = CGRectGetHeight(v72);
  v73.origin.x = v57;
  v73.origin.y = v36;
  v73.size.width = v38;
  v73.size.height = v40;
  v59 = CGRectGetWidth(v73);
  v74.origin.x = v57;
  v74.origin.y = v36;
  v74.size.width = v38;
  v74.size.height = v40;
  v58 = CGRectGetHeight(v74);
  v75.origin.x = v57;
  v75.origin.y = v36;
  v75.size.width = v38;
  v75.size.height = v40;
  v77.origin.x = v41;
  v77.origin.y = v43;
  v77.size.width = v45;
  v77.size.height = v47;
  v76 = CGRectIntersection(v75, v77);
  v56 = v76.size.width;
  v48 = v76.size.height;
  v49 = CGRectEqualToRect(v76, *MEMORY[0x1E695F050]);

  v50 = v57;
  v51 = v43 + Height * 0.5 - (v36 + v58 * 0.5);
  v52 = v38 * v40;
  if (v45 * v47 < v38 * v40)
  {
    v52 = v45 * v47;
  }

  if (v49)
  {
    v53 = v41 + Width * 0.5 - (v57 + v59 * 0.5);
  }

  else
  {
    v53 = 0.0;
  }

  if (v49)
  {
    v54 = 1;
  }

  else
  {
    v51 = 0.0;
    v54 = v52 * 0.5 > v56 * v48;
  }

  v55 = *&v62;
LABEL_33:
  *a3 = v55;
  *(a3 + 8) = v54;
  *(a3 + 16) = v50;
  *(a3 + 24) = v36;
  *(a3 + 32) = v38;
  *(a3 + 40) = v40;
  *(a3 + 48) = v41;
  *(a3 + 56) = v43;
  *(a3 + 64) = v45;
  *(a3 + 72) = v47;
  *(a3 + 80) = v53;
  *(a3 + 88) = v51;
  *(a3 + 96) = 0;
  *(a3 + 104) = 1;
}

uint64_t GlassContainer.MatchingResult.description.getter(uint64_t a1)
{
  _StringGuts.grow(_:)(19);
  MEMORY[0x193ABEDD0](0x28686374614DLL, 0xE600000000000000);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x193ABEDD0](0x203A646E696B202CLL, 0xE800000000000000);
  if (*(v1 + *(a1 + 28)))
  {
    v3 = 0x724F747265736E69;
  }

  else
  {
    v3 = 0x6573756572;
  }

  if (*(v1 + *(a1 + 28)))
  {
    v4 = 0xEE0065766F6D6552;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x193ABEDD0](v3, v4);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  return 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GlassContainer.MatchingKind()
{
  if (*v0)
  {
    return 0x724F747265736E69;
  }

  else
  {
    return 0x6573756572;
  }
}

double destroy for GlassContainer.Entry.DistanceContext(uint64_t a1)
{

  return result;
}

uint64_t initializeWithCopy for GlassContainer.Entry.DistanceContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t assignWithCopy for GlassContainer.Entry.DistanceContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t assignWithTake for GlassContainer.Entry.DistanceContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t getEnumTagSinglePayload for GlassContainer.Entry.DistanceContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for GlassContainer.Entry.DistanceContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double destroy for GlassContainer.Item.DistanceContext(void *a1)
{

  return result;
}

uint64_t initializeWithCopy for GlassContainer.Item.DistanceContext(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  v6 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v6;
  v7 = *(a2 + 64);
  v8 = *(a2 + 80);
  v9 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *(a1 + 64) = v7;
  *(a1 + 120) = *(a2 + 120);

  return a1;
}

uint64_t assignWithCopy for GlassContainer.Item.DistanceContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  return a1;
}

uint64_t assignWithTake for GlassContainer.Item.DistanceContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);

  v4 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v4;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  return a1;
}

uint64_t type metadata completion function for GlassContainer.MatchingResult(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for GlassContainer.MatchingResult(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || (((((((v5 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    *(v3 + v5) = *(a2 + v5);
    v10 = (v3 + v5) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(v11 + 8);
    *(v10 + 24) = *(v11 + 24);
    *(v10 + 8) = v12;
    v13 = ((v10 + 47) & 0xFFFFFFFFFFFFFFF8);
    v14 = ((v11 + 47) & 0xFFFFFFFFFFFFFFF8);
    v15 = v14[1];
    *v13 = *v14;
    v13[1] = v15;
    v16 = ((v13 + 39) & 0xFFFFFFFFFFFFFFF8);
    v17 = ((v14 + 39) & 0xFFFFFFFFFFFFFFF8);
    *v16 = *v17;
    v18 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
    v19 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
    v20 = *(v19 + 8);
    *v18 = *v19;
    *(v18 + 8) = v20;
  }

  return v3;
}

uint64_t initializeWithCopy for GlassContainer.MatchingResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v7 &= 0xFFFFFFFFFFFFFFF8;
  v8 &= 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 24);
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 24) = v9;
  v10 = ((v7 + 47) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v8 + 47) & 0xFFFFFFFFFFFFFFF8);
  v12 = v11[1];
  *v10 = *v11;
  v10[1] = v12;
  v13 = ((v10 + 39) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v11 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  v15 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = *v16;
  *(v15 + 8) = *(v16 + 8);
  *v15 = v17;
  return a1;
}

uint64_t assignWithCopy for GlassContainer.MatchingResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v7 &= 0xFFFFFFFFFFFFFFF8;
  v8 &= 0xFFFFFFFFFFFFFFF8;
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 16) = *(v8 + 16);
  *(v7 + 24) = *(v8 + 24);
  *(v7 + 32) = *(v8 + 32);
  v9 = ((v7 + 47) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v9[1] = v10[1];
  v9[2] = v10[2];
  v9[3] = v10[3];
  v11 = ((v9 + 39) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  v11[1] = v12[1];
  v13 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v14 + 8);
  *v13 = *v14;
  *(v13 + 8) = v15;
  return a1;
}

uint64_t initializeWithTake for GlassContainer.MatchingResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v7 &= 0xFFFFFFFFFFFFFFF8;
  v8 &= 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 24);
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 24) = v9;
  v10 = ((v7 + 47) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v8 + 47) & 0xFFFFFFFFFFFFFFF8);
  v12 = v11[1];
  *v10 = *v11;
  v10[1] = v12;
  v13 = ((v10 + 39) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v11 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  v15 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = *v16;
  *(v15 + 8) = *(v16 + 8);
  *v15 = v17;
  return a1;
}

uint64_t assignWithTake for GlassContainer.MatchingResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v7 &= 0xFFFFFFFFFFFFFFF8;
  v8 &= 0xFFFFFFFFFFFFFFF8;
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 16) = *(v8 + 16);
  *(v7 + 24) = *(v8 + 24);
  *(v7 + 32) = *(v8 + 32);
  v9 = ((v7 + 47) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v9[1] = v10[1];
  v9[2] = v10[2];
  v9[3] = v10[3];
  v11 = ((v9 + 39) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  v11[1] = v12[1];
  v13 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v14 + 8);
  *v13 = *v14;
  *(v13 + 8) = v15;
  return a1;
}

uint64_t getEnumTagSinglePayload for GlassContainer.MatchingResult(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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
    goto LABEL_28;
  }

  v8 = (((((((v6 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = a1[v6];
    if (v17 >= 2)
    {
      return v17 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void storeEnumTagSinglePayload for GlassContainer.MatchingResult(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = (((((((v9 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFE)
      {
        a1[v9] = a2 + 1;
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, (((((((v9 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

void lazy protocol witness table accessor for type GlassContainer.MatchingKind and conformance GlassContainer.MatchingKind()
{
  if (!lazy protocol witness table cache variable for type GlassContainer.MatchingKind and conformance GlassContainer.MatchingKind)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassContainer.MatchingKind, &type metadata for GlassContainer.MatchingKind, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassContainer.MatchingKind and conformance GlassContainer.MatchingKind);
  }
}

void _ViewOutputs.setIndirectDependency(_:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 3);
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = *MEMORY[0x1E698D3F8];

    v6 = 48;
    do
    {
      AGGraphSetIndirectDependency();
      v6 += 24;
      --v4;
    }

    while (v4);

    if (v3 == v5)
    {
      return;
    }
  }

  else if (v3 == *MEMORY[0x1E698D3F8])
  {
    return;
  }

  AGGraphSetIndirectDependency();
}

Swift::Void __swiftcall _ViewOutputs.detachIndirectOutputs()()
{
  v1 = *v0;
  v2 = v0[3];
  v3 = *(*v0 + 16);
  v4 = *MEMORY[0x1E698D3F8];
  if (v3)
  {
    v5 = v1 + 48;
    do
    {
      v5 += 24;
      AGGraphSetIndirectAttribute();
      --v3;
    }

    while (v3);
  }

  if (v2 != v4)
  {

    AGGraphSetIndirectAttribute();
  }
}

uint64_t OpenURLAction.SystemHandlerInput.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t OpenURLAction.SystemHandlerInput.completion.getter()
{
  v1 = *(v0 + *(type metadata accessor for OpenURLAction.SystemHandlerInput(0) + 24));

  return v1;
}

uint64_t one-time initialization function for handled(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for OpenURLAction.Result(0);
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  type metadata accessor for (url: URL?, prefersInApp: Bool)(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(v6, a3, 2, v7);
}

uint64_t one-time initialization function for systemAction()
{
  v0 = type metadata accessor for OpenURLAction.Result(0);
  __swift_allocate_value_buffer(v0, static OpenURLAction.Result.systemAction);
  v1 = __swift_project_value_buffer(v0, static OpenURLAction.Result.systemAction);
  type metadata accessor for (url: URL?, prefersInApp: Bool)(0);
  v3 = v2;
  v4 = *(v2 + 48);
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  *(v1 + v4) = 0;
  v6 = *(*(v3 - 8) + 56);

  return v6(v1, 0, 2, v3);
}

uint64_t static OpenURLAction.Result.handled.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for OpenURLAction.Result(0);
  v7 = __swift_project_value_buffer(v6, a2);
  return outlined init with copy of OpenURLAction.Result(v7, a4, type metadata accessor for OpenURLAction.Result);
}

uint64_t static OpenURLAction.Result.systemAction(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for (url: URL?, prefersInApp: Bool)(0);
  v5 = v4;
  v6 = *(v4 + 48);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  (*(v8 + 16))(a2, a1, v7);
  (*(v8 + 56))(a2, 0, 1, v7);
  *(a2 + v6) = 0;
  v9 = *(*(v5 - 8) + 56);

  return v9(a2, 0, 2, v5);
}

void type metadata accessor for (url: URL?, prefersInApp: Bool)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (url: URL?, prefersInApp: Bool))
  {
    type metadata accessor for URL?(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (url: URL?, prefersInApp: Bool));
    }
  }
}

uint64_t static OpenURLAction.Result.systemAction(_:prefersInApp:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  type metadata accessor for (url: URL?, prefersInApp: Bool)(0);
  v7 = v6;
  v8 = *(v6 + 48);
  outlined init with copy of OpenURLAction.Result(a1, a3, type metadata accessor for URL?);
  *(a3 + v8) = a2;
  v9 = *(*(v7 - 8) + 56);

  return v9(a3, 0, 2, v7);
}

uint64_t outlined init with copy of OpenURLAction.Result(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t OpenURLAction.init(handler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
  return result;
}

__n128 OpenURLAction.init(handler:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = v2;
  return result;
}

uint64_t OpenURLAction.init(isDefault:handler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a2;
  *(a4 + 8) = a3;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 33) = result;
  return result;
}

uint64_t OpenURLAction.init(_handler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = partial apply for closure #1 in OpenURLAction.init(_handler:);
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return result;
}

void specialized OpenURLAction._open(_:prefersInApp:completion:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v61 = a5;
  v63 = a4;
  v65 = a2;
  type metadata accessor for URL?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v60 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v58 - v10;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v67 = v11;
  v68 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  v66 = type metadata accessor for OpenURLAction.SystemHandlerInput(0);
  MEMORY[0x1EEE9AC00](v66);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v58 - v20;
  v22 = type metadata accessor for OpenURLAction.Result.ActionResult(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for OpenURLAction.Result(0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *a3;
  v29 = *(a3 + 16);
  v30 = *(a3 + 24);
  if (*(a3 + 32))
  {

    v31 = outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v29, v30);
    v28(a1, v31);
    outlined init with copy of OpenURLAction.Result(v27, v24, type metadata accessor for OpenURLAction.Result.ActionResult);
    type metadata accessor for (url: URL?, prefersInApp: Bool)(0);
    v33 = v32;
    if ((*(*(v32 - 8) + 48))(v24, 2, v32))
    {

      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v29, v30);
    }

    else
    {
      v63 = a1;
      v41 = v24[*(v33 + 48)];
      v42 = v64;
      outlined init with take of URL?(v24, v64);
      if (v29)
      {
        v58 = v30;
        v59 = v27;
        if (v65 == 2)
        {
          v43 = v41;
        }

        else
        {
          v43 = v65;
        }

        v44 = v60;
        outlined init with copy of OpenURLAction.Result(v42, v60, type metadata accessor for URL?);
        v45 = v67;
        v46 = v68;
        v47 = *(v68 + 48);
        if (v47(v44, 1, v67) == 1)
        {
          v48 = v62;
          (*(v46 + 16))(v62, v63, v45);
          v49 = v48;
          if (v47(v44, 1, v45) != 1)
          {
            outlined destroy of OpenURLAction.SystemHandlerInput(v44, type metadata accessor for URL?);
          }
        }

        else
        {
          v49 = v62;
          (*(v46 + 32))(v62, v44, v45);
        }

        (*(v46 + 32))(v18, v49, v45);
        v55 = v66;
        v18[*(v66 + 20)] = v43 & 1;
        v56 = &v18[*(v55 + 24)];
        *v56 = v61;
        v56[1] = 0;
        v57 = v58;
        v29(v18);

        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v29, v57);
        outlined destroy of OpenURLAction.SystemHandlerInput(v18, type metadata accessor for OpenURLAction.SystemHandlerInput);
        outlined destroy of OpenURLAction.SystemHandlerInput(v64, type metadata accessor for URL?);
        v34 = type metadata accessor for OpenURLAction.Result;
        v35 = v59;
        goto LABEL_20;
      }

      type metadata accessor for OpenURLAction?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_18DDA6EB0;
      v70 = 0;
      v71 = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      v70 = 0xD00000000000002ELL;
      v71 = 0x800000018DD79470;
      v51 = StaticString.description.getter();
      MEMORY[0x193ABEDD0](v51);

      MEMORY[0x193ABEDD0](58, 0xE100000000000000);
      v69 = 84;
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ABEDD0](v52);

      MEMORY[0x193ABEDD0](0xD00000000000001CLL, 0x800000018DD77470);
      v53 = v70;
      v54 = v71;
      *(v50 + 56) = MEMORY[0x1E69E6158];
      *(v50 + 32) = v53;
      *(v50 + 40) = v54;
      print(_:separator:terminator:)();

      outlined destroy of OpenURLAction.SystemHandlerInput(v42, type metadata accessor for URL?);
    }

    v34 = type metadata accessor for OpenURLAction.Result;
    v35 = v27;
LABEL_20:
    outlined destroy of OpenURLAction.SystemHandlerInput(v35, v34);
    return;
  }

  v36 = *(a3 + 8);

  if ((URL.isFileURL.getter() & 1) == 0)
  {
    v38 = v67;
    v37 = v68;
    (*(v68 + 16))(v16, a1, v67);
    (*(v37 + 32))(v21, v16, v38);
    v39 = v66;
    v21[*(v66 + 20)] = v65 & 1;
    v40 = &v21[*(v39 + 24)];
    *v40 = v63;
    v40[1] = 0;
    (v28)(v21);
    outlined consume of OpenURLAction.Handler(v28, v36, v29, v30, 0);
    v34 = type metadata accessor for OpenURLAction.SystemHandlerInput;
    v35 = v21;
    goto LABEL_20;
  }

  outlined consume of OpenURLAction.Handler(v28, v36, v29, v30, 0);
}

void OpenURLAction._open(_:prefersInApp:completion:)(uint64_t a1, int a2, void (*a3)(uint64_t), uint64_t a4)
{
  v73 = a3;
  v74 = a4;
  v70 = a2;
  type metadata accessor for URL?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v66 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v62 - v9;
  v10 = type metadata accessor for OpenURLAction.Result.ActionResult(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OpenURLAction.Result(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for URL();
  v71 = *(v16 - 8);
  v72 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v67 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v62 - v19;
  v69 = type metadata accessor for OpenURLAction.SystemHandlerInput(0);
  MEMORY[0x1EEE9AC00](v69);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v62 - v24;
  v26 = *v4;
  v28 = *(v4 + 16);
  v27 = *(v4 + 24);
  if (*(v4 + 32))
  {
    v29 = *(v4 + 8);

    v30 = outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v28, v27);
    v65 = v29;
    v26(a1, v30);
    outlined init with copy of OpenURLAction.Result(v15, v12, type metadata accessor for OpenURLAction.Result.ActionResult);
    type metadata accessor for (url: URL?, prefersInApp: Bool)(0);
    v32 = v31;
    v33 = (*(*(v31 - 8) + 48))(v12, 2, v31);
    v34 = v28;
    if (v33)
    {
      if (v33 != 1)
      {
        v33 = 0;
      }

      v73(v33);

      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v28, v27);
    }

    else
    {
      v44 = v12[*(v32 + 48)];
      v45 = v68;
      outlined init with take of URL?(v12, v68);
      if (v34)
      {
        v63 = v34;
        v64 = v15;
        if (v70 == 2)
        {
          v46 = v44;
        }

        else
        {
          v46 = v70;
        }

        v47 = v66;
        outlined init with copy of OpenURLAction.Result(v45, v66, type metadata accessor for URL?);
        v48 = v71;
        v49 = v72;
        v50 = *(v71 + 48);
        if (v50(v47, 1, v72) == 1)
        {
          v51 = v67;
          (*(v48 + 16))();
          if (v50(v47, 1, v49) != 1)
          {
            outlined destroy of OpenURLAction.SystemHandlerInput(v47, type metadata accessor for URL?);
          }
        }

        else
        {
          v51 = v67;
          (*(v48 + 32))(v67, v47, v49);
        }

        v57 = swift_allocObject();
        v58 = v74;
        *(v57 + 16) = v73;
        *(v57 + 24) = v58;
        (*(v48 + 32))(v22, v51, v49);
        v59 = v69;
        v22[*(v69 + 20)] = v46 & 1;
        v60 = &v22[*(v59 + 24)];
        *v60 = partial apply for closure #1 in OpenURLAction._open(_:prefersInApp:completion:);
        v60[1] = v57;

        v61 = v63;
        v63(v22);

        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v61, v27);
        outlined destroy of OpenURLAction.SystemHandlerInput(v22, type metadata accessor for OpenURLAction.SystemHandlerInput);
        outlined destroy of OpenURLAction.SystemHandlerInput(v45, type metadata accessor for URL?);
        v35 = type metadata accessor for OpenURLAction.Result;
        v36 = v64;
        goto LABEL_22;
      }

      type metadata accessor for OpenURLAction?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_18DDA6EB0;
      v76 = 0;
      v77 = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      v76 = 0xD00000000000002ELL;
      v77 = 0x800000018DD79470;
      v53 = StaticString.description.getter();
      MEMORY[0x193ABEDD0](v53);

      MEMORY[0x193ABEDD0](58, 0xE100000000000000);
      v75 = 84;
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ABEDD0](v54);

      MEMORY[0x193ABEDD0](0xD00000000000001CLL, 0x800000018DD77470);
      v55 = v76;
      v56 = v77;
      *(v52 + 56) = MEMORY[0x1E69E6158];
      *(v52 + 32) = v55;
      *(v52 + 40) = v56;
      print(_:separator:terminator:)();

      outlined destroy of OpenURLAction.SystemHandlerInput(v45, type metadata accessor for URL?);
    }

    v35 = type metadata accessor for OpenURLAction.Result;
    v36 = v15;
LABEL_22:
    outlined destroy of OpenURLAction.SystemHandlerInput(v36, v35);
    return;
  }

  v37 = *(v4 + 8);

  if ((URL.isFileURL.getter() & 1) == 0)
  {
    v38 = a1;
    v40 = v71;
    v39 = v72;
    (*(v71 + 16))(v20, v38, v72);
    (*(v40 + 32))(v25, v20, v39);
    v41 = v69;
    v25[*(v69 + 20)] = v70 & 1;
    v42 = &v25[*(v41 + 24)];
    v43 = v74;
    *v42 = v73;
    v42[1] = v43;

    (v26)(v25);
    outlined consume of OpenURLAction.Handler(v26, v37, v28, v27, 0);
    v35 = type metadata accessor for OpenURLAction.SystemHandlerInput;
    v36 = v25;
    goto LABEL_22;
  }

  v73(0);

  outlined consume of OpenURLAction.Handler(v26, v37, v28, v27, 0);
}