void DInitTailSpinConfigSubclassOptions.hash(into:)(int a1, __int16 a2)
{
  v2 = HIBYTE(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v2 & 1);
}

Swift::Int DInitTailSpinConfigSubclassOptions.hashValue.getter(__int16 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(HIBYTE(a1) & 1);
  return Hasher._finalize()();
}

Swift::Int sub_1001D96D4()
{
  v1 = v0[1];
  v2 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_1001D9734()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_1001D9774()
{
  v1 = v0[1];
  v2 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_1001D97D0()
{
  v1 = 0x6E655F7373616C63;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x756E5F7373616C63;
  }
}

uint64_t sub_1001D9844@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001DD714(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001D986C(uint64_t a1)
{
  v2 = sub_1001DC208();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D98A8(uint64_t a1)
{
  v2 = sub_1001DC208();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D9924@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1001DBDD0(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 1) = BYTE1(result) & 1;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t DInitTailSpinConfigClassOptions.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000039E8(&qword_1004ABBE0, &qword_1003F84B8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_10000E2A8(a1, a1[3]);
  sub_1001DC208();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11[1] = a3;
    v12 = 2;
    sub_1000039E8(&qword_1004ABBF0, &qword_1003F84C0);
    sub_1001DDAB8(&qword_1004ABBF8, sub_1001DC25C, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1001D9B88(void *a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return DInitTailSpinConfigClassOptions.encode(to:)(a1, v2 | *v1, *(v1 + 1));
}

uint64_t sub_1001D9BC8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (a2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1001DB880(v2 | *a1, *(a1 + 1), v3 | *a2, *(a2 + 1));
}

void DInitTailSpinConfigClassOptions.hash(into:)(int a1, __int16 a2, uint64_t a3)
{
  v4 = HIBYTE(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4 & 1);
  if (a3)
  {
    Hasher._combine(_:)(1u);
    v5 = *(a3 + 16);
    Hasher._combine(_:)(v5);
    if (v5)
    {
      v6 = (a3 + 33);
      do
      {
        v7 = *v6;
        Hasher._combine(_:)(*(v6 - 1));
        Hasher._combine(_:)(v7);
        v6 += 2;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int DInitTailSpinConfigClassOptions.hashValue.getter(__int16 a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  DInitTailSpinConfigClassOptions.hash(into:)(v5, a1 & 0x1FF, a2);
  return Hasher._finalize()();
}

Swift::Int sub_1001D9CE0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  Hasher.init(_seed:)();
  if (v2)
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  DInitTailSpinConfigClassOptions.hash(into:)(v6, v4 | v1, v3);
  return Hasher._finalize()();
}

void sub_1001D9D48(int a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  DInitTailSpinConfigClassOptions.hash(into:)(a1, v2 | *v1, *(v1 + 1));
}

Swift::Int sub_1001D9D68()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  Hasher.init(_seed:)();
  if (v2)
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  DInitTailSpinConfigClassOptions.hash(into:)(v6, v4 | v1, v3);
  return Hasher._finalize()();
}

uint64_t DInitTailSpinConfigOptions.full_sampling_period_set.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t DInitTailSpinConfigOptions.oncore_sampling_period_set.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t Config.Tailspin.oncoreSamplingPeriodSet.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t Config.Cryptex.Cache.retainedCryptexes.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

unint64_t sub_1001D9E4C()
{
  v1 = 0x735F726566667562;
  if (*v0 != 2)
  {
    v1 = 0x6F635F7373616C63;
  }

  v2 = 0xD000000000000018;
  if (*v0)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001D9EE4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001DD840(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001D9F0C(uint64_t a1)
{
  v2 = sub_1001DC2B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D9F48(uint64_t a1)
{
  v2 = sub_1001DC2B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void __swiftcall DInitTailSpinConfigOptions.init()(DarwinInit::DInitTailSpinConfigOptions *__return_ptr retstr)
{
  retstr->full_sampling_period_set.value = 0;
  retstr->full_sampling_period_set.is_nil = 1;
  *(&retstr->oncore_sampling_period_set.value + 7) = 0;
  BYTE6(retstr->buffer_size_set.value) = 1;
  *(&retstr->class_configs.value._rawValue + 5) = 0;
  BYTE4(retstr[1].full_sampling_period_set.value) = 1;
  *(&retstr[1].oncore_sampling_period_set.value + 3) = 0;
}

void __swiftcall DInitTailSpinConfigOptions.init(full_sampling_period_set:oncore_sampling_period_set:buffer_size_set:class_configs:)(DarwinInit::DInitTailSpinConfigOptions *__return_ptr retstr, Swift::UInt64_optional full_sampling_period_set, Swift::UInt64_optional oncore_sampling_period_set, Swift::Int_optional buffer_size_set, Swift::OpaquePointer_optional class_configs)
{
  retstr->full_sampling_period_set.value = full_sampling_period_set.value;
  retstr->full_sampling_period_set.is_nil = full_sampling_period_set.is_nil;
  *(&retstr->oncore_sampling_period_set.value + 7) = oncore_sampling_period_set.value;
  BYTE6(retstr->buffer_size_set.value) = oncore_sampling_period_set.is_nil;
  *(&retstr->class_configs.value._rawValue + 5) = buffer_size_set.value;
  BYTE4(retstr[1].full_sampling_period_set.value) = buffer_size_set.is_nil;
  *(&retstr[1].oncore_sampling_period_set.value + 3) = class_configs.value._rawValue;
}

double DInitTailSpinConfigOptions.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1001DBB38(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t DInitTailSpinConfigOptions.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004ABC08, &qword_1003F84C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000E2A8(a1, a1[3]);
  sub_1001DC2B0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = *(v3 + 48);
    v10[15] = 3;
    sub_1000039E8(&qword_1004ABC18, &qword_1003F84D0);
    sub_1001DC304(&qword_1004ABC20, sub_1001DC37C, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

BOOL sub_1001DA290(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s10DarwinInit26DInitTailSpinConfigOptionsV2eeoiySbAC_ACtFZ_0(v5, v7);
}

void DInitTailSpinConfigOptions.hash(into:)(uint64_t a1)
{
  v2 = v1;
  if (*(v2 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = *v2;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v4);
  }

  if (*(v2 + 24) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v5 = *(v2 + 16);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v5);
  }

  if (*(v2 + 40) != 1)
  {
    v7 = *(v2 + 32);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v7);
    v6 = *(v2 + 48);
    if (v6)
    {
      goto LABEL_9;
    }

LABEL_13:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(0);
  v6 = *(v2 + 48);
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_9:
  Hasher._combine(_:)(1u);

  sub_1001D2C2C(a1, v6);
}

Swift::Int DInitTailSpinConfigOptions.hashValue.getter()
{
  Hasher.init(_seed:)();
  DInitTailSpinConfigOptions.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001DA424()
{
  Hasher.init(_seed:)();
  DInitTailSpinConfigOptions.hash(into:)(v1);
  return Hasher._finalize()();
}

__n128 DInitTailSpinConfig.init(configuration_options:tailspin_enabled:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 48);
  *a3 = 50;
  v4 = *(a1 + 16);
  *(a3 + 8) = *a1;
  *(a3 + 24) = v4;
  result = *(a1 + 32);
  *(a3 + 40) = result;
  *(a3 + 56) = v3;
  *(a3 + 64) = a2;
  return result;
}

DarwinInit::DInitTailSpinConfig::CodingKeys_optional __swiftcall DInitTailSpinConfig.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1004859C0, v2);

  if (v3 == 1)
  {
    v4.value = DarwinInit_DInitTailSpinConfig_CodingKeys_tailspin_enabled;
  }

  else
  {
    v4.value = DarwinInit_DInitTailSpinConfig_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t Config.TailspinVersionOneKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1001DA548(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0xD000000000000015;
  }

  if (v2)
  {
    v4 = "cryptex-cache-invalidation-id";
  }

  else
  {
    v4 = "configuration_options";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 0xD000000000000015;
  }

  if (*a2)
  {
    v7 = "configuration_options";
  }

  else
  {
    v7 = "cryptex-cache-invalidation-id";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1001DA5F8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001DA67C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1001DA6EC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001DA76C@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1004859C0, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1001DA7CC(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xD000000000000015;
  }

  if (*v1)
  {
    v3 = "configuration_options";
  }

  else
  {
    v3 = "cryptex-cache-invalidation-id";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_1001DA810()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1001DA850@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1004859C0, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1001DA8B4(uint64_t a1)
{
  v2 = sub_1001DC4B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001DA8F0(uint64_t a1)
{
  v2 = sub_1001DC4B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 DInitTailSpinConfig.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1001DB920(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t DInitTailSpinConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004ABC38, &qword_1003F84E0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_10000E2A8(a1, a1[3]);
  sub_1001DC4B0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + 24);
  v12 = *(v3 + 8);
  v13 = v9;
  v14 = *(v3 + 40);
  v15 = *(v3 + 56);
  v11[15] = 0;
  sub_1001DC504();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1001DAB48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return _s10DarwinInit19DInitTailSpinConfigV2eeoiySbAC_ACtFZ_0(v7, v9) & 1;
}

void DInitTailSpinConfig.hash(into:)(uint64_t a1)
{
  Hasher._combine(_:)(*v1);
  if (*(v1 + 56) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    DInitTailSpinConfigOptions.hash(into:)(a1);
  }

  Hasher._combine(_:)(*(v1 + 64) & 1);
}

Swift::Int DInitTailSpinConfig.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  v1 = *(v0 + 56);
  if (v1 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = *(v0 + 48);
    v3 = *(v0 + 40);
    v4 = *(v0 + 32);
    v5 = *(v0 + 24);
    v6 = *(v0 + 16);
    v8[9] = *(v0 + 8);
    v9 = v6 & 1;
    v10 = v5;
    v11 = v4 & 1;
    v12 = v3;
    v13 = v2 & 1;
    v14 = v1;
    Hasher._combine(_:)(1u);
    DInitTailSpinConfigOptions.hash(into:)(v8);
  }

  Hasher._combine(_:)(*(v0 + 64) & 1);
  return Hasher._finalize()();
}

Swift::Int sub_1001DAD34()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v9 = *(v0 + 64);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  if (v7 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v11[9] = v2;
    v12 = v4 & 1;
    v13 = v3;
    v14 = v6 & 1;
    v15 = v5;
    v16 = v8 & 1;
    v17 = v7;
    Hasher._combine(_:)(1u);
    DInitTailSpinConfigOptions.hash(into:)(v11);
  }

  Hasher._combine(_:)(v9);
  return Hasher._finalize()();
}

void sub_1001DAE10(uint64_t a1)
{
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  Hasher._combine(_:)(*v1);
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    DInitTailSpinConfigOptions.hash(into:)(a1);
  }

  Hasher._combine(_:)(v4);
}

Swift::Int sub_1001DAED8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v9 = *(v0 + 64);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  if (v7 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v11[9] = v2;
    v12 = v4 & 1;
    v13 = v3;
    v14 = v6 & 1;
    v15 = v5;
    v16 = v8 & 1;
    v17 = v7;
    Hasher._combine(_:)(1u);
    DInitTailSpinConfigOptions.hash(into:)(v11);
  }

  Hasher._combine(_:)(v9);
  return Hasher._finalize()();
}

Swift::Void __swiftcall DInitTailSpinConfig.processConfig(tailspin_config:)(Swift::OpaquePointer *tailspin_config)
{
  v2 = v1;
  rawValue = tailspin_config->_rawValue;
  sub_1001DC558(tailspin_config->_rawValue, *(v1 + 64));
  if (*(v1 + 56) == 1)
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000270B4(v5, qword_1004B00F8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Applying default tailspin configuration.", v8, 2u);
    }

    v9 = *v2;

    sub_1001DC6C4(rawValue, v9);
  }

  else
  {
    DInitTailSpinConfigOptions.processOptions(tailspin_config:)(tailspin_config);
  }
}

Swift::Void __swiftcall DInitTailSpinConfigOptions.processOptions(tailspin_config:)(Swift::OpaquePointer *tailspin_config)
{
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000270B4(v3, qword_1004B00F8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Applying custom tailspin configuration.", v6, 2u);
  }

  if (*(v1 + 8))
  {
    if (*(v1 + 24))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = *v1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v9, v10, "Applying tailspin full_sampling_period_set configuration value %llu", v11, 0xCu);
    }

    sub_1001DCC9C(tailspin_config->_rawValue, v8);
    if (*(v1 + 24))
    {
LABEL_7:
      if (*(v1 + 40))
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }
  }

  v12 = *(v1 + 16);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "Applying tailspin oncore_sampling_period_set configuration value %llu", v15, 0xCu);
  }

  sub_1001DCB30(tailspin_config->_rawValue, v12);
  if (*(v1 + 40))
  {
LABEL_8:
    v7 = *(v1 + 48);
    if (!v7)
    {
      return;
    }

    goto LABEL_19;
  }

LABEL_16:
  v16 = *(v1 + 32);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v17, v18, "Applying tailspin buffer_size_set configuration value %ld", v19, 0xCu);
  }

  sub_1001DC6C4(tailspin_config->_rawValue, v16);
  v7 = *(v1 + 48);
  if (v7)
  {
LABEL_19:
    v39 = *(v7 + 16);
    if (v39)
    {
      rawValue = tailspin_config->_rawValue;
      v21 = 0;
      v38 = v7 + 32;
      do
      {
        v22 = (v38 + 16 * v21);
        v23 = *v22;
        v24 = v22[1];
        v25 = *(v22 + 1);
        swift_bridgeObjectRetain_n();
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 16777728;
          *(v28 + 4) = v23;
          *(v28 + 5) = 1024;
          *(v28 + 7) = v24;

          _os_log_impl(&_mh_execute_header, v26, v27, "Setting tailspin kdbg_filter_class %hhu to %{BOOL}d", v28, 0xBu);
        }

        else
        {
        }

        sub_1001DC830(rawValue, v23, v24);
        if (v25)
        {
          v29 = *(v25 + 16);
          if (v29)
          {
            v37 = v21;

            v30 = (v25 + 33);
            do
            {
              v31 = *(v30 - 1);
              v32 = *v30;

              v33 = Logger.logObject.getter();
              v34 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v33, v34))
              {
                v35 = rawValue;
                v36 = swift_slowAlloc();
                *v36 = 16777984;
                *(v36 + 4) = v23;

                *(v36 + 5) = 256;
                *(v36 + 7) = v31;
                *(v36 + 8) = 1024;
                *(v36 + 10) = v32;
                _os_log_impl(&_mh_execute_header, v33, v34, "Setting tailspin kdbg_filter_subclass for class:%hhu, subclass:%hhu to %{BOOL}d", v36, 0xEu);
                rawValue = v35;
              }

              else
              {
              }

              sub_1001DC9AC(rawValue, v23, v31, v32);
              v30 += 2;
              --v29;
            }

            while (v29);

            v21 = v37;
          }
        }

        ++v21;
      }

      while (v21 != v39);
    }
  }
}

uint64_t _s10DarwinInit19DInitTailSpinConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v30 = v2;
  v31 = v3;
  v4 = *(a1 + 8);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9 = *(a2 + 8);
  v8 = *(a2 + 16);
  v10 = *(a2 + 32);
  v11 = *(a2 + 48);
  v12 = *(a2 + 56);
  if (v7 != 1)
  {
    if (v12 != 1)
    {
      if (*(a1 + 16))
      {
        if ((v8 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else if (v8 & 1 | (v4 != v9))
      {
        goto LABEL_8;
      }

      if (*(a1 + 32))
      {
        if ((v10 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else if (v10 & 1 | (*(a1 + 24) != *(a2 + 24)))
      {
        goto LABEL_8;
      }

      if (v5)
      {
        if ((v11 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else if (v11 & 1 | (v6 != *(a2 + 40)))
      {
        goto LABEL_8;
      }

      if (v7)
      {
        if (v12)
        {
          v20 = a1;
          v21 = a2;
          v22 = sub_10024DF64(*(a1 + 56), *(a2 + 56));
          a2 = v21;
          v23 = v22;
          a1 = v20;
          if (v23)
          {
            goto LABEL_4;
          }
        }
      }

      else if (!v12)
      {
        goto LABEL_4;
      }

LABEL_8:
      v13 = 0;
      return v13 & 1;
    }

LABEL_7:
    v15 = a2;
    v27 = *(a2 + 40);
    v28 = *(a2 + 48);
    v24 = *(a2 + 24);
    v25 = *(a2 + 32);
    v16 = *(a1 + 24);
    v17 = *(a1 + 32);
    v26 = *(a2 + 56);
    v18 = *(a1 + 56);
    v19 = *(a1 + 16);
    sub_1001DD9C4(a1, v29);
    sub_1001DD9C4(v15, v29);
    sub_1001DD9FC(v4, v19, v16, v17, v6, v5, v18);
    sub_1001DD9FC(v9, v8, v24, v25, v27, v28, v26);
    goto LABEL_8;
  }

  if (v12 != 1)
  {
    goto LABEL_7;
  }

LABEL_4:
  v13 = *(a1 + 64) ^ *(a2 + 64) ^ 1;
  return v13 & 1;
}

BOOL _s10DarwinInit26DInitTailSpinConfigOptionsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v4 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a1 + 48);
  v6 = *(a2 + 48);
  if (v5)
  {
    return v6 && (sub_10024DF64(v5, v6) & 1) != 0;
  }

  return !v6;
}

uint64_t sub_1001DB880(int a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  result = 0;
  if (a1 == a3 && (((a1 ^ a3) >> 8) & 1) == 0)
  {
    if (a2)
    {
      if (a4)
      {
        v6 = *(a2 + 16);
        if (v6 == *(a4 + 16))
        {
          if (v6 && a2 != a4)
          {
            v7 = (a2 + 33);
            v8 = (a4 + 33);
            result = 1;
            while (*(v7 - 1) == *(v8 - 1) && ((*v7 ^ *v8) & 1) == 0)
            {
              v7 += 2;
              v8 += 2;
              if (!--v6)
              {
                return result;
              }
            }

            return 0;
          }

          return 1;
        }
      }
    }

    else if (!a4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1001DB920@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004ABCD0, &qword_1003F8D98);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_1001DC4B0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  v30 = 0;
  sub_1001DDA10();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v9 = v23;
  v10 = v24;
  v18 = v25;
  v19 = v26;
  v20 = v27;
  v21 = v28;
  v22 = v29;
  LOBYTE(v23) = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = sub_100003C3C(a1);
  *a2 = 50;
  *(a2 + 8) = v9;
  v13 = v18;
  v14 = v19;
  *(a2 + 16) = v10;
  *(a2 + 24) = v13;
  v15 = v20;
  v16 = v21;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;
  v17 = v22;
  *(a2 + 48) = v16;
  *(a2 + 56) = v17;
  *(a2 + 64) = v11 & 1;
  return result;
}

uint64_t sub_1001DBB38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004ABCE0, &qword_1003F8DA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_1001DC2B0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  v27 = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11 = v10;
  v12 = v9;
  v26 = 1;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v23 = v14;
  v21 = v13;
  v25 = 2;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20 = v16;
  v19 = v15;
  sub_1000039E8(&qword_1004ABC18, &qword_1003F84D0);
  v24 = 3;
  sub_1001DC304(&qword_1004ABCE8, sub_1001DDA64, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v17 = v22;
  result = sub_100003C3C(a1);
  *a2 = v12;
  *(a2 + 8) = v11 & 1;
  *(a2 + 16) = v21;
  *(a2 + 24) = v23 & 1;
  *(a2 + 32) = v19;
  *(a2 + 40) = v20 & 1;
  *(a2 + 48) = v17;
  return result;
}

uint64_t sub_1001DBDD0(void *a1)
{
  v3 = sub_1000039E8(&qword_1004ABCF8, &qword_1003F8DA8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-v5];
  sub_10000E2A8(a1, a1[3]);
  sub_1001DC208();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100003C3C(a1);
  }

  v13 = 0;
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = 1;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_1000039E8(&qword_1004ABBF0, &qword_1003F84C0);
  v11[15] = 2;
  sub_1001DDAB8(&qword_1004ABD00, sub_1001DDB30, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100003C3C(a1);
  if (v9)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 0xFFFFFF00 | v7;
}

uint64_t sub_1001DC004(void *a1)
{
  v3 = sub_1000039E8(&qword_1004ABD10, &unk_1003F8DB0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-v5];
  sub_10000E2A8(a1, a1[3]);
  sub_1001DC1B4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100003C3C(a1);
  }

  v11[15] = 0;
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  v11[14] = 1;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100003C3C(a1);
  if (v8)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 0xFFFFFF00 | v7;
}

unint64_t sub_1001DC1B4()
{
  result = qword_1004ABBD8;
  if (!qword_1004ABBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABBD8);
  }

  return result;
}

unint64_t sub_1001DC208()
{
  result = qword_1004ABBE8;
  if (!qword_1004ABBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABBE8);
  }

  return result;
}

unint64_t sub_1001DC25C()
{
  result = qword_1004ABC00;
  if (!qword_1004ABC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABC00);
  }

  return result;
}

unint64_t sub_1001DC2B0()
{
  result = qword_1004ABC10;
  if (!qword_1004ABC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABC10);
  }

  return result;
}

uint64_t sub_1001DC304(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003A94(&qword_1004ABC18, &qword_1003F84D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001DC37C()
{
  result = qword_1004ABC28;
  if (!qword_1004ABC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABC28);
  }

  return result;
}

uint64_t sub_1001DC3D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004ABC30, &qword_1003F84D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001DC440(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004ABC30, &qword_1003F84D8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001DC4B0()
{
  result = qword_1004ABC40;
  if (!qword_1004ABC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABC40);
  }

  return result;
}

unint64_t sub_1001DC504()
{
  result = qword_1004ABC48;
  if (!qword_1004ABC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABC48);
  }

  return result;
}

void sub_1001DC558(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = off_1004C3450;
  v11 = off_1004C3450;
  if (!off_1004C3450)
  {
    v5 = sub_1001DDB98();
    v9[3] = dlsym(v5, "tailspin_enabled_set");
    off_1004C3450 = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v4)
  {
    v4(a1, a2);
  }

  else
  {
    v6 = +[NSAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"void shim_tailspin_enabled_set(tailspin_config_t, _Bool)"];
    [v6 handleFailureInFunction:v7 file:@"BridgingHeader.h" lineNumber:77 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1001DC6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001DC6C4(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = off_1004C3460;
  v11 = off_1004C3460;
  if (!off_1004C3460)
  {
    v5 = sub_1001DDB98();
    v9[3] = dlsym(v5, "tailspin_buffer_size_set");
    off_1004C3460 = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v4)
  {
    v4(a1, a2);
  }

  else
  {
    v6 = +[NSAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"void shim_tailspin_buffer_size_set(tailspin_config_t, size_t)"];
    [v6 handleFailureInFunction:v7 file:@"BridgingHeader.h" lineNumber:79 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1001DC818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001DC830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v6 = off_1004C3468;
  v13 = off_1004C3468;
  if (!off_1004C3468)
  {
    v7 = sub_1001DDB98();
    v11[3] = dlsym(v7, "tailspin_kdbg_filter_class_set");
    off_1004C3468 = v11[3];
    v6 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (v6)
  {
    v6(a1, a2, a3);
  }

  else
  {
    v8 = +[NSAssertionHandler currentHandler];
    v9 = [NSString stringWithUTF8String:"void shim_tailspin_kdbg_filter_class_set(tailspin_config_t, uint8_t, _Bool)"];
    [v8 handleFailureInFunction:v9 file:@"BridgingHeader.h" lineNumber:80 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1001DC994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001DC9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v8 = off_1004C3470;
  v15 = off_1004C3470;
  if (!off_1004C3470)
  {
    v9 = sub_1001DDB98();
    v13[3] = dlsym(v9, "tailspin_kdbg_filter_subclass_set");
    off_1004C3470 = v13[3];
    v8 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (v8)
  {
    v8(a1, a2, a3, a4);
  }

  else
  {
    v10 = +[NSAssertionHandler currentHandler];
    v11 = [NSString stringWithUTF8String:"void shim_tailspin_kdbg_filter_subclass_set(tailspin_config_t, uint8_t, uint8_t, _Bool)"];
    [v10 handleFailureInFunction:v11 file:@"BridgingHeader.h" lineNumber:81 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1001DCB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001DCB30(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = off_1004C3478;
  v11 = off_1004C3478;
  if (!off_1004C3478)
  {
    v5 = sub_1001DDB98();
    v9[3] = dlsym(v5, "tailspin_oncore_sampling_period_set");
    off_1004C3478 = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v4)
  {
    v4(a1, a2);
  }

  else
  {
    v6 = +[NSAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"void shim_tailspin_oncore_sampling_period_set(tailspin_config_t, uint64_t)"];
    [v6 handleFailureInFunction:v7 file:@"BridgingHeader.h" lineNumber:78 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1001DCC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001DCC9C(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = off_1004C3480;
  v11 = off_1004C3480;
  if (!off_1004C3480)
  {
    v5 = sub_1001DDB98();
    v9[3] = dlsym(v5, "tailspin_full_sampling_period_set");
    off_1004C3480 = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v4)
  {
    v4(a1, a2);
  }

  else
  {
    v6 = +[NSAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"void shim_tailspin_full_sampling_period_set(tailspin_config_t, uint64_t)"];
    [v6 handleFailureInFunction:v7 file:@"BridgingHeader.h" lineNumber:76 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1001DCDF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t sub_1001DCE0C()
{
  result = qword_1004ABC50;
  if (!qword_1004ABC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABC50);
  }

  return result;
}

unint64_t sub_1001DCE64()
{
  result = qword_1004ABC58;
  if (!qword_1004ABC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABC58);
  }

  return result;
}

unint64_t sub_1001DCEBC()
{
  result = qword_1004ABC60;
  if (!qword_1004ABC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABC60);
  }

  return result;
}

unint64_t sub_1001DCF14()
{
  result = qword_1004ABC68;
  if (!qword_1004ABC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABC68);
  }

  return result;
}

unint64_t sub_1001DCF6C()
{
  result = qword_1004ABC70;
  if (!qword_1004ABC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABC70);
  }

  return result;
}

unint64_t sub_1001DCFC4()
{
  result = qword_1004ABC78;
  if (!qword_1004ABC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABC78);
  }

  return result;
}

unint64_t sub_1001DD01C()
{
  result = qword_1004ABC80;
  if (!qword_1004ABC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABC80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DInitTailSpinConfigSubclassOptions(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DInitTailSpinConfigSubclassOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1001DD1F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1001DD24C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

__n128 sub_1001DD2BC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001DD2E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 65))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 56);
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

uint64_t sub_1001DD348(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1001DD400()
{
  result = qword_1004ABC88;
  if (!qword_1004ABC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABC88);
  }

  return result;
}

unint64_t sub_1001DD458()
{
  result = qword_1004ABC90;
  if (!qword_1004ABC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABC90);
  }

  return result;
}

unint64_t sub_1001DD4B0()
{
  result = qword_1004ABC98;
  if (!qword_1004ABC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABC98);
  }

  return result;
}

unint64_t sub_1001DD508()
{
  result = qword_1004ABCA0;
  if (!qword_1004ABCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABCA0);
  }

  return result;
}

unint64_t sub_1001DD560()
{
  result = qword_1004ABCA8;
  if (!qword_1004ABCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABCA8);
  }

  return result;
}

unint64_t sub_1001DD5B8()
{
  result = qword_1004ABCB0;
  if (!qword_1004ABCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABCB0);
  }

  return result;
}

unint64_t sub_1001DD610()
{
  result = qword_1004ABCB8;
  if (!qword_1004ABCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABCB8);
  }

  return result;
}

unint64_t sub_1001DD668()
{
  result = qword_1004ABCC0;
  if (!qword_1004ABCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABCC0);
  }

  return result;
}

unint64_t sub_1001DD6C0()
{
  result = qword_1004ABCC8;
  if (!qword_1004ABCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABCC8);
  }

  return result;
}

uint64_t sub_1001DD714(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756E5F7373616C63 && a2 == 0xEC0000007265626DLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E655F7373616C63 && a2 == 0xED000064656C6261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010043D690 == a2)
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

uint64_t sub_1001DD840(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000018 && 0x800000010043D610 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000010043D630 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x735F726566667562 && a2 == 0xEF7465735F657A69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F635F7373616C63 && a2 == 0xED0000736769666ELL)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1001DD9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7 != 1)
  {
  }

  return result;
}

unint64_t sub_1001DDA10()
{
  result = qword_1004ABCD8;
  if (!qword_1004ABCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABCD8);
  }

  return result;
}

unint64_t sub_1001DDA64()
{
  result = qword_1004ABCF0;
  if (!qword_1004ABCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABCF0);
  }

  return result;
}

uint64_t sub_1001DDAB8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003A94(&qword_1004ABBF0, &qword_1003F84C0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001DDB30()
{
  result = qword_1004ABD08;
  if (!qword_1004ABD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABD08);
  }

  return result;
}

void *sub_1001DDB98()
{
  v4[0] = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v0 = qword_1004C3458;
  v10 = qword_1004C3458;
  if (!qword_1004C3458)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1001DDD4C;
    v4[4] = &unk_100484AE8;
    v5 = &v7;
    v6 = v4;
    v11 = *off_10048C280;
    v12 = 0;
    v8[3] = _sl_dlopen();
    qword_1004C3458 = *(v5[1] + 24);
    v0 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v0)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"void *libtailspinLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"BridgingHeader.h" lineNumber:73 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void sub_1001DDD2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001DDD4C(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1004C3458 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1001DDE48(uint64_t a1, const char *a2, void *a3)
{
  v6 = sub_1001DDB98();
  result = dlsym(v6, a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  *a3 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1001DDEA4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7573746174;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x79726F74636166;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6F6C76616964;
    }

    else
    {
      v4 = 0x7573746174;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x79726F74636166;
  if (a2 != 2)
  {
    v8 = 1701736302;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 0x6F6C76616964;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_1001DDFCC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xEC00000079646165;
  v4 = 0x4365727574616546;
  if (a1 == 2)
  {
    v4 = 0x5277656976657250;
  }

  else
  {
    v3 = 0xEF6574656C706D6FLL;
  }

  v5 = 0xD000000000000010;
  v6 = 0x800000010043D000;
  if (a1)
  {
    v5 = 0x706D6F4365646F43;
    v6 = 0xEC0000006574656CLL;
  }

  if (a1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v3;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x5277656976657250;
    }

    else
    {
      v11 = 0x4365727574616546;
    }

    if (a2 == 2)
    {
      v10 = 0xEC00000079646165;
    }

    else
    {
      v10 = 0xEF6574656C706D6FLL;
    }

    if (v7 != v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0x706D6F4365646F43;
    }

    else
    {
      v9 = 0xD000000000000010;
    }

    if (a2)
    {
      v10 = 0xEC0000006574656CLL;
    }

    else
    {
      v10 = 0x800000010043D000;
    }

    if (v7 != v9)
    {
      goto LABEL_30;
    }
  }

  if (v8 != v10)
  {
LABEL_30:
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

uint64_t sub_1001DE140(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7972726163;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v2 == 2)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xED000079786F7250;
    }

    else
    {
      v3 = 0xE800000000000000;
    }

    v4 = 0x72656D6F74737563;
  }

  v5 = 0xE800000000000000;
  v6 = 0xE500000000000000;
  v7 = 0x7972726163;
  if (a2 != 2)
  {
    v7 = 1701736302;
    v6 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 0xED000079786F7250;
  }

  if (a2 <= 1u)
  {
    v8 = 0x72656D6F74737563;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v3 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_1001DE260(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
LABEL_28:
    v18 = 1;
    return v18 & 1;
  }

  v9 = 0;
  v10 = a4 & 0xFFFFFFFFFFFFFFLL;
  v11 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while (1)
  {
    if ((a4 & 0x1000000000000000) != 0)
    {
      v14 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      v16 = v15;
      goto LABEL_15;
    }

    if ((a4 & 0x2000000000000000) != 0)
    {
      v21[0] = a3;
      v21[1] = v10;
      v13 = v21 + v9;
    }

    else
    {
      v12 = v11;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v12 = _StringObject.sharedUTF8.getter();
      }

      v13 = (v12 + v9);
    }

    v14 = *v13;
    if ((*v13 & 0x80000000) == 0)
    {
LABEL_14:
      v16 = 1;
      goto LABEL_15;
    }

    v19 = (__clz(v14 ^ 0xFF) - 24);
    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v14 = ((v14 & 0xF) << 12) | ((v13[1] & 0x3F) << 6) | v13[2] & 0x3F;
        v16 = 3;
      }

      else
      {
        v14 = ((v14 & 0xF) << 18) | ((v13[1] & 0x3F) << 12) | ((v13[2] & 0x3F) << 6) | v13[3] & 0x3F;
        v16 = 4;
      }
    }

    else
    {
      if (v19 == 1)
      {
        goto LABEL_14;
      }

      v14 = v13[1] & 0x3F | ((v14 & 0x1F) << 6);
      v16 = 2;
    }

LABEL_15:
    LODWORD(v21[0]) = v14;
    v17 = a1(v21);
    if (v4)
    {
      return v18 & 1;
    }

    if ((v17 & 1) == 0)
    {
      break;
    }

    v9 += v16;
    if (v9 >= v5)
    {
      goto LABEL_28;
    }
  }

  v18 = 0;
  return v18 & 1;
}

DarwinInit::ConfigSecurityPolicy_optional __swiftcall ConfigSecurityPolicy.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100485A10, v3);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t ConfigSecurityPolicy.rawValue.getter()
{
  v1 = 0x7972726163;
  if (*v0 != 2)
  {
    v1 = 1701736302;
  }

  if (*v0 <= 1u)
  {
    return 0x72656D6F74737563;
  }

  else
  {
    return v1;
  }
}

Swift::Int sub_1001DE4E4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001DE594(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1001DE630()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1001DE6E8(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0xE500000000000000;
  v4 = 0x7972726163;
  if (*v1 != 2)
  {
    v4 = 1701736302;
    v3 = 0xE400000000000000;
  }

  if (*v1)
  {
    v2 = 0xED000079786F7250;
  }

  if (*v1 <= 1u)
  {
    v5 = 0x72656D6F74737563;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v3;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t sub_1001DE790@<X0>(Swift::Int *a1@<X0>, DarwinInit::PrivateCloudOSValidatorVersion_optional *a2@<X8>)
{
  result = _s10DarwinInit30PrivateCloudOSValidatorVersionO8rawValueACSgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PrivateCloudOSValidator.validate()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = (*(v1 + 56))();
  v7 = *(v4 + 80);
  if (v6 < v7(v5, v4))
  {
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(97);
    v8._countAndFlagsBits = 0xD00000000000005FLL;
    v8._object = 0x800000010043ED70;
    String.append(_:)(v8);
    *__src = v7(v5, v4);
    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);
LABEL_59:

    v79 = __dst[0];
    v80 = __dst[1];
    sub_1001E941C();
    v81 = swift_allocError();
    *v82 = v79;
    v82[1] = v80;
    v95 = v81;
    swift_willThrow();
    return;
  }

  v10 = 0;
  v11 = v4 + 16;
  do
  {
    v15 = *(&off_100485168 + v10++ + 32);
    switch(v15)
    {
      case 1:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v36 = __dst[1];

        sub_1001D711C(__dst);
        (*(v4 + 144))(v36, v5, v4);
        goto LABEL_47;
      case 2:
        v23 = v3;
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v24 = __dst[2];
        v83 = v11;
        v25 = v5;
        v26 = __dst[3];
        v27 = __dst[4];
        v28 = __dst[5];
        v88[0] = __dst[2];
        v88[1] = __dst[3];
        v88[2] = __dst[4];
        v88[3] = __dst[5];
        v89 = __dst[6];
        sub_1001D7A24(__dst[2], __dst[3], __dst[4], __dst[5]);
        sub_1001D711C(__dst);
        (*(v4 + 152))(v88, v25, v4);
        v29 = v26;
        v5 = v25;
        v11 = v83;
        v30 = v27;
        v3 = v23;
        sub_1001D71F4(v24, v29, v30, v28);
        break;
      case 3:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v33 = __dst[7];
        v34 = __dst[8];
        sub_1001D6F74(__dst[7], __dst[8]);
        sub_1001D711C(__dst);
        (*(v4 + 160))(v33, v34, v5, v4);
        sub_1001D6F88(v33, v34);
        break;
      case 4:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v90[2] = *&__src[104];
        v90[3] = *&__src[120];
        v90[4] = *&__src[136];
        v90[5] = *&__src[152];
        v90[0] = *&__src[72];
        v90[1] = *&__src[88];
        v12 = &qword_1004AB940;
        v13 = &qword_1003F8E20;
        sub_100013E54(&__dst[9], v85, &qword_1004AB940, &qword_1003F8E20);
        sub_1001D711C(__dst);
        (*(v4 + 168))(v90, v5, v4);
        v14 = &__dst[9];
        goto LABEL_5;
      case 5:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v46 = __dst[21];

        sub_1001D711C(__dst);
        (*(v4 + 176))(v46, v5, v4);
        goto LABEL_47;
      case 6:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v49 = __dst[22];

        sub_1001D711C(__dst);
        (*(v4 + 184))(v49, v5, v4);
        goto LABEL_47;
      case 7:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v35 = __dst[23];

        sub_1001D711C(__dst);
        (*(v4 + 192))(v35, v5, v4);
        goto LABEL_47;
      case 8:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        (*(v4 + 200))(LOBYTE(__dst[24]), v5, v4);
        break;
      case 9:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v91[4] = *&__src[264];
        v91[5] = *&__src[280];
        v91[6] = *&__src[296];
        v92 = *&__src[312];
        v91[0] = *&__src[200];
        v91[1] = *&__src[216];
        v91[2] = *&__src[232];
        v91[3] = *&__src[248];
        v12 = &qword_1004AB948;
        v13 = &qword_1003F7BD8;
        sub_100013E54(&__dst[25], v85, &qword_1004AB948, &qword_1003F7BD8);
        sub_1001D711C(__dst);
        (*(v4 + 208))(v91, v5, v4);
        v14 = &__dst[25];
        goto LABEL_5;
      case 10:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        (*(v4 + 216))(LOWORD(__dst[40]), v5, v4);
        break;
      case 11:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v22 = __dst[41];

        sub_1001D711C(__dst);
        (*(v4 + 224))(v22, v5, v4);
        goto LABEL_47;
      case 12:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        (*(v4 + 232))(__dst[42], LOBYTE(__dst[43]), v5, v4);
        break;
      case 13:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v93[2] = *&__src[384];
        v93[3] = *&__src[400];
        v94 = __src[416];
        v93[0] = *&__src[352];
        v93[1] = *&__src[368];
        v12 = &qword_1004AB950;
        v13 = &unk_1003F8E10;
        sub_100013E54(&__dst[44], v85, &qword_1004AB950, &unk_1003F8E10);
        sub_1001D711C(__dst);
        (*(v4 + 448))(v93, v5, v4);
        v14 = &__dst[44];
LABEL_5:
        sub_100013F2C(v14, v12, v13);
        break;
      case 14:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v21 = __dst[53];

        sub_1001D711C(__dst);
        (*(v4 + 456))(v21, v5, v4);
        goto LABEL_47;
      case 15:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v31 = __dst[54];
        v32 = __dst[55];

        sub_1001D711C(__dst);
        (*(v4 + 240))(v31, v32, v5, v4);
        goto LABEL_47;
      case 16:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v19 = __dst[56];
        v20 = __dst[57];

        sub_1001D711C(__dst);
        (*(v4 + 248))(v19, v20, v5, v4);
        goto LABEL_47;
      case 17:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v41 = __dst[58];
        v42 = __dst[59];

        sub_1001D711C(__dst);
        (*(v4 + 256))(v41, v42, v5, v4);
        goto LABEL_47;
      case 18:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v50 = __dst[60];
        v51 = __dst[61];

        sub_1001D711C(__dst);
        (*(v4 + 264))(v50, v51, v5, v4);
        goto LABEL_47;
      case 19:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v56 = __dst[62];
        v57 = __dst[63];

        sub_1001D711C(__dst);
        (*(v4 + 272))(v56, v57, v5, v4);
        goto LABEL_47;
      case 20:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v44 = __dst[64];
        v45 = __dst[65];

        sub_1001D711C(__dst);
        (*(v4 + 280))(v44, v45, v5, v4);
        goto LABEL_47;
      case 21:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v47 = __dst[66];
        v48 = __dst[67];

        sub_1001D711C(__dst);
        (*(v4 + 288))(v47, v48, v5, v4);
        goto LABEL_47;
      case 22:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        (*(v4 + 296))(LOBYTE(__dst[68]), v5, v4);
        break;
      case 23:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        (*(v4 + 304))(BYTE1(__dst[68]), v5, v4);
        break;
      case 24:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        (*(v4 + 312))(BYTE2(__dst[68]), v5, v4);
        break;
      case 25:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        (*(v4 + 336))(BYTE3(__dst[68]), v5, v4);
        break;
      case 26:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        (*(v4 + 320))(BYTE4(__dst[68]), v5, v4);
        break;
      case 27:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        (*(v4 + 328))(BYTE5(__dst[68]), v5, v4);
        break;
      case 28:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v60 = __dst[69];

        sub_1001D711C(__dst);
        (*(v4 + 344))(v60, v5, v4);
        goto LABEL_47;
      case 29:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        (*(v4 + 352))(LOBYTE(__dst[70]), v5, v4);
        break;
      case 30:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        (*(v4 + 360))(BYTE1(__dst[70]), v5, v4);
        break;
      case 31:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v37 = __dst[71];
        sub_1001C8518(__dst[71], v38, v39, v40);
        sub_1001D711C(__dst);
        v85[0] = v37;
        (*(v4 + 368))(v85, v5, v4);
        sub_1001C855C(v85[0]);
        break;
      case 32:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v52 = __dst[72];
        v53 = __dst[73];

        sub_1001D711C(__dst);
        (*(v4 + 376))(v52, v53, v5, v4);
        goto LABEL_47;
      case 33:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        (*(v4 + 384))(LOBYTE(__dst[74]), v5, v4);
        break;
      case 34:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        (*(v4 + 392))(__dst[75], LOBYTE(__dst[76]), v5, v4);
        break;
      case 35:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v16 = __dst[77];

        sub_1001D711C(__dst);
        (*(v4 + 400))(v16, v5, v4);
        goto LABEL_47;
      case 36:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v17 = __dst[78];
        v18 = __dst[79];

        sub_1001D711C(__dst);
        (*(v4 + 408))(v17, v18, v5, v4);
        goto LABEL_47;
      case 37:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        (*(v4 + 416))(__dst[80], LOBYTE(__dst[81]), v5, v4);
        break;
      case 38:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        (*(v4 + 424))(BYTE1(__dst[81]), v5, v4);
        break;
      case 39:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v54 = __dst[83];
        v55 = __dst[84];

        sub_1001D711C(__dst);
        (*(v4 + 432))(v54, v55, v5, v4);
        goto LABEL_47;
      case 40:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        (*(v4 + 440))(__dst[85], LOBYTE(__dst[86]), v5, v4);
        break;
      case 41:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v43 = __dst[82];

        sub_1001D711C(__dst);
        (*(v4 + 464))(v43, v5, v4);
        goto LABEL_47;
      case 42:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v58 = __dst[89];
        v59 = __dst[90];

        sub_1001D711C(__dst);
        (*(v4 + 472))(v58, v59, v5, v4);
LABEL_47:

        break;
      default:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        (*(v4 + 136))(LOBYTE(__dst[0]), v5, v4);
        break;
    }
  }

  while (v10 != 43);
  if (((*(v4 + 24))(v5, v4) & 1) == 0)
  {
    v61 = *(v4 + 104);
    v95 = v5;
    v84 = v61;
    v62 = *(v61(v5, v4) + 16);

    if (v62)
    {
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v66 = 0xE000000000000000;
      do
      {
        v67 = v65 + 1;
        __dst[0] = v64;
        __dst[1] = v66;
        v68._countAndFlagsBits = 10;
        v68._object = 0xE100000000000000;
        String.append(_:)(v68);
        *__src = v65 + 1;
        v69._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v69);

        v70._countAndFlagsBits = 8238;
        v70._object = 0xE200000000000000;
        String.append(_:)(v70);
        v71 = v84(v95, v4);
        if (v65 >= *(v71 + 16))
        {
          __break(1u);
          JUMPOUT(0x1001DFF6CLL);
        }

        v72 = *(v71 + v63 + 32);
        v73 = *(v71 + v63 + 40);

        v74._countAndFlagsBits = v72;
        v74._object = v73;
        String.append(_:)(v74);

        v64 = __dst[0];
        v66 = __dst[1];
        v63 += 16;
        ++v65;
      }

      while (v62 != v67);
    }

    else
    {
      v64 = 0;
      v66 = 0xE000000000000000;
    }

    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(87);
    v75._countAndFlagsBits = 0xD00000000000002ELL;
    v75._object = 0x800000010043ED10;
    String.append(_:)(v75);
    v76._countAndFlagsBits = (*(v4 + 8))(v95, v4);
    String.append(_:)(v76);

    v77._object = 0x800000010043ED40;
    v77._countAndFlagsBits = 0xD000000000000025;
    String.append(_:)(v77);
    v78._countAndFlagsBits = v64;
    v78._object = v66;
    String.append(_:)(v78);
    goto LABEL_59;
  }
}

uint64_t sub_1001E0018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 152))(v6);
}

uint64_t sub_1001E0104@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10DarwinInit17CustomerValidator_logger;
  swift_beginAccess();
  v4 = type metadata accessor for Logger();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1001E018C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10DarwinInit17CustomerValidator_logger;
  swift_beginAccess();
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1001E027C()
{
  v1 = (v0 + OBJC_IVAR____TtC10DarwinInit17CustomerValidator_policy);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1001E02D4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC10DarwinInit17CustomerValidator_policy);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1001E0394()
{
  v1 = OBJC_IVAR____TtC10DarwinInit17CustomerValidator_requestedVersion;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1001E03D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10DarwinInit17CustomerValidator_requestedVersion;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1001E0488@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10DarwinInit17CustomerValidator_config;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(a1, (v1 + v3), 0x2D8uLL);
  return sub_1001D78FC(__dst, v5);
}

uint64_t sub_1001E0500(const void *a1)
{
  v3 = OBJC_IVAR____TtC10DarwinInit17CustomerValidator_config;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy((v1 + v3), a1, 0x2D8uLL);
  return sub_1001D711C(__dst);
}

uint64_t sub_1001E05D4()
{
  v1 = OBJC_IVAR____TtC10DarwinInit17CustomerValidator_isValid;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1001E0618(char a1)
{
  v3 = OBJC_IVAR____TtC10DarwinInit17CustomerValidator_isValid;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1001E06C8()
{
  v1 = OBJC_IVAR____TtC10DarwinInit17CustomerValidator_latestApprovedVersion;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1001E070C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10DarwinInit17CustomerValidator_latestApprovedVersion;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_1001E07BC()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1001E0804(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10DarwinInit17CustomerValidator_emittedErrors;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t CustomerValidator.init(policy:requestedVersion:config:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v6 = OBJC_IVAR____TtC10DarwinInit17CustomerValidator_logger;
  if (qword_1004A9F80 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v8 = sub_1000270B4(v7, static Logger.privateCloudOSValidator);
  (*(*(v7 - 8) + 16))(v5 + v6, v8, v7);
  v18 = OBJC_IVAR____TtC10DarwinInit17CustomerValidator_customerPreferencesRules;
  sub_1000039E8(&qword_1004ABD20, &qword_1003F8E28);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100376F00;
  sub_1000039E8(&qword_1004ABD28, &qword_1003F8E30);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1003F8DC0;
  *(v10 + 32) = 0xD00000000000001CLL;
  *(v10 + 40) = 0x800000010043EDD0;
  *(v10 + 48) = &_swiftEmptySetSingleton;
  *(v10 + 56) = 0xD000000000000022;
  *(v10 + 64) = 0x800000010043EDF0;
  *(v10 + 72) = &_swiftEmptySetSingleton;
  *(v10 + 80) = 0xD000000000000029;
  *(v10 + 88) = 0x800000010043EE20;
  *(v10 + 96) = &_swiftEmptySetSingleton;
  *(v10 + 104) = 0xD000000000000011;
  *(v10 + 112) = 0x800000010043EE50;
  *(v10 + 120) = &_swiftEmptySetSingleton;
  *(v10 + 128) = 0xD000000000000027;
  *(v10 + 136) = 0x800000010043EE70;
  *(v10 + 144) = &_swiftEmptySetSingleton;
  *(v10 + 152) = 0xD000000000000021;
  *(v10 + 160) = 0x800000010043EEA0;
  *(v10 + 168) = &_swiftEmptySetSingleton;
  *(v10 + 176) = 0xD000000000000023;
  *(v10 + 184) = 0x800000010043EED0;
  *(v10 + 192) = &_swiftEmptySetSingleton;
  *(v10 + 200) = 0xD00000000000001DLL;
  *(v10 + 208) = 0x800000010043EF00;
  *(v10 + 216) = &_swiftEmptySetSingleton;
  *(v10 + 224) = 0xD00000000000001ELL;
  *(v10 + 232) = 0x800000010043EF20;
  *(v10 + 240) = &_swiftEmptySetSingleton;
  *(v10 + 248) = 0xD00000000000001DLL;
  *(v10 + 256) = 0x800000010043EF40;
  *(v10 + 264) = &_swiftEmptySetSingleton;
  *(v10 + 272) = 0xD00000000000001DLL;
  *(v10 + 280) = 0x800000010043EF60;
  *(v10 + 288) = &_swiftEmptySetSingleton;
  *(v10 + 296) = 0xD000000000000023;
  *(v10 + 304) = 0x800000010043EF80;
  *(v10 + 312) = &_swiftEmptySetSingleton;
  *(v10 + 320) = 0xD000000000000025;
  *(v10 + 328) = 0x800000010043EFB0;
  *(v10 + 336) = &_swiftEmptySetSingleton;
  *(v10 + 344) = 0xD00000000000002FLL;
  *(v10 + 352) = 0x800000010043EFE0;
  *(v10 + 360) = &_swiftEmptySetSingleton;
  *(v10 + 368) = 0xD00000000000002CLL;
  *(v10 + 376) = 0x800000010043F010;
  *(v10 + 384) = &_swiftEmptySetSingleton;
  *(v10 + 488) = 0xD000000000000013;
  *(v10 + 496) = 0x800000010043F100;
  *(v10 + 392) = 0xD00000000000002BLL;
  *(v10 + 400) = 0x800000010043F040;
  *(v10 + 408) = &_swiftEmptySetSingleton;
  *(v10 + 416) = 0xD00000000000002ELL;
  *(v10 + 424) = 0x800000010043F070;
  *(v10 + 432) = &_swiftEmptySetSingleton;
  *(v10 + 440) = 0xD000000000000024;
  *(v10 + 448) = 0x800000010043F0A0;
  *(v10 + 456) = &_swiftEmptySetSingleton;
  *(v10 + 464) = 0xD000000000000023;
  *(v10 + 472) = 0x800000010043F0D0;
  *(v10 + 480) = &_swiftEmptySetSingleton;
  *(v10 + 504) = &_swiftEmptySetSingleton;
  *(v10 + 512) = 0xD00000000000001ELL;
  *(v10 + 520) = 0x800000010043F120;
  *(v10 + 528) = &_swiftEmptySetSingleton;
  *(v10 + 536) = 0xD00000000000001DLL;
  *(v10 + 544) = 0x800000010043F140;
  *(v10 + 552) = &_swiftEmptySetSingleton;
  *(v10 + 560) = 0xD00000000000002BLL;
  *(v10 + 568) = 0x800000010043F160;
  *(v10 + 576) = &_swiftEmptySetSingleton;
  v11 = sub_1001879E4(v10);
  swift_setDeallocating();
  sub_1000039E8(&qword_1004ABD30, &qword_1003F8E38);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v9 + 32) = v11;
  *(v9 + 40) = 3;
  *(v9 + 48) = 0;
  *(v9 + 56) = xmmword_1003F8DD0;
  *(v9 + 72) = 259;
  v12 = swift_allocObject();
  *(v12 + 40) = 0x800000010043EDD0;
  *(v12 + 48) = &_swiftEmptySetSingleton;
  *(v12 + 56) = 0xD000000000000022;
  *(v12 + 64) = 0x800000010043EDF0;
  *(v12 + 104) = 0xD000000000000027;
  *(v12 + 112) = 0x800000010043EE70;
  *(v12 + 32) = 0xD00000000000001CLL;
  *(v12 + 16) = xmmword_1003F8DE0;
  *(v12 + 72) = &_swiftEmptySetSingleton;
  *(v12 + 80) = 0xD000000000000011;
  *(v12 + 88) = 0x800000010043EE50;
  *(v12 + 96) = &_swiftEmptySetSingleton;
  *(v12 + 120) = &_swiftEmptySetSingleton;
  *(v12 + 128) = 0xD000000000000021;
  *(v12 + 136) = 0x800000010043EEA0;
  *(v12 + 144) = &_swiftEmptySetSingleton;
  *(v12 + 152) = 0xD000000000000023;
  *(v12 + 160) = 0x800000010043EED0;
  *(v12 + 168) = &_swiftEmptySetSingleton;
  *(v12 + 176) = 0xD00000000000001DLL;
  *(v12 + 184) = 0x800000010043EF00;
  *(v12 + 192) = &_swiftEmptySetSingleton;
  *(v12 + 200) = 0xD00000000000001ELL;
  *(v12 + 208) = 0x800000010043EF20;
  *(v12 + 216) = &_swiftEmptySetSingleton;
  *(v12 + 224) = 0xD00000000000001DLL;
  *(v12 + 232) = 0x800000010043EF40;
  *(v12 + 240) = &_swiftEmptySetSingleton;
  *(v12 + 248) = 0xD00000000000001DLL;
  *(v12 + 256) = 0x800000010043EF60;
  *(v12 + 264) = &_swiftEmptySetSingleton;
  *(v12 + 272) = 0xD000000000000023;
  *(v12 + 280) = 0x800000010043EF80;
  *(v12 + 288) = &_swiftEmptySetSingleton;
  *(v12 + 296) = 0xD000000000000025;
  *(v12 + 304) = 0x800000010043EFB0;
  *(v12 + 312) = &_swiftEmptySetSingleton;
  *(v12 + 320) = 0xD00000000000002FLL;
  *(v12 + 328) = 0x800000010043EFE0;
  *(v12 + 336) = &_swiftEmptySetSingleton;
  *(v12 + 344) = 0xD00000000000002CLL;
  *(v12 + 352) = 0x800000010043F010;
  *(v12 + 360) = &_swiftEmptySetSingleton;
  *(v12 + 368) = 0xD00000000000002BLL;
  *(v12 + 376) = 0x800000010043F040;
  *(v12 + 384) = &_swiftEmptySetSingleton;
  *(v12 + 392) = 0xD00000000000002ELL;
  *(v12 + 400) = 0x800000010043F070;
  *(v12 + 408) = &_swiftEmptySetSingleton;
  *(v12 + 416) = 0xD000000000000024;
  *(v12 + 424) = 0x800000010043F0A0;
  *(v12 + 432) = &_swiftEmptySetSingleton;
  *(v12 + 440) = 0xD000000000000023;
  *(v12 + 448) = 0x800000010043F0D0;
  *(v12 + 456) = &_swiftEmptySetSingleton;
  *(v12 + 464) = 0xD00000000000001ELL;
  *(v12 + 472) = 0x800000010043F120;
  *(v12 + 480) = &_swiftEmptySetSingleton;
  *(v12 + 488) = 0xD00000000000001DLL;
  *(v12 + 496) = 0x800000010043F140;
  *(v12 + 504) = &_swiftEmptySetSingleton;
  *(v12 + 512) = 0xD00000000000002BLL;
  *(v12 + 520) = 0x800000010043F160;
  v13 = sub_1001E9470(&off_100485B90);
  swift_arrayDestroy();
  *(v12 + 528) = v13;
  v14 = sub_1001879E4(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v15 = 9;
  *(v9 + 80) = v14;
  *(v9 + 88) = 9;
  *(v5 + v18) = v9;
  *(v9 + 96) = 0;
  v16 = (v5 + OBJC_IVAR____TtC10DarwinInit17CustomerValidator_policy);
  *v16 = a1;
  v16[1] = a2;
  *(v5 + OBJC_IVAR____TtC10DarwinInit17CustomerValidator_latestApprovedVersion) = 9;
  if ((a4 & 1) == 0)
  {
    v15 = a3;
  }

  *(v5 + OBJC_IVAR____TtC10DarwinInit17CustomerValidator_requestedVersion) = v15;
  memcpy((v5 + OBJC_IVAR____TtC10DarwinInit17CustomerValidator_config), __dst, 0x2D8uLL);
  *(v5 + OBJC_IVAR____TtC10DarwinInit17CustomerValidator_isValid) = 1;
  *(v5 + OBJC_IVAR____TtC10DarwinInit17CustomerValidator_emittedErrors) = _swiftEmptyArrayStorage;
  return v5;
}

uint64_t sub_1001E0F2C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v2 + 144))(v8);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1000026C0(a1, a2, v26);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s", v13, 0xCu);
    sub_100003C3C(v14);
  }

  (*(v7 + 8))(v10, v6);
  sub_1000039E8(&qword_1004AA990, &unk_1003F8E40);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100376A40;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;

  print(_:separator:terminator:)();

  v16 = *(*v3 + 304);

  v17 = v16(v26);
  v19 = v18;
  v20 = *v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v19 = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_100011A4C(0, *(v20 + 2) + 1, 1, v20);
    *v19 = v20;
  }

  v23 = *(v20 + 2);
  v22 = *(v20 + 3);
  if (v23 >= v22 >> 1)
  {
    v20 = sub_100011A4C((v22 > 1), v23 + 1, 1, v20);
    *v19 = v20;
  }

  *(v20 + 2) = v23 + 1;
  v24 = &v20[16 * v23];
  *(v24 + 4) = a1;
  *(v24 + 5) = a2;
  return v17(v26, 0);
}

uint64_t sub_1001E1244(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v25._countAndFlagsBits = a5;
  v25._object = a6;
  (*(*v6 + 168))();
  v11 = String.uppercased()();

  v12._object = 0x800000010043F190;
  v12._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v12);

  if (a4)
  {
    v13._countAndFlagsBits = a3;
    v13._object = a4;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 0x6769666E6F6320;
    v14._object = 0xE700000000000000;
    String.append(_:)(v14);
    v16 = 544106784;
    v15 = 0xE400000000000000;
  }

  else
  {
    v16 = 0;
    v15 = 0xE000000000000000;
  }

  _StringGuts.grow(_:)(30);

  v17._countAndFlagsBits = 0x64696C61766E4920;
  v17._object = 0xE900000000000020;
  String.append(_:)(v17);
  v18._countAndFlagsBits = a1;
  v18._object = a2;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x676E697474657320;
  v19._object = 0xE800000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = v16;
  v20._object = v15;
  String.append(_:)(v20);

  v21._countAndFlagsBits = 8238;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  String.append(_:)(v25);
  v22._countAndFlagsBits = 32;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0xD00000000000002CLL;
  v23._object = 0x800000010043F1B0;
  String.append(_:)(v23);
  (*(*v6 + 320))(v11._countAndFlagsBits, v11._object);
}

uint64_t sub_1001E1490(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, unsigned __int8 a7)
{
  v15 = type metadata accessor for Logger();
  v46 = *(v15 - 8);
  v47 = v15;
  v16 = __chkstk_darwin(v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (*(*v7 + 192))(v16);
  v20 = *v7;
  if (v19 >= a7)
  {
    v44 = a1;
    v45._object = a6;
    (*(v20 + 144))();

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    v25 = os_log_type_enabled(v23, v24);
    v45._countAndFlagsBits = a5;
    if (v25)
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = (*(*v7 + 264))();

      _os_log_impl(&_mh_execute_header, v23, v24, "Latest version: %ld", v26, 0xCu);
    }

    else
    {
    }

    v27 = (*(v46 + 8))(v18, v47);
    (*(*v7 + 168))(v27);
    v28 = String.uppercased()();

    v48 = v28;

    v29._object = 0x800000010043F1E0;
    v29._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v29);

    v32 = v48;
    object = v32._object;
    countAndFlagsBits = v32._countAndFlagsBits;
    if (a4)
    {
      v48._countAndFlagsBits = 544106784;
      v48._object = 0xE400000000000000;
      v33._countAndFlagsBits = a3;
      v33._object = a4;
      String.append(_:)(v33);
      v34._countAndFlagsBits = 0x6769666E6F6320;
      v34._object = 0xE700000000000000;
      String.append(_:)(v34);
      v36 = v48._countAndFlagsBits;
      v35 = v48._object;
    }

    else
    {
      v36 = 0;
      v35 = 0xE000000000000000;
    }

    v37 = v44;
    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v48._countAndFlagsBits = countAndFlagsBits;
    v48._object = object;
    v38._countAndFlagsBits = 0x64696C61766E4920;
    v38._object = 0xE900000000000020;
    String.append(_:)(v38);
    v39._countAndFlagsBits = v37;
    v39._object = a2;
    String.append(_:)(v39);
    v40._countAndFlagsBits = 0x676E697474657320;
    v40._object = 0xE800000000000000;
    String.append(_:)(v40);
    v41._countAndFlagsBits = v36;
    v41._object = v35;
    String.append(_:)(v41);

    v42._countAndFlagsBits = 8238;
    v42._object = 0xE200000000000000;
    String.append(_:)(v42);
    String.append(_:)(v45);
    (*(*v7 + 320))(v48._countAndFlagsBits, v48._object);

    return (*(*v7 + 248))(0);
  }

  else
  {
    v21 = *(v20 + 328);

    return v21(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t sub_1001E18DC(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a1 == 0xD00000000000003ALL && 0x800000010043F200 == a2)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_1001E1944(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  if (v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      sub_1000039E8(&qword_1004A6B48, &unk_100376810);
      sub_10000E720(&qword_1004A6B50, &qword_1004A6B48, &unk_100376810, &protocol conformance descriptor for [A]);
      BidirectionalCollection<>.joined(separator:)();

      return;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      do
      {
LABEL_8:
        v10 = (*(a1 + 48) + ((v7 << 10) | (16 * __clz(__rbit64(v5)))));
        v11 = *v10;
        v12 = v10[1];

        v13._countAndFlagsBits = v11;
        v13._object = v12;
        String.append(_:)(v13);

        v14._countAndFlagsBits = 34;
        v14._object = 0xE100000000000000;
        String.append(_:)(v14);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100011A4C(0, *(v8 + 2) + 1, 1, v8);
        }

        v16 = *(v8 + 2);
        v15 = *(v8 + 3);
        if (v16 >= v15 >> 1)
        {
          v8 = sub_100011A4C((v15 > 1), v16 + 1, 1, v8);
        }

        v5 &= v5 - 1;
        *(v8 + 2) = v16 + 1;
        v17 = &v8[16 * v16];
        *(v17 + 4) = 34;
        *(v17 + 5) = 0xE100000000000000;
      }

      while (v5);
    }
  }

  __break(1u);
}

void sub_1001E1B50(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  if (v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      sub_1000039E8(&qword_1004A6B48, &unk_100376810);
      sub_10000E720(&qword_1004A6B50, &qword_1004A6B48, &unk_100376810, &protocol conformance descriptor for [A]);
      BidirectionalCollection<>.joined(separator:)();

      return;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      do
      {
LABEL_8:
        v10 = (*(a1 + 48) + ((v7 << 10) | (16 * __clz(__rbit64(v5)))));
        v11 = *v10;
        v12 = v10[1];

        v13._countAndFlagsBits = v11;
        v13._object = v12;
        String.append(_:)(v13);

        v14._countAndFlagsBits = 34;
        v14._object = 0xE100000000000000;
        String.append(_:)(v14);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100011A4C(0, *(v8 + 2) + 1, 1, v8);
        }

        v16 = *(v8 + 2);
        v15 = *(v8 + 3);
        if (v16 >= v15 >> 1)
        {
          v8 = sub_100011A4C((v15 > 1), v16 + 1, 1, v8);
        }

        v5 &= v5 - 1;
        *(v8 + 2) = v16 + 1;
        v17 = &v8[16 * v16];
        *(v17 + 4) = 34;
        *(v17 + 5) = 0xE100000000000000;
      }

      while (v5);
    }
  }

  __break(1u);
}

Swift::Bool __swiftcall CustomerValidator.isValidBundleIdentifier(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = type metadata accessor for CharacterSet();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v5);
  v10 = &v18[-v9];
  __chkstk_darwin(v8);
  v12 = &v18[-v11];
  v13 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v13 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    CharacterSet.init(charactersIn:)();
    static CharacterSet.alphanumerics.getter();
    CharacterSet.union(_:)();
    v14 = *(v4 + 8);
    v14(v7, v3);
    v15 = (v14)(v10, v3);
    __chkstk_darwin(v15);
    *&v18[-16] = v12;
    v16 = sub_1001DE260(sub_1001E95BC, &v18[-32], countAndFlagsBits, object);
    v14(v12, v3);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1001E1F40(uint64_t result)
{
  if (*(result + 8))
  {
    return (*(*v1 + 336))(0x6F6C76616964, 0xE600000000000000, 0, 0, 0xD000000000000031, 0x800000010043F260, 2);
  }

  return result;
}

uint64_t sub_1001E1FAC(uint64_t result)
{
  if (*(result + 8) != 1)
  {
    return (*(*v1 + 336))(0x6C6C6174736E69, 0xE700000000000000, 0, 0, 0xD000000000000025, 0x800000010043F2A0, 2);
  }

  return result;
}

uint64_t sub_1001E2020(uint64_t result)
{
  if (result)
  {
    return (*(*v1 + 336))(0x6567616B636170, 0xE700000000000000, 0, 0, 0xD000000000000021, 0x800000010043F2D0, 2);
  }

  return result;
}

uint64_t sub_1001E208C(uint64_t result)
{
  if (result)
  {
    v35 = *(result + 16);
    if (v35)
    {
      v2 = v1;
      v3 = 0;
      v34 = result + 32;
      v33 = *(*v1 + 376);
      while (1)
      {
        v4 = v34 + 72 * v3;
        v5 = *(v4 + 8);
        v41 = *v4;
        if (*(v4 + 32))
        {
          v38 = *(v4 + 24);
        }

        else
        {
          v38._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v38._object = v6;
        }

        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();

        result = v33(v7);
        v40 = *(result + 16);
        if (v40)
        {
          break;
        }

LABEL_5:
        ++v3;

        if (v3 == v35)
        {
          return result;
        }
      }

      v36 = v3;
      v8 = 0;
      v39 = result + 32;
      v9 = result;
      v37 = result;
      while (1)
      {
        if (v8 >= *(v9 + 16))
        {
          __break(1u);
          return result;
        }

        v12 = v39 + 24 * v8;
        v14 = *v12;
        v13 = *(v12 + 8);
        v15 = *(v12 + 16);
        if (*(v12 + 17))
        {
          result = sub_100305028(v14, v13, v41, v5);
          if ((result & 1) == 0)
          {
            goto LABEL_14;
          }

          sub_1001E95F0(v14, v13, v15, 1);
          _StringGuts.grow(_:)(36);

          v16._countAndFlagsBits = v41;
          v16._object = v5;
          String.append(_:)(v16);
          v17._countAndFlagsBits = 0x72657020746F6E20;
          v17._object = 0xEE0064657474696DLL;
          String.append(_:)(v17);
          (*(*v2 + 336))(7955819, 0xE300000000000000, 0x6E65726566657270, 0xEB00000000736563, 0xD000000000000014, 0x800000010043F300, v15);
        }

        else
        {
          if (*(v14 + 16))
          {
            sub_1001E95F0(v14, v13, v15, 0);

            v18 = sub_100181630(v38._countAndFlagsBits, v38._object);
            v20 = v19;
            v9 = v37;

            if (v20)
            {
              v21 = *(*(v14 + 56) + 8 * v18);
              if (*(v21 + 16))
              {
                Hasher.init(_seed:)();
                UTF8String.hash(into:)();
                v22 = Hasher._finalize()();
                v23 = -1 << *(v21 + 32);
                v24 = v22 & ~v23;
                if ((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
                {
                  v25 = ~v23;
                  while ((sub_100305028(v41, v5, *(*(v21 + 48) + 16 * v24), *(*(v21 + 48) + 16 * v24 + 8)) & 1) == 0)
                  {
                    v24 = (v24 + 1) & v25;
                    if (((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
                    {
                      goto LABEL_26;
                    }
                  }

                  result = sub_1001E95FC();
                  v9 = v37;
                }

                else
                {
LABEL_26:

                  _StringGuts.grow(_:)(86);
                  v26._countAndFlagsBits = v41;
                  v26._object = v5;
                  String.append(_:)(v26);
                  v27._countAndFlagsBits = 0xD00000000000004ELL;
                  v27._object = 0x800000010043F380;
                  String.append(_:)(v27);
                  String.append(_:)(v38);
                  v28._countAndFlagsBits = 8250;
                  v28._object = 0xE200000000000000;
                  String.append(_:)(v28);
                  v29 = (*(*v2 + 368))(v21);
                  v31 = v30;

                  v32._countAndFlagsBits = v29;
                  v32._object = v31;
                  String.append(_:)(v32);

                  (*(*v2 + 336))(0x746163696C707061, 0xEE0064695F6E6F69, 0x6E65726566657270, 0xEB00000000736563, 0, 0xE000000000000000, v13);
                  sub_1001E95FC();

                  v9 = v37;
                }
              }

              else
              {
                result = sub_1001E95FC();
              }

              goto LABEL_14;
            }
          }

          else
          {
          }

          _StringGuts.grow(_:)(84);
          String.append(_:)(v38);
          v10._countAndFlagsBits = 0xD000000000000050;
          v10._object = 0x800000010043F320;
          String.append(_:)(v10);
          v11._countAndFlagsBits = (*(*v2 + 360))(v14);
          String.append(_:)(v11);

          (*(*v2 + 336))(0x746163696C707061, 0xEE0064695F6E6F69, 0x6E65726566657270, 0xEB00000000736563, 0, 0xE000000000000000, v13);
        }

        sub_1001E95FC();

LABEL_14:
        if (++v8 == v40)
        {

          v3 = v36;
          goto LABEL_5;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1001E27D4(uint64_t result)
{
  if (result == 1)
  {
    return (*(*v1 + 336))(0x416572756C696166, 0xED00006E6F697463, 0x746C75736572, 0xE600000000000000, 0xD00000000000002BLL, 0x800000010043F3D0, 2);
  }

  return result;
}

uint64_t sub_1001E285C(uint64_t result)
{
  if (*(result + 8))
  {
    return (*(*v1 + 336))(1919251317, 0xE400000000000000, 0, 0, 0xD00000000000002CLL, 0x800000010043F400, 3);
  }

  return result;
}

uint64_t sub_1001E28C4(uint64_t result)
{
  if ((result & 0xFF00) != 0x300)
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    v10 = (BYTE1(result) == 2) | BYTE1(result);
    while (1)
    {
      v14 = v8;
      if ((*(&off_100485B68 + v9 + 32) & 1) == 0)
      {
        break;
      }

      if ((v10 & 1) == 0)
      {
        goto LABEL_8;
      }

      _StringGuts.grow(_:)(69);
      v15._countAndFlagsBits = 0xD00000000000003ALL;
      v15._object = 0x800000010043F4B0;
      String.append(_:)(v15);
      v16._object = 0x800000010043D520;
      v16._countAndFlagsBits = 0xD000000000000016;
      String.append(_:)(v16);
      v17._countAndFlagsBits = 0x736C6166206F7420;
      v17._object = 0xE900000000000065;
      String.append(_:)(v17);
      (*(*v1 + 336))(0xD000000000000016, 0x800000010043D520, 6778732, 0xE300000000000000, 0, 0xE000000000000000, 5);
LABEL_7:

LABEL_8:
      v8 = 1;
      v9 = &_mh_execute_header.magic + 1;
      if (v14)
      {
        return result;
      }
    }

    if (v7 > 1u)
    {
      if (v7 != 2)
      {
LABEL_6:
        _StringGuts.grow(_:)(53);
        v11._countAndFlagsBits = 0xD000000000000029;
        v11._object = 0x800000010043F430;
        String.append(_:)(v11);
        v12._countAndFlagsBits = 0xD000000000000018;
        v12._object = 0x800000010043D500;
        String.append(_:)(v12);
        v13._countAndFlagsBits = 0x6C627550206F7420;
        v13._object = 0xEA00000000006369;
        String.append(_:)(v13);
        (*(*v1 + 336))(0xD000000000000018, 0x800000010043D500, 6778732, 0xE300000000000000, 0, 0xE000000000000000, 5);
        goto LABEL_7;
      }
    }

    else if (!v7)
    {
      goto LABEL_7;
    }

    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v18)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  _StringGuts.grow(_:)(124);
  v2._countAndFlagsBits = 0xD000000000000029;
  v2._object = 0x800000010043F430;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0xD000000000000018;
  v3._object = 0x800000010043D500;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 0xD000000000000046;
  v4._object = 0x800000010043F460;
  String.append(_:)(v4);
  v5._object = 0x800000010043D520;
  v5._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0x736C6166206F7420;
  v6._object = 0xE900000000000065;
  String.append(_:)(v6);
  (*(*v1 + 336))(6778732, 0xE300000000000000, 0, 0, 0, 0xE000000000000000, 5);
}

uint64_t sub_1001E2CB4(uint64_t result)
{
  if (result)
  {
    return (*(*v1 + 336))(0x6B726F7774656ELL, 0xE700000000000000, 0, 0, 0xD000000000000033, 0x800000010043F4F0, 2);
  }

  return result;
}

uint64_t sub_1001E2D20(uint64_t result)
{
  if (*(result + 56) != 2)
  {
    return (*(*v1 + 336))(0xD000000000000010, 0x800000010043D340, 0, 0, 0xD000000000000037, 0x800000010043F530, 2);
  }

  return result;
}

uint64_t sub_1001E2DA0(uint64_t result)
{
  if (result != 2 && (result & 1) != 0)
  {
    _StringGuts.grow(_:)(60);
    v2._countAndFlagsBits = 0xD000000000000023;
    v2._object = 0x800000010043F570;
    String.append(_:)(v2);
    v3._countAndFlagsBits = 6845299;
    v3._object = 0xE300000000000000;
    String.append(_:)(v3);
    v4._object = 0x800000010043F5A0;
    v4._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v4);
    (*(*v1 + 336))(6845299, 0xE300000000000000, 0, 0, 0, 0xE000000000000000, 2);
  }

  return result;
}

uint64_t sub_1001E2ED8(uint64_t result)
{
  if (result != 2 && (result & 1) != 0)
  {
    _StringGuts.grow(_:)(77);
    v2._countAndFlagsBits = 0xD000000000000034;
    v2._object = 0x800000010043F5C0;
    String.append(_:)(v2);
    v3._countAndFlagsBits = 0x756177705F687373;
    v3._object = 0xEA00000000006874;
    String.append(_:)(v3);
    v4._object = 0x800000010043F5A0;
    v4._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v4);
    (*(*v1 + 336))(0x756177705F687373, 0xEA00000000006874, 0, 0, 0, 0xE000000000000000, 2);
  }

  return result;
}

uint64_t sub_1001E3020(uint64_t result)
{
  if (result != 2 && (result & 1) != 0)
  {
    _StringGuts.grow(_:)(67);
    v2._countAndFlagsBits = 0xD00000000000002ALL;
    v2._object = 0x800000010043F600;
    String.append(_:)(v2);
    v3._countAndFlagsBits = 0x746F6F626572;
    v3._object = 0xE600000000000000;
    String.append(_:)(v3);
    v4._object = 0x800000010043F5A0;
    v4._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v4);
    (*(*v1 + 336))(0x746F6F626572, 0xE600000000000000, 0, 0, 0, 0xE000000000000000, 2);
  }

  return result;
}

uint64_t sub_1001E3164(uint64_t result)
{
  if (result != 2 && (result & 1) == 0)
  {
    return (*(*v1 + 336))(0x7972632D6B636F6CLL, 0xEE00736578657470, 0, 0, 0xD000000000000028, 0x800000010043F670, 4);
  }

  return result;
}

uint64_t sub_1001E31E8(uint64_t result)
{
  if (result)
  {
    _StringGuts.grow(_:)(58);
    v2._object = 0x800000010043F6A0;
    v2._countAndFlagsBits = 0xD00000000000002ALL;
    String.append(_:)(v2);
    v3._countAndFlagsBits = 0x74696E692D657270;
    v3._object = 0xED000073646D632DLL;
    String.append(_:)(v3);
    v4._countAndFlagsBits = 0x6562207473756D20;
    v4._object = 0xEE007465736E7520;
    String.append(_:)(v4);
    (*(*v1 + 336))(0x74696E692D657270, 0xED000073646D632DLL, 0, 0, 0, 0xE000000000000000, 2);
  }

  return result;
}

uint64_t sub_1001E333C(uint64_t result)
{
  if (result != 2 && (result & 1) != 0)
  {
    _StringGuts.grow(_:)(100);
    v2._countAndFlagsBits = 0xD00000000000004BLL;
    v2._object = 0x800000010043F6D0;
    String.append(_:)(v2);
    v3._object = 0x800000010043D1C0;
    v3._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v3);
    v4._countAndFlagsBits = 0xD000000000000017;
    v4._object = 0x800000010043F5A0;
    String.append(_:)(v4);
    (*(*v1 + 336))(0xD000000000000011, 0x800000010043D1C0, 0, 0, 0, 0xE000000000000000, 2);
  }

  return result;
}

uint64_t sub_1001E347C(uint64_t *a1)
{
  v2 = v1;
  v147 = type metadata accessor for CharacterSet();
  v151 = *(v147 - 8);
  v4 = __chkstk_darwin(v147);
  v146 = v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v145 = v122 - v7;
  __chkstk_darwin(v6);
  v154 = v122 - v8;
  v149 = type metadata accessor for Logger();
  v150 = *(v149 - 8);
  v9 = __chkstk_darwin(v149);
  v140 = v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v155 = v122 - v11;
  v12 = type metadata accessor for SecureConfigParameters.Keys();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v177 = v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v182 = v122 - v17;
  __chkstk_darwin(v16);
  v19 = v122 - v18;
  v20 = *a1;
  v21 = *(v13 + 104);
  v176 = enum case for SecureConfigParameters.Keys.logPolicyPath(_:);
  v21(v122 - v18);
  v170 = SecureConfigParameters.Keys.rawValue.getter();
  v173 = v22;
  v178 = v13;
  v23 = *(v13 + 8);
  v23(v19, v12);
  v168 = enum case for SecureConfigParameters.Keys.metricsFilteringEnforced(_:);
  v21(v19);
  v169 = SecureConfigParameters.Keys.rawValue.getter();
  v179 = v24;
  v23(v19, v12);
  v159 = enum case for SecureConfigParameters.Keys.logFilteringEnforced(_:);
  v21(v19);
  v167 = SecureConfigParameters.Keys.rawValue.getter();
  v181 = v25;
  v23(v19, v12);
  v156 = enum case for SecureConfigParameters.Keys.crashRedactionEnabled(_:);
  v21(v19);
  v166 = SecureConfigParameters.Keys.rawValue.getter();
  v171 = v26;
  v23(v19, v12);
  v148 = enum case for SecureConfigParameters.Keys.tie_allowNonProdExceptionOptions(_:);
  v21(v19);
  v144 = SecureConfigParameters.Keys.rawValue.getter();
  v28 = v27;
  v23(v19, v12);
  v142 = enum case for SecureConfigParameters.Keys.research_disableAppleInfrastrucutureEnforcement(_:);
  v21(v19);
  v141 = SecureConfigParameters.Keys.rawValue.getter();
  v30 = v29;
  v23(v19, v12);
  v143 = enum case for SecureConfigParameters.Keys.cryptexAppIdentifiers(_:);
  v21(v19);
  v152 = SecureConfigParameters.Keys.rawValue.getter();
  v32 = v31;
  v174 = v23;
  v175 = v13 + 8;
  v33 = (v23)(v19, v12);
  v35 = (*(*v2 + 352))(v33);
  v36 = v34;
  if ((~v20 & 0xF000000000000007) == 0)
  {

    v183 = 0;
    v184 = 0xE000000000000000;
    _StringGuts.grow(_:)(64);
    v37._countAndFlagsBits = 0x632D657275636573;
    v37._object = 0xED00006769666E6FLL;
    String.append(_:)(v37);
    v38._countAndFlagsBits = 0xD000000000000012;
    v38._object = 0x800000010043F720;
    String.append(_:)(v38);
    v39._countAndFlagsBits = v170;
    v39._object = v173;
    String.append(_:)(v39);

    v40._countAndFlagsBits = 2112800;
    v40._object = 0xE300000000000000;
    String.append(_:)(v40);
    v41._countAndFlagsBits = v35;
    v41._object = v36;
    String.append(_:)(v41);

    v42._countAndFlagsBits = 8236;
    v42._object = 0xE200000000000000;
    String.append(_:)(v42);
    v43._countAndFlagsBits = v169;
    v43._object = v179;
    String.append(_:)(v43);

    v44._countAndFlagsBits = 0x2C65757274203D20;
    v44._object = 0xE900000000000020;
    String.append(_:)(v44);
    v45._countAndFlagsBits = v167;
    v45._object = v181;
    String.append(_:)(v45);

    v46._object = 0xED000020646E6120;
    v46._countAndFlagsBits = 0x2C65757274203D20;
    String.append(_:)(v46);
    v47._countAndFlagsBits = v166;
    v47._object = v171;
    String.append(_:)(v47);

    v48._countAndFlagsBits = 0x65757274203D20;
    v48._object = 0xE700000000000000;
    String.append(_:)(v48);
    (*(*v2 + 336))(0x632D657275636573, 0xED00006769666E6FLL, 0, 0, v183, v184, 2);
  }

  v172 = v30;
  v180 = v32;
  v158 = v34;
  v153 = v28;
  v157 = v2;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v183 = v20;
  sub_1000039E8(&qword_1004ABD38, &unk_1003F8E50);
  sub_1001E9608();
  v50 = 0;
  v51 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v53 = v52;
  v139 = v35;
  type metadata accessor for SecureConfigParameters();
  (*(*v157 + 168))();
  v54 = static SecureConfigParameters.decode(parametersJson:securityPolicy:)();
  sub_100031928(v51, v53);

  result = static SecureConfigParameters.Keys.allCases.getter();
  v163 = *(result + 16);
  if (!v163)
  {
  }

  v164 = v54;
  v56 = 0;
  v57 = (*(v178 + 80) + 32) & ~*(v178 + 80);
  v165 = result;
  v162 = result + v57;
  v160 = v178 + 16;
  v161 = v178 + 88;
  v138 = enum case for SecureConfigParameters.Keys.internalRequestOptionsAllowed(_:);
  v131 = enum case for SecureConfigParameters.Keys.cloudboard_isProxy(_:);
  v125 = " parameters with error: ";
  v128 = enum case for SecureConfigParameters.Keys.cloudAttestationRoutingHint(_:);
  v126 = enum case for SecureConfigParameters.Keys.cloudAttestationRackId(_:);
  v124 = "rs, periods, and hyphens";
  v136 = (v150 + 8);
  v58 = (v151 + 8);
  v137 = "eeds to be updated";
  v127 = " must be set to ";
  v129 = "be unset or set to false";
  v151 = "false unless in a VM";
  v150 = " must be set to true";
  *&v55 = 136315138;
  v123 = v55;
  v59 = v157;
  v60 = v181;
  v135 = v58;
  while (v56 < *(v165 + 16))
  {
    v61 = v178;
    v62 = *(v178 + 16);
    v63 = v182;
    v62(v182, v162 + *(v178 + 72) * v56, v12);
    v64 = v177;
    v62(v177, v63, v12);
    v65 = (*(v61 + 88))(v64, v12);
    if (v65 == v176)
    {
      v66 = SecureConfigParameters.logPolicyPath.getter();
      v67 = (*(*v59 + 344))(v66);

      if ((v67 & 1) == 0)
      {
        v185 = 0;
        v186 = 0xE000000000000000;
        _StringGuts.grow(_:)(20);
        v68 = v173;

        v69 = v170;
        v185 = v170;
        v186 = v68;
        v70._countAndFlagsBits = 0xD000000000000010;
        v70._object = (v150 | 0x8000000000000000);
        String.append(_:)(v70);
        v71 = v139;
        v72 = v158;
LABEL_14:
        String.append(_:)(*&v71);
        v74 = v68;
        v60 = v181;
        (*(*v59 + 336))(v69, v74, 0x632D657275636573, 0xED00006769666E6FLL, v185, v186, 2);
LABEL_15:
      }
    }

    else
    {
      if (v65 == v168)
      {
        v73 = SecureConfigParameters.metricsFilteringEnforced.getter();
        if (v73 != 2 && (v73 & 1) != 0)
        {
          goto LABEL_16;
        }

        v185 = 0;
        v186 = 0xE000000000000000;
        _StringGuts.grow(_:)(22);
        v68 = v179;

        v69 = v169;
        v185 = v169;
        v186 = v68;
        v72 = v151 | 0x8000000000000000;
        v71 = 0xD000000000000014;
        goto LABEL_14;
      }

      if (v65 == v159)
      {
        v75 = SecureConfigParameters.logFilteringEnforced.getter();
        if (v75 != 2 && (v75 & 1) != 0)
        {
          goto LABEL_16;
        }

        v185 = 0;
        v186 = 0xE000000000000000;
        _StringGuts.grow(_:)(22);

        v76 = v167;
        v185 = v167;
        v186 = v60;
        v77._object = (v151 | 0x8000000000000000);
        v77._countAndFlagsBits = 0xD000000000000014;
        String.append(_:)(v77);
        (*(*v59 + 336))(v76, v60, 0x632D657275636573, 0xED00006769666E6FLL, v185, v186, 2);
        goto LABEL_15;
      }

      if (v65 == v156)
      {
        v78 = SecureConfigParameters.crashRedactionEnabled.getter();
        if (v78 == 2 || (v78 & 1) == 0)
        {
          v185 = 0;
          v186 = 0xE000000000000000;
          _StringGuts.grow(_:)(22);
          v79 = v171;

          v80 = v166;
          v185 = v166;
          v186 = v79;
          v81._object = (v151 | 0x8000000000000000);
          v81._countAndFlagsBits = 0xD000000000000014;
          String.append(_:)(v81);
          (*(*v59 + 336))(v80, v79, 0x632D657275636573, 0xED00006769666E6FLL, v185, v186, 2);
        }
      }

      else if (v65 == v138)
      {
        (*(*v59 + 144))();
        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          *v84 = 0;
          _os_log_impl(&_mh_execute_header, v82, v83, "com.apple.tie.internalRequestOptionsAllowed is deprecated, please replace with com.apple.tie.allowNonProdExceptionOptions moving forward.", v84, 2u);
          v60 = v181;
        }

        (*v136)(v155, v149);
        v85 = SecureConfigParameters.internalRequestOptionsAllowed.getter();
        if (v85 != 2 && (v85 & 1) != 0)
        {
          (*(*v59 + 336))(v144, v153, 0, 0, 0xD000000000000049, v129 | 0x8000000000000000, 8);
        }
      }

      else if (v65 == v148)
      {
        v86 = SecureConfigParameters.tie_allowNonProdExceptionOptions.getter();
        if (v86 != 2 && (v86 & 1) != 0)
        {
          (*(*v59 + 336))(v144, v153, 0, 0, 0xD000000000000048, v127 | 0x8000000000000000, 8);
        }
      }

      else if (v65 == v131)
      {
        v87 = SecureConfigParameters.cloudboard_isProxy.getter();
        (*(*v59 + 576))(v87);
      }

      else if (v65 == v143)
      {
        v88 = SecureConfigParameters.cryptexAppIdentifiers.getter();
        if (v88)
        {
          v89 = *(v88 + 16);
          v122[1] = v88;
          if (!v89)
          {
LABEL_64:

            goto LABEL_65;
          }

          v90 = (v88 + 40);
          while (2)
          {
            v91 = *(v90 - 1);
            v95 = *v90;
            if ((*v90 & 0x2000000000000000) != 0)
            {
              v96 = (*v90 >> 56) & 0xF;
            }

            else
            {
              v96 = v91 & 0xFFFFFFFFFFFFLL;
            }

            if (v96)
            {
              v134 = v89;
              v97 = v145;
              CharacterSet.init(charactersIn:)();
              v98 = v146;
              static CharacterSet.alphanumerics.getter();
              CharacterSet.union(_:)();
              v132 = v50;
              v99 = v91;
              v100 = *v135;
              v101 = v98;
              v102 = v154;
              v103 = v147;
              (*v135)(v101, v147);
              v133 = v100;
              v104 = (v100)(v97, v103);
              __chkstk_darwin(v104);
              v122[-2] = v102;
              v130 = v99;
              v105 = v99;
              v50 = v132;
              if (sub_1001DE260(sub_1001EB3CC, &v122[-4], v105, v95))
              {

                v133(v102, v103);
                v89 = v134;
LABEL_46:
                v90 += 2;
                if (!--v89)
                {
                  goto LABEL_64;
                }

                continue;
              }

              v133(v102, v103);
              v91 = v130;
              v89 = v134;
            }

            break;
          }

          v185 = 0;
          v186 = 0xE000000000000000;
          _StringGuts.grow(_:)(91);
          v92._countAndFlagsBits = 39;
          v92._object = 0xE100000000000000;
          String.append(_:)(v92);
          v93._countAndFlagsBits = v91;
          v93._object = v95;
          String.append(_:)(v93);

          v94._countAndFlagsBits = 0xD000000000000058;
          v94._object = (v137 | 0x8000000000000000);
          String.append(_:)(v94);
          (*(*v157 + 336))(v152, v180, 0x632D657275636573, 0xED00006769666E6FLL, v185, v186, 11);

          goto LABEL_46;
        }
      }

      else if (v65 != v128 && v65 != v126)
      {
        if (v65 != v142)
        {
          v116 = v182;
          v117 = SecureConfigParameters.Keys.rawValue.getter();
          (*(*v59 + 336))(v117);

          v118 = v174;
          v174(v116, v12);
          v118(v177, v12);
          goto LABEL_17;
        }

        v106 = SecureConfigParameters.research_disableAppleInfrastrucutureEnforcement.getter();
        if (v106 != 2 && (v106 & 1) != 0)
        {
          if (qword_1004A9DF0 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v107 = *(*static RealComputer.shared + 288);

          v109 = v107(v108);

          if (v109)
          {
            v111 = v140;
            (*(*v59 + 144))(v110);

            v112 = Logger.logObject.getter();
            v113 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v112, v113))
            {
              v114 = swift_slowAlloc();
              v115 = swift_slowAlloc();
              v185 = v115;
              *v114 = v123;
              *(v114 + 4) = sub_1000026C0(v141, v172, &v185);
              _os_log_impl(&_mh_execute_header, v112, v113, "Running in a VM, so %s is valid.", v114, 0xCu);
              sub_100003C3C(v115);
            }

            (*v136)(v111, v149);
LABEL_65:
            v174(v182, v12);
            v59 = v157;
          }

          else
          {
            v185 = 0;
            v186 = 0xE000000000000000;
            _StringGuts.grow(_:)(38);
            v119 = v172;

            v120 = v141;
            v185 = v141;
            v186 = v119;
            v121._countAndFlagsBits = 0xD000000000000024;
            v121._object = (v124 | 0x8000000000000000);
            String.append(_:)(v121);
            (*(*v59 + 336))(v120, v119, 0x632D657275636573, 0xED00006769666E6FLL, v185, v186, 8);

            v174(v182, v12);
          }

          v60 = v181;
          goto LABEL_17;
        }
      }
    }

LABEL_16:
    v174(v182, v12);
LABEL_17:
    ++v56;
    result = v172;
    if (v56 == v163)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001E4D74(uint64_t result)
{
  if (result != 2 && (result & 1) != 0)
  {
    _StringGuts.grow(_:)(95);
    v2._countAndFlagsBits = 0xD000000000000046;
    v2._object = 0x800000010043F940;
    String.append(_:)(v2);
    v3._object = 0x800000010043D200;
    v3._countAndFlagsBits = 0xD00000000000002BLL;
    String.append(_:)(v3);
    v4._countAndFlagsBits = 0xD000000000000017;
    v4._object = 0x800000010043F5A0;
    String.append(_:)(v4);
    (*(*v1 + 336))(0xD00000000000002BLL, 0x800000010043D200, 0, 0, 0, 0xE000000000000000, 2);
  }

  return result;
}

uint64_t sub_1001E4EB4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    _StringGuts.grow(_:)(79);
    v3._countAndFlagsBits = 0xD00000000000003FLL;
    v3._object = 0x800000010043F990;
    String.append(_:)(v3);
    v4._object = 0x800000010043D230;
    v4._countAndFlagsBits = 0xD00000000000001CLL;
    String.append(_:)(v4);
    v5._countAndFlagsBits = 0x6562207473756D20;
    v5._object = 0xEE007465736E7520;
    String.append(_:)(v5);
    (*(*v2 + 336))(0xD00000000000001CLL, 0x800000010043D230, 0, 0, 0, 0xE000000000000000, 2);
  }

  return result;
}

uint64_t sub_1001E4FF8(uint64_t result)
{
  if (result != 2 && (result & 1) != 0)
  {
    _StringGuts.grow(_:)(75);
    v2._countAndFlagsBits = 0xD000000000000032;
    v2._object = 0x800000010043F9D0;
    String.append(_:)(v2);
    v3._object = 0x800000010043D2A0;
    v3._countAndFlagsBits = 0xD00000000000001ELL;
    String.append(_:)(v3);
    v4._countAndFlagsBits = 0xD000000000000017;
    v4._object = 0x800000010043F5A0;
    String.append(_:)(v4);
    (*(*v1 + 336))(0xD00000000000001ELL, 0x800000010043D2A0, 0, 0, 0, 0xE000000000000000, 7);
  }

  return result;
}

uint64_t sub_1001E5138(unsigned __int8 a1)
{
  v2 = v1;
  v4 = a1;
  v5 = type metadata accessor for SecureConfigParameters.Keys();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, enum case for SecureConfigParameters.Keys.cloudboard_isProxy(_:), v5);
  v9 = SecureConfigParameters.Keys.rawValue.getter();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  if (v4 != 2 && (a1 & 1) != 0)
  {
    (*(*v2 + 336))(v9, v11, 0, 0, 0xD00000000000001ELL, 0x800000010043FA10, 8);
  }
}

uint64_t (*sub_1001E53D0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 256))();
  return sub_1001EB3F4;
}

uint64_t (*sub_1001E5538(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 208))();
  return sub_1001EB3F4;
}

uint64_t (*sub_1001E5664(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 280))();
  return sub_1001EB3F4;
}

uint64_t (*sub_1001E5798(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 304))();
  return sub_1001E5834;
}

void sub_1001E5838(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1001E65B8(unsigned __int8 a1)
{
  v2 = v1;
  v4 = a1;
  v5 = type metadata accessor for SecureConfigParameters.Keys();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, enum case for SecureConfigParameters.Keys.cloudboard_isProxy(_:), v5);
  v9 = SecureConfigParameters.Keys.rawValue.getter();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  if (v4 == 2 || (a1 & 1) == 0)
  {
    (*(*v2 + 336))(v9, v11, 0, 0, 0xD00000000000001BLL, 0x800000010043FA30, 8);
  }
}

uint64_t _s10DarwinInit17CustomerValidatorCfd_0()
{
  v1 = OBJC_IVAR____TtC10DarwinInit17CustomerValidator_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  memcpy(v4, (v0 + OBJC_IVAR____TtC10DarwinInit17CustomerValidator_config), 0x2D8uLL);
  sub_1001D711C(v4);

  return v0;
}

uint64_t _s10DarwinInit17CustomerValidatorCfD_0()
{
  v1 = OBJC_IVAR____TtC10DarwinInit17CustomerValidator_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  memcpy(v4, (v0 + OBJC_IVAR____TtC10DarwinInit17CustomerValidator_config), 0x2D8uLL);
  sub_1001D711C(v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1001E68E4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a1 == 0xD00000000000003ALL && 0x800000010043F200 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000037 && 0x800000010043FA50 == a2)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void *sub_1001E69D8(void *result)
{
  if (result[1])
  {
    v2 = 0;
    v3 = result[7];
    v4 = result[4];
    while (1)
    {
      v8 = *(&off_100485B10 + v2++ + 32);
      if (((1 << v8) & 0x1D7) != 0)
      {
        goto LABEL_6;
      }

      if (v8 == 3)
      {
        break;
      }

      if (v3)
      {
        _StringGuts.grow(_:)(61);
        v5._countAndFlagsBits = 0xD00000000000002DLL;
        v5._object = 0x800000010043FB40;
        String.append(_:)(v5);
        v6._object = 0x800000010043D590;
        v6._countAndFlagsBits = 0xD000000000000012;
        String.append(_:)(v6);
        v7._countAndFlagsBits = 0x6562207473756D20;
        v7._object = 0xEE007465736E7520;
        String.append(_:)(v7);
        (*(*v1 + 336))(0xD000000000000012, 0x800000010043D590, 1919251317, 0xE400000000000000, 0, 0xE000000000000000, 3);
LABEL_5:
      }

LABEL_6:
      if (v2 == 9)
      {
        return result;
      }
    }

    if (!v4)
    {
      goto LABEL_6;
    }

    _StringGuts.grow(_:)(53);
    v9._countAndFlagsBits = 0xD000000000000025;
    v9._object = 0x800000010043FB10;
    String.append(_:)(v9);
    v10._countAndFlagsBits = 0x64726F7773736170;
    v10._object = 0xE800000000000000;
    String.append(_:)(v10);
    v11._countAndFlagsBits = 0x6562207473756D20;
    v11._object = 0xEE007465736E7520;
    String.append(_:)(v11);
    (*(*v1 + 336))(0x64726F7773736170, 0xE800000000000000, 1919251317, 0xE400000000000000, 0, 0xE000000000000000, 3);
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_1001E6C50(__int16 a1)
{
  if ((a1 & 0xFF00) == 0x300)
  {
    _StringGuts.grow(_:)(53);
    v2._countAndFlagsBits = 0xD000000000000029;
    v2._object = 0x800000010043F430;
    String.append(_:)(v2);
    v3._object = 0x800000010043D500;
    v3._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v3);
    v4._countAndFlagsBits = 0x6C627550206F7420;
    v4._object = 0xEA00000000006369;
    String.append(_:)(v4);
    (*(*v1 + 336))(6778732, 0xE300000000000000, 0, 0, 0, 0xE000000000000000, 5);
  }

  if (a1 <= 1u)
  {
    if (!a1)
    {
    }

    goto LABEL_9;
  }

  if (a1 == 2)
  {
LABEL_9:
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return result;
    }
  }

  _StringGuts.grow(_:)(53);
  v7._countAndFlagsBits = 0xD000000000000029;
  v7._object = 0x800000010043F430;
  String.append(_:)(v7);
  v8._object = 0x800000010043D500;
  v8._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x6C627550206F7420;
  v9._object = 0xEA00000000006369;
  String.append(_:)(v9);
  (*(*v1 + 336))(0xD000000000000018, 0x800000010043D500, 6778732, 0xE300000000000000, 0, 0xE000000000000000, 5);
}

uint64_t sub_1001E7044(uint64_t result, uint64_t a2)
{
  if (result != 5)
  {
    if (result)
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v4 & 1) == 0)
      {
        v5 = *(*v2 + 336);

        return v5(0xD000000000000010, 0x800000010043D1A0, 0, 0, 0xD000000000000035, 0x800000010043F630, a2);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1001E71B4(uint64_t result)
{
  if (result)
  {
    return (*(*v1 + 336))(0x73656D756C6F76, 0xE700000000000000, 0, 0, 0xD000000000000019, 0x800000010043F240, 10);
  }

  return result;
}

uint64_t sub_1001E7220(uint64_t *a1)
{
  v2 = v1;
  v151 = type metadata accessor for CharacterSet();
  v156 = *(v151 - 8);
  v4 = __chkstk_darwin(v151);
  v150 = v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v149 = v127 - v7;
  __chkstk_darwin(v6);
  v158 = v127 - v8;
  v153 = type metadata accessor for Logger();
  v155 = *(v153 - 8);
  v9 = __chkstk_darwin(v153);
  v145 = v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v160 = v127 - v11;
  v12 = type metadata accessor for SecureConfigParameters.Keys();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v180 = v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v182 = v127 - v17;
  __chkstk_darwin(v16);
  v19 = v127 - v18;
  v20 = *a1;
  v21 = *(v13 + 104);
  v179 = enum case for SecureConfigParameters.Keys.logPolicyPath(_:);
  v21(v127 - v18);
  v174 = SecureConfigParameters.Keys.rawValue.getter();
  v23 = v22;
  v169 = v13;
  v24 = *(v13 + 8);
  v24(v19, v12);
  v172 = enum case for SecureConfigParameters.Keys.metricsFilteringEnforced(_:);
  v21(v19);
  v173 = SecureConfigParameters.Keys.rawValue.getter();
  v176 = v25;
  v24(v19, v12);
  v162 = enum case for SecureConfigParameters.Keys.logFilteringEnforced(_:);
  v21(v19);
  v171 = SecureConfigParameters.Keys.rawValue.getter();
  v181 = v26;
  v24(v19, v12);
  v159 = enum case for SecureConfigParameters.Keys.crashRedactionEnabled(_:);
  v21(v19);
  v170 = SecureConfigParameters.Keys.rawValue.getter();
  v175 = v27;
  v24(v19, v12);
  v152 = enum case for SecureConfigParameters.Keys.tie_allowNonProdExceptionOptions(_:);
  v21(v19);
  SecureConfigParameters.Keys.rawValue.getter();

  v24(v19, v12);
  v147 = enum case for SecureConfigParameters.Keys.research_disableAppleInfrastrucutureEnforcement(_:);
  v21(v19);
  v146 = SecureConfigParameters.Keys.rawValue.getter();
  v29 = v28;
  v24(v19, v12);
  v148 = enum case for SecureConfigParameters.Keys.cryptexAppIdentifiers(_:);
  v21(v19);
  v30 = SecureConfigParameters.Keys.rawValue.getter();
  v32 = v31;
  v177 = v24;
  v178 = v13 + 8;
  v33 = (v24)(v19, v12);
  v34 = (*(*v2 + 352))(v33);
  v36 = v35;
  if ((~v20 & 0xF000000000000007) == 0)
  {
    v37 = v34;

    v183 = 0;
    v184 = 0xE000000000000000;
    _StringGuts.grow(_:)(64);
    v38._countAndFlagsBits = 0x632D657275636573;
    v38._object = 0xED00006769666E6FLL;
    String.append(_:)(v38);
    v39._countAndFlagsBits = 0xD000000000000012;
    v39._object = 0x800000010043F720;
    String.append(_:)(v39);
    v40._countAndFlagsBits = v174;
    v40._object = v23;
    String.append(_:)(v40);

    v41._countAndFlagsBits = 2112800;
    v41._object = 0xE300000000000000;
    String.append(_:)(v41);
    v42._countAndFlagsBits = v37;
    v42._object = v36;
    String.append(_:)(v42);

    v43._countAndFlagsBits = 8236;
    v43._object = 0xE200000000000000;
    String.append(_:)(v43);
    v44._countAndFlagsBits = v173;
    v44._object = v176;
    String.append(_:)(v44);

    v45._countAndFlagsBits = 0x2C65757274203D20;
    v45._object = 0xE900000000000020;
    String.append(_:)(v45);
    v46._countAndFlagsBits = v171;
    v46._object = v181;
    String.append(_:)(v46);

    v47._object = 0xED000020646E6120;
    v47._countAndFlagsBits = 0x2C65757274203D20;
    String.append(_:)(v47);
    v48._countAndFlagsBits = v170;
    v48._object = v175;
    String.append(_:)(v48);

    v49._countAndFlagsBits = 0x65757274203D20;
    v49._object = 0xE700000000000000;
    String.append(_:)(v49);
    (*(*v2 + 336))(0x632D657275636573, 0xED00006769666E6FLL, 0, 0, v183, v184, 2);
  }

  v142 = v30;
  v154 = v29;
  v144 = v34;
  v157 = v32;
  v161 = v35;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v183 = v20;
  sub_1000039E8(&qword_1004ABD38, &unk_1003F8E50);
  sub_1001E9608();
  v51 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v53 = v52;
  v143 = v23;
  type metadata accessor for SecureConfigParameters();
  v54 = *(*v2 + 168);
  v141 = v2;
  v54();
  v55 = static SecureConfigParameters.decode(parametersJson:securityPolicy:)();
  sub_100031928(v51, v53);

  result = static SecureConfigParameters.Keys.allCases.getter();
  v167 = *(result + 16);
  if (!v167)
  {

    goto LABEL_64;
  }

  v163 = v55;
  v139 = 0;
  v57 = 0;
  v58 = v169;
  v59 = (*(v58 + 80) + 32) & ~*(v58 + 80);
  v168 = result;
  v166 = result + v59;
  v164 = v169 + 16;
  v165 = v169 + 88;
  v140 = enum case for SecureConfigParameters.Keys.internalRequestOptionsAllowed(_:);
  v133 = enum case for SecureConfigParameters.Keys.cloudboard_isProxy(_:);
  v130 = " parameters with error: ";
  v132 = enum case for SecureConfigParameters.Keys.cloudAttestationRoutingHint(_:);
  v131 = enum case for SecureConfigParameters.Keys.cloudAttestationRackId(_:);
  v129 = "rs, periods, and hyphens";
  v136 = (v155 + 8);
  v60 = (v156 + 8);
  v137 = "eeds to be updated";
  v156 = "false unless in a VM";
  v155 = " must be set to true";
  *&v56 = 136315138;
  v128 = v56;
  v61 = v141;
  v62 = v181;
  while (v57 < *(v168 + 16))
  {
    v63 = *(v58 + 16);
    v64 = v182;
    v63(v182, v166 + *(v58 + 72) * v57, v12);
    v65 = v180;
    v63(v180, v64, v12);
    v66 = (*(v58 + 88))(v65, v12);
    if (v66 == v179)
    {
      v67 = SecureConfigParameters.logPolicyPath.getter();
      v68 = (*(*v61 + 344))(v67);

      if ((v68 & 1) == 0)
      {
        v185 = 0;
        v186 = 0xE000000000000000;
        _StringGuts.grow(_:)(20);
        v69 = v143;

        v70 = v174;
        v185 = v174;
        v186 = v69;
        v71._countAndFlagsBits = 0xD000000000000010;
        v71._object = (v155 | 0x8000000000000000);
        String.append(_:)(v71);
        v72._countAndFlagsBits = v144;
        v72._object = v161;
        String.append(_:)(v72);
        v73 = v185;
        v74 = v186;
        v75 = *(*v61 + 336);
        v76 = v70;
        v58 = v169;
LABEL_14:
        v80 = v69;
        v62 = v181;
        v75(v76, v80, 0x632D657275636573, 0xED00006769666E6FLL, v73, v74, 2);
LABEL_15:
      }
    }

    else
    {
      if (v66 == v172)
      {
        v77 = SecureConfigParameters.metricsFilteringEnforced.getter();
        if (v77 != 2 && (v77 & 1) != 0)
        {
          goto LABEL_16;
        }

        v185 = 0;
        v186 = 0xE000000000000000;
        _StringGuts.grow(_:)(22);
        v69 = v176;

        v78 = v173;
        v185 = v173;
        v186 = v69;
        v79._object = (v156 | 0x8000000000000000);
        v79._countAndFlagsBits = 0xD000000000000014;
        String.append(_:)(v79);
        v73 = v185;
        v74 = v186;
        v75 = *(*v61 + 336);
        v76 = v78;
        goto LABEL_14;
      }

      if (v66 == v162)
      {
        v81 = SecureConfigParameters.logFilteringEnforced.getter();
        if (v81 != 2 && (v81 & 1) != 0)
        {
          goto LABEL_16;
        }

        v185 = 0;
        v186 = 0xE000000000000000;
        _StringGuts.grow(_:)(22);

        v82 = v171;
        v185 = v171;
        v186 = v62;
        v83._object = (v156 | 0x8000000000000000);
        v83._countAndFlagsBits = 0xD000000000000014;
        String.append(_:)(v83);
        (*(*v61 + 336))(v82, v62, 0x632D657275636573, 0xED00006769666E6FLL, v185, v186, 2);
        goto LABEL_15;
      }

      v84 = v160;
      if (v66 == v159)
      {
        v85 = SecureConfigParameters.crashRedactionEnabled.getter();
        if (v85 != 2 && (v85 & 1) != 0)
        {
          goto LABEL_16;
        }

        v185 = 0;
        v186 = 0xE000000000000000;
        _StringGuts.grow(_:)(22);
        v86 = v175;

        v87 = v170;
        v185 = v170;
        v186 = v86;
        v88._object = (v156 | 0x8000000000000000);
        v88._countAndFlagsBits = 0xD000000000000014;
        String.append(_:)(v88);
        v89 = v87;
        v58 = v169;
        (*(*v61 + 336))(v89, v86, 0x632D657275636573, 0xED00006769666E6FLL, v185, v186, 2);
        goto LABEL_15;
      }

      if (v66 == v140)
      {
        (*(*v61 + 144))();
        v90 = Logger.logObject.getter();
        v91 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          *v92 = 0;
          _os_log_impl(&_mh_execute_header, v90, v91, "com.apple.tie.internalRequestOptionsAllowed is deprecated, please replace with com.apple.tie.allowNonProdExceptionOptions moving forward.", v92, 2u);
          v62 = v181;
        }

        (*v136)(v84, v153);
      }

      else if (v66 != v152)
      {
        if (v66 == v133)
        {
          v93 = SecureConfigParameters.cloudboard_isProxy.getter();
          (*(*v61 + 576))(v93);
LABEL_34:
          result = v177(v182, v12);
          v58 = v169;
          goto LABEL_17;
        }

        if (v66 == v148)
        {
          v94 = SecureConfigParameters.cryptexAppIdentifiers.getter();
          if (v94)
          {
            v95 = *(v94 + 16);
            v127[1] = v94;
            if (!v95)
            {
LABEL_59:

              result = v177(v182, v12);
              v61 = v141;
LABEL_60:
              v62 = v181;
              v58 = v169;
              goto LABEL_17;
            }

            v96 = (v94 + 40);
            while (2)
            {
              v97 = *(v96 - 1);
              v101 = *v96;
              if ((*v96 & 0x2000000000000000) != 0)
              {
                v102 = (*v96 >> 56) & 0xF;
              }

              else
              {
                v102 = v97 & 0xFFFFFFFFFFFFLL;
              }

              if (v102)
              {
                v135 = v95;
                v103 = v149;
                CharacterSet.init(charactersIn:)();
                v104 = v150;
                static CharacterSet.alphanumerics.getter();
                CharacterSet.union(_:)();
                v105 = v151;
                v138 = v97;
                v106 = *v60;
                (*v60)(v104, v151);
                v134 = v106;
                v107 = v106(v103, v105);
                v108 = v158;
                __chkstk_darwin(v107);
                v127[-2] = v108;
                v109 = v139;
                v110 = sub_1001DE260(sub_1001EB3CC, &v127[-4], v138, v101);
                v139 = v109;
                if (v110)
                {

                  v134(v108, v105);
                  v95 = v135;
LABEL_41:
                  v96 += 2;
                  if (!--v95)
                  {
                    goto LABEL_59;
                  }

                  continue;
                }

                v134(v108, v105);
                v95 = v135;
                v97 = v138;
              }

              break;
            }

            v185 = 0;
            v186 = 0xE000000000000000;
            _StringGuts.grow(_:)(91);
            v98._countAndFlagsBits = 39;
            v98._object = 0xE100000000000000;
            String.append(_:)(v98);
            v99._countAndFlagsBits = v97;
            v99._object = v101;
            String.append(_:)(v99);

            v100._countAndFlagsBits = 0xD000000000000058;
            v100._object = (v137 | 0x8000000000000000);
            String.append(_:)(v100);
            (*(*v141 + 336))(v142, v157, 0x632D657275636573, 0xED00006769666E6FLL, v185, v186, 11);

            goto LABEL_41;
          }

          goto LABEL_34;
        }

        if (v66 == v132)
        {
          goto LABEL_34;
        }

        v58 = v169;
        if (v66 != v131)
        {
          if (v66 != v147)
          {
            v121 = v182;
            v122 = SecureConfigParameters.Keys.rawValue.getter();
            (*(*v61 + 336))(v122);

            v123 = v177;
            v177(v121, v12);
            result = v123(v180, v12);
            goto LABEL_17;
          }

          v111 = SecureConfigParameters.research_disableAppleInfrastrucutureEnforcement.getter();
          if (v111 != 2 && (v111 & 1) != 0)
          {
            if (qword_1004A9DF0 != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v112 = *(*static RealComputer.shared + 288);

            v114 = v112(v113);

            if ((v114 & 1) == 0)
            {
              v185 = 0;
              v186 = 0xE000000000000000;
              _StringGuts.grow(_:)(38);
              v124 = v154;

              v125 = v146;
              v185 = v146;
              v186 = v124;
              v126._countAndFlagsBits = 0xD000000000000024;
              v126._object = (v129 | 0x8000000000000000);
              String.append(_:)(v126);
              (*(*v61 + 336))(v125, v124, 0x632D657275636573, 0xED00006769666E6FLL, v185, v186, 8);

              result = v177(v182, v12);
              v62 = v181;
              goto LABEL_17;
            }

            v116 = v145;
            (*(*v61 + 144))(v115);

            v117 = Logger.logObject.getter();
            v118 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v117, v118))
            {
              v119 = swift_slowAlloc();
              v120 = swift_slowAlloc();
              v185 = v120;
              *v119 = v128;
              *(v119 + 4) = sub_1000026C0(v146, v154, &v185);
              _os_log_impl(&_mh_execute_header, v117, v118, "Running in a VM, so %s is valid.", v119, 0xCu);
              sub_100003C3C(v120);
            }

            (*v136)(v116, v153);
            result = v177(v182, v12);
            goto LABEL_60;
          }
        }
      }
    }

LABEL_16:
    result = v177(v182, v12);
LABEL_17:
    if (++v57 == v167)
    {

LABEL_64:
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001E89D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, void, uint64_t))
{
  v12 = swift_allocObject();
  a6(a1, a2, a3, a4 & 1, a5);
  return v12;
}

uint64_t CarryValidator.init(policy:requestedVersion:config:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *__src)
{
  memcpy(__dst, __src, 0x2D8uLL);
  v14 = OBJC_IVAR____TtC10DarwinInit14CarryValidator_carryPreferencesRules;
  sub_1000039E8(&qword_1004ABD20, &qword_1003F8E28);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100376F00;
  sub_1000039E8(&qword_1004ABD28, &qword_1003F8E30);
  v6 = swift_allocObject();
  *(v6 + 32) = 0xD00000000000001CLL;
  *(v6 + 16) = xmmword_1003F8DF0;
  *(v6 + 40) = 0x800000010043EDD0;
  *(v6 + 48) = &_swiftEmptySetSingleton;
  *(v6 + 56) = 0xD000000000000022;
  *(v6 + 64) = 0x800000010043EDF0;
  *(v6 + 72) = &_swiftEmptySetSingleton;
  *(v6 + 80) = 0xD000000000000029;
  *(v6 + 88) = 0x800000010043EE20;
  *(v6 + 96) = &_swiftEmptySetSingleton;
  *(v6 + 104) = 0xD000000000000011;
  *(v6 + 112) = 0x800000010043EE50;
  *(v6 + 120) = &_swiftEmptySetSingleton;
  *(v6 + 128) = 0xD000000000000027;
  *(v6 + 136) = 0x800000010043EE70;
  *(v6 + 144) = &_swiftEmptySetSingleton;
  *(v6 + 152) = 0xD000000000000021;
  *(v6 + 160) = 0x800000010043EEA0;
  *(v6 + 168) = &_swiftEmptySetSingleton;
  *(v6 + 176) = 0xD000000000000023;
  *(v6 + 184) = 0x800000010043EED0;
  *(v6 + 192) = &_swiftEmptySetSingleton;
  *(v6 + 200) = 0xD00000000000001DLL;
  *(v6 + 208) = 0x800000010043EF00;
  *(v6 + 216) = &_swiftEmptySetSingleton;
  *(v6 + 224) = 0xD00000000000001ELL;
  *(v6 + 232) = 0x800000010043EF20;
  *(v6 + 240) = &_swiftEmptySetSingleton;
  *(v6 + 248) = 0xD00000000000001DLL;
  *(v6 + 256) = 0x800000010043EF40;
  *(v6 + 264) = &_swiftEmptySetSingleton;
  *(v6 + 272) = 0xD00000000000001DLL;
  *(v6 + 280) = 0x800000010043EF60;
  *(v6 + 288) = &_swiftEmptySetSingleton;
  *(v6 + 296) = 0xD000000000000023;
  *(v6 + 304) = 0x800000010043EF80;
  *(v6 + 312) = &_swiftEmptySetSingleton;
  *(v6 + 320) = 0xD000000000000025;
  *(v6 + 328) = 0x800000010043EFB0;
  *(v6 + 336) = &_swiftEmptySetSingleton;
  *(v6 + 344) = 0xD00000000000002FLL;
  *(v6 + 352) = 0x800000010043EFE0;
  *(v6 + 360) = &_swiftEmptySetSingleton;
  *(v6 + 368) = 0xD00000000000002CLL;
  *(v6 + 376) = 0x800000010043F010;
  *(v6 + 384) = &_swiftEmptySetSingleton;
  *(v6 + 488) = 0xD000000000000013;
  *(v6 + 496) = 0x800000010043F100;
  *(v6 + 392) = 0xD00000000000002BLL;
  *(v6 + 400) = 0x800000010043F040;
  *(v6 + 408) = &_swiftEmptySetSingleton;
  *(v6 + 416) = 0xD00000000000002ELL;
  *(v6 + 424) = 0x800000010043F070;
  *(v6 + 432) = &_swiftEmptySetSingleton;
  *(v6 + 440) = 0xD000000000000024;
  *(v6 + 448) = 0x800000010043F0A0;
  *(v6 + 456) = &_swiftEmptySetSingleton;
  *(v6 + 464) = 0xD000000000000023;
  *(v6 + 472) = 0x800000010043F0D0;
  *(v6 + 480) = &_swiftEmptySetSingleton;
  *(v6 + 504) = &_swiftEmptySetSingleton;
  *(v6 + 512) = 0xD00000000000001ELL;
  *(v6 + 520) = 0x800000010043F120;
  *(v6 + 528) = &_swiftEmptySetSingleton;
  *(v6 + 536) = 0xD00000000000001DLL;
  *(v6 + 544) = 0x800000010043F140;
  *(v6 + 552) = &_swiftEmptySetSingleton;
  *(v6 + 560) = 0xD00000000000002BLL;
  *(v6 + 568) = 0x800000010043F160;
  *(v6 + 576) = &_swiftEmptySetSingleton;
  *(v6 + 584) = 0xD000000000000012;
  *(v6 + 592) = 0x800000010043FB70;
  v7 = sub_1001E9470(&off_100485BF8);
  sub_1001E968C(&unk_100485C18);
  *(v6 + 600) = v7;
  v8 = sub_1001879E4(v6);
  swift_setDeallocating();
  sub_1000039E8(&qword_1004ABD30, &qword_1003F8E38);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v5 + 32) = v8;
  *(v5 + 40) = 3;
  *(v5 + 48) = 0;
  *(v5 + 56) = xmmword_1003F8DD0;
  *(v5 + 72) = 259;
  v9 = swift_allocObject();
  *(v9 + 40) = 0x800000010043EDD0;
  *(v9 + 48) = &_swiftEmptySetSingleton;
  *(v9 + 56) = 0xD000000000000022;
  *(v9 + 64) = 0x800000010043EDF0;
  *(v9 + 104) = 0xD000000000000027;
  *(v9 + 112) = 0x800000010043EE70;
  *(v9 + 32) = 0xD00000000000001CLL;
  *(v9 + 16) = xmmword_1003F8E00;
  *(v9 + 72) = &_swiftEmptySetSingleton;
  *(v9 + 80) = 0xD000000000000011;
  *(v9 + 88) = 0x800000010043EE50;
  *(v9 + 96) = &_swiftEmptySetSingleton;
  *(v9 + 120) = &_swiftEmptySetSingleton;
  *(v9 + 128) = 0xD000000000000021;
  *(v9 + 136) = 0x800000010043EEA0;
  *(v9 + 144) = &_swiftEmptySetSingleton;
  *(v9 + 152) = 0xD000000000000023;
  *(v9 + 160) = 0x800000010043EED0;
  *(v9 + 168) = &_swiftEmptySetSingleton;
  *(v9 + 176) = 0xD00000000000001DLL;
  *(v9 + 184) = 0x800000010043EF00;
  *(v9 + 192) = &_swiftEmptySetSingleton;
  *(v9 + 200) = 0xD00000000000001ELL;
  *(v9 + 208) = 0x800000010043EF20;
  *(v9 + 216) = &_swiftEmptySetSingleton;
  *(v9 + 224) = 0xD00000000000001DLL;
  *(v9 + 232) = 0x800000010043EF40;
  *(v9 + 240) = &_swiftEmptySetSingleton;
  *(v9 + 248) = 0xD00000000000001DLL;
  *(v9 + 256) = 0x800000010043EF60;
  *(v9 + 264) = &_swiftEmptySetSingleton;
  *(v9 + 272) = 0xD000000000000023;
  *(v9 + 280) = 0x800000010043EF80;
  *(v9 + 288) = &_swiftEmptySetSingleton;
  *(v9 + 296) = 0xD000000000000025;
  *(v9 + 304) = 0x800000010043EFB0;
  *(v9 + 312) = &_swiftEmptySetSingleton;
  *(v9 + 320) = 0xD00000000000002FLL;
  *(v9 + 328) = 0x800000010043EFE0;
  *(v9 + 336) = &_swiftEmptySetSingleton;
  *(v9 + 344) = 0xD00000000000002CLL;
  *(v9 + 352) = 0x800000010043F010;
  *(v9 + 360) = &_swiftEmptySetSingleton;
  *(v9 + 368) = 0xD00000000000002BLL;
  *(v9 + 376) = 0x800000010043F040;
  *(v9 + 384) = &_swiftEmptySetSingleton;
  *(v9 + 392) = 0xD00000000000002ELL;
  *(v9 + 400) = 0x800000010043F070;
  *(v9 + 408) = &_swiftEmptySetSingleton;
  *(v9 + 416) = 0xD000000000000024;
  *(v9 + 424) = 0x800000010043F0A0;
  *(v9 + 432) = &_swiftEmptySetSingleton;
  *(v9 + 440) = 0xD000000000000023;
  *(v9 + 448) = 0x800000010043F0D0;
  *(v9 + 456) = &_swiftEmptySetSingleton;
  *(v9 + 464) = 0xD00000000000001ELL;
  *(v9 + 472) = 0x800000010043F120;
  *(v9 + 480) = &_swiftEmptySetSingleton;
  *(v9 + 488) = 0xD00000000000001DLL;
  *(v9 + 496) = 0x800000010043F140;
  *(v9 + 504) = &_swiftEmptySetSingleton;
  *(v9 + 512) = 0xD00000000000002BLL;
  *(v9 + 520) = 0x800000010043F160;
  v10 = sub_1001E9470(&off_100485C28);
  swift_arrayDestroy();
  *(v9 + 528) = v10;
  *(v9 + 536) = 0xD000000000000012;
  *(v9 + 544) = 0x800000010043FB70;
  v11 = sub_1001E9470(&off_100485C78);
  sub_1001E968C(&unk_100485C98);
  *(v9 + 552) = v11;
  v12 = sub_1001879E4(v9);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v5 + 80) = v12;
  *(v5 + 88) = 9;
  *(v5 + 96) = 0;
  *(v15 + v14) = v5;
  CustomerValidator.init(policy:requestedVersion:config:)(a1, a2, a3, a4 & 1, __dst);
  return v15;
}

uint64_t CarryValidator.deinit()
{
  v1 = OBJC_IVAR____TtC10DarwinInit17CustomerValidator_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  memcpy(v4, (v0 + OBJC_IVAR____TtC10DarwinInit17CustomerValidator_config), 0x2D8uLL);
  sub_1001D711C(v4);

  return v0;
}

uint64_t CarryValidator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10DarwinInit17CustomerValidator_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  memcpy(v4, (v0 + OBJC_IVAR____TtC10DarwinInit17CustomerValidator_config), 0x2D8uLL);
  sub_1001D711C(v4);

  return swift_deallocClassInstance();
}

void *sub_1001E9218(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000039E8(&qword_1004AA790, &qword_1003F3E60);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t _s10DarwinInit30PrivateCloudOSValidatorVersionO8rawValueACSgSi_tcfC_0(unint64_t result)
{
  if (result >= 0xC)
  {
    return 12;
  }

  return result;
}

unint64_t sub_1001E941C()
{
  result = qword_1004ABD18;
  if (!qword_1004ABD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABD18);
  }

  return result;
}

Swift::Int sub_1001E9470(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000039E8(&qword_1004AC710, &qword_1003F9298);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v11 = (v6 + 16 * v4);
      v13 = *v11;
      v12 = v11[1];
      Hasher.init(_seed:)();
      UTF8String.hash(into:)();
      result = Hasher._finalize()();
      v15 = ~(-1 << *(v3 + 32));
      for (i = result & v15; ; i = (i + 1) & v15)
      {
        v17 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v17) == 0)
        {
          break;
        }

        result = sub_100305028(v13, v12, *(*(v3 + 48) + 16 * i), *(*(v3 + 48) + 16 * i + 8));
        if (result)
        {
          goto LABEL_5;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v17;
      v7 = (*(v3 + 48) + 16 * i);
      *v7 = v13;
      v7[1] = v12;
      v8 = *(v3 + 16);
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (!v9)
      {
        *(v3 + 16) = v10;

LABEL_5:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

unint64_t sub_1001E9608()
{
  result = qword_1004ABD40;
  if (!qword_1004ABD40)
  {
    sub_100003A94(&qword_1004ABD38, &unk_1003F8E50);
    sub_1001B54D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABD40);
  }

  return result;
}

unint64_t sub_1001E96E4()
{
  result = qword_1004ABD48;
  if (!qword_1004ABD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABD48);
  }

  return result;
}

unint64_t sub_1001E9780()
{
  result = qword_1004ABD60;
  if (!qword_1004ABD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABD60);
  }

  return result;
}

uint64_t sub_1001E9860@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1001E98AC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 176);

  return v4(v2, v3);
}

uint64_t sub_1001E9914@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  return result;
}

uint64_t sub_1001E9A14(void *__src, uint64_t *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v4 = *a2;
  memcpy(v8, __src, sizeof(v8));
  v5 = *(*v4 + 224);
  sub_1001D78FC(__dst, v7);
  return v5(v8);
}

uint64_t sub_1001E9AA0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 240))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1001E9B38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 264))();
  *a2 = result;
  return result;
}

uint64_t sub_1001E9BDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 288))();
  *a2 = result;
  return result;
}

uint64_t sub_1001E9C30(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 296);

  return v2(v3);
}

__n128 sub_1001E9CC8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1001E9CDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001E9D18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001E9D60(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 17) = a2;
  return result;
}

uint64_t dispatch thunk of PrivateCloudOSValidator.validate(diavloConfig:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 152);
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v4;
  return v3(v7, a2);
}

uint64_t dispatch thunk of PrivateCloudOSValidator.validate(installConfig:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 168);
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a1[3];
  v8[2] = a1[2];
  v8[3] = v5;
  v6 = a1[5];
  v8[4] = a1[4];
  v8[5] = v6;
  return v3(v8, a2);
}

uint64_t dispatch thunk of PrivateCloudOSValidator.validate(userConfig:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 112);
  v4 = *(a3 + 208);
  v5 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v5;
  v6 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v6;
  v7 = *(a1 + 80);
  v9[4] = *(a1 + 64);
  v9[5] = v7;
  v9[6] = *(a1 + 96);
  v10 = v3;
  return v4(v9, a2);
}

uint64_t dispatch thunk of PrivateCloudOSValidator.validate(tailspinConfig:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 64);
  v4 = *(a3 + 448);
  v5 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v5;
  v6 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v6;
  v9 = v3;
  return v4(v8, a2);
}

uint64_t sub_1001EA378(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t dispatch thunk of CustomerValidator.validate(diavloConfig:)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*v1 + 392);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

uint64_t dispatch thunk of CustomerValidator.validate(installConfig:)(_OWORD *a1)
{
  v2 = *(*v1 + 400);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a1[3];
  v7[2] = a1[2];
  v7[3] = v4;
  v5 = a1[5];
  v7[4] = a1[4];
  v7[5] = v5;
  return v2(v7);
}

uint64_t dispatch thunk of CustomerValidator.validate(userConfig:)(uint64_t a1)
{
  v2 = *(a1 + 112);
  v3 = *(*v1 + 440);
  v4 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v4;
  v5 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v5;
  v6 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v6;
  v8[6] = *(a1 + 96);
  v9 = v2;
  return v3(v8);
}

uint64_t dispatch thunk of CustomerValidator.validate(tailspinConfig:)(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(*v1 + 464);
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  v5 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v5;
  v8 = v2;
  return v3(v7);
}

Swift::Int sub_1001EB25C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000039E8(&qword_1004A6DD0, qword_100376A20);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t Config.FeatureFlag.attributeName.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t Config.FeatureFlag.attributeName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t UserManager.User.esc.getter()
{
  v1 = *(v0 + 88);
  sub_1001EB4BC(v1, *(v0 + 96));
  return v1;
}

double sub_1001EB4BC(uint64_t a1, uint64_t a2)
{
  if (a1 != 1)
  {
  }

  return result;
}

uint64_t UserManager.User.esc.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1001EB53C(*(v2 + 88));
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t sub_1001EB53C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t UserManager.User.memento.getter()
{
  v1 = v0[13];
  sub_1001EB5F0(v1, v0[14], v0[15], v0[16]);
  return v1;
}

double sub_1001EB5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != 1)
  {
  }

  return result;
}

uint64_t UserManager.User.memento.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1001EB694(v4[13]);
  v4[13] = a1;
  v4[14] = a2;
  v4[15] = a3;
  v4[16] = a4;
  return result;
}

uint64_t sub_1001EB694(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

__n128 UserManager.User.init(name:uid:gid:password:isAdmin:sshAuthorizedKeys:passwordlessSudo:plaintextPassword:esc:memento:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, __int128 a12, __int128 a13, __n128 a14, uint64_t a15, uint64_t a16)
{
  result = a14;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 20) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  *(a9 + 64) = a11;
  *(a9 + 72) = a12;
  *(a9 + 88) = a13;
  *(a9 + 104) = a14;
  *(a9 + 120) = a15;
  *(a9 + 128) = a16;
  return result;
}

BOOL UserManager.userExists(user:)(void *a1)
{
  v1 = String.utf8CString.getter();
  v2 = getpwnam((v1 + 32));

  return v2 != 0;
}

uint64_t UserManager.setSSHAuthorizedKeys(for:)(uint64_t a1)
{
  v69 = type metadata accessor for FilePath();
  v2 = *(v69 - 8);
  v3 = __chkstk_darwin(v69);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v64 - v7;
  v9 = __chkstk_darwin(v6);
  __chkstk_darwin(v9);
  v68 = &v64 - v11;
  v12 = *(a1 + 56);
  if (!v12)
  {
    return 1;
  }

  v67 = v10;
  v64 = *(a1 + 48);
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v65 = v5;
  v13 = type metadata accessor for Logger();
  sub_1000270B4(v13, qword_1004B00F8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Creating .ssh/authorized_keys", v16, 2u);
  }

  v17 = *a1;
  v18 = *(a1 + 8);
  v19 = String._bridgeToObjectiveC()();
  v20 = NSHomeDirectoryForUser(v19);

  if (!v20)
  {
    sub_1001EC8B4(a1, v70);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.fault.getter();
    sub_1001EC8EC(a1);
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v70[0] = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_1000026C0(v17, v18, v70);
      _os_log_impl(&_mh_execute_header, v35, v36, "failed to set SSH keys for user %s, home directory does not exist.", v37, 0xCu);
      sub_100003C3C(v38);
    }

    return 0;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = v68;
  FilePath.init(_:)();
  v66 = v2;
  v22 = *(v2 + 16);
  v22(v8, v21, v69);
  FilePath.appending(_:)();
  FilePath.createDirectory(permissions:intermediateDirectories:)(448, 0);
  v23 = *(a1 + 16);
  v24 = *(a1 + 20);
  v25 = v67;
  FilePath.chown(owner:group:)(v23, v24);
  if (v26)
  {
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v70[0] = v30;
      *v29 = 136315138;
      swift_getErrorValue();
      v31 = Error.localizedDescription.getter();
      v33 = sub_1000026C0(v31, v32, v70);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "failed to chown new ssh directory with error %s", v29, 0xCu);
      sub_100003C3C(v30);
    }

    v39 = *(v66 + 8);
    v40 = v69;
    v39(v67, v69);
    v39(v68, v40);
    return 0;
  }

  v22(v8, v25, v69);
  v41 = v65;
  FilePath.appending(_:)();
  v42._countAndFlagsBits = v64;
  v42._object = v12;
  FilePath.save(_:append:)(v42, 0);
  if (v43)
  {
    swift_errorRetain();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.fault.getter();

    v46 = os_log_type_enabled(v44, v45);
    v47 = v66;
    if (v46)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v70[0] = v49;
      *v48 = 136315138;
      swift_getErrorValue();
      v50 = Error.localizedDescription.getter();
      v52 = v41;
      v53 = sub_1000026C0(v50, v51, v70);

      *(v48 + 4) = v53;
      v54 = "write of authorized_key failed with error %s";
LABEL_23:
      _os_log_impl(&_mh_execute_header, v44, v45, v54, v48, 0xCu);
      sub_100003C3C(v49);

      v59 = *(v47 + 8);
      v60 = v52;
LABEL_25:
      v61 = v69;
      v59(v60, v69);
      v59(v67, v61);
      v59(v68, v61);
      return 0;
    }

    goto LABEL_24;
  }

  FilePath.chown(owner:group:)(v23, v24);
  v47 = v66;
  if (v55)
  {
    swift_errorRetain();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v70[0] = v49;
      *v48 = 136315138;
      swift_getErrorValue();
      v56 = Error.localizedDescription.getter();
      v52 = v41;
      v58 = sub_1000026C0(v56, v57, v70);

      *(v48 + 4) = v58;
      v54 = "failed to chown new authorized_keys with error %s";
      goto LABEL_23;
    }

LABEL_24:

    v59 = *(v47 + 8);
    v60 = v41;
    goto LABEL_25;
  }

  FilePath.chmod(permissions:)(384);
  v62 = *(v47 + 8);
  v63 = v69;
  v62(v41, v69);
  v62(v67, v63);
  v62(v68, v63);
  return 1;
}

uint64_t UserManager.setup(user:)(uint64_t a1)
{
  v2 = v1;
  v4 = v1[3];
  v5 = v1[4];
  sub_10000E2A8(v1, v4);
  if (!(*(v5 + 8))(v4, v5))
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000270B4(v27, qword_1004B00F8);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_32;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "darwin-init failed to create new user.";
    goto LABEL_31;
  }

  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = String.utf8CString.getter();
  v9 = getpwnam((v8 + 32));

  if (!v9)
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_1000270B4(v32, qword_1004B00F8);
    sub_1001EC8B4(a1, v42);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    sub_1001EC8EC(a1);
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_38;
    }

    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v42[0] = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_1000026C0(v7, v6, v42);
    v37 = "darwin-init can only modify existing user accounts on this platform and user %s does not exist.";
    goto LABEL_37;
  }

  if ((UserManager.setSSHAuthorizedKeys(for:)(a1) & 1) == 0)
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_1000270B4(v38, qword_1004B00F8);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_32;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "darwin-init failed to get setSSHAuthorizedKeys.";
    goto LABEL_31;
  }

  if (*(a1 + 64) & 1) == 0 || (v10 = v1[3], v11 = v1[4], sub_10000E2A8(v1, v10), ((*(v11 + 48))(v10, v11)))
  {
    v12 = v1[3];
    v13 = v1[4];
    sub_10000E2A8(v1, v12);
    if (!(*(v13 + 8))(v12, v13))
    {
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_1000270B4(v14, qword_1004B00F8);
      sub_1001EC8B4(a1, v42);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.info.getter();
      sub_1001EC8EC(a1);
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v42[0] = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_1000026C0(v7, v6, v42);
        _os_log_impl(&_mh_execute_header, v15, v16, "SSH access to %s cannot be controlled using ESC and AppleConnect on macOS", v17, 0xCu);
        sub_100003C3C(v18);
      }
    }

    v19 = *(a1 + 88);
    v20 = *(a1 + 96);
    if (v19 == 1 && (v21 = v2[3], v22 = v2[4], sub_10000E2A8(v2, v21), ((*(v22 + 144))(v21, v22) & 1) == 0) && (v23 = v2[3], v24 = v2[4], sub_10000E2A8(v2, v23), ((*(v24 + 136))(v23, v24) & 1) == 0) || (_s10DarwinInit16EngineeringSSHCAO16restrictAccessTo7account6configSbSS_AC6ConfigVSgtFZ_0(v7, v6, v19, v20) & 1) != 0)
    {
      v25 = *(a1 + 104);
      if (v25 == 1 || (_s10DarwinInit10MementoSSHO5setup3for6configSbSS_AC6ConfigVtFZ_0(v7, v6, v25, *(a1 + 112), *(a1 + 120), *(a1 + 128)) & 1) != 0)
      {
        return 1;
      }

      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_1000270B4(v41, qword_1004B00F8);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v28, v29))
      {
        goto LABEL_32;
      }

      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = "failed to setup memento ssh";
      goto LABEL_31;
    }

    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_1000270B4(v39, qword_1004B00F8);
    sub_1001EC8B4(a1, v42);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    sub_1001EC8EC(a1);
    if (!os_log_type_enabled(v33, v34))
    {
LABEL_38:

      return 0;
    }

    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v42[0] = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_1000026C0(v7, v6, v42);
    v37 = "darwin-init failed to restrict ESC SSH access for %s";
LABEL_37:
    _os_log_impl(&_mh_execute_header, v33, v34, v37, v35, 0xCu);
    sub_100003C3C(v36);

    goto LABEL_38;
  }

  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_1000270B4(v40, qword_1004B00F8);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v28, v29))
  {
    goto LABEL_32;
  }

  v30 = swift_slowAlloc();
  *v30 = 0;
  v31 = "darwin-init failed to configurePasswordlessSudo.";
LABEL_31:
  _os_log_impl(&_mh_execute_header, v28, v29, v31, v30, 2u);

LABEL_32:

  return 0;
}

uint64_t sub_1001EC91C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1001EC964(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1001EC9BC(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1001EC9F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_1001ECA38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static Logger.addHook(_:forward:hook:)(unsigned __int8 a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  *(v8 + 32) = a2;
  *(v8 + 40) = v7;
  v15[4] = sub_1001ECD80;
  v15[5] = v8;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_1001ECD90;
  v15[3] = &unk_10048C8A8;
  v9 = _Block_copy(v15);

  v10 = os_log_set_hook();
  _Block_release(v9);
  if (v10)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v10 = sub_1001ECE5C;
  }

  else
  {
    v11 = 0;
  }

  swift_beginAccess();
  v12 = *(v7 + 16);
  v13 = *(v7 + 24);
  *(v7 + 16) = v10;
  *(v7 + 24) = v11;
  sub_100031B5C(v12, v13);
}

uint64_t sub_1001ECC3C()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1001ECC7C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, char a5, uint64_t a6)
{
  v11 = os_log_copy_decorated_message();
  if (v11)
  {
    v12 = v11;
    a3(a1, v11);
    free(v12);
    if (a5)
    {
      swift_beginAccess();
      v13 = *(a6 + 16);
      if (v13)
      {
        v14 = *(a6 + 24);

        v13(a1, a2);
        sub_100031B5C(v13, v14);
      }
    }
  }
}

uint64_t sub_1001ECD40()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001ECD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);

  v6(a2, a3);
}

uint64_t sub_1001ECDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
}

uint64_t sub_1001ECE24()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t _s10DarwinInit13NetworkConfigO12getProtocols6configSaySSGSo15CFDictionaryRefaSg_tFZ_0(uint64_t result)
{
  if (result)
  {
    objc_opt_self();
    swift_dynamicCastObjCClassUnconditional();
    *&v1 = 0;
    result = static Dictionary._forceBridgeFromObjectiveC(_:result:)();
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Class _s10DarwinInit13NetworkConfigO03getD09interface6configSo15CFDictionaryRefaSgSS_AItFZ_0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = SCNSManagerCreate();

  inited = _sSo14SCNSManagerRefa10DarwinInitE13copyInterface4nameSo09SCNetworkfB0aSgSS_tF_0(a1, a2);
  if (!inited)
  {

    return 0;
  }

  v9 = inited;
  v47 = SCNSManagerRef.copyService(interface:netif:)(a1, a2, inited);
  if (!v47)
  {

    return 0;
  }

  v10 = sub_100061F34(_swiftEmptyArrayStorage);
  v11 = _s10DarwinInit13NetworkConfigO12getProtocols6configSaySSGSo15CFDictionaryRefaSg_tFZ_0(a3);
  v12 = v11;
  v46 = *(v11 + 16);
  if (!v46)
  {

    if (v10[2])
    {
      goto LABEL_28;
    }

LABEL_31:

    if (qword_1004A9F20 != -1)
    {
LABEL_39:
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_1000270B4(v38, qword_1004B00F8);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v49 = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_1000026C0(a1, a2, &v49);
      _os_log_impl(&_mh_execute_header, v39, v40, "No config found for %s and its protocols", v41, 0xCu);
      sub_100003C3C(v42);
    }

    return 0;
  }

  v44 = v7;
  v45 = v9;
  v9 = 0;
  v7 = (v11 + 40);
  do
  {
    if (v9 >= *(v12 + 16))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v16 = *(v7 - 1);
    v15 = *v7;

    v17 = _sSo14SCNSManagerRefa10DarwinInitE18copyProtocolEntity7service9interface5protoSo012CFDictionaryB0aSgSo011SCNSServiceB0a_S2StF_0(v47, a1, a2, v16, v15);
    if (v17)
    {
      v18 = v17;
      v19 = a2;
      a2 = a1;
      type metadata accessor for CFDictionary(0);
      *(&v50 + 1) = v20;
      *&v49 = v18;
      sub_1000279A4(&v49, v48);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = sub_100013364(v16, v15);
      v24 = v10[2];
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        goto LABEL_37;
      }

      a1 = v23;
      if (v10[3] >= v27)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v36 = v22;
          sub_10005DA68();
          v22 = v36;
          if ((a1 & 1) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_5;
        }
      }

      else
      {
        sub_10005CE24(v27, isUniquelyReferenced_nonNull_native);
        v22 = sub_100013364(v16, v15);
        if ((a1 & 1) != (v28 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      if ((a1 & 1) == 0)
      {
LABEL_20:
        v10[(v22 >> 6) + 8] |= 1 << v22;
        v33 = (v10[6] + 16 * v22);
        *v33 = v16;
        v33[1] = v15;
        sub_1000279A4(v48, (v10[7] + 32 * v22));
        v34 = v10[2];
        v26 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v26)
        {
          goto LABEL_38;
        }

        v10[2] = v35;
        goto LABEL_6;
      }

LABEL_5:
      v13 = v22;

      v14 = (v10[7] + 32 * v13);
      sub_100003C3C(v14);
      sub_1000279A4(v48, v14);
LABEL_6:
      a1 = a2;
      a2 = v19;
      goto LABEL_7;
    }

    v29 = sub_100013364(v16, v15);
    v31 = v30;

    if (v31)
    {
      v32 = swift_isUniquelyReferenced_nonNull_native();
      *&v48[0] = v10;
      if (!v32)
      {
        sub_10005DA68();
        v10 = *&v48[0];
      }

      sub_1000279A4((v10[7] + 32 * v29), &v49);
      sub_10033DFD4(v29, v10);
    }

    else
    {
      v49 = 0u;
      v50 = 0u;
    }

    sub_1001EDC44(&v49);
LABEL_7:
    v9 = (v9 + 1);
    v7 += 2;
  }

  while (v46 != v9);

  v7 = v44;
  v9 = v45;
  if (!v10[2])
  {
    goto LABEL_31;
  }

LABEL_28:
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return isa;
}

void _s10DarwinInit13NetworkConfigO03setD010retryLimit6config9interfaceSbSi_So12NSDictionaryCSgSStFZ_0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = String._bridgeToObjectiveC()();
  v10 = SCNSManagerCreate();

  inited = _sSo14SCNSManagerRefa10DarwinInitE13copyInterface4nameSo09SCNetworkfB0aSgSS_tF_0(a3, a4);
  if (inited)
  {
    v12 = inited;
    v51 = v10;
    v13 = SCNSManagerRef.copyService(interface:netif:)(a3, a4, inited);
    v50 = v12;
    v56 = a3;
    v54 = a2;
    if (v13)
    {
      v14 = v13;
LABEL_21:
      v29 = _s10DarwinInit13NetworkConfigO12getProtocols6configSaySSGSo15CFDictionaryRefaSg_tFZ_0(a2);
      v30 = 0;
      v12 = 0;
      v31 = *(v29 + 16);
      v55 = v29;
      v48 = v29 + 40;
      v52 = v31;
      v53 = v14;
      while (2)
      {
        v49 = v30;
        if (v12 == v31)
        {
LABEL_40:

          if (v49)
          {
            SCNSManagerRef.apply()();
          }
        }

        else
        {
          v32 = (v48 + 16 * v12);
          while (1)
          {
            if (v12 >= *(v55 + 16))
            {
              __break(1u);
              goto LABEL_45;
            }

            v33 = *(v32 - 1);
            v4 = *v32;

            v34 = _sSo14SCNSManagerRefa10DarwinInitE18copyProtocolEntity7service9interface5protoSo012CFDictionaryB0aSgSo011SCNSServiceB0a_S2StF_0(v14, a3, a4, v33, v4);
            if (!a2)
            {
              goto LABEL_48;
            }

            v35 = v34;
            v36 = String._bridgeToObjectiveC()();
            v37 = [a2 objectForKey:v36];

            if (!v37)
            {
              __break(1u);
LABEL_48:
              __break(1u);
              return;
            }

            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            sub_1000279A4(&v58, v59);
            type metadata accessor for CFDictionary(0);
            swift_dynamicCast();
            if (v35 || !kCFNull)
            {
              v38 = v35;
            }

            else
            {
              v38 = kCFNull;
              v35 = 0;
            }

            v39 = v35;
            v40 = CFEqual(v38, v57);
            swift_unknownObjectRelease();
            if (!v40)
            {
              break;
            }

            if (qword_1004A9F20 != -1)
            {
              swift_once();
            }

            v41 = type metadata accessor for Logger();
            sub_1000270B4(v41, qword_1004B00F8);

            v42 = Logger.logObject.getter();
            v43 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v42, v43))
            {
              v44 = swift_slowAlloc();
              *&v59[0] = swift_slowAlloc();
              *v44 = 136315394;
              *(v44 + 4) = sub_1000026C0(v56, a4, v59);
              *(v44 + 12) = 2080;
              v45 = sub_1000026C0(v33, v4, v59);

              *(v44 + 14) = v45;
              _os_log_impl(&_mh_execute_header, v42, v43, "Network config value for %s and %s is the same as current settings. Will not re-apply.", v44, 0x16u);
              swift_arrayDestroy();
            }

            else
            {
            }

            v14 = v53;
            ++v12;
            v32 += 2;
            a3 = v56;
            a2 = v54;
            if (v52 == v12)
            {
              goto LABEL_40;
            }
          }

          v46 = v57;
          v14 = v53;
          v47 = _sSo14SCNSManagerRefa10DarwinInitE17setProtocolEntity7service9interface5proto6configSbSo011SCNSServiceB0a_S2SSo012CFDictionaryB0aSgtF_0(v53, a3, a4, v33, v4, v57);

          ++v12;
          v30 = 1;
          a2 = v54;
          v31 = v52;
          if (v47)
          {
            continue;
          }
        }

        break;
      }
    }

    else
    {
      v4 = a4;
      if (a1 < 0)
      {
        v15 = -1;
      }

      else
      {
        v15 = a1;
      }

      v16 = v15 + 1;
      v17 = 1;
      v18 = 0xFFFFFFFFLL;
      while (v16)
      {
        if (qword_1004A9F20 != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        sub_1000270B4(v19, qword_1004B00F8);
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&_mh_execute_header, v20, v21, "Did not reach retry limit. Refreshing manager and trying to find service for interface again", v22, 2u);
          v12 = v50;
        }

        if (!v18)
        {
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        sleep(v17);
        SCNSManagerRefresh();
        v23 = SCNSManagerRef.copyService(interface:netif:)(a3, v4, v12);
        --v18;
        --v16;
        ++v17;
        if (v23)
        {
          v14 = v23;
          a4 = v4;
          goto LABEL_21;
        }
      }

      if (qword_1004A9F20 == -1)
      {
        goto LABEL_18;
      }

LABEL_46:
      swift_once();
LABEL_18:
      v24 = type metadata accessor for Logger();
      sub_1000270B4(v24, qword_1004B00F8);

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *&v59[0] = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_1000026C0(v56, v4, v59);
        _os_log_impl(&_mh_execute_header, v25, v26, "Reached retry limit when trying to find service for interface %s", v27, 0xCu);
        sub_100003C3C(v28);
      }
    }
  }

  else
  {
  }
}

uint64_t sub_1001EDC44(uint64_t a1)
{
  v2 = sub_1000039E8(&qword_1004A8398, &qword_100403EA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Config.applyTimeout.getter()
{
  v1 = (v0 + *(type metadata accessor for Config(0) + 56));
  v2 = v1[3];
  if (v1[1])
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  v4 = v1[2];

  return sub_100292FFC(v4, v2);
}

void Config.Cryptex.depsolvCryptexes()()
{
  v1 = type metadata accessor for Config.Cryptex.Cryptex(0);
  v63 = *(v1 - 8);
  v2 = __chkstk_darwin(v1 - 8);
  v62 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v71 = &v62 - v4;
  v5 = *(v0 + 240);
  v77 = v5;
  if (!v5)
  {
    return;
  }

  v6 = *(v5 + 16);
  v66 = v5;
  if (v6)
  {
    v7 = sub_1000117A8(v6, 0);
    v8 = sub_1000138F8(&v75, v7 + 4, v6, v5);
    v9 = v75;
    sub_100013E54(&v77, v74, &qword_1004AC718, &qword_1003F93D0);
    sub_100013E00(v9);
    if (v8 != v6)
    {
LABEL_60:
      __break(1u);
      return;
    }

    v10 = v7;
    v5 = v66;
    v11 = v7[2];
    if (!v11)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
    v11 = _swiftEmptyArrayStorage[2];
    if (!v11)
    {
      goto LABEL_55;
    }
  }

  v12 = _swiftEmptyArrayStorage;
  while (2)
  {
    v13 = v10 + 4;

    v14 = 0;
    v73 = v10;
    v67 = v11;
    v64 = v10;
    v65 = v10 + 4;
    do
    {
      while (1)
      {
        if (v14 >= v10[2])
        {
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v15 = v14++;
        if (*(v5 + 16))
        {
          break;
        }

LABEL_8:
        if (v14 == v11)
        {
          goto LABEL_30;
        }
      }

      v16 = v10;
      v17 = &v13[2 * v15];
      v18 = *v17;
      v19 = v17[1];

      v72 = v18;
      v20 = sub_100013364(v18, v19);
      if ((v21 & 1) == 0)
      {

        v10 = v16;
        goto LABEL_8;
      }

      v70 = v19;
      v22 = v62;
      sub_1001EF8E8(*(v5 + 56) + *(v63 + 72) * v20, v62, type metadata accessor for Config.Cryptex.Cryptex);
      v23 = v22;
      v24 = v71;
      sub_10018991C(v23, v71);
      v25 = *(v24 + 80);
      v69 = v14;
      if (v25)
      {
        v26 = *(v25 + 16);

        v68 = v27;
        if (v26)
        {
          v28 = (v27 + 40);
          while (1)
          {
            v30 = *(v28 - 1);
            v29 = *v28;
            v75 = v30;
            v76 = v29;
            __chkstk_darwin(v27);
            *(&v62 - 2) = &v75;

            v31 = sub_100012A04(sub_1001EF6AC, (&v62 - 4), v12);

            if ((v31 & 1) == 0)
            {
              break;
            }

            v28 += 2;
            if (!--v26)
            {
              goto LABEL_17;
            }
          }

          v75 = v30;
          v76 = v29;
          __chkstk_darwin(v32);
          *(&v62 - 2) = &v75;
          v40 = v73;

          v41 = sub_100012A04(sub_1001EFA50, (&v62 - 4), v40);
          v73 = v40;

          if ((v41 & 1) == 0)
          {
            sub_1001EF6CC();
            swift_allocError();
            *v58 = v30;
            *(v58 + 8) = v29;
            *(v58 + 16) = 0;
            swift_willThrow();
            sub_1001EF950(v71, type metadata accessor for Config.Cryptex.Cryptex);

            return;
          }

          sub_1001EF950(v71, type metadata accessor for Config.Cryptex.Cryptex);
          v10 = v64;
          v13 = v65;
          v5 = v66;
          v11 = v67;
          v14 = v69;
          goto LABEL_8;
        }

LABEL_17:

        v10 = v64;
        v5 = v66;
        v11 = v67;
      }

      else
      {
        v10 = v16;
      }

      v33 = v73;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1001EF698(v33);
      }

      if (v15 >= *(v33 + 2))
      {
        goto LABEL_59;
      }

      v34 = &v33[16 * v15];
      *(v34 + 4) = 0;
      *(v34 + 5) = 0xE000000000000000;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = sub_100011A4C(0, *(v12 + 2) + 1, 1, v12);
      }

      v37 = *(v12 + 2);
      v36 = *(v12 + 3);
      if (v37 >= v36 >> 1)
      {
        v12 = sub_100011A4C((v36 > 1), v37 + 1, 1, v12);
      }

      sub_1001EF950(v71, type metadata accessor for Config.Cryptex.Cryptex);
      *(v12 + 2) = v37 + 1;
      v38 = &v12[16 * v37];
      v14 = v69;
      v39 = v70;
      *(v38 + 4) = v72;
      *(v38 + 5) = v39;
      v13 = v65;
    }

    while (v14 != v11);
LABEL_30:

    v42 = *(v73 + 2);
    if (v42)
    {
      v43 = 0;
      v44 = v73 + 40;
      v70 = v42 - 1;
      v10 = _swiftEmptyArrayStorage;
      v72 = (v73 + 40);
LABEL_32:
      v45 = &v44[2 * v43];
      v46 = v43;
      while (v46 < *(v73 + 2))
      {
        v47 = *(v45 - 1);
        v48 = *v45;
        if (v47)
        {
          v49 = 0;
        }

        else
        {
          v49 = v48 == 0xE000000000000000;
        }

        if (!v49)
        {
          v50 = v42;
          v51 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v42 = v50;
          if ((v51 & 1) == 0)
          {

            v52 = swift_isUniquelyReferenced_nonNull_native();
            v75 = v10;
            if ((v52 & 1) == 0)
            {
              sub_10000DFF4(0, v10[2] + 1, 1);
              v10 = v75;
            }

            v54 = v10[2];
            v53 = v10[3];
            v55 = v10;
            if (v54 >= v53 >> 1)
            {
              sub_10000DFF4((v53 > 1), v54 + 1, 1);
              v55 = v75;
            }

            v43 = v46 + 1;
            v55[2] = v54 + 1;
            v56 = &v55[2 * v54];
            v56[4] = v47;
            v56[5] = v48;
            v49 = v70 == v46;
            v10 = v55;
            v5 = v66;
            v11 = v67;
            v44 = v72;
            v42 = v50;
            if (v49)
            {
              goto LABEL_49;
            }

            goto LABEL_32;
          }
        }

        ++v46;
        v45 += 2;
        if (v42 == v46)
        {
          v5 = v66;
          v11 = v67;
          goto LABEL_49;
        }
      }

      goto LABEL_58;
    }

    v10 = _swiftEmptyArrayStorage;
LABEL_49:

    v57 = v10[2];

    if (v57 == v11)
    {

      v60 = sub_100013D10(v59);

      sub_1001EF6CC();
      swift_allocError();
      *v61 = v60;
      *(v61 + 8) = 0;
      *(v61 + 16) = 1;
      swift_willThrow();

      return;
    }

    v11 = v10[2];
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_55:
}

unint64_t Config.Cryptex.DepsolvError.description.getter(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    _StringGuts.grow(_:)(25);

    v8 = 0xD000000000000017;
    v4._countAndFlagsBits = Set.description.getter();
    String.append(_:)(v4);
  }

  else
  {
    _StringGuts.grow(_:)(24);

    v8 = 0xD000000000000016;
    v6._countAndFlagsBits = a1;
    v6._object = a2;
    String.append(_:)(v6);
  }

  return v8;
}

void *Config.Cryptex.Cryptex.jsonPointer.getter()
{
  result = *(v0 + *(type metadata accessor for Config.Cryptex.Cryptex(0) + 40));
  v2 = result[2];
  if (v2 < 2)
  {
    __break(1u);
  }

  else
  {
    v3 = 2 * v2 - 1;
    if (v2 == v3 >> 1)
    {
    }

    else
    {
      sub_1001EF574(result, (result + 4), 0, v3);
    }

    return JSONPointer.init(codingKeys:)(v4).components._rawValue;
  }

  return result;
}

void *Config.User.jsonPointer.getter()
{
  v7 = *(v0 + 128);
  result = v7;
  v2 = *(v7 + 16);
  if (v2 < 2)
  {
    __break(1u);
  }

  else
  {
    v3 = 2 * v2 - 1;
    if (v2 == v3 >> 1)
    {
      v5 = v7;
      sub_100013E54(&v7, &v6, &qword_1004AC728, &qword_1003F93D8);
      v4._rawValue = v5;
    }

    else
    {
      sub_1001EF574(v7, v7 + 32, 0, v3);
    }

    return JSONPointer.init(codingKeys:)(v4).components._rawValue;
  }

  return result;
}

void *Array<A>.jsonString(prettyPrinted:redacted:origin:)(int a1, int a2, int a3, uint64_t a4)
{
  v63 = a4;
  v60 = a2;
  v61 = a3;
  v59 = a1;
  v71 = type metadata accessor for Config(0);
  v54 = *(v71 - 8);
  __chkstk_darwin(v71);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CodingUserInfoKey();
  v56 = *(v6 - 8);
  v57 = v6;
  __chkstk_darwin(v6);
  v58 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for JSONEncoder.OutputFormatting();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v55 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v54 - v12;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v14 = JSONEncoder.init()();
  sub_1000039E8(&qword_1004A84E0, &qword_100378BD0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100376BB0;
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  static JSONEncoder.OutputFormatting.withoutEscapingSlashes.getter();
  v69[0] = v15;
  sub_1001EF838(&qword_1004A84E8, &type metadata accessor for JSONEncoder.OutputFormatting, &protocol conformance descriptor for JSONEncoder.OutputFormatting);
  sub_1000039E8(&qword_1004A84F0, qword_10037ACF0);
  sub_1001EF720();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v64 = v14;
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  if (v59)
  {
    v16 = v55;
    static JSONEncoder.OutputFormatting.prettyPrinted.getter();
    v17 = dispatch thunk of JSONEncoder.outputFormatting.modify();
    sub_1001CB8B0(v13, v16);
    v18 = *(v9 + 8);
    v18(v16, v8);
    v18(v13, v8);
    v17(v69, 0);
  }

  v19 = v63;
  if ((v60 & 1) == 0)
  {
    if (qword_1004A9E60 != -1)
    {
      swift_once();
    }

    v20 = v57;
    v21 = sub_1000270B4(v57, static CredentialString.redactionOverrideKey);
    v22 = v58;
    (*(v56 + 16))(v58, v21, v20);
    v70 = &type metadata for Bool;
    LOBYTE(v69[0]) = 1;
    v23 = dispatch thunk of JSONEncoder.userInfo.modify();
    sub_1001C9DC8(v69, v22);
    v23(v65, 0);
  }

  if (v61)
  {
    v24 = *(v19 + 16);
    v25 = _swiftEmptyArrayStorage;
    if (v24)
    {
      v69[0] = _swiftEmptyArrayStorage;
      sub_10031116C(0, v24, 0);
      v25 = v69[0];
      v26 = v19 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
      v27 = *(v54 + 72);
      do
      {
        sub_1001EF8E8(v26, v5, type metadata accessor for Config);
        v30 = &v5[*(v71 + 104)];
        if (*v30)
        {
          v31 = v30[1];
          sub_1001D6F9C(*v30, v31, v28, v29);
        }

        else
        {
          v31 = 0xF000000000000007;
        }

        sub_1001EF950(v5, type metadata accessor for Config);
        v69[0] = v25;
        v33 = v25[2];
        v32 = v25[3];
        if (v33 >= v32 >> 1)
        {
          sub_10031116C((v32 > 1), v33 + 1, 1);
          v25 = v69[0];
        }

        v25[2] = v33 + 1;
        v25[v33 + 4] = v31;
        v26 += v27;
        --v24;
      }

      while (v24);
      v19 = v63;
    }

    v69[0] = v25;
    sub_1000039E8(&qword_1004AC748, &qword_1003F93E8);
    sub_1001EF9B0();
    v42 = v62;
    v43 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v39 = v42;
    if (v42)
    {

      goto LABEL_21;
    }

    v40 = v43;
    v41 = v44;

LABEL_23:
    sub_1000318C0(v40, v41, v37, v38);
    v46 = sub_1001D52F8(v40, v41);
    if (v49)
    {
      v25 = v46;
      sub_100031928(v40, v41);
    }

    else
    {
      v67 = v40;
      v68 = v41;
      sub_1000318C0(v40, v41, v47, v48);
      sub_1000039E8(&qword_1004AB968, &qword_1003F7BE0);
      if (swift_dynamicCast())
      {
        sub_100003C88(v65, v69);
        sub_10000E2A8(v69, v70);
        HasContiguous = dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter();
        sub_100031928(v40, v41);
        if (HasContiguous)
        {
          sub_10000E2A8(v69, v70);
          dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();

          sub_100031928(v40, v41);
          v25 = *&v65[0];
          sub_100003C3C(v69);
          return v25;
        }

        sub_100003C3C(v69);
      }

      else
      {
        sub_100031928(v40, v41);
        v66 = 0;
        memset(v65, 0, sizeof(v65));
        sub_1001EF880(v65);
      }

      v25 = sub_1001D19F8(v40, v41, v51, v52);
    }

    sub_100031928(v40, v41);
    return v25;
  }

  v69[0] = v19;
  v25 = sub_1000039E8(&qword_1004AC730, &qword_1003F93E0);
  sub_1001EF784();
  v34 = v62;
  v35 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v39 = v34;
  if (!v34)
  {
    v40 = v35;
    v41 = v36;
    goto LABEL_23;
  }

LABEL_21:

  sub_100187FC0();
  swift_allocError();
  *v45 = v19;
  *(v45 + 8) = v39;
  *(v45 + 16) = 0;
  *(v45 + 24) = 0;
  swift_willThrow();

  return v25;
}

double sub_1001EEE04@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = (a1 + *(type metadata accessor for Config(0) + 104));
  v6 = *v5;
  v7 = v5[1];
  *a2 = *v5;
  a2[1] = v7;

  return sub_1001D6F9C(v6, v7, v3, v4);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Config.jsonString(prettyPrinted:redacted:origin:)(Swift::Bool prettyPrinted, Swift::Bool redacted, Swift::Bool origin)
{
  v49 = redacted;
  v50 = origin;
  v48 = prettyPrinted;
  v3 = type metadata accessor for CodingUserInfoKey();
  v46 = *(v3 - 8);
  __chkstk_darwin(v3);
  v47 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for JSONEncoder.OutputFormatting();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v45 - v10;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000039E8(&qword_1004A84E0, &qword_100378BD0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100376BB0;
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  static JSONEncoder.OutputFormatting.withoutEscapingSlashes.getter();
  v59[0] = v12;
  sub_1001EF838(&qword_1004A84E8, &type metadata accessor for JSONEncoder.OutputFormatting, &protocol conformance descriptor for JSONEncoder.OutputFormatting);
  sub_1000039E8(&qword_1004A84F0, qword_10037ACF0);
  sub_1001EF720();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  if (v48)
  {
    static JSONEncoder.OutputFormatting.prettyPrinted.getter();
    v13 = dispatch thunk of JSONEncoder.outputFormatting.modify();
    sub_1001CB8B0(v11, v9);
    v14 = *(v6 + 8);
    v14(v9, v5);
    v14(v11, v5);
    v13(v59, 0);
  }

  v15 = v61;
  if (!v49)
  {
    if (qword_1004A9E60 != -1)
    {
      swift_once();
    }

    v16 = sub_1000270B4(v3, static CredentialString.redactionOverrideKey);
    v17 = v47;
    (*(v46 + 16))(v47, v16, v3);
    v60 = &type metadata for Bool;
    LOBYTE(v59[0]) = 1;
    v18 = dispatch thunk of JSONEncoder.userInfo.modify();
    sub_1001C9DC8(v59, v17);
    v18(&v56, 0);
  }

  if (v50 && (v19 = (v15 + *(type metadata accessor for Config(0) + 104)), *v19))
  {
    v20 = v19[1];
    v57 = &type metadata for JSON;
    v58 = sub_1001B54D4();
    *&v56 = v20;
  }

  else
  {
    v57 = type metadata accessor for Config(0);
    v58 = sub_1001EF838(&qword_1004AC740, type metadata accessor for Config, &protocol conformance descriptor for Config);
    v21 = sub_100064BF8(&v56);
    sub_1001EF8E8(v15, v21, type metadata accessor for Config);
  }

  sub_100003C88(&v56, v59);
  sub_10000E2A8(v59, v60);
  v22 = v51;
  v23 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v27 = v22;
  if (!v22)
  {
    v32 = v23;
    v33 = v24;
    sub_1000318C0(v23, v24, v25, v26);
    v34 = sub_1001D52F8(v32, v33);
    if (v35)
    {
      v27 = v34;
      v15 = v35;
      sub_100031928(v32, v33);
    }

    else
    {
      v54 = v32;
      v55 = v33;
      sub_1000318C0(v32, v33, v36, v37);
      sub_1000039E8(&qword_1004AB968, &qword_1003F7BE0);
      if (swift_dynamicCast())
      {
        sub_100003C88(v52, &v56);
        sub_10000E2A8(&v56, v57);
        HasContiguous = dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter();
        sub_100031928(v32, v33);
        if (HasContiguous)
        {
          sub_10000E2A8(&v56, v57);
          dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();

          sub_100031928(v32, v33);
          v15 = *(&v52[0] + 1);
          v27 = *&v52[0];
          sub_100003C3C(&v56);
LABEL_22:
          sub_100003C3C(v59);
          goto LABEL_23;
        }

        sub_100003C3C(&v56);
      }

      else
      {
        sub_100031928(v32, v33);
        v53 = 0;
        memset(v52, 0, sizeof(v52));
        sub_1001EF880(v52);
      }

      v27 = sub_1001D19F8(v32, v33, v39, v40);
      v15 = v41;
    }

    sub_100031928(v32, v33);
    goto LABEL_22;
  }

  sub_100003C3C(v59);
  sub_1000039E8(&qword_1004AA9C8, &qword_1003F4098);
  v28 = *(type metadata accessor for Config(0) - 8);
  v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100376A40;
  sub_1001EF8E8(v15, v30 + v29, type metadata accessor for Config);
  sub_100187FC0();
  swift_allocError();
  *v31 = v30;
  *(v31 + 8) = v22;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  swift_willThrow();
LABEL_23:
  v42 = v27;
  v43 = v15;
  result._object = v43;
  result._countAndFlagsBits = v42;
  return result;
}

void sub_1001EF574(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_1000039E8(&qword_1004AAA00, &qword_1003FC3A0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
      if (v4 != a3)
      {
LABEL_5:
        sub_1000039E8(&qword_1004AAA08, &qword_1003F40C8);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

unint64_t sub_1001EF6CC()
{
  result = qword_1004AC720;
  if (!qword_1004AC720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AC720);
  }

  return result;
}

unint64_t sub_1001EF720()
{
  result = qword_1004A84F8;
  if (!qword_1004A84F8)
  {
    sub_100003A94(&qword_1004A84F0, qword_10037ACF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A84F8);
  }

  return result;
}

unint64_t sub_1001EF784()
{
  result = qword_1004AC738;
  if (!qword_1004AC738)
  {
    sub_100003A94(&qword_1004AC730, &qword_1003F93E0);
    sub_1001EF838(&qword_1004AC740, type metadata accessor for Config, &protocol conformance descriptor for Config);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AC738);
  }

  return result;
}

uint64_t sub_1001EF838(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001EF880(uint64_t a1)
{
  v2 = sub_1000039E8(&qword_1004AB970, &qword_1003F7BE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001EF8E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001EF950(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001EF9B0()
{
  result = qword_1004AC750;
  if (!qword_1004AC750)
  {
    sub_100003A94(&qword_1004AC748, &qword_1003F93E8);
    sub_1001E9608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AC750);
  }

  return result;
}

uint64_t RealNVRAM.__allocating_init()()
{
  v0 = swift_allocObject();
  RealNVRAM.init()();
  return v0;
}

unint64_t NVRAMError.errorDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (*(v0 + 20) && *(v0 + 20) != 1)
  {
    return 0xD00000000000001ALL;
  }

  _StringGuts.grow(_:)(41);

  v4._countAndFlagsBits = v1;
  v4._object = v2;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0x564E206D6F726620;
  v5._object = 0xEB000000004D4152;
  String.append(_:)(v5);
  v6 = 0xD00000000000001CLL;
  if (mach_error_string(v3))
  {
    v7._countAndFlagsBits = String.init(cString:)();
    String.append(_:)(v7);

    v8._countAndFlagsBits = 8236;
    v8._object = 0xE200000000000000;
    String.append(_:)(v8);

    return 0xD00000000000001CLL;
  }

  return v6;
}

uint64_t RealNVRAM.init()()
{
  v1 = v0;
  v2 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
  *(v0 + 16) = v2;
  if (!v2)
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000270B4(v3, qword_1004B00F8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "IORegistryEntryFromPath failed", v6, 2u);
    }

    sub_1001F0318();
    swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    *(v7 + 20) = 2;
    swift_willThrow();
  }

  return v1;
}

uint64_t RealNVRAM.__deallocating_deinit()
{
  IOObjectRelease(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t RealNVRAM.getData(forKey:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v1 + 16);
  v5 = String._bridgeToObjectiveC()();
  CFProperty = IORegistryEntryCreateCFProperty(v4, v5, kCFAllocatorDefault, 0);

  if (CFProperty)
  {
    swift_dynamicCast();
    return v10;
  }

  else
  {

    v8 = shim_kIOReturnNoResources();
    sub_1001F0318();
    swift_allocError();
    *v9 = v3;
    *(v9 + 8) = v2;
    *(v9 + 16) = v8;
    *(v9 + 20) = 0;
    return swift_willThrow();
  }
}

void RealNVRAM.set(data:forKey:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v4 = a3[1];
  v6 = *(v3 + 16);
  v7 = String._bridgeToObjectiveC()();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v9 = IORegistryEntrySetCFProperty(v6, v7, isa);

  if (v9)
  {
    sub_1001F0318();
    swift_allocError();
    *v10 = v5;
    *(v10 + 8) = v4;
    *(v10 + 16) = v9;
    *(v10 + 20) = 1;
    swift_willThrow();
  }
}

double ErrorReporter.errors.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t ErrorReporter.errors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t VirtuaNVRAM.getData(forKey:)(uint64_t *a1)
{
  result = sub_1001F036C(a1);
  if (!v1)
  {
    v6 = result;
    sub_1000318C0(result, v3, v4, v5);
    return v6;
  }

  return result;
}

uint64_t VirtuaNVRAM.set(data:forKey:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = a3[1];
  swift_beginAccess();

  sub_1000318C0(a1, a2, v8, v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v3 + 16);
  *(v3 + 16) = 0x8000000000000000;
  sub_100183ABC(a1, a2, v6, v7, isUniquelyReferenced_nonNull_native);

  *(v3 + 16) = v12;
  return swift_endAccess();
}

uint64_t ErrorReporter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t VirtuaNVRAM.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_100187AE8(_swiftEmptyArrayStorage);
  return v0;
}

uint64_t sub_1001F0204(uint64_t *a1)
{
  result = sub_1001F036C(a1);
  if (!v1)
  {
    v6 = result;
    sub_1000318C0(result, v3, v4, v5);
    return v6;
  }

  return result;
}

uint64_t sub_1001F0250(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *v3;
  v7 = *a3;
  v8 = a3[1];
  swift_beginAccess();

  sub_1000318C0(a1, a2, v9, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v6 + 16);
  *(v6 + 16) = 0x8000000000000000;
  sub_100183ABC(a1, a2, v7, v8, isUniquelyReferenced_nonNull_native);

  *(v6 + 16) = v13;
  return swift_endAccess();
}

unint64_t sub_1001F0318()
{
  result = qword_1004AC758;
  if (!qword_1004AC758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AC758);
  }

  return result;
}

uint64_t sub_1001F036C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (*(v4 + 16) && (v5 = sub_100013364(v2, v3), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 16 * v5);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    v7 = shim_kIOReturnNoResources();
    sub_1001F0318();
    swift_allocError();
    *v8 = v2;
    *(v8 + 8) = v3;
    *(v8 + 16) = v7;
    *(v8 + 20) = 0;
    swift_willThrow();
  }

  return v7;
}

uint64_t sub_1001F0444(uint64_t a1)
{
  if ((*(a1 + 20) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 20) & 3;
  }
}

__n128 sub_1001F0460(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_1001F0474(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 21))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 20);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1001F04BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 20) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001F0504(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
  }

  *(result + 20) = a2;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FilePath.remove()()
{
  v2 = type metadata accessor for FilePath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000270B4(v6, qword_1004B00F8);
  (*(v3 + 16))(v5, v0, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v22[1] = v1;
    v10 = v9;
    v11 = swift_slowAlloc();
    v22[0] = v0;
    v12 = v11;
    v23 = v11;
    *v10 = 136315138;
    sub_1001F4208(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v3 + 8))(v5, v2);
    v16 = sub_1000026C0(v13, v15, &v23);

    *(v10 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "Removing item at %s", v10, 0xCu);
    sub_100003C3C(v12);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  v17 = [objc_opt_self() defaultManager];
  FilePath.description.getter();
  v18 = String._bridgeToObjectiveC()();

  v23 = 0;
  v19 = [v17 removeItemAtPath:v18 error:&v23];

  if (v19)
  {
    v20 = v23;
  }

  else
  {
    v21 = v23;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

id FilePath.createDirectory(permissions:intermediateDirectories:)(uint64_t a1, int a2)
{
  v5 = a1;
  v6 = type metadata accessor for FilePath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000270B4(v10, qword_1004B00F8);
  (*(v7 + 16))(v9, v2, v6);
  v11 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v38))
  {
    v12 = swift_slowAlloc();
    v37 = v3;
    v13 = v12;
    v35 = swift_slowAlloc();
    v39 = v35;
    *v13 = 136315650;
    sub_1001F4208(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = a2;
    v16 = v15;
    (*(v7 + 8))(v9, v6);
    v17 = sub_1000026C0(v14, v16, &v39);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = FilePermissions.description.getter();
    v20 = sub_1000026C0(v18, v19, &v39);

    *(v13 + 14) = v20;
    LOBYTE(v20) = v36;
    *(v13 + 22) = 1024;
    *(v13 + 24) = v20 & 1;
    _os_log_impl(&_mh_execute_header, v11, v38, "Creating directory at %s with permissions %s and intermediate directories %{BOOL}d", v13, 0x1Cu);
    swift_arrayDestroy();

    if ((v20 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  (*(v7 + 8))(v9, v6);
  if (a2)
  {
LABEL_9:
    v27 = [objc_opt_self() defaultManager];
    FilePath.description.getter();
    v28 = String._bridgeToObjectiveC()();

    sub_1000039E8(&qword_1004AC8A0, &qword_1003F9688);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100376A40;
    *(inited + 32) = NSFilePosixPermissions;
    *(inited + 64) = &type metadata for UInt16;
    *(inited + 40) = v5;
    v30 = NSFilePosixPermissions;
    sub_1001861B4(inited);
    swift_setDeallocating();
    sub_100013F2C(inited + 32, &qword_1004AA7A0, &qword_1003F3E70);
    type metadata accessor for FileAttributeKey(0);
    sub_1001F4208(&qword_1004A6CC0, type metadata accessor for FileAttributeKey, &unk_1003F3510);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v39 = 0;
    v32 = [v27 createDirectoryAtPath:v28 withIntermediateDirectories:1 attributes:isa error:&v39];

    if (v32)
    {
      return v39;
    }

    v33 = v39;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

LABEL_5:
  while (1)
  {
    FilePath.description.getter();
    v21 = String.utf8CString.getter();

    v22 = mkdir((v21 + 32), v5);

    if (v22 != -1)
    {
      break;
    }

    v24 = errno.getter();
    if (v24 != 4)
    {
      LODWORD(v39) = v24;
      v25 = v24;
      sub_100187D3C();
      swift_willThrowTypedImpl();
      result = swift_allocError();
      *v26 = v25;
      return result;
    }
  }

  return result;
}

void *FilePath.performDeepEnumerationOfFiles()()
{
  v1 = sub_1000039E8(&qword_1004AC8A8, &unk_100408440);
  __chkstk_darwin(v1 - 8);
  v106 = &v95 - v2;
  v108 = type metadata accessor for URLResourceValues();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v111 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NSFastEnumerationIterator();
  v109 = *(v4 - 8);
  v110 = v4;
  __chkstk_darwin(v4);
  v119 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  v7 = __chkstk_darwin(v6 - 8);
  v113 = (&v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v115 = (&v95 - v9);
  v10 = type metadata accessor for URL.DirectoryHint();
  v112 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = (&v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for URL();
  v114 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v95 - v18;
  __chkstk_darwin(v17);
  v21 = (&v95 - v20);
  v22 = type metadata accessor for FilePath();
  v23 = *(v22 - 8);
  v116 = v22;
  v117 = v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v95 - v27;
  v29 = FilePath.directoryExists()();
  if (v30)
  {

LABEL_7:
    v45 = v117;
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_1000270B4(v46, qword_1004B00F8);
    v47 = v116;
    (*(v45 + 16))(v28, v0, v116);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v120 = v51;
      *v50 = 136315138;
      sub_1001F4208(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v53;
      (*(v45 + 8))(v28, v47);
      v55 = sub_1000026C0(v52, v54, &v120);

      *(v50 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v48, v49, "Tried to enumerate the files of %s, which is NOT a directory!", v50, 0xCu);
      sub_100003C3C(v51);
    }

    else
    {

      (*(v45 + 8))(v28, v47);
    }

    sub_100187D3C();
    swift_allocError();
    v57 = 20;
LABEL_13:
    *v56 = v57;
    return swift_willThrow();
  }

  v102 = v12;
  v31 = v10;
  v32 = v115;
  v105 = v21;
  v100 = v26;
  v103 = 0;
  v99 = v16;
  v101 = v19;
  if (!v29)
  {
    goto LABEL_7;
  }

  sub_1000039E8(&qword_1004AC8B0, &qword_100408450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 32) = NSURLIsDirectoryKey;
  v34 = NSURLIsDirectoryKey;
  v104 = sub_10019ABA8(inited);
  swift_setDeallocating();
  sub_1001F4250(inited + 32);
  v98 = [objc_opt_self() defaultManager];
  FilePath.string.getter();
  (*(v112 + 104))(v102, enum case for URL.DirectoryHint.isDirectory(_:), v31);
  v35 = v114;
  v36 = v13;
  v118 = *(v114 + 56);
  v112 = v114 + 56;
  v118(v32, 1, 1, v13);
  v37 = v105;
  v38 = v104;
  URL.init(filePath:directoryHint:relativeTo:)();
  v39 = *(v38 + 16);
  v40 = v117;
  if (v39)
  {
    v41 = sub_1001F3FDC(*(v38 + 16), 0);
    v42 = sub_1001F40B4(&v120, v41 + 4, v39, v38);
    v43 = v120;

    sub_100013E00(v43);
    v44 = v113;
    if (v42 != v39)
    {
      __break(1u);
      goto LABEL_47;
    }

    v35 = v114;
    v37 = v105;
  }

  else
  {
    v44 = v113;
  }

  v59 = v98;
  v60 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  v61 = v37;
  v63 = v35 + 8;
  v62 = *(v35 + 8);
  v62(v61, v36);
  if (!v60)
  {

    if (qword_1004A9F20 == -1)
    {
LABEL_33:
      v75 = type metadata accessor for Logger();
      sub_1000270B4(v75, qword_1004B00F8);
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&_mh_execute_header, v76, v77, "Failed to create directory enumerator", v78, 2u);
      }

      sub_100187D3C();
      swift_allocError();
      v57 = 104;
      goto LABEL_13;
    }

LABEL_47:
    swift_once();
    goto LABEL_33;
  }

  v113 = v62;
  NSEnumerator.makeIterator()();
  NSFastEnumerationIterator.next()();
  if (v121)
  {
    v102 = (v35 + 32);
    v105 = (v107 + 7);
    v98 = (v107 + 4);
    ++v107;
    v95 = v40 + 32;
    v115 = _swiftEmptyArrayStorage;
    while (1)
    {
      while ((swift_dynamicCast() & 1) == 0)
      {
        v118(v44, 1, 1, v36);
        sub_100013F2C(v44, &qword_1004A6D30, &unk_100376820);
        NSFastEnumerationIterator.next()();
        if (!v121)
        {
          goto LABEL_37;
        }
      }

      v97 = v63;
      v96 = v60;
      v118(v44, 0, 1, v36);
      (*v102)(v101, v44, v36);
      v64 = v106;
      v65 = v103;
      URL.resourceValues(forKeys:)();
      v103 = v65;
      if (v65)
      {

        (*v105)(v64, 1, 1, v108);

        sub_100013F2C(v64, &qword_1004AC8A8, &unk_100408440);
        goto LABEL_40;
      }

      v66 = v108;
      (*v105)(v64, 0, 1, v108);
      (*v98)(v111, v64, v66);
      v67 = URLResourceValues.isDirectory.getter();
      if (v67 == 2)
      {
        break;
      }

      if (v67)
      {
        (*v107)(v111, v66);
        v63 = v97;
        v113(v101, v36);
      }

      else
      {
        URL.relativeString.getter();
        FilePath.init(_:)();
        v68 = v115;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = v97;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v68 = sub_10018C884(0, v68[2] + 1, 1, v68);
        }

        v71 = v68[2];
        v70 = v68[3];
        v115 = v68;
        v72 = v111;
        if (v71 >= v70 >> 1)
        {
          v115 = sub_10018C884((v70 > 1), v71 + 1, 1, v115);
          v72 = v111;
        }

        (*v107)(v72);
        v113(v101, v36);
        v74 = v115;
        v73 = v116;
        v115[2] = v71 + 1;
        (*(v117 + 32))(v74 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v71, v100, v73);
      }

      NSFastEnumerationIterator.next()();
      v60 = v96;
      if (!v121)
      {
        goto LABEL_37;
      }
    }

    (*v107)(v111, v66);

LABEL_40:
    v79 = v99;
    v80 = v101;
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v81 = type metadata accessor for Logger();
    sub_1000270B4(v81, qword_1004B00F8);
    (*(v114 + 16))(v79, v80, v36);
    v82 = Logger.logObject.getter();
    v83 = v36;
    v84 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v82, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v122 = v86;
      *v85 = 136315138;
      v87 = URL.lastPathComponent.getter();
      v89 = v88;
      v90 = v113;
      v113(v79, v83);
      v91 = sub_1000026C0(v87, v89, &v122);

      *(v85 + 4) = v91;
      _os_log_impl(&_mh_execute_header, v82, v84, "Failed to get isDirectory for %s", v85, 0xCu);
      sub_100003C3C(v86);

      v80 = v101;
    }

    else
    {

      v90 = v113;
      v113(v79, v83);
    }

    v92 = v109;
    v93 = v119;
    sub_100187D3C();
    swift_allocError();
    *v94 = 93;
    swift_willThrow();

    v90(v80, v83);
    return (*(v92 + 8))(v93, v110);
  }

  else
  {
    v115 = _swiftEmptyArrayStorage;
LABEL_37:
    (*(v109 + 8))(v119, v110);

    return v115;
  }
}