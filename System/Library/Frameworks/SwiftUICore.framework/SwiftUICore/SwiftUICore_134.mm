uint64_t specialized static Animation.interpolatingSpring(duration:bounce:initialVelocity:)(double a1, double a2, double a3)
{
  if (a1 <= 0.0)
  {
    v4 = INFINITY;
  }

  else
  {
    v4 = 6.28318531 / a1 * (6.28318531 / a1);
  }

  v5 = INFINITY;
  v6 = 1.0;
  if (a2 <= 1.0)
  {
    v7 = a2;
  }

  else
  {
    v7 = 1.0;
  }

  v8 = 1.0 - v7;
  if (a2 != 0.0)
  {
    v6 = v8;
  }

  if (a2 < 0.0)
  {
    v6 = 1.0 / (a2 + 1.0);
  }

  if (a2 > -1.0)
  {
    v5 = v6;
  }

  v9 = sqrt(v4);
  v10 = (v9 + v9) * v5;
  type metadata accessor for InternalAnimationBox<SpringAnimation>(0);
  result = swift_allocObject();
  *(result + 16) = 0x3FF0000000000000;
  *(result + 24) = v4;
  *(result + 32) = v10;
  *(result + 40) = a3;
  return result;
}

double EdgeInsets.subscript.getter(unsigned __int8 a1, double a2, double a3, double a4, double a5)
{
  if (a1 != 2)
  {
    a4 = a5;
  }

  if (a1)
  {
    result = a3;
  }

  if (a1 > 1u)
  {
    return a4;
  }

  return result;
}

double CGSize.inset(by:)(double a1, double a2, double a3, double a4, double a5)
{
  v5 = a5 - (a2 + a4);
  if (v5 < 0.0)
  {
    return 0.0;
  }

  else
  {
    return v5;
  }
}

BOOL EdgeInsets.isEmpty.getter(double a1, double a2, double a3, double a4)
{
  v4 = a1 == 0.0;
  if (a2 != 0.0)
  {
    v4 = 0;
  }

  if (a3 != 0.0)
  {
    v4 = 0;
  }

  return a4 == 0.0 && v4;
}

float64x2_t EdgeInsets.formPointwiseMax(_:)(float64x2_t a1, float64_t a2, float64x2_t a3, float64_t a4)
{
  a1.f64[1] = a2;
  result = vbslq_s8(vcgeq_f64(a1, *v4), a1, *v4);
  a3.f64[1] = a4;
  v6 = vbslq_s8(vcgeq_f64(a3, v4[1]), a3, v4[1]);
  *v4 = result;
  v4[1] = v6;
  return result;
}

double CGSize.outset(by:)(double a1, double a2, double a3, double a4, double a5)
{
  v5 = a5 - (-a4 - a2);
  if (v5 < 0.0)
  {
    return 0.0;
  }

  else
  {
    return v5;
  }
}

double EdgeInsets.init(_:)(double a1, double a2)
{
  if (a1 > a2)
  {
    return a1;
  }

  else
  {
    return a2;
  }
}

float64x2_t EdgeInsets.formPointwiseMin(_:)(float64x2_t a1, float64_t a2, float64x2_t a3, float64_t a4)
{
  a1.f64[1] = a2;
  result = vbslq_s8(vcgtq_f64(*v4, a1), a1, *v4);
  a3.f64[1] = a4;
  v6 = vbslq_s8(vcgtq_f64(v4[1], a3), a3, v4[1]);
  *v4 = result;
  v4[1] = v6;
  return result;
}

uint64_t OptionalEdgeInsets.top.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t OptionalEdgeInsets.leading.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t OptionalEdgeInsets.bottom.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t OptionalEdgeInsets.trailing.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t OptionalEdgeInsets.init(top:leading:bottom:trailing:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  return result;
}

uint64_t OptionalEdgeInsets.subscript.getter(unsigned __int8 a1)
{
  v2 = v1 + 32;
  if (a1 != 2)
  {
    v2 = v1 + 48;
  }

  v3 = v1 + 16;
  if (!a1)
  {
    v3 = v1;
  }

  if (a1 <= 1u)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  return *v4;
}

uint64_t OptionalEdgeInsets.subscript.setter(uint64_t result, char a2, unsigned __int8 a3)
{
  v4 = v3 + 4;
  v5 = 40;
  if (a3 != 2)
  {
    v4 = v3 + 6;
    v5 = 56;
  }

  v6 = v3 + 2;
  v7 = 24;
  if (!a3)
  {
    v6 = v3;
    v7 = 8;
  }

  if (a3 <= 1u)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (a3 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  *v8 = result;
  *(v3 + v9) = a2 & 1;
  return result;
}

uint64_t (*OptionalEdgeInsets.subscript.modify(uint64_t a1, unsigned __int8 a2))()
{
  *(a1 + 16) = v2;
  *(a1 + 9) = a2;
  v3 = (v2 + 40);
  v4 = (v2 + 32);
  if (a2 != 2)
  {
    v4 = (v2 + 48);
    v3 = (v2 + 56);
  }

  v5 = (v2 + 24);
  v6 = (v2 + 16);
  if (!a2)
  {
    v6 = v2;
    v5 = (v2 + 8);
  }

  if (a2 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (a2 <= 1u)
  {
    v8 = v5;
  }

  else
  {
    v8 = v3;
  }

  v9 = *v8;
  *a1 = *v7;
  *(a1 + 8) = v9;
  return OptionalEdgeInsets.subscript.modify;
}

void *OptionalEdgeInsets.subscript.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = a1[2];
  v6 = (v5 + 40);
  v7 = (v5 + 32);
  if (v4 == 2)
  {
    v8 = (v5 + 32);
  }

  else
  {
    v8 = (v5 + 48);
  }

  if (v4 == 2)
  {
    v9 = (v5 + 40);
  }

  else
  {
    v9 = (v5 + 56);
  }

  result = (v5 + 8);
  v11 = v5 + 24;
  if (v4)
  {
    v12 = v5 + 16;
  }

  else
  {
    v12 = v5;
  }

  if (v4)
  {
    v13 = v5 + 24;
  }

  else
  {
    v13 = v5 + 8;
  }

  if (v4 <= 1)
  {
    v8 = v12;
    v9 = v13;
  }

  if (v4 != 2)
  {
    v7 = (v5 + 48);
    v6 = (v5 + 56);
  }

  if (v4)
  {
    v5 += 16;
    v14 = v11;
  }

  else
  {
    v14 = (v5 + 8);
  }

  v15 = v4 <= 1;
  if (v4 <= 1)
  {
    v16 = v5;
  }

  else
  {
    v16 = v7;
  }

  if (v15)
  {
    v17 = v14;
  }

  else
  {
    v17 = v6;
  }

  if (a2)
  {
    v16 = v8;
    v17 = v9;
  }

  *v16 = v2;
  *v17 = v3;
  return result;
}

uint64_t OptionalEdgeInsets.adding(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  v10 = *(v2 + 8);
  v9 = *(v2 + 24);
  v8 = *(v2 + 40);
  if (*(result + 8))
  {
    if (*(result + 24))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *result + v3;
    if (*(v2 + 8))
    {
      v3 = *result;
    }

    v10 = 0;
    if (*(result + 24))
    {
LABEL_3:
      if (*(result + 40))
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  v4 = *(result + 16) + v4;
  if (*(v2 + 24))
  {
    v4 = *(result + 16);
  }

  v9 = 0;
  if (*(result + 40))
  {
LABEL_4:
    if (*(result + 56))
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

LABEL_15:
  v5 = *(result + 32) + v5;
  if (*(v2 + 40))
  {
    v5 = *(result + 32);
  }

  v8 = 0;
  if ((*(result + 56) & 1) == 0)
  {
LABEL_5:
    v6 = *(result + 48) + v6;
    if (*(v2 + 56))
    {
      v6 = *(result + 48);
    }

    v7 = 0;
  }

LABEL_8:
  *a2 = v3;
  *(a2 + 8) = v10;
  *(a2 + 9) = *(v2 + 9);
  *(a2 + 12) = *(v2 + 12);
  *(a2 + 16) = v4;
  *(a2 + 24) = v9;
  *(a2 + 25) = *(v2 + 25);
  *(a2 + 28) = *(v2 + 28);
  *(a2 + 32) = v5;
  *(a2 + 40) = v8;
  *(a2 + 41) = *(v2 + 41);
  *(a2 + 44) = *(v2 + 44);
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  return result;
}

BOOL OptionalEdgeInsets.in(axes:)@<W0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[2];
  v5 = *(v1 + 24);
  v6 = v1[4];
  v7 = v1[6];
  v8 = *(v1 + 56);
  v12 = *(v1 + 8);
  v11 = *(v1 + 40);
  if (!Axis.Set.contains(_:)(SwiftUI_Axis_vertical))
  {
    v6 = 0;
    v3 = 0;
    v12 = 1;
    v11 = 1;
  }

  result = Axis.Set.contains(_:)(SwiftUI_Axis_horizontal);
  if (!result)
  {
    v7 = 0;
    v4 = 0;
    v8 = 1;
    v5 = 1;
  }

  *a1 = v3;
  *(a1 + 8) = v12;
  *(a1 + 9) = *(v1 + 9);
  *(a1 + 12) = *(v1 + 3);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 25) = *(v1 + 25);
  *(a1 + 28) = *(v1 + 7);
  *(a1 + 32) = v6;
  *(a1 + 40) = v11;
  v10 = *(v1 + 41);
  *(a1 + 44) = *(v1 + 11);
  *(a1 + 41) = v10;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  return result;
}

uint64_t OptionalEdgeInsets.in(edges:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = v2[2];
  v5 = v2[4];
  v6 = v2[6];
  v7 = *(v2 + 56);
  v10 = *(v2 + 8);
  v9 = *(v2 + 24);
  v8 = *(v2 + 40);
  if (result)
  {
    if ((result & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    v10 = 1;
    if ((result & 2) != 0)
    {
LABEL_3:
      if ((result & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      v5 = 0;
      v8 = 1;
      if ((result & 8) != 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  v4 = 0;
  v9 = 1;
  if ((result & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((result & 8) == 0)
  {
LABEL_5:
    v6 = 0;
    v7 = 1;
  }

LABEL_6:
  *a2 = v3;
  *(a2 + 8) = v10;
  *(a2 + 9) = *(v2 + 9);
  *(a2 + 12) = *(v2 + 3);
  *(a2 + 16) = v4;
  *(a2 + 24) = v9;
  *(a2 + 25) = *(v2 + 25);
  *(a2 + 28) = *(v2 + 7);
  *(a2 + 32) = v5;
  *(a2 + 40) = v8;
  *(a2 + 41) = *(v2 + 41);
  *(a2 + 44) = *(v2 + 11);
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  return result;
}

uint64_t EdgeInsets.subscript.setter(uint64_t result, double a2)
{
  v3 = v2 + 2;
  if (result != 2)
  {
    v3 = v2 + 3;
  }

  v4 = v2 + 1;
  if (!result)
  {
    v4 = v2;
  }

  if (result <= 1u)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  *v5 = a2;
  return result;
}

void OptionalEdgeInsets.hash(into:)()
{
  v1 = v0[2];
  v2 = *(v0 + 24);
  v3 = v0[4];
  v4 = *(v0 + 40);
  v5 = v0[6];
  v6 = *(v0 + 56);
  if (*(v0 + 8) == 1)
  {
    Hasher._combine(_:)(0);
    if (!v2)
    {
      goto LABEL_3;
    }

LABEL_19:
    Hasher._combine(_:)(0);
    if (!v4)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

  v10 = *v0;
  Hasher._combine(_:)(1u);
  if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  MEMORY[0x193AC11E0](v11);
  if (v2)
  {
    goto LABEL_19;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = v1;
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x193AC11E0](v7);
  if (!v4)
  {
LABEL_7:
    Hasher._combine(_:)(1u);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v3;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x193AC11E0](v8);
    if (!v6)
    {
      goto LABEL_11;
    }

LABEL_21:
    Hasher._combine(_:)(0);
    return;
  }

LABEL_20:
  Hasher._combine(_:)(0);
  if (v6)
  {
    goto LABEL_21;
  }

LABEL_11:
  Hasher._combine(_:)(1u);
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x193AC11E0](v9);
}

Swift::Int OptionalEdgeInsets.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = v0[4];
  v6 = *(v0 + 40);
  v7 = v0[6];
  v8 = *(v0 + 56);
  Hasher.init(_seed:)();
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_19:
    Hasher._combine(_:)(0);
    if (!v6)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

  Hasher._combine(_:)(1u);
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v12 = v1;
  }

  else
  {
    v12 = 0;
  }

  MEMORY[0x193AC11E0](v12);
  if (v4)
  {
    goto LABEL_19;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x193AC11E0](v9);
  if (!v6)
  {
LABEL_7:
    Hasher._combine(_:)(1u);
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v5;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x193AC11E0](v10);
    if (!v8)
    {
      goto LABEL_11;
    }

LABEL_21:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

LABEL_20:
  Hasher._combine(_:)(0);
  if (v8)
  {
    goto LABEL_21;
  }

LABEL_11:
  Hasher._combine(_:)(1u);
  if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

  MEMORY[0x193AC11E0](v11);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OptionalEdgeInsets(uint64_t a1)
{
  Hasher.init(_seed:)();
  OptionalEdgeInsets.hash(into:)();
  return Hasher._finalize()();
}

uint64_t *EdgeInsets.init(_:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  if (result[1])
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v2 = *result;
    v3 = result[2];
    v4 = result[4];
    v7 = result[6];
    if (result[7])
    {
      v2 = 0;
      v3 = 0;
      v4 = 0;
      v7 = 0;
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }

    if (result[5])
    {
      v2 = 0;
      v3 = 0;
      v4 = 0;
      v7 = 0;
      v8 = 1;
    }

    if (result[3])
    {
      v2 = 0;
      v3 = 0;
      v4 = 0;
      v5 = 0;
    }

    else
    {
      v5 = v7;
    }

    if (result[3])
    {
      v6 = 1;
    }

    else
    {
      v6 = v8;
    }
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  return result;
}

uint64_t *OptionalEdgeInsets.init(_:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 32);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v4 = result[2];
    v3 = result[3];
    v6 = *result;
    v5 = result[1];
  }

  *a2 = v6;
  *(a2 + 8) = v2 & 1;
  *(a2 + 16) = v5;
  *(a2 + 24) = v2 & 1;
  *(a2 + 32) = v4;
  *(a2 + 40) = v2 & 1;
  *(a2 + 48) = v3;
  *(a2 + 56) = v2 & 1;
  return result;
}

uint64_t (*EdgeInsets.subscript.modify(uint64_t a1, unsigned __int8 a2))(uint64_t result, char a2)
{
  *(a1 + 8) = v2;
  *(a1 + 16) = a2;
  v3 = v2 + 1;
  v4 = v2 + 2;
  if (a2 != 2)
  {
    v4 = v2 + 3;
  }

  if (!a2)
  {
    v3 = v2;
  }

  if (a2 > 1u)
  {
    v3 = v4;
  }

  *a1 = *v3;
  return EdgeInsets.subscript.modify;
}

uint64_t EdgeInsets.subscript.modify(uint64_t result, char a2)
{
  v2 = *(result + 16);
  v3 = *(result + 8);
  v4 = v3 + 2;
  if (v2 == 2)
  {
    v5 = v3 + 2;
  }

  else
  {
    v5 = v3 + 3;
  }

  if (*(result + 16))
  {
    v6 = v3 + 1;
  }

  else
  {
    v6 = *(result + 8);
  }

  if (*(result + 16) <= 1u)
  {
    v5 = v6;
  }

  if (v2 != 2)
  {
    v4 = v3 + 3;
  }

  if (*(result + 16))
  {
    ++v3;
  }

  if (*(result + 16) <= 1u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  if (a2)
  {
    v7 = v5;
  }

  *v7 = *result;
  return result;
}

double EdgeInsets.subscript.getter(char a1, double a2, double a3, double a4, double a5)
{
  result = a2 + a4;
  v6 = a3 + a5;
  if ((a1 & 1) == 0)
  {
    return v6;
  }

  return result;
}

double EdgeInsets.subscript.getter(char a1, char a2, double a3, double a4, double a5, double a6)
{
  if ((a2 & 1) == 0)
  {
    a4 = a6;
    result = a5;
  }

  if ((a1 & 1) == 0)
  {
    return a4;
  }

  return result;
}

uint64_t EdgeInsets.subscript.setter(uint64_t result, char a2, double a3)
{
  v4 = 16;
  if (a2)
  {
    v4 = 0;
  }

  v5 = 24;
  if (a2)
  {
    v5 = 8;
  }

  if ((result & 1) == 0)
  {
    v4 = v5;
  }

  *(v3 + v4) = a3;
  return result;
}

uint64_t (*EdgeInsets.subscript.modify(uint64_t a1, char a2, char a3))(uint64_t result)
{
  *(a1 + 8) = v3;
  *(a1 + 17) = a3;
  *(a1 + 16) = a2;
  v4 = v3 + 1;
  v5 = v3 + 2;
  if (a3)
  {
    v5 = v3;
  }

  else
  {
    v4 = v3 + 3;
  }

  if (a2)
  {
    v4 = v5;
  }

  *a1 = *v4;
  return EdgeInsets.subscript.modify;
}

uint64_t EdgeInsets.subscript.modify(uint64_t result)
{
  v1 = 24;
  if (*(result + 16))
  {
    v1 = 16;
  }

  v2 = 8;
  if (*(result + 16))
  {
    v2 = 0;
  }

  if (*(result + 17))
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  *(*(result + 8) + v3) = *result;
  return result;
}

double EdgeInsets.adding(_:)(uint64_t a1, double result)
{
  if (!*(a1 + 8))
  {
    return *a1 + result;
  }

  return result;
}

double EdgeInsets.merge(_:)(_BYTE *a1)
{
  if (!a1[8])
  {
    return *a1;
  }

  return result;
}

CGSize __swiftcall EdgeInsets.originOffset(in:)(SwiftUI::LayoutDirection in)
{
  v4 = v1;
  if (*in)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

void *EdgeInsets.xFlipIfRightToLeft(layoutDirection:)(void *result)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  if (v2 != v3)
  {
    result = (result)(&v4);
    if (v4 == 1)
    {
      *(v1 + 8) = v3;
      *(v1 + 24) = v2;
    }
  }

  return result;
}

uint64_t EdgeInsets.hash(into:)(double a1, double a2, double a3, double a4)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x193AC11E0](*&a1);
  if (a2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a2;
  }

  MEMORY[0x193AC11E0](*&v7);
  if (a3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a3;
  }

  MEMORY[0x193AC11E0](*&v8);
  if (a4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = a4;
  }

  return MEMORY[0x193AC11E0](*&v9);
}

double CGRect.inset(by:layoutDirection:)(void (*a1)(uint64_t *__return_ptr, double), double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v12 = a6;
  v28.origin.x = a6;
  v28.origin.y = a7;
  v28.size.width = a8;
  v28.size.height = a9;
  if (!CGRectIsNull(v28))
  {
    v26 = a4;
    v29.origin.x = v12;
    v29.origin.y = a7;
    v29.size.width = a8;
    v29.size.height = a9;
    v30 = CGRectStandardize(v29);
    x = v30.origin.x;
    y = v30.origin.y;
    width = v30.size.width;
    height = v30.size.height;
    v22 = a5;
    if (a3 != a5)
    {
      a1(&v27, a5);
      if (v27)
      {
        v22 = a5;
      }

      else
      {
        v22 = a3;
      }
    }

    v12 = x + v22;
    v23 = width - (a3 + a5);
    v24 = height - (a2 + v26);
    v31.origin.x = x + v22;
    v31.origin.y = y + a2;
    v31.size.width = v23;
    v31.size.height = v24;
    if (CGRectGetWidth(v31) < 0.0)
    {
      return *MEMORY[0x1E695F050];
    }

    v32.origin.x = v12;
    v32.origin.y = y + a2;
    v32.size.width = v23;
    v32.size.height = v24;
    if (CGRectGetHeight(v32) < 0.0)
    {
      return *MEMORY[0x1E695F050];
    }
  }

  return v12;
}

double CGRect.outset(by:layoutDirection:)(void (*a1)(uint64_t *__return_ptr, double), double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v12 = a6;
  v29.origin.x = a6;
  v29.origin.y = a7;
  v29.size.width = a8;
  v29.size.height = a9;
  if (!CGRectIsNull(v29))
  {
    v30.origin.x = v12;
    v30.origin.y = a7;
    v30.size.width = a8;
    v30.size.height = a9;
    v31 = CGRectStandardize(v30);
    x = v31.origin.x;
    y = v31.origin.y;
    width = v31.size.width;
    v21 = -a5;
    if (a3 != a5)
    {
      height = v31.size.height;
      a1(&v28, v21);
      v31.size.height = height;
      if (v28)
      {
        v23 = a5;
      }

      else
      {
        v23 = a3;
      }

      v21 = -v23;
    }

    v12 = x + v21;
    v24 = y - a2;
    v25 = width - (-a5 - a3);
    v26 = v31.size.height - (-a4 - a2);
    v32.origin.x = v12;
    v32.origin.y = v24;
    v32.size.width = v25;
    v32.size.height = v26;
    if (CGRectGetWidth(v32) < 0.0)
    {
      return *MEMORY[0x1E695F050];
    }

    v33.origin.x = v12;
    v33.origin.y = v24;
    v33.size.width = v25;
    v33.size.height = v26;
    if (CGRectGetHeight(v33) < 0.0)
    {
      return *MEMORY[0x1E695F050];
    }
  }

  return v12;
}

__C::CGRect __swiftcall CGRect.outset(bySize:)(CGSize bySize)
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v8 = v1;
  height = bySize.height;
  width = bySize.width;
  v15.origin.x = v1;
  v15.origin.y = v2;
  v15.size.width = v3;
  v15.size.height = v4;
  if (!CGRectIsNull(v15))
  {
    v16.origin.x = v8;
    v16.origin.y = v7;
    v16.size.width = v6;
    v16.size.height = v5;
    v17 = CGRectStandardize(v16);
    v8 = v17.origin.x - width;
    v7 = v17.origin.y - height;
    v6 = v17.size.width - (-width - width);
    v5 = v17.size.height - (-height - height);
    v17.origin.x = v17.origin.x - width;
    v17.origin.y = v17.origin.y - height;
    v17.size.width = v6;
    v17.size.height = v5;
    if (CGRectGetWidth(v17) < 0.0 || (v18.origin.x = v8, v18.origin.y = v7, v18.size.width = v6, v18.size.height = v5, CGRectGetHeight(v18) < 0.0))
    {
      v8 = *MEMORY[0x1E695F050];
      v7 = *(MEMORY[0x1E695F050] + 8);
      v6 = *(MEMORY[0x1E695F050] + 16);
      v5 = *(MEMORY[0x1E695F050] + 24);
    }
  }

  v11 = v8;
  v12 = v7;
  v13 = v6;
  v14 = v5;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

void EdgeInsets.animatableData.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

void (*EdgeInsets.animatableData.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = v1[1];
  *v3 = *v1;
  *(v3 + 16) = v4;
  return UnevenRoundedRectangle.animatableData.modify;
}

void (*protocol witness for Animatable.animatableData.modify in conformance EdgeInsets(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = v1[1];
  *v3 = *v1;
  *(v3 + 16) = v4;
  return protocol witness for Animatable.animatableData.modify in conformance UnevenRoundedRectangle;
}

uint64_t EdgeInsets.encode(to:)(void *a1, double a2, double a3, double a4, double a5)
{
  v6[4] = *MEMORY[0x1E69E9840];
  *v6 = a2;
  *&v6[1] = a3;
  *&v6[2] = a4;
  *&v6[3] = a5;
  return closure #1 in EdgeInsets.encode(to:)(v6, a1);
}

uint64_t closure #1 in EdgeInsets.encode(to:)(uint64_t result, void *a2)
{
  v3 = 0;
  while (1)
  {
    v4 = *(result + v3);
    if (v4 == 0.0)
    {
      goto LABEL_3;
    }

    v5 = fabs(v4);
    v6 = v3 + 5;
    if (v5 >= 65536.0)
    {
      v6 = v3 + 1;
    }

    v7 = v6 + 8;
    v8 = a2[1];
    v9 = a2[2];
    if (v8 >= v9)
    {
      v18 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_25;
      }

      if (v9 < v18)
      {
        v24 = result;
        v23 = v5;
        v20 = v7;
        v21 = ProtobufEncoder.growBufferSlow(to:)(v8 + 1);
        v5 = v23;
        v22 = v21;
        result = v24;
        *v22 = v20;
      }

      else
      {
        a2[1] = v18;
        *(*a2 + v8) = v7;
      }
    }

    else
    {
      *(*a2 + v8) = v7;
      a2[1] = v8 + 1;
    }

    if (v5 < 65536.0)
    {
      break;
    }

    v14 = a2[1];
    v15 = v14 + 8;
    if (__OFADD__(v14, 8))
    {
      goto LABEL_24;
    }

    if (a2[2] >= v15)
    {
      a2[1] = v15;
      *(*a2 + v14) = v4;
    }

    else
    {
      v16 = result;
      v17 = ProtobufEncoder.growBufferSlow(to:)(v14 + 8);
      result = v16;
      *v17 = v4;
    }

LABEL_3:
    v3 += 8;
    if (v3 == 32)
    {
      return result;
    }
  }

  v10 = a2[1];
  v11 = v10 + 4;
  if (!__OFADD__(v10, 4))
  {
    if (a2[2] < v11)
    {
      v19 = result;
      v12 = ProtobufEncoder.growBufferSlow(to:)(v10 + 4);
      result = v19;
    }

    else
    {
      a2[1] = v11;
      v12 = (*a2 + v10);
    }

    v13 = v4;
    *v12 = v13;
    goto LABEL_3;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

double EdgeInsets.init(from:)(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  memset(v4, 0, sizeof(v4));
  closure #1 in EdgeInsets.init(from:)(v4, a1, &v3);
  if (!v1)
  {
    return *v4;
  }

  return result;
}

uint64_t protocol witness for ProtobufEncodableMessage.encode(to:) in conformance EdgeInsets(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = v1[1];
  v4[0] = *v1;
  v4[1] = v2;
  return closure #1 in EdgeInsets.encode(to:)(v4, a1);
}

double protocol witness for ProtobufDecodableMessage.init(from:) in conformance EdgeInsets@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  closure #1 in EdgeInsets.init(from:)(&v7, a1, &v6);
  if (!v2)
  {
    result = *&v7;
    v5 = v8;
    *a2 = v7;
    a2[1] = v5;
  }

  return result;
}

void lazy protocol witness table accessor for type OptionalEdgeInsets and conformance OptionalEdgeInsets()
{
  if (!lazy protocol witness table cache variable for type OptionalEdgeInsets and conformance OptionalEdgeInsets)
  {
    swift_getWitnessTable(protocol conformance descriptor for OptionalEdgeInsets, &type metadata for OptionalEdgeInsets, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type OptionalEdgeInsets and conformance OptionalEdgeInsets);
  }
}

void _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVACyAfCyA2FGGGACyxq_GAA16VectorArithmeticAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  if (!*a1)
  {
    v3 = a2(255);
    swift_getWitnessTable(protocol conformance descriptor for AnimatablePair<A, B>, v3);
    atomic_store(v4, a1);
  }
}

SwiftUI::Spacing::Key __swiftcall Spacing.Key.init(category:edge:)(SwiftUI::Spacing::Category category, SwiftUI::AbsoluteEdge edge)
{
  v3 = *edge;
  *v2 = *category.base.value;
  *(v2 + 8) = v3;
  result.category = category;
  result.edge = edge;
  return result;
}

void Spacing.Value.init(_:)(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
}

void Spacing.reset(_:layoutDirection:)(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  AbsoluteEdge.Set.init(_:layoutDirection:)(&v3, &v2);
  Spacing.reset(_:)(&v2);
}

void Spacing.clear(_:layoutDirection:)(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  AbsoluteEdge.Set.init(_:layoutDirection:)(&v4, &v5);
  if (v5)
  {
    v3 = specialized _NativeDictionary.filter(_:)(*v2, v5);

    *v2 = v3;
  }
}

uint64_t Spacing.isLayoutDirectionSymmetric.getter()
{
  v1 = *v0;
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = &type metadata instantiation cache for ForEachState.LazyEdits;
  v8 = off_1ED533000;
  while (v4)
  {
LABEL_9:
    v10 = __clz(__rbit64(v4)) | (v6 << 6);
    v11 = *(v1 + 48) + 16 * v10;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v1 + 56) + 40 * v10;
    v16 = *v14;
    v15 = *(v14 + 8);
    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    v19 = *(v14 + 32);
    if (v7[430] != -1)
    {
      v45 = v12;
      v47 = *(v14 + 24);
      swift_once();
      v12 = v45;
      v17 = v47;
      v7 = &type metadata instantiation cache for ForEachState.LazyEdits;
      v8 = off_1ED533000;
    }

    v4 &= v4 - 1;
    if (v12 != v8[164] && ((v13 - 1) & 0xFD) == 0)
    {
      v20 = 0.0;
      if (*(v1 + 16))
      {
        v46 = v17;
        v21 = specialized __RawDictionaryStorage.find<A>(_:)(v12, 0x1000302u >> (8 * v13));
        if (v22)
        {
          v23 = *(v1 + 56) + 40 * v21;
          v20 = *v23;
          v24 = *(v23 + 8);
          v26 = *(v23 + 16);
          v25 = *(v23 + 24);
          v27 = *(v23 + 32);
        }

        else
        {
          v27 = 255;
          v24 = 0.0;
          v26 = 0.0;
          v25 = 0.0;
        }

        v8 = off_1ED533000;
        v7 = &type metadata instantiation cache for ForEachState.LazyEdits;
        v17 = v46;
        if (v19 == 255)
        {
          goto LABEL_24;
        }

LABEL_17:
        if (v27 == 255)
        {
          goto LABEL_49;
        }

        if (v19)
        {
          if (v19 == 1)
          {
            if (v27 != 1)
            {
              goto LABEL_49;
            }
          }

          else if (v27 != 2)
          {
            goto LABEL_49;
          }

          if (v20 != v16 || v24 != v15 || v26 != v18 || v25 != v17)
          {
LABEL_49:

            goto LABEL_50;
          }
        }

        else if (v27 || v20 != v16)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v27 = 255;
        v24 = 0.0;
        v26 = 0.0;
        v25 = 0.0;
        if (v19 != 255)
        {
          goto LABEL_17;
        }

LABEL_24:
        if (v27 != 255)
        {
          goto LABEL_49;
        }
      }
    }
  }

  while (1)
  {
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_53;
    }

    if (v9 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v9);
    ++v6;
    if (v4)
    {
      v6 = v9;
      goto LABEL_9;
    }
  }

  v28 = v7;

  if (v28[430] == -1)
  {
    goto LABEL_36;
  }

LABEL_53:
  swift_once();
LABEL_36:
  v29 = 0uLL;
  if (*(v1 + 16))
  {
    v30 = specialized __RawDictionaryStorage.find<A>(_:)(static Spacing.Category.default, 1);
    if (v31)
    {
      v32 = *(v1 + 56) + 40 * v30;
      v33 = *v32;
      v34 = *(v32 + 8);
      v35 = *(v32 + 16);
      v36 = *(v32 + 24);
      v37 = *(v32 + 32);
    }

    else
    {
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 255;
    }

    if (*(v1 + 16) && (v40 = specialized __RawDictionaryStorage.find<A>(_:)(static Spacing.Category.default, 3), (v41 & 1) != 0))
    {
      v42 = *(v1 + 56) + 40 * v40;
      v29 = *v42;
      v38 = *(v42 + 16);
      v39 = *(v42 + 32);
    }

    else
    {
      v39 = 255;
      v38 = 0uLL;
      v29 = 0uLL;
    }
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v33 = 0;
    v37 = 255;
    v38 = 0uLL;
    v39 = 255;
  }

  v50 = v33;
  v51 = v34;
  v52 = v35;
  v53 = v36;
  v54 = v37;
  v55[0] = v29;
  v55[1] = v38;
  v56 = v39;
  if (v37 == 255)
  {
    v43 = v39 == 255;
    return v43 & 1;
  }

  v48[0] = v33;
  v48[1] = v34;
  v48[2] = v35;
  v48[3] = v36;
  v49 = v37;
  if (v39 != 255)
  {
    v43 = specialized static Spacing.Value.== infix(_:_:)(v48, v55);
    return v43 & 1;
  }

LABEL_50:
  v43 = 0;
  return v43 & 1;
}

void Spacing.description.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v25 = 0x20676E6963617053;
    v26 = 0xEA00000000000A5BLL;
    v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI7SpacingV3KeyV_Tt1g5(v2, 0);
    v4 = specialized Sequence._copySequenceContents(initializing:)(&v21, (v3 + 32), v2, v1);
    v5 = v21;
    swift_bridgeObjectRetain_n();
    outlined consume of Set<EventID>.Iterator._Variant(v5);
    if (v4 == v2)
    {
      v21 = v3;
      specialized MutableCollection<>.sort(by:)(&v21);

      v6 = *(v21 + 16);
      if (!v6)
      {
LABEL_11:

        MEMORY[0x193ABEDD0](93, 0xE100000000000000);
        return;
      }

      v7 = (v21 + 40);
      while (1)
      {
        v3 = *(v7 - 1);
        v11 = *v7;
        v21 = 0;
        v22 = 0xE000000000000000;
        MEMORY[0x193ABEDD0](40, 0xE100000000000000);
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x193ABEDD0](41, 0xE100000000000000);
        if (!*(v1 + 16))
        {
          break;
        }

        v13 = v21;
        v12 = v22;
        v14 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v11);
        if ((v15 & 1) == 0)
        {
          goto LABEL_14;
        }

        v16 = *(v1 + 56) + 40 * v14;
        v17 = *v16;
        if (*(v16 + 32))
        {
          v19 = *(v16 + 8);
          v18 = *(v16 + 16);
          v20 = *(v16 + 24);
          v21 = v17;
          v22 = v19;
          v23 = v18;
          v24 = v20;
          _print_unlocked<A, B>(_:_:)();
          v8 = 0;
          v10 = 0xE000000000000000;
        }

        else
        {
          v8 = Double.description.getter();
          v10 = v9;
        }

        v7 += 16;
        v21 = 8224;
        v22 = 0xE200000000000000;
        MEMORY[0x193ABEDD0](v13, v12);

        MEMORY[0x193ABEDD0](2112032, 0xE300000000000000);
        MEMORY[0x193ABEDD0](v8, v10);

        MEMORY[0x193ABEDD0](10, 0xE100000000000000);
        MEMORY[0x193ABEDD0](v21, v22);

        if (!--v6)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
    }

    __break(1u);

    __break(1u);
  }
}

uint64_t specialized FloatingPoint.isAlmostEqual(to:tolerance:)(int8x16_t a1, double a2, __n128 a3, int8x16_t a4)
{
  if ((a3.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL || (a1.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return specialized FloatingPoint.rescaledAlmostEqual(to:tolerance:)(a1, a2, a3, a4);
  }

  v4 = fabs(a3.n128_f64[0]);
  v5 = fabs(*a1.i64);
  if (v4 <= v5)
  {
    v4 = v5;
  }

  if (v4 <= 2.22507386e-308)
  {
    v4 = 2.22507386e-308;
  }

  return vabdd_f64(a3.n128_f64[0], *a1.i64) < v4 * a2;
}

uint64_t specialized FloatingPoint.rescaledAlmostEqual(to:tolerance:)(int8x16_t a1, double a2, __n128 a3, int8x16_t a4)
{
  while (1)
  {
    a4.i64[0] = a3.n128_u64[0];
    v4 = a3.n128_u64[0] & 0x7FF0000000000000;
    v5 = a3.n128_u64[0] & 0xFFFFFFFFFFFFFLL;
    if ((a3.n128_u64[0] & 0x7FF0000000000000) == 0x7FF0000000000000 && v5 != 0)
    {
      return 0;
    }

    a3.n128_u64[0] = a1.i64[0];
    v7 = (a1.i64[0] >> 52) & 0x7FF;
    v8 = a1.i64[0] & 0xFFFFFFFFFFFFFLL;
    if ((a1.i64[0] & 0xFFFFFFFFFFFFFLL) != 0 && v7 == 2047)
    {
      return 0;
    }

    a1.i64[0] = a4.i64[0];
    if (!v5)
    {
      a1.i64[0] = a4.i64[0];
      if (v4 == 0x7FF0000000000000)
      {
        break;
      }
    }
  }

  if (!v8 && v7 == 2047)
  {
    return *a4.i64 == a3.n128_f64[0];
  }

  a1.i64[0] = 0x7FE0000000000000;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v11 = vbslq_s8(vnegq_f64(v10), a1, a4);
  *a1.i64 = a3.n128_f64[0] * 0.5;
  if (!(v7 | v8))
  {
    *a1.i64 = a3.n128_f64[0];
  }

  if (v7 == 2047)
  {
    *a1.i64 = a3.n128_f64[0];
  }

  a3.n128_u64[0] = v11.i64[0];
  return specialized FloatingPoint.isAlmostEqual(to:tolerance:)(a1, a2, a3, v11);
}

double static Spacing.defaultMinimum.getter()
{
  swift_beginAccess();
  result = static Spacing.defaultValue[0];
  if (dbl_1EAB21528 < static Spacing.defaultValue[0])
  {
    return dbl_1EAB21528;
  }

  return result;
}

SwiftUI::Spacing::Category __swiftcall Spacing.Category.init()()
{
  v1 = v0;
  result.base.value = AGMakeUniqueID();
  v1->base.value = result.base.value;
  return result;
}

uint64_t one-time initialization function for leftTextBaseline()
{
  result = AGMakeUniqueID();
  static Spacing.Category.leftTextBaseline = result;
  return result;
}

uint64_t one-time initialization function for rightTextBaseline()
{
  result = AGMakeUniqueID();
  static Spacing.Category.rightTextBaseline = result;
  return result;
}

Swift::Int Spacing.Category.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

void Spacing.Key.hash(into:)()
{
  v1 = *(v0 + 8);
  MEMORY[0x193AC11A0](*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int Spacing.Key.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Spacing.Key()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Spacing.Key()
{
  v1 = *(v0 + 8);
  MEMORY[0x193AC11A0](*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Spacing.Key(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *(v1 + 8);
  MEMORY[0x193AC11A0](*v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void Spacing.TextMetrics.init(ascend:descend:leading:pixelLength:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

uint64_t Spacing.TextMetrics.isAlmostEqual(to:)(double *a1, int8x16_t a2, double a3, __n128 a4, int8x16_t a5)
{
  a2.i64[0] = *a1;
  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  a4.n128_u64[0] = *v5;
  v8 = v5[1];
  v9 = v5[2];
  if ((specialized FloatingPoint.isAlmostEqual(to:tolerance:)(a2, 0.0000000149011612, a4, a5) & 1) == 0)
  {
    return 0;
  }

  v10.i64[0] = v6;
  v11.n128_u64[0] = v8;
  if ((specialized FloatingPoint.isAlmostEqual(to:tolerance:)(v10, 0.0000000149011612, v11, v12) & 1) == 0)
  {
    return 0;
  }

  v13.i64[0] = v7;
  v14.n128_u64[0] = v9;

  return specialized FloatingPoint.isAlmostEqual(to:tolerance:)(v13, 0.0000000149011612, v14, v15);
}

uint64_t Spacing.Value.value.getter()
{
  if (v0[32])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t Spacing.Value.distance(to:)(uint64_t *a1)
{
  result = *a1;
  v4 = *(a1 + 32);
  v5 = *v1;
  if (*(v1 + 32))
  {
    v7 = a1[1];
    v6 = a1[2];
    v8 = a1[3];
    v10 = *(v1 + 8);
    v9 = *(v1 + 16);
    v11 = *(v1 + 24);
    if (*(v1 + 32) == 1)
    {
      if (v4)
      {
        if (v4 == 2)
        {
          v17 = *v1;
          v18 = v10;
          v19 = v9;
          v20 = v11;
          v13 = result;
          v14 = v7;
          v15 = v6;
          v16 = v8;
LABEL_13:
          specialized static Spacing.TextMetrics.spacing(top:bottom:)(&v17, &v13);
          return v12;
        }

LABEL_15:
        *&result = 0.0;
      }
    }

    else if (v4)
    {
      if (v4 == 1)
      {
        v17 = *&result;
        v18 = v7;
        v19 = v6;
        v20 = v8;
        v13 = *&v5;
        v14 = v10;
        v15 = v9;
        v16 = v11;
        goto LABEL_13;
      }

      goto LABEL_15;
    }
  }

  else if (*(a1 + 32))
  {
    return *v1;
  }

  else
  {
    *&result = *&result + v5;
  }

  return result;
}

void Spacing.clear(_:)(_BYTE *a1)
{
  if (*a1)
  {
    v2 = specialized _NativeDictionary.filter(_:)(*v1, *a1);

    *v1 = v2;
  }
}

void static Spacing.defaultValue.setter(double a1, double a2)
{
  swift_beginAccess();
  static Spacing.defaultValue[0] = a1;
  dbl_1EAB21528 = a2;
}

double static Spacing.zero.getter@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for zero != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static Spacing.zero;

  return result;
}

uint64_t static Spacing.all(_:)@<X0>(unint64_t *a1@<X8>, double a2@<D0>)
{
  type metadata accessor for _ContiguousArrayStorage<(Spacing.Key, Spacing.Value)>(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18DDACA80;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v5 = static Spacing.Category.default;
  *(inited + 32) = static Spacing.Category.default;
  *(inited + 40) = 1;
  *(inited + 48) = a2;
  *(inited + 64) = 0;
  *(inited + 72) = 0;
  *(inited + 56) = 0;
  *(inited + 80) = 0;
  *(inited + 88) = v5;
  *(inited + 96) = 3;
  *(inited + 104) = a2;
  *(inited + 120) = 0;
  *(inited + 128) = 0;
  *(inited + 112) = 0;
  *(inited + 136) = 0;
  *(inited + 144) = v5;
  *(inited + 152) = 0;
  *(inited + 160) = a2;
  *(inited + 168) = 0;
  *(inited + 176) = 0;
  *(inited + 192) = 0;
  *(inited + 184) = 0;
  *(inited + 200) = v5;
  *(inited + 208) = 2;
  *(inited + 216) = a2;
  *(inited + 232) = 0;
  *(inited + 240) = 0;
  *(inited + 224) = 0;
  *(inited + 248) = 0;
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7SpacingV3KeyV_AE5ValueOTt0g5Tf4g_n(inited);
  result = swift_setDeallocating();
  *a1 = v6;
  return result;
}

uint64_t static Spacing.horizontal(_:)@<X0>(char a1@<W0>, char a2@<W1>, unint64_t *a3@<X8>, double a4@<D0>)
{
  type metadata accessor for _ContiguousArrayStorage<(Spacing.Key, Spacing.Value)>(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18DDAB4C0;
  if (one-time initialization token for default != -1)
  {
    v12 = inited;
    swift_once();
    inited = v12;
  }

  v9 = static Spacing.Category.default;
  *(inited + 32) = static Spacing.Category.default;
  *(inited + 40) = a1;
  *(inited + 48) = a4;
  *(inited + 64) = 0;
  *(inited + 72) = 0;
  *(inited + 56) = 0;
  *(inited + 80) = 0;
  *(inited + 88) = v9;
  *(inited + 96) = a2;
  *(inited + 104) = a4;
  *(inited + 120) = 0;
  *(inited + 128) = 0;
  *(inited + 112) = 0;
  *(inited + 136) = 0;
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7SpacingV3KeyV_AE5ValueOTt0g5Tf4g_n(inited);
  result = swift_setDeallocating();
  *a3 = v10;
  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_91:
    a1 = *a1;
    if (!a1)
    {
      goto LABEL_129;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_123:
      v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    }

    v82 = v9 + 16;
    v83 = *(v9 + 2);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = &v9[16 * v83];
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), a1);
        if (v4)
        {
          goto LABEL_100;
        }

        if (v87 < v85)
        {
          goto LABEL_115;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_116;
        }

        *v84 = v85;
        *(v84 + 1) = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_117;
        }

        v83 = *v82 - 1;
        memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_127;
    }

LABEL_100:

    return;
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + 16 * v8 + 8);
      v12 = 16 * v10;
      v13 = *a3 + 16 * v10;
      v14 = *(v13 + 8);
      v15 = v10 + 2;
      v16 = (v13 + 40);
      while (v6 != v15)
      {
        v17 = *v16 >= *(v16 - 16);
        ++v15;
        v16 += 16;
        if ((((v11 < v14) ^ v17) & 1) == 0)
        {
          v8 = v15 - 1;
          if (v11 >= v14)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v14)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_120;
      }

      if (v10 < v8)
      {
        v18 = 16 * v8 - 16;
        v19 = v8;
        v20 = v10;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_126;
            }

            v23 = (v22 + v12);
            v24 = (v22 + v18);
            v25 = *(v22 + v12);
            v26 = *(v22 + v12 + 8);
            if (v12 != v18 || v23 >= v24 + 1)
            {
              *v23 = *v24;
            }

            v21 = v22 + v18;
            *v21 = v25;
            *(v21 + 8) = v26;
          }

          ++v20;
          v18 -= 16;
          v12 += 16;
        }

        while (v20 < v19);
        v6 = a3[1];
      }
    }

LABEL_23:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_119;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_121;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v8 < v10)
    {
      goto LABEL_118;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    }

    v36 = *(v9 + 2);
    v35 = *(v9 + 3);
    v37 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v9);
    }

    *(v9 + 2) = v37;
    v38 = &v9[16 * v36];
    *(v38 + 4) = v10;
    *(v38 + 5) = v8;
    v39 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if (v36)
    {
      while (1)
      {
        v40 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v41 = *(v9 + 4);
          v42 = *(v9 + 5);
          v51 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          v44 = v51;
LABEL_60:
          if (v44)
          {
            goto LABEL_106;
          }

          v57 = &v9[16 * v37];
          v59 = *v57;
          v58 = *(v57 + 1);
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_109;
          }

          v63 = &v9[16 * v40 + 32];
          v65 = *v63;
          v64 = *(v63 + 1);
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v61, v66))
          {
            goto LABEL_113;
          }

          if (v61 + v66 >= v43)
          {
            if (v43 < v66)
            {
              v40 = v37 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        v67 = &v9[16 * v37];
        v69 = *v67;
        v68 = *(v67 + 1);
        v51 = __OFSUB__(v68, v69);
        v61 = v68 - v69;
        v62 = v51;
LABEL_74:
        if (v62)
        {
          goto LABEL_108;
        }

        v70 = &v9[16 * v40];
        v72 = *(v70 + 4);
        v71 = *(v70 + 5);
        v51 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v51)
        {
          goto LABEL_111;
        }

        if (v73 < v61)
        {
          goto LABEL_3;
        }

LABEL_81:
        v78 = v40 - 1;
        if (v40 - 1 >= v37)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (!*a3)
        {
          goto LABEL_125;
        }

        v79 = *&v9[16 * v78 + 32];
        v80 = *&v9[16 * v40 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * v79), (*a3 + 16 * *&v9[16 * v40 + 32]), (*a3 + 16 * v80), v39);
        if (v4)
        {
          goto LABEL_100;
        }

        if (v80 < v79)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        }

        if (v78 >= *(v9 + 2))
        {
          goto LABEL_103;
        }

        v81 = &v9[16 * v78];
        *(v81 + 4) = v79;
        *(v81 + 5) = v80;
        specialized Array.remove(at:)(v40);
        v37 = *(v9 + 2);
        if (v37 <= 1)
        {
          goto LABEL_3;
        }
      }

      v45 = &v9[16 * v37 + 32];
      v46 = *(v45 - 64);
      v47 = *(v45 - 56);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_104;
      }

      v50 = *(v45 - 48);
      v49 = *(v45 - 40);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_105;
      }

      v52 = &v9[16 * v37];
      v54 = *v52;
      v53 = *(v52 + 1);
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_107;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_110;
      }

      if (v56 >= v48)
      {
        v74 = &v9[16 * v40 + 32];
        v76 = *v74;
        v75 = *(v74 + 1);
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_114;
        }

        if (v43 < v77)
        {
          v40 = v37 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_60;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_91;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v8;
  v29 = v10 - v8;
LABEL_33:
  v30 = v29;
  v31 = v28;
  while (1)
  {
    v32 = *(v31 + 8);
    if (v32 >= *(v31 - 8))
    {
LABEL_32:
      ++v8;
      v28 += 16;
      --v29;
      if (v8 != v6)
      {
        goto LABEL_33;
      }

      v8 = v6;
      goto LABEL_40;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v31;
    *v31 = *(v31 - 16);
    *(v31 - 16) = v33;
    *(v31 - 8) = v32;
    v31 -= 16;
    if (__CFADD__(v30++, 1))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
}

uint64_t specialized static Spacing.Value.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      v5 = vzip1q_s64(v2, v3);
      return *&vmovn_s64(vceqq_f64(vdupq_laneq_s64(v5, 1), v5)) & 1;
    }

    return 0;
  }

  if (*(a1 + 32) == 1)
  {
    if (v4 != 1)
    {
      return 0;
    }

    return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v2, v3), vceqq_f64(*(a1 + 16), *(a2 + 16))))) & 1;
  }

  if (v4 == 2)
  {
    return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v2, v3), vceqq_f64(*(a1 + 16), *(a2 + 16))))) & 1;
  }

  return 0;
}

void specialized static Spacing.TextMetrics.spacing(top:bottom:)(unint64_t *a1, double *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v8 = static Semantics_v5.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      return;
    }
  }

  else if (static Semantics.forced < v8)
  {
    return;
  }

  v9.i64[0] = v5;
  v10.n128_u64[0] = v3;
  if (specialized FloatingPoint.isAlmostEqual(to:tolerance:)(v9, 0.0000000149011612, v10, v11))
  {
    v12.i64[0] = v6;
    v13.n128_u64[0] = v2;
    if (specialized FloatingPoint.isAlmostEqual(to:tolerance:)(v12, 0.0000000149011612, v13, v14))
    {
      v15.i64[0] = v7;
      v16.n128_u64[0] = v4;
      specialized FloatingPoint.isAlmostEqual(to:tolerance:)(v15, 0.0000000149011612, v16, v17);
    }
  }
}

void lazy protocol witness table accessor for type Spacing.Category and conformance Spacing.Category()
{
  if (!lazy protocol witness table cache variable for type Spacing.Category and conformance Spacing.Category)
  {
    swift_getWitnessTable(protocol conformance descriptor for Spacing.Category, &type metadata for Spacing.Category, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Spacing.Category and conformance Spacing.Category);
  }
}

void lazy protocol witness table accessor for type Spacing.TextMetrics and conformance Spacing.TextMetrics()
{
  if (!lazy protocol witness table cache variable for type Spacing.TextMetrics and conformance Spacing.TextMetrics)
  {
    swift_getWitnessTable(protocol conformance descriptor for Spacing.TextMetrics, &type metadata for Spacing.TextMetrics, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Spacing.TextMetrics and conformance Spacing.TextMetrics);
  }
}

void lazy protocol witness table accessor for type Spacing.Value and conformance Spacing.Value()
{
  if (!lazy protocol witness table cache variable for type Spacing.Value and conformance Spacing.Value)
  {
    swift_getWitnessTable(protocol conformance descriptor for Spacing.Value, &type metadata for Spacing.Value, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Spacing.Value and conformance Spacing.Value);
  }
}

uint64_t getEnumTagSinglePayload for Spacing.Key(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Spacing.Key(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

double static ViewGraphHost.defaultEnvironment.getter@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for _defaultEnvironment != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *(&static ViewGraphHost._defaultEnvironment + 1);
  *a1 = static ViewGraphHost._defaultEnvironment;
  a1[1] = v1;

  return result;
}

double key path getter for static ViewGraphHost.defaultEnvironment : ViewGraphHost.Type@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for _defaultEnvironment != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *(&static ViewGraphHost._defaultEnvironment + 1);
  *a1 = static ViewGraphHost._defaultEnvironment;
  a1[1] = v1;

  return result;
}

void key path setter for static ViewGraphHost.defaultEnvironment : ViewGraphHost.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = one-time initialization token for _defaultEnvironment;

  if (v3 != -1)
  {
    swift_once();
  }

  static ViewGraphHost._defaultEnvironment = v1;
  *(&static ViewGraphHost._defaultEnvironment + 1) = v2;

  swift_beginAccess();
  static ViewGraphHost.isDefaultEnvironmentConfigured = 1;
}

void static ViewGraphHost.defaultEnvironment.setter(__int128 *a1)
{
  v1 = *a1;
  if (one-time initialization token for _defaultEnvironment != -1)
  {
    v2 = *a1;
    swift_once();
    v1 = v2;
  }

  static ViewGraphHost._defaultEnvironment = v1;

  swift_beginAccess();
  static ViewGraphHost.isDefaultEnvironmentConfigured = 1;
}

void (*static ViewGraphHost.defaultEnvironment.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (one-time initialization token for _defaultEnvironment != -1)
  {
    swift_once();
  }

  v4 = *(&static ViewGraphHost._defaultEnvironment + 1);
  *(v3 + 48) = static ViewGraphHost._defaultEnvironment;
  *(v3 + 56) = v4;

  return static ViewGraphHost.defaultEnvironment.modify;
}

void static ViewGraphHost.defaultEnvironment.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  static ViewGraphHost._defaultEnvironment = *(*a1 + 48);
  *(&static ViewGraphHost._defaultEnvironment + 1) = v3;
  if (a2)
  {

    swift_beginAccess();
    static ViewGraphHost.isDefaultEnvironmentConfigured = 1;
  }

  else
  {

    swift_beginAccess();
    static ViewGraphHost.isDefaultEnvironmentConfigured = 1;
  }

  free(v2);
}

void ViewGraphHost.AssetCatalogConfiguration.referenceBounds.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t ViewGraphHost.AssetCatalogConfiguration.init(referenceBounds:pointsPerInch:preferredArtworkSubtype:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = a7;
  *(a2 + 40) = result;
  return result;
}

BOOL static ViewGraphHost.AssetCatalogConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = CGRectEqualToRect(*a1, *a2);
  result = 0;
  if (v6 && v2 == v4)
  {
    return v3 == v5;
  }

  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ViewGraphHost.AssetCatalogConfiguration(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = CGRectEqualToRect(*a1, *a2);
  result = 0;
  if (v6 && v2 == v4)
  {
    return v3 == v5;
  }

  return result;
}

void EnvironmentValues.viewGraphIdiom.getter(char *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt1g5(v3, &v6);

    v4 = v6;
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0g5(v3);
    if (v5)
    {
      v4 = *(v5 + 72);
    }

    else
    {
      v4 = 6;
    }
  }

  *a1 = v4;
}

void key path getter for EnvironmentValues.viewGraphIdiom : EnvironmentValues(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt1g5(v3, &v6);

    v4 = v6;
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0g5(*a1);
    if (v5)
    {
      v4 = *(v5 + 72);
    }

    else
    {
      v4 = 6;
    }
  }

  *a2 = v4;
}

double key path setter for EnvironmentValues.viewGraphIdiom : EnvironmentValues(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt2B5(a2, v4);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Ttg5(v3, *a2);
  }

  return result;
}

void (*EnvironmentValues.viewGraphIdiom.modify(void *a1))(uint64_t *a1)
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
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt1g5(v5, &v10);

    v7 = v10;
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0g5(v5);
    if (v8)
    {
      v7 = *(v8 + 72);
    }

    else
    {
      v7 = 6;
    }
  }

  *(v4 + 40) = v7;
  return EnvironmentValues.viewGraphIdiom.modify;
}

void EnvironmentValues.viewGraphIdiom.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt2B5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

void EnvironmentValues.viewGraphAssetCatalogConfiguration.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE025AssetCatalogConfigurationI033_F748B30B59970FC73194935C526E3031LLVG_Tt1g5(v3, &v11);

    if ((v14 & 1) == 0)
    {
LABEL_7:
      v7 = *(&v13 + 1);
      v10 = v13;
      v9 = v11;
      v8 = v12;
      goto LABEL_8;
    }
  }

  else
  {
    v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE025AssetCatalogConfigurationS033_F748B30B59970FC73194935C526E3031LLVG_Tt0g5(v3);
    if (v4)
    {
      v5 = *(v4 + 120);
      v6 = *(v4 + 11);
      v11 = *(v4 + 9);
      v12 = v6;
      v13 = *(v4 + 13);
      if ((v5 & 1) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  v7 = 0;
  v8 = vdupq_n_s64(0x4059000000000000uLL);
  v9 = 0uLL;
  v10 = 0;
LABEL_8:
  *a1 = v9;
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  *(a1 + 40) = v7;
}

double key path getter for EnvironmentValues.viewGraphAssetCatalogConfiguration : EnvironmentValues@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = *a1;
  EnvironmentValues.viewGraphAssetCatalogConfiguration.getter(v6);
  result = v7;
  v4 = v8;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = result;
  *(a2 + 40) = v4;
  return result;
}

double key path setter for EnvironmentValues.viewGraphAssetCatalogConfiguration : EnvironmentValues(_OWORD *a1, uint64_t *a2)
{
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v6[2] = a1[2];
  v7 = 0;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE025AssetCatalogConfigurationF033_F748B30B59970FC73194935C526E3031LLVG_Tt2B5(a2, v6);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE025AssetCatalogConfigurationK033_F748B30B59970FC73194935C526E3031LLVG_Ttg5(v4, *a2);
  }

  return result;
}

void (*EnvironmentValues.viewGraphAssetCatalogConfiguration.modify(void *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xC8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[22] = v1;
  v5 = *v1;
  v3[23] = *v1;
  v6 = *(v1 + 8);
  v3[24] = v6;
  if (!v6)
  {
    v11 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE025AssetCatalogConfigurationS033_F748B30B59970FC73194935C526E3031LLVG_Tt0g5(v5);
    if (v11 && (v11[15] & 1) == 0)
    {
      v9 = *(v11 + 5);
      v8 = *(v11 + 6);
      v7 = v11[14];
      v10 = v11[9];
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE025AssetCatalogConfigurationI033_F748B30B59970FC73194935C526E3031LLVG_Tt1g5(v5, &v13);

  if (v17)
  {
LABEL_9:
    v7 = 0;
    v8 = xmmword_18DDED940;
    v9 = xmmword_18DDED950;
    v10 = 0;
    goto LABEL_10;
  }

  v7 = v16;
  v9 = v14;
  v8 = v15;
  v10 = v13;
LABEL_10:
  v4[14] = v10;
  *(v4 + 15) = v9;
  *(v4 + 17) = v8;
  v4[19] = v7;
  return EnvironmentValues.viewGraphAssetCatalogConfiguration.modify;
}

void EnvironmentValues.viewGraphAssetCatalogConfiguration.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 112);
  v5 = *(*a1 + 120);
  v4 = *(*a1 + 128);
  v7 = *(*a1 + 136);
  v6 = *(*a1 + 144);
  v8 = *(*a1 + 152);
  v9 = *(*a1 + 192);
  v10 = *(*a1 + 176);
  if (a2)
  {
    *v2 = v3;
    *(v2 + 8) = v5;
    *(v2 + 16) = v4;
    *(v2 + 24) = v7;
    *(v2 + 32) = v6;
    *(v2 + 40) = v8;
    *(v2 + 48) = 0;
    swift_retain_n();
    v11 = v10;
    v12 = v2;
  }

  else
  {
    *(v2 + 56) = v3;
    *(v2 + 64) = v5;
    *(v2 + 72) = v4;
    *(v2 + 80) = v7;
    *(v2 + 88) = v6;
    *(v2 + 96) = v8;
    *(v2 + 104) = 0;
    swift_retain_n();
    v12 = v2 + 56;
    v11 = v10;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE025AssetCatalogConfigurationF033_F748B30B59970FC73194935C526E3031LLVG_Tt2B5(v11, v12);

  if (v9)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE025AssetCatalogConfigurationK033_F748B30B59970FC73194935C526E3031LLVG_Ttg5(*(v2 + 184), **(v2 + 176));
  }

  free(v2);
}

uint64_t EnvironmentValues.viewGraphRenderingRootView.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE017RenderingRootViewI033_F748B30B59970FC73194935C526E3031LLVG_Tt1g5(v1, v7);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE017RenderingRootViewF033_F748B30B59970FC73194935C526E3031LLVG_Tt2g5(v1, v7);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  outlined destroy of WeakBox<Swift.AnyObject>(v7, v3, v4, v5);
  return Strong;
}

uint64_t key path getter for EnvironmentValues.viewGraphRenderingRootView : EnvironmentValues@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE017RenderingRootViewI033_F748B30B59970FC73194935C526E3031LLVG_Tt1g5(v3, v9);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE017RenderingRootViewF033_F748B30B59970FC73194935C526E3031LLVG_Tt2g5(*a1, v9);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  result = outlined destroy of WeakBox<Swift.AnyObject>(v9, v5, v6, v7);
  *a2 = Strong;
  return result;
}

uint64_t key path setter for EnvironmentValues.viewGraphRenderingRootView : EnvironmentValues(uint64_t *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  _s7SwiftUI17EnvironmentValuesV4_set33_0CBA6217BE011883F496E97230B6CF8FLL_3fory5ValueQz_xmtAA0C3KeyRzlFAcAE017RenderingRootViewN033_F748B30B59970FC73194935C526E3031LLV_Tt0g5(v5);
  return outlined destroy of WeakBox<Swift.AnyObject>(v5, v1, v2, v3);
}

uint64_t EnvironmentValues.viewGraphRenderingRootView.setter(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v2 = *v1;
  outlined init with copy of WeakBox<Swift.AnyObject>(v13, v12, v3, v4);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE017RenderingRootViewF033_F748B30B59970FC73194935C526E3031LLVG_Tt2g5(v1, v12);

  outlined destroy of WeakBox<Swift.AnyObject>(v12, v5, v6, v7);
  if (v1[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE017RenderingRootViewK033_F748B30B59970FC73194935C526E3031LLVG_Ttg5(v2, *v1);
  }

  swift_unknownObjectRelease();

  return outlined destroy of WeakBox<Swift.AnyObject>(v13, v8, v9, v10);
}

void (*EnvironmentValues.viewGraphRenderingRootView.modify(uint64_t **a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[6] = v1;
  v5 = *v1;
  v3[7] = *v1;
  v6 = *(v1 + 8);
  v3[8] = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE017RenderingRootViewI033_F748B30B59970FC73194935C526E3031LLVG_Tt1g5(v5, (v4 + 1));
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE017RenderingRootViewF033_F748B30B59970FC73194935C526E3031LLVG_Tt2g5(v5, (v3 + 1));
  }

  v4[9] = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  outlined destroy of WeakBox<Swift.AnyObject>((v4 + 1), v8, v9, v10);
  *v4 = Strong;
  return EnvironmentValues.viewGraphRenderingRootView.modify;
}

void EnvironmentValues.viewGraphRenderingRootView.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[8];
  v5 = (*a1)[6];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  outlined init with copy of WeakBox<Swift.AnyObject>(v3 + 8, v3 + 24, v6, v7);
  swift_retain_n();
  v8 = v3 + 24;
  if (a2)
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE017RenderingRootViewF033_F748B30B59970FC73194935C526E3031LLVG_Tt2g5(v5, v8);

    outlined destroy of WeakBox<Swift.AnyObject>(v3 + 24, v9, v10, v11);
    if (v4)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE017RenderingRootViewK033_F748B30B59970FC73194935C526E3031LLVG_Ttg5(*(v3 + 56), **(v3 + 48));
    }

    outlined destroy of WeakBox<Swift.AnyObject>(v3 + 8, v12, v13, v14);
    swift_unknownObjectRelease();
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE017RenderingRootViewF033_F748B30B59970FC73194935C526E3031LLVG_Tt2g5(v5, v8);

    outlined destroy of WeakBox<Swift.AnyObject>(v3 + 24, v15, v16, v17);
    if (v4)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE017RenderingRootViewK033_F748B30B59970FC73194935C526E3031LLVG_Ttg5(*(v3 + 56), **(v3 + 48));
    }

    swift_unknownObjectRelease();
    outlined destroy of WeakBox<Swift.AnyObject>(v3 + 8, v18, v19, v20);
  }

  free(v3);
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.RenderingRootViewKey()
{
  swift_unknownObjectWeakInit();

  return swift_unknownObjectWeakAssign();
}

uint64_t outlined destroy of WeakBox<Swift.AnyObject>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for WeakBox<Swift.AnyObject>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t outlined init with copy of WeakBox<Swift.AnyObject>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for WeakBox<Swift.AnyObject>(0, a2, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

double PlatformDrawableContent.init()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 5;
  return result;
}

id PlatformDrawableOptions.caLayerContentsFormat.getter()
{
  v1 = *(v0 + 8);
  v2 = MEMORY[0x1E6979658];
  if ((v1 & 0x100) != 0)
  {
    v2 = MEMORY[0x1E6979660];
  }

  if ((v1 & 0x40) != 0)
  {
    v3 = MEMORY[0x1E6979648];
  }

  else
  {
    v3 = v2;
  }

  return *v3;
}

char *PlatformDrawableContent.State.init(platformViewMode:)@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  *(a2 + 8) = 0;
  *a2 = v2;
  return result;
}

double PlatformDrawableContent.State.renderer()()
{
  if (!*(v0 + 8))
  {
    v2 = *v0;
    type metadata accessor for DisplayList.GraphicsRenderer();
    swift_allocObject();
    *(v0 + 8) = DisplayList.GraphicsRenderer.init(platformViewMode:)(&v2);
  }

  return result;
}

BOOL static PlatformDrawableOptions.== infix(_:_:)(int *a1, int *a2)
{
  v2 = *(a1 + 2);
  v3 = a1[2];
  v4 = *(a1 + 12);
  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = a2[2];
  v8 = *(a2 + 12);
  v14 = *a1;
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  return specialized static RasterizationOptions.== infix(_:_:)(&v14, &v10);
}

uint64_t assignWithTake for PlatformDrawableContent.State(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t initializeWithCopy for PlatformDrawableContent(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  outlined copy of PlatformDrawableContent.Storage(*a2, v4, v5, v6, v7, v8);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  return a1;
}

uint64_t assignWithCopy for PlatformDrawableContent(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  outlined copy of PlatformDrawableContent.Storage(*a2, v4, v5, v6, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v14 = *(a1 + 40);
  *(a1 + 40) = v8;
  outlined consume of PlatformDrawableContent.Storage(v9, v10, v11, v12, v13, v14);
  return a1;
}

uint64_t assignWithTake for PlatformDrawableContent(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v10;
  *(a1 + 32) = v3;
  v11 = *(a1 + 40);
  *(a1 + 40) = v4;
  outlined consume of PlatformDrawableContent.Storage(v5, v7, v6, v8, v9, v11);
  return a1;
}

uint64_t getEnumTagSinglePayload for PlatformDrawableContent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 41))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 40);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PlatformDrawableContent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for PlatformDrawableContent.Storage(uint64_t a1)
{
  if (*(a1 + 40) <= 4u)
  {
    return *(a1 + 40);
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t destructiveInjectEnumTag for PlatformDrawableContent.Storage(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 5;
  }

  *(result + 40) = a2;
  return result;
}

Swift::Void __swiftcall DisplayList.insertLayerFilters(matrices:version:premultiplied:)(Swift::OpaquePointer matrices, SwiftUI::DisplayList::Version version, Swift::Bool premultiplied)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(matrices._rawValue + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(matrices._rawValue + 8);
  v9 = (v6 + 63) >> 6;
  if (v8)
  {
    while (1)
    {
      v10 = v4;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v5 |= *(*(matrices._rawValue + 6) + ((v10 << 8) | (4 * v11)));
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(matrices._rawValue + v10 + 8);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_9;
    }
  }

  ForegroundTransform.apply(to:)(v3);
}

void ForegroundTransform.apply(to:)(uint64_t *a1)
{
  v2 = v1;
  v3 = a1;
  v237 = *MEMORY[0x1E69E9840];
  v4 = *(MEMORY[0x1E695F050] + 16);
  *&v215[8] = *MEMORY[0x1E695F050];
  v5 = v1[2];
  *&v214.x = MEMORY[0x1E69E7CC0];
  *&v214.y = MEMORY[0x1E69E7CC0];
  *v215 = 0;
  *&v215[24] = v4;
  *&v215[40] = v5;
  v6 = *a1;
  v196 = *(*a1 + 16);
  if (!v196)
  {

    goto LABEL_153;
  }

  v7 = 0;
  v195 = v6 + 32;
  v186 = v1;
  v187 = *a1;
  while (1)
  {
    v8 = v195 + 80 * v7;
    v9 = *(v8 + 60);
    v10 = *(v8 + 48);
    v11 = *(v8 + 16);
    v229 = *(v8 + 32);
    *v230 = v10;
    *&v230[12] = v9;
    r2.origin = *v8;
    r2.size = v11;
    v12 = *(&v229 + 1);
    v14 = *&v230[8];
    v13 = v10;
    v15 = v9 >> 32;
    v16 = DWORD1(v9) >> 30;
    if (DWORD1(v9) >> 30 > 1)
    {
      if (v16 != 2)
      {
        v17 = 0;
        goto LABEL_29;
      }

      v18 = *(*(&v229 + 1) + 16);
      if (v18)
      {
        if (v18 > 7)
        {
          v19 = v18 & 0x7FFFFFFFFFFFFFF8;
          v21 = (*(&v229 + 1) + 188);
          v22 = 0uLL;
          v23 = v18 & 0x7FFFFFFFFFFFFFF8;
          v24 = 0uLL;
          do
          {
            v25.i32[0] = *(v21 - 30);
            v25.i32[1] = *(v21 - 20);
            v25.i32[2] = *(v21 - 10);
            v25.i32[3] = *v21;
            v26.i32[0] = v21[10];
            v26.i32[1] = v21[20];
            v26.i32[2] = v21[30];
            v26.i32[3] = v21[40];
            v22 = vorrq_s8(v25, v22);
            v24 = vorrq_s8(v26, v24);
            v21 += 80;
            v23 -= 8;
          }

          while (v23);
          v27 = vorrq_s8(v24, v22);
          v28 = vorr_s8(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
          v17 = v28.i32[0] | v28.i32[1];
          if (v18 == v19)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v17 = 0;
          v19 = 0;
        }

        v29 = v18 - v19;
        v30 = (*(&v229 + 1) + 40 * v19 + 68);
        do
        {
          v31 = *v30;
          v30 += 10;
          v17 |= v31;
          --v29;
        }

        while (v29);
      }

      else
      {
        v17 = 0;
      }

LABEL_24:
      outlined init with copy of DisplayList.Item(&r2, &v223);
      goto LABEL_29;
    }

    if (!v16)
    {
      if (*(&v229 + 1) >> 60 != 6 && *(&v229 + 1) >> 60 != 11)
      {
        outlined init with copy of DisplayList.Item(&r2, &v223);
        v17 = 0;
        goto LABEL_29;
      }

      v17 = *((*(&v229 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
      goto LABEL_24;
    }

    switch(BYTE4(v10))
    {
      case 2u:
        outlined init with copy of DisplayList.Item(&r2, &v223);
        outlined init with copy of DisplayList.Item(&r2, &v223);

        x_low = v12;
        break;
      case 7u:
        x_low = *(*(&v229 + 1) + 28);
        outlined init with copy of DisplayList.Item(&r2, &v223);
        outlined init with copy of DisplayList.Item(&r2, &v223);
        outlined consume of DisplayList.Effect(v12, v13, 7);

        break;
      case 0x12u:
        (*(**(&v229 + 1) + 120))(&v217);
        outlined init with copy of DisplayList.Item(&r2, &v223);
        outlined init with copy of DisplayList.Item(&r2, &v223);
        outlined consume of DisplayList.Effect(v12, v13, 18);

        x_low = LODWORD(v217.origin.x);
        break;
      default:
        outlined init with copy of DisplayList.Item(&r2, &v223);
        outlined init with copy of DisplayList.Item(&r2, &v223);
        outlined consume of DisplayList.Effect(v12, v13, SBYTE4(v13));

        x_low = 0;
        break;
    }

    v17 = x_low | HIDWORD(v15);
LABEL_29:
    v32 = *(v2 + 2);
    v33 = v32 & v17;
    v34 = *(v2 + 7);
    if (v34 || v33 == 0)
    {
      if (*v215 != v34)
      {
        ForegroundTransform.NewList.flushPendingItems(transform:)(v2);
        *v215 = *(v2 + 7);
      }

      v36 = *&v214.y;
      outlined init with copy of DisplayList.Item(&r2, &v223);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
      }

      v38 = *(v36 + 2);
      v37 = *(v36 + 3);
      if (v38 >= v37 >> 1)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v36);
      }

      *(v36 + 2) = v38 + 1;
      v39 = &v36[80 * v38];
      *(v39 + 2) = r2.origin;
      v40 = *&v230[12];
      size = r2.size;
      v42 = *v230;
      *(v39 + 4) = v229;
      *(v39 + 5) = v42;
      *(v39 + 3) = size;
      *(v39 + 92) = v40;
      *&v214.y = v36;
      *&v40 = *&v215[8];
      v43 = *&v215[16];
      *&v42 = *&v215[32];
      v238 = CGRectUnion(*&v40, r2);
      x = v238.origin.x;
      y = v238.origin.y;
      width = v238.size.width;
      height = v238.size.height;
      outlined destroy of DisplayList.Item(&r2);
      *&v215[8] = x;
      *&v215[16] = y;
      *&v215[24] = width;
      *&v215[32] = height;
      v48 = v229;
      if (v229 <= *&v215[40])
      {
        v48 = *&v215[40];
      }

      *&v215[40] = v48;
    }

    else
    {
      if (v16 <= 1)
      {
        if (!v16)
        {
          if (v12 >> 60 == 11)
          {
            v49 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v50 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
            v51 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            v52 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
            v53 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
            v54 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x34);
            v55 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
            v56 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x3C);
            v205 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            LOWORD(v206) = v49;
            v207 = v50;
            outlined init with copy of DisplayList.Item(&r2, &v223);
            outlined copy of DisplayList.Content.Value(v12);

            ForegroundTransform.NewList.flushPendingItems(transform:)(v2);
            ForegroundTransform.apply(to:)(&v205);
            v57 = swift_allocObject();
            v58 = v206;
            v59 = v207;
            *(v57 + 16) = v205;
            *(v57 + 24) = v58;
            *(v57 + 28) = v59;
            *(v57 + 32) = v51;
            *(v57 + 40) = v52;
            *(v57 + 48) = v53;
            *(v57 + 52) = v54;
            *(v57 + 56) = v55;
            v60 = v57 | 0xB000000000000000;
            *(v57 + 60) = v56;
            outlined consume of DisplayList.Content.Value(v12);
            v216[0] = r2;
            v61 = v229;
            v62 = *v230;
            v63 = *&v230[16];
            v188 = *&v230[24];
            v64 = v13;
            outlined init with copy of DisplayList.Item(&r2, &v223);
            outlined copy of DisplayList.Content.Value(v60);
            outlined consume of DisplayList.Item.Value(*(&v61 + 1), v62, *(&v62 + 1), v63);
            v65 = *&v214.x;
            if (*&v215[40] <= v61)
            {
              v66 = v61;
            }

            else
            {
              v66 = *&v215[40];
            }

            v223 = v216[0];
            *&v224 = v66;
            v190 = v64;
            *(&v224 + 1) = v60;
            *v225 = v64;
            *&v225[16] = 0;
            *&v225[24] = v188;
            outlined init with copy of DisplayList.Item(&v223, &v217);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v65 + 2) + 1, 1, v65);
            }

            v2 = v186;
            v6 = v187;
            v68 = *(v65 + 2);
            v67 = *(v65 + 3);
            if (v68 >= v67 >> 1)
            {
              v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1, v65);
            }

            outlined destroy of DisplayList.Item(&r2);
            *(v65 + 2) = v68 + 1;
            v69 = &v65[80 * v68];
            *(v69 + 2) = v223.origin;
            v70 = *&v225[12];
            v71 = v223.size;
            v72 = *v225;
            *(v69 + 4) = v224;
            *(v69 + 5) = v72;
            *(v69 + 3) = v71;
            *(v69 + 92) = v70;
            *&v214.x = v65;
            v217 = v216[0];
            *&v218 = v66;
            *(&v218 + 1) = v60;
            v219 = v190;
            *&v220 = 0;
            DWORD2(v220) = v188;
            outlined destroy of DisplayList.Item(&v217);
            outlined consume of DisplayList.Content.Value(v12);
            v12 = v60;
          }

          else
          {
            if (*v215)
            {
              outlined init with copy of DisplayList.Item(&r2, &v223);
              ForegroundTransform.NewList.flushPendingItems(transform:)(v2);
              *v215 = *(v2 + 7);
            }

            else
            {
              outlined init with copy of DisplayList.Item(&r2, &v223);
            }

            v119 = *&v214.y;
            outlined init with copy of DisplayList.Item(&r2, &v223);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v119 + 2) + 1, 1, v119);
            }

            v121 = *(v119 + 2);
            v120 = *(v119 + 3);
            if (v121 >= v120 >> 1)
            {
              v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v120 > 1), v121 + 1, 1, v119);
            }

            *(v119 + 2) = v121 + 1;
            v122 = &v119[80 * v121];
            *(v122 + 2) = r2.origin;
            v123 = *&v230[12];
            v124 = r2.size;
            v125 = *v230;
            *(v122 + 4) = v229;
            *(v122 + 5) = v125;
            *(v122 + 3) = v124;
            *(v122 + 92) = v123;
            *&v214.y = v119;
            *&v123 = *&v215[8];
            v126 = *&v215[16];
            *&v125 = *&v215[32];
            v239 = CGRectUnion(*&v123, r2);
            v127 = v239.origin.x;
            v128 = v239.origin.y;
            v129 = v239.size.width;
            v130 = v239.size.height;
            outlined destroy of DisplayList.Item(&r2);
            *&v215[8] = v127;
            *&v215[16] = v128;
            *&v215[24] = v129;
            *&v215[32] = v130;
            v131 = v229;
            if (v229 <= *&v215[40])
            {
              v131 = *&v215[40];
            }

            *&v215[40] = v131;
          }

          outlined consume of DisplayList.Content.Value(v12);
          goto LABEL_43;
        }

        v211 = v14;
        v212 = v15;
        v213 = HIDWORD(v15);
        if (BYTE4(v13) == 2)
        {
          v194 = v7;
          if ((v12 & 0x71 & v32 & ((v12 & 0x71 & v32) - 1)) == 0)
          {
            v100 = *(v2 + 2);
            v101 = *(v2 + 24);
            *&v217.origin.x = *v2;
            LODWORD(v217.origin.y) = v32;
            v217.size.width = v100;
            LOBYTE(v217.size.height) = v101;
            HIDWORD(v217.size.height) = v12 & 0x71 & v32;
            outlined init with copy of DisplayList.Item(&r2, &v223);

            ForegroundTransform.apply(to:)(&v211);

            v102 = 0x200000000;
            goto LABEL_93;
          }
        }

        else
        {
          if (BYTE4(v13) == 10)
          {
            v76 = *(v12 + 96);
            *&v225[16] = *(v12 + 80);
            v226 = v76;
            v227[0] = *(v12 + 112);
            *(v227 + 12) = *(v12 + 124);
            v77 = *(v12 + 32);
            v223.origin = *(v12 + 16);
            v223.size = v77;
            v78 = *(v12 + 64);
            v224 = *(v12 + 48);
            *v225 = v78;
            v79 = *(v12 + 96);
            v220 = *(v12 + 80);
            v221 = v79;
            v222[0] = *(v12 + 112);
            *(v222 + 12) = *(v12 + 124);
            v80 = *(v12 + 32);
            v217.origin = *(v12 + 16);
            v217.size = v80;
            v81 = *(v12 + 64);
            v218 = *(v12 + 48);
            v219 = v81;
            v82 = *(v2 + 24);
            outlined init with copy of GraphicsFilter(&v223, v216);
            outlined init with copy of DisplayList.Item(&r2, v216);
            outlined init with copy of GraphicsFilter(&v223, v216);
            specialized _ColorMatrix.init(_:premultiplied:)(&v217, v82, &v231);
            if (v236)
            {
              v220 = *&v225[16];
              v221 = v226;
              v222[0] = v227[0];
              *(v222 + 12) = *(v227 + 12);
              v217 = v223;
              v218 = v224;
              v219 = *v225;
              v83 = _s7SwiftUI14GraphicsFilterOWOg(&v217);
              if (v83 <= 0x19)
              {
                if (((1 << v83) & 0x5B7FC0) != 0)
                {
                  _s7SwiftUI14GraphicsFilterOWOj6_(&v217);
LABEL_71:

                  v84 = *(v2 + 2);
                  v85 = v2[2];
                  v86 = *(v2 + 24);
                  v205 = *v2;
                  v206 = v84;
                  v208 = v85;
                  v209 = v86;
                  if (v33)
                  {
                    v87 = 1;
                  }

                  else if ((v33 & 0x10) != 0)
                  {
                    v87 = 16;
                  }

                  else if ((v33 & 0x20) != 0)
                  {
                    v87 = 32;
                  }

                  else
                  {
                    v87 = v33 & 0x40;
                  }

                  v210 = v87;
                  v168 = *v215;

                  if (v168 != v87)
                  {
                    ForegroundTransform.NewList.flushPendingItems(transform:)(&v205);
                    *v215 = v210;
                  }

                  v169 = *&v214.y;
                  outlined init with copy of DisplayList.Item(&r2, v216);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v169 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v169 + 2) + 1, 1, v169);
                  }

                  v171 = *(v169 + 2);
                  v170 = *(v169 + 3);
                  if (v171 >= v170 >> 1)
                  {
                    v169 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v170 > 1), v171 + 1, 1, v169);
                  }

                  *(v169 + 2) = v171 + 1;
                  v172 = &v169[80 * v171];
                  *(v172 + 2) = r2.origin;
                  v173 = *&v230[12];
                  v174 = r2.size;
                  v175 = *v230;
                  *(v172 + 4) = v229;
                  *(v172 + 5) = v175;
                  *(v172 + 3) = v174;
                  *(v172 + 92) = v173;
                  *&v214.y = v169;
                  *&v173 = *&v215[8];
                  v176 = *&v215[16];
                  *&v175 = *&v215[32];
                  v240 = CGRectUnion(*&v173, r2);
                  v177 = v240.origin.x;
                  v178 = v240.origin.y;
                  v179 = v240.size.width;
                  v180 = v240.size.height;
                  outlined destroy of GraphicsFilter(&v223);
                  outlined destroy of DisplayList.Item(&r2);
                  *&v215[8] = v177;
                  *&v215[16] = v178;
                  *&v215[24] = v179;
                  *&v215[32] = v180;
                  v181 = v229;
                  if (v229 <= *&v215[40])
                  {
                    v181 = *&v215[40];
                  }

                  *&v215[40] = v181;

                  outlined consume of DisplayList.Effect(v12, v13, 10);
                  goto LABEL_43;
                }

                if (((1 << v83) & 0x3000000) != 0 || v83 == 18 && (*(_s7SwiftUI14GraphicsFilterOWOj6_(&v217) + 24) & 4) == 0)
                {
                  goto LABEL_71;
                }
              }

              v194 = v7;
              outlined destroy of GraphicsFilter(&v223);
LABEL_92:
              ForegroundTransform.apply(to:)(&v211);
              v102 = v13 & 0xFF00000000;
LABEL_93:
              v103 = v13;
            }

            else
            {
              v202[2] = v233;
              v202[3] = v234;
              v203 = v235;
              v202[0] = v231;
              v202[1] = v232;
              v132 = *v2;
              v133 = *(v2 + 2);
              v134 = *(v2 + 2);
              v135 = *(v2 + 24);
              v136 = *(v2 + 7);
              *&v217.origin.x = *v2;
              LODWORD(v217.origin.y) = v133;
              v217.size.width = v134;
              LOBYTE(v217.size.height) = v135;
              HIDWORD(v217.size.height) = v136;
              v194 = v7;
              if ((vmaxvq_u8(vmvnq_s8(vuzp1q_s8(vuzp1q_s16(vceqq_f32(v231, xmmword_18DDD8E20), vceqq_f32(v232, xmmword_18DDC57D0)), vuzp1q_s16(vceqzq_f32(v233), vceqq_f32(v234, xmmword_18DDD8E20))))) & 1) != 0 || (vaddvq_s32(vbicq_s8(xmmword_18DDA9F30, vceqq_f32(v203, xmmword_18DDC57D0))) & 0xF) != 0)
              {
                v137 = v132 + 64;
                v138 = 1 << *(v132 + 32);
                if (v138 < 64)
                {
                  v139 = ~(-1 << v138);
                }

                else
                {
                  v139 = -1;
                }

                v140 = v139 & *(v132 + 64);
                v141 = (v138 + 63) >> 6;
                swift_bridgeObjectRetain_n();
                v142 = 0;
                v143 = *&v132;
                v189 = v141;
                v192 = v132 + 64;
                v193 = v132;
                while (v140)
                {
                  v147 = v142;
LABEL_125:
                  v148 = __clz(__rbit64(v140)) | (v147 << 6);
                  v149 = *(*(v132 + 48) + 4 * v148);
                  v150 = (*(v132 + 56) + 80 * v148);
                  v151 = v150[3];
                  v204[2] = v150[2];
                  v204[3] = v151;
                  v204[4] = v150[4];
                  v152 = v150[1];
                  v204[0] = *v150;
                  v204[1] = v152;
                  specialized static _ColorMatrix.* infix(_:_:)(v204, v202, &v197, *&v152);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v216[0].origin.x = v143;
                  v154 = specialized __RawDictionaryStorage.find<A>(_:)(v149);
                  v156 = *(*&v143 + 16);
                  v157 = (v155 & 1) == 0;
                  v158 = __OFADD__(v156, v157);
                  v159 = v156 + v157;
                  if (v158)
                  {
                    goto LABEL_157;
                  }

                  v160 = v155;
                  if (*(*&v143 + 24) >= v159)
                  {
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v167 = v154;
                      specialized _NativeDictionary.copy()();
                      v154 = v167;
                    }
                  }

                  else
                  {
                    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v159, isUniquelyReferenced_nonNull_native);
                    v154 = specialized __RawDictionaryStorage.find<A>(_:)(v149);
                    if ((v160 & 1) != (v161 & 1))
                    {
                      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                      __break(1u);
                      return;
                    }
                  }

                  v140 &= v140 - 1;
                  v143 = v216[0].origin.x;
                  if (v160)
                  {
                    v144 = (*(*&v216[0].origin.x + 56) + 80 * v154);
                    v145 = v200;
                    v144[2] = v199;
                    v144[3] = v145;
                    v144[4] = v201;
                    v146 = v198;
                    *v144 = v197;
                    v144[1] = v146;
                  }

                  else
                  {
                    *(*&v216[0].origin.x + 8 * (v154 >> 6) + 64) |= 1 << v154;
                    *(*(*&v143 + 48) + 4 * v154) = v149;
                    v162 = (*(*&v143 + 56) + 80 * v154);
                    v163 = v201;
                    v162[3] = v200;
                    v162[4] = v163;
                    v164 = v199;
                    v162[1] = v198;
                    v162[2] = v164;
                    *v162 = v197;
                    v165 = *(*&v143 + 16);
                    v158 = __OFADD__(v165, 1);
                    v166 = v165 + 1;
                    if (v158)
                    {
                      goto LABEL_158;
                    }

                    *(*&v143 + 16) = v166;
                  }

                  v142 = v147;
                  v132 = v193;
                  v137 = v192;
                  v141 = v189;
                }

                while (1)
                {
                  v147 = v142 + 1;
                  if (__OFADD__(v142, 1))
                  {
                    goto LABEL_156;
                  }

                  if (v147 >= v141)
                  {
                    break;
                  }

                  v140 = *(v137 + 8 * v147);
                  ++v142;
                  if (v140)
                  {
                    goto LABEL_125;
                  }
                }

                v217.origin.x = v143;
              }

              else
              {
              }

              ForegroundTransform.apply(to:)(&v211);
              outlined destroy of GraphicsFilter(&v223);

              outlined consume of DisplayList.Effect(v12, v13, 10);
              v12 = 0;
              v103 = 0;
              v102 = 0x1400000000;
            }

            v216[0] = r2;
            v104 = v229;
            v105 = *v230;
            v106 = *&v230[16];
            v107 = *&v230[24];
            v108 = v211;
            v109 = v102 | v103;
            v110 = v212 | (v213 << 32) | 0x40000000;
            outlined init with copy of DisplayList.Item(&r2, &v223);
            outlined consume of DisplayList.Item.Value(*(&v104 + 1), v105, *(&v105 + 1), v106);
            if (*&v215[40] <= v104)
            {
              v111 = v104;
            }

            else
            {
              v111 = *&v215[40];
            }

            ForegroundTransform.NewList.flushPendingItems(transform:)(v186);
            v223 = v216[0];
            *&v224 = v111;
            *(&v224 + 1) = v12;
            *&v191 = v109;
            *(&v191 + 1) = v108;
            *v225 = v109;
            *&v225[8] = v108;
            *&v225[16] = v110;
            *&v225[24] = v107;
            v112 = *&v214.x;
            outlined init with copy of DisplayList.Item(&v223, &v217);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v112 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v112 + 2) + 1, 1, v112);
            }

            v7 = v194;
            v114 = *(v112 + 2);
            v113 = *(v112 + 3);
            v2 = v186;
            if (v114 >= v113 >> 1)
            {
              v112 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v113 > 1), v114 + 1, 1, v112);
            }

            outlined destroy of DisplayList.Item(&r2);
            *(v112 + 2) = v114 + 1;
            v115 = &v112[80 * v114];
            *(v115 + 2) = v223.origin;
            v116 = *&v225[12];
            v117 = v223.size;
            v118 = *v225;
            *(v115 + 4) = v224;
            *(v115 + 5) = v118;
            *(v115 + 3) = v117;
            *(v115 + 92) = v116;
            *&v214.x = v112;
            v217 = v216[0];
            *&v218 = v111;
            *(&v218 + 1) = v12;
            v219 = v191;
            *&v220 = v110;
            DWORD2(v220) = v107;
            outlined destroy of DisplayList.Item(&v217);
            v6 = v187;
            goto LABEL_43;
          }

          v194 = v7;
        }

        outlined init with copy of DisplayList.Item(&r2, &v223);
        goto LABEL_92;
      }

      if (v16 == 2)
      {
        v73 = *(v12 + 16);
        if (v73)
        {
          outlined init with copy of DisplayList.Item(&r2, &v223);
          v74 = 0;
          v75 = 56;
          while (1)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
            }

            if (v74 >= *(v12 + 16))
            {
              break;
            }

            ++v74;
            ForegroundTransform.apply(to:)((v12 + v75));
            v75 += 40;
            if (v73 == v74)
            {
              goto LABEL_80;
            }
          }

          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
        }

        outlined init with copy of DisplayList.Item(&r2, &v223);
LABEL_80:
        v216[0] = r2;
        v88 = v229;
        v89 = *v230;
        v90 = *&v230[16];
        v91 = *&v230[24];
        outlined init with copy of DisplayList.Item(&r2, &v223);
        outlined consume of DisplayList.Item.Value(*(&v88 + 1), v89, *(&v89 + 1), v90);
        if (*&v215[40] <= v88)
        {
          v92 = v88;
        }

        else
        {
          v92 = *&v215[40];
        }

        ForegroundTransform.NewList.flushPendingItems(transform:)(v2);
        v223 = v216[0];
        *&v224 = v92;
        *(&v224 + 1) = v12;
        *v225 = 0uLL;
        *&v225[16] = 0x80000000;
        *&v225[24] = v91;
        v93 = *&v214.x;
        outlined init with copy of DisplayList.Item(&v223, &v217);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v93 + 2) + 1, 1, v93);
        }

        v95 = *(v93 + 2);
        v94 = *(v93 + 3);
        if (v95 >= v94 >> 1)
        {
          v93 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1, v93);
        }

        outlined destroy of DisplayList.Item(&r2);
        *(v93 + 2) = v95 + 1;
        v96 = &v93[80 * v95];
        *(v96 + 2) = v223.origin;
        v97 = *&v225[12];
        v98 = v223.size;
        v99 = *v225;
        *(v96 + 4) = v224;
        *(v96 + 5) = v99;
        *(v96 + 3) = v98;
        *(v96 + 92) = v97;
        *&v214.x = v93;
        v217 = v216[0];
        *&v218 = v92;
        *(&v218 + 1) = v12;
        v219 = 0uLL;
        *&v220 = 0x80000000;
        DWORD2(v220) = v91;
        outlined destroy of DisplayList.Item(&v217);
      }

      else
      {
        outlined destroy of DisplayList.Item(&r2);
      }
    }

LABEL_43:
    if (++v7 == v196)
    {
      break;
    }

    if (v7 >= *(v6 + 16))
    {
      goto LABEL_155;
    }
  }

  v3 = a1;
LABEL_153:
  ForegroundTransform.NewList.flushPendingItems(transform:)(v2);
  v182 = *&v214.x;
  v223.origin = v214;
  v223.size = *v215;
  v224 = *&v215[16];
  *v225 = *&v215[32];

  outlined destroy of ForegroundTransform.NewList(&v223);
  DisplayList.init(_:)(v182, &v217);
  y_low = LOWORD(v217.origin.y);
  y_high = HIDWORD(v217.origin.y);
  *v3 = *&v217.origin.x;
  *(v3 + 4) = y_low;
  *(v3 + 3) = y_high;
}

double DisplayList.applyViewGraphTransform(time:version:)(int a1, uint64_t *a2)
{
  if ((*(v2 + 8) & 0x60) != 0)
  {
    v3 = *a2;
    v6 = a1;
    v7 = v3;
    v8 = MEMORY[0x1E69E7CC0];
    v5 = 0;
    specialized DisplayList.transform(_:)(v2, &v6, &v5);
  }

  return result;
}

void ForegroundTransform.NewList.flushPendingItems(transform:)(uint64_t *a1)
{
  v2 = *(v1 + 8);
  if (*(v2 + 2))
  {
    v3 = v1;
    v5 = *a1;
    if (*(*a1 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(*(v3 + 16)), (v7 & 1) != 0) && (v8 = (*(v5 + 56) + 80 * v6), v9 = v8[3], v75 = v8[2], v76 = v9, v77 = v8[4], v10 = v8[1], v73 = *v8, v74 = v10, v70 = v75, v71 = v9, v72 = v77, v68 = v73, v69 = v10, !_ColorMatrix.isIdentity.getter()))
    {
      v13 = *(v2 + 2);
      if (v13)
      {
        v38 = *(v3 + 24);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
        }

        v14 = 32;
        do
        {
          *&v2[v14] = vsubq_f64(*&v2[v14], v38);
          v14 += 80;
          --v13;
        }

        while (v13);
        *(v3 + 8) = v2;
      }

      v15 = swift_allocObject();
      v16 = *(a1 + 24);
      v51 = v70;
      v52 = v71;
      v53 = v72;
      v49 = v68;
      v50 = v69;
      LOBYTE(v54) = v16;
      _s7SwiftUI14GraphicsFilterOWOi5_(&v49);
      v17 = v54;
      v15[5] = v53;
      v15[6] = v17;
      v15[7] = v55[0];
      *(v15 + 124) = *(v55 + 12);
      v18 = v50;
      v15[1] = v49;
      v15[2] = v18;
      v19 = v52;
      v15[3] = v51;
      v15[4] = v19;

      DisplayList.init(_:)(v20, &v64);
      v21 = v64;
      v22 = WORD4(v64) | (HIDWORD(v64) << 32) | 0x40000000;
      v23 = *(v3 + 24);
      v24 = *(v3 + 32);
      v25 = *(v3 + 40);
      v26 = *(v3 + 48);
      v27 = *(v3 + 56);
      *(v3 + 24) = 0;
      *(v3 + 32) = 0;
      *&v56 = v23;
      *(&v56 + 1) = v24;
      *&v57 = v25;
      *(&v57 + 1) = v26;
      *&v58[8] = xmmword_18DDD08E0;
      *v58 = v27;
      *&v58[24] = v21;
      *&v58[32] = v22;
      *&v58[40] = 0;
      v66 = *v58;
      *v67 = *&v58[16];
      *&v67[12] = *&v58[28];
      v64 = v56;
      v65 = v57;

      outlined init with copy of DisplayList.Item(&v56, v59);
      DisplayList.init(_:)(&v64, &v39);
      v28 = v39;
      v29 = v40 | (HIDWORD(v40) << 32) | 0x40000000;
      v59[0] = v23;
      v59[1] = v24;
      v59[2] = v25;
      v59[3] = v26;
      v60 = xmmword_18DDD08E0;
      v59[4] = v27;
      v61 = v21;
      v62 = v22;
      v63 = 0;
      outlined destroy of DisplayList.Item(v59);
      v30 = *(v3 + 56);
      v64 = 0uLL;
      *&v65 = v25;
      *(&v65 + 1) = v26;
      *&v66 = v30;
      *(&v66 + 1) = v15;
      *v67 = 0xA00000000;
      *&v67[8] = v28;
      *&v67[16] = v29;
      *&v67[24] = 0;
      v31 = *v3;
      outlined init with copy of DisplayList.Item(&v64, &v39);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
      }

      v33 = *(v31 + 2);
      v32 = *(v31 + 3);
      if (v33 >= v32 >> 1)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v31);
      }

      v39 = 0;
      v40 = 0;
      v41 = v25;
      v42 = v26;
      v43 = v30;
      v44 = v15;
      v45 = 0xA00000000;
      v46 = v28;
      v47 = v29;
      v48 = 0;
      outlined destroy of DisplayList.Item(&v39);
      *(v31 + 2) = v33 + 1;
      v34 = &v31[80 * v33];
      *(v34 + 2) = v64;
      v36 = v66;
      v35 = *v67;
      v37 = v65;
      *(v34 + 92) = *&v67[12];
      *(v34 + 4) = v36;
      *(v34 + 5) = v35;
      *(v34 + 3) = v37;
      *v3 = v31;
    }

    else
    {

      specialized Array.append<A>(contentsOf:)(v11);
    }

    *(v3 + 8) = MEMORY[0x1E69E7CC0];
    v12 = *(MEMORY[0x1E695F050] + 16);
    *(v3 + 24) = *MEMORY[0x1E695F050];
    *(v3 + 40) = v12;
    *(v3 + 56) = a1[2];
  }
}

uint64_t outlined init with copy of (StrongHash, DisplayList)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (StrongHash, DisplayList)();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (StrongHash, DisplayList)()
{
  if (!lazy cache variable for type metadata for (StrongHash, DisplayList))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (StrongHash, DisplayList));
    }
  }
}

uint64_t outlined destroy of ForegroundTransform.NewList(uint64_t a1)
{

  return a1;
}

uint64_t initializeWithCopy for ForegroundTransform.NewList(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 4);
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 56) = a2[7];

  return a1;
}

uint64_t assignWithCopy for ForegroundTransform.NewList(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = a2[1];

  *(a1 + 16) = *(a2 + 4);
  *(a1 + 24) = a2[3];
  *(a1 + 32) = a2[4];
  *(a1 + 40) = a2[5];
  *(a1 + 48) = a2[6];
  *(a1 + 56) = a2[7];
  return a1;
}

uint64_t assignWithTake for ForegroundTransform.NewList(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance EnvironmentalViewChild<A>@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 56);

  return v4(a2, 1, 1, AssociatedTypeWitness);
}

unint64_t specialized EnvironmentalViewChild.description.getter(uint64_t a1)
{
  _StringGuts.grow(_:)(22);

  v1 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v1);

  return 0xD000000000000014;
}

uint64_t EnvironmentReader.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static EnvironmentReader._viewListCount(inputs:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v6 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      return 1;
    }
  }

  else if (static Semantics.forced < v6)
  {
    return 1;
  }

  v8 = a1[3];
  v10[2] = a1[2];
  v10[3] = v8;
  v10[4] = a1[4];
  v9 = a1[1];
  v10[0] = *a1;
  v10[1] = v9;
  return (*(a3 + 40))(v10, a2, a3);
}

double key path getter for _AppearanceActionModifier.appear : _AppearanceActionModifier@<D0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v3, v4);
}

void key path setter for _AppearanceActionModifier.appear : _AppearanceActionModifier(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  v8 = a2[1];
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v3, v4);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v7, v8);
  *a2 = v6;
  a2[1] = v5;
}

void _AppearanceActionModifier.appear.setter(uint64_t a1, uint64_t a2)
{
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(*v2, v2[1]);
  *v2 = a1;
  v2[1] = a2;
}

double key path getter for _AppearanceActionModifier.disappear : _AppearanceActionModifier@<D0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @callee_guaranteed () -> ();
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v3, v4);
}

void key path setter for _AppearanceActionModifier.disappear : _AppearanceActionModifier(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v3, v4);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v7, v8);
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
}

void _AppearanceActionModifier.disappear.setter(uint64_t a1, uint64_t a2)
{
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t AppearanceEffect.init(modifier:phase:)@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 1;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  v3 = MEMORY[0x1E698D3F8];
  *(a3 + 40) = 0;
  LODWORD(v3) = *v3;
  *(a3 + 44) = 0;
  *(a3 + 48) = v3;
  *a3 = result;
  *(a3 + 4) = a2;
  return result;
}

void protocol witness for static StatefulRule.initialValue.getter in conformance _AppearanceActionModifier.MergedCallbacks(void *a1@<X8>)
{
  *a1 = 1;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
}

void closure #2 in AppearanceEffect.appeared()(uint64_t a1)
{
  if (AGWeakAttributeGetAttribute() != *MEMORY[0x1E698D3F8])
  {

    specialized static AppearanceEffect.willRemove(attribute:)();
  }
}

void *assignWithTake for _AppearanceActionModifier(void *a1, void *a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (v4)
    {
      v5 = a2[1];
      *a1 = v4;
      a1[1] = v5;

      goto LABEL_8;
    }
  }

  else if (v4)
  {
    v6 = a2[1];
    *a1 = v4;
    a1[1] = v6;
    goto LABEL_8;
  }

  *a1 = *a2;
LABEL_8:
  v7 = a2[2];
  if (!a1[2])
  {
    if (v7)
    {
      v9 = a2[3];
      a1[2] = v7;
      a1[3] = v9;
      return a1;
    }

LABEL_14:
    *(a1 + 1) = *(a2 + 1);
    return a1;
  }

  if (!v7)
  {

    goto LABEL_14;
  }

  v8 = a2[3];
  a1[2] = v7;
  a1[3] = v8;

  return a1;
}

uint64_t getEnumTagSinglePayload for _AppearanceActionModifier(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for _AppearanceActionModifier(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for AppearanceEffect(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  v7 = (a2 + 8);
  v6 = *(a2 + 8);
  if (v4 == 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v8 = *v7;
        *(a1 + 24) = *(a2 + 24);
LABEL_25:
        *v5 = v8;
        goto LABEL_26;
      }

      v11 = *(a2 + 16);
      *(a1 + 8) = v6;
      *(a1 + 16) = v11;
    }

    else
    {
      *v5 = *v7;
    }

    v12 = *(a2 + 24);
    if (!v12)
    {
      *(a1 + 24) = *(a2 + 24);
      goto LABEL_26;
    }

LABEL_22:
    v15 = *(a2 + 32);
    *(a1 + 24) = v12;
    *(a1 + 32) = v15;

    goto LABEL_26;
  }

  if (v6 != 1)
  {
    if (v4)
    {
      if (v6)
      {
        v10 = *(a2 + 16);
        *(a1 + 8) = v6;
        *(a1 + 16) = v10;

        goto LABEL_18;
      }
    }

    else if (v6)
    {
      v13 = *(a2 + 16);
      *(a1 + 8) = v6;
      *(a1 + 16) = v13;

      goto LABEL_18;
    }

    *v5 = *v7;
LABEL_18:
    v5 = (a1 + 24);
    v12 = *(a2 + 24);
    if (*(a1 + 24))
    {
      if (v12)
      {
        v14 = *(a2 + 32);
        *(a1 + 24) = v12;
        *(a1 + 32) = v14;

        goto LABEL_26;
      }
    }

    else if (v12)
    {
      goto LABEL_22;
    }

    v8 = *(a2 + 24);
    goto LABEL_25;
  }

  outlined destroy of _AppearanceActionModifier((a1 + 8));
  v9 = v7[1];
  *v5 = *v7;
  v5[1] = v9;
LABEL_26:
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

double assignWithTake for AppearanceEffect(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  v3 = *(a1 + 8);
  v6 = (a2 + 8);
  v5 = *(a2 + 8);
  if (v3 == 1)
  {
    goto LABEL_4;
  }

  if (v5 != 1)
  {
    if (v3)
    {
      if (v5)
      {
        v10 = *(a2 + 16);
        *(a1 + 8) = v5;
        *(a1 + 16) = v10;
        v11 = a1;

        a1 = v11;
        goto LABEL_13;
      }

      v13 = a1;

      a1 = v13;
    }

    else if (v5)
    {
      v12 = *(a2 + 16);
      *(a1 + 8) = v5;
      *(a1 + 16) = v12;
      goto LABEL_13;
    }

    *v4 = *v6;
LABEL_13:
    v14 = (a1 + 24);
    v15 = *(a2 + 24);
    if (*(a1 + 24))
    {
      if (v15)
      {
        v16 = *(a2 + 32);
        *(a1 + 24) = v15;
        *(a1 + 32) = v16;
        v17 = a1;

        a1 = v17;
        goto LABEL_5;
      }

      v19 = a1;

      a1 = v19;
    }

    else if (v15)
    {
      v18 = *(a2 + 32);
      *(a1 + 24) = v15;
      *(a1 + 32) = v18;
      goto LABEL_5;
    }

    *v14 = *(a2 + 24);
    goto LABEL_5;
  }

  v7 = a1;
  outlined destroy of _AppearanceActionModifier((a1 + 8));
  a1 = v7;
LABEL_4:
  v8 = v6[1];
  *v4 = *v6;
  v4[1] = v8;
LABEL_5:
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  result = *(a2 + 44);
  *(a1 + 44) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AppearanceEffect(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 52))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for AppearanceEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 52) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 52) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t _PreferenceValue.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - v8;
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v11 = *(AssociatedTypeWitness - 8);
    (*(v11 + 16))(v9, WeakValue, AssociatedTypeWitness);
    (*(v11 + 56))(v9, 0, 1, AssociatedTypeWitness);
    return (*(v11 + 32))(a2, v9, AssociatedTypeWitness);
  }

  else
  {
    v13 = *(AssociatedTypeWitness - 8);
    (*(v13 + 56))(v9, 1, 1, AssociatedTypeWitness);
    (*(v3 + 16))(v4, v3);
    result = (*(v13 + 48))(v9, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      return (*(v7 + 8))(v9, v6);
    }
  }

  return result;
}

double static PreferenceKey._delay<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;

  return result;
}

void _DelayedPreferenceView.transform.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t PreferenceValueAttribute.init(source:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2 & 1;
  return result;
}

double View.preferenceValue<A, B>(_:_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, _UNKNOWN **a10)
{
  v33 = a9;
  v34 = a7;
  v31 = a2;
  v32 = a3;
  v15 = *(a4 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v18 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v10, v19, v17);
  v20 = (*(v15 + 80) + 64) & ~*(v15 + 80);
  v21 = (v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 2) = a4;
  *(v22 + 3) = a5;
  v23 = v34;
  *(v22 + 4) = a6;
  *(v22 + 5) = v23;
  *(v22 + 6) = a8;
  *(v22 + 7) = a10;
  (*(v15 + 32))(&v22[v20], v18, a4);
  v24 = &v22[v21];
  v25 = v32;
  *v24 = v31;
  v24[1] = v25;
  v27 = type metadata accessor for _DetachedKey(255, a5, a8, v26);
  v35 = a5;
  v36 = a6;
  v37 = a8;
  v38 = a10;
  v28 = type metadata accessor for _PreferenceReadingView(255, &v35);
  v35 = v27;
  v36 = a4;
  v37 = v28;
  v38 = &protocol witness table for _DetachedKey<A>;
  v39 = v34;
  v40 = &protocol witness table for _PreferenceReadingView<A, B>;
  type metadata accessor for _DetachedView(0, &v35);
  v29 = v33;
  *v33 = partial apply for closure #1 in View.preferenceValue<A, B>(_:_:);
  v29[1] = v22;

  return result;
}

double closure #1 in View.preferenceValue<A, B>(_:_:)@<D0>(void *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10)
{
  v17 = type metadata accessor for _DetachedKey(0, a6, a9, a4);
  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = a6;
  v18[4] = a7;
  v18[5] = a8;
  v18[6] = a9;
  v18[7] = a10;
  v18[8] = *a1;
  v18[9] = a3;
  v18[10] = a4;
  v24[0] = a6;
  v24[1] = a7;
  v24[2] = a9;
  v24[3] = a10;
  v19 = type metadata accessor for _PreferenceReadingView(0, v24);
  View._detached<A, B>(with:_:)(v17, partial apply for closure #1 in closure #1 in View.preferenceValue<A, B>(_:_:), v18, a5, v17, v19, a8, &protocol witness table for _DetachedKey<A>, x8_0, &protocol witness table for _PreferenceReadingView<A, B>);

  return result;
}

double closure #1 in closure #1 in View.preferenceValue<A, B>(_:_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v18 = *(a1 + 80);
  v34[4] = *(a1 + 64);
  v34[5] = v18;
  v35 = *(a1 + 96);
  v19 = *(a1 + 16);
  v34[0] = *a1;
  v34[1] = v19;
  v20 = *(a1 + 48);
  v34[2] = *(a1 + 32);
  v34[3] = v20;
  v33 = a2;
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  *(v21 + 24) = a6;
  *(v21 + 32) = a7;
  *(v21 + 40) = a8;
  *(v21 + 48) = a10;
  *(v21 + 56) = a11;
  *(v21 + 64) = a3;
  *(v21 + 72) = a4;
  v22 = *(a1 + 80);
  *(v21 + 144) = *(a1 + 64);
  *(v21 + 160) = v22;
  *(v21 + 176) = *(a1 + 96);
  v23 = *(a1 + 16);
  *(v21 + 80) = *a1;
  *(v21 + 96) = v23;
  v24 = *(a1 + 48);
  *(v21 + 112) = *(a1 + 32);
  *(v21 + 128) = v24;
  type metadata accessor for _PreferenceValue(0, a6, a10, v25);
  _PreferenceValue._force<A>(_:)(partial apply for closure #1 in closure #1 in closure #1 in View.preferenceValue<A, B>(_:_:), v21, a9);

  v27 = type metadata accessor for _DetachedKey(255, a6, a10, v26);
  v29 = type metadata accessor for _DetachedPlaceholder(0, v27, &protocol witness table for _DetachedKey<A>, v28);
  (*(*(v29 - 8) + 16))(v32, v34, v29);

  return result;
}

uint64_t PreferenceValueAttribute.source.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t static PreferenceValueAttribute.initialValue.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(a2 + 16))();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 56);

  return v5(a3, 0, 1, AssociatedTypeWitness);
}

uint64_t protocol witness for static _AttributeBody._updateDefault(_:) in conformance PreferenceValueAttribute<A>(uint64_t a1, uint64_t a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - v7;
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v18 - v11;
  static PreferenceValueAttribute.initialValue.getter(v3, v8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v14 = (*(v9 + 32))(v12, v8, AssociatedTypeWitness);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v18[-2] = a2;
  swift_getWitnessTable(protocol conformance descriptor for PreferenceValueAttribute<A>, a2, v15);
  v18[-1] = v16;
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v12, partial apply for closure #1 in static Rule._updateDefault(_:), &v18[-4], AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v17);
  return (*(v9 + 8))(v12, AssociatedTypeWitness);
}

uint64_t specialized DelayedPreferenceChild.description.getter(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4)
{
  static PreferenceKey.readableName.getter(a1);
  MEMORY[0x193ABEDD0]();

  return 0x203A79616C6544;
}

uint64_t specialized PreferenceValueAttribute.description.getter(uint64_t a1, uint64_t a2, __n128 a3)
{
  static PreferenceKey.readableName.getter(a1);
  MEMORY[0x193ABEDD0]();

  return 36;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in View.preferenceValue<A, B>(_:_:)(uint64_t a1)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 160);
  v7[4] = *(v1 + 144);
  v7[5] = v3;
  v8 = *(v1 + 176);
  v4 = *(v1 + 96);
  v7[0] = *(v1 + 80);
  v7[1] = v4;
  v5 = *(v1 + 128);
  v7[2] = *(v1 + 112);
  v7[3] = v5;
  return v2(a1, v7);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance LineLimitModifier(int *a1, uint64_t a2)
{
  swift_beginAccess();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for UpdateEnvironment<LineLimitModifier>(0, &lazy cache variable for type metadata for UpdateEnvironment<LineLimitModifier>, &type metadata for LineLimitModifier, &protocol witness table for LineLimitModifier);
  lazy protocol witness table accessor for type UpdateEnvironment<LineLimitModifier> and conformance UpdateEnvironment<A>(&lazy protocol witness table cache variable for type UpdateEnvironment<LineLimitModifier> and conformance UpdateEnvironment<A>, &lazy cache variable for type metadata for UpdateEnvironment<LineLimitModifier>, &type metadata for LineLimitModifier, &protocol witness table for LineLimitModifier);
  v2 = Attribute.init<A>(body:value:flags:update:)();
  return _GraphInputs.environment.setter(v2);
}

void key path setter for _EnvironmentKeyTransformModifier.transform : <A>_EnvironmentKeyTransformModifier<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = v7;
  v8[4] = v6;

  *(a2 + 8) = partial apply for thunk for @escaping @callee_guaranteed (@inout A) -> (@out ());
  *(a2 + 16) = v8;
}

void _EnvironmentKeyTransformModifier.transform.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance SystemColorSchemeModifier(int *a1, uint64_t a2)
{
  swift_beginAccess();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for UpdateEnvironment<LineLimitModifier>(0, &lazy cache variable for type metadata for UpdateEnvironment<SystemColorSchemeModifier>, &type metadata for SystemColorSchemeModifier, &protocol witness table for SystemColorSchemeModifier);
  lazy protocol witness table accessor for type UpdateEnvironment<LineLimitModifier> and conformance UpdateEnvironment<A>(&lazy protocol witness table cache variable for type UpdateEnvironment<SystemColorSchemeModifier> and conformance UpdateEnvironment<A>, &lazy cache variable for type metadata for UpdateEnvironment<SystemColorSchemeModifier>, &type metadata for SystemColorSchemeModifier, &protocol witness table for SystemColorSchemeModifier);
  v2 = Attribute.init<A>(body:value:flags:update:)();
  return _GraphInputs.environment.setter(v2);
}

uint64_t *initializeBufferWithCopyOfBuffer for ChildEnvironment(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v7;
  if (*(v5 + 84))
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = *(v5 + 64) + 1;
  }

  v10 = ((v9 + 7 + ((v7 + 8) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = v7 & 0x100000;
  if (v8 > 7 || v11 != 0 || v10 > 0x18)
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + ((v8 & 0xF8 ^ 0x1F8) & (v8 + 16)));
  }

  else
  {
    *a1 = *a2;
    v15 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v16 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v15 = *v16;
    v17 = ((v15 + v8 + 4) & ~v8);
    v18 = ((v16 + v8 + 4) & ~v8);
    if ((*(v5 + 48))((v16 + v8 + 4) & ~v8, 1, v4))
    {
      memcpy(v17, v18, v9);
    }

    else
    {
      (*(v6 + 16))(v17, v18, v4);
      (*(v6 + 56))(v17, 0, 1, v4);
    }

    *((v17 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v18 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t getEnumTagSinglePayload for ChildEnvironment(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  v10 = *(*(*(a3 + 16) - 8) + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v10 + 7;
  if (v8 >= a2)
  {
    goto LABEL_33;
  }

  v12 = ((v11 + ((v9 + 8) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v13 = a2 - v8;
  v14 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = v13 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v12);
      if (!v18)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v18 = *(a1 + v12);
      if (!v18)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v12)) == 0)
  {
LABEL_33:
    v21 = (((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v9 + 4) & ~v9;
    if (v7 < 0x7FFFFFFE)
    {
      v23 = *((v11 + v21) & 0xFFFFFFFFFFFFFFF8);
      if (v23 >= 0xFFFFFFFF)
      {
        LODWORD(v23) = -1;
      }

      if ((v23 + 1) >= 2)
      {
        return v23;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v22 = (*(v5 + 48))(v21);
      if (v22 >= 2)
      {
        return v22 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v8 + (v14 | v20) + 1;
}

void storeEnumTagSinglePayload for ChildEnvironment(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((v11 + 7 + ((v10 + 8) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((v11 + 7 + ((v10 + 8) & ~v10)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((v11 + 7 + ((v10 + 8) & ~v10)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v11 + 7 + ((v10 + 8) & ~v10)) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  v19 = (((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v10 + 4) & ~v10;
  if (v8 < 0x7FFFFFFE)
  {
    v23 = ((v11 + 7 + v19) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v23 = 0;
      *v23 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v23 = a2;
    }
  }

  else if (v8 >= a2)
  {
    v24 = *(v6 + 56);
    v25 = a2 + 1;
    v26 = (((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v10 + 4) & ~v10;

    v24(v26, v25);
  }

  else
  {
    if (v11 <= 3)
    {
      v20 = ~(-1 << (8 * v11));
    }

    else
    {
      v20 = -1;
    }

    if (v11)
    {
      v21 = v20 & (~v8 + a2);
      if (v11 <= 3)
      {
        v22 = v11;
      }

      else
      {
        v22 = 4;
      }

      bzero(((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v10 + 4) & ~v10), v11);
      if (v22 > 2)
      {
        if (v22 == 3)
        {
          *v19 = v21;
          *(v19 + 2) = BYTE2(v21);
        }

        else
        {
          *v19 = v21;
        }
      }

      else if (v22 == 1)
      {
        *v19 = v21;
      }

      else
      {
        *v19 = v21;
      }
    }
  }
}

void type metadata accessor for UpdateEnvironment<LineLimitModifier>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    updated = type metadata accessor for UpdateEnvironment(0, a3, a4, a4);
    if (!v6)
    {
      atomic_store(updated, a2);
    }
  }
}

void lazy protocol witness table accessor for type UpdateEnvironment<LineLimitModifier> and conformance UpdateEnvironment<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a1)
  {
    type metadata accessor for UpdateEnvironment<LineLimitModifier>(255, a2, a3, a4);
    swift_getWitnessTable(protocol conformance descriptor for UpdateEnvironment<A>, v5);
    atomic_store(v6, a1);
  }
}

double View._detached<A, B>(with:_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v24 = a8;
  v25 = a2;
  v17 = *(a4 - 8);
  v18 = MEMORY[0x1EEE9AC00](a1);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, v10, v21, v18);
  (*(v17 + 32))(a9, v20, a4);
  v26[0] = a5;
  v26[1] = a4;
  v26[2] = a6;
  v26[3] = v24;
  v26[4] = a7;
  v26[5] = a10;
  v22 = (a9 + *(type metadata accessor for _DetachedView(0, v26) + 68));
  *v22 = v25;
  v22[1] = a3;

  return result;
}

double key path getter for _DetachedView.transform : <A, B, C>_DetachedView<A, B, C>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a2 + a3 - 32);
  v9[0] = *(a2 + a3 - 48);
  v9[1] = v5;
  v9[2] = *(a2 + a3 - 16);
  v6 = (a1 + *(type metadata accessor for _DetachedView(0, v9) + 68));
  v7 = v6[1];
  *a4 = *v6;
  a4[1] = v7;

  return result;
}

void key path setter for _DetachedView.transform : <A, B, C>_DetachedView<A, B, C>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a3 + a4 - 32);
  v8[0] = *(a3 + a4 - 48);
  v8[1] = v6;
  v8[2] = *(a3 + a4 - 16);
  v7 = (a2 + *(type metadata accessor for _DetachedView(0, v8) + 68));

  *v7 = v5;
  v7[1] = v4;
}

uint64_t _DetachedView.transform.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 68));

  return v2;
}

void _DetachedView.transform.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 68));

  *v6 = a1;
  v6[1] = a2;
}

uint64_t _DetachedView.init(content:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  (*(*(a5 - 8) + 32))(a9, a1, a5);
  v20[0] = a4;
  v20[1] = a5;
  v20[2] = a6;
  v20[3] = a7;
  v20[4] = a8;
  v20[5] = a10;
  result = type metadata accessor for _DetachedView(0, v20);
  v19 = (a9 + *(result + 68));
  *v19 = a2;
  v19[1] = a3;
  return result;
}

void *static _DetachedView._makeView(view:inputs:)@<X0>(_DWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v91 = a8;
  v102 = a4;
  v202 = *MEMORY[0x1E69E9840];
  LODWORD(v104) = *a1;
  v12 = a2[3];
  v197 = a2[2];
  *v198 = v12;
  *&v198[16] = a2[4];
  *&v198[32] = *(a2 + 20);
  v13 = a2[1];
  v195 = *a2;
  v196 = v13;
  v14 = *(a6 + 16);
  v106 = a3;
  v101 = a6;
  v14(&v168, a3, a6);
  v15 = v168;
  v191[0] = *&v198[8];
  *(v191 + 12) = *&v198[20];
  v192 = v195;
  v193 = v196;
  v194 = v197;
  v199[0] = v195;
  v199[1] = v196;
  v199[2] = v197;
  v88 = *(&v197 + 1);
  v200 = *v198;
  v103 = *v198;
  *&v201[12] = *&v198[20];
  *v201 = *&v198[8];
  v190 = v195;
  v98 = v196;
  v99 = HIDWORD(v196);
  v96 = DWORD2(v196);
  v16 = v197;
  v17 = DWORD1(v197) & 0xFFFFFFFD;
  v18 = DWORD1(v197) | 2;
  v100 = *&v198[24];
  if ((v168 & 0x10) != 0)
  {
    v18 = DWORD1(v197);
  }

  v95 = v18;
  if ((v168 & 0x10) == 0)
  {
    v17 = DWORD1(v197);
  }

  v87 = v17;
  v89 = *&v201[20];
  v90 = v168;
  v82 = a9;
  if (v168)
  {
    v92 = *&v201[12];
    v93 = *&v201[8];
    v94 = *&v198[12];
    outlined init with copy of _ViewInputs(&v195, &v168);
    outlined init with copy of _ViewInputs(v199, &v168);
    if ((v15 & 2) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  *v152 = *&v198[12];
  *&v152[4] = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  outlined init with copy of _ViewInputs(&v195, &v168);
  outlined init with copy of _ViewInputs(v199, &v168);
  type metadata accessor for SwitchRule<ViewTransform>(0, &lazy cache variable for type metadata for SwitchRule<ViewTransform>, &type metadata for ViewTransform, type metadata accessor for SwitchRule);
  lazy protocol witness table accessor for type SwitchRule<ViewTransform> and conformance SwitchRule<A>(&lazy protocol witness table cache variable for type SwitchRule<ViewTransform> and conformance SwitchRule<A>, &lazy cache variable for type metadata for SwitchRule<ViewTransform>, &type metadata for ViewTransform);
  v94 = Attribute.init<A>(body:value:flags:update:)();
  LODWORD(v168) = *&v201[8];
  *(&v168 + 4) = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for CGPoint(0);
  type metadata accessor for SwitchRule<CGPoint>(0, &lazy cache variable for type metadata for SwitchRule<CGPoint>, type metadata accessor for CGPoint, type metadata accessor for SwitchRule);
  lazy protocol witness table accessor for type SwitchRule<CGPoint> and conformance SwitchRule<A>();
  v93 = Attribute.init<A>(body:value:flags:update:)();
  v16 |= 0xCu;
  LODWORD(v168) = *&v201[12];
  *(&v168 + 4) = 0;
  v15 = v90;
  v92 = Attribute.init<A>(body:value:flags:update:)();
  if ((v90 & 2) == 0)
  {
LABEL_9:
    DWORD2(v168) = 0;
    *&v168 = *&v198[24];
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for SwitchRule<ViewTransform>(0, &lazy cache variable for type metadata for SwitchRule<ViewSize>, &type metadata for ViewSize, type metadata accessor for SwitchRule);
    lazy protocol witness table accessor for type SwitchRule<ViewTransform> and conformance SwitchRule<A>(&lazy protocol witness table cache variable for type SwitchRule<ViewSize> and conformance SwitchRule<A>, &lazy cache variable for type metadata for SwitchRule<ViewSize>, &type metadata for ViewSize);
    v15 = v90;
    v100 = Attribute.init<A>(body:value:flags:update:)();
    v16 |= 0x10u;
  }

LABEL_10:
  if ((v15 & 4) != 0)
  {
    v97 = v16;
    if ((v15 & 8) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v59 = v196;
  swift_beginAccess();
  v60 = *(v59 + 16);
  DWORD2(v168) = 0;
  *&v168 = v60;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for SwitchRule<ViewTransform>(0, &lazy cache variable for type metadata for SwitchRule<EnvironmentValues>, &type metadata for EnvironmentValues, type metadata accessor for SwitchRule);
  v61 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type SwitchRule<ViewTransform> and conformance SwitchRule<A>(&lazy protocol witness table cache variable for type SwitchRule<EnvironmentValues> and conformance SwitchRule<A>, &lazy cache variable for type metadata for SwitchRule<EnvironmentValues>, &type metadata for EnvironmentValues);
  LODWORD(v59) = Attribute.init<A>(body:value:flags:update:)();
  LOBYTE(v161) = 1;
  v62 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(v61);
  type metadata accessor for SwitchRule<ViewTransform>(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v63 = swift_allocObject();
  *(v63 + 16) = v59;
  *(v63 + 24) = v61;
  *(v63 + 32) = 0u;
  *(v63 + 48) = 0u;
  *(v63 + 64) = 0u;
  *(v63 + 80) = 256;
  *(v63 + 82) = *v152;
  *(v63 + 86) = *&v152[4];
  v98 = v63;
  *(v63 + 88) = v62;

  if ((v16 & 0x20) == 0)
  {
    v16 |= 0x20u;
  }

  v97 = v16;
  if ((v90 & 8) == 0)
  {
LABEL_12:
    DWORD2(v168) = 0;
    *&v168 = HIDWORD(v196);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for SwitchRule<ViewTransform>(0, &lazy cache variable for type metadata for SwitchRule<Transaction>, &type metadata for Transaction, type metadata accessor for SwitchRule);
    lazy protocol witness table accessor for type SwitchRule<ViewTransform> and conformance SwitchRule<A>(&lazy protocol witness table cache variable for type SwitchRule<Transaction> and conformance SwitchRule<A>, &lazy cache variable for type metadata for SwitchRule<Transaction>, &type metadata for Transaction);
    v99 = Attribute.init<A>(body:value:flags:update:)();
  }

LABEL_13:
  DWORD2(v168) = 0;
  *&v168 = *&v198[8];
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for SwitchRule<ViewTransform>(0, &lazy cache variable for type metadata for SwitchRule<PreferenceKeys>, &type metadata for PreferenceKeys, type metadata accessor for SwitchRule);
  lazy protocol witness table accessor for type SwitchRule<ViewTransform> and conformance SwitchRule<A>(&lazy protocol witness table cache variable for type SwitchRule<PreferenceKeys> and conformance SwitchRule<A>, &lazy cache variable for type metadata for SwitchRule<PreferenceKeys>, &type metadata for PreferenceKeys);
  v19 = Attribute.init<A>(body:value:flags:update:)();

  v81 = &v76;
  MEMORY[0x1EEE9AC00](v20);
  v21 = v102;
  v75[2] = v106;
  v75[3] = v102;
  v75[4] = a5;
  v75[5] = v101;
  v75[6] = a7;
  v75[7] = v91;
  v113[1] = v104;
  *&v168 = v106;
  *(&v168 + 1) = v102;
  *&v169 = a5;
  *(&v169 + 1) = v101;
  *&v170 = a7;
  *(&v170 + 1) = v91;
  v85 = type metadata accessor for _DetachedView(255, &v168);
  type metadata accessor for _GraphValue(0, v85, v22, v23);
  _GraphValue.subscript.getter(partial apply for closure #1 in static _DetachedView._makeView(view:inputs:), v21, v113);
  v24 = v113[0];
  v185 = v190;
  *&v186 = v98;
  *(&v186 + 1) = __PAIR64__(v99, v96);
  *&v187 = __PAIR64__(v95, v97);
  *(&v187 + 1) = MEMORY[0x1E69E7CD0];
  *&v188 = v103;
  v86 = v19;
  *(&v188 + 1) = __PAIR64__(v94, v19);
  *&v189[0] = __PAIR64__(v92, v93);
  DWORD2(v189[0]) = v100;
  *(v189 + 12) = v89;
  v25 = v89;
  LODWORD(v105) = AGSubgraphShouldRecordTree();
  if (v105)
  {
    AGSubgraphBeginTreeElement();
  }

  v177 = v187;
  v178 = v188;
  v179 = v189[0];
  v180 = v189[1];
  v175 = v185;
  v176 = v186;
  v26 = v187;
  LODWORD(v177) = 0;
  LODWORD(v161) = v24;
  v181[0] = v185;
  v181[1] = v186;
  v182 = v189[1];
  v181[4] = v189[0];
  v181[3] = v188;
  v181[2] = v177;
  v170 = v177;
  v171 = v188;
  v172 = v189[0];
  LODWORD(v173) = v189[1];
  v168 = v185;
  v169 = v186;
  v27 = *(a7 + 24);
  outlined init with copy of _ViewInputs(&v185, v152);
  outlined init with copy of _ViewInputs(v181, v152);
  v27(&v114, &v161, &v168, v102, a7);
  v28 = v102;
  v183[2] = v170;
  v183[3] = v171;
  v183[4] = v172;
  v184 = v173;
  v183[0] = v168;
  v183[1] = v169;
  outlined destroy of _ViewInputs(v183);
  LODWORD(v177) = v26;
  if (v105)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(&v114, &v175);
    AGSubgraphEndTreeElement();
  }

  v154[2] = v177;
  v154[3] = v178;
  v154[4] = v179;
  v155 = v180;
  v154[0] = v175;
  v154[1] = v176;
  v29 = outlined destroy of _ViewInputs(v154);
  v30 = v114;
  *(v160 + 12) = v25;
  LODWORD(v166) = HIDWORD(v25);
  v156 = v190;
  *&v157 = v98;
  *(&v157 + 1) = __PAIR64__(v99, v96);
  *&v158 = __PAIR64__(v95, v97);
  *(&v158 + 1) = MEMORY[0x1E69E7CD0];
  *&v159 = v103;
  *(&v159 + 1) = __PAIR64__(v94, v86);
  *&v160[0] = __PAIR64__(v92, v93);
  DWORD2(v160[0]) = v100;
  v162 = v157;
  v161 = v190;
  v165 = v160[0];
  v164 = v159;
  v163 = v158;
  *(&v166 + 1) = v114;
  v77 = v115;
  v167 = v115;
  v83 = HIDWORD(v115);
  MEMORY[0x1EEE9AC00](v29);
  v31 = v106;
  v71[0] = v106;
  v71[1] = v28;
  v32 = v101;
  v78 = a7;
  v33 = v91;
  v74 = v91;
  KeyPath = swift_getKeyPath();
  v80 = v75;
  *v152 = v104;
  *&v152[8] = _s14AttributeGraph0A0V13dynamicMemberACyqd__Gs7KeyPathCyxqd__G_tcluigqd__xcfU_TA_0;
  *&v152[16] = KeyPath;
  MEMORY[0x1EEE9AC00](KeyPath);
  v84 = type metadata accessor for _DetachedPlaceholder(255, v31, v32, v35);
  v71[2] = swift_getFunctionTypeMetadata1();
  v72 = type metadata accessor for Map();
  swift_getWitnessTable(MEMORY[0x1E698D3A8], v72);
  v73 = v36;
  v37 = v33;
  outlined init with copy of _ViewInputs(&v156, &v168);
  v38 = type metadata accessor for Attribute();
  v85 = v30;

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v152, partial apply for closure #1 in Attribute.init<A>(_:), v71, v72, MEMORY[0x1E69E73E0], v38, MEMORY[0x1E69E7410], v39);

  v104 = v71;
  *&v153[52] = v164;
  *&v153[68] = v165;
  *&v153[84] = v166;
  *&v153[4] = v161;
  *&v153[20] = v162;
  *&v153[100] = v167;
  *&v153[36] = v163;
  *v152 = v168;
  *&v152[52] = *&v153[48];
  *&v152[68] = *&v153[64];
  *&v152[84] = *&v153[80];
  *&v152[96] = *&v153[92];
  *&v152[4] = *v153;
  *&v152[20] = *&v153[16];
  *&v152[36] = *&v153[32];
  MEMORY[0x1EEE9AC00](v40);
  v70[2] = a5;
  *&v168 = v31;
  *(&v168 + 1) = a5;
  *&v169 = v101;
  *(&v169 + 1) = v33;
  v41 = type metadata accessor for DetachedChild(0, &v168);
  v70[3] = v41;
  swift_getWitnessTable(protocol conformance descriptor for DetachedChild<A, B>, v41);
  v70[4] = v42;
  v43 = swift_checkMetadataState();
  v79 = *(v43 - 8);
  (*(v79 + 16))(&v168, &v161, v43);
  v44 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v152, closure #1 in Attribute.init<A>(_:)partial apply, v70, v41, MEMORY[0x1E69E73E0], v44, MEMORY[0x1E69E7410], v45);
  v172 = *&v152[64];
  v173 = *&v152[80];
  v174 = *&v152[96];
  v168 = *v152;
  v169 = *&v152[16];
  v171 = *&v152[48];
  v170 = *&v152[32];
  (*(*(v41 - 8) + 8))(&v168, v41);
  _GraphValue.init(_:)(LODWORD(v150[0]), &v109);
  v46 = v109;
  *v152 = v192;
  *&v152[16] = v193;
  *&v152[32] = v194;
  *&v152[36] = v87;
  *&v152[40] = v88;
  *&v152[48] = v103;
  *&v152[56] = v191[0];
  *&v152[68] = *(v191 + 12);
  if (v105)
  {
    AGSubgraphBeginTreeElement();
  }

  v144 = *&v152[32];
  v145 = *&v152[48];
  v146 = *&v152[64];
  v147 = *&v152[80];
  v142 = *v152;
  v143 = *&v152[16];
  v47 = *&v152[32];
  LODWORD(v144) = 0;
  LODWORD(v122) = v46;
  v148[0] = *v152;
  v148[1] = *&v152[16];
  v149 = *&v152[80];
  v148[3] = *&v152[48];
  v148[4] = *&v152[64];
  v148[2] = v144;
  v138 = v144;
  v139 = *&v152[48];
  v140 = *&v152[64];
  v141 = *&v152[80];
  v136 = *v152;
  v137 = *&v152[16];
  v48 = *(v33 + 24);
  outlined init with copy of _ViewInputs(v152, v150);
  outlined init with copy of _ViewInputs(v148, v150);
  v48(&v110, &v122, &v136, a5, v37);
  v150[2] = v138;
  v150[3] = v139;
  v150[4] = v140;
  v151 = v141;
  v150[0] = v136;
  v150[1] = v137;
  outlined destroy of _ViewInputs(v150);
  LODWORD(v144) = v47;
  if (v105)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(&v110, &v142);
    AGSubgraphEndTreeElement();
  }

  v80 = v43;
  v138 = v144;
  v139 = v145;
  v140 = v146;
  v141 = v147;
  v136 = v142;
  v137 = v143;
  outlined destroy of _ViewInputs(&v136);
  v84 = v110;
  v107 = MEMORY[0x1E69E7CC0];
  v49 = *MEMORY[0x1E698D3F8];
  LODWORD(v108) = 0;
  HIDWORD(v108) = v49;
  v50 = *(v103 + 16);
  v76 = v112;
  if (v50)
  {
    v104 = (v111 | (v112 << 32));
    v105 = v77 | (v83 << 32);
    v51 = ( + 40);
    v52 = v91;
    v53 = a5;
    v55 = v101;
    v54 = v102;
    v56 = v78;
    v57 = v84;
    v58 = v85;
    do
    {
      specialized connectOutput #1 <A, B, C><A1>(key:) in static _DetachedView._makeView(view:inputs:)(*(v51 - 1), &v107, v58, v105, v57, v104, v106, v54, v53, *(v51 - 1), v55, v56, v52, *v51);
      v51 += 2;
      --v50;
    }

    while (v50);
  }

  else
  {
  }

  v64 = v103;

  if ((v90 & 0x10) != 0)
  {

    swift_beginAccess();
    v65 = v83;
  }

  else
  {

    swift_beginAccess();
    v65 = v76;
  }

  HIDWORD(v108) = v65;
  v66 = v82;
  v67 = v89;
  v68 = v94;
  if ((v108 & 0x80) == 0)
  {
    LODWORD(v108) = v108 | 0x80;
  }

  (*(v79 + 8))(&v161, v80);
  v116[0] = v192;
  v116[1] = v193;
  v117 = v194;
  v118 = v87;
  v119 = v88;
  v120 = v64;
  v121[0] = v191[0];
  *(v121 + 12) = *(v191 + 12);
  outlined destroy of _ViewInputs(v116);
  swift_beginAccess();
  *v66 = v107;
  v66[1] = v108;
  v122 = v190;
  v123 = v98;
  v124 = v96;
  v125 = v99;
  v126 = v97;
  v127 = v95;
  v128 = MEMORY[0x1E69E7CD0];
  v129 = v64;
  v130 = v86;
  v131 = v68;
  v132 = v93;
  v133 = v92;
  v134 = v100;
  v135 = v67;
  return outlined destroy of _ViewInputs(&v122);
}

uint64_t closure #1 in static _DetachedView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  v12[2] = type metadata accessor for _DetachedView(0, v13);
  v12[3] = a3;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v12, a3, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13[0];
}

double specialized connectOutput #1 <A, B, C><A1>(key:) in static _DetachedView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ValueMetadata *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  (*(a11 + 8))(a10, a10, a14, a7);
  v14 = _ViewOutputs.subscript.getter(a10, a10, a14);
  swift_beginAccess();
  _ViewOutputs.subscript.setter(v14 | ((HIDWORD(v14) & 1) << 32), a10, a10, a14);
  swift_endAccess();
  return result;
}

double View._detached<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v15 = *(a3 - 8);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v7, v16);
  (*(v15 + 32))(a7, v18, a3);
  v21[0] = &type metadata for _EmptyDetached;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = &protocol witness table for _EmptyDetached;
  v21[4] = a5;
  v21[5] = a6;
  v19 = (a7 + *(type metadata accessor for _DetachedView(0, v21) + 68));
  *v19 = a1;
  v19[1] = a2;

  return result;
}

double DetachedChild.value.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v79 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for ObservationTracking._AccessList();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v60 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v60 - v11;
  type metadata accessor for SwitchRule<CGPoint>(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v64 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v60 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v70 = (&v60 - v18);
  v19 = *(*(a1 + 24) - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v69 = &v60 - v24;
  v25 = v2[5];
  v78[4] = v2[4];
  v78[5] = v25;
  v78[6] = v2[6];
  v26 = v2[1];
  v78[0] = *v2;
  v78[1] = v26;
  v27 = v2[3];
  v78[2] = v2[2];
  v78[3] = v27;
  v73[2] = *(a1 + 16);
  v73[3] = v28;
  v71 = v28;
  v74 = *(a1 + 32);
  v75 = v78;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v29 = static ObservationCenter._current;
  swift_beginAccess();
  v30 = pthread_getspecific(v29[2]);
  v31 = v71;
  if (!v30)
  {
    v32 = swift_slowAlloc();
    pthread_setspecific(v29[2], v32);
    v77 = type metadata accessor for ObservationCenter();
    *&v76 = v29[3];
    outlined init with take of Any(&v76, v32);
    v31 = v71;

    v30 = v32;
  }

  outlined init with copy of Any(v30, &v76);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v33 = v72;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_19:
    v48 = v65;
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29[2] + 1, 1, v29);
    *(v33 + 24) = v29;
    goto LABEL_10;
  }

  v61 = CurrentAttribute;
  v62 = v7;
  swift_beginAccess();
  v63 = *(v33 + 24);
  *(v33 + 24) = MEMORY[0x1E69E7CC0];
  v35 = (*(v5 + 56))(v16, 1, 1, v4);
  MEMORY[0x1EEE9AC00](v35);
  *(&v60 - 4) = v31;
  *(&v60 - 3) = partial apply for closure #1 in DetachedChild.value.getter;
  *(&v60 - 2) = v73;
  v36 = type metadata accessor for Error();
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v16, partial apply for closure #1 in ObservationCenter._withObservation<A>(do:), (&v60 - 6), v64, v36, v31, MEMORY[0x1E69E7288], &v72);
  v38 = *(v19 + 32);
  v37 = v19 + 32;
  v39 = v69;
  v40 = v22;
  v41 = v38;
  v38(v69, v40, v31);
  v42 = v70;
  outlined init with take of ObservationTracking._AccessList?(v16, v70);
  v43 = v66;
  outlined init with copy of ObservationTracking._AccessList?(v42, v66);
  if ((*(v5 + 48))(v43, 1, v4) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v42);
    v44 = v43;
    v45 = v65;
    goto LABEL_13;
  }

  v60 = v37;
  v46 = v68;
  v7 = *(v5 + 32);
  (v7)(v68, v43, v4);
  (*(v5 + 16))(v67, v46, v4);
  v29 = *(v33 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v33 + 24) = v29;
  v64 = v41;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_19;
  }

  v48 = v65;
LABEL_10:
  v50 = v29[2];
  v49 = v29[3];
  if (v50 >= v49 >> 1)
  {
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v29);
  }

  v29[2] = v50 + 1;
  (v7)(v29 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v50, v67, v4);
  *(v33 + 24) = v29;
  (*(v5 + 8))(v68, v4);
  v45 = v48;
  v44 = v70;
  v31 = v71;
  v39 = v69;
  v41 = v64;
LABEL_13:
  outlined destroy of ObservationTracking._AccessList?(v44);
  v41(v45, v39, v31);
  v51 = *(v33 + 24);
  v52 = *(v51 + 16);
  if (v52)
  {
    v53 = v62;
    v55 = *(v5 + 16);
    v54 = v5 + 16;
    v56 = v51 + ((*(v54 + 64) + 32) & ~*(v54 + 64));
    v57 = *(v54 + 56);
    v69 = *(v33 + 24);
    v70 = v55;

    v58 = v61;
    do
    {
      (v70)(v53, v56, v4);
      ObservationCenter.invalidate<A>(_:onChangeIn:)(v58, v53);
      (*(v54 - 8))(v53, v4);
      v56 += v57;
      --v52;
    }

    while (v52);
  }

  *(v33 + 24) = v63;

  return result;
}

uint64_t closure #1 in DetachedChild.value.getter@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v17[0] = a2;
  v17[1] = a3;
  v17[2] = a4;
  v17[3] = a5;
  type metadata accessor for DetachedChild(0, v17);
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a5;
  v16[6] = a1;
  type metadata accessor for _DetachedPlaceholder(255, a2, a4, v13);
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  return Attribute.syncMainIfReferences<A>(do:)(partial apply for closure #1 in closure #1 in DetachedChild.value.getter, v16, FunctionTypeMetadata1, a3, a6);
}

uint64_t closure #1 in closure #1 in DetachedChild.value.getter(void (**a1)(__int128 *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v10 = *(a2 + 56);
  v11 = *(a2 + 88);
  v28 = *(a2 + 72);
  v29 = v11;
  v30 = *(a2 + 104);
  v12 = *(a2 + 24);
  v24 = *(a2 + 8);
  v25 = v12;
  v26 = *(a2 + 40);
  v27 = v10;
  *&v17 = a3;
  *(&v17 + 1) = a4;
  *&v18 = a5;
  *(&v18 + 1) = a6;
  v13 = type metadata accessor for DetachedChild(0, &v17);
  (*(*(v13 - 8) + 16))(&v17, a2, v13);
  v9(&v24);
  v21 = v28;
  v22 = v29;
  v23 = v30;
  v17 = v24;
  v18 = v25;
  v19 = v26;
  v20 = v27;
  v15 = type metadata accessor for _DetachedPlaceholder(0, a3, a5, v14);
  return (*(*(v15 - 8) + 8))(&v17, v15);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance DetachedChild<A, B>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for DetachedChild<A, B>, a1);

  return static AsyncAttribute.flags.getter();
}

void *static _DetachedPlaceholder._makeView(view:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = a2[3];
  v27 = a2[2];
  v28 = v9;
  v29 = a2[4];
  v30 = *(a2 + 20);
  v10 = a2[1];
  v25 = *a2;
  v26 = v10;
  (*(a4 + 16))(&v31, a3, a4);
  if ((v31 & 1) == 0)
  {
    LODWORD(v23[0]) = v8;
    v33 = v27;
    v34 = v28;
    v35 = v29;
    v36 = v30;
    v31 = v25;
    v32 = v26;
    return static _DetachedPlaceholder.makeStub(view:inputs:)(v23, &v31, a3, a4, a5);
  }

  specialized static GraphHost.currentHost.getter();
  v12 = specialized GraphHost.intern<A>(_:for:id:)(&type metadata for _GeometryGroupEffect, 0);

  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = v8;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v20 = v28;
  v21 = v29;
  v17 = v25;
  v18 = v26;
  v19 = v27;
  v15 = v27;
  v22 = v30;
  LODWORD(v19) = 0;
  v24 = v30;
  v23[3] = v28;
  v23[4] = v29;
  v23[0] = v25;
  v23[1] = v26;
  v23[2] = v19;
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v28))
  {
    outlined init with copy of _ViewInputs(&v25, &v31);
    outlined init with copy of _ViewInputs(v23, &v31);
    _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA014_GeometryGroupD0V_Tt3B5(v12, v23, partial apply for closure #1 in static _DetachedPlaceholder._makeView(view:inputs:), a5);
    outlined destroy of _ViewInputs(v23);
    LODWORD(v19) = v15;
    if (!ShouldRecordTree)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v33 = v19;
  v34 = v20;
  v35 = v21;
  v36 = v22;
  v31 = v17;
  v32 = v18;
  outlined init with copy of _ViewInputs(&v25, v16);
  v16[0] = v8;
  static _DetachedPlaceholder.makeStub(view:inputs:)(v16, &v31, a3, a4, a5);
  LODWORD(v19) = v15;
  if (ShouldRecordTree)
  {
LABEL_9:
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a5, &v17);
    AGSubgraphEndTreeElement();
  }

LABEL_10:

  v33 = v19;
  v34 = v20;
  v35 = v21;
  v36 = v22;
  v31 = v17;
  v32 = v18;
  return outlined destroy of _ViewInputs(&v31);
}

uint64_t static _DetachedPlaceholder.makeStub(view:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = a2[3];
  v9 = a2[1];
  v33 = a2[2];
  v34 = v8;
  v10 = a2[3];
  v35 = a2[4];
  v11 = a2[1];
  v31 = *a2;
  v32 = v11;
  v39 = v33;
  v40 = v10;
  v41 = a2[4];
  v12 = *a1;
  v36 = *(a2 + 20);
  LODWORD(v42) = *(a2 + 20);
  v37 = v31;
  v38 = v9;
  _ViewInputs.makeIndirectOutputs()(v28);
  *&v30[36] = v33;
  *&v30[52] = v34;
  *&v30[68] = v35;
  *&v30[84] = v36;
  *&v30[4] = v31;
  *&v30[20] = v32;
  *&v28[36] = *&v30[32];
  *&v28[52] = *&v30[48];
  *&v28[68] = *&v30[64];
  *&v28[20] = *&v30[16];
  v13 = *v28;
  v15 = *&v28[8];
  v14 = *&v28[12];
  *v28 = v12;
  *&v28[84] = *&v30[80];
  *&v28[4] = *v30;
  *&v29 = v13;
  *(&v29 + 1) = __PAIR64__(v14, v15);
  v17 = type metadata accessor for _DetachedPlaceholder.Stub(0, a3, a4, v16);
  v26 = v17;
  swift_getWitnessTable(protocol conformance descriptor for _DetachedPlaceholder<A>.Stub, v17);
  v27 = v18;
  outlined init with copy of _ViewInputs(&v31, &v37);
  type metadata accessor for SwitchRule<ViewTransform>(0, &lazy cache variable for type metadata for Attribute<()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E698D388]);
  v20 = v19;

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v28, partial apply for closure #1 in Attribute.init<A>(_:), v25, v17, MEMORY[0x1E69E73E0], v20, MEMORY[0x1E69E7410], v21);
  v41 = *&v28[64];
  v42 = *&v28[80];
  v43 = v29;
  v37 = *v28;
  v38 = *&v28[16];
  v39 = *&v28[32];
  v40 = *&v28[48];
  result = (*(*(v17 - 8) + 8))(&v37, v17);
  v23 = *(v13 + 16);
  if (v23)
  {
    v24 = v13 + 48;
    do
    {
      v24 += 24;
      result = AGGraphSetIndirectDependency();
      --v23;
    }

    while (v23);
  }

  if (v14 != *MEMORY[0x1E698D3F8])
  {
    result = AGGraphSetIndirectDependency();
  }

  *a5 = v13;
  *(a5 + 8) = v15;
  *(a5 + 12) = v14;
  return result;
}

uint64_t _DetachedPlaceholder.Stub.view.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v4 = type metadata accessor for _DetachedPlaceholder(0, *(a1 + 16), *(a1 + 24), a3);
  Value = AGGraphGetValue();
  v6 = *Value;
  v7 = *(Value + 16);
  v18[2] = *(Value + 32);
  v18[0] = v6;
  v18[1] = v7;
  v8 = *(Value + 48);
  v9 = *(Value + 64);
  v10 = *(Value + 80);
  v19 = *(Value + 96);
  v18[4] = v9;
  v18[5] = v10;
  v18[3] = v8;
  v11 = *(Value + 16);
  *a2 = *Value;
  *(a2 + 16) = v11;
  v12 = *(Value + 32);
  v13 = *(Value + 48);
  v14 = *(Value + 64);
  v15 = *(Value + 80);
  *(a2 + 96) = *(Value + 96);
  *(a2 + 64) = v14;
  *(a2 + 80) = v15;
  *(a2 + 32) = v12;
  *(a2 + 48) = v13;
  return (*(*(v4 - 8) + 16))(v17, v18, v4);
}

uint64_t _DetachedPlaceholder.Stub.updateValue()(uint64_t a1)
{
  result = AGGraphGetOutputValue();
  if (!result)
  {
    v5 = v1[5];
    v27 = v1[4];
    v28 = v5;
    v29 = v1[6];
    v6 = v1[1];
    v23 = *v1;
    v24 = v6;
    v7 = v1[3];
    v25 = v1[2];
    v26 = v7;
    _DetachedPlaceholder.Stub.view.getter(a1, v21, v4);
    v8 = *(v1 + 56);
    v30[2] = *(v1 + 40);
    v30[3] = v8;
    v30[4] = *(v1 + 72);
    v31 = *(v1 + 22);
    v9 = *(v1 + 24);
    v30[0] = *(v1 + 8);
    v30[1] = v9;
    v10 = *(v1 + 56);
    v17 = *(v1 + 40);
    v18 = v10;
    v19 = *(v1 + 72);
    v20 = *(v1 + 22);
    v11 = *(v1 + 24);
    v15 = *(v1 + 8);
    v16 = v11;
    v14[0] = *(v1 + 12);
    v14[1] = *(v1 + 13);
    outlined init with copy of _ViewInputs(v30, v34);
    v13 = type metadata accessor for _DetachedPlaceholder(0, *(a1 + 16), *(a1 + 24), v12);

    _DetachedPlaceholder.attach(inputs:outputs:)(&v15, v14, v13);

    v32[2] = v17;
    v32[3] = v18;
    v32[4] = v19;
    v33 = v20;
    v32[0] = v15;
    v32[1] = v16;
    outlined destroy of _ViewInputs(v32);
    v34[4] = v21[4];
    v34[5] = v21[5];
    v35 = v22;
    v34[0] = v21[0];
    v34[1] = v21[1];
    v34[2] = v21[2];
    v34[3] = v21[3];
    return (*(*(v13 - 8) + 8))(v34, v13);
  }

  return result;
}

double _DetachedPlaceholder.attach(inputs:outputs:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a2 + 3);
  v25 = *(a2 + 2);
  v6 = *(v3 + 88);
  v7 = *(v3 + 100);
  v24 = *(v3 + 96);
  v8 = (*(*(a3 + 24) + 16))(v30);
  v9 = v30[0];
  if (v30[0])
  {
    if ((v30[0] & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](v8);
    type metadata accessor for SwitchRule<ViewTransform>(0, &lazy cache variable for type metadata for SwitchRule<ViewTransform>, &type metadata for ViewTransform, type metadata accessor for SwitchRule);
    MEMORY[0x1EEE9AC00](v16);
    v17 = AGGraphMutateAttribute();
    MEMORY[0x1EEE9AC00](v17);
    type metadata accessor for SwitchRule<CGPoint>(0, &lazy cache variable for type metadata for SwitchRule<CGPoint>, type metadata accessor for CGPoint, type metadata accessor for SwitchRule);
    MEMORY[0x1EEE9AC00](v18);
    v19 = AGGraphMutateAttribute();
    MEMORY[0x1EEE9AC00](v19);
    MEMORY[0x1EEE9AC00](v20);
    v8 = AGGraphMutateAttribute();
    if ((v9 & 2) != 0)
    {
LABEL_3:
      if ((v9 & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  type metadata accessor for SwitchRule<ViewTransform>(0, &lazy cache variable for type metadata for SwitchRule<ViewSize>, &type metadata for ViewSize, type metadata accessor for SwitchRule);
  MEMORY[0x1EEE9AC00](v21);
  v8 = AGGraphMutateAttribute();
  if ((v9 & 4) != 0)
  {
LABEL_4:
    if ((v9 & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_17:
  swift_beginAccess();
  v22 = swift_beginAccess();
  MEMORY[0x1EEE9AC00](v22);
  type metadata accessor for SwitchRule<ViewTransform>(0, &lazy cache variable for type metadata for SwitchRule<EnvironmentValues>, &type metadata for EnvironmentValues, type metadata accessor for SwitchRule);
  MEMORY[0x1EEE9AC00](v23);
  v8 = AGGraphMutateAttribute();
  if ((v9 & 8) == 0)
  {
LABEL_5:
    MEMORY[0x1EEE9AC00](v8);
    type metadata accessor for SwitchRule<ViewTransform>(0, &lazy cache variable for type metadata for SwitchRule<Transaction>, &type metadata for Transaction, type metadata accessor for SwitchRule);
    MEMORY[0x1EEE9AC00](v10);
    v8 = AGGraphMutateAttribute();
  }

LABEL_6:
  MEMORY[0x1EEE9AC00](v8);
  type metadata accessor for SwitchRule<ViewTransform>(0, &lazy cache variable for type metadata for SwitchRule<PreferenceKeys>, &type metadata for PreferenceKeys, type metadata accessor for SwitchRule);
  MEMORY[0x1EEE9AC00](v11);
  AGGraphMutateAttribute();
  v12 = *(v4 + 16);
  v13 = *MEMORY[0x1E698D3F8];
  if (v12)
  {
    v14 = v4 + 48;
    do
    {
      v14 += 24;
      AGGraphSetIndirectDependency();
      --v12;
    }

    while (v12);
  }

  if (v5 != v13)
  {
    AGGraphSetIndirectDependency();
  }

  v28 = v4;
  v29 = v25;
  v26 = v6;
  v27 = v24;
  swift_bridgeObjectRetain_n();

  PreferencesOutputs.attachIndirectOutputs(to:)(&v26);

  if (v5 != v13 && v7 != v13)
  {
    AGGraphSetIndirectAttribute();
  }

  return result;
}

uint64_t SwitchRule.weakValue.getter@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v11 = *(a3 - 8);
    (*(v11 + 16))(a4, WeakValue, a3);
    v7 = v11;
    v8 = 0;
  }

  else
  {
    v7 = *(a3 - 8);
    v8 = 1;
  }

  v9 = *(v7 + 56);

  return v9(a4, v8, 1, a3);
}

uint64_t SwitchRule.value.getter@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - v8;
  SwitchRule.weakValue.getter(a3, &v14 - v8);
  v10 = *(a3 - 8);
  v11 = *(v10 + 48);
  if (v11(v9, 1, a3) != 1)
  {
    return (*(v10 + 32))(a4, v9, a3);
  }

  Value = AGGraphGetValue();
  (*(v10 + 16))(a4, Value, a3);
  result = (v11)(v9, 1, a3);
  if (result != 1)
  {
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance SwitchRule<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for SwitchRule<A>, a1);

  return static AsyncAttribute.flags.getter();
}

void lazy protocol witness table accessor for type SwitchRule<CGPoint> and conformance SwitchRule<A>()
{
  if (!lazy protocol witness table cache variable for type SwitchRule<CGPoint> and conformance SwitchRule<A>)
  {
    type metadata accessor for SwitchRule<CGPoint>(255, &lazy cache variable for type metadata for SwitchRule<CGPoint>, type metadata accessor for CGPoint, type metadata accessor for SwitchRule);
    swift_getWitnessTable(protocol conformance descriptor for SwitchRule<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type SwitchRule<CGPoint> and conformance SwitchRule<A>);
  }
}

void lazy protocol witness table accessor for type SwitchRule<ViewTransform> and conformance SwitchRule<A>(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  if (!*a1)
  {
    type metadata accessor for SwitchRule<ViewTransform>(255, a2, a3, type metadata accessor for SwitchRule);
    swift_getWitnessTable(protocol conformance descriptor for SwitchRule<A>, v4);
    atomic_store(v5, a1);
  }
}

uint64_t partial apply for closure #1 in static _DetachedPlaceholder._makeView(view:inputs:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v6;
  v9[4] = *(a1 + 64);
  v10 = *(a1 + 80);
  v7 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v7;
  v11 = v5;
  return static _DetachedPlaceholder.makeStub(view:inputs:)(&v11, v9, v3, v4, a2);
}

void lazy protocol witness table accessor for type _DetachableProperties and conformance _DetachableProperties()
{
  if (!lazy protocol witness table cache variable for type _DetachableProperties and conformance _DetachableProperties)
  {
    swift_getWitnessTable(protocol conformance descriptor for _DetachableProperties, &type metadata for _DetachableProperties, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _DetachableProperties and conformance _DetachableProperties);
  }
}

{
  if (!lazy protocol witness table cache variable for type _DetachableProperties and conformance _DetachableProperties)
  {
    swift_getWitnessTable(protocol conformance descriptor for _DetachableProperties, &type metadata for _DetachableProperties, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _DetachableProperties and conformance _DetachableProperties);
  }
}

{
  if (!lazy protocol witness table cache variable for type _DetachableProperties and conformance _DetachableProperties)
  {
    swift_getWitnessTable(protocol conformance descriptor for _DetachableProperties, &type metadata for _DetachableProperties, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _DetachableProperties and conformance _DetachableProperties);
  }
}

{
  if (!lazy protocol witness table cache variable for type _DetachableProperties and conformance _DetachableProperties)
  {
    swift_getWitnessTable(protocol conformance descriptor for _DetachableProperties, &type metadata for _DetachableProperties, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _DetachableProperties and conformance _DetachableProperties);
  }
}

uint64_t type metadata completion function for _DetachedView(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

double destroy for _DetachedPlaceholder(void *a1)
{

  return result;
}

uint64_t initializeWithCopy for _DetachedPlaceholder(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 3);
  v3 = a2[6];
  *(a1 + 40) = a2[5];
  *(a1 + 48) = v3;
  *(a1 + 56) = *(a2 + 7);
  *(a1 + 72) = a2[9];
  *(a1 + 80) = *(a2 + 20);
  *(a1 + 88) = a2[11];
  *(a1 + 96) = a2[12];

  return a1;
}

uint64_t *assignWithCopy for _DetachedPlaceholder(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 2) = *(a2 + 2);
  a1[2] = a2[2];

  *(a1 + 6) = *(a2 + 6);
  *(a1 + 7) = *(a2 + 7);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  a1[5] = a2[5];

  a1[6] = a2[6];

  *(a1 + 14) = *(a2 + 14);
  *(a1 + 15) = *(a2 + 15);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 19) = *(a2 + 19);
  *(a1 + 20) = *(a2 + 20);
  a1[11] = a2[11];

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  return a1;
}

uint64_t *assignWithTake for _DetachedPlaceholder(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 2) = *(a2 + 2);
  a1[2] = a2[2];

  *(a1 + 3) = *(a2 + 3);

  *(a1 + 5) = *(a2 + 5);

  *(a1 + 7) = *(a2 + 7);
  a1[9] = a2[9];
  *(a1 + 20) = *(a2 + 20);
  a1[11] = a2[11];

  a1[12] = a2[12];
  return a1;
}

uint64_t getEnumTagSinglePayload for _DetachedPlaceholder(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t storeEnumTagSinglePayload for _DetachedPlaceholder(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for SwitchRule<CGPoint>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t specialized SwitchRule.description.getter(uint64_t a1)
{
  v1 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v1);

  return 547916002;
}

void type metadata accessor for SwitchRule<ViewTransform>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t partial apply for specialized closure #1 in Attribute.setSwitchValue(_:)(uint64_t a1)
{
  result = AGCreateWeakAttribute();
  *(a1 + 4) = result;
  return result;
}

void DisplayList.GraphicsRenderer.drawPlatformLayer(_:in:size:update:)(id a1, uint64_t a2, char a3, double a4, CGFloat a5)
{
  if (a3)
  {
    [a1 setBounds_];
    [a1 layoutIfNeeded];
  }

  v8 = a1;
  specialized GraphicsContext.drawLayer(flags:content:)(0, a2, v8, a5);
}

void specialized ShapeLayerShadowHelper.visitPaint<A>(_:)(float a1, float a2, float a3, float a4)
{
  v5 = v4;
  v87 = *MEMORY[0x1E69E9840];
  v52 = *(v4 + 2);
  v54 = *(v4 + 1);
  v68[0] = v54;
  v68[1] = v52;
  v69 = *(v4 + 48);
  v10 = v69;
  v70[0] = v54;
  v70[1] = v52;
  v71 = v69;
  outlined init with copy of Path.Storage(v70, v78);
  ShapeType.init(_:)(v68, &v72);
  v78[0] = a1;
  v78[1] = a2;
  v78[2] = a3;
  v78[3] = a4;
  v79 = 2143289344;
  v80 = 0;
  v83 = v74;
  v84 = v75;
  v85 = v76;
  v86 = v77;
  v81 = v72;
  v82 = v73;
  if (!v77)
  {
    v26 = *v4;
    v12 = *(v4 + 1);
    v27 = v4[20];
    v28 = v4[22];
    v29 = *(v4 + 12);
    v30 = *(v4 + 13);
    v31 = *(v4 + 14);
    *&v32 = *(v4 + 21) * a4;
    v33 = (*(v4 + 124) >> 4) & 1;
    v34 = *(v5 + 9);
    [*(v5 + 1) setShadowPathIsBounds_];
    [v12 setShadowPath_];
    [v12 setPunchoutShadow_];
    v61.a = v34;
    *&v61.b = __PAIR64__(v32, v27);
    LODWORD(v61.c) = v28;
    LOBYTE(v66[0]) = v26 & 3;
    v35 = CoreViewLayerView(v26 & 3, v12, v66);
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    v36 = LOBYTE(v66[0]);
    __swift_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
    v37 = _bridgeAnythingToObjectiveC<A>(_:)();
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v38 = specialized ObjectCache.subscript.getter(&v61);
    CoreViewSetShadow(v36, v37, v38, v29, v30, v31);
    outlined destroy of (PaintType, ShapeType)(v78, &lazy cache variable for type metadata for (PaintType, ShapeType), &type metadata for PaintType, &type metadata for ShapeType, type metadata accessor for (Path, FillStyle));
    swift_unknownObjectRelease();

    goto LABEL_15;
  }

  if (v77 == 3)
  {
    v11 = vorrq_s8(vorrq_s8(v73, v75), vorrq_s8(v74, v76));
    if (!(*&vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL)) | *(&v72 + 1) | v72))
    {
      v12 = *(v4 + 1);
      v45 = *v4 & 3;
      LOBYTE(v61.a) = *v4 & 3;
      v46 = CoreViewLayerView(v45, v12, &v61);
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      a_low = LOBYTE(v61.a);
      __swift_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
      v48 = _bridgeAnythingToObjectiveC<A>(_:)();
      CoreViewSetShadow(a_low, v48, 0, 0.0, 0.0, 0.0);
      outlined destroy of (PaintType, ShapeType)(v78, &lazy cache variable for type metadata for (PaintType, ShapeType), &type metadata for PaintType, &type metadata for ShapeType, type metadata accessor for (Path, FillStyle));
      swift_unknownObjectRelease();
LABEL_15:
      v44 = &v63;
      goto LABEL_16;
    }
  }

  v13 = *v4;
  v12 = *(v4 + 1);
  v14 = *(v4 + 8);
  v15 = *(v4 + 9);
  v16 = v4[20];
  v17 = *(v4 + 21);
  v18 = v4[22];
  v19 = *(v4 + 12);
  v20 = *(v4 + 13);
  v21 = *(v4 + 14);
  v22 = *(v4 + 7);
  v23 = *(v4 + 124);
  if (v22 == 0.0 && v14 == 0.0)
  {
    outlined init with copy of Path(v68, &v63);
    outlined init with copy of ShapeType(&v72, &v63);
    v25 = v52;
    v24 = v54;
  }

  else
  {
    CGAffineTransformMakeTranslation(&v61, -v22, -v14);
    outlined init with copy of ShapeType(&v72, &v63);
    Path.applying(_:)(&v61.a, v66);
    v25 = v66[1];
    v24 = v66[0];
    v10 = v67;
  }

  v53 = v25;
  v55 = v24;
  v63 = v24;
  v64 = v25;
  v65 = v10;
  v39 = Path.cgPath.getter();
  [v12 setShadowPath_];

  [v12 setPunchoutShadow_];
  outlined consume of Path.Storage(v55, *(&v55 + 1), v53, *(&v53 + 1), v10);
  v57 = v15;
  v58 = v16;
  v59 = v17 * a4;
  v60 = v18;
  v56 = v13 & 3;
  v40 = CoreViewLayerView(v13 & 3, v12, &v56);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v41 = v56;
  __swift_project_boxed_opaque_existential_1(v62, v62[3]);
  v42 = _bridgeAnythingToObjectiveC<A>(_:)();
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v43 = specialized ObjectCache.subscript.getter(&v57);
  CoreViewSetShadow(v41, v42, v43, v19, v20, v21);
  outlined destroy of (PaintType, ShapeType)(v78, &lazy cache variable for type metadata for (PaintType, ShapeType), &type metadata for PaintType, &type metadata for ShapeType, type metadata accessor for (Path, FillStyle));
  swift_unknownObjectRelease();

  v44 = v62;
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v44);
  if (*(v5 + 125) != 1)
  {
LABEL_19:
    outlined destroy of ShapeType(&v72);
    return;
  }

  if (v77)
  {
    [v12 setCornerRadius_];
    goto LABEL_19;
  }

  v49 = v74.i8[8];
  [v12 setCornerRadius_];
  v50 = MEMORY[0x1E69796E8];
  if ((v49 & 1) == 0)
  {
    v50 = MEMORY[0x1E69796E0];
  }

  v51 = *v50;
  [v12 setCornerCurve_];
}

void *DisplayList.ViewUpdater.Platform.init(definition:)@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = (*(a1 + 80))(&v5);
  *a2 = v5 | a1;
  return result;
}

Swift::Int PlatformViewDefinition.System.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int PlatformViewDefinition.ViewKind.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t static PlatformViewDefinition.canSupportMixedHierarchy(system:)(_BYTE *a1)
{
  if (*a1 != 1)
  {
    return 0;
  }

  if (one-time initialization token for v7 != -1)
  {
    swift_once();
  }

  v1 = static Semantics.v7;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    return dyld_program_sdk_at_least();
  }

  else
  {
    return static Semantics.forced >= v1;
  }
}

BOOL DisplayList.ViewUpdater.Platform.updateStateAsync(layer:oldItem:oldSize:oldState:newItem:newSize:newState:)(unint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, CGFloat width, CGFloat height)
{
  v12 = a2[1];
  v144 = *a2;
  v145 = v12;
  v13 = *(a2 + 4);
  v14 = *(a2 + 56);
  v141 = *(a2 + 40);
  v142 = v14;
  v143 = *(a2 + 18);
  v15 = *(a4 + 16);
  v149 = *a4;
  v150 = v15;
  v16 = *(a4 + 32);
  v17 = *(a4 + 40);
  v18 = *(a4 + 56);
  v148 = *(a4 + 72);
  v146 = v17;
  v147 = v18;
  if (*(a5 + 104) != *(a3 + 104))
  {
    return 0;
  }

  v24 = *v9;
  v25 = *(a5 + 8);
  if (v25 != *(a3 + 8))
  {
    _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE7OpacityO_Tt0g5(v25);
  }

  if (*(a5 + 136) != *(a3 + 136))
  {
    return 0;
  }

  if (*(a5 + 160) != *(a3 + 160))
  {
    v80 = v16;
    *&v131 = *(a3 + 88);
    *&v121 = *(a5 + 88);
    if (*(a1 + 16) == 9)
    {

      v78 = specialized Array<A>.popColorMultiply(drawable:)(&v131, a1);
      v27 = v26;
      v29 = v28;

      v30 = specialized Array<A>.popColorMultiply(drawable:)(&v121, a1);
      v32 = v31;
      v34 = v33;

      if ((v34 & 0x100000000) == 0 || (v29 & 0x100000000) == 0)
      {
        _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV6update_4from2toyxm_5ValueQzALtAA01_cd1_ef1_gH8PropertyRzSQALRQlFAE21ContentsMultiplyColorO_Ttg5(v78, v27, v29 | ((HIDWORD(v29) & 1) << 32), v30, v32, v34 | ((HIDWORD(v34) & 1) << 32));
      }
    }

    v35 = *(a3 + 88);
    v36 = *(a5 + 88);

    specialized static GraphicsFilter.updateAsync(layer:oldFilters:newFilters:)(a1, v35, v36);
    v38 = v37;

    v16 = v80;
    if ((v38 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a5 + 152) != *(a3 + 152) || *(a5 + 144) != *(a3 + 144))
  {
    *&v131 = v24;
    if ((DisplayList.ViewUpdater.Platform.updateClipShapesAsync(layer:oldState:newState:)(a1, a3, a5) & 1) == 0)
    {
      return 0;
    }
  }

  v79 = *(a3 + 64);
  v81 = *(a5 + 64);
  origin = 0;
  v40 = *(a1 + 17);
  if ((v40 & 8) != 0)
  {
    v44 = *(a3 + 144);
    v45 = *(a3 + 112);
    v127 = *(a3 + 128);
    v128 = v44;
    v46 = *(a3 + 144);
    v129 = *(a3 + 160);
    v47 = *(a3 + 80);
    v48 = *(a3 + 48);
    *&v123[32] = *(a3 + 64);
    v124 = v47;
    v49 = *(a3 + 80);
    v50 = *(a3 + 112);
    v125 = *(a3 + 96);
    v126 = v50;
    v51 = *(a3 + 16);
    v121 = *a3;
    v122 = v51;
    v52 = *(a3 + 48);
    v54 = *a3;
    v53 = *(a3 + 16);
    *v123 = *(a3 + 32);
    *&v123[16] = v52;
    v116 = v127;
    v117 = v46;
    v118 = *(a3 + 160);
    v112 = *&v123[32];
    v113 = v49;
    v114 = v125;
    v115 = v45;
    v108 = v54;
    v109 = v53;
    v130 = *(a3 + 176);
    v119 = *(a3 + 176);
    v110 = *v123;
    v111 = v48;
    DisplayList.ViewUpdater.Model.State.clipRect()(&v120);
    v137 = v116;
    v138 = v117;
    v139 = v118;
    v140 = v119;
    *&v133[32] = v112;
    v134 = v113;
    v135 = v114;
    v136 = v115;
    v131 = v108;
    v132 = v109;
    *v133 = v110;
    *&v133[16] = v111;
    outlined init with copy of DisplayList.ViewUpdater.Model.State(&v121, &v96);
    outlined destroy of DisplayList.ViewUpdater.Model.State(&v131);
    if (v120.value.style == SwiftUI_RoundedCornerStyle_unknownDefault || (v55 = *(a5 + 144), v56 = *(a5 + 112), v104 = *(a5 + 128), v105 = v55, v57 = *(a5 + 144), v106 = *(a5 + 160), v58 = *(a5 + 80), v59 = *(a5 + 48), v100 = *(a5 + 64), v101 = v58, v60 = *(a5 + 80), v61 = *(a5 + 112), v102 = *(a5 + 96), v103 = v61, v62 = *(a5 + 16), v96 = *a5, v97 = v62, v63 = *(a5 + 48), v65 = *a5, v64 = *(a5 + 16), v98 = *(a5 + 32), v99 = v63, v91 = v104, v92 = v57, v93 = *(a5 + 160), v87 = v100, v88 = v60, v89 = v102, v90 = v56, v66 = v120.value.rect.size.height, v67 = v120.value.rect.size.width, v83 = v65, v84 = v64, v76 = v120.value.rect.origin, v107 = *(a5 + 176), v94 = *(a5 + 176), v85 = v98, v86 = v59, DisplayList.ViewUpdater.Model.State.clipRect()(&v95), v116 = v91, v117 = v92, v118 = v93, v119 = v94, v112 = v87, v113 = v88, v114 = v89, v115 = v90, v108 = v83, v109 = v84, v110 = v85, v111 = v86, outlined init with copy of DisplayList.ViewUpdater.Model.State(&v96, v82), outlined destroy of DisplayList.ViewUpdater.Model.State(&v108), v95.value.style == SwiftUI_RoundedCornerStyle_unknownDefault))
    {
      v41 = a6;
      v42 = a7;
      v43 = 0;
      origin = 0;
    }

    else
    {
      width = v95.value.rect.size.width;
      height = v95.value.rect.size.height;
      origin = v95.value.rect.origin;
      v43 = v76;
      v79 = vaddq_f64(v79, v76);
      v81 = vaddq_f64(v81, v95.value.rect.origin);
      v41 = v67;
      v42 = v66;
    }
  }

  else
  {
    v41 = a6;
    v42 = a7;
    v43 = 0;
  }

  y = origin.y;
  v69 = v43.y;
  x = origin.x;
  v151.origin.x = origin.x;
  v151.origin.y = origin.y;
  v151.size.width = width;
  v151.size.height = height;
  v70 = CGRectEqualToRect(v151, *&v43.x);
  if (v70)
  {
    if ((v40 & 4) != 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (*(a1 + 16) - 15 < 3)
    {
      return 0;
    }

    _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE6BoundsO_Tt0g5(x, y, width, height);
    if (*(a1 + 16) == 14)
    {
      _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV12setMaskValue_3fory0K0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE6BoundsO_Tt0g5(x, y, width, height);
    }

    if ((v40 & 4) != 0)
    {
      goto LABEL_32;
    }
  }

  v71 = v79;
  if (v81.f64[0] != v79.f64[0] || (v71.n128_u64[0] = *&v79.f64[1], v81.f64[1] != v79.f64[1]))
  {
    _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE8PositionO_Tt0g5(v81, v81.f64[1], v71);
  }

  v72 = *(a3 + 48);
  v108 = *(a3 + 32);
  v109 = v72;
  v110 = 0uLL;
  v73 = *(a5 + 48);
  v96 = *(a5 + 32);
  v97 = v73;
  v98 = 0uLL;
  if (static CGAffineTransform.== infix(_:_:)())
  {
    if (!v70)
    {
LABEL_32:
      v74 = 1;
      goto LABEL_36;
    }
  }

  else
  {
    _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE15AffineTransformO_Tt0g5(&v96);
    if (!v70)
    {
      goto LABEL_32;
    }
  }

LABEL_34:
  v74 = 0;
  if (*(a5 + 168) == *(a3 + 168) && v16 == v13)
  {
    return 1;
  }

LABEL_36:
  v131 = v144;
  v132 = v145;
  *&v133[8] = v141;
  *&v133[24] = v142;
  v121 = v149;
  v122 = v150;
  *&v123[8] = v146;
  *&v83 = v24;
  *v133 = v13;
  *&v133[40] = v143;
  *v123 = v16;
  *&v123[24] = v147;
  *&v123[40] = v148;
  return (DisplayList.ViewUpdater.Platform.updateShadowAsync(layer:oldState:oldItem:newState:newItem:boundsChanged:)(a1, a3, &v131, a5, &v121, v74) & 1) != 0;
}

void *DisplayList.ViewUpdater.Platform.missingPlatformView()()
{
  v1 = *v0;
  if (one-time initialization token for defaultFlags != -1)
  {
    swift_once();
  }

  LODWORD(v7) = -1;
  WORD2(v7) = 768;
  LODWORD(v8) = static RasterizationOptions.Flags.defaultFlags;
  BYTE4(v8) = 3;
  v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 120))(&v7);
  v4 = v3;
  ObjectType = swift_getObjectType();
  CoreViewSetClipsToBounds(v1 & 3, v2, 0, 0);
  v7 = closure #1 in DisplayList.ViewUpdater.Platform.missingPlatformView();
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  (*(v4 + 40))(&v7, 0, ObjectType, v4);
  outlined consume of PlatformDrawableContent?(v7, v8, *(&v8 + 1), v9, *(&v9 + 1), v10);
  return v2;
}

CGAffineTransform *DisplayList.ViewUpdater.Platform.updateSDFShapeViewAsync(_:oldState:oldShape:newState:newShape:contentsChanged:)(uint64_t a1, _OWORD *a2, double *a3, void *a4, __int128 *a5, char a6)
{
  v8 = a4;
  v9 = a2;
  v10 = *a3;
  v11 = a3[1];
  v12 = a5[1];
  v75 = *a5;
  v76 = v12;
  v77 = a5[2];
  v78 = *(a5 + 6);
  if ((a6 & 1) == 0)
  {
LABEL_27:
    v50 = v9[3];
    *&v68.a = v9[2];
    *&v68.c = v50;
    *&v68.tx = v9[4];
    CGAffineTransformTranslate(&v70, &v68, -v10, -v11);
    v51 = *&v70.c;
    v52 = *&v70.tx;
    v9[2] = *&v70.a;
    v9[3] = v51;
    v9[4] = v52;
    v53 = v8[3];
    *&v68.a = v8[2];
    *&v68.c = v53;
    *&v68.tx = v8[4];
    result = CGAffineTransformTranslate(&v70, &v68, -*&v75, -*(&v75 + 1));
    v55 = *&v70.c;
    v56 = *&v70.tx;
    v8[2] = *&v70.a;
    v8[3] = v55;
    v8[4] = v56;
    return result;
  }

  v61 = v11;
  v62 = v10;
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v17 = *(v76 + 16);
  if (!v17)
  {
LABEL_21:
    v82.origin.x = x;
    v82.origin.y = y;
    v82.size.width = width;
    v82.size.height = height;
    if (CGRectIsNull(v82))
    {
      x = 0.0;
      y = 0.0;
      width = 0.0;
      height = 0.0;
    }

    v37 = *a1;
    type metadata accessor for SDFLayer();
    v38 = swift_dynamicCastClassUnconditional();
    v8 = a4;
    v39 = *(*a4 + 24);
    v40 = a4[14];
    *&v71 = x;
    *(&v71 + 1) = y;
    v74 = *(a5 + 6);
    v41 = a5[2];
    v72 = a5[1];
    v73 = v41;
    v42 = swift_allocObject();
    *(v42 + 24) = v71;
    v43 = v73;
    *(v42 + 40) = v72;
    *(v42 + 16) = v38;
    *(v42 + 56) = v43;
    *(v42 + 72) = v74;
    *(v42 + 80) = x;
    *(v42 + 88) = y;
    *(v42 + 96) = width;
    *(v42 + 104) = height;
    *(v42 + 112) = v39;
    *(v42 + 120) = v40;
    v18 = *(a1 + 8);
    v17 = swift_allocObject();
    *(v17 + 16) = closure #1 in DisplayList.ViewUpdater.Platform.updateSDFShapeViewAsync(_:oldState:oldShape:newState:newShape:contentsChanged:)specialized partial apply;
    *(v17 + 24) = v42;
    v7 = *(v18 + 7);
    v6 = v37;
    outlined init with copy of SDFShape(&v75, &v68);
    outlined copy of BackdropGroupID?(v40);
    outlined init with copy of SDFShape(&v71, &v68);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v18 + 7) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_29:
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
      *(v18 + 7) = v7;
    }

    v11 = v61;
    v10 = v62;
    v46 = v7[2];
    v45 = v7[3];
    if (v46 >= v45 >> 1)
    {
      *(v18 + 7) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v7);
    }

    v68.a = x;
    v68.b = y;
    v47 = a5[2];
    *&v68.c = a5[1];
    *&v68.tx = v47;
    v69 = *(a5 + 6);
    outlined destroy of SDFShape(&v68);
    v48 = *(v18 + 7);
    *(v48 + 16) = v46 + 1;
    v49 = v48 + 16 * v46;
    *(v49 + 32) = thunk for @callee_guaranteed () -> ()partial apply;
    *(v49 + 40) = v17;
    v9 = a2;
    goto LABEL_27;
  }

  v8 = 0;
  v18 = (v76 + 64);
  v64 = *(MEMORY[0x1E695F050] + 24);
  v65 = *(MEMORY[0x1E695F050] + 16);
  v66 = *(MEMORY[0x1E695F050] + 8);
  v67 = *MEMORY[0x1E695F050];
  v57 = *(v76 + 16);
  while (1)
  {
    if (v8 >= *(v76 + 16))
    {
      __break(1u);
      goto LABEL_29;
    }

    v23 = *(v18 - 4);
    v6 = *(v18 - 3);
    v24 = *(v18 - 2);
    v7 = *(v18 - 1);
    v25 = *v18;
    if (v25 > 2)
    {
      break;
    }

    if (v25 >= 2)
    {
      v26 = v23[2];
      v27 = v23[3];
      v28 = v23[4];
      v29 = v23[5];
      outlined copy of Path.Storage(*(v18 - 4), *(v18 - 3), *(v18 - 2), *(v18 - 1), 2u);
LABEL_18:
      v22 = v29;
      v21 = v28;
      v20 = v27;
      v19 = v26;
      goto LABEL_5;
    }

    v19 = *(v18 - 4);
    v20 = *(v18 - 3);
    v21 = *(v18 - 2);
    v22 = *(v18 - 1);
LABEL_5:
    v8 = (v8 + 1);
    v79.origin.x = x;
    v79.origin.y = y;
    v79.size.width = width;
    v79.size.height = height;
    v80 = CGRectUnion(v79, *&v19);
    x = v80.origin.x;
    y = v80.origin.y;
    width = v80.size.width;
    height = v80.size.height;
    outlined consume of Path.Storage(v23, v6, v24, v7, v25);
    v18 += 56;
    if (v17 == v8)
    {
      goto LABEL_21;
    }
  }

  if (v25 != 5)
  {
    v20 = v66;
    v19 = v67;
    v22 = v64;
    v21 = v65;
    if (v25 != 6)
    {
      goto LABEL_31;
    }

    goto LABEL_5;
  }

  if (*(v23 + 16))
  {
    if (*(v23 + 16) == 1)
    {
      outlined copy of Path.Storage(*(v18 - 4), *(v18 - 3), *(v18 - 2), *(v18 - 1), 5u);
      v17 = v57;
      RBPathGetBoundingRect();
    }

    else
    {
      v36 = outlined copy of Path.Storage(*(v18 - 4), *(v18 - 3), *(v18 - 2), *(v18 - 1), 5u);
      v30 = MEMORY[0x193AC3640](v23 + 3, v36);
    }

    v19 = v30;
    v20 = v31;
    v21 = v32;
    v22 = v33;
    goto LABEL_5;
  }

  v34 = *(v23 + 3);
  if (v34)
  {
    v35 = v34;
    outlined copy of Path.Storage(v23, v6, v24, v7, 5u);
    outlined copy of Path.Storage(v23, v6, v24, v7, 5u);
    PathBoundingBox = CGPathGetPathBoundingBox(v35);
    v26 = PathBoundingBox.origin.x;
    v27 = PathBoundingBox.origin.y;
    v28 = PathBoundingBox.size.width;
    v29 = PathBoundingBox.size.height;

    outlined consume of Path.Storage(v23, v6, v24, v7, 5u);
    goto LABEL_18;
  }

  __break(1u);
LABEL_31:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in DisplayList.ViewUpdater.Platform.updateSDFShapeViewAsync(_:oldState:oldShape:newState:newShape:contentsChanged:)(uint64_t a1, __int128 *a2, uint64_t a3, double a4, double a5, CGFloat a6, CGFloat a7, double a8)
{
  v21 = *(a2 + 6);
  v13 = *(a1 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_backdropObserver);
  *(a1 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_backdropObserver) = v21;
  outlined init with copy of SDFShape.BackdropObserver?(&v21, v22);
  SDFLayer.backdropObserver.didset(v13);

  v14 = a2[1];
  v17 = *a2;
  v18 = v14;
  v19 = a2[2];
  v20 = *(a2 + 6);
  v16 = a8;
  outlined init with copy of SDFShape(a2, v22);
  SDFLayer.update(shape:size:in:backdropGroupID:)(&v17, &v16, a3, a6, a7);
  v22[0] = v17;
  v22[1] = v18;
  v22[2] = v19;
  v23 = v20;
  return outlined destroy of SDFShape(v22);
}

uint64_t specialized Array<A>.popColorMultiply(drawable:)(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (!v3)
  {
    goto LABEL_11;
  }

  memmove(__dst, (v2 + (v3 << 7) - 96), 0x7CuLL);
  if (_s7SwiftUI14GraphicsFilterOWOg(__dst) != 7)
  {
    goto LABEL_11;
  }

  v6 = *_s7SwiftUI14GraphicsFilterOWOj6_(__dst);
  v7 = *a2;
  if (![v7 delegate])
  {

    goto LABEL_11;
  }

  swift_getObjectType();
  v8 = swift_conformsToProtocol2();

  if (!v8)
  {
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  swift_getObjectType();
  v9 = (*(v8 + 32))();
  result = swift_unknownObjectRelease();
  if ((v9 & 1) == 0)
  {
LABEL_11:
    result = 0;
    v12 = 1;
LABEL_12:
    LOBYTE(__dst[0]) = v12;
    return result;
  }

  if (*(v2 + 16))
  {
    specialized Array._customRemoveLast()(&v17);
    v31[4] = v21;
    v31[5] = v22;
    v32[0] = v23[0];
    *(v32 + 12) = *(v23 + 12);
    v31[0] = v17;
    v31[1] = v18;
    v31[2] = v19;
    v31[3] = v20;
    if (_s7SwiftUI14GraphicsFilterOSgWOg(v31) == 1)
    {
      v13[4] = v21;
      v13[5] = v22;
      v14[0] = v23[0];
      *(v14 + 12) = *(v23 + 12);
      v13[0] = v17;
      v13[1] = v18;
      v13[2] = v19;
      v13[3] = v20;
      outlined destroy of HitTestableEvent?(v13, &lazy cache variable for type metadata for GraphicsFilter?, &type metadata for GraphicsFilter);
      specialized Array.remove(at:)(*(*a1 + 16) - 1, &v24);
      v15[4] = v28;
      v15[5] = v29;
      v16[0] = v30[0];
      *(v16 + 12) = *(v30 + 12);
      v15[0] = v24;
      v15[1] = v25;
      v15[2] = v26;
      v15[3] = v27;
      v11 = v15;
    }

    else
    {
      v28 = v21;
      v29 = v22;
      v30[0] = v23[0];
      *(v30 + 12) = *(v23 + 12);
      v24 = v17;
      v25 = v18;
      v26 = v19;
      v27 = v20;
      v11 = &v24;
    }

    outlined destroy of GraphicsFilter(v11);
    v12 = 0;
    result = v6;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t DisplayList.ViewUpdater.Platform.description.getter()
{
  v1 = 0x726568744FLL;
  if ((*v0 & 3) == 0)
  {
    v1 = 16707;
  }

  if ((*v0 & 3) == 1)
  {
    result = 0x74694B4955;
  }

  else
  {
    result = v1;
  }

  v3 = result;
  if ((*v0 & 4) != 0)
  {
    MEMORY[0x193ABEDD0](4277039, 0xE300000000000000);
    return v3;
  }

  return result;
}

void specialized closure #1 in DisplayList.GraphicsRenderer.drawPlatformLayer(_:in:size:update:)(uint64_t *a1, id a2, CGFloat a3)
{
  if ([a2 isGeometryFlipped])
  {
    v11.b = 0.0;
    v11.c = 0.0;
    v11.a = 1.0;
    v10 = xmmword_18DDEEA30;
    *&v11.d = xmmword_18DDEEA30;
    v11.ty = a3;
    if (!CGAffineTransformIsIdentity(&v11))
    {
      GraphicsContext.copyOnWrite()();
      v11.b = 0.0;
      v11.c = 0.0;
      v11.a = 1.0;
      *&v11.d = xmmword_18DDEEA30;
      v11.ty = a3;
      RBDrawingStateConcatCTM();
    }
  }

  v6 = *a1;
  v7 = RBDrawingStateBeginCGContext();
  v8 = v7;
  v9 = *(v6 + 52);
  if (v9)
  {
    CGContextSetBlendMode(v7, v9);
  }

  [a2 renderInContext_];
  RBDrawingStateEndCGContext();
}

void lazy protocol witness table accessor for type PlatformViewDefinition.System and conformance PlatformViewDefinition.System()
{
  if (!lazy protocol witness table cache variable for type PlatformViewDefinition.System and conformance PlatformViewDefinition.System)
  {
    swift_getWitnessTable(protocol conformance descriptor for PlatformViewDefinition.System, &type metadata for PlatformViewDefinition.System, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PlatformViewDefinition.System and conformance PlatformViewDefinition.System);
  }
}

void lazy protocol witness table accessor for type PlatformViewDefinition.ViewKind and conformance PlatformViewDefinition.ViewKind()
{
  if (!lazy protocol witness table cache variable for type PlatformViewDefinition.ViewKind and conformance PlatformViewDefinition.ViewKind)
  {
    swift_getWitnessTable(protocol conformance descriptor for PlatformViewDefinition.ViewKind, &type metadata for PlatformViewDefinition.ViewKind, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PlatformViewDefinition.ViewKind and conformance PlatformViewDefinition.ViewKind);
  }
}

uint64_t dispatch thunk of static PlatformViewDefinition.setPath(_:shapeView:)(uint64_t a1)
{
  v2 = *(v1 + 128);
  v3 = *(a1 + 32);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v3;
  return v2(v6);
}

uint64_t dispatch thunk of static PlatformViewDefinition.setProjectionTransform(_:projectionView:)(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(v1 + 136);
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  v5 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v5;
  v8 = v2;
  return v3(v7);
}

uint64_t getEnumTagSinglePayload for PlatformViewDefinition.ViewKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlatformViewDefinition.ViewKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void lazy protocol witness table accessor for type DisplayList.ViewUpdater.Platform.Encoding and conformance DisplayList.ViewUpdater.Platform.Encoding()
{
  if (!lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.Encoding and conformance DisplayList.ViewUpdater.Platform.Encoding)
  {
    swift_getWitnessTable(protocol conformance descriptor for DisplayList.ViewUpdater.Platform.Encoding, &unk_1F008DA10, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.Encoding and conformance DisplayList.ViewUpdater.Platform.Encoding);
  }
}

{
  if (!lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.Encoding and conformance DisplayList.ViewUpdater.Platform.Encoding)
  {
    swift_getWitnessTable(protocol conformance descriptor for DisplayList.ViewUpdater.Platform.Encoding, &unk_1F008DA10, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.Encoding and conformance DisplayList.ViewUpdater.Platform.Encoding);
  }
}

{
  if (!lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.Encoding and conformance DisplayList.ViewUpdater.Platform.Encoding)
  {
    swift_getWitnessTable(protocol conformance descriptor for DisplayList.ViewUpdater.Platform.Encoding, &unk_1F008DA10, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.Encoding and conformance DisplayList.ViewUpdater.Platform.Encoding);
  }
}

{
  if (!lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.Encoding and conformance DisplayList.ViewUpdater.Platform.Encoding)
  {
    swift_getWitnessTable(protocol conformance descriptor for DisplayList.ViewUpdater.Platform.Encoding, &unk_1F008DA10, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.Encoding and conformance DisplayList.ViewUpdater.Platform.Encoding);
  }
}

double outlined copy of BackdropGroupID?(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t outlined init with copy of SDFShape.BackdropObserver?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SDFShape.BackdropObserver?(0, &lazy cache variable for type metadata for SDFShape.BackdropObserver?, type metadata accessor for SDFShape.BackdropObserver, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for SDFShape.BackdropObserver?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for DisplayList.ViewUpdater.Platform.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEE && *(a1 + 34))
  {
    return (*a1 + 238);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 0x13;
  v5 = v3 - 19;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DisplayList.ViewUpdater.Platform.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xED)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 238;
    *(result + 8) = 0;
    if (a3 >= 0xEE)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEE)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 18;
    }
  }

  return result;
}

void lazy protocol witness table accessor for type DisplayList.ViewUpdater.Platform.ViewFlags and conformance DisplayList.ViewUpdater.Platform.ViewFlags()
{
  if (!lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.ViewFlags and conformance DisplayList.ViewUpdater.Platform.ViewFlags)
  {
    swift_getWitnessTable(protocol conformance descriptor for DisplayList.ViewUpdater.Platform.ViewFlags, &type metadata for DisplayList.ViewUpdater.Platform.ViewFlags, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.ViewFlags and conformance DisplayList.ViewUpdater.Platform.ViewFlags);
  }
}

{
  if (!lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.ViewFlags and conformance DisplayList.ViewUpdater.Platform.ViewFlags)
  {
    swift_getWitnessTable(protocol conformance descriptor for DisplayList.ViewUpdater.Platform.ViewFlags, &type metadata for DisplayList.ViewUpdater.Platform.ViewFlags, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.ViewFlags and conformance DisplayList.ViewUpdater.Platform.ViewFlags);
  }
}

{
  if (!lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.ViewFlags and conformance DisplayList.ViewUpdater.Platform.ViewFlags)
  {
    swift_getWitnessTable(protocol conformance descriptor for DisplayList.ViewUpdater.Platform.ViewFlags, &type metadata for DisplayList.ViewUpdater.Platform.ViewFlags, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.ViewFlags and conformance DisplayList.ViewUpdater.Platform.ViewFlags);
  }
}

{
  if (!lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.ViewFlags and conformance DisplayList.ViewUpdater.Platform.ViewFlags)
  {
    swift_getWitnessTable(protocol conformance descriptor for DisplayList.ViewUpdater.Platform.ViewFlags, &type metadata for DisplayList.ViewUpdater.Platform.ViewFlags, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DisplayList.ViewUpdater.Platform.ViewFlags and conformance DisplayList.ViewUpdater.Platform.ViewFlags);
  }
}

uint64_t assignWithCopy for DisplayList.ViewUpdater.Model.Clip(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of Path.Storage(*a2, v5, v6, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v13 = *(a1 + 32);
  *(a1 + 32) = v8;
  outlined consume of Path.Storage(v9, v10, v11, v12, v13);
  v14 = *(a2 + 40);
  v15 = *(a2 + 56);
  v16 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v16;
  *(a1 + 56) = v15;
  *(a1 + 40) = v14;
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 90) = *(a2 + 90);
  return a1;
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

uint64_t assignWithTake for DisplayList.ViewUpdater.Model.Clip(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  v10 = *(a1 + 32);
  *(a1 + 32) = v4;
  outlined consume of Path.Storage(v5, v6, v7, v8, v10);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 90) = *(a2 + 90);
  return a1;
}

uint64_t getEnumTagSinglePayload for DisplayList.ViewUpdater.Model.Clip(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 91))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 89);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DisplayList.ViewUpdater.Model.Clip(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 90) = 0;
    *(result + 88) = 0;
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
      *(result + 89) = a2 + 1;
    }
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DisplayList.ViewUpdater.Model.Clip(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v2;
  v13 = *(a1 + 32);
  v3 = *(a1 + 88);
  v4 = *(a1 + 89);
  v5 = *(a1 + 90);
  v15 = a2[2].i8[0];
  v6 = a2[1];
  v14[0] = *a2;
  v14[1] = v6;
  v7 = a2[5].i8[8];
  v8 = a2[5].i8[9];
  v9 = a2[5].i8[10];
  if ((specialized static Path.Storage.== infix(_:_:)(v12, v14) & 1) == 0)
  {
    goto LABEL_8;
  }

  if (v3)
  {
    if ((v7 & 1) == 0)
    {
LABEL_8:
      v10 = 0;
      return v10 & 1;
    }
  }

  else if ((v7 & 1) != 0 || (static CGAffineTransform.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_8;
  }

  v10 = (v4 ^ v8 | v5 ^ v9) ^ 1;
  return v10 & 1;
}

void DisplayList.Item.rewriteVibrancyFilterAsBackdrop(_:list:)(float *a1, uint64_t *a2)
{
  if (*(a1 + 84))
  {
    v3 = 0;
  }

  else
  {
    v3 = a1[20] == INFINITY;
  }

  if (v3)
  {
    v5 = *(a2 + 3);
    v6 = *(a2 + 4);
    v7 = *a2;
    v8 = swift_allocObject();
    *(v8 + 16) = 1065353216;
    *(v8 + 28) = 0;
    *(v8 + 20) = 0;
    *(v8 + 36) = 2143289344;
    *(v8 + 40) = MEMORY[0x1E69E7CC0];
    v9 = v2[2];
    v10 = v2[3];
    v11 = v2[4];
    v27 = 0uLL;
    *&v28 = v9;
    *(&v28 + 1) = v10;
    *&v29 = v11;
    *(&v29 + 1) = v8;
    memset(v30, 0, 28);
    v12 = *(a1 + 3);
    v33 = *(a1 + 2);
    v34 = v12;
    v35 = *(a1 + 4);
    v13 = *(a1 + 1);
    v31 = *a1;
    v32 = v13;
    LOBYTE(v36) = 0;
    _s7SwiftUI14GraphicsFilterOWOi5_(&v31);
    v14 = swift_allocObject();
    v15 = v36;
    v14[5] = v35;
    v14[6] = v15;
    v14[7] = v37[0];
    *(v14 + 124) = *(v37 + 12);
    v16 = v32;
    v14[1] = v31;
    v14[2] = v16;
    v17 = v34;
    v14[3] = v33;
    v14[4] = v17;
    v40 = v29;
    *v41 = v30[0];
    *&v41[12] = *(v30 + 12);
    v38 = v27;
    v39 = v28;
    outlined copy of DisplayList.Content.Value(v8);
    outlined init with copy of DisplayList.Item(&v27, v25);
    DisplayList.init(_:)(&v38, v25);
    v18 = v2[4];
    v38 = 0uLL;
    *&v39 = v9;
    *(&v39 + 1) = v10;
    *&v40 = v18;
    *(&v40 + 1) = v14;
    *v41 = 0xA00000000;
    *&v41[8] = *&v25[0];
    *&v41[16] = WORD4(v25[0]) | (HIDWORD(v25[0]) << 32) | 0x40000000;
    *&v41[24] = 0;
    v19 = swift_allocObject();
    *(v19 + 16) = v7;
    *(v19 + 24) = v6;
    *(v19 + 28) = v5;
    *(v19 + 32) = 0;
    v25[2] = v40;
    v26[0] = *v41;
    *(v26 + 12) = *&v41[12];
    v25[0] = v38;
    v25[1] = v39;

    outlined init with copy of DisplayList.Item(&v38, &v22);
    DisplayList.init(_:)(v25, &v22);
    outlined consume of DisplayList.Content.Value(v8);
    outlined destroy of DisplayList.Item(&v27);
    outlined destroy of DisplayList.Item(&v38);
    v20 = v22;
    v21 = v23 | (v24 << 32) | 0x40000000;
    outlined consume of DisplayList.Item.Value(v2[5], v2[6], v2[7], v2[8]);
    v2[5] = v19;
    v2[6] = 0x700000000;
    v2[7] = v20;
    v2[8] = v21;
  }
}

uint64_t assignWithCopy for DisplayList.ViewUpdater.Model.State(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  outlined copy of GraphicsBlendMode(v4, v5);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  outlined consume of GraphicsBlendMode(v6, v7);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  v8 = (a1 + 112);
  v9 = *(a1 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 109) = *(a2 + 109);
  *(a1 + 110) = *(a2 + 110);
  v10 = *(a2 + 112);
  v11 = v10 & 0xF000000000000007;
  if ((~v9 & 0xF000000000000007) != 0)
  {
    if (v11 != 0xF000000000000007)
    {
      *v8 = v10;

      goto LABEL_8;
    }

    outlined destroy of BackdropGroupID(a1 + 112);
    v10 = *(a2 + 112);
    goto LABEL_6;
  }

  if (v11 == 0xF000000000000007)
  {
LABEL_6:
    *v8 = v10;
    goto LABEL_8;
  }

  *v8 = v10;

LABEL_8:
  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  return a1;
}

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t assignWithTake for DisplayList.ViewUpdater.Model.State(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  outlined consume of GraphicsBlendMode(v6, v7);
  v8 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v8;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  v10 = (a1 + 112);
  v9 = *(a1 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 109) = *(a2 + 109);
  *(a1 + 110) = *(a2 + 110);
  v11 = *(a2 + 112);
  if ((~v9 & 0xF000000000000007) != 0)
  {
    if ((~v11 & 0xF000000000000007) != 0)
    {
      *v10 = v11;

      goto LABEL_6;
    }

    outlined destroy of BackdropGroupID(a1 + 112);
  }

  *v10 = v11;
LABEL_6:
  *(a1 + 120) = *(a2 + 120);

  v12 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v12;
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  return a1;
}

uint64_t getEnumTagSinglePayload for DisplayList.ViewUpdater.Model.State(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DisplayList.ViewUpdater.Model.State(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}