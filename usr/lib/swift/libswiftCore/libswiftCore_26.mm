void *String.init(from:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v9, v3, v4);
  if (!v1)
  {
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_0Tm(v9, v10);
    v5 = (*(v7 + 32))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

uint64_t String.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 40))(v10, v5, v6);
  v7 = v11;
  v8 = v12;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  (*(v8 + 32))(a2, a3, v7, v8);
  return __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance String(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v4);
  (*(v5 + 40))(v9, v4, v5);
  v6 = v10;
  v7 = v11;
  __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
  (*(v7 + 32))(v2, v3, v6, v7);
  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

uint64_t protocol witness for Decodable.init(from:) in conformance String@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 40))(v13, v5, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v7 = v14;
  v8 = v15;
  __swift_project_boxed_opaque_existential_0Tm(v13, v14);
  v9 = (*(v8 + 32))(v7, v8);
  v11 = v10;
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

double Double.init(from:)(uint64_t *a1)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v4);
  (*(v5 + 40))(v9, v4, v5);
  if (!v1)
  {
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_0Tm(v9, v10);
    v2 = (*(v7 + 40))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t Double.encode(to:)(void *a1, double a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 40))(v5, v6, a2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Double(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 40))(v5, v6, v2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Decodable.init(from:) in conformance Double@<X0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 40))(v11, v5, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_0Tm(v11, v12);
  v9 = (*(v8 + 40))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v9;
  return result;
}

float Float.init(from:)(uint64_t *a1)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v4);
  (*(v5 + 40))(v9, v4, v5);
  if (!v1)
  {
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_0Tm(v9, v10);
    v2 = (*(v7 + 48))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t Float.encode(to:)(void *a1, float a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 48))(v5, v6, a2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Float(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 48))(v5, v6, v2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Decodable.init(from:) in conformance Float@<X0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 40))(v11, v5, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_0Tm(v11, v12);
  v9 = (*(v8 + 48))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v9;
  return result;
}

__int16 Float16.init(_:)@<H0>(float _S0@<S0>)
{
  __asm { FCVT            H0, S0 }

  return result;
}

uint64_t Float16.encode(to:)(void *a1, __n128 _Q0)
{
  __asm { FCVT            S8, H0 }

  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v7);
  (*(v8 + 40))(v12, v7, v8);
  v9 = v13;
  v10 = v14;
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  (*(v10 + 48))(v9, v10, _S8);
  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

float Float.init(_:)(__n128 _Q0)
{
  __asm { FCVT            S0, H0 }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Float16(void *a1)
{
  _H0 = *v1;
  __asm { FCVT            S8, H0 }

  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v8);
  (*(v9 + 40))(v13, v8, v9);
  v10 = v14;
  v11 = v15;
  __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
  (*(v11 + 48))(v10, v11, _S8);
  return __swift_destroy_boxed_opaque_existential_1Tm(v13);
}

void protocol witness for Decodable.init(from:) in conformance Float16(_WORD *a1@<X8>, uint64_t *a2@<X0>)
{
  v4 = specialized Float16.init(from:)(a2);
  if (!v2)
  {
    *a1 = LOWORD(v4);
  }
}

void *Int.init(from:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v9, v3, v4);
  if (!v1)
  {
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_0Tm(v9, v10);
    v5 = (*(v7 + 56))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

uint64_t Int.encode(to:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 56))(a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Int(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 56))(v2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Decodable.init(from:) in conformance Int@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 40))(v11, v5, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_0Tm(v11, v12);
  v9 = (*(v8 + 56))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v9;
  return result;
}

void *Int8.init(from:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v9, v3, v4);
  if (!v1)
  {
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_0Tm(v9, v10);
    v5 = (*(v7 + 64))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

uint64_t Int8.encode(to:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 64))(a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Int8(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 64))(v2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Decodable.init(from:) in conformance Int8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 40))(v11, v5, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_0Tm(v11, v12);
  v9 = (*(v8 + 64))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v9;
  return result;
}

void *Int16.init(from:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v9, v3, v4);
  if (!v1)
  {
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_0Tm(v9, v10);
    v5 = (*(v7 + 72))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

uint64_t Int16.encode(to:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 72))(a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Int16(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 72))(v2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Decodable.init(from:) in conformance Int16@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 40))(v11, v5, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_0Tm(v11, v12);
  v9 = (*(v8 + 72))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v9;
  return result;
}

void *Int32.init(from:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v9, v3, v4);
  if (!v1)
  {
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_0Tm(v9, v10);
    v5 = (*(v7 + 80))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

uint64_t Int32.encode(to:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 80))(a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Int32(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 80))(v2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Decodable.init(from:) in conformance Int32@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 40))(v11, v5, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_0Tm(v11, v12);
  v9 = (*(v8 + 80))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v9;
  return result;
}

void *Int64.init(from:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v9, v3, v4);
  if (!v1)
  {
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_0Tm(v9, v10);
    v5 = (*(v7 + 88))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

uint64_t Int64.encode(to:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 88))(a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Int64(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 88))(v2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Decodable.init(from:) in conformance Int64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 40))(v11, v5, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_0Tm(v11, v12);
  v9 = (*(v8 + 88))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v9;
  return result;
}

void *Int128.init(from:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v9, v3, v4);
  if (!v1)
  {
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_0Tm(v9, v10);
    v5 = (*(v7 + 96))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

uint64_t Int128.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 40))(v10, v5, v6);
  v7 = v11;
  v8 = v12;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  (*(v8 + 96))(a2, a3, v7, v8);
  return __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Int128(void *a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v4);
  (*(v5 + 40))(v9, v4, v5);
  v6 = v10;
  v7 = v11;
  __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
  (*(v7 + 96))(v3, v2, v6, v7);
  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

uint64_t protocol witness for Decodable.init(from:) in conformance Int128@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 40))(v13, v5, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v7 = v14;
  v8 = v15;
  __swift_project_boxed_opaque_existential_0Tm(v13, v14);
  v9 = (*(v8 + 96))(v7, v8);
  v11 = v10;
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

void *UInt.init(from:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v9, v3, v4);
  if (!v1)
  {
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_0Tm(v9, v10);
    v5 = (*(v7 + 104))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

uint64_t UInt.encode(to:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 104))(a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance UInt(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 104))(v2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Decodable.init(from:) in conformance UInt@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 40))(v11, v5, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_0Tm(v11, v12);
  v9 = (*(v8 + 104))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v9;
  return result;
}

void *UInt8.init(from:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v9, v3, v4);
  if (!v1)
  {
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_0Tm(v9, v10);
    v5 = (*(v7 + 112))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

uint64_t UInt8.encode(to:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 112))(a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance UInt8(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 112))(v2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Decodable.init(from:) in conformance UInt8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 40))(v11, v5, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_0Tm(v11, v12);
  v9 = (*(v8 + 112))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v9;
  return result;
}

void *UInt16.init(from:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v9, v3, v4);
  if (!v1)
  {
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_0Tm(v9, v10);
    v5 = (*(v7 + 120))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

uint64_t UInt16.encode(to:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 120))(a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance UInt16(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 120))(v2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Decodable.init(from:) in conformance UInt16@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 40))(v11, v5, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_0Tm(v11, v12);
  v9 = (*(v8 + 120))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v9;
  return result;
}

void *UInt32.init(from:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v9, v3, v4);
  if (!v1)
  {
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_0Tm(v9, v10);
    v5 = (*(v7 + 128))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

uint64_t UInt32.encode(to:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 128))(a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance UInt32(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 128))(v2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Decodable.init(from:) in conformance UInt32@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 40))(v11, v5, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_0Tm(v11, v12);
  v9 = (*(v8 + 128))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v9;
  return result;
}

void *UInt64.init(from:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v9, v3, v4);
  if (!v1)
  {
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_0Tm(v9, v10);
    v5 = (*(v7 + 136))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

uint64_t UInt64.encode(to:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 136))(a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance UInt64(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 136))(v2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Decodable.init(from:) in conformance UInt64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 40))(v11, v5, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_0Tm(v11, v12);
  v9 = (*(v8 + 136))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v9;
  return result;
}

void *UInt128.init(from:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v9, v3, v4);
  if (!v1)
  {
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_0Tm(v9, v10);
    v5 = (*(v7 + 144))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

uint64_t UInt128.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 40))(v10, v5, v6);
  v7 = v11;
  v8 = v12;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  (*(v8 + 144))(a2, a3, v7, v8);
  return __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance UInt128(void *a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v4);
  (*(v5 + 40))(v9, v4, v5);
  v6 = v10;
  v7 = v11;
  __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
  (*(v7 + 144))(v3, v2, v6, v7);
  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

uint64_t protocol witness for Decodable.init(from:) in conformance UInt128@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 40))(v13, v5, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v7 = v14;
  v8 = v15;
  __swift_project_boxed_opaque_existential_0Tm(v13, v14);
  v9 = (*(v8 + 144))(v7, v8);
  v11 = v10;
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t Optional<A>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v23 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v7, v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v11[3];
  v14 = v11[4];
  __swift_project_boxed_opaque_existential_0Tm(v11, v15);
  (*(v14 + 40))(v25, v15, v14);
  (*(v10 + 16))(v13, v3, a2);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    v16 = v26;
    v17 = v27;
    __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
    (*(v17 + 16))(v16, v17);
  }

  else
  {
    v18 = v23;
    (*(v6 + 32))(v23, v13, v5);
    v19 = v26;
    v20 = v27;
    __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
    (*(v20 + 152))(v18, v5, v24, v19, v20);
    (*(v6 + 8))(v18, v5);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v25);
}

uint64_t Optional<A>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v7 = *(a2 - 8);
  v31 = a3;
  v32 = v7;
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Optional(0, v10, v11, v12);
  v37 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v29 - v15;
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v17);
  (*(v18 + 40))(v34, v17, v18);
  if (!v4)
  {
    v29 = v16;
    v30 = v13;
    v19 = v35;
    v20 = v36;
    __swift_project_boxed_opaque_existential_0Tm(v34, v35);
    if ((*(v20 + 16))(v19, v20))
    {
      v21 = 1;
      v22 = v32;
      v23 = v37;
      v24 = v29;
    }

    else
    {
      v25 = v35;
      v26 = v36;
      __swift_project_boxed_opaque_existential_0Tm(v34, v35);
      v27 = v9;
      (*(v26 + 152))(a2, a2, v31, v25, v26);
      v23 = v37;
      v22 = v32;
      v24 = v29;
      (*(v32 + 32))(v29, v27, a2);
      v21 = 0;
    }

    (*(v22 + 56))(v24, v21, 1, a2);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    (*(v23 + 32))(v33, v24, v30);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t Array<A>.encode(to:)(uint64_t a1, unint64_t a2, unint64_t *a3, uint64_t a4)
{
  v29 = a4;
  v5 = a2;
  v6 = *(a3 - 1);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v24 = v8;
  v30 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v7[3];
  v10 = v7[4];
  __swift_project_boxed_opaque_existential_0Tm(v7, v9);
  (*(v10 + 32))(v32, v9, v10);
  v28 = Array._getCount()();
  if (!v28)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v32);
  }

  v11 = 0;
  v26 = (v6 + 16);
  v27 = v5 & 0xC000000000000001;
  v25 = (v6 + 8);
  while (1)
  {
    v12 = v27 == 0;
    v13 = v12 | ~_swift_isClassOrObjCExistentialType(a3, a3);
    Array._checkSubscript(_:wasNativeTypeChecked:)(v11, v13 & 1);
    if (v13)
    {
      (*(v6 + 16))(v30, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v11, a3);
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v20 = _ArrayBuffer._getElementSlowPath(_:)(v11, v5, a3);
      if (v24 != 8)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v35 = v20;
      v21 = v20;
      (*v26)(v30, &v35, a3);
      swift_unknownObjectRelease(v21);
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
LABEL_11:
        __break(1u);
        return __swift_destroy_boxed_opaque_existential_1Tm(v32);
      }
    }

    v15 = v5;
    v16 = v33;
    v17 = v34;
    __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
    v18 = v30;
    v19 = v31;
    (*(v17 + 160))(v30, a3, v29, v16, v17);
    (*v25)(v18, a3);
    if (v19)
    {
      return __swift_destroy_boxed_opaque_existential_1Tm(v32);
    }

    v31 = 0;
    ++v11;
    v5 = v15;
    if (v14 == v28)
    {
      return __swift_destroy_boxed_opaque_existential_1Tm(v32);
    }
  }
}

__objc2_class **Array<A>.init(from:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v30 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v28 - v12;
  v34 = &_swiftEmptyArrayStorage;
  v15 = v11[3];
  v14 = v11[4];
  v16 = __swift_project_boxed_opaque_existential_0Tm(v11, v15);
  (*(v14 + 32))(v31, v15, v14);
  if (v3)
  {
    &_swiftEmptyArrayStorage;
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  else
  {
    v17 = v32;
    v18 = v33;
    __swift_project_boxed_opaque_existential_0Tm(v31, v32);
    if ((*(v18 + 24))(v17, v18))
    {
      v16 = &_swiftEmptyArrayStorage;
    }

    else
    {
      v29 = v6;
      v19 = (v30 + 32);
      do
      {
        v20 = v32;
        v21 = v33;
        __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
        (*(v21 + 176))(a2, a2, a3, v20, v21);
        (*v19)(v9, v13, a2);
        v24 = type metadata accessor for Array(0, a2, v22, v23);
        Array.append(_:)(v9, v24);
        v25 = v32;
        v26 = v33;
        __swift_project_boxed_opaque_existential_0Tm(v31, v32);
      }

      while (((*(v26 + 24))(v25, v26) & 1) == 0);
      v16 = v34;
      v6 = v29;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  return v16;
}

__objc2_class **protocol witness for Decodable.init(from:) in conformance <A> [A]@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __objc2_class ***a4@<X8>)
{
  result = Array<A>.init(from:)(a1, *(a2 + 16), *(a3 - 8));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t ContiguousArray<A>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v7 = *(a3 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v8[3];
  v12 = v8[4];
  __swift_project_boxed_opaque_existential_0Tm(v8, v11);
  (*(v12 + 32))(v24, v11, v12);
  v13 = *(a2 + 16);
  if (v13)
  {
    v15 = *(v7 + 16);
    v14 = v7 + 16;
    v16 = a2 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v21 = *(v14 + 56);
    v22 = v15;
    v23 = v14;
    v17 = (v14 - 8);
    while (1)
    {
      v22(v10, v16, a3);
      v18 = v25;
      v19 = v26;
      __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
      (*(v19 + 160))(v10, a3, v27, v18, v19);
      if (v4)
      {
        break;
      }

      (*v17)(v10, a3);
      v16 += v21;
      if (!--v13)
      {
        return __swift_destroy_boxed_opaque_existential_1Tm(v24);
      }
    }

    (*v17)(v10, a3);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v24);
}

__objc2_class **ContiguousArray<A>.init(from:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v30 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v28 - v12;
  v34 = &_swiftEmptyArrayStorage;
  v15 = v11[3];
  v14 = v11[4];
  v16 = __swift_project_boxed_opaque_existential_0Tm(v11, v15);
  (*(v14 + 32))(v31, v15, v14);
  if (v3)
  {
    &_swiftEmptyArrayStorage;
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  else
  {
    v17 = v32;
    v18 = v33;
    __swift_project_boxed_opaque_existential_0Tm(v31, v32);
    if ((*(v18 + 24))(v17, v18))
    {
      v16 = &_swiftEmptyArrayStorage;
    }

    else
    {
      v29 = v6;
      v19 = (v30 + 32);
      do
      {
        v20 = v32;
        v21 = v33;
        __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
        (*(v21 + 176))(a2, a2, a3, v20, v21);
        (*v19)(v9, v13, a2);
        v24 = type metadata accessor for ContiguousArray(0, a2, v22, v23);
        ContiguousArray.append(_:)(v9, v24);
        v25 = v32;
        v26 = v33;
        __swift_project_boxed_opaque_existential_0Tm(v31, v32);
      }

      while (((*(v26 + 24))(v25, v26) & 1) == 0);
      v16 = v34;
      v6 = v29;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  return v16;
}

__objc2_class **protocol witness for Decodable.init(from:) in conformance <A> ContiguousArray<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __objc2_class ***a4@<X8>)
{
  result = ContiguousArray<A>.init(from:)(a1, *(a2 + 16), *(a3 - 8));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t Set<>.encode(to:)(void *a1, int64_t a2, Class *a3, uint64_t a4)
{
  v74 = a4;
  v71 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v73 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for Optional(0, v8, v8, v9);
  v10 = *(v68 - 8);
  v12 = MEMORY[0x1EEE9AC00](v68 - 8, v11);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v69 = (&v62 - v17);
  MEMORY[0x1EEE9AC00](v16, v18);
  v77 = (&v62 - v19);
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v20);
  (*(v21 + 32))(v82, v20, v21);
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (a2 < 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v23 = type metadata accessor for __CocoaSet.Iterator();
    v24 = swift_allocObject(v23, 0xE8, 7uLL);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    *(v24 + 208) = v22;
    *(v24 + 216) = 0;
    *(v24 + 16) = 0u;
    *(v24 + 32) = 0u;
    *(v24 + 48) = 0u;
    *(v24 + 64) = 0u;
    *(v24 + 80) = 0u;
    *(v24 + 96) = 0u;
    *(v24 + 112) = 0u;
    *(v24 + 128) = 0u;
    *(v24 + 144) = 0u;
    *(v24 + 160) = 0u;
    *(v24 + 176) = 0u;
    *(v24 + 192) = 0u;
    *(v24 + 224) = 0;
    v28 = v24 | 0x8000000000000000;
  }

  else
  {
    v29 = -1 << *(a2 + 32);
    v26 = ~v29;
    v25 = a2 + 56;
    v30 = -v29;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v27 = v31 & *(a2 + 56);
    v28 = a2;
  }

  v65 = v14;
  v78 = v28;
  v67 = v28 & 0x7FFFFFFFFFFFFFFFLL;
  v76 = (v71 + 56);
  v64 = (v10 + 16);
  v63 = (v71 + 48);
  v62 = (v10 + 8);
  v75 = (v71 + 32);
  v66 = v26;
  v32 = (v26 + 64) >> 6;
  v70 = v71 + 16;
  v72 = (v71 + 8);
  a2;
  v33 = 0;
  do
  {
    v40 = v27;
    v41 = v33;
    v42 = v78;
    if ((v78 & 0x8000000000000000) != 0)
    {
      v79 = v40;
      v80 = v33;
      v46 = v67;
      v45 = v68;
      v47 = *(v67 + 216);
      v48 = v76;
      v43 = v77;
      v49 = v69;
      if ((v47 & 0x8000000000000000) == 0)
      {
        if (v47 != *(v67 + 224))
        {
          v51 = *(v67 + 24);
          if (v51)
          {
            if (v47 >> 60)
            {
LABEL_41:
              __break(1u);
              goto LABEL_42;
            }

LABEL_28:
            v52 = (v51 + 8 * v47);
            if ((v52 & 7) == 0)
            {
              v53 = *v52;
              v46[27] = v47 + 1;
              swift_unknownObjectRetain(v53);
              if (_swift_isClassOrObjCExistentialType(a3, a3))
              {
                v85 = v53;
                swift_dynamicCast(v43, &v85, qword_1EEEAC710, a3, 7uLL, v54, v55, v56, v62);
                v57 = *v48;
              }

              else
              {
                v57 = *v48;
                v57(v49, 1, 1, a3);
                _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v53, a3, v49);
                v58 = v49;
                v59 = v65;
                (*v64)(v65, v58, v45);
                if ((*v63)(v59, 1, a3) == 1)
                {
                  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
                }

                (*v62)(v69, v45);
                swift_unknownObjectRelease(v53);
                (*v75)(v43, v65, a3);
              }

              v57(v43, 0, 1, a3);
              v27 = v79;
              v33 = v80;
              goto LABEL_13;
            }

LABEL_42:
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

LABEL_43:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v50 = [*(v67 + 208) countByEnumeratingWithState:v67 + 16 objects:v67 + 80 count:16];
        v46[28] = v50;
        if (v50)
        {
          v46[27] = 0;
          v51 = v46[3];
          if (v51)
          {
            v47 = 0;
            goto LABEL_28;
          }

          goto LABEL_43;
        }

        v46[27] = -1;
      }

      _sSh8IteratorV8_VariantOySS__GWOe_0(v42);
      (*v48)(v43, 1, 1, a3);
      return __swift_destroy_boxed_opaque_existential_1Tm(v82);
    }

    v43 = v77;
    if (v40)
    {
      v34 = v40;
      v80 = v33;
      goto LABEL_12;
    }

    v44 = v33;
    do
    {
      v33 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v33 >= v32)
      {
        (*v76)(v77, 1, 1, a3);
        v60 = v42;
        goto LABEL_35;
      }

      v34 = *(v25 + 8 * v33);
      ++v44;
    }

    while (!v34);
    v80 = v41;
LABEL_12:
    v79 = v40;
    v27 = (v34 - 1) & v34;
    v35 = v71;
    (*(v71 + 16))(v77, *(v78 + 48) + *(v71 + 72) * (__clz(__rbit64(v34)) | (v33 << 6)), a3);
    (*(v35 + 56))(v43, 0, 1, a3);
LABEL_13:
    v36 = v73;
    (*v75)(v73, v43, a3);
    v38 = v83;
    v37 = v84;
    __swift_mutable_project_boxed_opaque_existential_1(v82, v83);
    v39 = v81;
    (*(v37 + 160))(v36, a3, v74, v38, v37);
    (*v72)(v36, a3);
    v81 = v39;
  }

  while (!v39);
  v60 = v78;
LABEL_35:
  _sSh8IteratorV8_VariantOySS__GWOe_0(v60);
  return __swift_destroy_boxed_opaque_existential_1Tm(v82);
}

int64_t Set.makeIterator()@<X0>(int64_t result@<X0>, int64_t *a2@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    if (result < 0)
    {
      v3 = result;
    }

    else
    {
      v3 = result & 0xFFFFFFFFFFFFFF8;
    }

    v4 = type metadata accessor for __CocoaSet.Iterator();
    v5 = swift_allocObject(v4, 0xE8, 7uLL);
    v6 = 0;
    v7 = 0;
    v8 = 0;
    *(v5 + 208) = v3;
    *(v5 + 216) = 0;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
    *(v5 + 80) = 0u;
    *(v5 + 96) = 0u;
    *(v5 + 112) = 0u;
    *(v5 + 128) = 0u;
    *(v5 + 144) = 0u;
    *(v5 + 160) = 0u;
    *(v5 + 176) = 0u;
    *(v5 + 192) = 0u;
    *(v5 + 224) = 0;
    result = v5 | 0x8000000000000000;
  }

  else
  {
    v9 = -1;
    v10 = -1 << *(result + 32);
    v6 = result + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v9 = ~(-1 << v11);
    }

    v8 = v9 & *(result + 56);
  }

  *a2 = result;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = 0;
  a2[4] = v8;
  return result;
}

uint64_t Set.Iterator.next()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*v2 < 0)
  {
    v10 = *(result + 16);
    v11 = __CocoaSet.Iterator.next()();
    if (v11)
    {
      v13 = v11;
      _forceBridgeFromObjectiveC<A>(_:_:)(v11, v10, a2, v12);
      swift_unknownObjectRelease(v13);
      v14 = *(*(v10 - 1) + 7);
      v15 = a2;
      v16 = 0;
    }

    else
    {
      v14 = *(*(v10 - 1) + 7);
      v15 = a2;
      v16 = 1;
    }

    return v14(v15, v16, 1, v10);
  }

  else
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = v2[3];
    v8 = v2[4];
    if (v8)
    {
      v9 = v2[3];
LABEL_13:
      v20 = (v8 - 1) & v8;
      v21 = *(result + 16);
      v22 = *(v21 - 8);
      (*(v22 + 16))(a2, *(v4 + 48) + *(v22 + 72) * (__clz(__rbit64(v8)) | (v9 << 6)), v21);
      result = (*(v22 + 56))(a2, 0, 1, v21);
      v19 = v9;
LABEL_14:
      *v2 = v4;
      v2[1] = v5;
      v2[2] = v6;
      v2[3] = v19;
      v2[4] = v20;
    }

    else
    {
      v17 = (v6 + 64) >> 6;
      if (v17 <= v7 + 1)
      {
        v18 = v7 + 1;
      }

      else
      {
        v18 = (v6 + 64) >> 6;
      }

      v19 = v18 - 1;
      while (1)
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v9 >= v17)
        {
          result = (*(*(*(result + 16) - 8) + 56))(a2, 1, 1);
          v20 = 0;
          goto LABEL_14;
        }

        v8 = *(v5 + 8 * v9);
        ++v7;
        if (v8)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }

  return result;
}

__objc2_class **Set<>.init(from:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v37 = a3;
  v6 = a1;
  v34 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v9 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v33 - v12;
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v33 - v16;
  v41 = &_swiftEmptySetSingleton;
  v18 = v15[3];
  v19 = v15[4];
  v20 = __swift_project_boxed_opaque_existential_0Tm(v15, v18);
  (*(v19 + 32))(v38, v18, v19);
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  else
  {
    v35 = v9;
    v21 = v39;
    v22 = v40;
    __swift_project_boxed_opaque_existential_0Tm(v38, v39);
    if ((*(v22 + 24))(v21, v22))
    {
      v20 = &_swiftEmptySetSingleton;
    }

    else
    {
      v33 = v6;
      v23 = (v34 + 32);
      v24 = (v34 + 8);
      do
      {
        v25 = v39;
        v26 = v40;
        __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
        (*(v26 + 176))(a2, a2, v37, v25, v26);
        v27 = v35;
        (*v23)(v35, v17, a2);
        v29 = type metadata accessor for Set._Variant(0, a2, v36, v28);
        Set._Variant.insert(_:)(v13, v27, v29);
        (*v24)(v13, a2);
        v30 = v39;
        v31 = v40;
        __swift_project_boxed_opaque_existential_0Tm(v38, v39);
      }

      while (((*(v31 + 24))(v30, v31) & 1) == 0);
      v20 = v41;
      v6 = v33;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  return v20;
}

uint64_t Set.insert(_:)(uint64_t a1, id *a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Set._Variant(0, *(a3 + 16), *(a3 + 24), a4);

  return Set._Variant.insert(_:)(a1, a2, v6);
}

__objc2_class **protocol witness for Decodable.init(from:) in conformance <> Set<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __objc2_class ***a4@<X8>)
{
  result = Set<>.init(from:)(a1, *(a2 + 16), *(a3 - 8), *(a2 + 24));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t FixedWidthInteger.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v221 = a5;
  swift_getTupleTypeMetadata2(0, a3, &type metadata for Bool, 0, 0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v209 = &v200 - v11;
  v216 = *(a4 + 8);
  v12 = *(*(v216 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v12, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v214 = (&v200 - v17);
  v228 = *(a3 - 1);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v207 = &v200 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v24 = &v200 - v23;
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v213 = &v200 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v206 = &v200 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v211 = &v200 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v212 = &v200 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35, v37);
  v208 = &v200 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38, v40);
  v205 = &v200 - v42;
  v44 = MEMORY[0x1EEE9AC00](v41, v43);
  v46 = &v200 - v45;
  MEMORY[0x1EEE9AC00](v44, v47);
  v210 = &v200 - v48;
  v229 = a3;
  v51 = type metadata accessor for Optional(255, a3, v49, v50);
  v225 = type metadata accessor for Optional(0, v51, v52, v53);
  v55 = MEMORY[0x1EEE9AC00](v225, v54);
  v57 = &v200 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x1EEE9AC00](v55, v58);
  v226 = &v200 - v60;
  v220 = v51;
  v223 = *(v51 - 8);
  v62 = MEMORY[0x1EEE9AC00](v59, v61);
  v224 = &v200 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x1EEE9AC00](v62, v64);
  v219 = &v200 - v66;
  v68 = MEMORY[0x1EEE9AC00](v65, v67);
  v222 = &v200 - v71;
  v72 = HIBYTE(a2) & 0xF;
  v227 = a1;
  v73 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v74 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v74 = v73;
  }

  if (!v74)
  {
    a2;
    v192 = v221;
    v115 = v222;
    v189 = v228;
    v184 = v229;
    v114 = v223;
    v188 = v220;
    goto LABEL_49;
  }

  v217 = v57;
  v218 = v70;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v96 = v226;
      v230[0] = v227;
      v230[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      specialized closure #1 in FixedWidthInteger.init<A>(_:radix:)(v230, v72, 10, v229, a4, v226);
      goto LABEL_20;
    }

    v215 = a4;
    if ((v227 & 0x1000000000000000) != 0)
    {
      v75 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      if (v73 > 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v68 = _StringObject.sharedUTF8.getter(v227, a2);
      v75 = v68;
      v73 = v72;
      if (v72 > 0)
      {
LABEL_9:
        v76 = *v75;
        v204 = a2;
        if (v76 == 43)
        {
          v117 = specialized Collection.subscript.getter(1, v75, v73);
          v121 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v117, v118, v119, v120);
          if (v122)
          {
            v124 = v121;
            v125 = v122;
            v230[0] = 10;
            v126 = v216;
            v127 = *(v216 + 96);
            v128 = lazy protocol witness table accessor for type Int and conformance Int(v121, v122, v123);
            v129 = v229;
            (v127)(v230, &type metadata for Int, v128, v229, v126);
            AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, v129, v14, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v131 = v214;
            (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v14, AssociatedConformanceWitness);
            v132 = (*(v12 + 24))(v131, v129, v12);
            v95 = v228;
            v97 = v225;
            v96 = v226;
            if (v124)
            {
              v135 = v215 + 96;
              v136 = (v228 + 8);
              v214 = (v228 + 32);
              v137 = (v215 + 80);
              while (1)
              {
                v138 = *v124 - 48;
                if (v138 >= 0xA)
                {
                  break;
                }

                v203 = v124;
                v205 = v125;
                LOBYTE(v230[0]) = v138;
                v139 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v132, v133, v134);
                v140 = v206;
                v213 = v137;
                v141 = v229;
                v202 = v127;
                (v127)(v230, &type metadata for UInt8, v139, v229, v216);
                v142 = v215;
                v143 = *(v215 + 96);
                v144 = v208;
                v145 = v211;
                v201 = v135;
                LODWORD(v210) = v143(v208, v212, v141, v215);
                v108 = *v136;
                (*v136)(v145, v141);
                v207 = *v214;
                (v207)(v145, v144, v141);
                v146 = *(v142 + 80);
                v147 = v209;
                v148 = v141;
                v149 = v142;
                v104 = v141;
                v137 = v213;
                v150 = v146(v209, v140, v148, v149);
                v108(v140, v104);
                v108(v145, v104);
                v132 = (v207)(v145, v147, v104);
                if (v210 & 1) != 0 || (v150)
                {
                  v108(v211, v104);
                  v198 = v212;
                  goto LABEL_58;
                }

                v124 = v203 + 1;
                v125 = v205 - 1;
                v95 = v228;
                v97 = v225;
                v96 = v226;
                v127 = v202;
                v135 = v201;
                if (v205 == 1)
                {
                  goto LABEL_29;
                }
              }

              v178 = v228;
              v177 = v229;
              v179 = *(v228 + 8);
              v179(v211, v229);
              v180 = v212;
LABEL_41:
              v179(v180, v177);
              (*(v178 + 56))(v96, 1, 1, v177);
              goto LABEL_42;
            }

LABEL_29:
            v113 = v229;
            (*(v95 + 8))(v212, v229);
            (*(v95 + 32))(v96, v211, v113);
LABEL_30:
            (*(v95 + 56))(v96, 0, 1, v113);
LABEL_42:
            a2 = v204;
            a4 = v215;
            v115 = v222;
            v114 = v223;
            v116 = v224;
LABEL_43:
            v181 = v220;
            (*(v114 + 56))(v96, 0, 1, v220);
            goto LABEL_44;
          }
        }

        else
        {
          if (v76 != 45)
          {
            v230[0] = 10;
            v151 = v216;
            v152 = (v216 + 96);
            v153 = *(v216 + 96);
            v154 = lazy protocol witness table accessor for type Int and conformance Int(v68, v72, v69);
            v155 = v229;
            v211 = v153;
            (v153)(v230, &type metadata for Int, v154, v229, v151);
            v156 = swift_getAssociatedConformanceWitness(v12, v155, v14, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v157 = v214;
            (*(v156 + 8))(&qword_18071E0A8, 256, v14, v156);
            v158 = (*(v12 + 24))(v157, v155, v12);
            v161 = v215 + 96;
            v162 = (v228 + 8);
            v212 = (v228 + 32);
            v210 = v215 + 80;
            v116 = v224;
            while (*v75 - 48 < 0xA)
            {
              LOBYTE(v230[0]) = *v75 - 48;
              v163 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v158, v159, v160);
              v214 = v162;
              v164 = v229;
              v205 = v152;
              (v211)(v230, &type metadata for UInt8, v163, v229, v216);
              v165 = v215;
              v166 = *(v215 + 96);
              v167 = v208;
              v168 = v24;
              v203 = v161;
              LODWORD(v206) = v166(v208, v213, v164, v215);
              v169 = *v214;
              (*v214)(v24, v164);
              v170 = *v212;
              (*v212)(v24, v167, v164);
              v171 = v207;
              v172 = (*(v165 + 80))(v209, v207, v164, v165);
              v162 = v214;
              v169(v171, v164);
              v169(v168, v164);
              v24 = v168;
              v202 = v170;
              v158 = (v170)(v168, v209, v164);
              if (v206 & 1) != 0 || (v172)
              {
                v197 = v229;
                v169(v168, v229);
                v169(v213, v197);
                v96 = v226;
                (*(v228 + 56))(v226, 1, 1, v197);
                goto LABEL_59;
              }

              ++v75;
              --v73;
              v116 = v224;
              v152 = v205;
              v161 = v203;
              if (!v73)
              {
                v173 = v229;
                v169(v213, v229);
                v96 = v226;
                v202();
                (*(v228 + 56))(v96, 0, 1, v173);
LABEL_38:
                a2 = v204;
                a4 = v215;
                v115 = v222;
                v114 = v223;
                goto LABEL_21;
              }
            }

            v175 = v228;
            v174 = v229;
            v176 = *(v228 + 8);
            v176(v24, v229);
            v176(v213, v174);
            v96 = v226;
            (*(v175 + 56))(v226, 1, 1, v174);
            goto LABEL_38;
          }

          v77 = specialized Collection.subscript.getter(1, v75, v73);
          v81 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v77, v78, v79, v80);
          if (v82)
          {
            v84 = v81;
            v85 = v82;
            v230[0] = 10;
            v86 = v216;
            v87 = *(v216 + 96);
            v88 = lazy protocol witness table accessor for type Int and conformance Int(v81, v82, v83);
            v89 = v229;
            v213 = v87;
            (v87)(v230, &type metadata for Int, v88, v229, v86);
            v90 = swift_getAssociatedConformanceWitness(v12, v89, v14, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v91 = v214;
            (*(v90 + 8))(&qword_18071E0A8, 256, v14, v90);
            v92 = (*(v12 + 24))(v91, v89, v12);
            v95 = v228;
            v97 = v225;
            v96 = v226;
            if (v84)
            {
              v98 = (v215 + 96);
              v99 = (v228 + 8);
              v214 = (v228 + 32);
              v100 = (v215 + 88);
              while (1)
              {
                v101 = *v84 - 48;
                if (v101 >= 0xA)
                {
                  v178 = v228;
                  v177 = v229;
                  v179 = *(v228 + 8);
                  v179(v46, v229);
                  v180 = v210;
                  goto LABEL_41;
                }

                v203 = v84;
                v206 = v85;
                LOBYTE(v230[0]) = v101;
                v102 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v92, v93, v94);
                v103 = v205;
                v104 = v229;
                (v213)(v230, &type metadata for UInt8, v102, v229, v216);
                v212 = v100;
                v105 = v215;
                v106 = *(v215 + 96);
                v107 = v208;
                v202 = v98;
                LODWORD(v211) = v106(v208, v210, v104, v215);
                v108 = *v99;
                (*v99)(v46, v104);
                v207 = *v214;
                (v207)(v46, v107, v104);
                v109 = *(v105 + 88);
                v110 = v209;
                v111 = v105;
                v100 = v212;
                v112 = v109(v209, v103, v104, v111);
                v108(v103, v104);
                v108(v46, v104);
                v92 = (v207)(v46, v110, v104);
                if (v211 & 1) != 0 || (v112)
                {
                  break;
                }

                v84 = v203 + 1;
                v85 = v206 - 1;
                v95 = v228;
                v97 = v225;
                v96 = v226;
                v98 = v202;
                if (v206 == 1)
                {
                  goto LABEL_18;
                }
              }

              v108(v46, v104);
              v198 = v210;
LABEL_58:
              v108(v198, v104);
              v199 = v104;
              v96 = v226;
              (*(v228 + 56))(v226, 1, 1, v199);
LABEL_59:
              a2 = v204;
              goto LABEL_60;
            }

LABEL_18:
            v113 = v229;
            (*(v95 + 8))(v210, v229);
            (*(v95 + 32))(v96, v46, v113);
            goto LABEL_30;
          }
        }

        v96 = v226;
        (*(v228 + 56))(v226, 1, 1, v229);
LABEL_60:
        a4 = v215;
LABEL_20:
        v115 = v222;
        v114 = v223;
        v116 = v224;
LABEL_21:
        v97 = v225;
        goto LABEL_43;
      }
    }

    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v114 = v223;
  v96 = v226;
  v181 = v220;
  (*(v223 + 56))(v226, 1, 1, v220);
  v115 = v222;
  v116 = v224;
  v97 = v225;
LABEL_44:
  v183 = v217;
  v182 = v218;
  (*(v218 + 32))(v217, v96, v97);
  if ((*(v114 + 48))(v183, 1, v181) == 1)
  {
    v184 = v229;
    v185 = a4;
    v186 = v219;
    specialized _parseInteger<A, B>(ascii:radix:)(v227, a2, 10, v229, v185, v219);
    a2;
    (*(v182 + 8))(v183, v97);
    v187 = *(v114 + 32);
    v188 = v181;
  }

  else
  {
    a2;
    v187 = *(v114 + 32);
    v186 = v219;
    v187(v219, v183, v181);
    v188 = v181;
    v184 = v229;
  }

  v189 = v228;
  v187(v116, v186, v188);
  v190 = *(v189 + 48);
  v191 = v190(v116, 1, v184);
  v192 = v221;
  if (v191 == 1)
  {
    (*(v114 + 8))(v116, v188);
LABEL_49:
    v193 = *(v189 + 56);
    v193(v115, 1, 1, v184);
    v194 = (*(v189 + 48))(v115, 1, v184);
    goto LABEL_51;
  }

  (*(v189 + 32))(v115, v116, v184);
  v193 = *(v189 + 56);
  v193(v115, 0, 1, v184);
  v194 = v190(v115, 1, v184);
LABEL_51:
  if (v194)
  {
    (*(v114 + 8))(v115, v188);
    v195 = 1;
  }

  else
  {
    (*(v189 + 32))(v192, v115, v184);
    v195 = 0;
  }

  return (v193)(v192, v195, 1, v184);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance _DictionaryCodingKey@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = specialized _DictionaryCodingKey.init(stringValue:)(a2, a3);
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6 & 1;
  return result;
}

unint64_t protocol witness for CodingKey.init(intValue:) in conformance _DictionaryCodingKey@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  result = specialized _DictionaryCodingKey.init(intValue:)(a2);
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v5 & 1;
  return result;
}

void *RawRepresentable<>.codingKey.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  (*(a2 + 24))(v12, a1, a2);
  v4 = specialized _DictionaryCodingKey.init(stringValue:)(v12[0], v12[1]);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  a3[3] = &type metadata for _DictionaryCodingKey;
  a3[4] = &protocol witness table for _DictionaryCodingKey;
  result = swift_allocObject(&unk_1EEEADD90, 0x29, 7uLL);
  *a3 = result;
  result[2] = v4;
  result[3] = v6;
  result[4] = v8;
  *(result + 40) = v10 & 1;
  return result;
}

{
  (*(a2 + 24))(&v12, a1, a2);
  v4 = specialized _DictionaryCodingKey.init(intValue:)(v12);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  a3[3] = &type metadata for _DictionaryCodingKey;
  a3[4] = &protocol witness table for _DictionaryCodingKey;
  result = swift_allocObject(&unk_1EEEADD90, 0x29, 7uLL);
  *a3 = result;
  result[2] = v4;
  result[3] = v6;
  result[4] = v8;
  *(result + 40) = v10 & 1;
  return result;
}

uint64_t RawRepresentable<>.init<A>(codingKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, uint64_t a7@<X3>)
{
  v26 = a6;
  v12 = type metadata accessor for Optional(0, a2, a3, a7);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v25 - v15;
  v17 = (*(a5 + 24))(a3, a5);
  v19 = v18;
  (*(*(a3 - 8) + 8))(a1, a3);
  v27[0] = v17;
  v27[1] = v19;
  (*(a4 + 16))(v27, a2, a4);
  v20 = *(a2 - 8);
  if ((*(v20 + 48))(v16, 1, a2))
  {
    (*(v13 + 8))(v16, v12);
    v21 = 1;
    v22 = v26;
  }

  else
  {
    v23 = v26;
    (*(v20 + 32))(v26, v16, a2);
    v21 = 0;
    v22 = v23;
  }

  return (*(v20 + 56))(v22, v21, 1, a2);
}

{
  v25 = a6;
  v12 = type metadata accessor for Optional(0, a2, a3, a7);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v25 - v15;
  v17 = (*(a5 + 40))(a3, a5);
  LOBYTE(a5) = v18;
  (*(*(a3 - 8) + 8))(a1, a3);
  if (a5)
  {
    v19 = *(a2 - 8);
  }

  else
  {
    v26 = v17;
    (*(a4 + 16))(&v26, a2, a4);
    v19 = *(a2 - 8);
    v20 = v19;
    if (!(*(v19 + 48))(v16, 1, a2))
    {
      v24 = v25;
      (*(v19 + 32))(v25, v16, a2);
      v22 = v24;
      v21 = 0;
      return (*(v20 + 56))(v22, v21, 1, a2);
    }

    (*(v13 + 8))(v16, v12);
  }

  v20 = v19;
  v21 = 1;
  v22 = v25;
  return (*(v20 + 56))(v22, v21, 1, a2);
}

void *Int.codingKey.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = specialized _DictionaryCodingKey.init(intValue:)(a1);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  a2[3] = &type metadata for _DictionaryCodingKey;
  a2[4] = &protocol witness table for _DictionaryCodingKey;
  result = swift_allocObject(&unk_1EEEADD90, 0x29, 7uLL);
  *a2 = result;
  result[2] = v3;
  result[3] = v5;
  result[4] = v7;
  *(result + 40) = v9 & 1;
  return result;
}

uint64_t Int.init<A>(codingKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = specialized Int.init<A>(codingKey:)(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

void *protocol witness for CodingKeyRepresentable.codingKey.getter in conformance Int@<X0>(void *a1@<X8>)
{
  v3 = specialized _DictionaryCodingKey.init(intValue:)(*v1);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  a1[3] = &type metadata for _DictionaryCodingKey;
  a1[4] = &protocol witness table for _DictionaryCodingKey;
  result = swift_allocObject(&unk_1EEEADD90, 0x29, 7uLL);
  *a1 = result;
  result[2] = v3;
  result[3] = v5;
  result[4] = v7;
  *(result + 40) = v9 & 1;
  return result;
}

uint64_t protocol witness for CodingKeyRepresentable.init<A>(codingKey:) in conformance Int@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>)
{
  v7 = specialized Int.init<A>(codingKey:)(a1, a2, a4);
  v9 = v8;
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a3 = v7;
  *(a3 + 8) = v9 & 1;
  return result;
}

void *String.codingKey.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  a2;
  v6 = specialized _DictionaryCodingKey.init(stringValue:)(a1, a2);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  a3[3] = &type metadata for _DictionaryCodingKey;
  a3[4] = &protocol witness table for _DictionaryCodingKey;
  result = swift_allocObject(&unk_1EEEADD90, 0x29, 7uLL);
  *a3 = result;
  result[2] = v6;
  result[3] = v8;
  result[4] = v10;
  *(result + 40) = v12 & 1;
  return result;
}

uint64_t String.init<A>(codingKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = specialized String.init<A>(codingKey:)(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

void *protocol witness for CodingKeyRepresentable.codingKey.getter in conformance String@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v3;
  v5 = specialized _DictionaryCodingKey.init(stringValue:)(v4, v3);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  a1[3] = &type metadata for _DictionaryCodingKey;
  a1[4] = &protocol witness table for _DictionaryCodingKey;
  result = swift_allocObject(&unk_1EEEADD90, 0x29, 7uLL);
  *a1 = result;
  result[2] = v5;
  result[3] = v7;
  result[4] = v9;
  *(result + 40) = v11 & 1;
  return result;
}

uint64_t protocol witness for CodingKeyRepresentable.init<A>(codingKey:) in conformance String@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>)
{
  v7 = specialized String.init<A>(codingKey:)(a1, a2, a4);
  v9 = v8;
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a3 = v7;
  a3[1] = v9;
  return result;
}

uint64_t Dictionary<>.encode(to:)(void *a1, uint64_t a2, char *a3, unint64_t *a4, swift *a5, uint64_t a6, uint64_t a7)
{
  v483 = a7;
  v457 = a5;
  v8 = a3;
  v451 = a2;
  v462 = type metadata accessor for Optional(0, a4, a3, a4);
  v452 = *(v462 - 8);
  v11 = MEMORY[0x1EEE9AC00](v462, v10);
  v447 = (&v441 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v446 = &v441 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v442 = &v441 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v455 = &v441 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v459 = &v441 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v443 = &v441 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v444 = &v441 - v30;
  MEMORY[0x1EEE9AC00](v29, v31);
  v466 = &v441 - v32;
  v461 = type metadata accessor for Optional(0, v8, v33, v34);
  v481 = *(v461 - 8);
  v36 = MEMORY[0x1EEE9AC00](v461, v35);
  v463 = &v441 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v460 = &v441 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39, v41);
  j = (&v441 - v43);
  v45 = MEMORY[0x1EEE9AC00](v42, v44);
  v468 = &v441 - v46;
  v48 = MEMORY[0x1EEE9AC00](v45, v47);
  v473 = (&v441 - v49);
  v51 = MEMORY[0x1EEE9AC00](v48, v50);
  i = (&v441 - v52);
  v54 = MEMORY[0x1EEE9AC00](v51, v53);
  v56 = &v441 - v55;
  v58 = MEMORY[0x1EEE9AC00](v54, v57);
  v60 = (&v441 - v59);
  v478 = *(a4 - 1);
  v62 = MEMORY[0x1EEE9AC00](v58, v61);
  v456 = (&v441 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = MEMORY[0x1EEE9AC00](v62, v64);
  v445 = (&v441 - v66);
  v68 = MEMORY[0x1EEE9AC00](v65, v67);
  v471 = &v441 - v69;
  v71 = MEMORY[0x1EEE9AC00](v68, v70);
  v448 = (&v441 - v72);
  v74 = MEMORY[0x1EEE9AC00](v71, v73);
  v470 = &v441 - v75;
  v77 = MEMORY[0x1EEE9AC00](v74, v76);
  v449 = (&v441 - v78);
  v80 = MEMORY[0x1EEE9AC00](v77, v79);
  v82 = &v441 - v81;
  v84 = MEMORY[0x1EEE9AC00](v80, v83);
  v86 = (&v441 - v85);
  v88 = MEMORY[0x1EEE9AC00](v84, v87);
  v476 = &v441 - v89;
  v477 = *(v8 - 1);
  v91 = MEMORY[0x1EEE9AC00](v88, v90);
  v474 = (&v441 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = MEMORY[0x1EEE9AC00](v91, v93);
  v450 = (&v441 - v95);
  v97 = MEMORY[0x1EEE9AC00](v94, v96);
  v453 = (&v441 - v98);
  v100 = MEMORY[0x1EEE9AC00](v97, v99);
  v454 = (&v441 - v101);
  v103 = MEMORY[0x1EEE9AC00](v100, v102);
  v105 = (&v441 - v104);
  MEMORY[0x1EEE9AC00](v103, v106);
  v485 = &v441 - v107;
  v486 = a4;
  swift_getTupleTypeMetadata2(255, v8, a4, "key value ", 0);
  v109 = v108;
  v484 = type metadata accessor for Optional(0, v108, v110, v111);
  v113 = MEMORY[0x1EEE9AC00](v484, v112);
  k = &v441 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = MEMORY[0x1EEE9AC00](v113, v115);
  v464 = (&v441 - v117);
  v119 = MEMORY[0x1EEE9AC00](v116, v118);
  v479 = (&v441 - v120);
  v122 = MEMORY[0x1EEE9AC00](v119, v121);
  v467 = &v441 - v123;
  v125 = MEMORY[0x1EEE9AC00](v122, v124);
  v475 = &v441 - v126;
  v128 = MEMORY[0x1EEE9AC00](v125, v127);
  v458 = &v441 - v129;
  v131 = MEMORY[0x1EEE9AC00](v128, v130);
  MEMORY[0x1EEE9AC00](v131, v132);
  v482 = v109;
  if (v8 == &type metadata for String)
  {
    k = &v441 - v133;
    v471 = v135;
    v147 = v134;
    v456 = v105;
    v457 = v86;
    v467 = v82;
    v473 = v60;
    v441 = v56;
    v148 = a1[3];
    v149 = a1[4];
    __swift_project_boxed_opaque_existential_0Tm(a1, v148);
    (*(v149 + 24))(v488, &type metadata for _DictionaryCodingKey, &type metadata for _DictionaryCodingKey, &protocol witness table for _DictionaryCodingKey, v148, v149);
    v150 = v451;
    if ((v451 & 0xC000000000000001) != 0)
    {
      if (v451 < 0)
      {
        v151 = v451;
      }

      else
      {
        v151 = v451 & 0xFFFFFFFFFFFFFF8;
      }

      v152 = type metadata accessor for __CocoaDictionary.Iterator();
      v153 = swift_allocObject(v152, 0xE8, 7uLL);
      v459 = 0;
      v154 = 0;
      v155 = 0;
      *(v153 + 208) = v151;
      *(v153 + 216) = 0;
      *(v153 + 16) = 0u;
      *(v153 + 32) = 0u;
      *(v153 + 48) = 0u;
      *(v153 + 64) = 0u;
      *(v153 + 80) = 0u;
      *(v153 + 96) = 0u;
      *(v153 + 112) = 0u;
      *(v153 + 128) = 0u;
      *(v153 + 144) = 0u;
      *(v153 + 160) = 0u;
      *(v153 + 176) = 0u;
      *(v153 + 192) = 0u;
      *(v153 + 224) = 0;
      v156 = v153 | 0x8000000000000000;
    }

    else
    {
      v174 = -1 << *(v451 + 32);
      v154 = ~v174;
      v175 = *(v451 + 64);
      v459 = (v451 + 64);
      v176 = -v174;
      if (v176 < 64)
      {
        v177 = ~(-1 << v176);
      }

      else
      {
        v177 = -1;
      }

      v155 = (v177 & v175);
      v156 = v451;
    }

    v178 = v466;
    v179 = v452;
    v180 = v473;
    v460 = (v156 & 0x7FFFFFFFFFFFFFFFLL);
    v454 = (v477 + 56);
    v453 = (v481 + 16);
    v452 = (v477 + 48);
    v450 = (v481 + 8);
    v480 = (v477 + 32);
    v449 = (v478 + 56);
    v448 = (v179 + 2);
    v447 = (v478 + 48);
    v446 = (v179 + 1);
    v479 = (v478 + 32);
    v470 = (v109 - 8);
    v455 = v154;
    v458 = ((v154 + 64) >> 6);
    v464 = (v477 + 16);
    v463 = (v478 + 16);
    j = (v147 + 32);
    v468 = (v478 + 8);
    v150;
    v181 = 0;
    v182 = k;
    for (i = v156; ; v156 = i)
    {
      v475 = v155;
      v474 = v181;
      if ((v156 & 0x8000000000000000) != 0)
      {
        v185 = v460;
        v186 = *(v460 + 27);
        if ((v186 & 0x8000000000000000) != 0)
        {
          goto LABEL_57;
        }

        if (v186 == *(v460 + 28))
        {
          v187 = [*(v460 + 26) countByEnumeratingWithState:v460 + 16 objects:v460 + 80 count:16];
          v185[28] = v187;
          if (!v187)
          {
            v185[27] = -1;
LABEL_57:
            v202 = 1;
            v190 = v181;
            v481 = v155;
LABEL_58:
            v200 = v471;
            goto LABEL_59;
          }

          v185[27] = 0;
          v188 = v185[3];
          if (!v188)
          {
            goto LABEL_212;
          }

          v186 = 0;
        }

        else
        {
          v188 = *(v460 + 3);
          if (!v188)
          {
            goto LABEL_212;
          }

          if (v186 >> 60)
          {
            __break(1u);
LABEL_209:
            __break(1u);
LABEL_210:
            __break(1u);
LABEL_211:
            __break(1u);
LABEL_212:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }
        }

        v203 = (v188 + 8 * v186);
        if ((v203 & 7) != 0)
        {
          goto LABEL_207;
        }

        v204 = *v203;
        v185[27] = v186 + 1;
        v205 = v185[26];
        swift_unknownObjectRetain(v204);
        v206 = [v205 &sel:v204 objectForKey:?];
        if (!v206)
        {
          goto LABEL_212;
        }

        v207 = v206;
        if (_swift_isClassOrObjCExistentialType(&type metadata for String, &type metadata for String))
        {
          *&v491 = v204;
          v211 = v456;
          swift_dynamicCast(v456, &v491, qword_1EEEAC710, &type metadata for String, 7uLL, v208, v209, v210, v441);
        }

        else
        {
          (*v454)(v180, 1, 1, &type metadata for String);
          _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v204, &type metadata for String, v180);
          v232 = v441;
          v233 = v180;
          v234 = v180;
          v235 = v461;
          (*v453)(v441, v233, v461);
          if ((*v452)(v232, 1, &type metadata for String) == 1)
          {
            goto LABEL_213;
          }

          (*v450)(v234, v235);
          swift_unknownObjectRelease(v204);
          v211 = v456;
          (*v480)();
        }

        v212 = v486;
        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v486, v486);
        v200 = v471;
        if (isClassOrObjCExistentialType)
        {
          *&v491 = v207;
          v217 = v457;
          swift_dynamicCast(v457, &v491, qword_1EEEAC710, v212, 7uLL, v214, v215, v216, v441);
        }

        else
        {
          (*v449)(v178, 1, 1, v212);
          _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v207, v212, v178);
          v236 = v444;
          (*v448)(v444, v466, v462);
          if ((*v447)(v236, 1, v212) == 1)
          {
LABEL_213:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          (*v446)(v466, v462);
          swift_unknownObjectRelease(v207);
          v217 = v457;
          (*v479)(v457, v444, v212);
        }

        v218 = *(v109 + 48);
        (*v480)(v200, v211, &type metadata for String);
        (*v479)(&v200[v218], v217, v212);
        v202 = 0;
        v190 = v474;
        v481 = v475;
      }

      else
      {
        if (!v155)
        {
          if (v458 <= (v181 + 1))
          {
            v189 = v181 + 1;
          }

          else
          {
            v189 = v458;
          }

          v190 = v189 - 1;
          v191 = v181;
          while (1)
          {
            v184 = (v191 + 1);
            if (__OFADD__(v191, 1))
            {
              break;
            }

            if (v184 >= v458)
            {
              v481 = 0;
              v202 = 1;
              goto LABEL_58;
            }

            v183 = *&v459[8 * v184];
            ++v191;
            if (v183)
            {
              goto LABEL_45;
            }
          }

          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v183 = v155;
        v184 = v181;
LABEL_45:
        v481 = ((v183 - 1) & v183);
        v192 = __clz(__rbit64(v183)) | (v184 << 6);
        v193 = v477;
        v194 = v485;
        (*(v477 + 16))(v485, *(v156 + 48) + *(v477 + 72) * v192, &type metadata for String);
        v195 = v478;
        v196 = *(v156 + 56) + *(v478 + 72) * v192;
        v197 = v476;
        v198 = v486;
        (*(v478 + 16))(v476, v196, v486);
        v199 = *(v482 + 48);
        v200 = v471;
        v201 = v194;
        v109 = v482;
        (*(v193 + 32))(v471, v201, &type metadata for String);
        (*(v195 + 32))(&v200[v199], v197, v198);
        v202 = 0;
        v190 = v184;
        v178 = v466;
        v182 = k;
      }

LABEL_59:
      v219 = *(v109 - 8);
      (*(v219 + 56))(v200, v202, 1, v109);
      (*j)(v182, v200, v484);
      if ((*(v219 + 48))(v182, 1, v109) == 1)
      {
        v237 = i;
LABEL_110:
        _sSh8IteratorV8_VariantOySS__GWOe_0(v237);
        return v488[0];
      }

      v220 = v467;
      v221 = v486;
      (*v479)(v467, (v182 + *(v109 + 48)), v486);
      v222 = v485;
      (*v480)(v485, v182, &type metadata for String);
      swift_dynamicCast(&v491, v222, &type metadata for String, &type metadata for String, 7uLL, v223, v224, v225, v441);
      v226 = specialized _DictionaryCodingKey.init(stringValue:)(v491, *(&v491 + 1));
      v228 = v227;
      *&v491 = v226;
      *(&v491 + 1) = v227;
      v492 = v229;
      LOBYTE(v493) = v230 & 1;
      v231 = v487;
      (*(*v488[0] + 232))(v220, &v491, v221, &type metadata for _DictionaryCodingKey, v483, &protocol witness table for _DictionaryCodingKey);
      v487 = v231;
      if (v231)
      {
        (*v468)(v220, v221);
        v238 = i;
        goto LABEL_112;
      }

      (*v468)(v220, v221);
      v228;
      v181 = v190;
      v155 = v481;
      v180 = v473;
    }
  }

  v136 = v451;
  if (v8 == &type metadata for Int)
  {
    v157 = v134;
    v158 = a1[3];
    v159 = a1[4];
    __swift_project_boxed_opaque_existential_0Tm(a1, v158);
    (*(v159 + 24))(v488, &type metadata for _DictionaryCodingKey, &type metadata for _DictionaryCodingKey, &protocol witness table for _DictionaryCodingKey, v158, v159);
    if ((v136 & 0xC000000000000001) != 0)
    {
      if (v136 < 0)
      {
        v160 = v136;
      }

      else
      {
        v160 = v136 & 0xFFFFFFFFFFFFFF8;
      }

      v161 = type metadata accessor for __CocoaDictionary.Iterator();
      v162 = swift_allocObject(v161, 0xE8, 7uLL);
      k = 0;
      v163 = 0;
      v164 = 0;
      *(v162 + 208) = v160;
      *(v162 + 216) = 0;
      *(v162 + 16) = 0u;
      *(v162 + 32) = 0u;
      *(v162 + 48) = 0u;
      *(v162 + 64) = 0u;
      *(v162 + 80) = 0u;
      *(v162 + 96) = 0u;
      *(v162 + 112) = 0u;
      *(v162 + 128) = 0u;
      *(v162 + 144) = 0u;
      *(v162 + 160) = 0u;
      *(v162 + 176) = 0u;
      *(v162 + 192) = 0u;
      *(v162 + 224) = 0;
      v165 = v162 | 0x8000000000000000;
    }

    else
    {
      v239 = -1 << *(v136 + 32);
      v163 = ~v239;
      v240 = *(v136 + 64);
      k = v136 + 64;
      v241 = -v239;
      if (v241 < 64)
      {
        v242 = ~(-1 << v241);
      }

      else
      {
        v242 = -1;
      }

      v164 = v242 & v240;
      v165 = v136;
    }

    v243 = v459;
    v244 = v452;
    v245 = v473;
    v246 = v458;
    v460 = (v165 & 0x7FFFFFFFFFFFFFFFLL);
    v455 = (v477 + 56);
    v453 = (v481 + 16);
    v452 = (v477 + 48);
    v450 = (v481 + 8);
    v480 = (v477 + 32);
    v448 = (v478 + 56);
    v447 = (v244 + 2);
    v446 = (v478 + 48);
    v445 = (v244 + 1);
    v479 = (v478 + 32);
    v468 = (v109 - 8);
    v456 = v163;
    v457 = ((v163 + 64) >> 6);
    v464 = (v477 + 16);
    v463 = (v478 + 16);
    v467 = v157 + 32;
    v466 = (v478 + 8);
    v136;
    v247 = 0;
    v248 = v164;
    for (j = v165; ; v165 = j)
    {
      v249 = i;
      v471 = v248;
      v474 = v247;
      if ((v165 & 0x8000000000000000) != 0)
      {
        v252 = v460;
        v253 = *(v460 + 27);
        v254 = v486;
        if ((v253 & 0x8000000000000000) != 0)
        {
          v270 = 1;
          v258 = v247;
LABEL_101:
          v481 = v248;
          v260 = v475;
          goto LABEL_102;
        }

        if (v253 == *(v460 + 28))
        {
          v255 = [*(v460 + 26) countByEnumeratingWithState:v460 + 16 objects:v460 + 80 count:16];
          v252 = v460;
          *(v460 + 28) = v255;
          if (!v255)
          {
            v252[27] = -1;
            v270 = 1;
            v258 = v474;
            goto LABEL_101;
          }

          v252[27] = 0;
          v256 = v252[3];
          if (!v256)
          {
            goto LABEL_212;
          }

          v253 = 0;
        }

        else
        {
          v256 = *(v460 + 3);
          if (!v256)
          {
            goto LABEL_212;
          }

          if (v253 >> 60)
          {
            goto LABEL_209;
          }
        }

        v271 = (v256 + 8 * v253);
        if ((v271 & 7) != 0)
        {
          goto LABEL_207;
        }

        v272 = *v271;
        v252[27] = v253 + 1;
        v273 = v252[26];
        swift_unknownObjectRetain(v272);
        v274 = [v273 &sel:v272 objectForKey:?];
        if (!v274)
        {
          goto LABEL_212;
        }

        v275 = v274;
        if (_swift_isClassOrObjCExistentialType(&type metadata for Int, &type metadata for Int))
        {
          *&v491 = v272;
          swift_dynamicCast(v454, &v491, qword_1EEEAC710, &type metadata for Int, 7uLL, v276, v277, v278, v441);
        }

        else
        {
          (*v455)(v249, 1, 1, &type metadata for Int);
          _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v272, &type metadata for Int, v249);
          v297 = v245;
          v298 = v249;
          v299 = v245;
          v300 = v461;
          (*v453)(v297, v298, v461);
          if ((*v452)(v299, 1, &type metadata for Int) == 1)
          {
            goto LABEL_213;
          }

          (*v450)(i, v300);
          swift_unknownObjectRelease(v272);
          (*v480)(v454, v473, &type metadata for Int);
        }

        v279 = _swift_isClassOrObjCExistentialType(v254, v254);
        v260 = v475;
        if (v279)
        {
          *&v491 = v275;
          v283 = v449;
          swift_dynamicCast(v449, &v491, qword_1EEEAC710, v254, 7uLL, v280, v281, v282, v441);
        }

        else
        {
          v301 = v443;
          (*v448)(v443, 1, 1, v254);
          _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v275, v254, v301);
          (*v447)(v243, v301, v462);
          if ((*v446)(v243, 1, v254) == 1)
          {
            goto LABEL_213;
          }

          (*v445)(v301, v462);
          v302 = v449;
          (*v479)(v449, v243, v254);
          v303 = v275;
          v283 = v302;
          swift_unknownObjectRelease(v303);
        }

        v284 = *(v109 + 48);
        (*v480)(v260, v454, &type metadata for Int);
        (*v479)(&v260[v284], v283, v254);
        v270 = 0;
        v258 = v474;
        v481 = v471;
      }

      else if (v248)
      {
        v250 = v248;
        v251 = v247;
LABEL_88:
        v481 = ((v250 - 1) & v250);
        v261 = __clz(__rbit64(v250)) | (v251 << 6);
        v262 = v477;
        v263 = v485;
        (*(v477 + 16))(v485, *(v165 + 48) + *(v477 + 72) * v261, &type metadata for Int);
        v264 = v478;
        v265 = *(v165 + 56) + *(v478 + 72) * v261;
        v266 = v476;
        v267 = v486;
        (*(v478 + 16))(v476, v265, v486);
        v268 = *(v482 + 48);
        v269 = *(v262 + 32);
        v109 = v482;
        v260 = v475;
        v269(v475, v263, &type metadata for Int);
        (*(v264 + 32))(&v260[v268], v266, v267);
        v270 = 0;
        v258 = v251;
        v243 = v459;
        v246 = v458;
      }

      else
      {
        if (v457 <= (v247 + 1))
        {
          v257 = (v247 + 1);
        }

        else
        {
          v257 = v457;
        }

        v258 = (v257 - 1);
        v259 = v247;
        v260 = v475;
        while (1)
        {
          v251 = v259 + 1;
          if (__OFADD__(v259, 1))
          {
            goto LABEL_204;
          }

          if (v251 >= v457)
          {
            break;
          }

          v250 = *(k + 8 * v251);
          v259 = (v259 + 1);
          if (v250)
          {
            goto LABEL_88;
          }
        }

        v481 = 0;
        v270 = 1;
      }

LABEL_102:
      v285 = *(v109 - 8);
      (*(v285 + 56))(v260, v270, 1, v109);
      (*v467)(v246, v260, v484);
      if ((*(v285 + 48))(v246, 1, v109) == 1)
      {
        v237 = j;
        goto LABEL_110;
      }

      v286 = v470;
      v287 = v486;
      (*v479)(v470, &v246[*(v109 + 48)], v486);
      v288 = v485;
      (*v480)(v485, v246, &type metadata for Int);
      swift_dynamicCast(&v491, v288, &type metadata for Int, &type metadata for Int, 7uLL, v289, v290, v291, v441);
      v292 = specialized _DictionaryCodingKey.init(intValue:)(v491);
      v228 = v293;
      *&v491 = v292;
      *(&v491 + 1) = v293;
      v492 = v294;
      LOBYTE(v493) = v295 & 1;
      v296 = v487;
      (*(*v488[0] + 232))(v286, &v491, v287, &type metadata for _DictionaryCodingKey, v483, &protocol witness table for _DictionaryCodingKey);
      v487 = v296;
      if (v296)
      {
        (*v466)(v286, v287);
        v238 = j;
LABEL_112:
        _sSh8IteratorV8_VariantOySS__GWOe_0(v238);
        v228;
        return v488[0];
      }

      (*v466)(v286, v287);
      v228;
      v247 = v258;
      v248 = v481;
      v245 = v473;
    }
  }

  v475 = v134;
  v137 = swift_conformsToProtocol2(v8, protocol descriptor for CodingKeyRepresentable);
  v138 = v136 & 0xC000000000000001;
  v480 = v8;
  if (!v137 || !v8)
  {
    v166 = a1[3];
    v167 = a1[4];
    __swift_project_boxed_opaque_existential_0Tm(a1, v166);
    (*(v167 + 32))(&v491, v166, v167);
    v168 = v136;
    if (v138)
    {
      if (v136 < 0)
      {
        v169 = v136;
      }

      else
      {
        v169 = v136 & 0xFFFFFFFFFFFFFF8;
      }

      v170 = type metadata accessor for __CocoaDictionary.Iterator();
      v171 = swift_allocObject(v170, 0xE8, 7uLL);
      v467 = 0;
      v172 = 0;
      v173 = 0;
      *(v171 + 208) = v169;
      *(v171 + 216) = 0;
      *(v171 + 16) = 0u;
      *(v171 + 32) = 0u;
      *(v171 + 48) = 0u;
      *(v171 + 64) = 0u;
      *(v171 + 80) = 0u;
      *(v171 + 96) = 0u;
      *(v171 + 112) = 0u;
      *(v171 + 128) = 0u;
      *(v171 + 144) = 0u;
      *(v171 + 160) = 0u;
      *(v171 + 176) = 0u;
      *(v171 + 192) = 0u;
      *(v171 + 224) = 0;
      v136 = v171 | 0x8000000000000000;
    }

    else
    {
      v305 = -1 << *(v136 + 32);
      v172 = ~v305;
      v306 = *(v136 + 64);
      v467 = (v136 + 64);
      v307 = -v305;
      if (v307 < 64)
      {
        v308 = ~(-1 << v307);
      }

      else
      {
        v308 = -1;
      }

      v173 = (v308 & v306);
    }

    v309 = v486;
    v310 = v462;
    v311 = v463;
    v312 = v460;
    v458 = (v136 & 0x7FFFFFFFFFFFFFFFLL);
    v453 = (v477 + 56);
    v451 = (v481 + 16);
    v449 = (v477 + 48);
    v442 = v481 + 8;
    v481 = (v477 + 32);
    v448 = (v478 + 56);
    v444 = (v452 + 2);
    v443 = (v478 + 48);
    ++v452;
    v479 = (v478 + 32);
    v471 = (v109 - 8);
    v454 = v172;
    v455 = ((v172 + 64) >> 6);
    v466 = (v477 + 16);
    v459 = (v478 + 16);
    v470 = v475 + 32;
    v468 = (v477 + 8);
    j = (v478 + 8);
    v168;
    v313 = 0;
    i = v136;
    v314 = v461;
    while (1)
    {
      v473 = v173;
      v475 = v313;
      if (v136 < 0)
      {
        break;
      }

      if (v173)
      {
        v315 = v173;
        v316 = v313;
LABEL_134:
        v486 = ((v315 - 1) & v315);
        v327 = __clz(__rbit64(v315)) | (v316 << 6);
        v328 = v477;
        v329 = v485;
        v330 = v480;
        (*(v477 + 16))(v485, *(v136 + 48) + *(v477 + 72) * v327, v480);
        v331 = v478;
        v332 = *(v136 + 56) + *(v478 + 72) * v327;
        v333 = v476;
        (*(v478 + 16))(v476, v332, v309);
        v334 = *(v482 + 48);
        v335 = *(v328 + 32);
        v325 = k;
        v336 = v329;
        v109 = v482;
        v335(k, v336, v330);
        (*(v331 + 32))(v325 + v334, v333, v309);
        v337 = 0;
        v322 = v316;
        goto LABEL_145;
      }

      if (v455 <= (v313 + 1))
      {
        v321 = v313 + 1;
      }

      else
      {
        v321 = v455;
      }

      v322 = v321 - 1;
      v323 = v313;
      v324 = v474;
      v325 = k;
      v326 = v464;
      while (1)
      {
        v316 = (v323 + 1);
        if (__OFADD__(v323, 1))
        {
          goto LABEL_206;
        }

        if (v316 >= v455)
        {
          break;
        }

        v315 = *&v467[8 * v316];
        ++v323;
        if (v315)
        {
          goto LABEL_134;
        }
      }

      v486 = 0;
      v337 = 1;
LABEL_149:
      v356 = *(v109 - 8);
      (*(v356 + 56))(v325, v337, 1, v109);
      (*v470)(v326, v325, v484);
      if ((*(v356 + 48))(v326, 1, v109) == 1)
      {
        _sSh8IteratorV8_VariantOySS__GWOe_0(i);
        return __swift_destroy_boxed_opaque_existential_1Tm(&v491);
      }

      v357 = v109;
      v358 = v322;
      v359 = *(v357 + 48);
      v360 = v480;
      (*v481)(v324, v326, v480);
      v361 = v456;
      (*v479)(v456, &v326[v359], v309);
      v362 = v324;
      v363 = v493;
      v364 = v494;
      __swift_mutable_project_boxed_opaque_existential_1(&v491, v493);
      v365 = v487;
      (*(v364 + 160))(v362, v360, v457, v363, v364);
      if (v365)
      {
        v487 = v365;
        _sSh8IteratorV8_VariantOySS__GWOe_0(i);
        (*j)(v361, v309);
        (*v468)(v362, v360);
        return __swift_destroy_boxed_opaque_existential_1Tm(&v491);
      }

      (*v468)(v362, v360);
      v366 = v493;
      v367 = v494;
      __swift_mutable_project_boxed_opaque_existential_1(&v491, v493);
      (*(v367 + 160))(v361, v309, v483, v366, v367);
      v487 = 0;
      (*j)(v361, 0);
      v313 = v358;
      v173 = v486;
      v310 = v462;
      v314 = v461;
      v311 = v463;
      v312 = v460;
      v109 = v482;
      v136 = i;
    }

    v317 = v458;
    v318 = *(v458 + 27);
    if ((v318 & 0x8000000000000000) == 0)
    {
      if (v318 != *(v458 + 28))
      {
        v320 = *(v458 + 3);
        if (!v320)
        {
          goto LABEL_212;
        }

        if (v318 >> 60)
        {
          goto LABEL_211;
        }

LABEL_138:
        v338 = (v320 + 8 * v318);
        if ((v338 & 7) != 0)
        {
          goto LABEL_207;
        }

        v339 = v310;
        v340 = *v338;
        *(v317 + 27) = v318 + 1;
        v341 = *(v317 + 26);
        swift_unknownObjectRetain(v340);
        v342 = [v341 &sel:v340 objectForKey:?];
        if (!v342)
        {
          goto LABEL_212;
        }

        v343 = v342;
        v344 = v480;
        if (_swift_isClassOrObjCExistentialType(v480, v480))
        {
          v488[0] = v340;
          swift_dynamicCast(v450, v488, qword_1EEEAC710, v344, 7uLL, v345, v346, v347, v441);
        }

        else
        {
          (*v453)(v312, 1, 1, v344);
          _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v340, v344, v312);
          (*v451)(v311, v312, v314);
          if ((*v449)(v311, 1, v344) == 1)
          {
            goto LABEL_213;
          }

          (*v442)(v312, v314);
          swift_unknownObjectRelease(v340);
          (*v481)(v450, v311, v344);
        }

        v348 = _swift_isClassOrObjCExistentialType(v309, v309);
        v352 = v447;
        v353 = v446;
        v354 = v445;
        v325 = k;
        if (v348)
        {
          v488[0] = v343;
          swift_dynamicCast(v445, v488, qword_1EEEAC710, v309, 7uLL, v349, v350, v351, v441);
        }

        else
        {
          (*v448)(v446, 1, 1, v309);
          _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v343, v309, v353);
          (*v444)(v352, v353, v339);
          if ((*v443)(v352, 1, v309) == 1)
          {
            goto LABEL_213;
          }

          (*v452)(v353, v339);
          swift_unknownObjectRelease(v343);
          (*v479)(v354, v352, v309);
        }

        v355 = *(v109 + 48);
        (*v481)(v325, v450, v480);
        (*v479)((v325 + v355), v354, v309);
        v337 = 0;
        v322 = v475;
        v486 = v473;
LABEL_145:
        v324 = v474;
LABEL_148:
        v326 = v464;
        goto LABEL_149;
      }

      v319 = [*(v458 + 26) countByEnumeratingWithState:v458 + 16 objects:v458 + 80 count:16];
      *(v317 + 28) = v319;
      if (v319)
      {
        *(v317 + 27) = 0;
        v320 = *(v317 + 3);
        if (!v320)
        {
          goto LABEL_212;
        }

        v318 = 0;
        goto LABEL_138;
      }

      *(v317 + 27) = -1;
    }

    v337 = 1;
    v322 = v313;
    v486 = v173;
    v324 = v474;
    v325 = k;
    goto LABEL_148;
  }

  v139 = a1[3];
  v140 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v139);
  (*(v140 + 24))(&v495, &type metadata for _DictionaryCodingKey, &type metadata for _DictionaryCodingKey, &protocol witness table for _DictionaryCodingKey, v139, v140);
  if (v138)
  {
    if (v136 < 0)
    {
      v141 = v136;
    }

    else
    {
      v141 = v136 & 0xFFFFFFFFFFFFFF8;
    }

    v142 = type metadata accessor for __CocoaDictionary.Iterator();
    v143 = swift_allocObject(v142, 0xE8, 7uLL);
    v463 = 0;
    v144 = 0;
    v145 = 0;
    *(v143 + 208) = v141;
    *(v143 + 216) = 0;
    *(v143 + 16) = 0u;
    *(v143 + 32) = 0u;
    *(v143 + 48) = 0u;
    *(v143 + 64) = 0u;
    *(v143 + 80) = 0u;
    *(v143 + 96) = 0u;
    *(v143 + 112) = 0u;
    *(v143 + 128) = 0u;
    *(v143 + 144) = 0u;
    *(v143 + 160) = 0u;
    *(v143 + 176) = 0u;
    *(v143 + 192) = 0u;
    *(v143 + 224) = 0;
    v146 = v143 | 0x8000000000000000;
  }

  else
  {
    v368 = -1 << *(v136 + 32);
    v144 = ~v368;
    v369 = *(v136 + 64);
    v463 = (v136 + 64);
    v370 = -v368;
    if (v370 < 64)
    {
      v371 = ~(-1 << v370);
    }

    else
    {
      v371 = -1;
    }

    v145 = v371 & v369;
    v146 = v136;
  }

  v372 = v486;
  v373 = j;
  v374 = v455;
  v375 = v452;
  v376 = v479;
  v377 = v475;
  v458 = (v146 & 0x7FFFFFFFFFFFFFFFLL);
  v454 = (v477 + 56);
  v452 = (v481 + 16);
  v450 = (v477 + 48);
  v449 = (v481 + 8);
  v475 = (v477 + 32);
  v447 = (v478 + 56);
  v446 = (v375 + 2);
  v445 = (v478 + 48);
  v444 = (v375 + 1);
  v474 = (v478 + 32);
  v470 = (v109 - 8);
  v456 = v144;
  v457 = ((v144 + 64) >> 6);
  v460 = (v477 + 16);
  v459 = (v478 + 16);
  v466 = v377 + 32;
  v464 = (v478 + 8);
  v136;
  v378 = 0;
  for (k = v146; ; v146 = k)
  {
    v379 = v468;
    i = v145;
    v473 = v378;
    if ((v146 & 0x8000000000000000) != 0)
    {
      v382 = v458;
      v383 = *(v458 + 27);
      if ((v383 & 0x8000000000000000) == 0)
      {
        if (v383 != *(v458 + 28))
        {
          v385 = *(v458 + 3);
          if (!v385)
          {
            goto LABEL_212;
          }

          if (v383 >> 60)
          {
            goto LABEL_210;
          }

          goto LABEL_180;
        }

        v384 = [*(v458 + 26) countByEnumeratingWithState:v458 + 16 objects:v458 + 80 count:16];
        v382 = v458;
        *(v458 + 28) = v384;
        if (v384)
        {
          *(v382 + 27) = 0;
          v385 = *(v382 + 3);
          if (!v385)
          {
            goto LABEL_212;
          }

          v383 = 0;
LABEL_180:
          v400 = (v385 + 8 * v383);
          if ((v400 & 7) != 0)
          {
            goto LABEL_207;
          }

          v401 = *v400;
          *(v382 + 27) = v383 + 1;
          v402 = *(v382 + 26);
          swift_unknownObjectRetain(v401);
          v403 = [v402 &sel:v401 objectForKey:?];
          if (!v403)
          {
            goto LABEL_212;
          }

          v404 = v403;
          if (_swift_isClassOrObjCExistentialType(v8, v8))
          {
            *&v491 = v401;
            swift_dynamicCast(v453, &v491, qword_1EEEAC710, v8, 7uLL, v405, v406, v407, v441);
          }

          else
          {
            (*v454)(v379, 1, 1, v8);
            _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v401, v8, v379);
            v434 = v373;
            v435 = v379;
            v436 = v379;
            v437 = v373;
            v438 = v461;
            (*v452)(v434, v435, v461);
            if ((*v450)(v437, 1, v8) == 1)
            {
              goto LABEL_213;
            }

            (*v449)(v436, v438);
            swift_unknownObjectRelease(v401);
            (*v475)(v453, v437, v8);
            v376 = v479;
          }

          v408 = _swift_isClassOrObjCExistentialType(v372, v372);
          v387 = v473;
          if (v408)
          {
            *&v491 = v404;
            v412 = v448;
            swift_dynamicCast(v448, &v491, qword_1EEEAC710, v372, 7uLL, v409, v410, v411, v441);
          }

          else
          {
            (*v447)(v374, 1, 1, v372);
            _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v404, v372, v374);
            v439 = v442;
            v440 = v462;
            (*v446)(v442, v374, v462);
            if ((*v445)(v439, 1, v372) == 1)
            {
              goto LABEL_213;
            }

            (*v444)(v374, v440);
            swift_unknownObjectRelease(v404);
            v412 = v448;
            (*v474)(v448, v439, v372);
            v387 = v473;
          }

          v413 = *(v109 + 48);
          (*v475)(v376, v453, v8);
          (*v474)((v376 + v413), v412, v372);
          v399 = 0;
          v481 = i;
          goto LABEL_189;
        }

        *(v382 + 27) = -1;
      }

      v399 = 1;
      v387 = v378;
      v481 = v145;
LABEL_189:
      v389 = v471;
      goto LABEL_190;
    }

    if (v145)
    {
      v380 = v145;
      v381 = v378;
LABEL_176:
      v481 = ((v380 - 1) & v380);
      v390 = __clz(__rbit64(v380)) | (v381 << 6);
      v391 = v477;
      v392 = v485;
      v8 = v480;
      (*(v477 + 16))(v485, *(v146 + 48) + *(v477 + 72) * v390, v480);
      v393 = v478;
      v394 = v476;
      (*(v478 + 16))(v476, *(v146 + 56) + *(v478 + 72) * v390, v372);
      v395 = v482;
      v396 = *(v482 + 48);
      v397 = *(v391 + 32);
      v376 = v479;
      v397(v479, v392, v8);
      v398 = *(v393 + 32);
      v109 = v395;
      v398(v376 + v396, v394, v372);
      v399 = 0;
      v387 = v381;
      v374 = v455;
      goto LABEL_189;
    }

    v386 = v457 <= (v378 + 1) ? (v378 + 1) : v457;
    v387 = (v386 - 1);
    v388 = v378;
    v389 = v471;
    while (1)
    {
      v381 = v388 + 1;
      if (__OFADD__(v388, 1))
      {
        goto LABEL_205;
      }

      if (v381 >= v457)
      {
        break;
      }

      v380 = *&v463[8 * v381];
      v388 = (v388 + 1);
      if (v380)
      {
        goto LABEL_176;
      }
    }

    v481 = 0;
    v399 = 1;
LABEL_190:
    v414 = *(v109 - 8);
    (*(v414 + 56))(v376, v399, 1, v109);
    v415 = v467;
    (*v466)(v467, v376, v484);
    if ((*(v414 + 48))(v415, 1, v109) == 1)
    {
      _sSh8IteratorV8_VariantOySS__GWOe_0(k);
      return v495;
    }

    (*v474)(v389, &v415[*(v109 + 48)], v372);
    v416 = v485;
    (*v475)(v485, v415, v8);
    v417 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22CodingKeyRepresentable_pMd, _ss22CodingKeyRepresentable_pMR);
    swift_dynamicCast(v488, v416, v8, v417, 7uLL, v418, v419, v420, v441);
    v421 = v489;
    v422 = v490;
    __swift_project_boxed_opaque_existential_0Tm(v488, v489);
    (*(v422 + 8))(&v491, v421, v422);
    __swift_destroy_boxed_opaque_existential_1Tm(v488);
    _ss9CodingKey_pWOb_0(&v491, v488);
    v423 = v489;
    v424 = v490;
    __swift_project_boxed_opaque_existential_0Tm(v488, v489);
    v425 = (*(v424 + 24))(v423, v424);
    v427 = v426;
    v429 = v489;
    v428 = v490;
    __swift_project_boxed_opaque_existential_0Tm(v488, v489);
    v430 = (*(v428 + 40))(v429, v428);
    LOBYTE(v428) = v431;
    __swift_destroy_boxed_opaque_existential_1Tm(v488);
    v488[0] = v425;
    v488[1] = v427;
    v488[2] = v430;
    v432 = v428 & 1;
    v372 = v486;
    v433 = v487;
    LOBYTE(v489) = v432;
    (*(*v495 + 232))(v389, v488, v486, &type metadata for _DictionaryCodingKey, v483, &protocol witness table for _DictionaryCodingKey);
    v487 = v433;
    if (v433)
    {
      break;
    }

    (*v464)(v389, v372);
    v427;
    v378 = v387;
    v145 = v481;
    v109 = v482;
    v373 = j;
    v376 = v479;
  }

  (*v464)(v389, v372);
  _sSh8IteratorV8_VariantOySS__GWOe_0(k);
  v427;
  return v495;
}

int64_t Dictionary.makeIterator()@<X0>(int64_t result@<X0>, int64_t *a2@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    if (result < 0)
    {
      v3 = result;
    }

    else
    {
      v3 = result & 0xFFFFFFFFFFFFFF8;
    }

    v4 = type metadata accessor for __CocoaDictionary.Iterator();
    v5 = swift_allocObject(v4, 0xE8, 7uLL);
    v6 = 0;
    v7 = 0;
    v8 = 0;
    *(v5 + 208) = v3;
    *(v5 + 216) = 0;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
    *(v5 + 80) = 0u;
    *(v5 + 96) = 0u;
    *(v5 + 112) = 0u;
    *(v5 + 128) = 0u;
    *(v5 + 144) = 0u;
    *(v5 + 160) = 0u;
    *(v5 + 176) = 0u;
    *(v5 + 192) = 0u;
    *(v5 + 224) = 0;
    result = v5 | 0x8000000000000000;
  }

  else
  {
    v9 = -1;
    v10 = -1 << *(result + 32);
    v6 = result + 64;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v9 = ~(-1 << v11);
    }

    v8 = v9 & *(result + 64);
  }

  *a2 = result;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = 0;
  a2[4] = v8;
  return result;
}

uint64_t Dictionary.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 24);
  v6 = *(v5 - 1);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 16);
  v11 = *(v10 - 1);
  result = MEMORY[0x1EEE9AC00](v7, v12);
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v54 - v15;
  v17 = *v3;
  if (*v3 < 0)
  {
    v28 = &v54 - v15;
    v29 = __CocoaDictionary.Iterator.next()();
    if (v29)
    {
      v32 = v30;
      v33 = v29;
      _forceBridgeFromObjectiveC<A>(_:_:)(v29, v10, v28, v31);
      swift_unknownObjectRelease(v33);
      _forceBridgeFromObjectiveC<A>(_:_:)(v32, v5, v9, v34);
      swift_unknownObjectRelease(v32);
      swift_getTupleTypeMetadata2(0, v10, v5, "key value ", 0);
      v36 = v35;
      v37 = *(v35 + 48);
      (*(v11 + 32))(a3, v28, v10);
      (*(v6 + 32))(a3 + v37, v9, v5);
      return (*(*(v36 - 8) + 56))(a3, 0, 1, v36);
    }

    else
    {
      swift_getTupleTypeMetadata2(0, v10, v5, "key value ", 0);
      v52 = *(*(v51 - 8) + 56);

      return v52(a3, 1, 1, v51);
    }
  }

  else
  {
    v19 = v3[1];
    v18 = v3[2];
    v20 = v3[3];
    v21 = v3[4];
    v59 = v18;
    if (v21)
    {
      v22 = v11;
      v23 = v10;
      v24 = v9;
      v25 = v6;
      v26 = v5;
      v57 = a3;
      v27 = v20;
LABEL_14:
      v58 = (v21 - 1) & v21;
      v41 = __clz(__rbit64(v21)) | (v27 << 6);
      v42 = v22;
      v43 = *(v17 + 48) + *(v22 + 72) * v41;
      v44 = *(v22 + 16);
      v55 = v16;
      v56 = v17;
      v45 = v17;
      v44(v16, v43, v23);
      (*(v25 + 16))(v24, *(v45 + 56) + *(v25 + 72) * v41, v26);
      swift_getTupleTypeMetadata2(0, v23, v26, "key value ", 0);
      v47 = v46;
      v54 = *(v46 + 48);
      v48 = v57;
      (*(v42 + 32))(v57, v55, v23);
      (*(v25 + 32))(v48 + v54, v24, v26);
      result = (*(*(v47 - 8) + 56))(v48, 0, 1, v47);
      v49 = v58;
      v40 = v27;
      v50 = v56;
LABEL_15:
      *v3 = v50;
      v3[1] = v19;
      v3[2] = v59;
      v3[3] = v40;
      v3[4] = v49;
    }

    else
    {
      v38 = (v18 + 64) >> 6;
      if (v38 <= v20 + 1)
      {
        v39 = v20 + 1;
      }

      else
      {
        v39 = (v18 + 64) >> 6;
      }

      v40 = v39 - 1;
      while (1)
      {
        v27 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v27 >= v38)
        {
          v50 = v17;
          swift_getTupleTypeMetadata2(0, v10, v5, "key value ", 0);
          result = (*(*(v53 - 8) + 56))(a3, 1, 1, v53);
          v49 = 0;
          goto LABEL_15;
        }

        v21 = *(v19 + 8 * v27);
        ++v20;
        if (v21)
        {
          v22 = v11;
          v23 = v10;
          v24 = v9;
          v25 = v6;
          v26 = v5;
          v57 = a3;
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t Dictionary<>.init(from:)(unint64_t a1, uint64_t a2, Class *a3, swift *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v337 = a6;
  v339 = a5;
  v9 = a3;
  v10 = a2;
  v12 = type metadata accessor for Optional(0, a2, a3, a4);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = (&v307 - v16);
  v332 = *(v10 - 8);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = (&v307 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v336 = (&v307 - v26);
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v30 = &v307 - v29;
  v32 = MEMORY[0x1EEE9AC00](v28, v31);
  v34 = (&v307 - v33);
  v36 = MEMORY[0x1EEE9AC00](v32, v35);
  v329 = (&v307 - v37);
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v338 = *(v9 - 1);
  v41 = MEMORY[0x1EEE9AC00](v39, v40);
  v43 = MEMORY[0x1EEE9AC00](v41, &v307 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = MEMORY[0x1EEE9AC00](v43, v44);
  v47 = MEMORY[0x1EEE9AC00](v45, v46);
  v49 = MEMORY[0x1EEE9AC00](v47, v48);
  v335 = (&v307 - v50);
  v52 = MEMORY[0x1EEE9AC00](v49, v51);
  v54 = MEMORY[0x1EEE9AC00](v52, v53);
  v56 = MEMORY[0x1EEE9AC00](v54, v55);
  v340 = v9;
  if (v10 != &type metadata for String)
  {
    if (v10 != &type metadata for Int)
    {
      v329 = v62;
      v330 = v58;
      v334 = v57;
      v335 = v21;
      v333 = v66;
      v325 = v65;
      v324 = v64;
      v67 = v56;
      v326 = swift_conformsToProtocol2(v10, protocol descriptor for CodingKeyRepresentable);
      v331 = a1;
      if (v326 && v10)
      {
        v320 = v30;
        v321 = v17;
        v68 = a1;
        v69 = *(a1 + 24);
        v70 = *(a1 + 32);
        __swift_project_boxed_opaque_existential_0Tm(v68, v69);
        v71 = (*(v70 + 24))(&v343, &type metadata for _DictionaryCodingKey, &type metadata for _DictionaryCodingKey, &protocol witness table for _DictionaryCodingKey, v69, v70);
        v346 = v7;
        if (v7)
        {
          goto LABEL_121;
        }

        v319 = v13;
        isUniquelyReferenced_nonNull_native = v343;
        v73 = (*(*v343 + 96))(v71);
        v74 = specialized _arrayForceCast<A, B>(_:)(v73);
        v73;
        v76 = v331;
        v313 = v74[2];
        if (!v313)
        {
          isUniquelyReferenced_nonNull_native;
          v74;
          v200 = v76;
          v7 = &_swiftEmptyDictionarySingleton;
          __swift_destroy_boxed_opaque_existential_1Tm(v200);
          return v7;
        }

        v311 = v67;
        v77 = 0;
        v78 = v326;
        v316 = *(v326 + 16);
        v317 = v326 + 16;
        v318 = (v332 + 56);
        v335 = (v332 + 32);
        v323 = (v338 + 4);
        v309 = (v332 + 8);
        v308 = v338 + 5;
        v315 = (v332 + 48);
        v310 = (v329 + 1);
        v7 = &_swiftEmptyDictionarySingleton;
        v79 = (v74 + 7);
        v312 = isUniquelyReferenced_nonNull_native;
        v314 = v74;
        while (1)
        {
          if (v77 >= v74[2])
          {
            goto LABEL_169;
          }

          v328 = v77;
          v149 = *(v79 - 3);
          v148 = *(v79 - 2);
          v150 = *(v79 - 1);
          v327 = v79;
          v151 = *v79;
          v329 = v149;
          v330 = v150;
          v341[0] = v149;
          v341[1] = v148;
          v341[2] = v150;
          LODWORD(v333) = v151;
          v342 = v151;
          v152 = MEMORY[0x1EEE9AC00](v148, v75);
          v154 = &v307 - ((v153 + 15) & 0xFFFFFFFFFFFFFFF0);
          v334 = v152;
          swift_bridgeObjectRetain_n(v152, 2);
          v316(v341, &type metadata for _DictionaryCodingKey, &protocol witness table for _DictionaryCodingKey, v10, v78);
          if ((*v315)(v154, 1, v10) == 1)
          {
            (*v310)(v154, v311);
            v343 = 0u;
            v344 = 0u;
            v345 = 0;
          }

          else
          {
            *(&v344 + 1) = v10;
            v345 = v78;
            v155 = __swift_allocate_boxed_opaque_existential_0Tm(&v343);
            (*v335)(v155, v154, v10);
          }

          v156 = v321;
          v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22CodingKeyRepresentable_pSgMd, _ss22CodingKeyRepresentable_pSgMR);
          if ((swift_dynamicCast(v156, &v343, v157, v10, 6uLL, v158, v159, v160, v307) & 1) == 0)
          {
            break;
          }

          (*v318)(v156, 0, 1, v10);
          v99 = *v335;
          v161 = isUniquelyReferenced_nonNull_native;
          isUniquelyReferenced_nonNull_native = v320;
          (*v335)(v320, v156, v10);
          v162 = v334;
          *&v343 = v329;
          *(&v343 + 1) = v334;
          *&v344 = v330;
          BYTE8(v344) = v333;
          v163 = v325;
          v164 = v346;
          (*(*v161 + 248))(v9, &v343, v9, &type metadata for _DictionaryCodingKey, v337, &protocol witness table for _DictionaryCodingKey);
          v346 = v164;
          if (v164)
          {
            (*v309)(isUniquelyReferenced_nonNull_native, v10);
            v161;
            v162;
            v7;
            v234 = &v343 + 8;
            goto LABEL_120;
          }

          v162;
          (v99)(v336, isUniquelyReferenced_nonNull_native, v10);
          v165 = *v323;
          a1 = v324;
          (*v323)(v324, v163, v9);
          v322 = v99;
          v334 = v165;
          if ((v7 & 0xC000000000000001) != 0)
          {
            if (v7 >= 0)
            {
              v7 &= 0xFFFFFFFFFFFFFF8uLL;
            }

            v166 = [v7 count];
            v78 = v326;
            if (__OFADD__(v166, 1))
            {
              goto LABEL_176;
            }

            v167 = v339;
            v7 = _NativeDictionary.init(_:capacity:)(v7, v166 + 1, v10, v9, v339);
          }

          else
          {
            v78 = v326;
            v167 = v339;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v7);
          *&v343 = v7;
          v168 = __RawDictionaryStorage.find<A>(_:)(v336, v10, v167);
          v170 = *(v7 + 16);
          v171 = (v169 & 1) == 0;
          v99 = v170 + v171;
          if (__OFADD__(v170, v171))
          {
            goto LABEL_174;
          }

          v172 = v169;
          if (*(v7 + 24) >= v99)
          {
            v176 = v168;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              type metadata accessor for _NativeDictionary(0, v10, v340, v339);
              _NativeDictionary.copy()();
            }
          }

          else
          {
            v173 = v339;
            type metadata accessor for _NativeDictionary(0, v10, v340, v339);
            _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v99, isUniquelyReferenced_nonNull_native);
            v174 = __RawDictionaryStorage.find<A>(_:)(v336, v10, v173);
            if ((v172 & 1) != (v175 & 1))
            {
              goto LABEL_185;
            }

            v176 = v174;
          }

          isUniquelyReferenced_nonNull_native = v312;
          if (v172)
          {
            (*v309)(v336, v10);
            v7 = v343;
            v147 = *(v343 + 56) + v338[9] * v176;
            v9 = v340;
            (v338[5])(v147, a1, v340);
          }

          else
          {
            v7 = v343;
            *(v343 + 8 * (v176 >> 6) + 64) |= 1 << v176;
            v322(*(v7 + 48) + *(v332 + 72) * v176, v336, v10);
            v177 = *(v7 + 56) + v338[9] * v176;
            v9 = v340;
            (v334)(v177, a1, v340);
            v178 = *(v7 + 16);
            v115 = __OFADD__(v178, 1);
            v179 = v178 + 1;
            if (v115)
            {
              goto LABEL_178;
            }

            *(v7 + 16) = v179;
          }

          v74 = v314;
          v77 = (v328 + 1);
          v79 = v327 + 32;
          if (v313 == (v328 + 1))
          {
            v252 = v331;
            isUniquelyReferenced_nonNull_native;
            v74;
            __swift_destroy_boxed_opaque_existential_1Tm(v252);
            return v7;
          }
        }

        v7;
        v314;
        (*v318)(v156, 1, 1, v10);
        (*v310)(v156, v311);
        v236 = _StringGuts.init(_initialCapacity:)(32);
        v246 = v237;
        *&v343 = v236;
        *(&v343 + 1) = v237;
        v247 = HIBYTE(v237) & 0xF;
        if ((v237 & 0x2000000000000000) == 0)
        {
          v247 = v236 & 0xFFFFFFFFFFFFLL;
        }

        if (v247 || (v236 & ~v237 & 0x2000000000000000) != 0)
        {
          if ((0x800000018066C3A0 & 0x2000000000000000 & v237) != 0 && (v248 = specialized _SmallString.init(_:appending:)(v236, v237, 0xD00000000000001ELL, 0x800000018066C3A0 | 0x8000000000000000), (v250 & 1) == 0))
          {
            v259 = v248;
            v260 = v249;
            v246;
            0x800000018066C3A0 | 0x8000000000000000;
            *&v343 = v259;
            *(&v343 + 1) = v260;
          }

          else
          {
            if ((0x800000018066C3A0 & 0x2000000000000000) != 0)
            {
              v251 = (0x800000018066C3A0 >> 56) & 0xF;
            }

            else
            {
              v251 = 30;
            }

            _StringGuts.append(_:)(0xD00000000000001ELL, 0x800000018066C3A0 | 0x8000000000000000, 0, v251, v238, v239, v240, v241, v242, v243, v244, v245);
            0x800000018066C3A0 | 0x8000000000000000;
          }
        }

        else
        {
          v237;
          *&v343 = 0xD00000000000001ELL;
          *(&v343 + 1) = 0x800000018066C3A0 | 0x8000000000000000;
        }

        TypeName = swift_getTypeName(v10, 0);
        a1 = v331;
        v263 = v334;
        if (v262 < 0)
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v264 = TypeName;
        v265 = v262;
        v266 = validateUTF8(_:)(TypeName, v262);
        if ((v266 & 0x8000000000000000) != 0)
        {
          v270 = repairUTF8(_:firstKnownBrokenRange:)(v264, v265, v267, v268);
        }

        else
        {
          v270 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v264, v265, v266 & 1, v269);
        }

        v280 = v271;
        v281 = *(&v343 + 1);
        v282 = HIBYTE(*(&v343 + 1)) & 0xFLL;
        if ((*(&v343 + 1) & 0x2000000000000000) == 0)
        {
          v282 = v343 & 0xFFFFFFFFFFFFLL;
        }

        if (!v282 && (v343 & ~*(&v343 + 1) & 0x2000000000000000) == 0)
        {
          v303 = v270;
          *(&v343 + 1);
          v292 = v303;
          *&v343 = v303;
          *(&v343 + 1) = v280;
          goto LABEL_155;
        }

        if ((*(&v343 + 1) & 0x2000000000000000) != 0)
        {
          if ((v271 & 0x2000000000000000) != 0)
          {
            v299 = v270;
            v300 = specialized _SmallString.init(_:appending:)(v343, *(&v343 + 1), v270, v271);
            if ((v302 & 1) == 0)
            {
              v305 = v301;
              v306 = v300;
              v281;
              v280;
              *&v343 = v306;
              *(&v343 + 1) = v305;
              v280 = v305;
              v292 = v306;
              a1 = v331;
              goto LABEL_155;
            }

            v283 = HIBYTE(v280) & 0xF;
            v270 = v299;
            a1 = v331;
            goto LABEL_154;
          }
        }

        else if ((v271 & 0x2000000000000000) != 0)
        {
          v283 = HIBYTE(v271) & 0xF;
LABEL_154:
          _StringGuts.append(_:)(v270, v280, 0, v283, v272, v273, v274, v275, v276, v277, v278, v279);
          v280;
          v280 = *(&v343 + 1);
          v292 = v343;
LABEL_155:
          v293 = HIBYTE(v280) & 0xF;
          if ((v280 & 0x2000000000000000) == 0)
          {
            v293 = v292 & 0xFFFFFFFFFFFFLL;
          }

          if (v293 || (v292 & ~v280 & 0x2000000000000000) != 0)
          {
            if ((v280 & 0x2000000000000000) != 0 && (v294 = specialized _SmallString.init(_:appending:)(v292, v280, 0, 0xE000000000000000), (v296 & 1) == 0))
            {
              v298 = v294;
              v297 = v295;
              v280;
              0xE000000000000000;
            }

            else
            {
              _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v284, v285, v286, v287, v288, v289, v290, v291);
              0xE000000000000000;
              v297 = *(&v343 + 1);
              v298 = v343;
            }
          }

          else
          {
            v280;
            v298 = 0;
            v297 = 0xE000000000000000;
          }

          v7 = swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
          _ss13DecodingErrorO013dataCorruptedB06forKey2in16debugDescriptionAB0F0Qz_xSSts05KeyedA17ContainerProtocolRzlFZs0jaK0Vys017_DictionaryCodingF0VG_Tt3B5(v329, v263, v330, v333, isUniquelyReferenced_nonNull_native, v298, v297, v304);
          v263;
          isUniquelyReferenced_nonNull_native;
          v297;
          v346 = v7;
          swift_willThrow();
          goto LABEL_122;
        }

        v283 = v270 & 0xFFFFFFFFFFFFLL;
        goto LABEL_154;
      }

      v336 = a4;
      v180 = a1;
      v181 = *(a1 + 24);
      v182 = *(a1 + 32);
      __swift_project_boxed_opaque_existential_0Tm(v180, v181);
      (*(v182 + 32))(&v343, v181, v182);
      v346 = v7;
      if (v7)
      {
        goto LABEL_121;
      }

      v183 = *(&v344 + 1);
      v184 = v345;
      __swift_project_boxed_opaque_existential_0Tm(&v343, *(&v344 + 1));
      v185 = (v184[2])(v183, v184);
      if (v186 & 1) == 0 && (v185)
      {
        v187 = swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
        v7 = v188;
        v189 = v331;
        v190 = v331[3];
        v191 = v331[4];
        __swift_project_boxed_opaque_existential_0Tm(v331, v190);
        v192 = *(v191 + 8);
        v193 = v191;
        a1 = v189;
        v194 = v192(v190, v193);
        v195 = 0x800000018066C350 | 0x8000000000000000;
        v196 = 0xD00000000000004DLL;
LABEL_83:
        *v7 = v194;
        *(v7 + 8) = v196;
        *(v7 + 16) = v195;
        *(v7 + 24) = 0;
        *(v7 + 72) = 3;
        v346 = v187;
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_1Tm(&v343);
        goto LABEL_122;
      }

      v198 = *(&v344 + 1);
      v199 = v345;
      __swift_project_boxed_opaque_existential_0Tm(&v343, *(&v344 + 1));
      if ((v199[3])(v198, v199))
      {
        v7 = &_swiftEmptyDictionarySingleton;
LABEL_90:
        __swift_destroy_boxed_opaque_existential_1Tm(&v343);
LABEL_86:
        __swift_destroy_boxed_opaque_existential_1Tm(v331);
        return v7;
      }

      v329 = (v332 + 32);
      v328 = v338 + 4;
      v327 = (v332 + 8);
      v326 = (v338 + 5);
      v7 = &_swiftEmptyDictionarySingleton;
      v208 = v333;
      while (1)
      {
        v211 = *(&v344 + 1);
        v212 = v345;
        __swift_mutable_project_boxed_opaque_existential_1(&v343, *(&v344 + 1));
        v213 = v346;
        (v212[22])(v10, v10, v336, v211, v212);
        v346 = v213;
        if (v213)
        {
LABEL_138:
          v7;
          __swift_destroy_boxed_opaque_existential_1Tm(&v343);
          goto LABEL_121;
        }

        v214 = *(&v344 + 1);
        v215 = v345;
        __swift_project_boxed_opaque_existential_0Tm(&v343, *(&v344 + 1));
        if ((v215[3])(v214, v215))
        {
          (*v327)(v208, v10);
          v7;
          v187 = swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
          v7 = v253;
          v254 = v331;
          v255 = v331[3];
          v256 = v331[4];
          __swift_project_boxed_opaque_existential_0Tm(v331, v255);
          v257 = *(v256 + 8);
          v258 = v256;
          a1 = v254;
          v194 = v257(v255, v258);
          v195 = 0x800000018066C310 | 0x8000000000000000;
          v196 = 0xD00000000000003DLL;
          goto LABEL_83;
        }

        v216 = *(&v344 + 1);
        a1 = v345;
        __swift_mutable_project_boxed_opaque_existential_1(&v343, *(&v344 + 1));
        v217 = v330;
        v218 = v346;
        (*(a1 + 176))(v9, v9, v337, v216, a1);
        v346 = v218;
        if (v218)
        {
          (*v327)(v208, v10);
          goto LABEL_138;
        }

        v99 = *v329;
        (*v329)(v335, v208, v10);
        v219 = v217;
        isUniquelyReferenced_nonNull_native = *v328;
        (*v328)(v334, v219, v9);
        if ((v7 & 0xC000000000000001) != 0)
        {
          if (v7 >= 0)
          {
            v7 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          v220 = [v7 count];
          v221 = v339;
          if (__OFADD__(v220, 1))
          {
            goto LABEL_180;
          }

          v7 = _NativeDictionary.init(_:capacity:)(v7, v220 + 1, v10, v9, v339);
        }

        else
        {
          v221 = v339;
        }

        v222 = swift_isUniquelyReferenced_nonNull_native(v7);
        v341[0] = v7;
        v223 = __RawDictionaryStorage.find<A>(_:)(v335, v10, v221);
        v225 = *(v7 + 16);
        v226 = (v224 & 1) == 0;
        v9 = (v225 + v226);
        if (__OFADD__(v225, v226))
        {
          goto LABEL_179;
        }

        v227 = v224;
        if (*(v7 + 24) < v9)
        {
          break;
        }

        a1 = v223;
        if (v222)
        {
          goto LABEL_113;
        }

        v9 = v340;
        type metadata accessor for _NativeDictionary(0, v10, v340, v339);
        _NativeDictionary.copy()();
LABEL_114:
        v208 = v333;
        v231 = v335;
        if (v227)
        {
          (*v327)(v335, v10);
          v7 = v341[0];
          (v338[5])(*(v341[0] + 56) + v338[9] * a1, v334, v9);
        }

        else
        {
          v7 = v341[0];
          *(v341[0] + 8 * (a1 >> 6) + 64) |= 1 << a1;
          (v99)(*(v7 + 48) + *(v332 + 72) * a1, v231, v10);
          (isUniquelyReferenced_nonNull_native)(*(v7 + 56) + v338[9] * a1, v334, v9);
          v232 = *(v7 + 16);
          v115 = __OFADD__(v232, 1);
          v233 = v232 + 1;
          if (v115)
          {
            goto LABEL_181;
          }

          *(v7 + 16) = v233;
        }

        v209 = *(&v344 + 1);
        v210 = v345;
        __swift_project_boxed_opaque_existential_0Tm(&v343, *(&v344 + 1));
        if ((v210[3])(v209, v210))
        {
          goto LABEL_90;
        }
      }

      v228 = v339;
      type metadata accessor for _NativeDictionary(0, v10, v340, v339);
      _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v9, v222);
      v229 = __RawDictionaryStorage.find<A>(_:)(v335, v10, v228);
      if ((v227 & 1) != (v230 & 1))
      {
LABEL_185:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v10);
      }

      a1 = v229;
LABEL_113:
      v9 = v340;
      goto LABEL_114;
    }

    v328 = v60;
    v117 = *(a1 + 24);
    v118 = *(a1 + 32);
    __swift_project_boxed_opaque_existential_0Tm(a1, v117);
    v119 = (*(v118 + 24))(&v343, &type metadata for _DictionaryCodingKey, &type metadata for _DictionaryCodingKey, &protocol witness table for _DictionaryCodingKey, v117, v118);
    v346 = v7;
    if (v7)
    {
      goto LABEL_122;
    }

    v331 = a1;
    v120 = *(*v343 + 96);
    v327 = v343;
    v121 = v120(v119);
    v86 = specialized _arrayForceCast<A, B>(_:)(v121);
    v121;
    v326 = v86[2];
    if (v326)
    {
      v122 = 0;
      v330 = v338 + 4;
      v323 = (v332 + 16);
      v322 = (v332 + 32);
      v321 = (v338 + 5);
      v324 = (v332 + 8);
      v123 = v86 + 7;
      v7 = &_swiftEmptyDictionarySingleton;
      v10 = &type metadata for Int;
      v325 = v86;
      while (1)
      {
        if (v122 >= v86[2])
        {
          goto LABEL_169;
        }

        isUniquelyReferenced_nonNull_native = *(v123 - 3);
        v124 = *(v123 - 2);
        v99 = *(v123 - 1);
        if (*v123)
        {
          v9 = *(v123 - 2);
          v124;
          v86;
          v327;
          v7;
          a1 = v331;
          v201 = v331[3];
          v202 = v331[4];
          __swift_project_boxed_opaque_existential_0Tm(v331, v201);
          v7 = (*(v202 + 8))(v201, v202);
          if (!swift_isUniquelyReferenced_nonNull_native(v7))
          {
            goto LABEL_182;
          }

          goto LABEL_93;
        }

        v333 = v123;
        v334 = v122;
        v9 = v34;
        *&v343 = isUniquelyReferenced_nonNull_native;
        *(&v343 + 1) = v124;
        *&v344 = v99;
        BYTE8(v344) = 0;
        v125 = *(*v327 + 248);
        isUniquelyReferenced_nonNull_native = *v327 + 248;
        v336 = v124;
        v124;
        v126 = v328;
        v127 = v340;
        v128 = v346;
        v125(v340, &v343, v340, &type metadata for _DictionaryCodingKey, v337, &protocol witness table for _DictionaryCodingKey);
        v346 = v128;
        if (v128)
        {
          v327;
          v336;
          v197 = v7;
          goto LABEL_119;
        }

        *&v343 = v99;
        swift_dynamicCast(v9, &v343, &type metadata for Int, &type metadata for Int, 7uLL, v129, v130, v131, v307);
        v132 = v126;
        a1 = *v330;
        (*v330)(v335, v132, v127);
        if ((v7 & 0xC000000000000001) != 0)
        {
          if (v7 >= 0)
          {
            v7 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          v133 = [v7 count];
          if (__OFADD__(v133, 1))
          {
            goto LABEL_175;
          }

          v134 = v339;
          v7 = _NativeDictionary.init(_:capacity:)(v7, v133 + 1, &type metadata for Int, v127, v339);
        }

        else
        {
          v134 = v339;
        }

        v135 = swift_isUniquelyReferenced_nonNull_native(v7);
        v341[0] = v7;
        v34 = v9;
        v136 = __RawDictionaryStorage.find<A>(_:)(v9, &type metadata for Int, v134);
        v138 = *(v7 + 16);
        v139 = (v137 & 1) == 0;
        v9 = (v138 + v139);
        if (__OFADD__(v138, v139))
        {
          goto LABEL_173;
        }

        v99 = v137;
        if (*(v7 + 24) < v9)
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = v136;
        v336;
        if (v135)
        {
          goto LABEL_51;
        }

        v143 = v340;
        type metadata accessor for _NativeDictionary(0, &type metadata for Int, v340, v339);
        _NativeDictionary.copy()();
        v7 = v341[0];
        if (v99)
        {
LABEL_35:
          (v338[5])(*(v7 + 56) + v338[9] * isUniquelyReferenced_nonNull_native, v335, v143);
          goto LABEL_36;
        }

LABEL_52:
        v144 = v332;
        v9 = v329;
        (*(v332 + 16))(v329, v34, &type metadata for Int);
        *(v7 + 8 * (isUniquelyReferenced_nonNull_native >> 6) + 64) |= 1 << isUniquelyReferenced_nonNull_native;
        (*(v144 + 32))(*(v7 + 48) + *(v144 + 72) * isUniquelyReferenced_nonNull_native, v9, &type metadata for Int);
        (a1)(*(v7 + 56) + v338[9] * isUniquelyReferenced_nonNull_native, v335, v143);
        v145 = *(v7 + 16);
        v115 = __OFADD__(v145, 1);
        v146 = v145 + 1;
        if (v115)
        {
          goto LABEL_177;
        }

        *(v7 + 16) = v146;
LABEL_36:
        v122 = v334 + 1;
        (*v324)(v34, &type metadata for Int);
        v123 = v333 + 32;
        v86 = v325;
        if (v326 == v122)
        {
          goto LABEL_85;
        }
      }

      v140 = v339;
      type metadata accessor for _NativeDictionary(0, &type metadata for Int, v340, v339);
      _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v9, v135);
      v141 = __RawDictionaryStorage.find<A>(_:)(v34, &type metadata for Int, v140);
      if ((v99 & 1) != (v142 & 1))
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for Int);
      }

      isUniquelyReferenced_nonNull_native = v141;
      v336;
LABEL_51:
      v143 = v340;
      v7 = v341[0];
      if (v99)
      {
        goto LABEL_35;
      }

      goto LABEL_52;
    }

LABEL_84:
    v7 = &_swiftEmptyDictionarySingleton;
LABEL_85:
    v327;
    v86;
    goto LABEL_86;
  }

  v328 = (&v307 - v63);
  v335 = v61;
  v336 = v59;
  v80 = a1;
  v81 = *(a1 + 24);
  v82 = *(a1 + 32);
  v331 = v80;
  __swift_project_boxed_opaque_existential_0Tm(v80, v81);
  v83 = (*(v82 + 24))(&v343, &type metadata for _DictionaryCodingKey, &type metadata for _DictionaryCodingKey, &protocol witness table for _DictionaryCodingKey, v81, v82);
  v346 = v7;
  if (v7)
  {
    goto LABEL_121;
  }

  v84 = *(*v343 + 96);
  v327 = v343;
  v85 = v84(v83);
  v86 = specialized _arrayForceCast<A, B>(_:)(v85);
  v85;
  v326 = v86[2];
  if (!v326)
  {
    goto LABEL_84;
  }

  v87 = 0;
  v330 = v338 + 4;
  v323 = (v332 + 16);
  v322 = (v332 + 32);
  v321 = (v338 + 5);
  v324 = (v332 + 8);
  v88 = v86 + 7;
  v7 = &_swiftEmptyDictionarySingleton;
  v325 = v86;
  while (1)
  {
    if (v87 >= v86[2])
    {
LABEL_169:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v333 = v88;
    v334 = v87;
    a1 = v7;
    v10 = *(v88 - 3);
    v90 = *(v88 - 2);
    v91 = *v88;
    v92 = *(v88 - 1);
    *&v343 = v10;
    *(&v343 + 1) = v90;
    *&v344 = v92;
    BYTE8(v344) = v91;
    v93 = *(*v327 + 248);
    v90;
    v7 = v328;
    v94 = v346;
    v93(v9, &v343, v9, &type metadata for _DictionaryCodingKey, v337, &protocol witness table for _DictionaryCodingKey);
    v346 = v94;
    if (v94)
    {
      v327;
      v90;
      v197 = a1;
LABEL_119:
      v197;
      v234 = &v347;
LABEL_120:
      *(v234 - 32);
LABEL_121:
      a1 = v331;
      goto LABEL_122;
    }

    *&v343 = v10;
    *(&v343 + 1) = v90;
    v98 = v336;
    isUniquelyReferenced_nonNull_native = &type metadata for String;
    swift_dynamicCast(v336, &v343, &type metadata for String, &type metadata for String, 7uLL, v95, v96, v97, v307);
    v99 = *v330;
    (*v330)(v335, v7, v9);
    if ((a1 & 0xC000000000000001) != 0)
    {
      if ((a1 & 0x8000000000000000) != 0)
      {
        v7 = a1;
      }

      else
      {
        v7 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      v100 = [v7 count];
      v101 = v339;
      if (__OFADD__(v100, 1))
      {
        goto LABEL_171;
      }

      a1 = _NativeDictionary.init(_:capacity:)(v7, v100 + 1, &type metadata for String, v9, v339);
    }

    else
    {
      v101 = v339;
    }

    v10 = swift_isUniquelyReferenced_nonNull_native(a1);
    v341[0] = a1;
    v102 = __RawDictionaryStorage.find<A>(_:)(v98, &type metadata for String, v101);
    v104 = *(a1 + 16);
    v105 = (v103 & 1) == 0;
    isUniquelyReferenced_nonNull_native = v104 + v105;
    if (__OFADD__(v104, v105))
    {
      break;
    }

    v106 = v103;
    if (*(a1 + 24) >= isUniquelyReferenced_nonNull_native)
    {
      v110 = v102;
      if ((v10 & 1) == 0)
      {
        type metadata accessor for _NativeDictionary(0, &type metadata for String, v340, v339);
        _NativeDictionary.copy()();
      }

      v10 = v336;
      v7 = v341[0];
      if (v106)
      {
LABEL_11:
        v89 = *(v7 + 56) + v338[9] * v110;
        v9 = v340;
        (v338[5])(v89, v335, v340);
        goto LABEL_12;
      }
    }

    else
    {
      v107 = v339;
      type metadata accessor for _NativeDictionary(0, &type metadata for String, v340, v339);
      _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(isUniquelyReferenced_nonNull_native, v10);
      v10 = v336;
      v108 = __RawDictionaryStorage.find<A>(_:)(v336, &type metadata for String, v107);
      if ((v106 & 1) != (v109 & 1))
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String);
      }

      v110 = v108;
      v7 = v341[0];
      if (v106)
      {
        goto LABEL_11;
      }
    }

    v111 = v332;
    v112 = v329;
    (*(v332 + 16))(v329, v10, &type metadata for String);
    *(v7 + 8 * (v110 >> 6) + 64) |= 1 << v110;
    (*(v111 + 32))(*(v7 + 48) + *(v111 + 72) * v110, v112, &type metadata for String);
    v113 = *(v7 + 56) + v338[9] * v110;
    v9 = v340;
    (v99)(v113, v335, v340);
    v114 = *(v7 + 16);
    v115 = __OFADD__(v114, 1);
    v116 = v114 + 1;
    if (v115)
    {
      goto LABEL_172;
    }

    *(v7 + 16) = v116;
LABEL_12:
    v87 = v334 + 1;
    (*v324)(v10, &type metadata for String);
    v88 = v333 + 32;
    v86 = v325;
    if (v326 == v87)
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, _ss23_ContiguousArrayStorageCys9CodingKey_pGMR, &_ss9CodingKey_pMd, _ss9CodingKey_pMR);
LABEL_93:
  v204 = *(v7 + 16);
  v203 = *(v7 + 24);
  if (v204 >= v203 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v203 > 1), v204 + 1, 1, v7, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, _ss23_ContiguousArrayStorageCys9CodingKey_pGMR, &_ss9CodingKey_pMd, _ss9CodingKey_pMR);
  }

  *(&v344 + 1) = &type metadata for _DictionaryCodingKey;
  v345 = &protocol witness table for _DictionaryCodingKey;
  v205 = swift_allocObject(&unk_1EEEADD90, 0x29, 7uLL);
  *&v343 = v205;
  v205[2] = isUniquelyReferenced_nonNull_native;
  v205[3] = v9;
  v205[4] = v99;
  *(v205 + 40) = 1;
  *(v7 + 16) = v204 + 1;
  _ss9CodingKey_pWOb_0(&v343, v7 + 40 * v204 + 32);
  v206 = swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
  *v207 = v10;
  *(v207 + 8) = v7;
  *(v207 + 16) = 0xD00000000000002ELL;
  *(v207 + 24) = 0x800000018066C3C0 | 0x8000000000000000;
  *(v207 + 32) = 0;
  *(v207 + 72) = 0;
  v346 = v206;
  swift_willThrow();
LABEL_122:
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

uint64_t static Int.% infix(_:_:)(uint64_t a1, uint64_t a2)
{
  return static Int.% infix(_:_:)(a1, a2);
}

{
  if (!a2 || a1 == 0x8000000000000000 && a2 == -1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1 % a2;
}

uint64_t SingleValueEncodingContainer<>.encode(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocError(&type metadata for EncodingError, &protocol witness table for EncodingError, 0, 0);
  v10 = v9;
  v9[3] = &type metadata for Int128;
  v11 = swift_allocObject(&unk_1EEEADD40, 0x20, 0xFuLL);
  *v10 = v11;
  v11[2] = a1;
  v11[3] = a2;
  v10[4] = (*(a5 + 8))(a3, a5);
  v10[5] = 0xD00000000000002ELL;
  v10[6] = 0x800000018066C0B0;
  v10[7] = 0;
  return swift_willThrow();
}

{
  swift_allocError(&type metadata for EncodingError, &protocol witness table for EncodingError, 0, 0);
  v10 = v9;
  v9[3] = &type metadata for UInt128;
  v11 = swift_allocObject(&unk_1EEEADD40, 0x20, 0xFuLL);
  *v10 = v11;
  v11[2] = a1;
  v11[3] = a2;
  v10[4] = (*(a5 + 8))(a3, a5);
  v10[5] = 0xD00000000000002FLL;
  v10[6] = 0x800000018066C0E0;
  v10[7] = 0;
  return swift_willThrow();
}

uint64_t SingleValueDecodingContainer<>.decode(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
  v6 = v5;
  v7 = (*(a3 + 8))(a1, a3);
  *v6 = &type metadata for Int128;
  *(v6 + 8) = v7;
  *(v6 + 16) = 0xD00000000000002ELL;
  *(v6 + 24) = 0x800000018066C110;
  *(v6 + 32) = 0;
  *(v6 + 72) = 0;
  return swift_willThrow();
}

{
  swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
  v6 = v5;
  v7 = (*(a3 + 8))(a1, a3);
  *v6 = &type metadata for UInt128;
  *(v6 + 8) = v7;
  *(v6 + 16) = 0xD00000000000002FLL;
  *(v6 + 24) = 0x800000018066C140;
  *(v6 + 32) = 0;
  *(v6 + 72) = 0;
  return swift_willThrow();
}

uint64_t protocol witness for IteratorProtocol.next() in conformance IndexingIterator<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v26 = a2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  swift_getAssociatedTypeWitness(0, v6, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v25 - v11;
  v13 = *(a1 + 36);
  (*(v6 + 72))(v5, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v5, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v15 = (*(*(AssociatedConformanceWitness + 8) + 8))(v2 + v13, v12, v8);
  (*(v9 + 8))(v12, v8);
  if (v15)
  {
    swift_getAssociatedTypeWitness(0, *(v6 + 8), v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    return (*(*(v16 - 8) + 56))(v26, 1, 1, v16);
  }

  else
  {
    v18 = (*(v6 + 80))(v27, v4 + v13, v5, v6);
    v20 = v19;
    swift_getAssociatedTypeWitness(0, *(v6 + 8), v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    v22 = v21;
    v23 = *(v21 - 8);
    v24 = v26;
    (*(v23 + 16))(v26, v20, v21);
    v18(v27, 0);
    (*(v6 + 192))(v4 + v13, v5, v6);
    return (*(v23 + 56))(v24, 0, 1, v22);
  }
}

uint64_t Collection._advanceForward(_:by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a2 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = a2;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  result = (*(*(v10 - 8) + 16))(a5, a1, v10);
  if (v7)
  {
    v12 = *(a4 + 192);
    do
    {
      result = v12(a5, a3, a4);
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t Collection.distance(from:to:)(uint64_t a1, uint64_t a2, Class *a3, int **a4)
{
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v22 - v12;
  v26 = a4;
  v25 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  if (((*(AssociatedConformanceWitness + 24))(a1, a2, v9, AssociatedConformanceWitness) & 1) == 0)
  {
    goto LABEL_10;
  }

  (*(v10 + 16))(v13, a1, v9);
  v15 = *(*(AssociatedConformanceWitness + 8) + 8);
  v24 = *(AssociatedConformanceWitness + 8);
  v16 = v15;
  if (((v15)(v13, a2, v9) & 1) == 0)
  {
    v23 = v10;
    v18 = a2;
    v19 = 0;
    v20 = v26[24];
    while (1)
    {
      v17 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      (v20)(v13, v25, v26);
      ++v19;
      if (v16(v13, v18, v9, v24))
      {
        v10 = v23;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v17 = 0;
LABEL_8:
  (*(v10 + 8))(v13, v9);
  return v17;
}

uint64_t Collection.formIndex(_:offsetBy:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v15 - v12;
  (*(v10 + 32))(&v15 - v12, a1, v9);
  (*(a4 + 136))(v13, a2, a3, a4);
  return (*(v10 + 8))(v13, v9);
}

BOOL Collection.formIndex(_:offsetBy:limitedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, Class *a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness(255, a5, a4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  v14 = type metadata accessor for Optional(0, v10, v12, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v22 - v17;
  (*(a5 + 144))(a1, a2, a3, a4, a5);
  v19 = *(v11 - 8);
  (*(v19 + 8))(a1, v11);
  v20 = (*(v19 + 48))(v18, 1, v11);
  if (v20 == 1)
  {
    (*(v15 + 8))(v18, v14);
    (*(v19 + 16))(a1, a3, v11);
  }

  else
  {
    (*(v19 + 32))(a1, v18, v11);
  }

  return v20 != 1;
}

uint64_t specialized Collection.randomElement<A>(using:)@<X0>(Class *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness(0, a2, a1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  v8 = *(v6 - 8);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v28[-v14];
  if ((*(a2 + 104))(a1, a2))
  {
    swift_getAssociatedTypeWitness(0, *(a2 + 8), a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    v17 = *(*(v16 - 8) + 56);

    return v17(a3, 1, 1, v16);
  }

  else
  {
    v19 = (*(a2 + 112))(a1, a2);
    if ((v19 & 0x8000000000000000) != 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (!v19)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v20 = specialized RandomNumberGenerator.next<A>(upperBound:)(v19);
    (*(a2 + 64))(a1, a2);
    (*(a2 + 136))(v12, v20, a1, a2);
    v21 = *(v8 + 8);
    v21(v12, v7);
    v22 = (*(a2 + 80))(v28, v15, a1, a2);
    v24 = v23;
    swift_getAssociatedTypeWitness(0, *(a2 + 8), a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    v26 = v25;
    v27 = *(v25 - 8);
    (*(v27 + 16))(a3, v24, v25);
    v22(v28, 0);
    v21(v15, v7);
    return (*(v27 + 56))(a3, 0, 1, v26);
  }
}

uint64_t Collection.randomElement<A>(using:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a1;
  v36 = a5;
  swift_getAssociatedTypeWitness(0, a4, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  v12 = *(v10 - 8);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v33 - v18;
  if ((*(a4 + 104))(a2, a4))
  {
    swift_getAssociatedTypeWitness(0, *(a4 + 8), a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    v21 = *(*(v20 - 8) + 56);

    return v21(a6, 1, 1, v20);
  }

  else
  {
    v34 = a6;
    v23 = (*(a4 + 112))(a2, a4);
    if ((v23 & 0x8000000000000000) != 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (!v23)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v24 = specialized RandomNumberGenerator.next<A>(upperBound:)(v23, a3, v36);
    (*(a4 + 64))(a2, a4);
    (*(a4 + 136))(v16, v24, a2, a4);
    v25 = *(v12 + 8);
    v25(v16, v11);
    v26 = (*(a4 + 80))(v37, v19, a2, a4);
    v28 = v27;
    swift_getAssociatedTypeWitness(0, *(a4 + 8), a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    v30 = v29;
    v31 = *(v29 - 8);
    v32 = v34;
    (*(v31 + 16))(v34, v28, v29);
    v26(v37, 0);
    v25(v19, v11);
    return (*(v31 + 56))(v32, 0, 1, v30);
  }
}

uint64_t specialized static FixedWidthInteger.random<A>(in:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X8>)
{
  v44 = *(a3 - 1);
  v45 = a2;
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v9;
  v11 = *(v9 + 1);
  swift_getAssociatedTypeWitness(0, *(v11 + 24), v12, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v14 = v13;
  v48 = *(v13 - 1);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v47 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v43 = &v39 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v46 = &v39 - v23;
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v39 - v25;
  v28 = type metadata accessor for Range(0, a3, *(*(v11 + 32) + 8), v27);
  if ((*(*(*(v11 + 16) + 8) + 8))(a1, a1 + *(v28 + 36), a3))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v10 + 11))(v8, a1, a3, v10);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v11, a3, v14, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
  v42 = a4;
  v29 = *(AssociatedConformanceWitness + 96);
  v40 = v26;
  v30 = a1;
  v31 = AssociatedConformanceWitness;
  v29(v8, a3, v11, v14);
  (*(v44 + 16))(v8, v30, a3);
  v32 = v43;
  (v29)(v8, a3, v11, v14, v31);
  v33 = swift_getAssociatedConformanceWitness(v10, a3, v14, &protocol requirements base descriptor for FixedWidthInteger, associated conformance descriptor for FixedWidthInteger.Numeric.Magnitude: FixedWidthInteger);
  swift_getAssociatedConformanceWitness(v10, a3, v14, &protocol requirements base descriptor for FixedWidthInteger, associated conformance descriptor for FixedWidthInteger.Numeric.Magnitude: UnsignedInteger);
  v34 = v47;
  v35 = v40;
  specialized RandomNumberGenerator.next<A>(upperBound:)(v40, v14, v33, v47);
  v36 = *(v48 + 8);
  v36(v35, v14);
  v37 = v46;
  (*(v33 + 80))(v46, v34, v14, v33);
  v36(v34, v14);
  v36(v32, v14);
  return (*(v11 + 96))(v37, v14, AssociatedConformanceWitness, a3, v11);
}

uint64_t static FixedWidthInteger.random<A>(in:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v46 = a6;
  v47 = a5;
  v51 = a4;
  v52 = a2;
  v44 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v10;
  v12 = *(v10 + 1);
  swift_getAssociatedTypeWitness(0, *(v12 + 24), v13, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v15 = v14;
  v50 = *(v14 - 1);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v49 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v45 = &v41 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v48 = &v41 - v24;
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v41 - v26;
  v29 = type metadata accessor for Range(0, a3, *(*(v12 + 32) + 8), v28);
  v30 = a1;
  if ((*(*(*(v12 + 16) + 8) + 8))(a1, a1 + *(v29 + 36), a3))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v11 + 11))(v9, a1, a3, v11);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, a3, v15, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
  v32 = *(AssociatedConformanceWitness + 96);
  v42 = v27;
  v43 = AssociatedConformanceWitness;
  v33 = AssociatedConformanceWitness;
  v32(v9, a3, v12, v15);
  (*(v44 + 16))(v9, v30, a3);
  v34 = v45;
  (v32)(v9, a3, v12, v15, v33);
  v35 = swift_getAssociatedConformanceWitness(v11, a3, v15, &protocol requirements base descriptor for FixedWidthInteger, associated conformance descriptor for FixedWidthInteger.Numeric.Magnitude: FixedWidthInteger);
  v36 = v49;
  v37 = v42;
  RandomNumberGenerator.next<A>(upperBound:)(v42, v51, v15, v47, v35, v49);
  v38 = *(v50 + 8);
  v38(v37, v15);
  v39 = v48;
  (*(v35 + 80))(v48, v36, v15, v35);
  v38(v36, v15);
  v38(v34, v15);
  return (*(v12 + 96))(v39, v15, v43, a3, v12);
}

uint64_t specialized Collection<>.subscript.getter(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (HIWORD(a3))
  {
    if (result < 0 || a2 >= 3)
    {
      goto LABEL_8;
    }
  }

  else if (result < 0 || a2 > 1)
  {
LABEL_8:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

{
  if (a3 >= 0x80)
  {
    if (a3 >= 0x800)
    {
      if (HIWORD(a3))
      {
        if ((result & 0x8000000000000000) == 0 && a2 <= 4)
        {
          return result;
        }
      }

      else if ((result & 0x8000000000000000) == 0 && a2 <= 3)
      {
        return result;
      }

LABEL_14:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v3 = 2;
    if (result < 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v3 = 1;
    if (result < 0)
    {
      goto LABEL_14;
    }
  }

  if (v3 < a2)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t Collection<>.subscript.getter@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v66 = a1;
  v64 = a4;
  swift_getAssociatedTypeWitness(255, a3, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v10 = v9;
  v61 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v56 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v53 - v16;
  v58 = *(v8 - 1);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v53 - v23;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v62 = type metadata accessor for Range(0, v8, AssociatedConformanceWitness, v26);
  v59 = *(v62 - 8);
  v28 = MEMORY[0x1EEE9AC00](v62, v27);
  v60 = &v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v53 - v31;
  (*(a3 + 64))(a2, a3);
  v33 = *(a3 + 72);
  v65 = v4;
  v63 = a2;
  v57 = a3;
  v33(a2, a3);
  if (((*(AssociatedConformanceWitness + 24))(v24, v21, v8, AssociatedConformanceWitness) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v34 = v58;
  v35 = *(v58 + 32);
  v35(v17, v24, v8);
  v35(&v17[*(v10 + 48)], v21, v8);
  v36 = v35;
  v37 = v61;
  v38 = v32;
  v39 = v56;
  (*(v61 + 16))(v56, v17, v10);
  v54 = *(v10 + 48);
  v35(v38, v39, v8);
  v55 = v35;
  v40 = *(v34 + 8);
  v40(&v39[v54], v8);
  (*(v37 + 32))(v39, v17, v10);
  v41 = v62;
  v36(&v38[*(v62 + 36)], &v39[*(v10 + 48)], v8);
  v40(v39, v8);
  v42 = v57;
  v43 = v65;
  v44 = v66;
  v45 = v63;
  (*(v57 + 176))(v66, v38, v63, v57);
  v46 = v59;
  (*(v59 + 8))(v38, v41);
  v48 = type metadata accessor for Slice(0, v45, v42, v47);
  v49 = v64;
  (*(*(v45 - 8) + 16))(&v64[*(v48 + 40)], v43, v45);
  v50 = v60;
  (*(v46 + 16))(v60, v44, v41);
  v51 = v55;
  v55(v49, v50, v8);
  return v51(&v49[*(v48 + 36)], &v50[*(v41 + 36)], v8);
}

uint64_t Slice.init(base:bounds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, int **a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Slice(0, a3, a4, a4);
  (*(*(a3 - 1) + 4))(a5 + *(v10 + 40), a1, a3);
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = v11;
  v18 = *(*(v11 - 8) + 32);
  (v18)((v11 - 8), a5, a2, v11);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v12, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v15 = *(type metadata accessor for Range(0, v12, AssociatedConformanceWitness, v14) + 36);
  v16 = a5 + *(v10 + 36);

  return v18(v16, a2 + v15, v12);
}

uint64_t Collection<>.popFirst()@<X0>(Class *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a3;
  swift_getAssociatedTypeWitness(255, a2, a1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  swift_getTupleTypeMetadata2(0, v7, v7, "lower upper ", 0);
  v83 = v8;
  v81 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v82 = v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v78 = v73 - v14;
  v88 = *(v7 - 1);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v87 = v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v84 = v73 - v20;
  MEMORY[0x1EEE9AC00](v19, v21);
  v86 = (v73 - v22);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a2, a1, v7, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v24 = type metadata accessor for Range(0, v7, AssociatedConformanceWitness, v23);
  v80 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v79 = v73 - v27;
  v28 = *(a1 - 1);
  MEMORY[0x1EEE9AC00](v26, v29);
  v89 = v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(255, *(a2 + 8), a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v32 = v31;
  v35 = type metadata accessor for Optional(0, v31, v33, v34);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v39 = v73 - v38;
  v40 = v32;
  v92 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v37, v41);
  v43 = v73 - v42;
  v44 = *(a2 + 104);
  v91 = v3;
  v45 = a1;
  if (v44(a1, a2))
  {
    v46 = *(v92 + 56);
    v47 = v90;

    return v46(v47, 1, 1, v40);
  }

  else
  {
    v77 = v24;
    Collection.first.getter(a1, a2, v39);
    v49 = v40;
    if ((*(v92 + 48))(v39, 1, v40) == 1)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v50 = *(v92 + 32);
    v74 = v43;
    v75 = v50;
    v76 = v92 + 32;
    v50(v43, v39, v40);
    v51 = v91;
    (*(v28 + 16))(v89, v91, v45);
    v52 = v84;
    (*(a2 + 64))(v45, a2);
    v53 = v86;
    (*(a2 + 184))(v52, v45, a2);
    v54 = v88;
    v73[0] = *(v88 + 8);
    v73[1] = v88 + 8;
    (v73[0])(v52, v7);
    v55 = v87;
    (*(a2 + 72))(v45, a2);
    v57 = *(v28 + 8);
    v56 = (v28 + 8);
    v84 = v57;
    (v57)(v51, v45);
    if (((*(AssociatedConformanceWitness + 24))(v53, v55, v7) & 1) == 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v58 = *(v54 + 32);
    v59 = v78;
    v58(v78, v53, v7);
    v60 = v83;
    v58(&v59[*(v83 + 48)], v55, v7);
    v87 = v56;
    v88 = v49;
    v62 = v81;
    v61 = v82;
    v63 = *(v81 + 16);
    v86 = v45;
    v63(v82, v59, v60);
    v64 = *(v60 + 48);
    v65 = v79;
    v58(v79, v61, v7);
    AssociatedConformanceWitness = a2;
    v66 = v73[0];
    (v73[0])(&v61[v64], v7);
    (*(v62 + 32))(v61, v59, v60);
    v67 = *(v60 + 48);
    v68 = v77;
    v58(&v65[*(v77 + 36)], &v61[v67], v7);
    v66(v61, v7);
    v69 = v86;
    v70 = v89;
    (*(AssociatedConformanceWitness + 88))(v65, v86);
    (*(v80 + 8))(v65, v68);
    (v84)(v70, v69);
    v71 = v90;
    v72 = v88;
    v75(v90, v74, v88);
    return (*(v92 + 56))(v71, 0, 1, v72);
  }
}

__objc2_class **Collection.map<A>(_:)(void (*a1)(char *), uint64_t a2, Class *a3, unint64_t *a4, uint64_t a5)
{
  v54 = a1;
  v55 = a2;
  swift_getAssociatedTypeWitness(0, *(a5 + 8), a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v49 = v8;
  v53 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v48 = &v45 - v11;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v16 = v15;
  v17 = *(v15 - 8);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v47 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v45 - v22;
  v24 = *(a5 + 112);
  v58 = a5;
  v25 = v24(a3, a5);
  if (v25)
  {
    v28 = v25;
    v60 = &_swiftEmptyArrayStorage;
    v51 = type metadata accessor for ContiguousArray(0, a4, v26, v27);
    ContiguousArray.reserveCapacity(_:)(v28);
    v29 = *(v58 + 64);
    v56 = v23;
    v29(a3);
    if (v28 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v45 = v17;
    v46 = v16;
    v30 = (v53 + 16);
    v31 = (v53 + 8);
    v52 = *(v58 + 80);
    v53 = v58 + 80;
    v50 = v58 + 192;
    v32 = v48;
    v33 = v49;
    do
    {
      v34 = v52(v59, v56, a3, v58);
      (*v30)(v32);
      v34(v59, 0);
      v35 = v57;
      v54(v32);
      if (v35)
      {
        (*v31)(v32, v33);
        (*(v45 + 8))(v56, v46);
        return v60;
      }

      v57 = 0;
      (*v31)(v32, v33);
      ContiguousArray.append(_:)(v14, v51);
      (*(v58 + 192))(v56, a3);
      --v28;
    }

    while (v28);
    v36 = v58;
    v37 = v47;
    (*(v58 + 72))(a3, v58);
    v38 = a3;
    v39 = v46;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v36, v38, v46, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
    v41 = v56;
    v42 = (*(*(AssociatedConformanceWitness + 8) + 8))(v56, v37, v39);
    v43 = *(v45 + 8);
    v43(v37, v39);
    if ((v42 & 1) == 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v43(v41, v39);
    return v60;
  }

  else
  {
    _swift_isClassOrObjCExistentialType(a4, a4);
    return &_swiftEmptyArrayStorage;
  }
}

Swift::String::Index specialized Collection.dropFirst(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = a1;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v7 = v6 << 16;
  v8 = (a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0;
  if (v8)
  {
    v9._rawBits = v7 | 7;
    if ((a3 & 0x1000000000000000) == 0)
    {
      LOBYTE(v10) = 1;
      goto LABEL_13;
    }
  }

  else
  {
    v9._rawBits = v7 | 0xB;
  }

  v10 = (a2 & 0x800000000000000uLL) >> 59;
LABEL_13:
  v35 = v8;
  if ((v9._rawBits & 0xC) == 4 << v10)
  {
    v9._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v9)._rawBits;
  }

  result._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(15)._rawBits;
  v12 = v9._rawBits >> 14;
  if (v5)
  {
    v13 = v6 << 16;
    v14 = v35;
    while (v12 > result._rawBits >> 14)
    {
      v15 = result._rawBits >> 16;
      if (result._rawBits >> 16 >= v6)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if ((a3 & 0x1000000000000000) != 0)
      {
        v20 = v13;
        result._rawBits = String.UnicodeScalarView._foreignIndex(after:)(result)._rawBits;
        v14 = v35;
        v13 = v20;
        if (!--v5)
        {
          goto LABEL_32;
        }
      }

      else
      {
        if ((a3 & 0x2000000000000000) != 0)
        {
          v36[0] = a2;
          v36[1] = a3 & 0xFFFFFFFFFFFFFFLL;
          v17 = *(v36 + v15);
        }

        else
        {
          v16 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((a2 & 0x1000000000000000) == 0)
          {
            v34 = v13;
            v16 = _StringObject.sharedUTF8.getter(a2, a3);
            v13 = v34;
            v14 = v35;
          }

          v17 = v16[v15];
        }

        v18 = v17;
        v19 = __clz(v17 ^ 0xFF) - 24;
        if (v18 >= 0)
        {
          LOBYTE(v19) = 1;
        }

        result._rawBits = ((v15 + v19) << 16) | 5;
        if (!--v5)
        {
          goto LABEL_32;
        }
      }
    }

LABEL_33:
    if (v14)
    {
      result._rawBits = v13 | 7;
    }

    else
    {
      result._rawBits = v13 | 0xB;
    }

    goto LABEL_36;
  }

  v13 = v6 << 16;
  v14 = v35;
LABEL_32:
  if (v12 < result._rawBits >> 14)
  {
    goto LABEL_33;
  }

LABEL_36:
  v21 = 11;
  if (v14)
  {
    v21 = 7;
  }

  v22 = 4 * v6;
  v23 = result._rawBits >> 14;
  if (4 * v6 < result._rawBits >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v24 = 4 << v14;
  v25 = v13 | v21;
  v26 = result._rawBits & 0xC;
  v27 = v21 & 0xC;
  if (v27 != 4 << v14 && v26 != v24 && (result._rawBits & 1) != 0)
  {
    return result;
  }

  if (v27 == v24)
  {
    rawBits = result._rawBits;
    v25 = _StringGuts._slowEnsureMatchingEncoding(_:)(v25)._rawBits;
    result._rawBits = rawBits;
    if (v26 != v24)
    {
      goto LABEL_44;
    }
  }

  else if (v26 != v24)
  {
    goto LABEL_44;
  }

  v29 = v25;
  result._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(result)._rawBits;
  v25 = v29;
  v23 = result._rawBits >> 14;
LABEL_44:
  if (v22 < v25 >> 14 || v25 >> 14 < v23)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (result._rawBits)
  {
    if (v25)
    {
      return result;
    }

LABEL_56:
    v33 = result._rawBits;
    _StringGuts.scalarAlignSlow(_:)(v25);
    return v33;
  }

  v30 = result._rawBits;
  v31 = v25;
  v32._rawBits = _StringGuts.scalarAlignSlow(_:)(result)._rawBits;
  v25 = v31;
  result._rawBits = v30 & 0xC | v32._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
  if ((v31 & 1) == 0)
  {
    goto LABEL_56;
  }

  return result;
}

uint64_t specialized Collection.dropFirst(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = specialized UnsafeBufferPointer.index(_:offsetBy:limitedBy:)(a2, a1, a3);
  if (v6)
  {
    result = a3;
  }

  if (result > a3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (result < a2)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t Collection.dropFirst(_:)@<X0>(void (*a1)(char *, char *)@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v78 = a4;
  swift_getAssociatedTypeWitness(255, a3, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  swift_getTupleTypeMetadata2(0, v9, v9, "lower upper ", 0);
  v11 = v10;
  v76 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v73 = &v70 - v17;
  v87 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v77 = type metadata accessor for Range(0, v9, AssociatedConformanceWitness, v18);
  v75 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77, v19);
  v74 = &v70 - v20;
  v23 = type metadata accessor for Optional(0, v9, v21, v22);
  v80 = *(v23 - 8);
  v81 = v23;
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v86 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v30 = &v70 - v29;
  v31 = *(v9 - 1);
  v33 = MEMORY[0x1EEE9AC00](v28, v32);
  v82 = &v70 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v38 = &v70 - v37;
  v40 = MEMORY[0x1EEE9AC00](v36, v39);
  v42 = &v70 - v41;
  MEMORY[0x1EEE9AC00](v40, v43);
  v79 = &v70 - v44;
  v83 = a1;
  if ((a1 & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v71 = v15;
  v72 = v11;
  v45 = v87;
  (*(a3 + 64))(v87, a3);
  v85 = *(a3 + 72);
  (v85)(v45, a3);
  (*(a3 + 144))(v42, v83, v38, v45, a3);
  v46 = v30;
  v47 = *(v31 + 8);
  v47(v38, v9);
  v83 = v47;
  v47(v42, v9);
  v49 = v80;
  v48 = v81;
  v50 = v86;
  (*(v80 + 32))(v86, v46, v81);
  v51 = (*(v31 + 48))(v50, 1, v9);
  v70 = v31;
  v52 = v79;
  if (v51 == 1)
  {
    v53 = v87;
    (v85)(v87, a3);
    (*(v49 + 8))(v86, v48);
    v54 = v4;
  }

  else
  {
    (*(v31 + 32))(v79, v86, v9);
    v54 = v4;
    v53 = v87;
  }

  v55 = v82;
  (v85)(v53, a3);
  if (((*(AssociatedConformanceWitness + 24))(v52, v55, v9) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v85 = a3;
  v86 = v54;
  v56 = *(v70 + 32);
  v57 = v73;
  v56(v73, v52, v9);
  v58 = v72;
  v56(&v57[*(v72 + 48)], v55, v9);
  v59 = v76;
  v60 = v71;
  (*(v76 + 16))(v71, v57, v58);
  v61 = *(v58 + 48);
  v62 = v74;
  v56(v74, v60, v9);
  v63 = &v60[v61];
  v64 = v83;
  v83(v63, v9);
  (*(v59 + 32))(v60, v57, v58);
  v65 = *(v58 + 48);
  v66 = v77;
  v56(&v62[*(v77 + 36)], &v60[v65], v9);
  v64(v60, v9);
  v67 = v86;
  v68 = v87;
  (*(v85 + 88))(v62, v87);
  (*(*(v68 - 1) + 1))(v67, v68);
  return (*(v75 + 8))(v62, v66);
}

uint64_t Collection.dropLast(_:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v87 = a4;
  swift_getAssociatedTypeWitness(255, a3, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  swift_getTupleTypeMetadata2(0, v9, v9, "lower upper ", 0);
  v85 = *(v10 - 8);
  v86 = v10;
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v82 = &v75 - v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v18 = type metadata accessor for Range(0, v9, AssociatedConformanceWitness, v17);
  v84 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v83 = &v75 - v20;
  v23 = type metadata accessor for Optional(0, v9, v21, v22);
  v90 = *(v23 - 8);
  v91 = v23;
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v88 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v30 = &v75 - v29;
  v94 = *(v9 - 1);
  v32 = MEMORY[0x1EEE9AC00](v28, v31);
  v92 = &v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v37 = &v75 - v36;
  v39 = MEMORY[0x1EEE9AC00](v35, v38);
  v41 = &v75 - v40;
  MEMORY[0x1EEE9AC00](v39, v42);
  v89 = &v75 - v43;
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v44 = (*(a3 + 112))(a2, a3);
  if (__OFSUB__(v44, a1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v78 = v18;
  v79 = v14;
  v45 = (v44 - a1) & ~((v44 - a1) >> 63);
  v80 = *(a3 + 64);
  v81 = a3 + 64;
  v80(a2, a3);
  v46 = a2;
  v75 = *(a3 + 72);
  v75(a2, a3);
  v47 = *(a3 + 144);
  v95 = v4;
  v47(v41, v45, v37, a2, a3);
  v48 = v94;
  v49 = v94 + 1;
  v50 = v94[1];
  v50(v37, v9);
  v76 = v50;
  v77 = v49;
  v50(v41, v9);
  v52 = v90;
  v51 = v91;
  v53 = v88;
  v54 = v30;
  v55 = v48;
  (*(v90 + 32))(v88, v54, v91);
  if ((v48[6])(v53, 1, v9) == 1)
  {
    v56 = v53;
    v57 = v89;
    v75(a2, a3);
    v58 = v51;
    v59 = v57;
    (*(v52 + 8))(v56, v58);
  }

  else
  {
    v59 = v89;
    (v48[4])(v89, v53, v9);
  }

  v60 = v92;
  v80(v46, a3);
  if (((*(AssociatedConformanceWitness + 24))(v60, v59, v9) & 1) == 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v61 = v46;
  v62 = v55[4];
  v63 = v82;
  v94 = v61;
  v62(v82, v60, v9);
  v64 = v86;
  v62(&v63[*(v86 + 48)], v59, v9);
  v65 = v85;
  v66 = v79;
  (*(v85 + 16))(v79, v63, v64);
  v67 = *(v64 + 48);
  v68 = v83;
  v62(v83, v66, v9);
  AssociatedConformanceWitness = a3;
  v69 = v76;
  v76(&v66[v67], v9);
  (*(v65 + 32))(v66, v63, v64);
  v70 = *(v64 + 48);
  v71 = v78;
  v62(&v68[*(v78 + 36)], &v66[v70], v9);
  v69(v66, v9);
  v72 = v94;
  v73 = v95;
  (*(AssociatedConformanceWitness + 88))(v68, v94);
  (*(*(v72 - 1) + 1))(v73, v72);
  return (*(v84 + 8))(v68, v71);
}

uint64_t Collection.drop(while:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, int **a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v7 = a4;
  v87 = a1;
  v88 = a2;
  v76 = a5;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10 = v9;
  swift_getTupleTypeMetadata2(0, v10, v10, "lower upper ", 0);
  v75 = v11;
  v74 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v73 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v70 = &v69 - v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, a3, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v72 = type metadata accessor for Range(0, v10, AssociatedConformanceWitness, v18);
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72, v19);
  v81 = &v69 - v20;
  swift_getAssociatedTypeWitness(0, v7[1], a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v86 = v21;
  v97 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v25 = &v69 - v24;
  v26 = *(v10 - 1);
  v28 = MEMORY[0x1EEE9AC00](v23, v27);
  v78 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v77 = &v69 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v92 = (&v69 - v35);
  MEMORY[0x1EEE9AC00](v34, v36);
  v38 = &v69 - v37;
  (v7[8])(a3, v7);
  v94 = v7[9];
  v80 = AssociatedConformanceWitness;
  v39 = *(AssociatedConformanceWitness + 8);
  v40 = v38;
  v91 = v39;
  v89 = *(v39 + 8);
  v90 = v39 + 8;
  v79 = v26;
  v95 = (v7 + 9);
  v96 = (v26 + 8);
  v83 = (v97 + 16);
  v84 = v7 + 10;
  v85 = (v97 + 8);
  v82 = v7 + 24;
  for (i = v10; ; v10 = i)
  {
    v41 = v92;
    v94(a3, v7);
    v42 = v89(v40, v41, v10, v91);
    v97 = *v96;
    (v97)(v41, v10);
    if (v42)
    {
      break;
    }

    v43 = v7[10];
    v44 = v7;
    v45 = v6;
    v46 = a3;
    v47 = v44;
    v48 = (v43)(v98, v40, a3);
    v49 = v86;
    (*v83)(v25);
    v48(v98, 0);
    v50 = v99;
    v51 = v87(v25);
    if (v50)
    {
      (*(*(a3 - 1) + 1))(v45, a3);
      (*v85)(v25, v49);
      return (v97)(v40, i);
    }

    v52 = v51;
    (*v85)(v25, v49);
    if ((v52 & 1) == 0)
    {
      goto LABEL_8;
    }

    v99 = 0;
    v53 = v45;
    v7 = v47;
    v6 = v53;
    (v47[24])(v40, a3, v47);
  }

  v47 = v7;
  v45 = v6;
  v46 = a3;
LABEL_8:
  v55 = v79;
  v56 = v77;
  v57 = i;
  (*(v79 + 16))(v77, v40, i);
  v58 = v45;
  v59 = v78;
  v99 = v58;
  v92 = v47;
  v94(v46, v47);
  if (((*(v80 + 24))(v56, v59, v57) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (v97)(v40, v57);
  v60 = *(v55 + 32);
  v95 = v46;
  v61 = v70;
  v60(v70, v56, v57);
  v62 = v75;
  v60(&v61[*(v75 + 48)], v59, v57);
  v63 = v74;
  v64 = v73;
  (*(v74 + 16))(v73, v61, v62);
  v94 = *(v62 + 48);
  v60(v81, v64, v57);
  (v97)(v94 + v64, v57);
  (*(v63 + 32))(v64, v61, v62);
  v65 = v72;
  v66 = v81;
  v60(&v81[*(v72 + 36)], &v64[*(v62 + 48)], v57);
  (v97)(v64, v57);
  v67 = v99;
  v68 = v95;
  (v92[11])(v66, v95);
  (*(*(v68 - 1) + 1))(v67, v68);
  return (*(v71 + 8))(v66, v65);
}

uint64_t specialized Collection.prefix(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = specialized UnsafeBufferPointer.index(_:offsetBy:limitedBy:)(0, a1, a3);
  if (v5)
  {
    v6 = a3;
  }

  else
  {
    v6 = v4;
  }

  if (v6 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v6 > a3)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return 0;
}

uint64_t Collection.prefix(_:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, int **a3@<X2>, uint64_t a4@<X8>)
{
  v85 = a4;
  swift_getAssociatedTypeWitness(255, a3, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v10 = v9;
  v84 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v81 = &v74 - v16;
  v92 = a3;
  v93 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v18 = type metadata accessor for Range(0, v8, AssociatedConformanceWitness, v17);
  v83 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v82 = &v74 - v20;
  v23 = type metadata accessor for Optional(0, v8, v21, v22);
  v87 = *(v23 - 8);
  v88 = v23;
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v91 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v30 = &v74 - v29;
  v31 = *(v8 - 1);
  v33 = MEMORY[0x1EEE9AC00](v28, v32);
  v89 = &v74 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v38 = &v74 - v37;
  v40 = MEMORY[0x1EEE9AC00](v36, v39);
  v42 = &v74 - v41;
  MEMORY[0x1EEE9AC00](v40, v43);
  v86 = &v74 - v44;
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v76 = v18;
  v77 = v14;
  v78 = v10;
  v46 = v92;
  v45 = v93;
  v79 = v92[8];
  v80 = v92 + 8;
  (v79)(v93, v92);
  v74 = v46[9];
  (v74)(v45, v46);
  (v46[18])(v42, a1, v38, v45, v46);
  v47 = *(v31 + 8);
  v47(v38, v8);
  v75 = v47;
  v47(v42, v8);
  v49 = v87;
  v48 = v88;
  v50 = v91;
  (*(v87 + 32))(v91, v30, v88);
  v51 = v31;
  if ((*(v31 + 48))(v50, 1, v8) == 1)
  {
    v52 = v86;
    v53 = v93;
    v54 = v92;
    (v74)(v93, v92);
    v55 = v48;
    v56 = v52;
    (*(v49 + 8))(v91, v55);
    v57 = v53;
    v58 = v54;
  }

  else
  {
    v56 = v86;
    (*(v31 + 32))(v86, v91, v8);
    v57 = v93;
    v58 = v92;
  }

  v59 = v89;
  (v79)(v57, v58);
  if (((*(AssociatedConformanceWitness + 24))(v59, v56, v8) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v60 = *(v51 + 32);
  v61 = v81;
  v60(v81, v59, v8);
  v62 = v78;
  v60(&v61[*(v78 + 48)], v56, v8);
  v63 = v84;
  v64 = v77;
  (*(v84 + 16))(v77, v61, v62);
  v65 = *(v62 + 48);
  v66 = v82;
  v60(v82, v64, v8);
  v67 = &v64[v65];
  v68 = v75;
  v75(v67, v8);
  (*(v63 + 32))(v64, v61, v62);
  v69 = *(v62 + 48);
  v70 = v76;
  v60(&v66[*(v76 + 36)], &v64[v69], v8);
  v68(v64, v8);
  v71 = v93;
  v72 = v94;
  (v92[11])(v66, v93);
  (*(*(v71 - 1) + 1))(v72, v71);
  return (*(v83 + 8))(v66, v70);
}

uint64_t Collection.prefix(while:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, int **a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v7 = a4;
  v8 = a3;
  v96 = a1;
  v97 = a2;
  v83 = a5;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10 = v9;
  swift_getTupleTypeMetadata2(0, v10, v10, "lower upper ", 0);
  v82 = v11;
  v81 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v80 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v77 = &v76 - v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v8, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v79 = type metadata accessor for Range(0, v10, AssociatedConformanceWitness, v18);
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v19);
  v76 = &v76 - v20;
  swift_getAssociatedTypeWitness(0, v7[1], v8, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v95 = v21;
  v22 = *(v21 - 8);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v94 = &v76 - v25;
  v26 = *(v10 - 1);
  v28 = MEMORY[0x1EEE9AC00](v24, v27);
  v87 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v86 = &v76 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v103 = &v76 - v35;
  MEMORY[0x1EEE9AC00](v34, v36);
  v38 = &v76 - v37;
  v39 = v7[8];
  v85 = v7 + 8;
  v84 = v39;
  (v39)(v8, v7);
  v40 = v7[9];
  v88 = v26;
  v89 = AssociatedConformanceWitness;
  v41 = *(AssociatedConformanceWitness + 8);
  v42 = v38;
  v100 = v41;
  v101 = v40;
  v98 = *(v41 + 8);
  v99 = v41 + 8;
  v104 = (v26 + 8);
  v91 = (v22 + 16);
  v92 = v7 + 10;
  v93 = (v22 + 8);
  v102 = v7 + 9;
  v90 = v7 + 24;
  while (1)
  {
    v43 = v103;
    (v101)(v8, v7);
    v44 = v98(v42, v43, v10, v100);
    v45 = *v104;
    v46 = v10;
    (*v104)(v43, v10);
    if (v44)
    {
      break;
    }

    v47 = v7[10];
    v48 = v42;
    v49 = v7;
    v50 = v6;
    v51 = v8;
    v52 = v49;
    v53 = (v47)(v105, v42, v8);
    v54 = v94;
    v55 = v95;
    (*v91)(v94);
    v53(v105, 0);
    v56 = v106;
    v57 = v96(v54);
    v106 = v56;
    if (v56)
    {
      (*(*(v51 - 1) + 8))(v50, v51);
      (*v93)(v54, v55);
      return v45(v48, v46);
    }

    v58 = v57;
    (*v93)(v54, v55);
    if ((v58 & 1) == 0)
    {
      goto LABEL_7;
    }

    v42 = v48;
    v59 = v50;
    v7 = v52;
    v8 = v51;
    v6 = v59;
    (v52[24])(v48, v8, v52);
    v10 = v46;
  }

  v48 = v42;
  v52 = v7;
  v50 = v6;
  v51 = v8;
LABEL_7:
  v60 = v86;
  v103 = v50;
  v61 = v51;
  (v84)(v51, v52);
  v62 = v88;
  v63 = v87;
  (*(v88 + 16))(v87, v48, v46);
  if (((*(v89 + 24))(v60, v63, v46) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v45(v48, v46);
  v64 = *(v62 + 32);
  v102 = v52;
  v65 = v77;
  v64(v77, v60, v46);
  v66 = v82;
  v64(&v65[*(v82 + 48)], v63, v46);
  v67 = v81;
  v68 = *(v81 + 16);
  v101 = v61;
  v69 = v80;
  v68(v80, v65, v66);
  v100 = *(v66 + 48);
  v70 = v76;
  v64(v76, v69, v46);
  v45(&v69[v100], v46);
  (*(v67 + 32))(v69, v65, v66);
  v71 = *(v66 + 48);
  v72 = v79;
  v64(&v70[*(v79 + 36)], &v69[v71], v46);
  v45(v69, v46);
  v73 = v103;
  v74 = v101;
  (v102[11])(v70, v101);
  (*(*(v74 - 1) + 8))(v73, v74);
  return (*(v78 + 8))(v70, v72);
}

uint64_t Collection.suffix(_:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v79 = a4;
  swift_getAssociatedTypeWitness(255, a3, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  swift_getTupleTypeMetadata2(0, v9, v9, "lower upper ", 0);
  v11 = v10;
  v77 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v74 = v70 - v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v78 = type metadata accessor for Range(0, v9, AssociatedConformanceWitness, v18);
  v76 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78, v19);
  v75 = v70 - v20;
  v23 = type metadata accessor for Optional(0, v9, v21, v22);
  v81 = *(v23 - 8);
  v82 = v23;
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v29 = v70 - v28;
  v31 = MEMORY[0x1EEE9AC00](v27, v30);
  v83 = v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v36 = v70 - v35;
  v38 = MEMORY[0x1EEE9AC00](v34, v37);
  v40 = v70 - v39;
  MEMORY[0x1EEE9AC00](v38, v41);
  v80 = v70 - v44;
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v86 = v43;
  v73 = v42;
  v45 = (*(a3 + 112))(a2, a3);
  if (__OFSUB__(v45, a1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v71 = v15;
  v72 = v11;
  v46 = (v45 - a1) & ~((v45 - a1) >> 63);
  (*(a3 + 64))(a2, a3);
  v47 = *(a3 + 72);
  v47(a2, a3);
  (*(a3 + 144))(v40, v46, v36, a2, a3);
  v87 = v4;
  v48 = v86;
  v85 = a2;
  v50 = v86 + 8;
  v49 = *(v86 + 8);
  v49(v36, v9);
  v70[0] = v49;
  v70[1] = v50;
  v49(v40, v9);
  v52 = v81;
  v51 = v82;
  v53 = v73;
  (*(v81 + 32))(v73, v29, v82);
  if ((*(v48 + 48))(v53, 1, v9) == 1)
  {
    v54 = v80;
    v55 = v85;
    v47(v85, a3);
    (*(v52 + 8))(v53, v51);
    v56 = v83;
  }

  else
  {
    v54 = v80;
    (*(v48 + 32))(v80, v53, v9);
    v56 = v83;
    v55 = v85;
  }

  v47(v55, a3);
  if (((*(AssociatedConformanceWitness + 24))(v54, v56, v9) & 1) == 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  AssociatedConformanceWitness = a3;
  v57 = *(v86 + 32);
  v58 = v74;
  v57(v74, v54, v9);
  v59 = v72;
  v57(&v58[*(v72 + 48)], v56, v9);
  v60 = v77;
  v61 = v71;
  (*(v77 + 16))(v71, v58, v59);
  v62 = *(v59 + 48);
  v63 = v75;
  v57(v75, v61, v9);
  v64 = v70[0];
  (v70[0])(&v61[v62], v9);
  (*(v60 + 32))(v61, v58, v59);
  v65 = *(v59 + 48);
  v66 = v78;
  v57(&v63[*(v78 + 36)], &v61[v65], v9);
  v64(v61, v9);
  v67 = v85;
  v68 = v87;
  (*(AssociatedConformanceWitness + 88))(v63, v85);
  (*(*(v67 - 1) + 1))(v68, v67);
  return (*(v76 + 8))(v63, v66);
}

uint64_t specialized Collection.prefix(upTo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a3 < a1)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return 0;
}

uint64_t Collection.prefix(upTo:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a4;
  swift_getAssociatedTypeWitness(255, a3, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  swift_getTupleTypeMetadata2(0, v9, v9, "lower upper ", 0);
  v11 = *(v10 - 8);
  v51 = v10;
  v52 = v11;
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v49 = &v42 - v18;
  v19 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v42 - v21;
  v23 = a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v26 = type metadata accessor for Range(0, v9, AssociatedConformanceWitness, v25);
  v48 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v46 = a2;
  v47 = &v42 - v28;
  v29 = *(a3 + 64);
  v50 = v4;
  v45 = a3;
  v29(a2, a3);
  if (((*(AssociatedConformanceWitness + 24))(v22, v23, v9, AssociatedConformanceWitness) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v30 = v19;
  v44 = v26;
  v31 = *(v19 + 32);
  v32 = v49;
  v31(v49, v22, v9);
  v43 = v31;
  v33 = v51;
  (*(v30 + 16))(&v32[*(v51 + 48)], v23, v9);
  v34 = v52;
  (*(v52 + 16))(v15, v32, v33);
  v35 = *(v33 + 48);
  v36 = v47;
  v31(v47, v15, v9);
  v37 = *(v30 + 8);
  v37(&v15[v35], v9);
  (*(v34 + 32))(v15, v32, v33);
  v38 = v44;
  v43(&v36[*(v44 + 36)], &v15[*(v33 + 48)], v9);
  v37(v15, v9);
  v39 = v46;
  v40 = v50;
  (*(v45 + 88))(v36, v46);
  (*(*(v39 - 1) + 1))(v40, v39);
  return (*(v48 + 8))(v36, v38);
}

uint64_t Collection.suffix(from:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a4;
  swift_getAssociatedTypeWitness(255, a3, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  swift_getTupleTypeMetadata2(0, v9, v9, "lower upper ", 0);
  v48 = v10;
  v51 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v50 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v41 - v16;
  v18 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v15, v19);
  v21 = &v41 - v20;
  v22 = a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v25 = type metadata accessor for Range(0, v9, AssociatedConformanceWitness, v24);
  v46 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v45 = &v41 - v27;
  v28 = *(a3 + 72);
  v49 = v4;
  v47 = a2;
  v28(a2, a3);
  if (((*(AssociatedConformanceWitness + 24))(v22, v21, v9, AssociatedConformanceWitness) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v29 = v17;
  (*(v18 + 16))(v17, v22, v9);
  v30 = v48;
  v31 = *(v18 + 32);
  v31(&v29[*(v48 + 48)], v21, v9);
  v32 = v51;
  v33 = *(v51 + 16);
  v44 = v25;
  v34 = v50;
  v33(v50, v29, v30);
  v42 = *(v30 + 48);
  v35 = v45;
  v31(v45, v34, v9);
  v43 = a3;
  v36 = *(v18 + 8);
  v36(&v34[v42], v9);
  (*(v32 + 32))(v34, v29, v30);
  v37 = v44;
  v31(&v35[*(v44 + 36)], &v34[*(v30 + 48)], v9);
  v36(v34, v9);
  v38 = v49;
  v39 = v47;
  (*(v43 + 88))(v35, v47);
  (*(*(v39 - 1) + 1))(v38, v39);
  return (*(v46 + 8))(v35, v37);
}

uint64_t Collection.prefix(through:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10 = v9;
  v11 = *(v9 - 8);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v20 - v14;
  v16 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v13, v17);
  (*(v16 + 16))(&v20 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a2);
  (*(a3 + 184))(a1, a2, a3);
  (*(v16 + 8))(v4, a2);
  Collection.prefix(upTo:)(v15, a2, a3, a4);
  return (*(v11 + 8))(v15, v10);
}

uint64_t static SignedInteger<>.max.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 72))(v5);
  (*(*(a2 + 8) + 184))(v7, a1);
  return (*(v4 + 8))(v7, a1);
}

void Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(uint64_t a1, int a2, uint64_t (*a3)(char *), uint64_t a4, Class *a5, uint64_t a6)
{
  v149 = a4;
  v148 = a3;
  v167 = a2;
  swift_getAssociatedTypeWitness(0, *(a6 + 8), a5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v169 = v9;
  v166 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v133 - v11;
  swift_getAssociatedTypeWitness(0, a6, a5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v168 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v152 = &v133 - v15;
  swift_getAssociatedTypeWitness(255, a6, a5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v17 = v16;
  swift_getTupleTypeMetadata2(0, v17, v17, "lower upper ", 0);
  v153 = v18;
  v146 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v154 = &v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v22);
  v151 = &v133 - v23;
  v175 = a6;
  v24 = a6;
  v25 = a1;
  v177 = a5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v24, a5, v17, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v155 = type metadata accessor for Range(0, v17, AssociatedConformanceWitness, v27);
  v147 = *(v155 - 8);
  v29 = MEMORY[0x1EEE9AC00](v155, v28);
  v31 = &v133 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v29, v32);
  v144 = &v133 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v159 = *(v17 - 1);
  v38 = MEMORY[0x1EEE9AC00](v36, v37);
  v143 = &v133 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v38, v40);
  v145 = &v133 - v42;
  v44 = MEMORY[0x1EEE9AC00](v41, v43);
  v170 = &v133 - v45;
  v47 = MEMORY[0x1EEE9AC00](v44, v46);
  v174 = &v133 - v48;
  v50 = MEMORY[0x1EEE9AC00](v47, v49);
  v52 = &v133 - v51;
  v54 = MEMORY[0x1EEE9AC00](v50, v53);
  v56 = &v133 - v55;
  MEMORY[0x1EEE9AC00](v54, v57);
  v60 = &v133 - v59;
  if (v25 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v173 = v58;
  _swift_isClassOrObjCExistentialType(v168, v168);
  v179 = &_swiftEmptyArrayStorage;
  (*(v175 + 64))(v177);
  if (!v25 || ((*(v175 + 104))(v177) & 1) != 0)
  {
    (*(v175 + 72))(v177);
    if ((*(*(AssociatedConformanceWitness + 8) + 8))(v60, v56, v17) & 1) != 0 && (v167)
    {
      (*(*(v177 - 1) + 1))(v176);
      v61 = *(v159 + 8);
      v61(v56, v17);
      v61(v60, v17);
      return;
    }

    v62 = v159;
    (*(v159 + 16))(v52, v60, v17);
    if ((*(AssociatedConformanceWitness + 24))(v52, v56, v17, AssociatedConformanceWitness))
    {
      v174 = *(v62 + 8);
      (v174)(v60, v17);
      v63 = *(v62 + 32);
      v64 = v151;
      v63(v151, v52, v17);
      v65 = v153;
      v63(&v64[*(v153 + 48)], v56, v17);
      v66 = v146;
      v67 = v154;
      (*(v146 + 16))(v154, v64, v65);
      v172 = *(v65 + 48);
      v68 = v173;
      v63(v173, v67, v17);
      (v174)(&v172[v67], v17);
      (*(v66 + 32))(v67, v64, v65);
      v69 = v155;
      v63(&v68[*(v155 + 36)], &v67[*(v65 + 48)], v17);
      (v174)(v67, v17);
      v70 = v176;
      v71 = v152;
      v72 = v177;
      (*(v175 + 88))(v68, v177);
      (*(*(v72 - 1) + 1))(v70, v72);
      (*(v147 + 8))(v68, v69);
      v75 = type metadata accessor for Array(0, v168, v73, v74);
      v76 = v71;
LABEL_27:
      Array.append(_:)(v76, v75);
      return;
    }

    goto LABEL_29;
  }

  v134 = v31;
  v77 = v159;
  v78 = *(v159 + 16);
  v79 = v174;
  v157 = v159 + 16;
  v156 = v78;
  v78(v174, v60, v17);
  v80 = v170;
  (*(v175 + 72))(v177);
  v81 = *(AssociatedConformanceWitness + 8);
  v82 = *(v81 + 1);
  v172 = v81 + 8;
  v173 = v81;
  v171 = v82;
  v83 = (v82)(v79, v80, v17);
  v141 = AssociatedConformanceWitness;
  if (v83)
  {
    v84 = v158;
    v85 = v174;
LABEL_11:
    v86 = v170;
    if (v171(v60, v170, v17, v173) & 1) != 0 && (v167)
    {
      (*(*(v177 - 1) + 1))(v176);
      v87 = v85;
      v88 = *(v159 + 8);
      v88(v86, v17);
      v88(v87, v17);
      v88(v60, v17);
      return;
    }

    v158 = v84;
    v117 = v143;
    v156(v143, v60, v17);
    if ((*(v141 + 24))(v117, v86, v17))
    {
      v118 = v159;
      v119 = *(v159 + 8);
      v173 = v119;
      (v119)(v174, v17);
      (v119)(v60, v17);
      v120 = *(v118 + 32);
      v121 = v151;
      v120(v151, v117, v17);
      v122 = v153;
      v120(&v121[*(v153 + 48)], v86, v17);
      v123 = v146;
      v124 = v154;
      (*(v146 + 16))(v154, v121, v122);
      v174 = *(v122 + 48);
      v125 = v134;
      v120(v134, v124, v17);
      (v173)(&v174[v124], v17);
      (*(v123 + 32))(v124, v121, v122);
      v126 = v155;
      v120(&v125[*(v155 + 36)], &v124[*(v122 + 48)], v17);
      (v173)(v124, v17);
      v127 = v176;
      v128 = v152;
      v129 = v177;
      (*(v175 + 88))(v125, v177);
      (*(*(v129 - 1) + 1))(v127, v129);
      (*(v147 + 8))(v125, v126);
      v75 = type metadata accessor for Array(0, v168, v130, v131);
      v76 = v128;
      goto LABEL_27;
    }

LABEL_29:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v139 = v25;
  v89 = *(v175 + 80);
  v164 = (v166 + 16);
  v165 = v89;
  v163 = (v166 + 8);
  v161 = v175 + 192;
  v140 = AssociatedConformanceWitness + 24;
  v162 = (v77 + 8);
  v150 = (v77 + 32);
  v138 = (v146 + 16);
  v137 = (v146 + 32);
  v166 = v175 + 80;
  v136 = v175 + 88;
  v135 = (v147 + 8);
  v84 = v158;
  v90 = v148;
  v85 = v174;
  v160 = v12;
  while (1)
  {
    v92 = v60;
    v93 = v165(v178, v85, v177, v175);
    v94 = v169;
    (*v164)(v12);
    v93(v178, 0);
    v95 = v90(v12);
    if (v84)
    {
      break;
    }

    v96 = v95;
    (*v163)(v12, v94);
    if (v96)
    {
      v60 = v92;
      v85 = v174;
      if (v171(v92, v174, v17, v173) & 1) != 0 && (v167)
      {
        (*v162)(v92, v17);
        (*(v175 + 192))(v85, v177);
        v156(v92, v85, v17);
      }

      else
      {
        v97 = v145;
        v98 = v156;
        v156(v145, v92, v17);
        if (((*(v141 + 24))(v97, v85, v17) & 1) == 0)
        {
          goto LABEL_29;
        }

        v158 = *v162;
        v158(v92, v17);
        v99 = *v150;
        v100 = v151;
        (*v150)(v151, v97, v17);
        v101 = v99;
        v142 = v99;
        v102 = v153;
        v98(&v100[*(v153 + 48)], v174, v17);
        v103 = v154;
        (*v138)(v154, v100, v102);
        v104 = *(v102 + 48);
        v105 = v144;
        v101(v144, v103, v17);
        v106 = &v103[v104];
        v84 = 0;
        v107 = v175;
        v158(v106, v17);
        (*v137)(v103, v100, v102);
        v108 = *(v102 + 48);
        v109 = v155;
        v142(&v105[*(v155 + 36)], &v103[v108], v17);
        v158(v103, v17);
        v110 = v152;
        (*(v107 + 88))(v105, v177, v107);
        v111 = v109;
        v85 = v174;
        (*v135)(v105, v111);
        v114 = type metadata accessor for Array(0, v168, v112, v113);
        Array.append(_:)(v110, v114);
        v115 = *(v107 + 192);
        v116 = v107;
        v90 = v148;
        v115(v85, v177, v116);
        v156(v92, v85, v17);
        v60 = v92;
        if (Array._getCount()() == v139)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      v85 = v174;
      (*(v175 + 192))(v174, v177);
      v60 = v92;
    }

    v91 = v171(v85, v170, v17, v173);
    v12 = v160;
    if (v91)
    {
      goto LABEL_11;
    }
  }

  (*(*(v177 - 1) + 1))(v176);
  (*v163)(v12, v94);
  v132 = *v162;
  (*v162)(v170, v17);
  v132(v174, v17);
  v132(v92, v17);
  v179;
}

uint64_t Collection<>.removeFirst()@<X0>(Class *a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *)@<X8>)
{
  v74 = a3;
  swift_getAssociatedTypeWitness(255, a2, a1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  swift_getTupleTypeMetadata2(0, v7, v7, "lower upper ", 0);
  v66 = v8;
  v72 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v70 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v71 = &v62 - v14;
  v76 = *(v7 - 1);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v75 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v62 - v20;
  MEMORY[0x1EEE9AC00](v19, v22);
  v73 = &v62 - v23;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a2, a1, v7, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v26 = type metadata accessor for Range(0, v7, AssociatedConformanceWitness, v25);
  v68 = *(v26 - 8);
  v69 = v26;
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v67 = &v62 - v29;
  v77 = *(a1 - 1);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v62 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(255, *(a2 + 8), a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v34 = v33;
  v37 = type metadata accessor for Optional(0, v33, v35, v36);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v40 = &v62 - v39;
  v41 = *(a2 + 104);
  v78 = a1;
  v79 = v3;
  if ((v41(a1, a2) & 1) != 0 || (v64 = v7, v65 = AssociatedConformanceWitness, Collection.first.getter(v78, a2, v40), v42 = *(v34 - 8), (*(v42 + 48))(v40, 1, v34) == 1))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v42 + 32))(v74, v40, v34);
  v43 = v78;
  (*(v77 + 16))(v32, v79, v78);
  (*(a2 + 64))(v43, a2);
  v44 = v73;
  (*(a2 + 184))(v21, v43, a2);
  v45 = v76;
  v46 = v64;
  v74 = *(v76 + 1);
  v74(v21, v64);
  v47 = v75;
  (*(a2 + 72))(v43, a2);
  if ((v65[3](v44, v47, v46) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v48 = *(v77 + 8);
  v77 += 8;
  v65 = v48;
  v63 = a2;
  (v48)(v79, v78);
  v49 = *(v45 + 4);
  v50 = v71;
  v49(v71, v44, v46);
  v76 = v32;
  v51 = v66;
  v49(&v50[*(v66 + 48)], v47, v46);
  v52 = v72;
  v53 = v70;
  (*(v72 + 16))(v70, v50, v51);
  v54 = *(v51 + 48);
  v55 = v67;
  v49(v67, v53, v46);
  v56 = &v53[v54];
  v57 = v74;
  v74(v56, v46);
  (*(v52 + 32))(v53, v50, v51);
  v58 = v69;
  v49(&v55[*(v69 + 36)], &v53[*(v51 + 48)], v46);
  v57(v53, v46);
  v59 = v78;
  v60 = v76;
  (*(v63 + 88))(v55, v78);
  (*(v68 + 8))(v55, v58);
  return (v65)(v60, v59);
}

uint64_t Collection<>.removeFirst(_:)(uint64_t a1, Class *a2, uint64_t a3)
{
  v4 = v3;
  swift_getAssociatedTypeWitness(255, a3, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  swift_getTupleTypeMetadata2(0, v9, v9, "lower upper ", 0);
  v11 = v10;
  v80 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v81 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v78 = &v69 - v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v18 = type metadata accessor for Range(0, v9, AssociatedConformanceWitness, v17);
  v79 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v77 = &v69 - v21;
  v87 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v20, v22);
  v86 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Optional(0, v9, v24, v25);
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v30 = &v69 - v29;
  v84 = *(v9 - 1);
  v32 = MEMORY[0x1EEE9AC00](v28, v31);
  v34 = MEMORY[0x1EEE9AC00](v32, v33);
  v36 = &v69 - v35;
  v38 = MEMORY[0x1EEE9AC00](v34, v37);
  v40 = &v69 - v39;
  result = MEMORY[0x1EEE9AC00](v38, v41);
  v82 = &v69 - v45;
  if (!a1)
  {
    return result;
  }

  if (a1 < 0)
  {
LABEL_7:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v69 = v44;
  v70 = result;
  v76 = v43;
  v73 = v18;
  v74 = v11;
  (*(a3 + 64))(a2, a3);
  v46 = v4;
  v75 = *(a3 + 72);
  v75(a2, a3);
  (*(a3 + 144))(v40, a1, v36, a2, a3);
  v85 = a3;
  v47 = v84;
  v49 = v84 + 1;
  v48 = v84[1];
  v48(v36, v9);
  v71 = v49;
  v72 = v48;
  v48(v40, v9);
  v50 = v30;
  if ((v47[6])(v30, 1, v9) == 1)
  {
    (*(v69 + 8))(v30, v70);
    goto LABEL_7;
  }

  v51 = v47[4];
  v52 = v82;
  v51(v82, v50, v9);
  v53 = v87;
  (*(v87 + 16))(v86, v4, a2);
  v54 = v76;
  v75(a2, v85);
  v57 = *(v53 + 8);
  v55 = v53 + 8;
  v56 = v57;
  (v57)(v46, a2);
  if (((*(AssociatedConformanceWitness + 24))(v52, v54, v9) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v87 = v55;
  v58 = v78;
  AssociatedConformanceWitness = v46;
  v84 = a2;
  v51(v78, v52, v9);
  v59 = v74;
  v51(&v58[*(v74 + 48)], v54, v9);
  v60 = v80;
  v61 = v81;
  (*(v80 + 16))(v81, v58, v59);
  v62 = *(v59 + 48);
  v63 = v77;
  v51(v77, v61, v9);
  v64 = &v61[v62];
  v82 = v56;
  v65 = v72;
  v72(v64, v9);
  (*(v60 + 32))(v61, v58, v59);
  v66 = v73;
  v51(&v63[*(v73 + 36)], &v61[*(v59 + 48)], v9);
  v65(v61, v9);
  v67 = v86;
  v68 = v84;
  (*(v85 + 88))(v63, v84);
  (*(v79 + 8))(v63, v66);
  return (v82)(v67, v68);
}

uint64_t Collection<>.firstIndex(of:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v64 = a4;
  v52 = a5;
  swift_getAssociatedTypeWitness(0, *(a3 + 8), a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v10 = v9;
  v53 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v61 = &v51 - v12;
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v51 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13, v13);
  v63 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v66 = v17;
  v67 = &v51 - v18;
  v21 = type metadata accessor for Optional(255, v17, v19, v20);
  v60 = type metadata accessor for Optional(0, v21, v22, v23);
  v24 = *(v60 - 8);
  v26 = MEMORY[0x1EEE9AC00](v60, v25);
  v28 = &v51 - v27;
  v29 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v26, v30);
  v32 = &v51 - v31;
  v33 = *(a3 + 120);
  v62 = a1;
  v34 = a1;
  v65 = v5;
  v35 = a2;
  v33(v34, a2, a3);
  if ((*(v29 + 48))(v28, 1, v21) == 1)
  {
    (*(v24 + 8))(v28, v60);
    (*(a3 + 64))(a2, a3);
    v59 = *(a3 + 72);
    v60 = a3 + 72;
    v58 = *(swift_getAssociatedConformanceWitness(a3, a2, v66, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable) + 8);
    v56 = *(v58 + 8);
    v57 = v58 + 8;
    v36 = (v51 + 8);
    v37 = (v53 + 16);
    v54 = v64 + 8;
    v55 = a3 + 80;
    v38 = (v53 + 8);
    v53 = a3 + 192;
    while (1)
    {
      v39 = v63;
      v59(v35, a3);
      v40 = v66;
      v41 = v56(v67, v39, v66, v58);
      v42 = *v36;
      (*v36)(v39, v40);
      if (v41)
      {
        v47 = v66;
        v42(v67, v66);
        return (*(v51 + 56))(v52, 1, 1, v47);
      }

      v43 = (*(a3 + 80))(v68, v67, v35, a3);
      v44 = v61;
      (*v37)(v61);
      (v43)(v68, 0);
      LOBYTE(v43) = (*(v64 + 8))(v44, v62, v10);
      (*v38)(v44, v10);
      if (v43)
      {
        break;
      }

      (*(a3 + 192))(v67, v35, a3);
    }

    v49 = v51;
    v48 = v52;
    v50 = v66;
    (*(v51 + 32))(v52, v67, v66);
    return (*(v49 + 56))(v48, 0, 1, v50);
  }

  else
  {
    v45 = *(v29 + 32);
    v45(v32, v28, v21);
    return (v45)(v52, v32, v21);
  }
}

Swift::UInt64 specialized Collection.firstIndex(where:)(unint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = a2;
    v6 = a1;
    v7 = 4 * v4;
    v8 = (a1 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LODWORD(v8) = 1;
    }

    v9 = 4 << v8;
    v13 = v8 == 0;
    v10 = 11;
    if (!v13)
    {
      v10 = 7;
    }

    v63 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v64 = v10;
    v11._rawBits = 15;
    v65 = 4 * v4;
    v66 = v9;
    while (1)
    {
      v12 = v11._rawBits & 0xC;
      v13 = v12 == v9 || (v11._rawBits & 1) == 0;
      if (v13)
      {
        rawBits = v11._rawBits;
        if (v12 == v9)
        {
          rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v11)._rawBits;
          v12 = v11._rawBits & 0xC;
          if (v4 <= rawBits >> 16)
          {
            goto LABEL_115;
          }
        }

        else if (v4 <= v11._rawBits >> 16)
        {
          goto LABEL_115;
        }

        if ((rawBits & 1) == 0)
        {
          v15 = v12;
          rawBits = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits;
          v12 = v15;
        }
      }

      else
      {
        rawBits = v11._rawBits;
        if (v4 <= v11._rawBits >> 16)
        {
          goto LABEL_115;
        }
      }

      v16 = (rawBits >> 8) & 0x3F;
      v17 = rawBits >> 16;
      v69 = v12;
      if (v16)
      {
        break;
      }

      if (v7 != rawBits >> 14)
      {
        if ((v5 & 0x1000000000000000) == 0)
        {
          if ((v5 & 0x2000000000000000) != 0)
          {
            v67 = v6;
            v68 = v62;
            v18 = v17 + 1;
            if (v17 + 1 == v2 || (v34 = *(&v67 + v17), v34 != 2573) && (v34 & 0x80808080) == 0)
            {
LABEL_50:
              v67 = v6;
              v68 = v62;
              if (v2 < v18)
              {
                goto LABEL_114;
              }

              v35 = v18 - v17;
              if (v35 < 0)
              {
                goto LABEL_114;
              }

              v36 = _allASCII(_:)((&v67 + v17), v35);
              countAndFlagsBits = specialized static String._uncheckedFromUTF8(_:isASCII:)(&v67 + v17, v35, v36, v37);
              if (countAndFlagsBits != 48)
              {
                goto LABEL_61;
              }

              goto LABEL_53;
            }
          }

          else
          {
            v31 = v63;
            v32 = v3;
            if ((v6 & 0x1000000000000000) == 0)
            {
              v31 = _StringObject.sharedUTF8.getter(v6, v5);
            }

            v18 = v17 + 1;
            if (v17 + 1 == v32)
            {
              goto LABEL_28;
            }

            if (!v31)
            {
              goto LABEL_117;
            }

            v33 = *&v31[v17];
            if (v33 != 2573 && (v33 & 0x80808080) == 0)
            {
              goto LABEL_28;
            }
          }
        }

        v18 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v17) + v17;
        if ((v5 & 0x1000000000000000) != 0)
        {
LABEL_60:
          v39 = _StringGuts.foreignErrorCorrectedGrapheme(startingAt:endingAt:)(v17, v18);
          object = v39._object;
          countAndFlagsBits = v39._countAndFlagsBits;
          if (v39._countAndFlagsBits != 48)
          {
            goto LABEL_61;
          }

          goto LABEL_53;
        }

        goto LABEL_23;
      }

      v18 = rawBits >> 16;
      if ((v5 & 0x1000000000000000) != 0)
      {
        goto LABEL_60;
      }

LABEL_27:
      if ((v5 & 0x2000000000000000) != 0)
      {
        goto LABEL_50;
      }

LABEL_28:
      v19 = v63;
      if ((v6 & 0x1000000000000000) != 0)
      {
        if (v3 < v18)
        {
          goto LABEL_114;
        }
      }

      else
      {
        v19 = _StringObject.sharedUTF8.getter(v6, v5);
        if (v38 < v18)
        {
          goto LABEL_114;
        }
      }

      v20 = v5;
      v21 = v4;
      v22 = v3;
      v23 = v2;
      v24 = v6;
      if (v19)
      {
        v25 = &v19[v17];
      }

      else
      {
        v25 = 0;
      }

      v26 = v18 - v17;
      if (v26 < 0 || v26 && !v25)
      {
LABEL_114:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v27 = _allASCII(_:)(v25, v26);
      countAndFlagsBits = specialized static String._uncheckedFromUTF8(_:isASCII:)(v25, v26, v27, v28);
      v6 = v24;
      v2 = v23;
      v3 = v22;
      v4 = v21;
      v5 = v20;
      if (countAndFlagsBits != 48)
      {
        goto LABEL_61;
      }

LABEL_53:
      if (object == 0xE100000000000000)
      {
        0xE100000000000000;
        goto LABEL_63;
      }

LABEL_61:
      if ((~object & 0x6000000000000000) == 0)
      {
        object;
        return v11._rawBits;
      }

      v40 = object;
      v41 = _stringCompareInternal(_:_:expecting:)(countAndFlagsBits, object, 48, 0xE100000000000000, 0);
      v40;
      if ((v41 & 1) == 0)
      {
        return v11._rawBits;
      }

LABEL_63:
      v9 = v66;
      if (v69 == v66 || (v11._rawBits & 2) == 0)
      {
        v7 = v65;
        if (v69 == v66)
        {
          v54._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v11)._rawBits;
          v9 = v66;
          v11._rawBits = v54._rawBits;
          if (v4 <= v54._rawBits >> 16)
          {
LABEL_115:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }
        }

        else if (v4 <= v11._rawBits >> 16)
        {
          goto LABEL_115;
        }

        if (v11._rawBits)
        {
          if ((v11._rawBits & 2) != 0)
          {
            goto LABEL_71;
          }
        }

        else
        {
          v55._rawBits = _StringGuts.scalarAlignSlow(_:)(v11)._rawBits;
          v9 = v66;
          v56 = v11._rawBits & 0xC | v55._rawBits & 0xFFFFFFFFFFFFFFF3;
          v11._rawBits = v56 | 1;
          if ((v56 & 2) != 0)
          {
            goto LABEL_71;
          }
        }

        if (v11._rawBits >= 0x10000 && v11._rawBits >> 16 != v4)
        {
          v57._rawBits = _StringGuts._slowRoundDownToNearestCharacter(_:)(v11)._rawBits;
          v9 = v66;
          v11._rawBits = v57._rawBits;
        }
      }

      else
      {
        v7 = v65;
        if (v4 <= v11._rawBits >> 16)
        {
          goto LABEL_115;
        }
      }

LABEL_71:
      v42 = (v11._rawBits >> 8) & 0x3F;
      if (v42)
      {
        goto LABEL_74;
      }

      if (v7 == v11._rawBits >> 14)
      {
        v42 = 0;
        goto LABEL_74;
      }

      v48 = v11._rawBits >> 16;
      if ((v5 & 0x1000000000000000) != 0)
      {
        goto LABEL_109;
      }

      if ((v5 & 0x2000000000000000) != 0)
      {
        v67 = v6;
        v68 = v62;
        if (v48 + 1 == v2)
        {
          goto LABEL_93;
        }

        v49 = &v67;
      }

      else
      {
        v49 = v63;
        v50 = v3;
        if ((v6 & 0x1000000000000000) == 0)
        {
          v60 = _StringObject.sharedUTF8.getter(v6, v5);
          v9 = v66;
          v49 = v60;
          v48 = v11._rawBits >> 16;
        }

        if (v48 + 1 == v50)
        {
          goto LABEL_93;
        }

        if (!v49)
        {
LABEL_117:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      v51 = *(v49 + v48);
      if (v51 == 2573 || (v51 & 0x80808080) != 0)
      {
LABEL_109:
        v42 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v48);
        v9 = v66;
LABEL_74:
        v43 = v11._rawBits + (v42 << 16);
        v44 = v43 & 0xFFFFFFFFFFFF0000;
        if (v7 != (v43 & 0xFFFFFFFFFFFF0000) >> 14)
        {
          v45 = v43 >> 16;
          if ((v5 & 0x1000000000000000) == 0)
          {
            if ((v5 & 0x2000000000000000) != 0)
            {
              goto LABEL_95;
            }

            goto LABEL_77;
          }

          goto LABEL_101;
        }

        goto LABEL_10;
      }

LABEL_93:
      v44 = (v11._rawBits + 0x10000) & 0xFFFFFFFFFFFF0000;
      if (v7 != v44 >> 14)
      {
        v45 = (v11._rawBits + 0x10000) >> 16;
        if ((v5 & 0x2000000000000000) != 0)
        {
LABEL_95:
          v67 = v6;
          v68 = v62;
          if (v45 + 1 != v2)
          {
            v46 = &v67;
            goto LABEL_97;
          }

LABEL_99:
          v53 = 1;
LABEL_100:
          v44 |= v53 << 8;
          goto LABEL_10;
        }

LABEL_77:
        v46 = v63;
        v47 = v3;
        if ((v6 & 0x1000000000000000) == 0)
        {
          v58 = v45;
          v59 = _StringObject.sharedUTF8.getter(v6, v5);
          v9 = v66;
          v46 = v59;
          v45 = v58;
        }

        if (v45 + 1 == v47)
        {
          goto LABEL_99;
        }

        if (!v46)
        {
          goto LABEL_117;
        }

LABEL_97:
        v52 = *(v46 + v45);
        if (v52 != 2573 && (v52 & 0x80808080) == 0)
        {
          goto LABEL_99;
        }

LABEL_101:
        v53 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v45);
        v9 = v66;
        if (v53 > 63)
        {
          goto LABEL_10;
        }

        goto LABEL_100;
      }

LABEL_10:
      v11._rawBits = v44 | v64;
      if (v7 == v44 >> 14)
      {
        return 0;
      }
    }

    v18 = v16 + v17;
    if ((v5 & 0x1000000000000000) != 0)
    {
      goto LABEL_60;
    }

LABEL_23:
    if (v18 < v17)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    goto LABEL_27;
  }

  return 0;
}

uint64_t Collection.firstIndex(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3;
  v47 = a1;
  v48 = a2;
  v40 = a5;
  swift_getAssociatedTypeWitness(0, *(a4 + 8), a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v46 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v45 = &v38 - v10;
  swift_getAssociatedTypeWitness(0, a4, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = v11;
  v13 = *(v11 - 8);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v54 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v38 - v18;
  (*(a4 + 64))(v6, a4);
  v52 = *(a4 + 72);
  v53 = a4 + 72;
  v56 = v12;
  v51 = *(swift_getAssociatedConformanceWitness(a4, v6, v12, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable) + 8);
  v49 = *(v51 + 8);
  v50 = v51 + 8;
  v39 = v13;
  v55 = (v13 + 8);
  v42 = (v8 + 16);
  v43 = a4 + 80;
  v44 = (v8 + 8);
  v41 = a4 + 192;
  while (1)
  {
    v20 = v54;
    v52(v6, a4);
    v21 = v56;
    v22 = v49(v19, v20, v56, v51);
    v23 = *v55;
    (*v55)(v20, v21);
    if (v22)
    {
      v32 = v56;
      v23(v19, v56);
      v33 = 1;
      v34 = v40;
      v35 = v39;
      return (*(v35 + 56))(v34, v33, 1, v32);
    }

    v24 = v19;
    v25 = v6;
    v26 = (*(a4 + 80))(v57, v19, v6, a4);
    v28 = v45;
    v27 = v46;
    (*v42)(v45);
    v26(v57, 0);
    v29 = v58;
    v30 = v47(v28);
    if (v29)
    {
      (*v44)(v28, v27);
      return (v23)(v24, v56);
    }

    v31 = v30;
    (*v44)(v28, v27);
    if (v31)
    {
      break;
    }

    v58 = 0;
    v19 = v24;
    v6 = v25;
    (*(a4 + 192))(v24, v25, a4);
  }

  v35 = v39;
  v34 = v40;
  v37 = v24;
  v32 = v56;
  (*(v39 + 32))(v40, v37, v56);
  v33 = 0;
  return (*(v35 + 56))(v34, v33, 1, v32);
}

uint64_t BidirectionalCollection.last(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23 = a5;
  v11 = *(a4 + 8);
  swift_getAssociatedTypeWitness(255, v11, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v15 = type metadata accessor for Optional(0, v12, v13, v14);
  v22 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v22 - v17;
  result = BidirectionalCollection.lastIndex(where:)(a1, a2, a3, a4, &v22 - v17);
  if (!v6)
  {
    MEMORY[0x1EEE9AC00](result, v20);
    *(&v22 - 4) = a3;
    *(&v22 - 3) = a4;
    *(&v22 - 2) = v5;
    swift_getAssociatedTypeWitness(0, *(v11 + 8), a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5(partial apply for closure #1 in BidirectionalCollection.last(where:), (&v22 - 6), v15, v21, v23);
    return (*(v22 + 8))(v18, v15);
  }

  return result;
}

uint64_t BidirectionalCollection.lastIndex(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3;
  v45 = a1;
  v46 = a2;
  v38 = a5;
  v7 = *(a4 + 8);
  swift_getAssociatedTypeWitness(0, *(v7 + 8), a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v44 = v8;
  v42 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v43 = &v36 - v10;
  swift_getAssociatedTypeWitness(0, v7, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = v11;
  v13 = *(v11 - 8);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v36 - v19;
  (*(v7 + 72))(v6, v7);
  v51 = *(v7 + 64);
  v52 = v7 + 64;
  v53 = v12;
  v50 = *(swift_getAssociatedConformanceWitness(v7, v6, v12, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable) + 8);
  v48 = *(v50 + 8);
  v49 = v50 + 8;
  v37 = v13;
  v54 = (v13 + 8);
  v47 = a4;
  v40 = v7 + 80;
  v41 = a4 + 40;
  v39 = (v42 + 2);
  ++v42;
  while (1)
  {
    v51(v6, v7);
    v21 = v53;
    v22 = v48(v20, v17, v53, v50);
    v23 = *v54;
    (*v54)(v17, v21);
    if (v22)
    {
      v23(v20, v21);
      v34 = 1;
      v33 = v38;
      v32 = v37;
      return (*(v32 + 56))(v33, v34, 1, v21);
    }

    (*(v47 + 40))(v20, v6);
    v24 = v6;
    v25 = v7;
    v26 = (*(v7 + 80))(v55, v20, v6, v7);
    v28 = v43;
    v27 = v44;
    (*v39)(v43);
    v26(v55, 0);
    v29 = v56;
    v30 = v45(v28);
    if (v29)
    {
      break;
    }

    v31 = v30;
    v56 = 0;
    (*v42)(v28, v27);
    v6 = v24;
    v7 = v25;
    if (v31)
    {
      v32 = v37;
      v33 = v38;
      v21 = v53;
      (*(v37 + 32))(v38, v20, v53);
      v34 = 0;
      return (*(v32 + 56))(v33, v34, 1, v21);
    }
  }

  (*v42)(v28, v27);
  return (v23)(v20, v53);
}

uint64_t closure #1 in BidirectionalCollection.last(where:)@<X0>(uint64_t a1@<X0>, Class *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *(a3 + 8);
  v7 = (*(v6 + 80))(v12, a1, a2, v6);
  v9 = v8;
  swift_getAssociatedTypeWitness(0, *(v6 + 8), a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  (*(*(v10 - 8) + 16))(a4, v9, v10);
  return v7(v12, 0);
}

uint64_t BidirectionalCollection<>.lastIndex(of:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a4;
  v35 = a5;
  v32 = a3;
  v7 = *(a3 + 8);
  swift_getAssociatedTypeWitness(255, v7, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = type metadata accessor for Optional(255, v8, v9, v10);
  v14 = type metadata accessor for Optional(0, v11, v12, v13);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v31 - v18;
  v20 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v17, v21);
  v23 = &v31 - v22;
  v24 = *(v7 + 128);
  v33 = a1;
  v24(a1, a2, v7);
  if ((*(v20 + 48))(v19, 1, v11) == 1)
  {
    v25 = (*(v15 + 8))(v19, v14);
    MEMORY[0x1EEE9AC00](v25, v26);
    v27 = v32;
    *(&v31 - 4) = a2;
    *(&v31 - 3) = v27;
    v28 = v33;
    *(&v31 - 2) = v34;
    *(&v31 - 1) = v28;
    return BidirectionalCollection.lastIndex(where:)(partial apply for closure #1 in BidirectionalCollection<>.lastIndex(of:), (&v31 - 6), a2, v27, v35);
  }

  else
  {
    v30 = *(v20 + 32);
    v30(v23, v19, v11);
    return (v30)(v35, v23, v11);
  }
}

void Collection.indices(where:)(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v196 = a2;
  v195 = a1;
  v161 = a5;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  swift_getTupleTypeMetadata2(0, v9, v9, "lower upper ", 0);
  v210 = v10;
  v214 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v209 = &v158 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v208 = &v158 - v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v218 = AssociatedConformanceWitness;
  v18 = type metadata accessor for Range(0, v9, AssociatedConformanceWitness, v17);
  v201 = *(v18 - 1);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v168 = &v158 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v172 = &v158 - v24;
  MEMORY[0x1EEE9AC00](v23, v25);
  v179 = &v158 - v26;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v194 = v27;
  v200 = *(v27 - 8);
  v29 = MEMORY[0x1EEE9AC00](v27, v28);
  v171 = &v158 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v170 = &v158 - v33;
  MEMORY[0x1EEE9AC00](v32, v34);
  v178 = &v158 - v35;
  v193 = type metadata accessor for PartialRangeFrom(0, v9, AssociatedConformanceWitness, v36);
  v206 = *(v193 - 8);
  v38 = MEMORY[0x1EEE9AC00](v193, v37);
  v175 = &v158 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v40);
  v42 = &v158 - v41;
  v160 = type metadata accessor for Optional(0, v9, v43, v44);
  v159 = *(v160 - 8);
  v46 = MEMORY[0x1EEE9AC00](v160, v45);
  v177 = &v158 - v47;
  v216 = *(v9 - 1);
  v49 = MEMORY[0x1EEE9AC00](v46, v48);
  v167 = &v158 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x1EEE9AC00](v49, v51);
  v169 = &v158 - v53;
  v55 = MEMORY[0x1EEE9AC00](v52, v54);
  v174 = &v158 - v56;
  v58 = MEMORY[0x1EEE9AC00](v55, v57);
  v173 = &v158 - v59;
  v61 = MEMORY[0x1EEE9AC00](v58, v60);
  v63 = &v158 - v62;
  v65 = MEMORY[0x1EEE9AC00](v61, v64);
  v180 = &v158 - v66;
  v68 = MEMORY[0x1EEE9AC00](v65, v67);
  v70 = &v158 - v69;
  v72 = MEMORY[0x1EEE9AC00](v68, v71);
  v188 = &v158 - v73;
  MEMORY[0x1EEE9AC00](v72, v74);
  v76 = &v158 - v75;
  v207 = v18;
  _swift_isClassOrObjCExistentialType(v18, v18);
  v221 = &_swiftEmptyArrayStorage;
  v77 = *(a4 + 64);
  v78 = v5;
  v219 = a3;
  v220 = a4;
  v77(a3, a4);
  v79 = v216;
  v80 = v216 + 16;
  v81 = *(v216 + 16);
  v204 = v76;
  v82 = v76;
  v83 = v70;
  v81(v70, v82, v9);
  v84 = v79;
  v85 = *(v218 + 8);
  v86 = *(v85 + 8);
  v187 = v85;
  v186 = v85 + 8;
  v185 = v86;
  if (((v86)(v83, v83, v9) & 1) == 0)
  {
LABEL_19:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v87 = v42;
  v89 = *(v84 + 32);
  v88 = v84 + 32;
  v211 = v220 + 72;
  v212 = v218 + 24;
  v213 = v89;
  v192 = (v206 + 1);
  v206 = (v214 + 16);
  v197 = (v88 - 24);
  v205 = (v214 + 32);
  v191 = v220 + 88;
  v190 = (v201 + 8);
  v189 = (v200 + 8);
  v176 = (v88 + 16);
  v166 = v218 + 16;
  v162 = v220 + 192;
  v215 = v78;
  v165 = v42;
  v216 = v88;
  v164 = v63;
  v163 = v83;
  v202 = v81;
  v203 = v80;
  while (1)
  {
    v90 = v213;
    v213(v87, v83, v9);
    v91 = v180;
    v81(v180, v87, v9);
    v200 = *(v220 + 72);
    v200(v219);
    v201 = *(v218 + 24);
    if (((v201)(v91, v63, v9) & 1) == 0)
    {
      goto LABEL_19;
    }

    v214 = *v192;
    (v214)(v87, v193);
    v92 = v91;
    v93 = v208;
    v90(v208, v92, v9);
    v94 = v210;
    v90(&v93[*(v210 + 48)], v63, v9);
    v95 = v90;
    v96 = v209;
    v199 = *v206;
    v199(v209, v93, v94);
    v97 = *(v94 + 48);
    v98 = v179;
    v95(v179, v96, v9);
    v99 = *v197;
    (*v197)(&v96[v97], v9);
    v198 = *v205;
    v198(v96, v93, v94);
    v100 = v207;
    v101 = &v96[*(v94 + 48)];
    v102 = v213;
    v213(&v98[*(v207 + 9)], v101, v9);
    v103 = v99;
    v99(v96, v9);
    v104 = v220;
    v105 = v178;
    v183 = *(v220 + 88);
    v183(v98, v219, v220);
    v106 = v105;
    v182 = *v190;
    v182(v98, v100);
    v107 = v104;
    v108 = v219;
    v109 = v194;
    v110 = swift_getAssociatedConformanceWitness(v107, v219, v194, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
    v111 = v177;
    v184 = v110;
    v112 = v217;
    Collection.firstIndex(where:)(v195, v196, v109, v110, v177);
    if (v112)
    {
      (*v189)(v106, v109);
      v156 = v204;
LABEL_16:
      v103(v156, v9);
      v221;
      return;
    }

    v217 = 0;
    v113 = *v189;
    (*v189)(v106, v109);
    v114 = (*v176)(v111, 1, v9);
    v115 = v204;
    if (v114 == 1)
    {
      v103(v204, v9);
      (*(v159 + 8))(v111, v160);
      v148 = v218;
      goto LABEL_18;
    }

    v181 = v113;
    v116 = v188;
    v102(v188, v111, v9);
    if ((v185(v116, v116, v9, v187) & 1) == 0)
    {
      goto LABEL_19;
    }

    v103(v115, v9);
    v117 = v175;
    v118 = v202;
    v202(v175, v116, v9);
    v119 = v103;
    v120 = v173;
    v118(v173, v117, v9);
    v121 = v174;
    (v200)(v108, v220);
    if (((v201)(v120, v121, v9, v218) & 1) == 0)
    {
      goto LABEL_19;
    }

    (v214)(v117, v193);
    v214 = v119;
    v122 = v208;
    v102(v208, v120, v9);
    v123 = v102;
    v124 = v210;
    v123(&v122[*(v210 + 48)], v121, v9);
    v125 = v209;
    v199(v209, v122, v124);
    v126 = *(v124 + 48);
    v127 = v172;
    v123(v172, v125, v9);
    v128 = &v125[v126];
    v129 = v214;
    (v214)(v128, v9);
    v198(v125, v122, v124);
    v130 = v207;
    v123(&v127[*(v207 + 9)], &v125[*(v124 + 48)], v9);
    v131 = v125;
    v132 = v194;
    v129(v131, v9);
    v103 = v129;
    v183(v127, v219, v220);
    v182(v127, v130);
    v133 = v170;
    v134 = v184;
    v135 = v217;
    Collection.prefix(while:)(v195, v196, v132, v184, v170);
    v217 = v135;
    if (v135)
    {
      v156 = v188;
      goto LABEL_16;
    }

    v136 = v204;
    (v134[9])(v132, v134);
    v181(v133, v132);
    v137 = v169;
    v202(v169, v136, v9);
    v138 = v188;
    if (((v201)(v188, v137, v9, v218) & 1) == 0)
    {
      goto LABEL_19;
    }

    v139 = v208;
    v140 = v213;
    v213(v208, v138, v9);
    v141 = v210;
    v140(&v139[*(v210 + 48)], v137, v9);
    v142 = v209;
    v199(v209, v139, v141);
    v143 = *(v141 + 48);
    v144 = v168;
    v140(v168, v142, v9);
    (v214)(&v142[v143], v9);
    v145 = v139;
    v146 = v204;
    v198(v142, v145, v141);
    v147 = v207;
    v140((v144 + *(v207 + 9)), &v142[*(v141 + 48)], v9);
    v148 = v218;
    v149 = v214;
    (v214)(v142, v9);
    v152 = type metadata accessor for Array(0, v147, v150, v151);
    Array.append(_:)(v144, v152);
    v153 = v167;
    v154 = v219;
    (v200)(v219, v220);
    LOBYTE(v141) = (*(v148 + 16))(v146, v153, v9, v148);
    v149(v153, v9);
    if ((v141 & 1) == 0)
    {
      break;
    }

    (*(v220 + 192))(v146, v154);
    v83 = v163;
    v81 = v202;
    v202(v163, v146, v9);
    v155 = v185(v83, v83, v9, v187);
    v87 = v165;
    v63 = v164;
    if ((v155 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v149(v146, v9);
LABEL_18:
  RangeSet.init(_orderedRanges:)(v221, v9, v148, v161, v157);
}

uint64_t static Comparable.... postfix(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  return static Comparable.... postfix(_:)(a1, a2, a3, a4);
}

{
  if (((*(*(a3 + 8) + 8))(a1, a1, a2) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = *(*(a2 - 8) + 16);

  return v7(a4, a1, a2);
}

uint64_t specialized Collection.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a3 < a1)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return 0;
}

uint64_t specialized Collection.subscript.getter(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 < result)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (result < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t Collection.subscript.getter(uint64_t a1, Class *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness(255, a4, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a2, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v14 = type metadata accessor for Range(0, v11, AssociatedConformanceWitness, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v20 - v17;
  (*(a5 + 24))(v5, a2, a4, a3, a5);
  (*(a4 + 88))(v18, a2, a4);
  return (*(v15 + 8))(v18, v14);
}

void RangeSet.init(_orderedRanges:)(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for Range(0, a2, a3, a5);
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v34 - v11;
  v13 = Array._getCount()();
  if (v13 == 1)
  {
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v7, v7);
    v20 = ((a1 & 0xC000000000000001) == 0) | ~isClassOrObjCExistentialType;
    Array._checkSubscript(_:wasNativeTypeChecked:)(0, (a1 & 0xC000000000000001) == 0 || (isClassOrObjCExistentialType & 1) == 0);
    if (v20)
    {
      v21 = *(v8 + 80);
      v22 = (v21 + 32) & ~v21;
      (*(v8 + 16))(v12, a1 + v22, v7);
      a1;
    }

    else
    {
      v32 = _ArrayBuffer._getElementSlowPath(_:)(0, a1, v7);
      if (v9 != 8)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v35 = v32;
      v33 = v32;
      (*(v8 + 16))(v12, &v35, v7);
      a1;
      swift_unknownObjectRelease(v33);
      v21 = *(v8 + 80);
      v22 = (v21 + 32) & ~v21;
    }

    v25 = type metadata accessor for _ContiguousArrayStorage(0, v7, v23, v24);
    v26 = swift_allocObject(v25, (v22 + *(v8 + 72)), v21 | 7);
    a1 = static Array._adoptStorage(_:count:)(v26, 1);
    (*(v8 + 32))(v27, v12, v7);
    v14 = _ArrayBuffer.requestNativeBuffer()(a1, v7);
    if (v14)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (v13)
  {
    v28 = a1;
    v17 = _ArrayBuffer.requestNativeBuffer()(v28, v7);
    a1;
    if (v17)
    {
LABEL_13:
      v18 = a1;
      goto LABEL_14;
    }

    v35 = a1;
    v14 = 0;
    goto LABEL_11;
  }

  a1;
  _swift_isClassOrObjCExistentialType(v7, v7);
  a1 = &_swiftEmptyArrayStorage;
  v14 = _ArrayBuffer.requestNativeBuffer()(&_swiftEmptyArrayStorage, v7);
  if (!v14)
  {
LABEL_8:
    v35 = a1;
LABEL_11:
    v29 = type metadata accessor for Array(v14, v7, v15, v16);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v29, v30);
    v14 = _copyCollectionToContiguousArray<A>(_:)(&v35, v29, WitnessTable);
LABEL_12:
    v17 = v14;
    goto LABEL_13;
  }

  v17 = v14;
  v18 = &_swiftEmptyArrayStorage;
LABEL_14:
  v18;
  *a4 = v17;
}

void Collection<>.indices(of:)(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = a4;
  v5[5] = a1;
  Collection.indices(where:)(partial apply for closure #1 in Collection<>.indices(of:), v5, a2, a3, a5);
}

uint64_t MutableCollection._halfStablePartition(isSuffixElement:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v48 = a5;
  v52 = a4;
  v9 = *(a4 + 8);
  swift_getAssociatedTypeWitness(0, *(v9 + 8), a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v68 = v10;
  v57 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v67 = &v46 - v12;
  swift_getAssociatedTypeWitness(255, v9, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v14 = v13;
  v17 = type metadata accessor for Optional(0, v13, v15, v16);
  v61 = *(v17 - 8);
  v62 = v17;
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v50 = *(v14 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v27 = &v46 - v26;
  MEMORY[0x1EEE9AC00](v25, v28);
  v30 = &v46 - v29;
  v64 = v31;
  v70 = a1;
  v32 = v66;
  result = Collection.firstIndex(where:)(a1, a2, a3, v9, v31);
  if (!v32)
  {
    v65 = v23;
    v51 = v30;
    v63 = a2;
    v66 = v5;
    v34 = v50;
    v35 = v64;
    if ((*(v50 + 48))(v64, 1, v14) == 1)
    {
      (*(v61 + 8))(v35, v62);
      return (*(v9 + 72))(a3, v9);
    }

    else
    {
      v36 = v51;
      v47 = *(v34 + 32);
      v47(v51, v35, v14);
      (*(v9 + 184))(v36, a3, v9);
      v61 = *(v9 + 72);
      v62 = v9 + 72;
      v60 = *(swift_getAssociatedConformanceWitness(v9, a3, v14, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable) + 8);
      v58 = *(v60 + 8);
      v59 = v60 + 8;
      v50 = v34 + 32;
      v64 = (v34 + 8);
      v55 = (v57 + 2);
      v56 = v9 + 80;
      ++v57;
      v49 = v52 + 64;
      v54 = (v9 + 192);
      v53 = (v9 + 192) & 0xFFFFFFFFFFFFLL | 0x8421000000000000;
      while (1)
      {
        v39 = v65;
        (v61)(a3, v9);
        v40 = v58(v27, v39, v14, v60);
        v41 = *v64;
        (*v64)(v39, v14);
        if (v40)
        {
          break;
        }

        v42 = v14;
        v43 = (*(v9 + 80))(v69, v27, a3, v9);
        v44 = v67;
        v45 = v68;
        (*v55)(v67);
        (v43)(v69, 0);
        LOBYTE(v43) = v70(v44);
        (*v57)(v44, v45);
        if (v43)
        {
          v38 = *v54;
        }

        else
        {
          v37 = v51;
          (*(v52 + 64))(v51, v27, a3);
          v38 = *(v9 + 192);
          v38(v37, a3, v9);
        }

        v14 = v42;
        v38(v27, a3, v9);
      }

      v41(v27, v14);
      return v47(v48, v51, v14);
    }
  }

  return result;
}

uint64_t closure #1 in MutableCollection<>.partition(by:)@<X0>(uint64_t (*a1)(char *)@<X1>, uint64_t a2@<X2>, Class *a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  swift_getAssociatedTypeWitness(255, *(*(a4 + 8) + 8), a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v12 = type metadata accessor for UnsafeMutableBufferPointer(0, v9, v10, v11);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UnsafeMutableBufferPointer<A>, v12, v13);
  v16 = swift_getWitnessTable(protocol conformance descriptor for UnsafeMutableBufferPointer<A>, v12, v15);
  result = MutableCollection<>._partitionImpl(by:)(a1, a2, v12, WitnessTable, v16, &v18);
  if (!v5)
  {
    *a5 = v18;
  }

  return result;
}

uint64_t specialized MutableCollection<>._partitionImpl(by:)(uint64_t (*a1)(char *))
{
  v3 = v1[1];
  v4 = HIBYTE(v3) & 0xF;
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    v7 = *v1;
    if (v6 >= 8)
    {
      v8 = v3;
    }

    else
    {
      v8 = *v1;
    }

    v17 = v8 >> (8 * (v6 & 7u));
    v9 = a1(&v17);
    if (v2)
    {
      break;
    }

    v10 = HIBYTE(v3) & 0xF;
    if (v9)
    {
      v15 = a1;
      v11 = 8 * v4 + 56;
      v12 = v4;
      do
      {
        if (--v12 < 0 || v4 > v10)
        {
          goto LABEL_21;
        }

        if (v6 >= v12)
        {
          return v6;
        }

        v13 = v3 >> (v11 & 0x38);
        if (v12 <= 7)
        {
          v13 = v7 >> v11;
        }

        v16 = v13;
        v11 -= 8;
      }

      while ((v15(&v16) & 1) != 0);
      specialized MutableCollection.swapAt(_:_:)(v6, v12);
      v3 = v1[1];
      v6 = specialized RandomAccessCollection<>.index(after:)(v6, *v1, v3);
      v4 = v12;
      a1 = v15;
    }

    else
    {
      if (v6 >= v10)
      {
LABEL_21:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      ++v6;
    }
  }

  while (v6 < v4);
  return v6;
}

{
  v3 = v1[1];
  if (v3 < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = *v1;
  v7 = v1[1];
  do
  {
    if (v5 == v3)
    {
LABEL_17:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v15 = *(v6 + v5);
    v8 = a1(&v15);
    if (v2)
    {
      break;
    }

    if (v8)
    {
      v9 = v7;
      while (1)
      {
        v10 = v9 - 1;
        if (v5 >= v9 - 1)
        {
          return v5;
        }

        if (v7 > v3)
        {
          goto LABEL_17;
        }

        v14 = *(v6 + v9 - 1);
        v11 = a1(&v14);
        v9 = v10;
        if ((v11 & 1) == 0)
        {
          v12 = *(v6 + v5);
          *(v6 + v5) = *(v6 + v10);
          *(v6 + v10) = v12;
          v7 = v10;
          goto LABEL_13;
        }
      }
    }

    v10 = v7;
LABEL_13:
    ++v5;
  }

  while (v5 < v10);
  return v5;
}

Swift::Int specialized MutableCollection<>._partitionImpl(by:)(uint64_t (*a1)(char *))
{
  v3 = *v1;
  if (!*v1)
  {
    return 0;
  }

  v4 = v1[1];
  v5 = v4 - v3;
  if (v4 - v3 < 1)
  {
    return 0;
  }

  v7 = 0;
  v8 = v4 - v3;
  do
  {
    if (v7 < 0 || v7 >= v5)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v15 = *(v3 + v7);
    v9 = a1(&v15);
    if (v2)
    {
      break;
    }

    if (v9)
    {
      v10 = v8;
      while (1)
      {
        if (v8 > v5)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v11 = v10 - 1;
        if (v7 >= v10 - 1)
        {
          return v7;
        }

        v14 = *(v3 - 1 + v10);
        v12 = a1(&v14);
        v10 = v11;
        if ((v12 & 1) == 0)
        {
          UnsafeMutableRawBufferPointer.swapAt(_:_:)(v7, v11);
          v7 = specialized RandomAccessCollection<>.index(after:)(v7, v3, v4);
          v8 = v11;
          goto LABEL_14;
        }
      }
    }

    ++v7;
LABEL_14:
    ;
  }

  while (v7 < v8);
  return v7;
}

uint64_t MutableCollection<>._partitionImpl(by:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v55 = a5;
  v72 = a1;
  v73 = a2;
  v56 = a6;
  v67 = a4;
  v9 = *(a4 + 8);
  swift_getAssociatedTypeWitness(0, *(v9 + 8), a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v64 = v10;
  v68 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v59 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v54 = v53 - v15;
  swift_getAssociatedTypeWitness(0, v9, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v17 = v16;
  v57 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = v53 - v23;
  (*(v9 + 64))(a3, v9);
  (*(v9 + 72))(a3, v9);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v9, a3, v17, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v26 = *(AssociatedConformanceWitness + 16);
  v76 = v24;
  v58 = v21;
  v74 = v17;
  v70 = AssociatedConformanceWitness + 16;
  v71 = AssociatedConformanceWitness;
  v69 = v26;
  if ((v26)(v24, v21, v17))
  {
    v27 = a3;
    v28 = *(v9 + 80);
    v29 = (v68 + 2);
    ++v68;
    v53[1] = v9 + 192;
    v63 = (v67 + 40);
    v53[0] = v55 + 64;
    v30 = v64;
    v31 = v76;
    v32 = v54;
    v65 = v6;
    v66 = a3;
    v61 = v28;
    v62 = v9 + 80;
    v60 = v29;
    while (1)
    {
      v33 = v28(v75, v31, v27, v9);
      v34 = *v29;
      (*v29)(v32);
      v33(v75, 0);
      v35 = v72(v32);
      if (v7)
      {
        (*v68)(v32, v30);
        v51 = *(v57 + 8);
        v52 = v74;
        v51(v58, v74);
        return (v51)(v76, v52);
      }

      v36 = v35;
      v37 = *v68;
      (*v68)(v32, v30);
      if (v36)
      {
        break;
      }

      v31 = v76;
      v27 = v66;
      (*(v9 + 192))(v76);
LABEL_10:
      v46 = v69(v31, v58);
      v28 = v61;
      v29 = v60;
      if ((v46 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v38 = *v63;
    v39 = v58;
    while (1)
    {
      v40 = v9;
      v41 = v66;
      v38(v39, v66, v67);
      if ((v69(v76, v39) & 1) == 0)
      {
        break;
      }

      v42 = v41;
      v9 = v40;
      v43 = v61(v75, v39, v42, v40);
      v44 = v59;
      v30 = v64;
      v34(v59);
      (v43)(v75, 0);
      LOBYTE(v43) = v72(v44);
      v37(v44, v30);
      if ((v43 & 1) == 0)
      {
        v31 = v76;
        v45 = v66;
        (*(v55 + 64))(v76, v39, v66);
        v27 = v45;
        (*(v9 + 192))(v31, v45, v9);
        v32 = v54;
        goto LABEL_10;
      }
    }
  }

  v31 = v76;
LABEL_13:
  v47 = v31;
  v48 = v57;
  v49 = v74;
  (*(v57 + 8))(v58, v74);
  return (*(v48 + 32))(v56, v47, v49);
}

uint64_t MutableCollection._indexedStablePartition(count:range:by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, Class *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v149 = a2;
  v145 = a4;
  v146 = a3;
  v143 = a6;
  v144 = a7;
  v9 = *(a6 + 8);
  swift_getAssociatedTypeWitness(255, v9, a5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  swift_getTupleTypeMetadata2(0, v11, v11, "lower upper ", 0);
  v141 = v12;
  v147 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v142 = &v116 - v18;
  v148 = a5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v9, a5, v11, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v21 = type metadata accessor for Range(0, v11, AssociatedConformanceWitness, v20);
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v29 = *(v11 - 1);
  v30 = MEMORY[0x1EEE9AC00](v27, &v116 - v28);
  v32 = &v116 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v30, v33);
  v36 = MEMORY[0x1EEE9AC00](v34, v35);
  v38 = &v116 - v37;
  v40 = MEMORY[0x1EEE9AC00](v36, v39);
  v42 = &v116 - v41;
  v44 = MEMORY[0x1EEE9AC00](v40, v43);
  v51 = (&v116 - v50);
  if (a1 != 1)
  {
    if (!a1)
    {
      return (*(v29 + 16))(v144, v149, v11);
    }

    v140 = v46;
    v132 = v45;
    v135 = v42;
    v121 = v49;
    v122 = v48;
    v136 = v16;
    v117 = v47;
    v138 = v44;
    v123 = a1;
    v56 = a1 / 2;
    v57 = *(v9 + 136);
    v58 = v149;
    v131 = v56;
    v59 = v29;
    v60 = AssociatedConformanceWitness;
    v57(v149);
    v61 = v11;
    v62 = v59;
    v65 = *(v59 + 16);
    v63 = v59 + 16;
    v64 = v65;
    v65(v38, v58, v61);
    v66 = *(v60 + 24);
    v129 = v60;
    v128 = v60 + 24;
    v127 = v66;
    if (v66(v38, v51, v61, v60))
    {
      v118 = v32;
      v67 = v63;
      v139 = v62;
      v69 = v62 + 32;
      v68 = *(v62 + 32);
      v70 = v64;
      v71 = v141;
      v72 = v142;
      v68(v142, v38, v61);
      v73 = v68;
      v137 = v68;
      v74 = &v72[*(v71 + 48)];
      v134 = v51;
      v120 = v67;
      v119 = v70;
      v70(v74, v51, v61);
      v75 = v147;
      v76 = *(v147 + 16);
      v77 = v136;
      v126 = v147 + 16;
      v125 = v76;
      v76(v136, v72, v71);
      v133 = *(v71 + 48);
      v78 = v132;
      v73(v132, v77, v61);
      v79 = v139 + 8;
      v80 = *(v139 + 8);
      v80(v133 + v77, v61);
      v81 = *(v75 + 32);
      v147 = v75 + 32;
      v124 = v81;
      v81(v77, v72, v71);
      v82 = v138;
      v137(v78 + *(v138 + 36), &v77[*(v71 + 48)], v61);
      v130 = v61;
      v133 = v80;
      v80(v77, v61);
      v83 = v131;
      v84 = v150;
      MutableCollection._indexedStablePartition(count:range:by:)(v131, v78, v146, v145, v148, v143, v135);
      if (v84)
      {
        (*(v140 + 8))(v78, v82);
        return v133(v134, v130);
      }

      v85 = v119;
      v116 = v69;
      v150 = 0;
      v86 = *(v140 + 8);
      v140 += 8;
      result = v86(v78, v82);
      v131 = v123 - v83;
      if (__OFSUB__(v123, v83))
      {
        __break(1u);
        return result;
      }

      v132 = v86;
      v139 = v79;
      v87 = v149 + *(v82 + 36);
      v88 = v118;
      v89 = v130;
      v90 = v85;
      v85(v118, v87, v130);
      v91 = v134;
      v92 = v127(v134, v88, v89, v129);
      v93 = v136;
      if (v92)
      {
        v94 = v142;
        v90(v142, v91, v89);
        v95 = v141;
        v96 = v88;
        v97 = v137;
        v137(&v94[*(v141 + 48)], v96, v89);
        v125(v93, v94, v95);
        v98 = *(v95 + 48);
        v99 = v122;
        v97(v122, v93, v89);
        v100 = v133;
        v133(&v93[v98], v89);
        v124(v93, v94, v95);
        v101 = v138;
        v97(v99 + *(v138 + 36), &v93[*(v95 + 48)], v89);
        v100(v93, v89);
        v102 = v121;
        v103 = v150;
        MutableCollection._indexedStablePartition(count:range:by:)(v131, v99, v146, v145, v148, v143, v121);
        if (v103)
        {
          v132(v99, v101);
          v100(v135, v89);
          return (v100)(v134, v89);
        }

        v150 = 0;
        v132(v99, v101);
        v104 = v135;
        if (v127(v135, v102, v89, v129))
        {
          v105 = v142;
          v106 = v137;
          v137(v142, v104, v89);
          v107 = v141;
          v106(&v105[*(v141 + 48)], v102, v89);
          v125(v93, v105, v107);
          v108 = *(v107 + 48);
          v109 = v117;
          v106(v117, v93, v89);
          v110 = &v93[v108];
          v111 = v133;
          v133(v110, v89);
          v124(v93, v105, v107);
          v112 = *(v107 + 48);
          v113 = v138;
          v106(&v109[*(v138 + 36)], &v93[v112], v89);
          v114 = v111;
          v111(v93, v89);
          v115 = v134;
          MutableCollection._rotate(in:shiftingToStart:)(v109, v134, v148, v143, v144);
          v132(v109, v113);
          return v114(v115, v89);
        }
      }
    }

    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v53 = v44;
  v54 = v149;
  v55 = v150;
  result = v146(v149);
  if (!v55)
  {
    if (result)
    {
      return (*(v29 + 16))(v144, v54, v11);
    }

    else
    {
      return (*(v29 + 16))(v144, v54 + *(v53 + 36), v11);
    }
  }

  return result;
}

uint64_t static Int./ infix(_:_:)(uint64_t a1, uint64_t a2)
{
  return static Int./ infix(_:_:)(a1, a2);
}

{
  if (!a2 || a1 == 0x8000000000000000 && a2 == -1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1 / a2;
}

uint64_t MutableCollection._rotate(in:shiftingToStart:)@<X0>(char *a1@<X0>, void (**a2)(char *, char *, uint64_t, uint64_t)@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v151 = a1;
  v152 = a2;
  v116 = a5;
  v146 = a4;
  v6 = *(a4 + 8);
  swift_getAssociatedTypeWitness(255, v6, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v122 = v9;
  v150 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v126 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v125 = &v116 - v14;
  v145 = v6;
  v144 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, a3, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v17 = type metadata accessor for Range(0, v8, AssociatedConformanceWitness, v16);
  v147 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v153 = &v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v155 = &v116 - v23;
  v24 = *(v8 - 1);
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v119 = &v116 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v154 = &v116 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v121 = &v116 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v124 = &v116 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35, v37);
  v123 = &v116 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38, v40);
  v120 = &v116 - v42;
  v44 = MEMORY[0x1EEE9AC00](v41, v43);
  v128 = &v116 - v45;
  v47 = MEMORY[0x1EEE9AC00](v44, v46);
  v117 = &v116 - v48;
  v50 = MEMORY[0x1EEE9AC00](v47, v49);
  v52 = &v116 - v51;
  v54 = MEMORY[0x1EEE9AC00](v50, v53);
  v56 = &v116 - v55;
  MEMORY[0x1EEE9AC00](v54, v57);
  v59 = &v116 - v58;
  v60 = *(v24 + 16);
  v60(&v116 - v58, v152, v8);
  v61 = v151;
  v60(v56, v151, v8);
  v138 = v17;
  v62 = &v61[*(v17 + 36)];
  v140 = v24 + 16;
  v143 = v60;
  v60(v52, v62, v8);
  v134 = AssociatedConformanceWitness;
  v63 = *(AssociatedConformanceWitness + 8);
  v64 = *(v63 + 8);
  if (v64(v56, v59, v8, v63))
  {
    v65 = *(v24 + 8);
    v65(v56, v8);
    v65(v59, v8);
    return (*(v24 + 32))(v116, v52, v8);
  }

  else
  {
    v137 = v56;
    v148 = v64;
    v149 = v63;
    if (v64(v59, v52, v8, v63))
    {
      v67 = *(v24 + 8);
      v67(v52, v8);
      v67(v59, v8);
      return (*(v24 + 32))(v116, v137, v8);
    }

    else
    {
      v127 = v63 + 8;
      v133 = v52;
      v141 = v59;
      v143(v117, v52, v8);
      v136 = (v24 + 32);
      v132 = (v150 + 16);
      v139 = (v24 + 8);
      v68 = (v150 + 32);
      v151 = (v145 + 24);
      v152 = (v146 + 64);
      v118 = (v147 + 8);
      v69 = v126;
      v70 = v125;
      v71 = v123;
      v131 = v134 + 24;
      for (i = (v150 + 32); ; v68 = i)
      {
        v72 = v143;
        v143(v71, v137, v8);
        v73 = v124;
        v72(v124, v141, v8);
        v74 = *(v134 + 24);
        if ((v74(v71, v73, v8) & 1) == 0 || (v147 = v74, v75 = *v136, (*v136)(v70, v71, v8), v76 = v122, v75(&v70[*(v122 + 48)], v73, v8), v77 = v69, v135 = *v132, (v135)(v69, v70, v76), v150 = *(v76 + 48), v78 = v68, v79 = v155, v75(v155, v69, v8), v80 = *v139, (*v139)(&v69[v150], v8), v129 = *v78, v129(v69, v70, v76), v81 = *(v76 + 48), v150 = *(v138 + 36), v142 = v75, v75(&v79[v150], &v69[v81], v8), v82 = v80, v80(v77, v8), v83 = v121, v143(v121, v141, v8), v84 = v133, ((v147)(v83, v133, v8, v134) & 1) == 0))
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v82(v137, v8);
        v85 = v83;
        v86 = v142;
        v142(v70, v85, v8);
        v143(&v70[*(v76 + 48)], v84, v8);
        (v135)(v77, v70, v76);
        v87 = *(v76 + 48);
        v88 = v153;
        v86(v153, v77, v8);
        v82(&v77[v87], v8);
        v129(v77, v70, v76);
        v89 = *(v76 + 48);
        v147 = *(v138 + 36);
        v86(&v147[v88], &v77[v89], v8);
        v135 = v82;
        v82(v77, v8);
        v90 = v143;
        v143(v154, v155, v8);
        v91 = v119;
        v90(v119, v88, v8);
        v92 = *v152;
        v93 = *v151;
        do
        {
          v94 = v154;
          v95 = v144;
          v92(v154, v91, v144, v146);
          v96 = v145;
          v93(v94, v95, v145);
          v97 = v95;
          v98 = v155;
          v99 = v96;
          v100 = v149;
          v93(v91, v97, v99);
          v101 = v94;
          v102 = v148;
        }

        while ((v148(v101, &v98[v150], v8, v100) & 1) == 0 && (v102(v91, &v147[v153], v8, v100) & 1) == 0);
        v103 = *v118;
        v104 = v138;
        (*v118)(v153, v138);
        v103(v98, v104);
        v105 = v102;
        v106 = v128;
        v107 = v142;
        v142(v128, v154, v8);
        v108 = v120;
        v107(v120, v91, v8);
        v109 = v133;
        if (v105(v108, v133, v8, v100))
        {
          if (v105(v117, v109, v8, v100))
          {
            v110 = v117;
            v135(v117, v8);
            v143(v110, v128, v8);
          }

          v106 = v128;
          v105 = v148;
          v100 = v149;
          if (v148(v128, v141, v8, v149))
          {
            break;
          }
        }

        v111 = v137;
        v112 = v106;
        v113 = v142;
        v142(v137, v112, v8);
        v114 = v141;
        if (v105(v111, v141, v8, v100))
        {
          v135(v114, v8);
          v113(v114, v108, v8);
        }

        else
        {
          v135(v108, v8);
        }

        v69 = v126;
        v70 = v125;
        v71 = v123;
      }

      v115 = v135;
      v135(v108, v8);
      v115(v106, v8);
      v115(v109, v8);
      v115(v141, v8);
      return (v142)(v116, v117, v8);
    }
  }
}