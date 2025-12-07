uint64_t Timeline.init(from:)(void *a1)
{
  result = sub_100885690(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1008817F4@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100885690(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

void sub_100881854(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_100884BBC(a1, v2);
  if (v4 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    Hasher._combine(_:)(v5);
  }
}

Swift::Int sub_1008818B8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  Hasher.init(_seed:)();
  sub_100884BBC(v7, v2);
  if (v4 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    Hasher._combine(_:)(v5);
  }

  return Hasher._finalize()();
}

uint64_t sub_10088193C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (sub_100881150(*a1, *a2))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v7 = v5;
      }

      else
      {
        v7 = 1;
      }

      if ((v7 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

void MPCPlaybackIntent.PlayActivityInformation.featureName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t Keyframe.to.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 16) = result;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return result;
}

uint64_t Track.init(propertyName:defaultValue:keyframes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = _swiftEmptyArrayStorage;
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  if (a6)
  {
    v7 = a6;
  }

  *(a7 + 32) = a5;
  *(a7 + 40) = v7;
  return result;
}

Swift::Double __swiftcall Track.timeOffset(at:)(Swift::Int at)
{
  if (at < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = *(v1 + 40);
  if (*(v3 + 16) < at)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (!at)
  {
    return 0.0;
  }

  if (at == 1)
  {
    v4 = 0;
    result = 0.0;
LABEL_10:
    v9 = at - v4;
    v10 = (v3 + 48 * v4 + 32);
    do
    {
      v11 = *v10;
      v10 += 6;
      result = result + v11;
      --v9;
    }

    while (v9);
    return result;
  }

  v4 = at & 0x7FFFFFFFFFFFFFFELL;
  v5 = (v3 + 80);
  result = 0.0;
  v6 = at & 0x7FFFFFFFFFFFFFFELL;
  do
  {
    v7 = *(v5 - 6);
    v8 = *v5;
    v5 += 12;
    result = result + v7 + v8;
    v6 -= 2;
  }

  while (v6);
  if (v4 != at)
  {
    goto LABEL_10;
  }

  return result;
}

unint64_t sub_100881B24(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, double a8)
{
  v16 = *(type metadata accessor for Spring() - 8);
  __chkstk_darwin();
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (a7 == 2)
      {
        v40 = a1;
        v41 = a2;
        v38 = a5;
        v39 = a6;
        v36 = 0;
        v37 = 0;
        if ((a4 & 0x100000000) != 0)
        {
          if (!a4)
          {
            v32.i32[1] = HIDWORD(a5);
            v33 = 0.0;
            if (a8 >= 0.0)
            {
              v33 = a8;
            }

            v34 = fmin(v33, 1.0);
            v32.i32[0] = a5;
            return vadd_f32(vmul_n_f32(vsub_f32(v32, a1), v34), a1);
          }
        }

        else
        {
          v20 = v17;
          Spring.init(settlingDuration:dampingRatio:epsilon:)();
          sub_10010FC20(&qword_1011A5650, &qword_100EE6E28);
          sub_100020674(&qword_1011A5918, &qword_1011A5650, &qword_100EE6E28, &protocol conformance descriptor for <> SIMD3<A>);
          Spring.value<A>(fromValue:toValue:initialVelocity:time:)();
          (*(v16 + 8))(v19, v20);
          return v35;
        }
      }
    }

    else if (a7 == 3)
    {
      v40 = a1;
      v41 = a2;
      v38 = a5;
      v39 = a6;
      v36 = 0;
      v37 = 0;
      if ((a4 & 0x100000000) != 0)
      {
        if (!a4)
        {
          v25.i32[1] = HIDWORD(a5);
          v25.i64[1] = a6;
          v26 = 0.0;
          if (a8 >= 0.0)
          {
            v26 = a8;
          }

          v27.i64[1] = a2;
          v28 = fmin(v26, 1.0);
          v25.i32[0] = a5;
          v27.i64[0] = a1;
          return vaddq_f32(vmulq_n_f32(vsubq_f32(v25, v27), v28), v27).u64[0];
        }
      }

      else
      {
        v22 = v17;
        Spring.init(settlingDuration:dampingRatio:epsilon:)();
        sub_10010FC20(&qword_1011A50D0, &qword_100EE6E20);
        sub_100020674(&qword_1011A5910, &qword_1011A50D0, &qword_100EE6E20, &protocol conformance descriptor for <> SIMD4<A>);
        Spring.value<A>(fromValue:toValue:initialVelocity:time:)();
        (*(v16 + 8))(v19, v22);
        return v35;
      }
    }
  }

  else if (a3)
  {
    if (a7 == 1)
    {
      v40 = a1;
      v38 = a5;
      v36 = 0;
      if ((a4 & 0x100000000) != 0)
      {
        if (!a4)
        {
          v23 = 0.0;
          if (a8 >= 0.0)
          {
            v23 = a8;
          }

          v24 = fmin(v23, 1.0);
          return vadd_f32(vmul_n_f32(vsub_f32(a5, a1), v24), a1);
        }
      }

      else
      {
        v21 = v17;
        Spring.init(settlingDuration:dampingRatio:epsilon:)();
        sub_10010FC20(&qword_1011A5668, &qword_100EE6E30);
        sub_100020674(&qword_1011A5920, &qword_1011A5668, &qword_100EE6E30, &protocol conformance descriptor for <> SIMD2<A>);
        Spring.value<A>(fromValue:toValue:initialVelocity:time:)();
        (*(v16 + 8))(v19, v21);
        return v35;
      }
    }
  }

  else if (!a7)
  {
    LODWORD(v40) = a1;
    LODWORD(v38) = a5;
    LODWORD(v36) = 0;
    if ((a4 & 0x100000000) != 0)
    {
      if (!a4)
      {
        v29 = fmin(a8, 1.0);
        if (a8 < 0.0)
        {
          v29 = 0.0;
        }

        v30 = v29;
        *&a5 = ((*&a5 - *&a1) * v30) + *&a1;
      }
    }

    else
    {
      a5 = v17;
      Spring.init(settlingDuration:dampingRatio:epsilon:)();
      sub_100888D54();
      Spring.value<A>(fromValue:toValue:initialVelocity:time:)();
      (*(v16 + 8))(v19, a5);
      LODWORD(a5) = v35;
    }

    return a5;
  }

  return a5;
}

void sub_100882048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 1u)
  {
    if (a6 == 2)
    {
      sub_10087A7A4(a2, a3);
      if (v6)
      {
        return;
      }

      v7 = &unk_1011A5118;
      v8 = &unk_100EE84D0;
    }

    else
    {
      sub_10087A7A4(a2, a3);
      if (v6)
      {
        return;
      }

      v7 = &unk_1011A5110;
      v8 = &unk_100EE6AE0;
    }

    sub_10010FC20(v7, v8);
    if (swift_dynamicCastClass())
    {
      goto LABEL_15;
    }
  }

  else if (a6)
  {
    sub_10087A7A4(a2, a3);
    if (v6)
    {
      return;
    }

    sub_10010FC20(&qword_1011A5120, &unk_100EE6AF0);
    if (swift_dynamicCastClass())
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_10087A7A4(a2, a3);
    if (v6)
    {
      return;
    }

    sub_10010FC20(&qword_1011A5128, &unk_100EE84E0);
    if (swift_dynamicCastClass())
    {
LABEL_15:
      swift_setAtWritableKeyPath();

      return;
    }
  }

  sub_10087C654();
  swift_allocError();
  *v9 = 0;
  swift_willThrow();
}

unint64_t sub_1008821FC()
{
  result = qword_1011A5558;
  if (!qword_1011A5558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5558);
  }

  return result;
}

unint64_t sub_100882250()
{
  result = qword_1011A5570;
  if (!qword_1011A5570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5570);
  }

  return result;
}

uint64_t sub_1008822A4()
{
  v1 = 0x56746C7561666564;
  if (*v0 != 1)
  {
    v1 = 0x656D61726679656BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x79747265706F7270;
  }
}

uint64_t sub_100882314@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100885A38(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10088233C(uint64_t a1)
{
  v2 = sub_1008858C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100882378(uint64_t a1)
{
  v2 = sub_1008858C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static Track.__derived_struct_equals(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || !_s7Panache8KeyframeV5ValueO21__derived_enum_equalsySbAE_AEtFZ_0(a1[2], a1[3], *(a1 + 32), *(a2 + 16), *(a2 + 24), *(a2 + 32)))
  {
    return 0;
  }

  v5 = a1[5];
  v6 = *(a2 + 40);

  return sub_10088132C(v5, v6);
}

uint64_t Track.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10010FC20(&qword_1011A55A0, &qword_100EE6DC8);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10 - v7;
  sub_10000954C(a1, a1[3]);
  sub_1008858C4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + 16);
    v13 = *(v3 + 32);
    v11 = 1;
    sub_100885918();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v12 = *(v3 + 40);
    v11 = 2;
    sub_10010FC20(&qword_1011A55B8, &qword_100EE6DD0);
    sub_10088596C(&qword_1011A55C0, sub_1008859E4, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void Track.hash(into:)(uint64_t a1)
{
  String.hash(into:)();
  Keyframe.Value.hash(into:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
  v3 = *(v1 + 40);

  sub_100884D9C(a1, v3);
}

Swift::Int Track.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  Keyframe.Value.hash(into:)(v2, *(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_100884D9C(v2, *(v0 + 40));
  return Hasher._finalize()();
}

double Track.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100885B60(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

Swift::Int sub_100882750()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Keyframe.Value.hash(into:)(v6, v1, v2, v4);
  sub_100884D9C(v6, v3);
  return Hasher._finalize()();
}

void sub_1008827D8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 40);
  v6 = *(v1 + 32);
  String.hash(into:)();
  Keyframe.Value.hash(into:)(a1, v3, v4, v6);

  sub_100884D9C(a1, v5);
}

Swift::Int sub_100882848(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(v1 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Keyframe.Value.hash(into:)(v7, v2, v3, v5);
  sub_100884D9C(v7, v4);
  return Hasher._finalize()();
}

uint64_t sub_1008828CC(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = a1[5];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || !_s7Panache8KeyframeV5ValueO21__derived_enum_equalsySbAE_AEtFZ_0(v2, v3, v4, v6, v7, v8))
  {
    return 0;
  }

  return sub_10088132C(v5, v9);
}

uint64_t Keyframe.curve.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t Keyframe.init(duration:curve:to:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  *a5 = a6;
  *(a5 + 8) = result;
  *(a5 + 12) = BYTE4(result) & 1;
  *(a5 + 16) = a2;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  return result;
}

uint64_t sub_1008829F4()
{
  v1 = 0x74616F6C66;
  v2 = 0x3374616F6C66;
  if (*v0 != 2)
  {
    v2 = 0x3474616F6C66;
  }

  if (*v0)
  {
    v1 = 0x3274616F6C66;
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

uint64_t sub_100882A5C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100885F48(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100882A84(uint64_t a1)
{
  v2 = sub_100886874();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100882AC0(uint64_t a1)
{
  v2 = sub_100886874();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100882B08(uint64_t a1)
{
  v2 = sub_100886970();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100882B44(uint64_t a1)
{
  v2 = sub_100886970();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100882B80(uint64_t a1)
{
  v2 = sub_10088691C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100882BBC(uint64_t a1)
{
  v2 = sub_10088691C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100882BF8(uint64_t a1)
{
  v2 = sub_1008868C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100882C34(uint64_t a1)
{
  v2 = sub_1008868C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100882C70(uint64_t a1)
{
  v2 = sub_1008869C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100882CAC(uint64_t a1)
{
  v2 = sub_1008869C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void Keyframe.Value.hash(into:)(uint64_t a1, unint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    v7.n128_u64[0] = a2;
    v7.n128_u64[1] = a3;
    if (a4 == 2)
    {
      v10 = v7;
      Hasher._combine(_:)(2uLL);

      sub_100885038(v10);
    }

    else
    {
      v11 = v7;
      Hasher._combine(_:)(3uLL);

      sub_100884FA8(v11);
    }
  }

  else
  {
    if (a4)
    {
      Hasher._combine(_:)(1uLL);
      v8 = *&a2;
      if (*&a2 == 0.0)
      {
        v8 = 0.0;
      }

      Hasher._combine(_:)(LODWORD(v8));
      v9 = *(&a2 + 1);
      if (*(&a2 + 1) == 0.0)
      {
        v9 = 0.0;
      }

      v6 = LODWORD(v9);
    }

    else
    {
      Hasher._combine(_:)(0);
      if ((a2 & 0x7FFFFF) == 0 && (a2 & 0x7F800000) == 0)
      {
        v6 = 0;
      }

      else
      {
        v6 = a2;
      }
    }

    Hasher._combine(_:)(v6);
  }
}

Swift::Int Keyframe.Value.hashValue.getter(unint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  Hasher.init(_seed:)();
  Keyframe.Value.hash(into:)(v7, a1, a2, a3);
  return Hasher._finalize()();
}

Swift::Int sub_100882E64()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  Keyframe.Value.hash(into:)(v5, v1, v2, v3);
  return Hasher._finalize()();
}

Swift::Int sub_100882ECC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  Hasher.init(_seed:)();
  Keyframe.Value.hash(into:)(v6, v2, v3, v4);
  return Hasher._finalize()();
}

uint64_t sub_100882F40()
{
  v1 = 0x676E69727073;
  if (*v0 != 1)
  {
    v1 = 1684828008;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7261656E696CLL;
  }
}

uint64_t sub_100882F8C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10088609C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100882FB4(uint64_t a1)
{
  v2 = sub_100885DF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100882FF0(uint64_t a1)
{
  v2 = sub_100885DF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100883038(uint64_t a1)
{
  v2 = sub_100885E4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100883074(uint64_t a1)
{
  v2 = sub_100885E4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1008830B0(uint64_t a1)
{
  v2 = sub_100885EF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008830EC(uint64_t a1)
{
  v2 = sub_100885EF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100883128(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1008831A8(uint64_t a1)
{
  v2 = sub_100885EA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008831E4(uint64_t a1)
{
  v2 = sub_100885EA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static Keyframe.Curve.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *&a1 == *&a2;
  if ((a2 & &_mh_execute_header) != 0)
  {
    v2 = 0;
  }

  v3 = BYTE4(a2) & (a2 != 0);
  if (!a1)
  {
    v3 = BYTE4(a2) & (a2 == 0);
  }

  if ((a1 & &_mh_execute_header) != 0)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

void Keyframe.Curve.hash(into:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a2 & 0x100000000) != 0)
  {
    if (a2)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    Hasher._combine(_:)(v5);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    if ((v2 & 0x7FFFFF) == 0 && (v2 & 0x7F800000) == 0)
    {
      v4 = 0;
    }

    else
    {
      v4 = v2;
    }

    Hasher._combine(_:)(v4);
  }
}

Swift::Int Keyframe.Curve.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  if ((a1 & 0x100000000) != 0)
  {
    if (a1)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    Hasher._combine(_:)(v4);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    if ((a1 & 0x7FFFFF) == 0 && (a1 & 0x7F800000) == 0)
    {
      v3 = 0;
    }

    else
    {
      v3 = a1;
    }

    Hasher._combine(_:)(v3);
  }

  return Hasher._finalize()();
}

Swift::Int sub_100883380(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  Hasher.init(_seed:)();
  Keyframe.Curve.hash(into:)(v5, v2 | (v3 << 32));
  return Hasher._finalize()();
}

uint64_t sub_1008833D0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a1 + 4) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = LODWORD(v3) == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 4);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100883424()
{
  v1 = 0x6576727563;
  if (*v0 != 1)
  {
    v1 = 28532;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F697461727564;
  }
}

uint64_t sub_100883470@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1008861AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100883498(uint64_t a1)
{
  v2 = sub_100887314();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008834D4(uint64_t a1)
{
  v2 = sub_100887314();

  return CodingKey.debugDescription.getter(a1, v2);
}

void Keyframe.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  if (*v2 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
  v5 = *(v2 + 8);
  if (*(v2 + 12))
  {
    if (v5)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    Hasher._combine(_:)(v6);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    if ((v5 & 0x7FFFFFFF) != 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }

    Hasher._combine(_:)(v7);
  }

  v8 = *(v2 + 32);
  if (v8 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v11 = v2 + 16;
    v9 = *(v2 + 16);
    v10 = *(v11 + 8);
    Hasher._combine(_:)(1u);

    Keyframe.Value.hash(into:)(a1, v9, v10, v8);
  }
}

Swift::Int Keyframe.hashValue.getter()
{
  Hasher.init(_seed:)();
  Keyframe.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100883624(uint64_t a1)
{
  Hasher.init(_seed:)();
  Keyframe.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100883660(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s7Panache8KeyframeV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t Keyframe.Curve.encode(to:)(void *a1, uint64_t a2)
{
  v25 = a2;
  v3 = sub_10010FC20(&qword_1011A55D0, &qword_100EE6DD8);
  v22 = *(v3 - 8);
  v23 = v3;
  __chkstk_darwin();
  v21 = &v18 - v4;
  v5 = sub_10010FC20(&qword_1011A55D8, &qword_100EE6DE0);
  v24 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v18 - v6;
  v8 = sub_10010FC20(&qword_1011A55E0, &qword_100EE6DE8);
  v19 = *(v8 - 8);
  v20 = v8;
  __chkstk_darwin();
  v10 = &v18 - v9;
  v11 = sub_10010FC20(&qword_1011A55E8, &qword_100EE6DF0);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v18 - v13;
  sub_10000954C(a1, a1[3]);
  sub_100885DF8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if ((v25 & 0x100000000) != 0)
  {
    if (v25)
    {
      v28 = 2;
      sub_100885E4C();
      v10 = v21;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v17 = v22;
      v16 = v23;
    }

    else
    {
      v26 = 0;
      sub_100885EF4();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v17 = v19;
      v16 = v20;
    }

    (*(v17 + 8))(v10, v16);
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    v27 = 1;
    sub_100885EA0();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v24 + 8))(v7, v5);
    return (*(v12 + 8))(v14, v11);
  }
}

unint64_t sub_100883AA0@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1008862B8(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 4) = BYTE4(result) & 1;
  }

  return result;
}

uint64_t Keyframe.Value.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v35 = a4;
  v34 = a3;
  v36 = a2;
  v5 = sub_10010FC20(&qword_1011A5610, &qword_100EE6DF8);
  v32 = *(v5 - 8);
  v33 = v5;
  __chkstk_darwin();
  v31 = &v26 - v6;
  v7 = sub_10010FC20(&qword_1011A5618, &qword_100EE6E00);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin();
  v9 = &v26 - v8;
  v10 = sub_10010FC20(&qword_1011A5620, &qword_100EE6E08);
  v28 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v26 - v11;
  v13 = sub_10010FC20(&qword_1011A5628, &qword_100EE6E10);
  v27 = *(v13 - 8);
  __chkstk_darwin();
  v15 = &v26 - v14;
  v16 = sub_10010FC20(&qword_1011A5630, &qword_100EE6E18);
  v37 = *(v16 - 8);
  v38 = v16;
  __chkstk_darwin();
  v18 = &v26 - v17;
  sub_10000954C(a1, a1[3]);
  sub_100886874();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v35 > 1u)
  {
    if (v35 == 2)
    {
      LOBYTE(v39) = 2;
      sub_10088691C();
      v21 = v38;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v39 = v36;
      v40 = v34;
      sub_10010FC20(&qword_1011A5650, &qword_100EE6E28);
      sub_100020674(&qword_1011A5658, &qword_1011A5650, &qword_100EE6E28, &protocol conformance descriptor for SIMD3<A>);
      v22 = v30;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v29 + 8))(v9, v22);
      return (*(v37 + 8))(v18, v21);
    }

    LOBYTE(v39) = 3;
    sub_1008868C8();
    v24 = v31;
    v23 = v38;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v39 = v36;
    v40 = v34;
    sub_10010FC20(&qword_1011A50D0, &qword_100EE6E20);
    sub_100020674(&qword_1011A50D8, &qword_1011A50D0, &qword_100EE6E20, &protocol conformance descriptor for SIMD4<A>);
    v25 = v33;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v32 + 8))(v24, v25);
  }

  else
  {
    if (!v35)
    {
      LOBYTE(v39) = 0;
      sub_1008869C4();
      v19 = v38;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v27 + 8))(v15, v13);
      return (*(v37 + 8))(v18, v19);
    }

    LOBYTE(v39) = 1;
    sub_100886970();
    v23 = v38;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v39 = v36;
    sub_10010FC20(&qword_1011A5668, &qword_100EE6E30);
    sub_100020674(&qword_1011A5670, &qword_1011A5668, &qword_100EE6E30, &protocol conformance descriptor for SIMD2<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v28 + 8))(v12, v10);
  }

  return (*(v37 + 8))(v18, v23);
}

unint64_t Keyframe.Value.init(from:)(void *a1)
{
  result = sub_100886A18(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

unint64_t sub_100884164@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100886A18(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t Keyframe.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10010FC20(&qword_1011A5680, &qword_100EE6E38);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10 - v7;
  sub_10000954C(a1, a1[3]);
  sub_100887314();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v10) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LODWORD(v10) = *(v3 + 8);
    BYTE4(v10) = *(v3 + 12);
    v12 = 1;
    sub_100887368();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = *(v3 + 16);
    v11 = *(v3 + 32);
    v12 = 2;
    sub_100885918();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

double Keyframe.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1008873BC(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

void (*sub_10088441C(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_1008844AC;
}

float32x2_t sub_1008844B0@<D0>(float32x2_t *a1@<X0>, float32x2_t *a2@<X1>, float32x2_t *a3@<X8>)
{
  result = vadd_f32(*a1, *a2);
  *a3 = result;
  return result;
}

float32x2_t sub_1008844C4(float32x2_t *a1, float32x2_t *a2)
{
  result = vadd_f32(*a2, *a1);
  *a1 = result;
  return result;
}

float32x4_t sub_1008844D8(float32x4_t *a1, float32x4_t a2)
{
  result = vaddq_f32(*a1, a2);
  *a1 = result;
  return result;
}

float32x2_t sub_1008844E8@<D0>(float32x2_t *a1@<X0>, float32x2_t *a2@<X1>, float32x2_t *a3@<X8>)
{
  result = vsub_f32(*a1, *a2);
  *a3 = result;
  return result;
}

float32x2_t sub_1008844FC(float32x2_t *a1, float32x2_t *a2)
{
  result = vsub_f32(*a1, *a2);
  *a1 = result;
  return result;
}

float32x4_t sub_100884510(float32x4_t *a1, float32x4_t a2)
{
  result = vsubq_f32(*a1, a2);
  *a1 = result;
  return result;
}

float32x2_t SIMD2<>.scale(by:)(double a1)
{
  v2 = a1;
  result = vmul_n_f32(*v1, v2);
  *v1 = result;
  return result;
}

uint64_t sub_100884568(uint64_t a1, uint64_t a2)
{
  v4 = sub_100020674(&qword_1011A56F0, &qword_1011A5668, &qword_100EE6E30, &protocol conformance descriptor for <> SIMD2<A>);

  return Animatable<>.animatableData.getter(a1, a2, v4);
}

void (*sub_100884668(uint64_t *a1, uint64_t a2, uint64_t a3))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  sub_100020674(&qword_1011A56F0, &qword_1011A5668, &qword_100EE6E30, &protocol conformance descriptor for <> SIMD2<A>);
  *(v5 + 32) = Animatable<>.animatableData.modify();
  return sub_100888DB0;
}

__n128 sub_100884728@<Q0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, __n128 *a3@<X8>)
{
  result = vaddq_f32(*a1, *a2);
  result.n128_u32[3] = 0;
  *a3 = result;
  return result;
}

float32x4_t sub_100884740(float32x4_t *a1, float32x4_t *a2)
{
  result = vaddq_f32(*a2, *a1);
  result.i32[3] = 0;
  *a1 = result;
  return result;
}

__n128 sub_100884758@<Q0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, __n128 *a3@<X8>)
{
  result = vsubq_f32(*a1, *a2);
  result.n128_u32[3] = 0;
  *a3 = result;
  return result;
}

float32x4_t sub_100884770(float32x4_t *a1, float32x4_t *a2)
{
  result = vsubq_f32(*a1, *a2);
  result.i32[3] = 0;
  *a1 = result;
  return result;
}

float SIMD3<>.scale(by:)(double a1)
{
  v2 = a1;
  v3.i64[0] = vmulq_n_f32(*v1, v2).u64[0];
  result = vmuls_lane_f32(v2, *v1, 2);
  v3.i64[1] = LODWORD(result);
  *v1 = v3;
  return result;
}

double sub_1008847C4()
{
  v1 = vmulq_f32(*v0, *v0);
  v1.n128_u32[3] = 0;
  return sub_1008875E8(v1);
}

uint64_t sub_1008847EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100020674(&qword_1011A5708, &qword_1011A5650, &qword_100EE6E28, &protocol conformance descriptor for <> SIMD3<A>);

  return Animatable<>.animatableData.getter(a1, a2, v4);
}

void (*sub_10088489C(uint64_t *a1, uint64_t a2, uint64_t a3))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  sub_100020674(&qword_1011A5708, &qword_1011A5650, &qword_100EE6E28, &protocol conformance descriptor for <> SIMD3<A>);
  *(v5 + 32) = Animatable<>.animatableData.modify();
  return sub_100888DB0;
}

float32x4_t sub_10088495C@<Q0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  result = vaddq_f32(*a1, *a2);
  *a3 = result;
  return result;
}

float32x4_t sub_100884978@<Q0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  result = vsubq_f32(*a1, *a2);
  *a3 = result;
  return result;
}

float32x4_t SIMD4<>.scale(by:)(double a1)
{
  v2 = a1;
  result = vmulq_n_f32(*v1, v2);
  *v1 = result;
  return result;
}

uint64_t sub_1008849E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100020674(&qword_1011A5720, &qword_1011A50D0, &qword_100EE6E20, &protocol conformance descriptor for <> SIMD4<A>);

  return Animatable<>.animatableData.getter(a1, a2, v4);
}

void (*sub_100884AFC(uint64_t *a1, uint64_t a2, uint64_t a3))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  sub_100020674(&qword_1011A5720, &qword_1011A50D0, &qword_100EE6E20, &protocol conformance descriptor for <> SIMD4<A>);
  *(v5 + 32) = Animatable<>.animatableData.modify();
  return sub_100888DB0;
}

void sub_100884BBC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  Hasher._combine(_:)(v4);
  if (v4)
  {
    v5 = (a2 + 72);
    do
    {
      v10 = *(v5 - 3);
      v11 = *(v5 - 2);
      v12 = *(v5 - 8);
      v13 = *v5;

      String.hash(into:)();
      if (v12 > 1)
      {
        *&v15 = v10;
        *(&v15 + 1) = v11;
        if (v12 == 2)
        {
          v24 = v15;
          Hasher._combine(_:)(2uLL);
          if ((v10 & 0x7FFFFF) == 0 && (v10 & 0x7F800000) == 0)
          {
            v17 = 0;
          }

          else
          {
            v17 = v10;
          }

          Hasher._combine(_:)(v17);
          v18 = *(&v24 + 1);
          if (*(&v24 + 1) == 0.0)
          {
            v18 = 0.0;
          }

          Hasher._combine(_:)(LODWORD(v18));
          v19 = *(&v24 + 2);
        }

        else
        {
          v25 = v15;
          Hasher._combine(_:)(3uLL);
          if ((v10 & 0x7FFFFF) == 0 && (v10 & 0x7F800000) == 0)
          {
            v21 = 0;
          }

          else
          {
            v21 = v10;
          }

          Hasher._combine(_:)(v21);
          v22 = *(&v25 + 1);
          if (*(&v25 + 1) == 0.0)
          {
            v22 = 0.0;
          }

          Hasher._combine(_:)(LODWORD(v22));
          v23 = *(&v25 + 2);
          if (*(&v25 + 2) == 0.0)
          {
            v23 = 0.0;
          }

          Hasher._combine(_:)(LODWORD(v23));
          v19 = *(&v25 + 3);
        }

        if (v19 == 0.0)
        {
          v19 = 0.0;
        }

        v9 = LODWORD(v19);
      }

      else if (v12)
      {
        Hasher._combine(_:)(1uLL);
        if ((v10 & 0x7FFFFF) == 0 && (v10 & 0x7F800000) == 0)
        {
          v7 = 0;
        }

        else
        {
          v7 = v10;
        }

        Hasher._combine(_:)(v7);
        if ((v10 & 0x7FFFFF00000000) == 0 && (v10 & 0x7F80000000000000) == 0)
        {
          v9 = 0;
        }

        else
        {
          v9 = HIDWORD(v10);
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if ((v10 & 0x7FFFFF) == 0 && (v10 & 0x7F800000) == 0)
        {
          v9 = 0;
        }

        else
        {
          v9 = v10;
        }
      }

      v5 += 6;
      Hasher._combine(_:)(v9);
      sub_100884D9C(a1, v13);

      --v4;
    }

    while (v4);
  }
}

void sub_100884D9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 64);
    do
    {
      v5 = *(v4 - 4);
      v6 = *(v4 - 6);
      v7 = *(v4 - 20);
      v8 = *(v4 - 2);
      v9 = *(v4 - 1);
      v10 = *v4;
      if (v5 == 0.0)
      {
        v5 = 0.0;
      }

      Hasher._combine(_:)(*&v5);
      if (v7 == 1)
      {
        if (v6)
        {
          v11 = 2;
        }

        else
        {
          v11 = 0;
        }

        Hasher._combine(_:)(v11);
        if (v10 != 255)
        {
          goto LABEL_17;
        }
      }

      else
      {
        Hasher._combine(_:)(1uLL);
        if ((v6 & 0x7FFFFFFF) != 0)
        {
          v12 = v6;
        }

        else
        {
          v12 = 0;
        }

        Hasher._combine(_:)(v12);
        if (v10 != 255)
        {
LABEL_17:
          Hasher._combine(_:)(1u);
          if (v10 > 1)
          {
            *&v15 = v8;
            *(&v15 + 1) = v9;
            if (v10 == 2)
            {
              v27 = v15;
              Hasher._combine(_:)(2uLL);
              if ((v8 & 0x7FFFFF) == 0 && (v8 & 0x7F800000) == 0)
              {
                v17 = 0;
              }

              else
              {
                v17 = v8;
              }

              Hasher._combine(_:)(v17);
              v18 = *(&v27 + 1);
              if (*(&v27 + 1) == 0.0)
              {
                v18 = 0.0;
              }

              Hasher._combine(_:)(LODWORD(v18));
              v19 = *(&v27 + 2);
            }

            else
            {
              v28 = v15;
              Hasher._combine(_:)(3uLL);
              if ((v8 & 0x7FFFFF) == 0 && (v8 & 0x7F800000) == 0)
              {
                v24 = 0;
              }

              else
              {
                v24 = v8;
              }

              Hasher._combine(_:)(v24);
              v25 = *(&v28 + 1);
              if (*(&v28 + 1) == 0.0)
              {
                v25 = 0.0;
              }

              Hasher._combine(_:)(LODWORD(v25));
              v26 = *(&v28 + 2);
              if (*(&v28 + 2) == 0.0)
              {
                v26 = 0.0;
              }

              Hasher._combine(_:)(LODWORD(v26));
              v19 = *(&v28 + 3);
            }

            if (v19 == 0.0)
            {
              v19 = 0.0;
            }

            v14 = LODWORD(v19);
          }

          else if (v10)
          {
            Hasher._combine(_:)(1uLL);
            if ((v8 & 0x7FFFFF) == 0 && (v8 & 0x7F800000) == 0)
            {
              v21 = 0;
            }

            else
            {
              v21 = v8;
            }

            Hasher._combine(_:)(v21);
            if ((v8 & 0x7FFFFF00000000) == 0 && (v8 & 0x7F80000000000000) == 0)
            {
              v14 = 0;
            }

            else
            {
              v14 = HIDWORD(v8);
            }
          }

          else
          {
            Hasher._combine(_:)(0);
            if ((v8 & 0x7FFFFF) == 0 && (v8 & 0x7F800000) == 0)
            {
              v14 = 0;
            }

            else
            {
              v14 = v8;
            }
          }

          Hasher._combine(_:)(v14);
          goto LABEL_4;
        }
      }

      Hasher._combine(_:)(0);
LABEL_4:
      v4 += 6;
      --v3;
    }

    while (v3);
  }
}

void sub_100884FA8(__n128 a1)
{
  if (a1.n128_f32[0] == 0.0)
  {
    v1 = 0.0;
  }

  else
  {
    v1 = a1.n128_f32[0];
  }

  Hasher._combine(_:)(LODWORD(v1));
  v2 = a1.n128_f32[1];
  if (a1.n128_f32[1] == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v2));
  v3 = a1.n128_f32[2];
  if (a1.n128_f32[2] == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v3));
  v4 = a1.n128_f32[3];
  if (a1.n128_f32[3] == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v4));
}

void sub_100885038(__n128 a1)
{
  if (a1.n128_f32[0] == 0.0)
  {
    v1 = 0.0;
  }

  else
  {
    v1 = a1.n128_f32[0];
  }

  Hasher._combine(_:)(LODWORD(v1));
  v2 = a1.n128_f32[1];
  if (a1.n128_f32[1] == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v2));
  v3 = a1.n128_f32[2];
  if (a1.n128_f32[2] == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v3));
}

void _s7Panache0A5SceneV4hash4intoys6HasherVz_tF_0(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v6)
  {
    v19 = v8;
LABEL_15:
    v12 = *(a2 + 56) + 24 * (__clz(__rbit64(v6)) | (v9 << 6));
    v14 = *v12;
    v13 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(a1 + 48);
    v20[2] = *(a1 + 32);
    v20[3] = v16;
    v21 = *(a1 + 64);
    v17 = *(a1 + 16);
    v20[0] = *a1;
    v20[1] = v17;

    String.hash(into:)();

    sub_100884BBC(v20, v14);
    if (v15)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      if ((v13 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v10 = v13;
      }

      else
      {
        v10 = 0;
      }

      Hasher._combine(_:)(v10);
    }

    v6 &= v6 - 1;

    v8 = Hasher._finalize()() ^ v19;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      Hasher._combine(_:)(v8);
      return;
    }

    v6 = *(v3 + 8 * v11);
    ++v9;
    if (v6)
    {
      v19 = v8;
      v9 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
}

BOOL _s7Panache8KeyframeV5ValueO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 1u)
  {
    v6 = *&a1 == *&a4;
    if (a6)
    {
      v6 = 0;
    }

    v7 = *(&a1 + 1) == *(&a4 + 1);
    if (*&a1 != *&a4)
    {
      v7 = 0;
    }

    v8 = a6 == 1 && v7;
    if (a3)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  if (a3 == 2)
  {
    if (a6 == 2)
    {
      v11.i64[0] = a1;
      v11.i64[1] = a2;
      v12 = vceq_f32(a1, a4);
      if (v12.i32[0] & v12.i32[1])
      {
        v13.i64[0] = a4;
        v13.i64[1] = a5;
        return vmovn_s32(vceqq_f32(v11, v13)).i8[4] & 1;
      }
    }

    return 0;
  }

  if (a6 != 3)
  {
    return 0;
  }

  v14 = 0;
  if (*&a1 == *&a4)
  {
    v15.i64[0] = a1;
    v15.i64[1] = a2;
    v16.i64[0] = a4;
    v16.i64[1] = a5;
    v17 = vmovn_s32(vceqq_f32(v15, v16));
    if (v17.i8[2] & 1) != 0 && (v17.i8[4])
    {
      v14 = v17.i8[6];
    }
  }

  return v14 & 1;
}

uint64_t _s7Panache8KeyframeV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (*(a1 + 12))
  {
    if (v2)
    {
      v2 = 0;
      if ((*(a2 + 12) & 1) == 0 || v3 == 0.0)
      {
        return v2;
      }
    }

    else if ((*(a2 + 12) & 1) == 0 || v3 != 0.0)
    {
      return v2;
    }
  }

  else if ((*(a2 + 12) & 1) != 0 || *&v2 != v3)
  {
    return 0;
  }

  v5 = *(a1 + 32);
  v6 = *(a2 + 32);
  if (v5 == 255)
  {
    if (v6 == 255)
    {
      return 1;
    }
  }

  else if (v6 != 255 && _s7Panache8KeyframeV5ValueO21__derived_enum_equalsySbAE_AEtFZ_0(*(a1 + 16), *(a1 + 24), v5, *(a2 + 16), *(a2 + 24), v6))
  {
    return 1;
  }

  return 0;
}

void *sub_10088542C(void *a1)
{
  v3 = sub_10010FC20(&qword_1011A58F8, &unk_100EE84C0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v9 - v5;
  v7 = sub_10000954C(a1, a1[3]);
  sub_1008821FC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000959C(a1);
  }

  else
  {
    sub_10010FC20(&qword_1011A5560, &qword_100EE6DB0);
    sub_100888C7C(&qword_1011A5900, sub_100888D00, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_10000959C(a1);
  }

  return v7;
}

unint64_t sub_1008855E8()
{
  result = qword_1011A5580;
  if (!qword_1011A5580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5580);
  }

  return result;
}

unint64_t sub_10088563C()
{
  result = qword_1011A5598;
  if (!qword_1011A5598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5598);
  }

  return result;
}

uint64_t sub_100885690(void *a1)
{
  v3 = sub_10010FC20(&qword_1011A58E0, &qword_100EE84B8);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_10000954C(a1, v7);
  sub_1008855E8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_10010FC20(&qword_1011A5588, &qword_100EE6DC0);
    v9[7] = 0;
    sub_100888BB0(&qword_1011A58E8, sub_100888C28, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v10;
    v9[6] = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000959C(a1);
  return v7;
}

unint64_t sub_1008858C4()
{
  result = qword_1011A55A8;
  if (!qword_1011A55A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A55A8);
  }

  return result;
}

unint64_t sub_100885918()
{
  result = qword_1011A55B0;
  if (!qword_1011A55B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A55B0);
  }

  return result;
}

uint64_t sub_10088596C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(&qword_1011A55B8, &qword_100EE6DD0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1008859E4()
{
  result = qword_1011A55C8;
  if (!qword_1011A55C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A55C8);
  }

  return result;
}

uint64_t sub_100885A38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79747265706F7270 && a2 == 0xEC000000656D614ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x56746C7561666564 && a2 == 0xEC00000065756C61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D61726679656BLL && a2 == 0xE900000000000073)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

void sub_100885B60(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10010FC20(&qword_1011A58C8, &qword_100EE84B0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v15 - v7;
  sub_10000954C(a1, a1[3]);
  sub_1008858C4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000959C(a1);
  }

  else
  {
    LOBYTE(v17) = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    v12 = v9;
    v21 = 1;
    sub_100888B08();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15 = v18;
    v16 = v17;
    v20 = v19;
    sub_10010FC20(&qword_1011A55B8, &qword_100EE6DD0);
    v21 = 2;
    sub_10088596C(&qword_1011A58D0, sub_100888B5C, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v13 = v17;
    sub_10000959C(a1);
    *a2 = v12;
    *(a2 + 8) = v11;
    v14 = v15;
    *(a2 + 16) = v16;
    *(a2 + 24) = v14;
    *(a2 + 32) = v20;
    *(a2 + 40) = v13;
  }
}

unint64_t sub_100885DF8()
{
  result = qword_1011A55F0;
  if (!qword_1011A55F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A55F0);
  }

  return result;
}

unint64_t sub_100885E4C()
{
  result = qword_1011A55F8;
  if (!qword_1011A55F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A55F8);
  }

  return result;
}

unint64_t sub_100885EA0()
{
  result = qword_1011A5600;
  if (!qword_1011A5600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5600);
  }

  return result;
}

unint64_t sub_100885EF4()
{
  result = qword_1011A5608;
  if (!qword_1011A5608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5608);
  }

  return result;
}

uint64_t sub_100885F48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616F6C66 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x3274616F6C66 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x3374616F6C66 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x3474616F6C66 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10088609C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7261656E696CLL && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E69727073 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684828008 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1008861AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6576727563 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 28532 && a2 == 0xE200000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

unint64_t sub_1008862B8(void *a1)
{
  v35 = sub_10010FC20(&qword_1011A58A8, &qword_100EE8490);
  v37 = *(v35 - 8);
  __chkstk_darwin();
  v38 = &v32 - v2;
  v33 = sub_10010FC20(&qword_1011A58B0, &qword_100EE8498);
  v36 = *(v33 - 8);
  __chkstk_darwin();
  v4 = &v32 - v3;
  v5 = sub_10010FC20(&qword_1011A58B8, &qword_100EE84A0);
  v34 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v32 - v6;
  v8 = sub_10010FC20(&qword_1011A58C0, &qword_100EE84A8);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v32 - v10;
  v12 = a1[3];
  v40 = a1;
  sub_10000954C(a1, v12);
  sub_100885DF8();
  v13 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return sub_10000959C(v40);
  }

  v14 = v38;
  v39 = 0;
  v15 = v9;
  v16 = KeyedDecodingContainer.allKeys.getter();
  v17 = *(v16 + 16);
  if (!v17 || ((v18 = *(v16 + 32), v17 == 1) ? (v19 = v18 == 3) : (v19 = 1), v19))
  {
    v20 = type metadata accessor for DecodingError();
    swift_allocError();
    v22 = v21;
    sub_10010FC20(&qword_1011A5890, &qword_100EE8488);
    *v22 = &type metadata for Keyframe.Curve;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v20 - 8) + 104))(v22, enum case for DecodingError.typeMismatch(_:), v20);
    swift_willThrow();
    (*(v15 + 8))(v11, v8);
LABEL_17:
    swift_unknownObjectRelease();
    return sub_10000959C(v40);
  }

  if (!*(v16 + 32))
  {
    v41 = 0;
    sub_100885EF4();
    v29 = v39;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (v29)
    {
      goto LABEL_16;
    }

    (*(v34 + 8))(v7, v5);
    (*(v9 + 8))(v11, v8);
    swift_unknownObjectRelease();
    v28 = 0;
LABEL_20:
    v27 = 1;
    goto LABEL_21;
  }

  if (v18 != 1)
  {
    v43 = 2;
    sub_100885E4C();
    v30 = v39;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (v30)
    {
      goto LABEL_16;
    }

    (*(v37 + 8))(v14, v35);
    (*(v9 + 8))(v11, v8);
    swift_unknownObjectRelease();
    v28 = 1;
    goto LABEL_20;
  }

  v42 = 1;
  sub_100885EA0();
  v23 = v39;
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  if (v23)
  {
LABEL_16:
    (*(v9 + 8))(v11, v8);
    goto LABEL_17;
  }

  v24 = v33;
  KeyedDecodingContainer.decode(_:forKey:)();
  v26 = v25;
  v27 = 0;
  (*(v36 + 8))(v4, v24);
  (*(v9 + 8))(v11, v8);
  swift_unknownObjectRelease();
  v28 = v26;
LABEL_21:
  sub_10000959C(v40);
  return v28 | (v27 << 32);
}

unint64_t sub_100886874()
{
  result = qword_1011A5638;
  if (!qword_1011A5638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5638);
  }

  return result;
}

unint64_t sub_1008868C8()
{
  result = qword_1011A5640;
  if (!qword_1011A5640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5640);
  }

  return result;
}

unint64_t sub_10088691C()
{
  result = qword_1011A5648;
  if (!qword_1011A5648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5648);
  }

  return result;
}

unint64_t sub_100886970()
{
  result = qword_1011A5660;
  if (!qword_1011A5660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5660);
  }

  return result;
}

unint64_t sub_1008869C4()
{
  result = qword_1011A5678;
  if (!qword_1011A5678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5678);
  }

  return result;
}

unint64_t sub_100886A18(void *a1)
{
  v59 = sub_10010FC20(&qword_1011A5868, &qword_100EE8460);
  v56 = *(v59 - 8);
  __chkstk_darwin();
  v58 = v47 - v2;
  v3 = sub_10010FC20(&qword_1011A5870, &qword_100EE8468);
  v4 = *(v3 - 8);
  v54 = v3;
  v55 = v4;
  __chkstk_darwin();
  v57 = v47 - v5;
  v6 = sub_10010FC20(&qword_1011A5878, &qword_100EE8470);
  v7 = *(v6 - 8);
  v52 = v6;
  v53 = v7;
  __chkstk_darwin();
  v9 = v47 - v8;
  v10 = sub_10010FC20(&qword_1011A5880, &qword_100EE8478);
  v51 = *(v10 - 8);
  __chkstk_darwin();
  v12 = v47 - v11;
  v13 = sub_10010FC20(&qword_1011A5888, &qword_100EE8480);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = v47 - v15;
  v17 = a1[3];
  v61 = a1;
  v18 = sub_10000954C(a1, v17);
  sub_100886874();
  v19 = v60;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v19)
  {
    v48 = v10;
    v49 = 0;
    v20 = v57;
    v21 = v58;
    v22 = v59;
    v50 = v14;
    v60 = KeyedDecodingContainer.allKeys.getter();
    v23 = *(v60 + 16);
    if (!v23 || ((v24 = *(v60 + 32), v23 == 1) ? (v25 = v24 == 4) : (v25 = 1), v25))
    {
      v26 = type metadata accessor for DecodingError();
      swift_allocError();
      v18 = v16;
      v28 = v27;
      sub_10010FC20(&qword_1011A5890, &qword_100EE8488);
      *v28 = &type metadata for Keyframe.Value;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v26 - 8) + 104))(v28, enum case for DecodingError.typeMismatch(_:), v26);
      swift_willThrow();
      (*(v50 + 8))(v18, v13);
LABEL_9:
      swift_unknownObjectRelease();
      goto LABEL_10;
    }

    v47[3] = *(v60 + 32);
    if (v24 <= 1)
    {
      if (v24)
      {
        LOBYTE(v62) = 1;
        sub_100886970();
        v34 = v9;
        v18 = v16;
        v35 = v49;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v36 = v13;
        v37 = v50;
        if (!v35)
        {
          v43 = v34;
          v44 = v16;
          sub_10010FC20(&qword_1011A5668, &qword_100EE6E30);
          sub_100020674(&qword_1011A58A0, &qword_1011A5668, &qword_100EE6E30, &protocol conformance descriptor for SIMD2<A>);
          v45 = v52;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v53 + 8))(v43, v45);
          (*(v37 + 8))(v44, v36);
          swift_unknownObjectRelease();
          v18 = v62;
          goto LABEL_10;
        }

        (*(v50 + 8))(v16, v36);
        goto LABEL_9;
      }

      LOBYTE(v62) = 0;
      sub_1008869C4();
      v30 = v12;
      v18 = v16;
      v31 = v49;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v32 = v50;
      if (!v31)
      {
        v39 = v48;
        KeyedDecodingContainer.decode(_:forKey:)();
        v41 = v40;
        (*(v51 + 8))(v30, v39);
        (*(v32 + 8))(v16, v13);
        swift_unknownObjectRelease();
        v18 = v41;
        goto LABEL_10;
      }

      goto LABEL_21;
    }

    if (v24 == 2)
    {
      LOBYTE(v62) = 2;
      sub_10088691C();
      v18 = v16;
      v33 = v49;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v33)
      {
        goto LABEL_21;
      }

      sub_10010FC20(&qword_1011A5650, &qword_100EE6E28);
      sub_100020674(&qword_1011A5898, &qword_1011A5650, &qword_100EE6E28, &protocol conformance descriptor for SIMD3<A>);
      v42 = v54;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v55 + 8))(v20, v42);
      (*(v50 + 8))(v16, v13);
    }

    else
    {
      LOBYTE(v62) = 3;
      sub_1008868C8();
      v18 = v16;
      v38 = v49;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v38)
      {
LABEL_21:
        (*(v50 + 8))(v16, v13);
        goto LABEL_9;
      }

      sub_10010FC20(&qword_1011A50D0, &qword_100EE6E20);
      sub_100020674(&qword_1011A5108, &qword_1011A50D0, &qword_100EE6E20, &protocol conformance descriptor for SIMD4<A>);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v46 = v50;
      (*(v56 + 8))(v21, v22);
      (*(v46 + 8))(v16, v13);
    }

    swift_unknownObjectRelease();
    v18 = v62;
  }

LABEL_10:
  sub_10000959C(v61);
  return v18;
}

unint64_t sub_100887314()
{
  result = qword_1011A5688;
  if (!qword_1011A5688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5688);
  }

  return result;
}

unint64_t sub_100887368()
{
  result = qword_1011A5690;
  if (!qword_1011A5690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5690);
  }

  return result;
}

uint64_t sub_1008873BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10010FC20(&qword_1011A5850, &qword_100EE8458);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v17 - v7;
  sub_10000954C(a1, a1[3]);
  sub_100887314();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000959C(a1);
  }

  LOBYTE(v17[0]) = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v10 = v9;
  v19 = 1;
  sub_100888AB4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v17[0];
  v12 = BYTE4(v17[0]);
  v19 = 2;
  sub_100888B08();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v13 = v17[0];
  v14 = v17[1];
  v15 = v18;
  result = sub_10000959C(a1);
  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 12) = v12;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  return result;
}

unint64_t sub_10088760C()
{
  result = qword_1011A5698;
  if (!qword_1011A5698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5698);
  }

  return result;
}

unint64_t sub_100887664()
{
  result = qword_1011A56A0;
  if (!qword_1011A56A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A56A0);
  }

  return result;
}

unint64_t sub_1008876BC()
{
  result = qword_1011A56A8;
  if (!qword_1011A56A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A56A8);
  }

  return result;
}

unint64_t sub_100887714()
{
  result = qword_1011A56C8;
  if (!qword_1011A56C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A56C8);
  }

  return result;
}

unint64_t sub_10088776C()
{
  result = qword_1011A56D0;
  if (!qword_1011A56D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A56D0);
  }

  return result;
}

unint64_t sub_1008877C4()
{
  result = qword_1011A56D8;
  if (!qword_1011A56D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A56D8);
  }

  return result;
}

__n128 sub_100887A98(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

__n128 sub_100887ABC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

__n128 sub_100887AE0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100887AF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 33))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 32);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_100887B40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = ~a2;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for HitMyRectButton.HitRectAdjustment(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 initializeWithCopy for Keyframe.Value(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Keyframe.Value(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for Keyframe.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Keyframe.Curve(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Keyframe.Curve(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Keyframe.Curve(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_100887CE0(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100887CFC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

unint64_t sub_100887E00()
{
  result = qword_1011A5728;
  if (!qword_1011A5728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5728);
  }

  return result;
}

unint64_t sub_100887E58()
{
  result = qword_1011A5730;
  if (!qword_1011A5730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5730);
  }

  return result;
}

unint64_t sub_100887EB0()
{
  result = qword_1011A5738;
  if (!qword_1011A5738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5738);
  }

  return result;
}

unint64_t sub_100887F08()
{
  result = qword_1011A5740;
  if (!qword_1011A5740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5740);
  }

  return result;
}

unint64_t sub_100887F60()
{
  result = qword_1011A5748;
  if (!qword_1011A5748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5748);
  }

  return result;
}

unint64_t sub_100887FB8()
{
  result = qword_1011A5750;
  if (!qword_1011A5750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5750);
  }

  return result;
}

unint64_t sub_100888010()
{
  result = qword_1011A5758;
  if (!qword_1011A5758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5758);
  }

  return result;
}

unint64_t sub_100888068()
{
  result = qword_1011A5760;
  if (!qword_1011A5760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5760);
  }

  return result;
}

unint64_t sub_1008880C0()
{
  result = qword_1011A5768;
  if (!qword_1011A5768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5768);
  }

  return result;
}

unint64_t sub_100888118()
{
  result = qword_1011A5770;
  if (!qword_1011A5770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5770);
  }

  return result;
}

unint64_t sub_100888170()
{
  result = qword_1011A5778;
  if (!qword_1011A5778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5778);
  }

  return result;
}

unint64_t sub_1008881C8()
{
  result = qword_1011A5780;
  if (!qword_1011A5780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5780);
  }

  return result;
}

unint64_t sub_100888220()
{
  result = qword_1011A5788;
  if (!qword_1011A5788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5788);
  }

  return result;
}

unint64_t sub_100888278()
{
  result = qword_1011A5790;
  if (!qword_1011A5790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5790);
  }

  return result;
}

unint64_t sub_1008882D0()
{
  result = qword_1011A5798;
  if (!qword_1011A5798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5798);
  }

  return result;
}

unint64_t sub_100888328()
{
  result = qword_1011A57A0;
  if (!qword_1011A57A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A57A0);
  }

  return result;
}

unint64_t sub_100888380()
{
  result = qword_1011A57A8;
  if (!qword_1011A57A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A57A8);
  }

  return result;
}

unint64_t sub_1008883D8()
{
  result = qword_1011A57B0;
  if (!qword_1011A57B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A57B0);
  }

  return result;
}

unint64_t sub_100888430()
{
  result = qword_1011A57B8;
  if (!qword_1011A57B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A57B8);
  }

  return result;
}

unint64_t sub_100888488()
{
  result = qword_1011A57C0;
  if (!qword_1011A57C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A57C0);
  }

  return result;
}

unint64_t sub_1008884E0()
{
  result = qword_1011A57C8;
  if (!qword_1011A57C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A57C8);
  }

  return result;
}

unint64_t sub_100888538()
{
  result = qword_1011A57D0;
  if (!qword_1011A57D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A57D0);
  }

  return result;
}

unint64_t sub_100888590()
{
  result = qword_1011A57D8;
  if (!qword_1011A57D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A57D8);
  }

  return result;
}

unint64_t sub_1008885E8()
{
  result = qword_1011A57E0;
  if (!qword_1011A57E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A57E0);
  }

  return result;
}

unint64_t sub_100888640()
{
  result = qword_1011A57E8;
  if (!qword_1011A57E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A57E8);
  }

  return result;
}

unint64_t sub_100888698()
{
  result = qword_1011A57F0;
  if (!qword_1011A57F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A57F0);
  }

  return result;
}

unint64_t sub_1008886F0()
{
  result = qword_1011A57F8;
  if (!qword_1011A57F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A57F8);
  }

  return result;
}

unint64_t sub_100888748()
{
  result = qword_1011A5800;
  if (!qword_1011A5800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5800);
  }

  return result;
}

unint64_t sub_1008887A0()
{
  result = qword_1011A5808;
  if (!qword_1011A5808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5808);
  }

  return result;
}

unint64_t sub_1008887F8()
{
  result = qword_1011A5810;
  if (!qword_1011A5810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5810);
  }

  return result;
}

unint64_t sub_100888850()
{
  result = qword_1011A5818;
  if (!qword_1011A5818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5818);
  }

  return result;
}

unint64_t sub_1008888A8()
{
  result = qword_1011A5820;
  if (!qword_1011A5820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5820);
  }

  return result;
}

unint64_t sub_100888900()
{
  result = qword_1011A5828;
  if (!qword_1011A5828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5828);
  }

  return result;
}

unint64_t sub_100888958()
{
  result = qword_1011A5830;
  if (!qword_1011A5830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5830);
  }

  return result;
}

unint64_t sub_1008889B0()
{
  result = qword_1011A5838;
  if (!qword_1011A5838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5838);
  }

  return result;
}

unint64_t sub_100888A08()
{
  result = qword_1011A5840;
  if (!qword_1011A5840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5840);
  }

  return result;
}

unint64_t sub_100888A60()
{
  result = qword_1011A5848;
  if (!qword_1011A5848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5848);
  }

  return result;
}

unint64_t sub_100888AB4()
{
  result = qword_1011A5858;
  if (!qword_1011A5858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5858);
  }

  return result;
}

unint64_t sub_100888B08()
{
  result = qword_1011A5860;
  if (!qword_1011A5860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5860);
  }

  return result;
}

unint64_t sub_100888B5C()
{
  result = qword_1011A58D8;
  if (!qword_1011A58D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A58D8);
  }

  return result;
}

uint64_t sub_100888BB0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(&qword_1011A5588, &qword_100EE6DC0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100888C28()
{
  result = qword_1011A58F0;
  if (!qword_1011A58F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A58F0);
  }

  return result;
}

uint64_t sub_100888C7C(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(&qword_1011A5560, &qword_100EE6DB0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100888D00()
{
  result = qword_1011A5908;
  if (!qword_1011A5908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5908);
  }

  return result;
}

unint64_t sub_100888D54()
{
  result = qword_1011A5928;
  if (!qword_1011A5928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5928);
  }

  return result;
}

uint64_t static StringKeypathResolution.writableKeypath<A>(memberName:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = (*(a6 + 8))(a1, a2, a4, a6);
  if (!v6)
  {
    type metadata accessor for WritableKeyPath();
    result = swift_dynamicCastClass();
    if (!result)
    {

      sub_10087C654();
      swift_allocError();
      *v8 = 0;
      return swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_100888E7C()
{
  result = qword_1011A5930;
  if (!qword_1011A5930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5930);
  }

  return result;
}

uint64_t sub_100888EE0()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_100888F54()
{
  sub_100888EE0();

  return swift_deallocClassInstance();
}

uint64_t sub_100888FAC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_10088904C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

__n128 initializeBufferWithCopyOfBuffer for DivMesh(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100889108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  v6 = sub_10010FC20(&qword_1011A5EE0, &qword_100EE8768);
  v5[25] = v6;
  v5[26] = *(v6 - 8);
  v5[27] = swift_task_alloc();

  return _swift_task_switch(sub_1008891DC, 0, 0);
}

uint64_t sub_1008891DC()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v1[5] = v0[20];
  v1[6] = v3;
  v1[7] = v4;
  v1[8] = v2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5 = v4;
  swift_unknownObjectRetain();
  v6 = swift_task_alloc();
  v0[28] = v6;
  *v6 = v0;
  v6[1] = sub_1008892DC;
  v7 = v0[23];

  return sub_10088B3D0(v7, 0x747265765F347367, 0xEA00000000007865, 0x676172665F347367, 0xEC000000746E656DLL);
}

uint64_t sub_1008892DC(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 232) = a1;

  if (v1)
  {
    *(v3 + 248) = v1;
    v4 = sub_100889B54;
  }

  else
  {
    v4 = sub_100889400;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100889400()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v4 = v0[29];
  v5 = v0[26];
  v6 = v0[27];
  v7 = v0[25];
  v12 = v1[20];
  v8 = String._bridgeToObjectiveC()();
  [v4 setLabel:v8];

  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_100889614;
  swift_continuation_init();
  v1[17] = v7;
  v9 = sub_10001C8B8(v1 + 14);
  sub_10010FC20(&qword_1011A5EE8, &unk_100EE8770);
  sub_10010FC20(&qword_1011A5EF0, &qword_100EE8CF0);
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v9, v6, v7);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100889C4C;
  v1[13] = &unk_1010C5018;
  [v12 newRenderPipelineStateWithDescriptor:v4 options:0 completionHandler:?];
  (*(v5 + 8))(v9, v7);

  return _swift_continuation_await(v2, v10);
}

uint64_t sub_100889614()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_100889AD8;
  }

  else
  {
    v2 = sub_100889724;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100889724()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);

  v3 = [v1 newBufferWithBytes:&unk_1010C4000 length:32 options:0];
  if (v3)
  {
    v4 = v3;
    v5 = [*(v0 + 160) newBufferWithLength:688 options:0];
    v6 = *(v0 + 232);
    if (v5)
    {
      v7 = v5;
      v8 = *(v0 + 192);
      v9 = *(v0 + 176);

      v8[2] = v2;
      v8[3] = v4;
      v8[4] = v7;
      swift_getObjectType();
      type metadata accessor for FullSphereUniforms(0);
      v10 = sub_10088C0C4();
      v12 = v11;
      v13 = [v11 contents];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v14 = v12;
      *v13 = 0u;
      v13[1] = 0u;
      __asm { FMOV            V1.4S, #1.0 }

      v13[2] = 0u;
      v13[3] = _Q1;
      v13[4] = xmmword_100EE5A20;
      v13[5] = xmmword_100EE5A30;
      v13[6] = xmmword_100EE5A40;
      v13[7] = xmmword_100EE5A50;
      v13[8] = xmmword_100EE5A60;
      v13[9] = xmmword_100EE5A70;
      v13[10] = xmmword_100EE5A80;
      v13[11] = xmmword_100EE5A90;
      v13[12] = xmmword_100EE5AA0;
      v13[13] = xmmword_100EE5AB0;
      v13[14] = xmmword_100EE5AC0;
      v13[15] = xmmword_100EE5AD0;
      v13[16] = xmmword_100EE5AE0;
      v13[17] = xmmword_100EE5AF0;
      v13[18] = xmmword_100EE5B00;
      v13[19] = xmmword_100EE5B10;
      *(v13 + 40) = 0x3F0000003F000000;
      *(v13 + 41) = 1067450368;
      v13[21] = xmmword_100EE5B20;
      v13[22] = xmmword_100EE5B30;
      v13[23] = xmmword_100EE5B40;
      v13[24] = xmmword_100EE5B50;
      v13[25] = xmmword_100EE5B60;
      *(v13 + 52) = 0x400000003EA66666;
      *(v13 + 53) = 0;
      v13[27] = _Q1;
      v13[28] = xmmword_100EE5B70;
      *(v13 + 58) = 0x400000003F000000;
      *(v13 + 59) = 0;
      v13[30] = xmmword_100EE5B80;
      v13[31] = xmmword_100EE5B90;
      v13[32] = xmmword_100EE5BA0;
      v13[33] = xmmword_100EE5BB0;
      v13[34] = xmmword_100EE5BC0;
      v13[35] = xmmword_100EE5BD0;
      v13[36] = xmmword_100EE5BE0;
      v13[37] = xmmword_100EE5BF0;
      v13[38] = xmmword_100EE5C00;
      v13[39] = xmmword_100EE5C10;
      v13[41] = 0u;
      v13[42] = 0u;
      v13[40] = xmmword_100EE5C20;

      v20 = *(v0 + 8);
      v21 = *(v0 + 192);

      return v20(v21);
    }

    sub_100889D08();
    v23 = swift_allocError();
    *v25 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = *(v0 + 232);
    sub_100889D08();
    v23 = swift_allocError();
    *v24 = 0;
    swift_willThrow();
  }

  swift_unknownObjectRelease();

  *(v0 + 248) = v23;

  return _swift_task_switch(sub_100889B54, 0, 0);
}

uint64_t sub_100889AD8(uint64_t a1)
{
  v2 = v1[29];
  swift_willThrow();

  v1[31] = v1[30];

  return _swift_task_switch(sub_100889B54, 0, 0);
}

uint64_t sub_100889B54()
{
  v1 = v0[24];
  v2 = v0[22];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v3 = *(v1 + 56);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  type metadata accessor for LitSphereRenderer();
  swift_deallocPartialClassInstance();

  v4 = v0[1];

  return v4();
}

void sub_100889C4C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  sub_10000954C((a1 + 32), *(a1 + 56));
  if (a4)
  {
    v7 = a4;
    sub_10010FC20(&qword_1011A5EE0, &qword_100EE8768);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a2)
  {
    swift_unknownObjectRetain();
    v8 = a3;
    sub_10010FC20(&qword_1011A5EE0, &qword_100EE8768);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_100889D08()
{
  result = qword_1011A5EF8;
  if (!qword_1011A5EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5EF8);
  }

  return result;
}

uint64_t sub_100889D5C()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100889DEC(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_100889E00(uint64_t *a1, int a2)
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

uint64_t sub_100889E48(uint64_t result, int a2, int a3)
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

uint64_t sub_100889E98()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100889F28()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t FixedLengthCollection.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10088AED8(a1, a2, a3, a4);
  (*(*(a3 - 8) + 8))(a1, a3);
  return v6;
}

uint64_t FixedLengthCollection.indices.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  return v3;
}

Swift::Int __swiftcall FixedLengthCollection.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall FixedLengthCollection.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

void FixedLengthCollection.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  type metadata accessor for ContiguousArray();
  ContiguousArray._makeMutableAndUnique()();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(*v3 + 16) <= a2)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = *(v6 - 8);
  v8 = *(v7 + 40);
  v9 = *v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * a2;

  v8(v9, a1, v6);
}

void (*FixedLengthCollection.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(unint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  v9 = *(a3 + 16);
  v7[3] = v9;
  v10 = *(v9 - 8);
  v7[4] = v10;
  v11 = *(v10 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7[5] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[5] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v8[6] = v12;
  ContiguousArray.subscript.getter();
  return sub_10088A2A4;
}

void sub_10088A2A4(unint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  if (a2)
  {
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[1];
    v8 = *v2;
    (*(v6 + 16))((*a1)[5], v4, v5);
    FixedLengthCollection.subscript.setter(v3, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    FixedLengthCollection.subscript.setter((*a1)[6], *v2, v2[1]);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_10088A370(uint64_t a1, uint64_t a2)
{
  if (a1 == 1702060386 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_10088A3F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10088A370(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10088A428@<X0>(_BYTE *a1@<X8>)
{
  result = static MPCPlayerCommandRequest.isAvailable(in:)();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10088A458(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_10088A4AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

void *sub_10088A51C@<X0>(void *result@<X0>, void *a2@<X8>)
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

void *sub_10088A534(void *result)
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

uint64_t sub_10088A54C@<X0>(uint64_t *a1@<X8>)
{
  result = FixedLengthCollection.endIndex.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t (*sub_10088A578(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = sub_10088A64C(v7, *a2, *v3, *(a3 + 16));
  return sub_10088A604;
}

void sub_10088A604(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_10088A64C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v5 = *(a4 - 8);
  *a1 = a4;
  a1[1] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v5 + 64));
  }

  a1[2] = v6;
  ContiguousArray.subscript.getter();
  return sub_10088A720;
}

void sub_10088A720(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_10088A770@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = FixedLengthCollection.indices.getter(*v2, *(a1 + 16));
  *a2 = result;
  a2[1] = v5;
  return result;
}

void *sub_10088A830@<X0>(void *result@<X0>, void *a2@<X8>)
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

void *sub_10088A848(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t sub_10088A860(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t sub_10088A8B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = j___ss32_copyCollectionToContiguousArrayys0dE0Vy7ElementQzGxSlRzlF(v1, a1, WitnessTable);

  return v4;
}

uint64_t FixedLengthCollection<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a5;
  v11 = a2;
  type metadata accessor for FixedLengthCollection.CodingKeys(255, a3, a3, a4);
  swift_getWitnessTable();
  v6 = type metadata accessor for KeyedEncodingContainer();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v11 - v8;
  sub_10000954C(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v11;
  type metadata accessor for ContiguousArray();
  v13 = v12;
  swift_getWitnessTable();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v7 + 8))(v9, v6);
}

void *FixedLengthCollection<A>.init(from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a3;
  type metadata accessor for FixedLengthCollection.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v6 = type metadata accessor for KeyedDecodingContainer();
  v13 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v12 - v7;
  v9 = sub_10000954C(a1, a1[3]);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v4)
  {
    v10 = v13;
    type metadata accessor for ContiguousArray();
    v15 = v14;
    swift_getWitnessTable();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v10 + 8))(v8, v6);
    v9 = v16;
  }

  sub_10000959C(a1);
  return v9;
}

void *sub_10088ACC8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t a5@<X3>)
{
  result = FixedLengthCollection<A>.init(from:)(a1, *(a2 + 16), *(a3 - 8), a5);
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_10088AD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  type metadata accessor for Range();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_10088ADF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_10088AED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __chkstk_darwin();
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  return ContiguousArray.init<A>(_:)();
}

unint64_t sub_10088B00C()
{
  result = qword_1011A62D0;
  if (!qword_1011A62D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A62D0);
  }

  return result;
}

uint64_t sub_10088B1C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(&qword_1011A62C8, &qword_100EE8890);
    sub_10088B00C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10088B25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_10088B31C(uint64_t a1, void *a2, void *a3)
{
  sub_10000954C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_10010FC20(&qword_1011A6450, &qword_100EE8CE0);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a2)
  {
    swift_unknownObjectRetain();
    sub_10010FC20(&qword_1011A6450, &qword_100EE8CE0);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10088B3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[39] = a4;
  v5[40] = a5;
  v5[37] = a2;
  v5[38] = a3;
  v5[36] = a1;
  v6 = sub_10010FC20(&qword_1011A6450, &qword_100EE8CE0);
  v5[41] = v6;
  v5[42] = *(v6 - 8);
  v5[43] = swift_task_alloc();

  return _swift_task_switch(sub_10088B4A4, 0, 0);
}

uint64_t sub_10088B4A4()
{
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[41];
  v11 = v0[36];
  v0[44] = [objc_allocWithZone(MTLRenderPipelineDescriptor) init];
  v4 = [objc_allocWithZone(MTLFunctionDescriptor) init];
  v0[45] = v4;
  v5 = String._bridgeToObjectiveC()();
  [v4 setName:v5];

  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = sub_10088B6F0;
  swift_continuation_init();
  v0[25] = v3;
  v6 = sub_10001C8B8(v0 + 22);
  v0[46] = sub_10010FC20(&unk_1011A6458, &qword_100EE8CE8);
  v0[47] = sub_10010FC20(&qword_1011A5EF0, &qword_100EE8CF0);
  CheckedContinuation.init(continuation:function:)();
  v7 = *(v1 + 32);
  v0[48] = v7;
  v0[49] = (v1 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v7(v6, v2, v3);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_10088B31C;
  v0[21] = &unk_1010C5130;
  [v11 newFunctionWithDescriptor:v4 completionHandler:?];
  v8 = *(v1 + 8);
  v0[50] = v8;
  v0[51] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v6, v3);

  return _swift_continuation_await(v0 + 2, v9);
}

uint64_t sub_10088B6F0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 416) = v1;
  if (v1)
  {
    v2 = sub_10088BECC;
  }

  else
  {
    v2 = sub_10088B800;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10088B800()
{
  v10 = *(v0 + 400);
  v8 = *(v0 + 384);
  v1 = *(v0 + 344);
  v2 = *(v0 + 328);
  v9 = *(v0 + 288);
  [*(v0 + 352) setVertexFunction:*(v0 + 272)];
  swift_unknownObjectRelease();
  v3 = [objc_allocWithZone(MTLFunctionDescriptor) init];
  *(v0 + 424) = v3;
  v4 = String._bridgeToObjectiveC()();
  [v3 setName:v4];

  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 280;
  *(v0 + 88) = sub_10088BA0C;
  swift_continuation_init();
  *(v0 + 264) = v2;
  v5 = sub_10001C8B8((v0 + 240));
  CheckedContinuation.init(continuation:function:)();
  v8(v5, v1, v2);
  *(v0 + 208) = _NSConcreteStackBlock;
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_10088B31C;
  *(v0 + 232) = &unk_1010C5158;
  [v9 newFunctionWithDescriptor:v3 completionHandler:v0 + 208];
  v10(v5, v2);

  return _swift_continuation_await(v0 + 80, v6);
}

uint64_t sub_10088BA0C()
{
  v1 = *(*v0 + 112);
  *(*v0 + 432) = v1;
  if (v1)
  {
    v2 = sub_10088BF4C;
  }

  else
  {
    v2 = sub_10088BB1C;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_10088BB1C()
{
  v1 = v0[44];
  [v1 setFragmentFunction:v0[35]];
  swift_unknownObjectRelease();
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (!v3)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = v0[44];
  [v3 setPixelFormat:80];

  v5 = [v4 colorAttachments];
  v6 = [v5 objectAtIndexedSubscript:0];

  if (!v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = v0[44];
  [v6 setBlendingEnabled:1];

  v8 = [v7 colorAttachments];
  v9 = [v8 objectAtIndexedSubscript:0];

  if (!v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = v0[44];

  v11 = [v10 colorAttachments];
  v12 = [v11 objectAtIndexedSubscript:0];

  if (!v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v0[44];
  [v12 setRgbBlendOperation:0];

  v14 = [v13 colorAttachments];
  v15 = [v14 objectAtIndexedSubscript:0];

  if (!v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v16 = v0[44];
  [v15 setAlphaBlendOperation:0];

  v17 = [v16 colorAttachments];
  v18 = [v17 objectAtIndexedSubscript:0];

  if (!v18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v19 = v0[44];
  [v18 setSourceRGBBlendFactor:1];

  v20 = [v19 colorAttachments];
  v21 = [v20 objectAtIndexedSubscript:0];

  if (!v21)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v22 = v0[44];
  [v21 setSourceAlphaBlendFactor:1];

  v23 = [v22 colorAttachments];
  v24 = [v23 objectAtIndexedSubscript:0];

  if (!v24)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v25 = v0[44];
  [v24 setDestinationRGBBlendFactor:5];

  v26 = [v25 colorAttachments];
  v27 = [v26 objectAtIndexedSubscript:0];

  if (!v27)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v28 = v0[53];
  v29 = v0[45];
  [v27 setDestinationAlphaBlendFactor:5];

  v30 = v0[1];
  v31 = v0[44];

  v30(v31);
}

uint64_t sub_10088BECC(uint64_t a1)
{
  v2 = v1[44];
  v3 = v1[45];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_10088BF4C(uint64_t a1)
{
  v2 = v1[53];
  v4 = v1[44];
  v3 = v1[45];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

unint64_t sub_10088BFEC()
{
  result = qword_1011A6468;
  if (!qword_1011A6468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A6468);
  }

  return result;
}

uint64_t sub_10088C040()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1012197F0);
  sub_1000060E4(v0, qword_1012197F0);
  return Logger.init(subsystem:category:)();
}

id MetalCenter.makeCommandBuffer()(int a1, id a2)
{
  result = [a2 commandBuffer];
  if (!result)
  {
    sub_10088002C();
    swift_allocError();
    *v3 = 4;
    swift_willThrow();
    return 0;
  }

  return result;
}

id MetalCenter.makeRenderCommandEncoder(with:descriptor:)(void *a1, uint64_t a2)
{
  result = [a1 renderCommandEncoderWithDescriptor:a2];
  if (!result)
  {
    sub_10088002C();
    swift_allocError();
    *v3 = 5;
    swift_willThrow();
    return 0;
  }

  return result;
}

id MetalCenter.makeLibrary(bundle:)(void *a1, void *a2)
{
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    if (qword_1011A4DA0 != -1)
    {
      swift_once();
    }

    v4 = qword_1012197E8;
  }

  v10 = 0;
  v5 = a1;
  v6 = [a2 newDefaultLibraryWithBundle:v4 error:&v10];
  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

id MetalCenter.makeComputeCommandEncoder(with:)(void *a1)
{
  result = [a1 computeCommandEncoder];
  if (!result)
  {
    sub_10088002C();
    swift_allocError();
    *v2 = 5;
    swift_willThrow();
    return 0;
  }

  return result;
}

id MetalCenter.makeTexture(descriptor:)(uint64_t a1, id a2)
{
  result = [a2 newTextureWithDescriptor:a1];
  if (!result)
  {
    sub_10088002C();
    swift_allocError();
    *v3 = 6;
    swift_willThrow();
    return 0;
  }

  return result;
}

uint64_t sub_10088C3E4()
{
  v1 = MTLCreateSystemDefaultDevice();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 newCommandQueue];
    if (v3)
    {
      v4 = v3;
      v5 = [objc_allocWithZone(MTKTextureLoader) initWithDevice:v2];
      v6 = *(v0 + 8);

      return v6(v2, v4, v5);
    }

    sub_10088002C();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10088002C();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
  }

  v10 = *(v0 + 8);

  return v10();
}

__n128 sub_10088C530(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

unint64_t sub_10088C568()
{
  result = qword_1011A6478;
  if (!qword_1011A6478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A6478);
  }

  return result;
}

uint64_t sub_10088C5BC()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_10088C64C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x726F6C6F63;
  if (a1 != 5)
  {
    v5 = 0x6461725F72756C62;
    v4 = 0xEB00000000737569;
  }

  v6 = 0x656C616373;
  if (a1 != 3)
  {
    v6 = 0x6168706C61;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = 0xE500000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x705F73706F7473;
  if (a1 != 1)
  {
    v8 = 0x74616C736E617274;
    v7 = 0xEB000000006E6F69;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 0x615F73706F7473;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v11 = 0xE700000000000000;
      if (v9 != 0x615F73706F7473)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if (a2 == 1)
    {
      v11 = 0xE700000000000000;
      if (v9 != 0x705F73706F7473)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v12 = 0x74616C736E617274;
    v13 = 7237481;
  }

  else
  {
    if (a2 <= 4u)
    {
      v11 = 0xE500000000000000;
      if (a2 == 3)
      {
        if (v9 != 0x656C616373)
        {
          goto LABEL_39;
        }
      }

      else if (v9 != 0x6168706C61)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if (a2 == 5)
    {
      v11 = 0xE500000000000000;
      if (v9 != 0x726F6C6F63)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v12 = 0x6461725F72756C62;
    v13 = 7566697;
  }

  v11 = v13 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
  if (v9 != v12)
  {
LABEL_39:
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_40;
  }

LABEL_37:
  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v14 = 1;
LABEL_40:

  return v14 & 1;
}

Swift::Int sub_10088C874(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void *sub_10088C99C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  sub_10088DFA8(0, v6, 0);
  result = _swiftEmptyArrayStorage;
  v28 = v4;
  v26 = a1;
  v27 = a2;
  if (v6)
  {
    v8 = (a1 + 32);
    v9 = (a2 + 32);
    v10 = v6;
    v11 = v5;
    v12 = v5;
    while (v4)
    {
      if (!v11)
      {
        goto LABEL_23;
      }

      v13 = *v8;
      v14 = *v9;
      v29 = result;
      v16 = result[2];
      v15 = result[3];
      if (v16 >= v15 >> 1)
      {
        v25 = v12;
        sub_10088DFA8((v15 > 1), v16 + 1, 1);
        v12 = v25;
        result = v29;
      }

      result[2] = v16 + 1;
      v17 = &result[v16];
      --v11;
      *(v17 + 8) = v13;
      *(v17 + 9) = v14;
      --v4;
      ++v9;
      ++v8;
      if (!--v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = v5;
LABEL_13:
  if (v28 > v12)
  {
    while (v6 < v28)
    {
      v18 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_25;
      }

      if (v12 != v6)
      {
        if (v6 >= v12)
        {
          goto LABEL_26;
        }

        v19 = *(v26 + 32 + 4 * v6);
        v20 = *(v27 + 32 + 4 * v6);
        v30 = result;
        v22 = result[2];
        v21 = result[3];
        if (v22 >= v21 >> 1)
        {
          v24 = v12;
          sub_10088DFA8((v21 > 1), v22 + 1, 1);
          v12 = v24;
          result = v30;
        }

        result[2] = v22 + 1;
        v23 = &result[v22];
        *(v23 + 8) = v19;
        *(v23 + 9) = v20;
        ++v6;
        if (v18 != v28)
        {
          continue;
        }
      }

      return result;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

void *Stage.prototype.getter(uint64_t a1)
{
  swift_getKeyPath();
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_10088DF88(0, v2, 0);
    v3 = a1 + 48;
    do
    {

      swift_getAtKeyPath();

      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_10088DF88((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      _swiftEmptyArrayStorage[v5 + 4] = v7;
      v3 += 64;
      --v2;
    }

    while (v2);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10088CCDC()
{
  if (*v0)
  {
    return 0x657474656C6170;
  }

  else
  {
    return 1936290409;
  }
}

void sub_10088CD10(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1936290409 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x657474656C6170 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10088CDEC(uint64_t a1)
{
  v2 = sub_10088E7AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10088CE28(uint64_t a1)
{
  v2 = sub_10088E7AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Stage.encode(to:)(void *a1, uint64_t a2)
{
  v5 = sub_10010FC20(&qword_1011A6590, &qword_100EE8F70);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10[-v7];
  sub_10000954C(a1, a1[3]);
  sub_10088E7AC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = a2;
  v10[7] = 0;
  sub_10010FC20(&qword_1011A65A0, &qword_100EE8F78);
  sub_10088F784(&qword_1011A65A8, &protocol conformance descriptor for <A> FixedLengthCollection<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10[6] = 1;
    sub_10088E8A8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10088D040@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10088E8FC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

double Layer.init<A>(stops:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for GradientStop(0);
  v9 = sub_10088AED8(a1, v8, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  *a4 = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(a4 + 8) = _D0;
  *(a4 + 16) = 1065353216;
  result = 0.00781250185;
  *(a4 + 32) = xmmword_100EE5C30;
  *(a4 + 48) = 0;
  *(a4 + 56) = v9;
  return result;
}

double sub_10088D220(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

unint64_t sub_10088D33C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10088EB00(*a1);
  *a2 = result;
  return result;
}

void sub_10088D36C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x615F73706F7473;
  v5 = 0xE500000000000000;
  v6 = 0x726F6C6F63;
  if (v2 != 5)
  {
    v6 = 0x6461725F72756C62;
    v5 = 0xEB00000000737569;
  }

  v7 = 0x656C616373;
  if (v2 != 3)
  {
    v7 = 0x6168706C61;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE500000000000000;
  }

  v8 = 0xE700000000000000;
  v9 = 0x705F73706F7473;
  if (v2 != 1)
  {
    v9 = 0x74616C736E617274;
    v8 = 0xEB000000006E6F69;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_10088D450()
{
  v1 = *v0;
  v2 = 0x615F73706F7473;
  v3 = 0x726F6C6F63;
  if (v1 != 5)
  {
    v3 = 0x6461725F72756C62;
  }

  v4 = 0x656C616373;
  if (v1 != 3)
  {
    v4 = 0x6168706C61;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x705F73706F7473;
  if (v1 != 1)
  {
    v5 = 0x74616C736E617274;
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

unint64_t sub_10088D530@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10088EB00(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10088D558(uint64_t a1)
{
  v2 = sub_10088EF8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10088D594(uint64_t a1)
{
  v2 = sub_10088EF8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double Layer.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10088EB4C(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t Layer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10010FC20(&qword_1011A65C8, &qword_100EE8F80);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v26 - v7;
  sub_10000954C(a1, a1[3]);
  sub_10088EF8C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v30 = *v3;
  v32 = 2;
  sub_10010FC20(&qword_1011A5668, &qword_100EE6E30);
  sub_100020674(&qword_1011A5670, &qword_1011A5668, &qword_100EE6E30, &protocol conformance descriptor for SIMD2<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    *&v30 = *(v3 + 8);
    v32 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v30) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v30 = *(v3 + 32);
    v32 = 5;
    sub_10010FC20(&qword_1011A5650, &qword_100EE6E28);
    sub_100020674(&qword_1011A5658, &qword_1011A5650, &qword_100EE6E28, &protocol conformance descriptor for SIMD3<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v30) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v28 = 0;
    v10 = *(v3 + 56);
    v11 = _swiftEmptyArrayStorage;
    v29 = *(v10 + 16);
    v27 = v10;
    if (v29)
    {
      *&v30 = _swiftEmptyArrayStorage;
      sub_10088DFC8(0, v29, 0);
      v12 = v29;
      v11 = v30;
      v13 = (v10 + 32);
      do
      {
        v14 = *v13;
        *&v30 = v11;
        v16 = v11[2];
        v15 = v11[3];
        if (v16 >= v15 >> 1)
        {
          v31 = v14;
          sub_10088DFC8((v15 > 1), v16 + 1, 1);
          v14 = v31;
          v11 = v30;
        }

        v11[2] = v16 + 1;
        *(v11 + v16 + 8) = v14;
        v13 += 2;
        --v12;
      }

      while (v12);
    }

    *&v30 = v11;
    v32 = 0;
    v17 = sub_10010FC20(&qword_1011A65D8, &qword_100EE8F88);
    sub_10088F718(&qword_1011A65E0, &protocol witness table for Float, &protocol conformance descriptor for <A> [A]);
    v18 = v28;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v18)
    {

      v19 = _swiftEmptyArrayStorage;
      if (v29)
      {
        v28 = v17;
        *&v30 = _swiftEmptyArrayStorage;
        sub_10088DFC8(0, v29, 0);
        v20 = v29;
        v19 = v30;
        v21 = (v27 + 36);
        do
        {
          v22 = *v21;
          *&v30 = v19;
          v24 = v19[2];
          v23 = v19[3];
          v25 = v24 + 1;
          if (v24 >= v23 >> 1)
          {
            v29 = v20;
            LODWORD(v27) = v22;
            sub_10088DFC8((v23 > 1), v24 + 1, 1);
            v22 = v27;
            v25 = v24 + 1;
            v20 = v29;
            v19 = v30;
          }

          v19[2] = v25;
          *(v19 + v24 + 8) = v22;
          v21 += 2;
          --v20;
        }

        while (v20);
      }

      *&v30 = v19;
      v32 = 1;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10088DACC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return _s7Panache5LayerV2eeoiySbAC_ACtFZ_0(v7, v8) & 1;
}

uint64_t static Stage.* infix(_:_:)(uint64_t a1, float a2)
{
  v2 = a1;
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = a1 + 32;

    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = *(v5 + v6 + 16);
      v16[0] = *(v5 + v6);
      v16[1] = v8;
      v9 = *(v5 + v6 + 48);
      v17 = *(v5 + v6 + 32);
      v18 = v9;
      sub_10088EFE0(v16, v15, COERCE_DOUBLE(__PAIR64__(DWORD1(v17), LODWORD(a2))));
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10088E5F0(v2);
        v2 = result;
      }

      if (v7 >= *(v2 + 16))
      {
        break;
      }

      ++v7;
      v11 = (v2 + v6);
      v13 = v15[2];
      v12 = v15[3];
      v14 = v15[1];
      v11[2] = v15[0];
      v11[3] = v14;
      v11[4] = v13;
      v11[5] = v12;

      v6 += 64;
      if (v3 == v7)
      {
        return v2;
      }
    }

    __break(1u);
  }

  else
  {

    return v2;
  }

  return result;
}

double static Layer.* infix(_:_:)@<D0>(char *a1@<X0>, _OWORD *a2@<X8>, double a3@<D0>)
{
  sub_10088EFE0(a1, v7, a3);
  v4 = v7[1];
  *a2 = v7[0];
  a2[1] = v4;
  result = *&v8;
  v6 = v9;
  a2[2] = v8;
  a2[3] = v6;
  return result;
}

void static Stage.+ infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    v5 = a2 + 32;
    v6 = *(a2 + 16);

    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = *(v4 + v7 + 16);
      v18[0] = *(v4 + v7);
      v18[1] = v9;
      v10 = *(v4 + v7 + 48);
      v18[2] = *(v4 + v7 + 32);
      v18[3] = v10;
      if (v6 == v8)
      {
        break;
      }

      v11 = *(v5 + v7 + 16);
      v19[0] = *(v5 + v7);
      v19[1] = v11;
      v12 = *(v5 + v7 + 48);
      v19[2] = *(v5 + v7 + 32);
      v19[3] = v12;
      sub_10088F10C(v18, v19, v17);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_10088E5F0(v2);
      }

      if (v8 >= *(v2 + 2))
      {
        goto LABEL_11;
      }

      ++v8;
      v13 = &v2[v7];
      v15 = v17[2];
      v14 = v17[3];
      v16 = v17[1];
      *(v13 + 2) = v17[0];
      *(v13 + 3) = v16;
      *(v13 + 4) = v15;
      *(v13 + 5) = v14;

      v7 += 64;
      if (v3 == v8)
      {
        return;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
  }
}

double static Layer.+ infix(_:_:)@<D0>(char *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_10088F10C(a1, a2, v7);
  v4 = v7[1];
  *a3 = v7[0];
  a3[1] = v4;
  result = *&v8;
  v6 = v9;
  a3[2] = v8;
  a3[3] = v6;
  return result;
}

uint64_t sub_10088DDB4(uint64_t a1)
{
  v2 = sub_10088F268();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10088DDF0(uint64_t a1)
{
  v2 = sub_10088F268();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PaletteWash.encode(to:)(void *a1)
{
  v2 = sub_10010FC20(&qword_1011A65E8, &qword_100EE8F90);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v7 - v4;
  sub_10000954C(a1, a1[3]);
  sub_10088F268();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

void *sub_10088DF68(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10088DFE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10088DF88(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10088E1D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10088DFA8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10088E2DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10088DFC8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10088E3E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10088DFE8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10010FC20(&unk_1011A4F90, "ZA\v");
  v10 = *(sub_10010FC20(&qword_1011A4F88, "ZA\v") - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10010FC20(&qword_1011A4F88, "ZA\v") - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10088E1D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011A6678, &qword_100EE94B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10088E2DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011A6638, &qword_100EE9488);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10088E3E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011A6648, &qword_100EE9498);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10088E4E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011A6640, &qword_100EE9490);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t _s7Panache5LayerV2eeoiySbAC_ACtFZ_0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 56);
  v3 = *(a2 + 56);
  v4 = v2[2];
  if (*&v4 != *&v3[2])
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_10:
    v9 = vceq_f32(*result, *a2);
    if (v9.i32[0] & v9.i32[1])
    {
      v10 = vceq_f32(*(result + 8), *(a2 + 8));
      if (v10.i32[0] & v10.i32[1])
      {
        v11 = 0;
        v12 = vmovn_s32(vceqq_f32(*(result + 32), *(a2 + 32)));
        if ((v12.i8[0] & 1) == 0 || (v12.i8[2] & 1) == 0 || (v12.i8[4] & 1) == 0)
        {
          return v11;
        }

        if (*(result + 48) == *(a2 + 48))
        {
          return *(result + 16) == *(a2 + 16);
        }
      }
    }

    return 0;
  }

  v6 = v2 + 4;
  v7 = v3 + 4;
  while (v4)
  {
    v8 = vceq_f32(*v6, *v7);
    if ((v8.i32[0] & v8.i32[1] & 1) == 0)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--*&v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s7Panache5StageV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v9 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = v3[1];
        v11[0] = *v3;
        v11[1] = v5;
        v6 = v3[3];
        v11[2] = v3[2];
        v11[3] = v6;
        v7 = v4[1];
        v12[0] = *v4;
        v12[1] = v7;
        v8 = v4[3];
        v12[2] = v4[2];
        v12[3] = v8;
        v9 = _s7Panache5LayerV2eeoiySbAC_ACtFZ_0(v11, v12);
        if ((v9 & 1) == 0)
        {
          break;
        }

        v3 += 4;
        v4 += 4;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

unint64_t sub_10088E7AC()
{
  result = qword_1011A6598;
  if (!qword_1011A6598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A6598);
  }

  return result;
}

unint64_t sub_10088E800()
{
  result = qword_1011A65B0;
  if (!qword_1011A65B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A65B0);
  }

  return result;
}

unint64_t sub_10088E854()
{
  result = qword_1011A65B8;
  if (!qword_1011A65B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A65B8);
  }

  return result;
}

unint64_t sub_10088E8A8()
{
  result = qword_1011A65C0;
  if (!qword_1011A65C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A65C0);
  }

  return result;
}

uint64_t sub_10088E8FC(void *a1)
{
  v2 = sub_10010FC20(&qword_1011A6660, &qword_100EE94A8);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v8[-v4];
  sub_10000954C(a1, a1[3]);
  sub_10088E7AC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_10010FC20(&qword_1011A65A0, &qword_100EE8F78);
  v8[7] = 0;
  sub_10088F784(&qword_1011A6668, &protocol conformance descriptor for <A> FixedLengthCollection<A>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v6 = v9;
  v8[6] = 1;
  sub_10088F7FC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_10000959C(a1);
  return v6;
}

unint64_t sub_10088EB00(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C4020, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10088EB4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10010FC20(&qword_1011A6650, &qword_100EE94A0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v19 - v7;
  sub_10000954C(a1, a1[3]);
  sub_10088EF8C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000959C(a1);
  }

  sub_10010FC20(&qword_1011A5668, &qword_100EE6E30);
  v23 = 2;
  sub_100020674(&qword_1011A58A0, &qword_1011A5668, &qword_100EE6E30, &protocol conformance descriptor for SIMD2<A>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v22;
  v23 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = v22;
  LOBYTE(v22) = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  sub_10010FC20(&qword_1011A5650, &qword_100EE6E28);
  v23 = 5;
  sub_100020674(&qword_1011A5898, &qword_1011A5650, &qword_100EE6E28, &protocol conformance descriptor for SIMD3<A>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v22;
  sub_10010FC20(&qword_1011A65D8, &qword_100EE8F88);
  v23 = 0;
  sub_10088F718(&qword_1011A6658, &protocol witness table for Float, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v22;
  v23 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v13 = v20;
  v14 = v22;
  LOBYTE(v22) = 6;
  KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  v17 = sub_10088C99C(v13, v14);

  (*(v6 + 8))(v8, v5);
  result = sub_10000959C(a1);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;
  *(a2 + 32) = v21;
  *(a2 + 48) = v16;
  *(a2 + 56) = v17;
  return result;
}

unint64_t sub_10088EF8C()
{
  result = qword_1011A65D0;
  if (!qword_1011A65D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A65D0);
  }

  return result;
}

char *sub_10088EFE0@<X0>(char *result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = result;
  v5 = *(result + 7);
  v6 = *(v5 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v18 = a3;
    result = sub_10088DFA8(0, v6, 0);
    a3 = v18;
    v7 = _swiftEmptyArrayStorage;
    v8 = (v5 + 32);
    do
    {
      v9 = *v8;
      v19 = v7;
      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        result = sub_10088DFA8((v10 > 1), v11 + 1, 1);
        a3 = v18;
        v7 = v19;
      }

      v7[2] = v11 + 1;
      v7[v11 + 4] = vmul_n_f32(v9, *&a3);
      ++v8;
      --v6;
    }

    while (v6);
  }

  v12 = vdupq_lane_s32(*&a3, 0).u64[0];
  v13 = vmul_f32(*v3, v12);
  v14 = vmul_f32(*(v3 + 8), v12);
  v15 = *(v3 + 48) * *&a3;
  v16 = *(v3 + 32);
  *&v17 = vmulq_n_f32(v16, *&a3).u64[0];
  *(&v17 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(*&a3, v16, 2));
  v16.f32[0] = *(v3 + 16) * *&a3;
  *a2 = v13;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16.i32[0];
  *(a2 + 32) = v17;
  *(a2 + 48) = v15;
  *(a2 + 56) = v7;
  return result;
}

char *sub_10088F10C@<X0>(char *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  v6 = *(result + 7);
  v7 = *(v6 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    result = sub_10088DFA8(0, v7, 0);
    v8 = _swiftEmptyArrayStorage;
    v11 = *(a2 + 56);
    v12 = v11 + 4;
    v13 = v11[2];
    v14 = (v6 + 36);
    while (v13)
    {
      LODWORD(v9) = *(v14 - 1);
      LODWORD(v10) = *v14;
      v15 = *v12;
      v24 = v8;
      v17 = v8[2];
      v16 = v8[3];
      if (v17 >= v16 >> 1)
      {
        v22 = v10;
        v23 = v9;
        result = sub_10088DFA8((v16 > 1), v17 + 1, 1);
        v10 = v22;
        v9 = v23;
        v8 = v24;
      }

      DWORD1(v9) = v10;
      *&v9 = vadd_f32(*&v9, v15);
      v8[2] = v17 + 1;
      v8[v17 + 4] = v9;
      --*&v13;
      ++v12;
      v14 += 2;
      if (!--v7)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    v18 = vadd_f32(*(v4 + 8), *(a2 + 8));
    v19 = vaddq_f32(*(v4 + 32), *(a2 + 32));
    v19.i32[3] = 0;
    v20 = *(v4 + 48) + *(a2 + 48);
    v21 = *(v4 + 16) + *(a2 + 16);
    *a3 = vadd_f32(*v4, *a2);
    *(a3 + 8) = v18;
    *(a3 + 16) = v21;
    *(a3 + 32) = v19;
    *(a3 + 48) = v20;
    *(a3 + 56) = v8;
  }

  return result;
}

unint64_t sub_10088F268()
{
  result = qword_1011A65F0;
  if (!qword_1011A65F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A65F0);
  }

  return result;
}

uint64_t sub_10088F2C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_10088F310(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10088F35C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10088F370(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_10088F3B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10088F45C()
{
  result = qword_1011A65F8;
  if (!qword_1011A65F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A65F8);
  }

  return result;
}

unint64_t sub_10088F4B4()
{
  result = qword_1011A6600;
  if (!qword_1011A6600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A6600);
  }

  return result;
}

unint64_t sub_10088F50C()
{
  result = qword_1011A6608;
  if (!qword_1011A6608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A6608);
  }

  return result;
}

unint64_t sub_10088F564()
{
  result = qword_1011A6610;
  if (!qword_1011A6610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A6610);
  }

  return result;
}

unint64_t sub_10088F5BC()
{
  result = qword_1011A6618;
  if (!qword_1011A6618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A6618);
  }

  return result;
}

unint64_t sub_10088F614()
{
  result = qword_1011A6620;
  if (!qword_1011A6620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A6620);
  }

  return result;
}

unint64_t sub_10088F66C()
{
  result = qword_1011A6628;
  if (!qword_1011A6628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A6628);
  }

  return result;
}

unint64_t sub_10088F6C4()
{
  result = qword_1011A6630;
  if (!qword_1011A6630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A6630);
  }

  return result;
}

uint64_t sub_10088F718(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(&qword_1011A65D8, &qword_100EE8F88);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10088F784(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(&qword_1011A65A0, &qword_100EE8F78);
    sub_10088E800();
    sub_10088E854();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10088F7FC()
{
  result = qword_1011A6670;
  if (!qword_1011A6670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A6670);
  }

  return result;
}

void sub_10089158C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MarqueeView.m" lineNumber:260 description:@"viewForContentSize must be a subview of MPUMarqueeView's contentView."];
}

id sub_100891600()
{
  result = sub_100891620();
  qword_101219808 = result;
  return result;
}

id sub_100891620()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v54 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20) - 8);
  __chkstk_darwin();
  v55 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v50 - v5;
  __chkstk_darwin();
  v8 = &v50 - v7;
  __chkstk_darwin();
  v10 = &v50 - v9;
  __chkstk_darwin();
  v12 = &v50 - v11;
  v56 = sub_10001E30C(_swiftEmptyArrayStorage);
  sub_10010FC20(&qword_1011A77F8, &unk_100EEC510);
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v58 = *(v3 + 72);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100EBE260;
  v60 = v13;
  v53 = v14;
  v15 = v14 + v13;
  v16 = objc_opt_self();
  v17 = [v16 mainBundle];
  v18 = [v17 resourceURL];

  if (v18)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = *(v1 + 56);
    v20 = v12;
    v21 = 0;
  }

  else
  {
    v19 = *(v1 + 56);
    v20 = v12;
    v21 = 1;
  }

  v59 = v19;
  v19(v20, v21, 1, v0);
  v22 = v1;
  sub_100027A78(v12, v15);
  type metadata accessor for BundleFinder();
  v23 = [v16 bundleForClass:swift_getObjCClassFromMetadata()];
  v24 = [v23 resourceURL];

  if (v24)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = v55;
  v51 = v22;
  v27 = v10;
  v28 = v10;
  v29 = v59;
  v59(v27, v25, 1, v0);
  v30 = v58;
  sub_100027A78(v28, v15 + v58);
  v31 = [v16 mainBundle];
  v32 = [v31 bundleURL];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = (v22 + 7);
  v29(v15 + 2 * v30, 0, 1, v0);
  v61 = v56;
  sub_10001ED14(v53);
  v33 = v61;
  v34 = v61[2];
  if (v34)
  {
    v35 = 0;
    v36 = v60 + v61;
    v60 = (v51 + 6);
    v56 = (v51 + 1);
    v51 += 4;
    v52 = "AC12BundleFinder";
    v53 = v34;
    while (v35 < v33[2])
    {
      sub_1000089F8(v36, v6, &qword_1011A77F0, &unk_100EEAA20);
      v37 = *v60;
      if ((*v60)(v6, 1, v0) == 1)
      {
        sub_100028B08(v6);
        v38 = 1;
      }

      else
      {
        URL.appendingPathComponent(_:)();
        (*v56)(v6, v0);
        v38 = 0;
      }

      v59(v8, v38, 1, v0);
      sub_1000089F8(v8, v26, &qword_1011A77F0, &unk_100EEAA20);
      if (v37(v26, 1, v0) == 1)
      {
        sub_100028B08(v8);
      }

      else
      {
        v39 = v33;
        v40 = v8;
        v41 = v6;
        v42 = v54;
        (*v51)(v54, v26, v0);
        v43 = objc_allocWithZone(NSBundle);
        URL._bridgeToObjectiveC()(v44);
        v46 = v45;
        v47 = [v43 initWithURL:v45];

        v26 = v55;
        v48 = v42;
        v6 = v41;
        v8 = v40;
        v33 = v39;
        v34 = v53;
        (*v56)(v48, v0);
        sub_100028B08(v8);
        if (v47)
        {

          return v47;
        }
      }

      ++v35;
      v36 += v58;
      if (v34 == v35)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

LABEL_19:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double variable initialization expression of AnyAction.displayConfiguration@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_100EBCEE0;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

unint64_t variable initialization expression of ArtworkVideoReportingController.signpostsForIndex(uint64_t a1, uint64_t a2)
{
  swift_getTupleTypeMetadata2();
  v4 = static Array._allocateUninitialized(_:)();
  v5 = sub_10003B32C(v4, a1, &type metadata for ComponentRenderEventSignposts, a2);

  return v5;
}

uint64_t sub_100891DA4(uint64_t *a1, uint64_t *a2)
{
  sub_10010FC20(a1, a2);
  v2 = swift_allocObject();
  *(v2 + 16) = [objc_opt_self() standardUserDefaults];
  return v2;
}

id variable initialization expression of MetricsReportingController.carFocusedMetricsController()
{
  v0 = objc_allocWithZone(SSMetricsController);

  return [v0 init];
}

uint64_t variable initialization expression of MetricsReportingController.carMetricsReporter()
{
  type metadata accessor for CarNowPlayingMetrics.Reporter();

  return swift_allocObject();
}

double variable initialization expression of ApplicationCapabilities.ratingWarning@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0x7FFFFFFFFFFFFFFFLL;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

id variable initialization expression of ApplicationCapabilities.subscriptionStatus()
{
  v0 = [objc_opt_self() sharedController];
  v1 = [v0 musicSubscriptionStatus];

  return v1;
}

uint64_t variable initialization expression of ApplicationCapabilities.Controller.storeBag()
{
  if (qword_1011A68E8 != -1)
  {
    swift_once();
  }

  sub_10010FC20(&qword_1011A9F70, &qword_100EE9590);
  UnfairLock.locked<A>(_:)(sub_10000E338);
  return v1;
}

id variable initialization expression of BackgroundRefreshController.cloudClient()
{
  v0 = objc_allocWithZone(ICCloudClient);

  return [v0 init];
}

uint64_t variable initialization expression of BagProvider.durableObservers()
{
  v0 = type metadata accessor for BagProvider.Observer();

  return WeakArray.init(_:)(_swiftEmptyArrayStorage, v0);
}

uint64_t variable initialization expression of BagProvider.logger()
{
  if (qword_1011A6930 != -1)
  {
    swift_once();
  }

  v0 = static OS_os_log.musicBag;

  return Logger.init(_:)();
}

id variable initialization expression of BagProvider.retry()
{
  v0 = objc_allocWithZone(type metadata accessor for BagProvider.Retry());

  return [v0 init];
}

uint64_t variable initialization expression of Gliss.Coordinator.queuedItem@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 56);

  return v4(a2, 1, 1, AssociatedTypeWitness);
}

uint64_t variable initialization expression of Gliss.Transition.animations(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Gliss.Transition(255, a1, a2, a4);
  swift_getFunctionTypeMetadata1();

  return static Array._allocateUninitialized(_:)();
}

uint64_t variable initialization expression of Gliss.Transition.completions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Gliss.Transition(255, a1, a2, a4);
  swift_getFunctionTypeMetadata2();

  return static Array._allocateUninitialized(_:)();
}

double variable initialization expression of Gliss.Transition.gestureState@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 2;
  return result;
}

uint64_t variable initialization expression of CloudLibrary.StatusObserver._hasDisregardedBanner()
{
  v4 = 2;
  v3[0] = 0xD000000000000014;
  v3[1] = 0x8000000100E5A600;
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_10000988C();
  UserDefault.init(wrappedValue:defaults:key:)(&v4, v0, v3, &type metadata for String, &type metadata for Bool, v1, &v5);
  return v5;
}

double variable initialization expression of CloudLibrary.StatusObserver.capabilitiesController()
{
  if (qword_1011A6820 != -1)
  {
    swift_once();
  }

  return result;
}

void variable initialization expression of MusicLibrary.ActionableStateController.itemStateSubscriptions()
{
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {

    sub_10089DD70(_swiftEmptyArrayStorage);
  }
}

id variable initialization expression of Library.Menu.Request.librarySource()
{
  result = [objc_opt_self() deviceMediaLibrary];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_100892550()
{
  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v1 = result;
    v2 = [result hasProperNetworkConditionsToShowCloudMedia];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double variable initialization expression of PlaybackController.nowPlayingPresentationDescriptor@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double variable initialization expression of PlaybackTimeObserver.durationSnapshot@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 2;
  return result;
}

id variable initialization expression of Player._path()
{
  v0 = [objc_opt_self() systemRoute];
  v1 = [v0 isDeviceRoute];
  v2 = objc_opt_self();
  if (v1)
  {
    v3 = v2;
    if (qword_1011A6A50 != -1)
    {
      swift_once();
    }

    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 systemMusicPathWithRoute:v0 playerID:v4];
  }

  else
  {
    v5 = [v2 pathWithRoute:v0 bundleID:0 playerID:0];
  }

  return v5;
}

uint64_t variable initialization expression of Player.nowPlayingConfiguration()
{
  if (qword_1011A6A88 != -1)
  {
    swift_once();
  }

  v0 = qword_1011ACFD0;
  v1 = qword_1011ACFD0;
  return v0;
}

uint64_t _s9MusicCore11BagProviderC4lock33_D1F028703756EAFCB4E62A24E619467FLL0A9Utilities10UnfairLockCvpfi_0()
{
  type metadata accessor for UnfairLock();
  swift_allocObject();
  return UnfairLock.init()();
}

id sub_100892808()
{
  if (qword_1011A6A88 != -1)
  {
    swift_once();
  }

  v1 = qword_1011ACFD0;

  return v1;
}

uint64_t variable initialization expression of MusicItemState._playabilityStatus@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for MusicPlayer.PlayabilityStatus.playable(_:);
  v3 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t variable initialization expression of MusicItemState._previewCapabilityStatus@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for MusicPlayer.PreviewCapabilityStatus.UnpreviewableReason.notSupported(_:);
  v3 = type metadata accessor for MusicPlayer.PreviewCapabilityStatus.UnpreviewableReason();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = enum case for MusicPlayer.PreviewCapabilityStatus.unpreviewable(_:);
  v5 = type metadata accessor for MusicPlayer.PreviewCapabilityStatus();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1, v4, v5);
}

id variable initialization expression of PlaylistCovers.ArtworkDataSource.cache()
{
  v0 = objc_allocWithZone(NSCache);

  return [v0 init];
}

double variable initialization expression of PresentationSource.position@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *&result = 255;
  *(a1 + 40) = xmmword_100EBCEF0;
  return result;
}

uint64_t variable initialization expression of RequestResponse.Controller.enqueuedRevisionCompletions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RequestResponse.Controller(255, a1, a2, a4);
  type metadata accessor for RequestResponse.Revision(255, a1, a2, v6);
  swift_getFunctionTypeMetadata2();

  return static Array._allocateUninitialized(_:)();
}

unint64_t variable initialization expression of RequestResponse.Controller.revisionIDCompletionsMap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RequestResponse.Controller(255, a1, a2, a4);
  type metadata accessor for RequestResponse.Revision(255, a1, a2, v6);
  swift_getFunctionTypeMetadata2();
  v7 = type metadata accessor for Array();
  swift_getTupleTypeMetadata2();
  v8 = static Array._allocateUninitialized(_:)();
  v9 = sub_10003B32C(v8, &type metadata for Int, v7, &protocol witness table for Int);

  return v9;
}

double variable initialization expression of GroupActivitiesManager._reaction@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_100892C74@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t variable initialization expression of ExplicitRestrictionsController.symbol()
{
  if (qword_1011A7130 != -1)
  {
    swift_once();
  }

  v0 = static ExplicitRestrictionsController.symbols;

  return v0;
}

uint64_t variable initialization expression of OptimisticValue.transaction@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v5 = type metadata accessor for OptimisticValue.Transaction(0, a1, a3, a4);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 1, 1, v5);
}

uint64_t sub_100892E14(uint64_t a1)
{
  v2 = sub_1008948F8(&qword_1011A7650, type metadata accessor for MPCPlayerRequestError, &unk_100EEA170);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100892E80(uint64_t a1)
{
  v2 = sub_1008948F8(&qword_1011A7650, type metadata accessor for MPCPlayerRequestError, &unk_100EEA170);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100892EEC(uint64_t a1)
{
  v2 = sub_1008948F8(&unk_1011ACC90, type metadata accessor for MPCPlayerRequestError, &unk_100EEA900);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

Swift::Int sub_100892FFC(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100893064(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_1008930E0(uint64_t a1)
{
  v2 = sub_1008948F8(&qword_1011A7960, type metadata accessor for MPCPlayerEnqueueError, &unk_100EEBA2C);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10089314C(uint64_t a1)
{
  v2 = sub_1008948F8(&qword_1011A7960, type metadata accessor for MPCPlayerEnqueueError, &unk_100EEBA2C);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1008931B8(void *a1, uint64_t a2)
{
  v4 = sub_1008948F8(&qword_1011A7960, type metadata accessor for MPCPlayerEnqueueError, &unk_100EEBA2C);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100893248(uint64_t a1, uint64_t a2)
{
  v4 = sub_1008948F8(&qword_1011A7960, type metadata accessor for MPCPlayerEnqueueError, &unk_100EEBA2C);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1008932D4(uint64_t a1)
{
  v2 = sub_1008948F8(&unk_1011ACC90, type metadata accessor for MPCPlayerRequestError, &unk_100EEA900);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100893340(uint64_t a1)
{
  v2 = sub_1008948F8(&unk_1011ACC90, type metadata accessor for MPCPlayerRequestError, &unk_100EEA900);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1008933AC(void *a1, uint64_t a2)
{
  v4 = sub_1008948F8(&unk_1011ACC90, type metadata accessor for MPCPlayerRequestError, &unk_100EEA900);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10089343C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1008948F8(&unk_1011ACC90, type metadata accessor for MPCPlayerRequestError, &unk_100EEA900);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1008934C8(uint64_t a1)
{
  v2 = sub_1008948F8(&qword_1011A79A0, type metadata accessor for MPCError, &unk_100EEB894);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100893534(uint64_t a1)
{
  v2 = sub_1008948F8(&qword_1011A79A0, type metadata accessor for MPCError, &unk_100EEB894);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1008935A0(void *a1, uint64_t a2)
{
  v4 = sub_1008948F8(&qword_1011A79A0, type metadata accessor for MPCError, &unk_100EEB894);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100893630(uint64_t a1, uint64_t a2)
{
  v4 = sub_1008948F8(&qword_1011A79A0, type metadata accessor for MPCError, &unk_100EEB894);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1008936BC(uint64_t a1)
{
  v2 = sub_1008948F8(&qword_1011A7950, type metadata accessor for MPCMusicBehaviorError, &unk_100EEB71C);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100893728(uint64_t a1)
{
  v2 = sub_1008948F8(&qword_1011A7950, type metadata accessor for MPCMusicBehaviorError, &unk_100EEB71C);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100893794(void *a1, uint64_t a2)
{
  v4 = sub_1008948F8(&qword_1011A7950, type metadata accessor for MPCMusicBehaviorError, &unk_100EEB71C);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100893824(uint64_t a1, uint64_t a2)
{
  v4 = sub_1008948F8(&qword_1011A7950, type metadata accessor for MPCMusicBehaviorError, &unk_100EEB71C);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1008938A0(uint64_t a1)
{
  sub_1008948F8(&qword_1011A79E0, _s3__C25OpenExternalURLOptionsKeyVMa_0, &unk_100EEB9A4);
  sub_1008948F8(&qword_1011A79E8, _s3__C25OpenExternalURLOptionsKeyVMa_0, &unk_100EEB2F4);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10089395C(uint64_t a1)
{
  sub_1008948F8(&qword_1011A7A10, _s3__C4NameVMa_0, &unk_100EEAE64);
  sub_1008948F8(&qword_1011A7A18, _s3__C4NameVMa_0, &unk_100EEAE04);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100893A18(uint64_t a1)
{
  sub_1008948F8(&qword_1011A76B0, type metadata accessor for ICURLBagKey, &unk_100EEA26C);
  sub_1008948F8(&qword_1011A76B8, type metadata accessor for ICURLBagKey, &unk_100EEA214);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100893AD4(uint64_t a1)
{
  sub_1008948F8(&qword_1011A76A0, type metadata accessor for ICPrivacyIdentifier, &unk_100EEA6B0);
  sub_1008948F8(&qword_1011A76A8, type metadata accessor for ICPrivacyIdentifier, &unk_100EEA658);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100893B90(uint64_t a1)
{
  v2 = sub_1008948F8(&qword_1011A79B8, type metadata accessor for MPCPlayerEnqueueError, &unk_100EEAFDC);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100893BFC(uint64_t a1)
{
  v2 = sub_1008948F8(&qword_1011A79B8, type metadata accessor for MPCPlayerEnqueueError, &unk_100EEAFDC);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100893C68(uint64_t a1)
{
  v2 = sub_1008948F8(&qword_1011A7960, type metadata accessor for MPCPlayerEnqueueError, &unk_100EEBA2C);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100893CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1008948F8(&qword_1011A7960, type metadata accessor for MPCPlayerEnqueueError, &unk_100EEBA2C);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100893D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1008948F8(&unk_1011ACC90, type metadata accessor for MPCPlayerRequestError, &unk_100EEA900);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100893DDC(uint64_t a1)
{
  v2 = sub_1008948F8(&qword_1011A7970, type metadata accessor for MPCError, &unk_100EEB488);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100893E48(uint64_t a1)
{
  v2 = sub_1008948F8(&qword_1011A7970, type metadata accessor for MPCError, &unk_100EEB488);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100893EB4(uint64_t a1)
{
  v2 = sub_1008948F8(&qword_1011A79A0, type metadata accessor for MPCError, &unk_100EEB894);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100893F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1008948F8(&qword_1011A79A0, type metadata accessor for MPCError, &unk_100EEB894);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100893FA4(uint64_t a1)
{
  v2 = sub_1008948F8(&qword_1011A7920, type metadata accessor for MPCMusicBehaviorError, &unk_100EEB69C);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100894010(uint64_t a1)
{
  v2 = sub_1008948F8(&qword_1011A7920, type metadata accessor for MPCMusicBehaviorError, &unk_100EEB69C);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10089407C(uint64_t a1)
{
  v2 = sub_1008948F8(&qword_1011A7950, type metadata accessor for MPCMusicBehaviorError, &unk_100EEB71C);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1008940E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1008948F8(&qword_1011A7950, type metadata accessor for MPCMusicBehaviorError, &unk_100EEB71C);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10089416C(uint64_t a1)
{
  sub_1008948F8(&qword_1011A7A00, type metadata accessor for AttributeName, &unk_100EEB9E8);
  sub_1008948F8(&qword_1011A7A08, type metadata accessor for AttributeName, &unk_100EEB088);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100894228(uint64_t a1)
{
  sub_1008948F8(&qword_1011A79F0, _s3__C3KeyVMa_0, &unk_100EEB1FC);
  sub_1008948F8(&qword_1011A79F8, _s3__C3KeyVMa_0, &unk_100EEB19C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1008942E4(uint64_t a1)
{
  sub_1008948F8(&qword_1011A7690, type metadata accessor for MSVAutoBugCaptureDomain, &unk_100EEA848);
  sub_1008948F8(&qword_1011A7698, type metadata accessor for MSVAutoBugCaptureDomain, &unk_100EEA7E8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

unint64_t sub_1008943A0(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011A7720, &qword_100EEAA10);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10010FC20(&qword_1011A7728, &qword_100EEAA18);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000089F8(v9, v5, &qword_1011A7720, &qword_100EEAA10);
      result = sub_1008B63F4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

__n128 _s14descr1010964D9O11ProgressionVwCP(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100894608(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_10089464C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

__n128 sub_10089469C(uint64_t a1, uint64_t a2)
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

__n128 sub_100894820(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1008948F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10089517C()
{
  result = qword_1011A7678;
  if (!qword_1011A7678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A7678);
  }

  return result;
}

uint64_t sub_10089526C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10089528C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

__n128 sub_1008953A4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t ActionDeclaring.init(context:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v23 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v23 - v15;
  v24 = a1;
  sub_10000DD18(a1, v26);
  sub_10010FC20(&qword_1011A7B50, &qword_100EEBAF0);
  v17 = swift_dynamicCast();
  v18 = *(v12 + 56);
  if (v17)
  {
    v18(v11, 0, 1, AssociatedTypeWitness);
    (*(v12 + 32))(v16, v11, AssociatedTypeWitness);
    (*(v12 + 16))(v14, v16, AssociatedTypeWitness);
    v19 = v25;
    (*(a3 + 24))(v14, a2, a3);
    sub_10000959C(v24);
    (*(v12 + 8))(v16, AssociatedTypeWitness);
    v20 = 0;
    v21 = v19;
  }

  else
  {
    v20 = 1;
    v18(v11, 1, 1, AssociatedTypeWitness);
    sub_10000959C(v24);
    (*(v9 + 8))(v11, v8);
    v21 = v25;
  }

  return (*(*(a2 - 8) + 56))(v21, v20, 1, a2);
}

__n128 AnyAction.init(identifier:contexts:resolver:logs:)@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X2>, uint64_t a5@<X3>)
{
  sub_100897BF4(a2, a3, a4, a5, v10);
  v6 = v10[7];
  *(a1 + 96) = v10[6];
  *(a1 + 112) = v6;
  *(a1 + 128) = v10[8];
  v7 = v10[3];
  *(a1 + 32) = v10[2];
  *(a1 + 48) = v7;
  v8 = v10[5];
  *(a1 + 64) = v10[4];
  *(a1 + 80) = v8;
  result = v10[1];
  *a1 = v10[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t AnyAction.canPerform.getter()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    return v1();
  }

  __break(1u);
  return result;
}

uint64_t sub_1008962EC(uint64_t a1)
{
  v1[2] = a1;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_100896384, v3, v2);
}

uint64_t sub_100896384()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  sub_10000954C(v1, v2);
  v6 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1008964A8;

  return v6(v2, v3);
}

uint64_t sub_1008964A8()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_100898884;
  }

  else
  {
    v5 = sub_100898888;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1008965E4(uint64_t a1)
{
  v1[2] = a1;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_10089667C, v3, v2);
}

uint64_t sub_10089667C()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  sub_10000954C(v1, v2);
  v6 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1008967A0;

  return v6(v2, v3);
}

uint64_t sub_1008967A0()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_1008968DC;
  }

  else
  {
    v5 = sub_1003EF930;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1008968DC()
{

  v1 = *(v0 + 8);

  return v1();
}

void *AnyAction.submenu.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

uint64_t AnyAction.execute()()
{
  v1[21] = v0;
  type metadata accessor for MainActor();
  v1[22] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[23] = v3;
  v1[24] = v2;

  return _swift_task_switch(sub_100896A0C, v3, v2);
}

void sub_100896A0C()
{
  v31 = v0;
  v1 = *(v0[21] + 80);
  if (!v1)
  {
    __break(1u);
    goto LABEL_18;
  }

  v2 = v1();
  if (v3 == 1)
  {
    v4 = *(v0[21] + 96);
    if (v4)
    {
      v29 = (v4 + *v4);
      v5 = swift_task_alloc();
      v0[25] = v5;
      *v5 = v0;
      v5[1] = sub_100896DB4;

      v29();
      return;
    }

LABEL_18:
    __break(1u);
    return;
  }

  v6 = v2;
  v7 = v3;

  v8 = sub_10089840C(v6, v7);
  v9 = (v1)(v8);
  if (v10 == 1)
  {
    sub_100898420();
    v11 = swift_allocError();
    *v12 = 0;
    v12[1] = 0;
  }

  else
  {
    v13 = v9;
    v14 = v10;
    sub_100898420();
    v11 = swift_allocError();
    *v15 = v13;
    v15[1] = v14;
  }

  swift_willThrow();
  if (qword_1011A6748 != -1)
  {
    swift_once();
  }

  v16 = v0[21];
  v17 = type metadata accessor for Logger();
  sub_1000060E4(v17, static Logger.actions);
  sub_1008983A4(v16, (v0 + 2));
  swift_errorRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  sub_1008983DC(v16);

  if (os_log_type_enabled(v18, v19))
  {
    v20 = v0[21];
    v21 = swift_slowAlloc();
    v30[0] = swift_slowAlloc();
    *v21 = 136446466;
    v22 = ActionType.rawValue.getter(*v20);
    v24 = sub_100010678(v22, v23, v30);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2082;
    v0[20] = v11;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v25 = String.init<A>(describing:)();
    v27 = sub_100010678(v25, v26, v30);

    *(v21 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "Failed to perform action %{public}s with error %{public}s", v21, 0x16u);
    swift_arrayDestroy();
  }

  swift_willThrow();
  v28 = v0[1];

  v28();
}

uint64_t sub_100896DB4()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_1008971A8;
  }

  else
  {
    v5 = sub_100896EF0;
  }

  return _swift_task_switch(v5, v4, v3);
}

void sub_100896EF0()
{
  v1 = *(*(v0 + 168) + 112);
  if (v1)
  {
    v3 = (v1 + *v1);
    v2 = swift_task_alloc();
    *(v0 + 216) = v2;
    *v2 = v0;
    v2[1] = sub_100896FE8;

    v3();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100896FE8()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_1008973C8;
  }

  else
  {
    v5 = sub_100897124;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100897124()
{
  v1 = *(*(v0 + 168) + 128);
  if (v1)
  {
    v1();

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1008971A8()
{
  v17 = v0;

  v1 = v0[26];
  if (qword_1011A6748 != -1)
  {
    swift_once();
  }

  v2 = v0[21];
  v3 = type metadata accessor for Logger();
  sub_1000060E4(v3, static Logger.actions);
  sub_1008983A4(v2, (v0 + 2));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  sub_1008983DC(v2);

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[21];
    v7 = swift_slowAlloc();
    v16[0] = swift_slowAlloc();
    *v7 = 136446466;
    v8 = ActionType.rawValue.getter(*v6);
    v10 = sub_100010678(v8, v9, v16);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    v0[20] = v1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v11 = String.init<A>(describing:)();
    v13 = sub_100010678(v11, v12, v16);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to perform action %{public}s with error %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  swift_willThrow();
  v14 = v0[1];

  return v14();
}

uint64_t sub_1008973C8()
{
  v17 = v0;

  v1 = v0[28];
  if (qword_1011A6748 != -1)
  {
    swift_once();
  }

  v2 = v0[21];
  v3 = type metadata accessor for Logger();
  sub_1000060E4(v3, static Logger.actions);
  sub_1008983A4(v2, (v0 + 2));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  sub_1008983DC(v2);

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[21];
    v7 = swift_slowAlloc();
    v16[0] = swift_slowAlloc();
    *v7 = 136446466;
    v8 = ActionType.rawValue.getter(*v6);
    v10 = sub_100010678(v8, v9, v16);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    v0[20] = v1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v11 = String.init<A>(describing:)();
    v13 = sub_100010678(v11, v12, v16);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to perform action %{public}s with error %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  swift_willThrow();
  v14 = v0[1];

  return v14();
}

uint64_t Logger.actions.unsafeMutableAddressor()
{
  if (qword_1011A6748 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000060E4(v0, static Logger.actions);
}

uint64_t sub_10089764C()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, static Logger.actions);
  sub_1000060E4(v0, static Logger.actions);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.actions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011A6748 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000060E4(v2, static Logger.actions);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

char *sub_10089776C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&unk_1011AFD90, &qword_100EFCC70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

__n128 sub_100897860@<Q0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_10000954C(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  v5 = a1[4];
  *&v40 = DynamicType;
  *(&v40 + 1) = v5;
  sub_10010FC20(&qword_1011A7B78, &qword_100EEBCE8);
  v6 = String.init<A>(describing:)();
  v28 = v7;
  v29 = v6;
  sub_100008FE4(a1, &v40);
  sub_10010FC20(&qword_1011A7B80, &qword_100EEBCF0);
  sub_10010FC20(&qword_1011A7B88, &qword_100EEBCF8);
  if (swift_dynamicCast())
  {
    v8 = *(&v58 + 1);
    v9 = v59;
    sub_10000954C(&v57, *(&v58 + 1));
    (*(v9 + 8))(v60, v8, v9);
    v10 = v60[1];
    v11 = v60[2];
    v26 = v60[3];
    v24 = v60[0];
    v25 = v60[4];
    v23 = v60[5];
    sub_10000959C(&v57);
  }

  else
  {
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    sub_1000095E8(&v57, &qword_1011A7B90, &qword_100EEBD00);
    v24 = 0;
    v25 = 0;
    v11 = 0;
    v26 = 0;
    v23 = 0;
    v10 = 1;
  }

  v12 = a1[3];
  v13 = a1[4];
  sub_10000954C(a1, v12);
  v22 = (*(v13 + 24))(v12, v13);
  sub_100008FE4(a1, &v40);
  v21 = swift_allocObject();
  sub_100059A8C(&v40, v21 + 16);
  sub_100008FE4(a1, &v40);
  v20 = swift_allocObject();
  sub_100059A8C(&v40, v20 + 16);
  sub_100008FE4(a1, &v40);
  v19 = swift_allocObject();
  sub_100059A8C(&v40, v19 + 16);
  sub_100008FE4(a1, &v40);
  v14 = swift_allocObject();
  sub_100059A8C(&v40, v14 + 16);
  LOBYTE(v31) = a2;
  *(&v31 + 1) = v29;
  v32.n128_u64[0] = v28;
  v32.n128_u64[1] = v24;
  *&v33 = v10;
  *(&v33 + 1) = v11;
  *&v34 = v26;
  *(&v34 + 1) = v25;
  *&v35 = v23;
  *(&v35 + 1) = v22;
  *&v36 = sub_1008986A8;
  *(&v36 + 1) = v21;
  *&v37 = &unk_100EEBD10;
  *(&v37 + 1) = v20;
  *&v38 = &unk_100EEBD20;
  *(&v38 + 1) = v19;
  *&v39 = sub_100898824;
  *(&v39 + 1) = v14;
  sub_1008983A4(&v31, &v40);
  sub_10000959C(a1);
  LOBYTE(v40) = a2;
  *(&v40 + 1) = v29;
  v41 = v28;
  v42 = v24;
  v43 = v10;
  v44 = v11;
  v45 = v26;
  v46 = v25;
  v47 = v23;
  v48 = v22;
  v49 = sub_1008986A8;
  v50 = v21;
  v51 = &unk_100EEBD10;
  v52 = v20;
  v53 = &unk_100EEBD20;
  v54 = v19;
  v55 = sub_100898824;
  v56 = v14;
  sub_1008983DC(&v40);
  v15 = v38;
  *(a3 + 96) = v37;
  *(a3 + 112) = v15;
  *(a3 + 128) = v39;
  v16 = v34;
  *(a3 + 32) = v33;
  *(a3 + 48) = v16;
  v17 = v36;
  *(a3 + 64) = v35;
  *(a3 + 80) = v17;
  result = v32;
  *a3 = v31;
  *(a3 + 16) = result;
  return result;
}

void sub_100897BF4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v73 = a2;
  v5 = a1;
  if (((1 << a1) & 0xF8FFFFD7FFE7FLL) == 0)
  {
    v47 = a4;
    if (((1 << a1) & 0x700000000180) != 0)
    {
      v48 = sub_100898654();
      v49 = &type metadata for Feature.MusicKit;
    }

    else
    {
      LOBYTE(v106) = 2;
      v48 = sub_100898600();
      v49 = &type metadata for Feature.MediaPlayer;
    }

    v61 = FeatureFlagsKey.isEnabled.getter(v49, v48);
    a4 = v47;
    if ((v61 & 1) == 0)
    {

      if (qword_1011A70E8 != -1)
      {
LABEL_34:
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall != 1)
      {
        goto LABEL_11;
      }

      *&v106 = 0;
      *(&v106 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(32);
      v62 = ActionType.rawValue.getter(v5);
      v64 = v63;

      *&v106 = v62;
      *(&v106 + 1) = v64;
      v65._countAndFlagsBits = 0xD00000000000001ELL;
      v65._object = 0x8000000100E5A7B0;
      String.append(_:)(v65);
      v31 = *(&v106 + 1);
      v30 = v106;
      goto LABEL_10;
    }
  }

  v69 = a4;
  v8 = a3[3];
  v9 = a3[4];
  sub_10000954C(a3, v8);
  LOBYTE(v106) = v5;
  v10 = *(v9 + 8);
  v11 = sub_100898590();
  v12 = v10(&v106, &type metadata for ActionType, v11, v8, v9);
  if (!v12)
  {

    *&v106 = 0;
    *(&v106 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(22);
    v26 = ActionType.rawValue.getter(v5);
    v28 = v27;

    *&v106 = v26;
    *(&v106 + 1) = v28;
    v29._countAndFlagsBits = 0xD000000000000014;
    v29._object = 0x8000000100E5A750;
    String.append(_:)(v29);
    v31 = *(&v106 + 1);
    v30 = v106;
LABEL_10:
    Array<A>.appendStringComponents(_:lineLength:bullet:)(v30, v31, 80, 120, 0xE100000000000000);

    goto LABEL_11;
  }

  v67 = a5;
  v68 = v5;
  v66 = a3;
  v72 = *(v73 + 16);
  if (v72)
  {
    v14 = v12;
    v15 = v13;
    a5 = 0;
    a3 = (v73 + 32);
    v70 = v12 - 8;
    v71 = v13 + 8;
    while (1)
    {
      if (a5 >= *(v73 + 16))
      {
        __break(1u);
        goto LABEL_34;
      }

      sub_10000DD18(a3, v92);
      v16 = *(v15 + 8);
      v17 = type metadata accessor for Optional();
      v18 = *(v17 - 8);
      v19 = __chkstk_darwin();
      v21 = &v66 - v20;
      v16(v92, v14, v15, v19);
      v5 = *(v14 - 8);
      if ((*(v5 + 48))(v21, 1, v14) != 1)
      {
        break;
      }

      a5 = (a5 + 1);
      (*(v18 + 8))(v21, v17);
      v93 = 0u;
      v94 = 0u;
      v95 = 0;
      sub_1000095E8(&v93, &qword_1011A7B68, &qword_100EEBCE0);
      a3 += 4;
      if (v72 == a5)
      {
        goto LABEL_8;
      }
    }

    *(&v94 + 1) = v14;
    v95 = v15;
    v36 = sub_10001C8B8(&v93);
    (*(v5 + 32))(v36, v21, v14);
    sub_100059A8C(&v93, v96);
    sub_100008FE4(v96, &v106);
    v37 = v68;
    sub_100897860(&v106, v68, &v97);
    v89 = v103;
    v90 = v104;
    v91 = v105;
    v85 = v99;
    v86 = v100;
    v87 = v101;
    v88 = v102;
    v83 = v97;
    v84 = v98;
    if (!v102)
    {
      __break(1u);
      return;
    }

    v38 = (v102)();
    a3 = v66;
    if (v39 == 1)
    {
      *&v106 = ActionType.rawValue.getter(v37);
      *(&v106 + 1) = v41;
      v42._countAndFlagsBits = 10272;
      v42._object = 0xE200000000000000;
      String.append(_:)(v42);
      v43 = *(&v97 + 1);
      v44 = v98;

      v45._countAndFlagsBits = v43;
      v45._object = v44;
      String.append(_:)(v45);

      v46._countAndFlagsBits = 41;
      v46._object = 0xE100000000000000;
      String.append(_:)(v46);
      Array<A>.appendStringComponents(_:lineLength:bullet:)(v106, *(&v106 + 1), 80, 9673954, 0xA300000000000000);

      sub_10000959C(v96);
      v80 = v89;
      v81 = v90;
      v82 = v91;
      v76 = v85;
      v77 = v86;
      v78 = v87;
      v79 = v88;
      v74 = v83;
      v75 = v84;
      UIScreen.Dimensions.size.getter();
      v112 = v80;
      v113 = v81;
      v114 = v82;
      v108 = v76;
      v109 = v77;
      v110 = v78;
      v111 = v79;
      v106 = v74;
      v107 = v75;
      a5 = v67;
      goto LABEL_12;
    }

    v50 = v38;
    v51 = v39;
    if (v40)
    {
      sub_10000959C(v96);
      sub_10089840C(v50, v51);
      sub_1008983DC(&v97);
    }

    else
    {
      *&v106 = ActionType.rawValue.getter(v37);
      *(&v106 + 1) = v52;
      v53._countAndFlagsBits = 10272;
      v53._object = 0xE200000000000000;
      String.append(_:)(v53);
      v54 = *(&v97 + 1);
      v55 = v98;

      v56._countAndFlagsBits = v54;
      v56._object = v55;
      String.append(_:)(v56);

      v57._countAndFlagsBits = 539828265;
      v57._object = 0xE400000000000000;
      String.append(_:)(v57);
      if (v51)
      {
        v58 = v50;
      }

      else
      {
        v58 = 0xD000000000000013;
      }

      if (v51)
      {
        v59 = v51;
      }

      else
      {
        v59 = 0x8000000100E5A770;
      }

      v60 = v59;
      String.append(_:)(*&v58);

      Array<A>.appendStringComponents(_:lineLength:bullet:)(v106, *(&v106 + 1), 80, 120, 0xE100000000000000);

      sub_1008983DC(&v97);
      sub_10000959C(v96);
    }

    a5 = v67;
  }

  else
  {
LABEL_8:

    *&v106 = 0;
    *(&v106 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(24);
    v22 = ActionType.rawValue.getter(v68);
    v24 = v23;

    *&v106 = v22;
    *(&v106 + 1) = v24;
    v25._countAndFlagsBits = 0xD000000000000016;
    v25._object = 0x8000000100E5A790;
    String.append(_:)(v25);
    Array<A>.appendStringComponents(_:lineLength:bullet:)(v106, *(&v106 + 1), 80, 120, 0xE100000000000000);

    a3 = v66;
    a5 = v67;
  }

LABEL_11:
  sub_1008985E4(&v106);
LABEL_12:
  sub_10000959C(a3);
  v32 = v113;
  a5[6] = v112;
  a5[7] = v32;
  a5[8] = v114;
  v33 = v109;
  a5[2] = v108;
  a5[3] = v33;
  v34 = v111;
  a5[4] = v110;
  a5[5] = v34;
  v35 = v107;
  *a5 = v106;
  a5[1] = v35;
}

uint64_t sub_100898334(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A7B58, &qword_100EEBAF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_10089840C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_100898420()
{
  result = qword_1011A7B60;
  if (!qword_1011A7B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A7B60);
  }

  return result;
}

uint64_t sub_100898474(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_100898498(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1008984C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_10089850C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100898590()
{
  result = qword_1011A83E0;
  if (!qword_1011A83E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A83E0);
  }

  return result;
}

double sub_1008985E4(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_100898600()
{
  result = qword_1011A7B70;
  if (!qword_1011A7B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A7B70);
  }

  return result;
}

unint64_t sub_100898654()
{
  result = qword_1011A8640;
  if (!qword_1011A8640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8640);
  }

  return result;
}

uint64_t sub_1008986A8()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_10000954C(v0 + 2, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1008986FC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100008F30;

  return sub_1008962EC(v0 + 16);
}

uint64_t sub_100898790()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10002F3F4;

  return sub_1008965E4(v0 + 16);
}

uint64_t sub_100898824()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_10000954C(v0 + 2, v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t ActionCondition.Result.failure.getter(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  sub_1008988C0(a1, a2);
  return v2;
}

double sub_1008988C0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t ActionCondition.init(_:file:line:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t ActionCondition.init(_:_:redactLog:file:line:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t (*a6)()@<X5>, uint64_t (*a7)()@<X6>, uint64_t (*a8)()@<X7>, uint64_t (**a9)()@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *a9 = sub_100898C90;
  a9[1] = result;
  a9[2] = a6;
  a9[3] = a7;
  a9[4] = a8;
  return result;
}

BOOL ActionCondition.isTrue.getter()
{
  v1 = (*v0)();
  v3 = v2 == 1;
  sub_10089840C(v1, v2);
  return v3;
}

void static ActionConditionEvaluator.buildBlock(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 32;
    v12 = a1 + 32;
    v13 = *(a1 + 16);
    while (1)
    {
      v4 = *(v3 + 8 * v2);
      v5 = *(v4 + 16);
      if (v5)
      {
        break;
      }

LABEL_3:
      if (++v2 == v1)
      {
        return;
      }
    }

    v6 = 0;
    v7 = v4 + 56;
    while (v6 < *(v4 + 16))
    {
      v8 = *(v7 - 24);

      v8(v9);
      v11 = v10;

      if (v11 != 1)
      {

        return;
      }

      ++v6;
      v7 += 40;
      if (v5 == v6)
      {

        v3 = v12;
        v1 = v13;
        goto LABEL_3;
      }
    }

    __break(1u);
  }
}

uint64_t static ActionConditionEvaluator.buildExpression(_:)(__int128 *a1)
{
  sub_10010FC20(&qword_1011A7B98, &qword_100EEBD30);
  v2 = swift_allocObject();
  v4 = *a1;
  v7 = a1[1];
  v3 = v7;
  *(v2 + 16) = xmmword_100EBC6B0;
  *(v2 + 32) = v4;
  *(v2 + 48) = v3;
  *(v2 + 64) = *(a1 + 4);

  sub_100118E9C(&v7, &v6);
  return v2;
}

BOOL _s9MusicCore15ActionConditionV6ResultO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a2 == 1)
  {
    return a5 == 1;
  }

  if (a5 == 1)
  {
    return 0;
  }

  if (a2)
  {
    if (!a5)
    {
      return 0;
    }

    if (a1 != a4 || a2 != a5)
    {
      v7 = a3;
      v8 = a6;
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a3 = v7;
      a6 = v8;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (a5)
  {
    return 0;
  }

  return (a6 ^ a3 ^ 1) & 1;
}

uint64_t sub_100898C90()
{
  v1 = *(v0 + 32);
  if ((*(v0 + 16))())
  {
    return 0;
  }

  return v1;
}

uint64_t sub_100898D04(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_100898D28(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100898D3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 17))
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
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100898D98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100898DF8(uint64_t result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = a2;
  }

  return result;
}

void *ActionDisplayConfiguration.image.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t ActionDisplayConfiguration.init(title:subtitle:image:attributes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

unint64_t sub_100898EB0()
{
  result = qword_1011A7BA0;
  if (!qword_1011A7BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A7BA0);
  }

  return result;
}

unint64_t sub_100898F08()
{
  result = qword_1011A7BA8;
  if (!qword_1011A7BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A7BA8);
  }

  return result;
}

unint64_t sub_100898F60()
{
  result = qword_1011A7BB0;
  if (!qword_1011A7BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A7BB0);
  }

  return result;
}

unint64_t sub_100898FB8()
{
  result = qword_1011A7BB8;
  if (!qword_1011A7BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A7BB8);
  }

  return result;
}