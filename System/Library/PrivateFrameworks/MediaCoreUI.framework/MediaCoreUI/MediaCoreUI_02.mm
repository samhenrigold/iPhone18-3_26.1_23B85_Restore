void *sub_1C595D8AC@<X0>(void *a1@<X8>)
{
  sub_1C59E71A8();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

uint64_t sub_1C595D950(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    return (*(a3 + 16))(a2, a3);
  }

  else
  {
    return (*(a3 + 24))(a2, a3);
  }
}

uint64_t sub_1C595D9E4@<X0>(_OWORD *a1@<X8>)
{
  if (qword_1EDA47A28 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_1EDA5DAB8;
  v7[0] = xmmword_1EDA5DAA8;
  v7[1] = unk_1EDA5DAB8;
  v2 = xmmword_1EDA5DAC8;
  v3 = unk_1EDA5DAD8;
  v7[2] = xmmword_1EDA5DAC8;
  v7[3] = unk_1EDA5DAD8;
  *a1 = xmmword_1EDA5DAA8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return sub_1C595DE28(v7, &v6);
}

uint64_t sub_1C595DA6C()
{
  v0 = sub_1C5BC99F4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled())
  {
    sub_1C5BC9A14();
    v4 = *MEMORY[0x1E6980EA8];
    v5 = *(v1 + 104);
    v5(v3, v4, v0);
    v18 = sub_1C5BC9A24();

    v6 = *(v1 + 8);
    v6(v3, v0);
    *&v20[0] = sub_1C5BCA4C4();
    v17 = sub_1C5BC85E4();
    sub_1C5BC9A44();
    sub_1C5BC9994();
    sub_1C5BC99E4();

    v5(v3, v4, v0);
    v7 = sub_1C5BC9A24();

    v6(v3, v0);
    *&v20[0] = sub_1C5BCA4C4();
    v8 = sub_1C5BC85E4();
    sub_1C5BC9A14();
    v5(v3, v4, v0);
    v9 = v18;
    v10 = sub_1C5BC9A24();

    v11 = v3;
    v12 = v17;
    v6(v11, v0);
    *&v20[0] = sub_1C5BCA4C4();
    result = sub_1C5BC85E4();
    v14 = result;
    v15 = 20.0;
    v16 = 1.0;
  }

  else
  {
    if (qword_1EC190568 != -1)
    {
      swift_once();
    }

    v20[2] = xmmword_1EC192730;
    v20[3] = *&qword_1EC192740;
    v20[0] = xmmword_1EC192710;
    v20[1] = *&qword_1EC192720;
    v15 = unk_1EC192748;
    v10 = *(&xmmword_1EC192730 + 1);
    v14 = qword_1EC192740;
    v7 = unk_1EC192728;
    v8 = xmmword_1EC192730;
    v9 = *(&xmmword_1EC192710 + 1);
    v12 = qword_1EC192720;
    v16 = *&xmmword_1EC192710;
    result = sub_1C595DE28(v20, v19);
  }

  *&xmmword_1EDA5DAA8 = v16;
  *(&xmmword_1EDA5DAA8 + 1) = v9;
  unk_1EDA5DAB8 = v12;
  qword_1EDA5DAC0 = v7;
  *&xmmword_1EDA5DAC8 = v8;
  *(&xmmword_1EDA5DAC8 + 1) = v10;
  unk_1EDA5DAD8 = v14;
  qword_1EDA5DAE0 = *&v15;
  return result;
}

uint64_t sub_1C595DD50(uint64_t a1, void x1_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = MEMORY[0x1EEE9AC00](a1);
  v11(v10);
  sub_1C5BC8FE4();
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  type metadata accessor for _ViewLookupNode.OutputGroup(0, v13);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C595DE70()
{
  type metadata accessor for NowPlayingViewProviderProxy(0, v0[2], v0[3], v0[5]);
  swift_unknownObjectUnownedLoadStrong();
  swift_getAtKeyPath();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C595DF5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C595DFC4()
{
  v1 = *(v0 + 120);
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t sub_1C595E004(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
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

uint64_t sub_1C595E060(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C595E0EC()
{
  result = qword_1EDA464A0;
  if (!qword_1EDA464A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929B8, &qword_1C5BD61B0);
    sub_1C595E1AC();
    sub_1C59576B4(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA464A0);
  }

  return result;
}

unint64_t sub_1C595E1AC()
{
  result = qword_1EDA465A0;
  if (!qword_1EDA465A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1964C0, &qword_1C5BE3590);
    sub_1C5924F54(&qword_1EDA46040, &qword_1EC1929C0, &qword_1C5BD6230, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA465A0);
  }

  return result;
}

uint64_t NowPlayingButtonID.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_1C595E27C()
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 16);
  (*(v1 + 48))();
  v5[0] = v4;
  v5[1] = v3;
  type metadata accessor for _ViewLookupNode.OutputGroup(0, v5);
  return swift_storeEnumTagMultiPayload();
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1C595E304()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[7];
  v6 = v0[2];
  v1 = v6;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  type metadata accessor for ViewProvider(0, &v6);
  v6 = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  type metadata accessor for ViewProvider(0, &v6);
  return (*(v4 + 40))(v2, v4);
}

double static NowPlayingButtonID.queue.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x6575657571;
  *a1 = xmmword_1C5BE0B80;
  *(a1 + 16) = 0;
  return result;
}

double MCUINamespace<A>.marqueeFeathering(_:_:)(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  KeyPath = swift_getKeyPath(byte_1C5BED3D0);
  v12 = 0;
  v13 = a1 & 1;
  v14 = a2;
  v15 = a3 & 1;
  MEMORY[0x1C694E550](&KeyPath, *(a4 + 16), &type metadata for MarqueeFeatheringModifier, a5);

  return result;
}

uint64_t sub_1C595E4FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC194E80, &qword_1C5BDE0F8);
    v3 = sub_1C5BCBA64();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v10 = *(v6 + v4);
      sub_1C5BCBF54();
      sub_1C5BC8884();
      sub_1C5BCBF74();
      result = sub_1C5BCBF94();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = sub_1C5BC8884();
        result = sub_1C5BC8884();
        if (v15 == result)
        {
          goto LABEL_5;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      *(*(v3 + 48) + i) = v10;
      v7 = *(v3 + 16);
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (!v8)
      {
        *(v3 + 16) = v9;
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
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t NowPlayingHostedContentToggleButton.init(_:presenting:label:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v20[1] = a4;
  v7 = *(*v4 + 80);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v20 - v9;
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v11 + 16);
  v17 = *v15;
  v16 = v15[1];
  *(v5 + 56) = 1;
  v18 = sub_1C5BC7BA4();
  *(v5 + 16) = v12;
  *(v5 + 24) = v13;
  *(v5 + 32) = v14;
  *(v5 + 40) = v17;
  *(v5 + 48) = v16;
  a3(v18);
  (*(v8 + 32))(v5 + *(*v5 + 120), v10, v7);
  return v5;
}

uint64_t sub_1C595E78C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = v13 - v7;
  v9 = *(v2 + 6);
  v13[0] = *(v2 + 5);
  v13[1] = v9;
  (*(v10 + 16))(v13 - v7, &v2[*(v4 + 120)], v5, v6);

  v11 = sub_1C595E9AC();
  return sub_1C595EB68(v13, v8, v11 & 1, v5, *(v4 + 88), a2);
}

void sub_1C595E90C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1C593377C(319, &qword_1EDA467A8, &qword_1EC198CC0, &qword_1C5BED5A0);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C595E9AC()
{
  v3 = *(*v0 + 80);
  KeyPath = swift_getKeyPath(byte_1C5BEB8E0, &v3);
  sub_1C595EABC(KeyPath);

  swift_beginAccess();
  return v0[56];
}

uint64_t sub_1C595EA34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C595E9AC();
  *a1 = result & 1;
  return result;
}

__n128 sub_1C595EA98(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C595EB68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a1;
  v12 = a1[1];
  *a6 = swift_getKeyPath(aP_10);
  _s13HostedContentCMa(0);
  sub_1C595EDD0(&qword_1EDA4AE80, _s13HostedContentCMa, &unk_1C5BDBA8C);
  *(a6 + 16) = 0;
  *(a6 + 24) = 0;
  *(a6 + 8) = 0;
  *(a6 + 32) = 0;
  *(a6 + 40) = sub_1C5BC8324();
  *(a6 + 48) = v13 & 1;
  *(a6 + 56) = v11;
  *(a6 + 64) = v12;
  v15 = type metadata accessor for ToggleButton(0, a4, a5, v14);
  result = (*(*(a4 - 8) + 32))(a6 + *(v15 + 44), a2, a4);
  *(a6 + *(v15 + 48)) = a3;
  return result;
}

void sub_1C595EC8C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1C595A0F8(319, &qword_1EDA45FA0, MEMORY[0x1E69E63B0], MEMORY[0x1E6981948]);
    if (v2 <= 0x3F)
    {
      sub_1C593377C(319, &qword_1EDA467A8, &qword_1EC198CC0, &qword_1C5BED5A0);
      if (v3 <= 0x3F)
      {
        sub_1C593377C(319, &qword_1EDA46718, &qword_1EC198CB8, &qword_1C5BED598);
        if (v4 <= 0x3F)
        {
          sub_1C593377C(319, &qword_1EDA46728, &qword_1EC198CC8, qword_1C5BED5A8);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1C595EDD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C595EE20(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath(byte_1C5BE57B8);
  v23 = 0;
  v5 = swift_getKeyPath(byte_1C5BE5990);
  v24 = 0;
  _s12PresentationCMa(0);
  sub_1C5AC3CD8(&qword_1EDA4AF70, _s12PresentationCMa, &unk_1C5BD2B30);
  v6 = sub_1C5BC8324();
  v22 = v7 & 1;
  _s7ArtworkC20MiniPlayerAppearanceCMa(0);
  sub_1C5AC3CD8(&unk_1EDA49D30, _s7ArtworkC20MiniPlayerAppearanceCMa, &unk_1C5BDD4F8);
  v8 = sub_1C5BC8324();
  v21 = v9 & 1;
  _s14DefaultArtworkCMa();
  sub_1C5AC3CD8(qword_1EDA49E00, _s14DefaultArtworkCMa, &unk_1C5BDEF78);
  *&v12 = KeyPath;
  BYTE8(v12) = 0;
  *&v13 = v5;
  BYTE9(v17) = 0;
  *&v18 = v6;
  BYTE8(v18) = v22;
  *&v19 = v8;
  BYTE8(v19) = v21;
  *&v20 = sub_1C5BC8C84();
  *(&v20 + 1) = v10;
  MEMORY[0x1C694E550](&v12, a1, &type metadata for ArtworkStyleModifier, a2);
  v25[6] = v18;
  v25[7] = v19;
  v25[8] = v20;
  v25[2] = v14;
  v25[3] = v15;
  v25[4] = v16;
  v25[5] = v17;
  v25[0] = v12;
  v25[1] = v13;
  return sub_1C595F124(v25);
}

void sub_1C595F030(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1C595A0F8(319, &qword_1EDA4E188, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1C595F198(float64x2_t *a1)
{
  v11.val[0] = *a1;
  v11.val[1] = *a1;
  v9 = *a1;
  v1 = v10;
  vst2q_f64(v1, v11);
  type metadata accessor for Marquee.ContentWithBadge(255, v10);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  type metadata accessor for Marquee.MarqueeingContent(255, *&v9.f64[0], *&v9.f64[1], v2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198CB0, &unk_1C5BED4A0);
  sub_1C5BC8AB4();
  v3 = sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929C0, &qword_1C5BD6230);
  sub_1C5BC8AB4();
  v4 = sub_1C5BC8AB4();
  swift_getWitnessTable();
  v5 = MEMORY[0x1E6980A18];
  sub_1C5924F54(&qword_1EDA46078, &qword_1EC198CB0, &unk_1C5BED4A0, MEMORY[0x1E6980A18]);
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA46040, &qword_1EC1929C0, &qword_1C5BD6230, v5);
  swift_getWitnessTable();
  sub_1C5953670();
  v7 = swift_getWitnessTable();
  v10[0] = v3;
  v10[1] = v4;
  v10[2] = WitnessTable;
  v10[3] = v7;
  type metadata accessor for ShownWhenAppeared(255, v10);
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BC85B4();
  return swift_getWitnessTable();
}

uint64_t sub_1C595F46C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C5BCAA54();
  v6 = v5;
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199930, &qword_1C5BF17C0) + 36);
  sub_1C595F54C(v7);
  v8 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199938, &qword_1C5BF17C8) + 36));
  *v8 = v4;
  v8[1] = v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199940, &qword_1C5BF17D0);
  v10 = *(*(v9 - 8) + 16);

  return v10(a2, a1, v9);
}

uint64_t sub_1C595F54C@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199948, &unk_1C5BF17D8);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14[-v5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1949A0, &unk_1C5BEE410);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C5BD4D40;
  *(v7 + 32) = sub_1C5BCA484();
  sub_1C5BCA474();
  v8 = sub_1C5BCA4B4();

  *(v7 + 40) = v8;
  MEMORY[0x1C694EBE0](v7);
  sub_1C5BC88B4();
  v9 = *(v4 + 44);
  v10 = *MEMORY[0x1E6981DC0];
  v11 = sub_1C5BCAB54();
  (*(*(v11 - 8) + 104))(&v6[v9], v10, v11);
  v12 = v15;
  *v6 = *&v14[8];
  *(v6 + 1) = v12;
  *(v6 + 4) = v16;
  sub_1C595F8FC(v6, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199950, &qword_1C5BF17E8);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1C595F728(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198CF8, &qword_1C5BEDCF0);
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA714();

  return swift_getWitnessTable();
}

uint64_t sub_1C595F7F0(void *a1)
{
  sub_1C5BC92D4();
  swift_getWitnessTable();
  sub_1C5BCA7F4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C595F8FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199948, &unk_1C5BF17D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C595F9B8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_1C595FA40@<X0>(uint64_t (*a1)(void)@<X3>, void *a3@<X8>)
{
  a1();
  result = sub_1C5BC8F44();
  *a3 = v5;
  return result;
}

unint64_t sub_1C595FABC()
{
  result = qword_1EDA46638;
  if (!qword_1EDA46638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196D58, &qword_1C5BE53B8);
    sub_1C5924F54(&qword_1EDA462A8, &qword_1EC196D60, &qword_1C5BE53E8, MEMORY[0x1E697FDF8]);
    sub_1C5924F54(qword_1EDA49248, &qword_1EC196D70, qword_1C5BE55E8, &unk_1C5BE52F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46638);
  }

  return result;
}

uint64_t sub_1C595FBC0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  a5();

  return sub_1C5BC8F54();
}

void sub_1C595FC5C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1C594284C(319, &qword_1EDA467B0, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void *keypath_getTm@<X0>(uint64_t (*a1)(void)@<X3>, void *a3@<X8>)
{
  a1();
  result = sub_1C5BC8F44();
  *a3 = v5;
  return result;
}

void *keypath_getTm_0@<X0>(uint64_t (*a1)(void)@<X3>, _BYTE *a3@<X8>)
{
  a1();
  result = sub_1C5BC8F44();
  *a3 = v5;
  return result;
}

void *keypath_getTm_1@<X0>(uint64_t (*a1)(void)@<X3>, void *a3@<X8>)
{
  a1();
  result = sub_1C5BC8F44();
  *a3 = v5;
  return result;
}

void *keypath_getTm_2@<X0>(uint64_t (*a1)(void)@<X3>, _BYTE *a3@<X8>)
{
  a1();
  result = sub_1C5BC8F44();
  *a3 = v5;
  return result;
}

void *keypath_getTm_3@<X0>(uint64_t (*a1)(void)@<X3>, _BYTE *a3@<X8>)
{
  a1();
  result = sub_1C5BC8F44();
  *a3 = v5;
  return result;
}

void *keypath_getTm_4@<X0>(uint64_t (*a1)(void)@<X3>, void *a3@<X8>)
{
  a1();
  result = sub_1C5BC8F44();
  *a3 = v5;
  return result;
}

void sub_1C595FF50(uint64_t a1)
{
  sub_1C594284C(319, &qword_1EDA467B0, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1C596002C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for ArtworkStyleModifier.AppliedArtworkStyle(255, *a1, v5, a4);
  swift_getWitnessTable();
  sub_1C5BC9394();
  sub_1C5BC8AB4();
  type metadata accessor for ArtworkClipShape(255);
  sub_1C5BC8AB4();
  type metadata accessor for ArtworkInnerStrokeModifier(255, v4, v5, v6);
  sub_1C5BC8AB4();
  type metadata accessor for ArtworkShadowModifier(255);
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  sub_1C5960238();
  swift_getWitnessTable();
  sub_1C5AC3CD8(&qword_1EDA4BBF0, type metadata accessor for ArtworkClipShape, &unk_1C5BE5718);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5AC3CD8(&qword_1EDA48D90, type metadata accessor for ArtworkShadowModifier, &unk_1C5BE5678);
  return swift_getWitnessTable();
}

unint64_t sub_1C5960238()
{
  result = qword_1EDA48D98;
  if (!qword_1EDA48D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA48D98);
  }

  return result;
}

uint64_t sub_1C596028C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1C59602E0(a1, *v2, v3 | *(v2 + 8), *(v2 + 16), *(v2 + 24), a2);
}

uint64_t sub_1C59602E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v8 = a3;
  v12 = a3 & 0x100;
  v13 = sub_1C5BC8F34();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    if (v8)
    {

      v17 = a2;
    }

    else
    {

      sub_1C5BCB4E4();
      v18 = sub_1C5BC9844();
      v35 = a6;
      v19 = v12;
      v20 = a4;
      v21 = a1;
      v22 = v18;
      sub_1C5BC7C54();

      a1 = v21;
      a4 = v20;
      v12 = v19;
      a6 = v35;
      sub_1C5BC8F24();
      swift_getAtKeyPath();
      v23 = sub_1C5B5E4E8(a2, 0);
      (*(v14 + 8))(v16, v13, v23);
      v17 = v37;
    }

    v24 = v8 & 1;
    sub_1C5B5F07C(a2, v24);
    LOBYTE(v37) = v24;
    v36 = 1;
    v25 = sub_1C5B5EE3C(v17, a2, v12 | v24, a4, 1);
    sub_1C5B5E4E8(a2, v24);
  }

  else
  {
    if (v8)
    {
    }

    else
    {

      sub_1C5BCB4E4();
      v26 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      v27 = sub_1C5B5E4E8(a2, 0);
      (*(v14 + 8))(v16, v13, v27);
      a2 = v37;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198CA8, &qword_1C5BED498);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C5BCFF00;
    *(inited + 32) = HIBYTE(v12);
    *(inited + 40) = a4;
    v29 = sub_1C5960930(inited);
    swift_setDeallocating();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = a2;
    sub_1C5960DD4(v29, sub_1C5960FFC, 0, isUniquelyReferenced_nonNull_native, &v37);
    v25 = v37;
  }

  KeyPath = swift_getKeyPath(byte_1C5BED3D0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198D28, &qword_1C5BEDD50);
  (*(*(v32 - 8) + 16))(a6, a1, v32);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198D30, &unk_1C5BEDD58);
  v34 = (a6 + *(result + 36));
  *v34 = KeyPath;
  v34[1] = v25;
  return result;
}

unint64_t sub_1C5960664()
{
  result = qword_1EDA46628;
  if (!qword_1EDA46628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196DA8, &qword_1C5BE58E0);
    sub_1C5924F54(&qword_1EDA46298, &qword_1EC196DB8, &qword_1C5BE58F0, MEMORY[0x1E697FDF8]);
    sub_1C5924F54(&qword_1EDA46318, &qword_1EC196DB0, &qword_1C5BE58E8, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46628);
  }

  return result;
}

uint64_t sub_1C596078C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ArtworkInnerStrokeModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_1C5BC9394();
  sub_1C5BC8B84();
  sub_1C5AC3CD8(&qword_1EDA4E6A8, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
  sub_1C5BC8B04();
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_1C5960930(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191868, &qword_1C5BD3110);
    v3 = sub_1C5BCBC74();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1C5960A1C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1C5960A1C(char a1)
{
  sub_1C5BCBF54();
  sub_1C5BC8884();
  sub_1C5BCBF74();
  v2 = sub_1C5BCBF94();

  return sub_1C5960B70(a1 & 1, v2);
}

unint64_t sub_1C5960A8C()
{
  result = qword_1EDA465F0;
  if (!qword_1EDA465F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196D98, &unk_1C5BE58C8);
    sub_1C5924F54(&qword_1EDA46260, &qword_1EC196DA0, &qword_1C5BE58D8, MEMORY[0x1E697FDF8]);
    sub_1C5924F54(&qword_1EDA4E1A8, &qword_1EC190FC8, &qword_1C5BD6BF0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA465F0);
  }

  return result;
}

unint64_t sub_1C5960B70(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      v6 = sub_1C5BC8884();
      if (v6 == sub_1C5BC8884())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1C5960C34()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196D78, &qword_1C5BE5850);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196D80, &qword_1C5BE5858);
  sub_1C5924F54(&qword_1EDA46250, &qword_1EC196D78, &qword_1C5BE5850, MEMORY[0x1E697FDF8]);
  sub_1C5960CF0();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1C5960CF0()
{
  result = qword_1EDA46650;
  if (!qword_1EDA46650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196D80, &qword_1C5BE5858);
    sub_1C5924F54(&qword_1EDA46228, &qword_1EC196D88, &qword_1C5BE5860, MEMORY[0x1E697FEC8]);
    sub_1C5924F54(&qword_1EDA46408, &qword_1EC196D90, &qword_1C5BE5868, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46650);
  }

  return result;
}

void sub_1C5960DD4(uint64_t a1, void (*a2)(void *__return_ptr, char *), uint64_t a3, char a4, void *a5)
{
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  while (v10)
  {
    v13 = v12;
LABEL_11:
    v14 = __clz(__rbit64(v10)) | (v13 << 6);
    v15 = *(*(a1 + 56) + 8 * v14);
    v34[0] = *(*(a1 + 48) + v14);
    v35 = v15;
    a2(v33, v34);
    v16 = v33[0];
    v17 = v33[1];
    v18 = *a5;
    v19 = sub_1C5960A1C(v33[0]);
    v21 = v18[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_22;
    }

    v25 = v20;
    if (v18[3] >= v24)
    {
      if ((a4 & 1) == 0)
      {
        v30 = v19;
        sub_1C5AF62DC();
        v19 = v30;
      }
    }

    else
    {
      sub_1C59615B8(v24, a4 & 1);
      v19 = sub_1C5960A1C(v16);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_24;
      }
    }

    v10 &= v10 - 1;
    v27 = *a5;
    if (v25)
    {
      *(v27[7] + 8 * v19) = v17;
    }

    else
    {
      v27[(v19 >> 6) + 8] |= 1 << v19;
      *(v27[6] + v19) = v16;
      *(v27[7] + 8 * v19) = v17;
      v28 = v27[2];
      v23 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v23)
      {
        goto LABEL_23;
      }

      v27[2] = v29;
    }

    a4 = 1;
    v12 = v13;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      return;
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  sub_1C5BCBE84();
  __break(1u);
}

double sub_1C5960FFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1C5961028(void *a1)
{
  sub_1C5BC8FD4();
  sub_1C5BC92D4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C59610C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v4 = *(a1 + 16);
  v45 = *(v4 - 8);
  v46 = v2;
  MEMORY[0x1EEE9AC00](a1);
  v44 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v41 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v41 - v9;
  v49 = *(v10 + 32);
  v11 = sub_1C5BC8FD4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v41 - v19;
  v21 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1C5BC92D4();
  v47 = *(v25 - 8);
  v48 = v25;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  (*(v21 + 16))(v24, v46, a1, v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = v45;
    v30 = v42;
    (*(v45 + 32))(v42, v24, v4);
    v31 = v43;
    v32 = v49;
    sub_1C593EDC0(v30, v4, v49);
    v33 = v44;
    sub_1C593EDC0(v31, v4, v32);
    WitnessTable = swift_getWitnessTable();
    sub_1C5941738(v33, v11, v4, WitnessTable, v32);
    v35 = *(v29 + 8);
    v35(v33, v4);
    v35(v31, v4);
    v35(v30, v4);
  }

  else
  {
    (*(v12 + 32))(v20, v24, v11);
    v36 = swift_getWitnessTable();
    sub_1C593EDC0(v20, v11, v36);
    sub_1C593EDC0(v17, v11, v36);
    v32 = v49;
    sub_1C5950E54(v14, v11, v4, v36, v49);
    v37 = *(v12 + 8);
    v37(v14, v11);
    v37(v17, v11);
    v37(v20, v11);
  }

  v51 = swift_getWitnessTable();
  v52 = v32;
  v38 = v48;
  v39 = swift_getWitnessTable();
  sub_1C593EDC0(v28, v38, v39);
  return (*(v47 + 8))(v28, v38);
}

void sub_1C59615B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191868, &qword_1C5BD3110);
  v6 = sub_1C5BCBC64();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_1C5BCBF54();
      sub_1C5BC8884();
      sub_1C5BCBF74();
      v22 = sub_1C5BCBF94();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
}

uint64_t sub_1C5961840@<X0>(uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1929C8, &qword_1C5BD6540);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v58 = &v53 - v4;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1929D0, &qword_1C5BD6548);
  MEMORY[0x1EEE9AC00](v57);
  v6 = &v53 - v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1929D8, &unk_1C5BD6550);
  MEMORY[0x1EEE9AC00](v56);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v53 - v10;
  v11 = sub_1C5BC8F34();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2[1];
  v76 = *v2;
  v77 = v15;
  v78 = v2[2];
  v79 = *(v2 + 48);
  v85 = *(v2 + 48);
  v16 = *(v2 + 5);
  v84 = v16;
  if (v85 == 1)
  {
    v17 = v16;
    v71 = v16;
  }

  else
  {
    sub_1C59400B0(&v84, &v80, &qword_1EC1929E0, &qword_1C5BDE810);
    sub_1C5BCB4E4();
    v18 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v84, &qword_1EC1929E0, &qword_1C5BDE810);
    (*(v12 + 8))(v14, v11);
    v17 = v71;
  }

  if (v17 == 3)
  {
    LOBYTE(v17) = 0;
  }

  LOBYTE(v80) = v17;
  sub_1C595D950(&v80, &type metadata for NowPlayingMetadataViewSpecs.MiniPlayer, &off_1F451C840);
  v80 = v72;
  v81 = v73;
  v82 = v74;
  v83 = v75;
  v19 = v77;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1929E8, &qword_1C5BD6560);
  v21 = &v6[v20[10]];
  *&v59 = 0;
  sub_1C5BCA684();
  v22 = *(&v62 + 1);
  *v21 = v62;
  *(v21 + 1) = v22;
  v23 = &v6[v20[11]];
  *v23 = swift_getKeyPath("؈\\&");
  v23[8] = 0;
  v24 = &v6[v20[12]];
  *v24 = swift_getKeyPath(asc_1C5BD5D88);
  *(v24 + 1) = 0;
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  v24[32] = 0;
  v25 = &v6[v20[13]];
  *v25 = swift_getKeyPath(asc_1C5BD5DB0);
  v25[8] = 0;
  v26 = &v6[v20[14]];
  *v26 = swift_getKeyPath(byte_1C5BD5CB8);
  v26[8] = 0;
  v66 = 1;
  v27 = &v6[v20[9]];
  *v27 = xmmword_1C5BD5090;
  *(v27 + 2) = 0x4008000000000000;
  v27[24] = v19;
  *(v27 + 28) = 0;
  *(v27 + 9) = 0;
  v27[40] = 1;
  *(v27 + 6) = 0xD000000000000010;
  *(v27 + 7) = 0x80000001C5BF69A0;
  sub_1C59E22A8(&v76, &v80, v6);
  v28 = &v6[v20[15]];
  *v28 = 0;
  v28[8] = 1;
  v29 = *(&v81 + 1);
  KeyPath = swift_getKeyPath(byte_1C5BD5E68);
  v31 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1929F0, &qword_1C5BD6568) + 36)];
  *v31 = KeyPath;
  v31[1] = v29;
  v32 = swift_getKeyPath(byte_1C5BD6570);
  v33 = BYTE1(v77);
  type metadata accessor for TapExcludedGeometries(0);
  sub_1C59576B4(qword_1EDA488D8, 255, type metadata accessor for TapExcludedGeometries, &unk_1C5BF1064);

  v34 = sub_1C5BC8324();
  v36 = v35;
  v59 = 0u;
  v60 = 0u;
  v61 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1929F8, &qword_1C5BD6590);
  sub_1C5BCA684();
  v37 = v64;
  v38 = v65;
  v39 = v62;
  v40 = v63;
  v70 = v36 & 1;
  v68 = v64;
  v41 = &v6[*(v57 + 36)];
  *v41 = v32;
  v41[8] = v33;
  *(v41 + 9) = v59;
  *(v41 + 3) = *(&v59 + 3);
  *(v41 + 2) = v34;
  v41[24] = v36 & 1;
  *(v41 + 25) = *v69;
  *(v41 + 7) = *&v69[3];
  *(v41 + 2) = v39;
  *(v41 + 3) = v40;
  v41[64] = v37;
  v42 = *v67;
  *(v41 + 17) = *&v67[3];
  *(v41 + 65) = v42;
  *(v41 + 9) = v38;
  v62 = v76;
  sub_1C59E745C();
  sub_1C594A23C();
  sub_1C5BCA034();
  sub_1C5924EF4(v6, &qword_1EC1929D0, &qword_1C5BD6548);
  v43 = v55;
  sub_1C5BC8AA4();
  sub_1C5924EF4(v8, &qword_1EC1929D8, &unk_1C5BD6550);
  v44 = v43;
  v45 = v58;
  sub_1C59E7D34(v44, v58, &qword_1EC1929D8, &unk_1C5BD6550);
  v46 = sub_1C5BCAE44();
  v47 = [v46 _isNaturallyRTL];
  sub_1C595E8B8(&v80);

  v48 = swift_getKeyPath(byte_1C5BD5E00);
  v49 = v45;
  v50 = v54;
  sub_1C59E7D34(v49, v54, &qword_1EC1929D8, &unk_1C5BD6550);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192A00, &qword_1C5BD6598);
  v52 = v50 + *(result + 36);
  *v52 = v48;
  *(v52 + 8) = v47;
  return result;
}

uint64_t sub_1C5961FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ArtworkCornerStyle(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v19 - v9);
  sub_1C59621C8(&v19 - v9);
  v11 = *v10;
  sub_1C5945898(v10, type metadata accessor for ArtworkCornerStyle);
  sub_1C59621C8(v7);
  v12 = *(v5 + 28);
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196D98, &unk_1C5BE58C8) + 36));
  v14 = *(sub_1C5BC8B84() + 20);
  v15 = sub_1C5BC9044();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v13[v14], &v7[v12], v15);
  *v13 = v11;
  *(v13 + 1) = v11;
  (*(v16 + 8))(&v7[v12], v15);
  *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC190FC8, &qword_1C5BD6BF0) + 36)] = 256;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196DA0, &qword_1C5BE58D8);
  return (*(*(v17 - 8) + 16))(a2, a1, v17);
}

uint64_t sub_1C59621F0(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1C59622E4(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1C59622E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1943F8, &unk_1C5BDB380);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C59623F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v41 = a2;
  v3 = sub_1C5BC8F34();
  v36 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196D58, &qword_1C5BE53B8);
  MEMORY[0x1EEE9AC00](v39);
  v7 = &v35 - v6;
  v8 = *v2;
  v66 = *(v2 + 8);
  v9 = *(v2 + 57);
  v63 = *(v2 + 41);
  v64 = v9;
  *v65 = *(v2 + 73);
  *&v65[15] = *(v2 + 88);
  v10 = *(v2 + 25);
  v61 = *(v2 + 9);
  v62 = v10;
  v11 = *(v2 + 104);
  v12 = *(v2 + 105);
  v13 = *(v2 + 121);
  *(v60 + 15) = *(v2 + 136);
  v59 = v12;
  v60[0] = v13;
  v46 = v8;
  v47 = v66;
  v50 = *(v2 + 41);
  v51 = *(v2 + 57);
  *v52 = *(v2 + 73);
  v14 = *(v2 + 88);
  v15 = *(v2 + 96);
  v48 = *(v2 + 9);
  v49 = *(v2 + 25);
  *&v52[15] = v14;
  v53 = v15;
  v54 = v11;
  v16 = *(v2 + 105);
  v17 = *(v2 + 121);
  *&v56[15] = *(v2 + 136);
  *v56 = v17;
  v55 = v16;
  v38 = sub_1C5AC33F8();

  v18 = v15;
  v37 = v11;
  if ((v11 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v19 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v36 + 8))(v5, v3);
    v18 = *&v57[0];
  }

  v20 = v3;
  swift_getKeyPath(asc_1C5BE53C0);
  *&v57[0] = v18;
  sub_1C5AC3CD8(&qword_1EDA4AF70, _s12PresentationCMa, &unk_1C5BD2B30);
  sub_1C5BC7B74();

  v21 = *(v18 + 17);

  if (v66 == 1)
  {
    v45 = v8;
    v22 = v8;
  }

  else
  {
    sub_1C5950E48(v8, 0);
    sub_1C5BCB4E4();
    v23 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v24 = sub_1C5942458(v8, 0);
    (*(v36 + 8))(v5, v20, v24);
    v22 = v45;
  }

  v25 = 0.0;
  if (v22 <= 1u)
  {
    if (!v22)
    {
      v26 = [objc_opt_self() currentTraitCollection];
      [v26 displayScale];
      v28 = v27;

      v29 = 1.0;
      if (v28 >= 1.0)
      {
        v29 = v28;
        if ((~*&v28 & 0x7FF0000000000000) == 0)
        {
          v29 = 1.0;
          if ((*&v28 & 0xFFFFFFFFFFFFFLL) == 0)
          {
            v29 = v28;
          }
        }
      }

      v25 = 1.0 / v29;
    }
  }

  else if (v22 != 3)
  {
    v25 = 0.5;
  }

  v50 = v63;
  v51 = v64;
  *v52 = *v65;
  v48 = v61;
  v49 = v62;
  v55 = v59;
  v30 = v38 & 1;
  v46 = v8;
  v47 = v66;
  *&v52[15] = *&v65[15];
  v53 = v15;
  v54 = v37;
  *v56 = v60[0];
  *&v56[15] = *(v60 + 15);
  sub_1C5962928(v57);
  v42 = v57[0];
  v43 = v57[1];
  v44 = v58;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196D60, &qword_1C5BE53E8);
  (*(*(v31 - 8) + 16))(v7, v40, v31);
  v32 = &v7[*(v39 + 36)];
  *v32 = v30;
  v32[1] = v21;
  *(v32 + 1) = v25;
  v33 = v43;
  *(v32 + 1) = v42;
  *(v32 + 2) = v33;
  *(v32 + 6) = v44;
  sub_1C59E7D34(v7, v41, &qword_1EC196D58, &qword_1C5BE53B8);
  return sub_1C5962ED4(v57, &v46);
}

void sub_1C5962928(uint64_t a1@<X8>)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[7];
  v32 = v1[6];
  v33 = v7;
  v34 = v1[8];
  v8 = v1[3];
  v29 = v1[2];
  v30 = v8;
  v9 = v1[5];
  v31[0] = v1[4];
  v31[1] = v9;
  v10 = v1[1];
  v27 = *v1;
  v28 = v10;
  v11 = v27;
  if (BYTE8(v27) == 1)
  {
    v26 = v27;
    v12 = v27;
    if (v27)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1C5950E48(v27, 0);
    sub_1C5BCB4E4();
    v14 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v15 = sub_1C5942458(v11, 0);
    (*(v4 + 8))(v6, v3, v15);
    v12 = v26;
    if (v26)
    {
LABEL_3:
      if (v12 == 4)
      {
        v22[6] = v32;
        v22[7] = v33;
        v22[8] = v34;
        v22[2] = v29;
        v22[3] = v30;
        v22[4] = v31[0];
        v22[5] = v31[1];
        v22[0] = v27;
        v22[1] = v28;
        if (sub_1C5AC33F8())
        {
          if (qword_1EC190808 != -1)
          {
            swift_once();
          }

          v13 = &qword_1EC1A6CA8;
          goto LABEL_28;
        }
      }

      else if (v12 == 2)
      {
        if (qword_1EC1907D8 != -1)
        {
          swift_once();
        }

        v13 = &qword_1EC1A6BE0;
LABEL_28:
        v19 = v13[3];
        v18 = v13[4];
        v20 = *(v13 + 1);
        *a1 = *v13;
        *(a1 + 8) = v20;
        *(a1 + 24) = v19;
        *(a1 + 32) = v18;
        return;
      }

      if (qword_1EDA4DAD0 != -1)
      {
        swift_once();
      }

      v13 = &xmmword_1EDA5DB28;
      goto LABEL_28;
    }
  }

  if (BYTE9(v31[1]))
  {
    v24 = v30;
    *v25 = v31[0];
    *&v25[9] = *(v31 + 9);
    v22[9] = v28;
    v23 = v29;
  }

  else
  {
    sub_1C59400B0(&v28, v22, &qword_1EC191B58, &qword_1C5BE53F0);
    sub_1C5BCB4E4();
    v16 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v28, &qword_1EC191B58, &qword_1C5BE53F0);
    (*(v4 + 8))(v6, v3);
  }

  if (BYTE1(v23))
  {
    v17 = v34;
    if (v34)
    {
      swift_beginAccess();
      if (*(v17 + 16))
      {
        if (qword_1EC1907E0 != -1)
        {
          swift_once();
        }

        v13 = &qword_1EC1A6C08;
      }

      else
      {
        if (qword_1EC1907E8 != -1)
        {
          swift_once();
        }

        v13 = &qword_1EC1A6C30;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v21 = v34;
    if (v34)
    {
      swift_beginAccess();
      if (*(v21 + 16))
      {
        if (qword_1EC1907F0 != -1)
        {
          swift_once();
        }

        v13 = &qword_1EC1A6C58;
      }

      else
      {
        if (qword_1EC1907F8 != -1)
        {
          swift_once();
        }

        v13 = &qword_1EC1A6C80;
      }

      goto LABEL_28;
    }
  }

  _s14DefaultArtworkCMa();
  sub_1C5AC3CD8(qword_1EDA49E00, _s14DefaultArtworkCMa, &unk_1C5BDEF78);
  sub_1C5BC8C74();
  __break(1u);
}

void *sub_1C5962E48@<X0>(_BYTE *a1@<X8>)
{
  sub_1C5B5F0B8();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

double sub_1C5962E98(uint64_t a1)
{
  *&xmmword_1EDA5DB28 = sub_1C5BCA484();
  result = 0.0;
  *(&xmmword_1EDA5DB28 + 8) = 0u;
  *&qword_1EDA5DB40 = 0u;
  return result;
}

uint64_t sub_1C5962F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a1;
  v79 = a3;
  v61 = type metadata accessor for ArtworkShadowModifier(0);
  MEMORY[0x1EEE9AC00](v61);
  v67 = (&v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = *(a2 + 16);
  v75 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = *(a2 + 24);
  v62 = a2;
  v60 = type metadata accessor for ArtworkInnerStrokeModifier(0, v7, v73, v8);
  v77 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v68 = &v57 - v9;
  v10 = type metadata accessor for ArtworkClipShape(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getWitnessTable();
  v13 = sub_1C5BC9394();
  v14 = sub_1C5BC8AB4();
  v59 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v57 - v15;
  v17 = sub_1C5BC8AB4();
  v65 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v57 - v18;
  v66 = sub_1C5BC8AB4();
  v72 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v58 = &v57 - v19;
  v74 = sub_1C5BC8AB4();
  v76 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v64 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v69 = &v57 - v22;
  _s7ArtworkC20MiniPlayerAppearanceCMa(0);
  sub_1C5AC3CD8(&unk_1EDA49D30, _s7ArtworkC20MiniPlayerAppearanceCMa, &unk_1C5BDD4F8);
  v23 = sub_1C5BC8324();
  v25 = v24;
  _s12PresentationCMa(0);
  sub_1C5AC3CD8(&qword_1EDA4AF70, _s12PresentationCMa, &unk_1C5BD2B30);
  v26 = sub_1C5BC8324();
  v88 = v23;
  v89 = v25 & 1;
  v90 = v26;
  v91 = v27 & 1;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1C694E550](&v88, v13, &type metadata for ArtworkMacHoverEffect, WitnessTable);

  *v12 = swift_getKeyPath(byte_1C5BE5420);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194E10, &unk_1C5BD72B0);
  swift_storeEnumTagMultiPayload();
  v29 = sub_1C5960238();
  v86 = WitnessTable;
  v87 = v29;
  v30 = swift_getWitnessTable();
  v31 = v57;
  MEMORY[0x1C694E550](v12, v14, v10, v30);
  sub_1C5945898(v12, type metadata accessor for ArtworkClipShape);
  (*(v59 + 8))(v16, v14);
  v32 = v71;
  v33 = v78;
  v34 = v70;
  (*(v75 + 16))(v71, v78, v70);
  v35 = v62;
  v36 = *(v33 + *(v62 + 36));
  v37 = v33;
  v38 = v68;
  sub_1C596388C(v32, v34, v73, v68, v36);
  v39 = sub_1C5AC3CD8(&qword_1EDA4BBF0, type metadata accessor for ArtworkClipShape, &unk_1C5BE5718);
  v84 = v30;
  v85 = v39;
  v40 = swift_getWitnessTable();
  v41 = v58;
  v42 = v60;
  MEMORY[0x1C694E550](v38, v17, v60, v40);
  (*(v77 + 8))(v38, v42);
  (*(v65 + 8))(v31, v17);
  v43 = v37 + *(v35 + 40);
  v44 = v67;
  *v67 = *v43;
  *(v44 + 8) = *(v43 + 8);
  *(v44 + 24) = *(v43 + 24);
  v45 = v61;
  v46 = *(v61 + 20);
  *(v44 + v46) = swift_getKeyPath(byte_1C5BE5420);
  swift_storeEnumTagMultiPayload();

  v47 = swift_getWitnessTable();
  v82 = v40;
  v83 = v47;
  v48 = v66;
  v49 = swift_getWitnessTable();
  v50 = v64;
  MEMORY[0x1C694E550](v44, v48, v45, v49);
  sub_1C5945898(v44, type metadata accessor for ArtworkShadowModifier);
  (*(v72 + 8))(v41, v48);
  v51 = sub_1C5AC3CD8(&qword_1EDA48D90, type metadata accessor for ArtworkShadowModifier, &unk_1C5BE5678);
  v80 = v49;
  v81 = v51;
  v52 = v74;
  v53 = swift_getWitnessTable();
  v54 = v69;
  sub_1C593EDC0(v50, v52, v53);
  v55 = *(v76 + 8);
  v55(v50, v52);
  sub_1C593EDC0(v54, v52, v53);
  return (v55)(v54, v52);
}

uint64_t sub_1C596388C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  (*(*(a2 - 8) + 32))(a4, a1, a2);
  v10 = type metadata accessor for ArtworkInnerStrokeModifier(0, a2, a3, v9);
  *(a4 + *(v10 + 36)) = a5;
  v11 = *(v10 + 40);
  *(a4 + v11) = swift_getKeyPath(byte_1C5BE5420);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194E10, &unk_1C5BD72B0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C596399C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C5BCAA54();
  v7 = v6;
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196DA8, &qword_1C5BE58E0) + 36);
  sub_1C5963AC8(v2, v8);
  v9 = (v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196DB0, &qword_1C5BE58E8) + 36));
  *v9 = v5;
  v9[1] = v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196DB8, &qword_1C5BE58F0);
  v11 = *(*(v10 - 8) + 16);

  return v11(a2, a1, v10);
}

void *sub_1C5963A78@<X0>(_BYTE *a1@<X8>)
{
  sub_1C5B5CDD4();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

uint64_t sub_1C5963AC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_1C5BC9014();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = type metadata accessor for ArtworkCornerStyle(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196DC0, &qword_1C5BE58F8);
  v33 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v16 = *(a1 + 1);
  v35 = *(a1 + 3);
  v36 = v16;
  if (qword_1EDA4DAD0 != -1)
  {
    swift_once();
  }

  v31 = *&qword_1EDA5DB40;
  v32 = *(&xmmword_1EDA5DB28 + 8);
  if ((sub_1C5BCA454() & 1) == 0 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v36, v32), vceqq_f64(v35, v31)), xmmword_1C5BE50B0)) & 0xF) != 0)
  {
    type metadata accessor for ArtworkShadowModifier(0);
    sub_1C59621C8(v12);
    v20 = *v12;
    v21 = *(v10 + 20);
    v22 = *(sub_1C5BC8B84() + 20);
    v23 = sub_1C5BC9044();
    (*(*(v23 - 8) + 32))(&v15[v22], &v12[v21], v23);
    *v15 = v20;
    *(v15 + 1) = v20;
    *&v15[*(sub_1C5BC8B74() + 20)] = 0x3FF0000000000000;
    v24 = sub_1C5BCA494();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196DC8, &qword_1C5BE5900);
    *&v15[*(v25 + 52)] = v24;
    *&v15[*(v25 + 56)] = 256;
    v26 = sub_1C5BCA4B4();
    v27 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196DD0, &unk_1C5BE5908) + 36)];
    *v27 = v26;
    v28 = *&v35.i64[1];
    *(v27 + 8) = vextq_s8(v36, v35, 8uLL);
    *(v27 + 3) = v28;
    sub_1C5BC9004();
    (*(v4 + 16))(v6, v9, v3);
    sub_1C5AC3CD8(&qword_1EC196DD8, MEMORY[0x1E697F400], MEMORY[0x1E697F3F8]);
    v29 = sub_1C5BC8674();
    (*(v4 + 8))(v9, v3);
    *&v15[*(v13 + 36)] = v29;
    v30 = v34;
    sub_1C59E7D34(v15, v34, &qword_1EC196DC0, &qword_1C5BE58F8);
    return (*(v33 + 56))(v30, 0, 1, v13);
  }

  else
  {
    v17 = v34;
    v18 = *(v33 + 56);

    return v18(v17, 1, 1, v13);
  }
}

uint64_t sub_1C5963F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[2] = a1;
  v21[3] = a3;
  swift_getWitnessTable();
  sub_1C5BC9394();
  v5 = sub_1C5BC8B84();
  v6 = *(a2 + 16);
  v7 = sub_1C5AC3CD8(&qword_1EDA4E6A8, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
  v8 = *(a2 + 24);
  v25 = v5;
  v26 = v6;
  v27 = MEMORY[0x1E6981E70];
  v28 = v7;
  v29 = v8;
  v30 = MEMORY[0x1E6981E60];
  sub_1C5BC8B04();
  swift_getWitnessTable();
  v21[1] = sub_1C5BC8BE4();
  v9 = sub_1C5BC8AB4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v21 - v14;
  v21[6] = v6;
  v21[7] = v8;
  v22 = v3;
  sub_1C5BCAA54();
  WitnessTable = swift_getWitnessTable();
  sub_1C5BCA2C4();
  v17 = swift_getWitnessTable();
  v23 = WitnessTable;
  v24 = v17;
  v18 = swift_getWitnessTable();
  sub_1C593EDC0(v12, v9, v18);
  v19 = *(v10 + 8);
  v19(v12, v9);
  sub_1C593EDC0(v15, v9, v18);
  return (v19)(v15, v9);
}

uint64_t sub_1C5964214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v7 = type metadata accessor for ArtworkCornerStyle(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C5BC8B84();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1C5AC3CD8(&qword_1EDA4E6A8, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
  v34 = v11;
  v35 = a2;
  v29 = a2;
  v36 = MEMORY[0x1E6981E70];
  v37 = v31;
  v38 = a3;
  v39 = MEMORY[0x1E6981E60];
  v30 = a3;
  v14 = sub_1C5BC8B04();
  v32 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v28 - v18;
  type metadata accessor for ArtworkInnerStrokeModifier(0, a2, a3, v20);
  sub_1C59621C8(v10);
  v21 = *v10;
  v22 = *(v8 + 28);
  v23 = *(v11 + 20);
  v24 = sub_1C5BC9044();
  (*(*(v24 - 8) + 32))(&v13[v23], &v10[v22], v24);
  *v13 = v21;
  *(v13 + 1) = v21;
  sub_1C5964B48(a1, 1, v11, v29, v31, v30, v16);
  sub_1C5945898(v13, MEMORY[0x1E697EAF0]);
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v16, v14, WitnessTable);
  v26 = *(v32 + 8);
  v26(v16, v14);
  sub_1C593EDC0(v19, v14, WitnessTable);
  return (v26)(v19, v14);
}

uint64_t Marquee.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v27 = a2;
  v43.val[0] = *(a1 + 16);
  v43.val[1] = v43.val[0];
  v28 = v43.val[0];
  v29 = v43.val[0];
  v2 = v42;
  vst2q_f64(v2, v43);
  type metadata accessor for Marquee.ContentWithBadge(255, v42);
  sub_1C5BC8AB4();
  v24 = sub_1C5BC8AB4();
  type metadata accessor for Marquee.MarqueeingContent(255, *&v28.f64[0], *&v28.f64[1], v3);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198CB0, &unk_1C5BED4A0);
  sub_1C5BC8AB4();
  v4 = sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929C0, &qword_1C5BD6230);
  sub_1C5BC8AB4();
  v5 = sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E6980A18];
  v40 = WitnessTable;
  v41 = sub_1C5924F54(&qword_1EDA46078, &qword_1EC198CB0, &unk_1C5BED4A0, MEMORY[0x1E6980A18]);
  v38 = swift_getWitnessTable();
  v39 = MEMORY[0x1E69805D0];
  v8 = swift_getWitnessTable();
  v36 = swift_getWitnessTable();
  v37 = sub_1C5924F54(&qword_1EDA46040, &qword_1EC1929C0, &qword_1C5BD6230, v7);
  v34 = swift_getWitnessTable();
  v35 = sub_1C5953670();
  v9 = swift_getWitnessTable();
  v42[0] = v4;
  v42[1] = v5;
  v42[2] = v8;
  v42[3] = v9;
  type metadata accessor for ShownWhenAppeared(255, v42);
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  v10 = sub_1C5BC85B4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v17 = v26;
  v18 = v26 + *(v25 + 36);
  v19 = *(v18 + 48);
  v20 = *(v18 + 56);
  sub_1C5BC9854();
  v30 = v28;
  v31 = v17;
  v32 = v19;
  v33 = v20;
  sub_1C5BC85A4();
  v21 = swift_getWitnessTable();
  sub_1C593EDC0(v13, v10, v21);
  v22 = *(v11 + 8);
  v22(v13, v10);
  sub_1C593EDC0(v16, v10, v21);
  return (v22)(v16, v10);
}

uint64_t sub_1C5964988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v28 = a3;
  v15 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v27[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v27[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v22 + 16))(v21, v24, v23, v19);
  (*(v15 + 16))(v17, a1, a5);

  return sub_1C5964BEC(v21, v17, a2, v28, v25, a4, a5, MEMORY[0x1E6981E70], a8, a6, a7, MEMORY[0x1E6981E60]);
}

uint64_t sub_1C5964B48@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x4_0@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1C5BC83C4();
  sub_1C5964988(a1, v16, a2, a3, a4, x4_0, a6, a7);
  return sub_1C59650C0(v16);
}

uint64_t sub_1C5964BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v44 = a5;
  v42 = a4;
  v37 = a3;
  v38 = a8;
  v40 = a2;
  v47 = a9;
  v48 = a1;
  v33[1] = a10;
  v41 = *(a8 - 8);
  v45 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v39 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1C5BC92A4();
  MEMORY[0x1EEE9AC00](v46);
  v43 = v33 - v15;
  v36 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a6 - 8);
  v19 = v34;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1C5BC87A4();
  MEMORY[0x1EEE9AC00](v23);
  WitnessTable = swift_getWitnessTable();
  v49 = v23;
  v50 = a7;
  v51 = WitnessTable;
  v52 = a11;
  v35 = sub_1C5BC8264();
  v25 = MEMORY[0x1EEE9AC00](v35);
  v26 = *(v19 + 16);
  v33[0] = a6;
  v26(v22, v48, a6, v25);
  sub_1C5BC8794();
  v27 = v36;
  v28 = v40;
  (*(v36 + 16))(v18, v40, a7);
  sub_1C5BC8254();
  v29 = v41;
  v30 = v38;
  v31 = v44;
  (*(v41 + 16))(v39, v44, v38);
  sub_1C5BCAA54();
  (*(v29 + 8))(v31, v30);
  (*(v27 + 8))(v28, a7);
  (*(v34 + 8))(v48, v33[0]);
  sub_1C5BC9294();
  return sub_1C5BC89F4();
}

uint64_t sub_1C596500C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a3 - 8) + 32))(a6, a1);
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v11 = a6 + *(type metadata accessor for Marquee.ContentWithBadge(0, v13) + 52);
  result = swift_getKeyPath("0q[&");
  *v11 = result;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  return result;
}

uint64_t _s17ViewConfigurationVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

BOOL sub_1C59651B8(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1C5BCBF54();
  sub_1C5BC8884();
  sub_1C5BCBF74();
  v3 = sub_1C5BCBF94();
  v4 = -1 << *(a2 + 32);
  v5 = v3 & ~v4;
  if (((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return 0;
  }

  v6 = ~v4;
  do
  {
    v7 = sub_1C5BC8884();
    v8 = v7 == sub_1C5BC8884();
    result = v8;
    if (v8)
    {
      break;
    }

    v5 = (v5 + 1) & v6;
  }

  while (((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  return result;
}

uint64_t sub_1C59652A0@<X0>(uint64_t (*a1)(void *)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v9 = a7 + *(type metadata accessor for ShownWhenAppeared(0, &v14) + 56);
  v18 = 0;
  v10 = sub_1C5BCA684();
  v11 = v15;
  *v9 = v14;
  *(v9 + 8) = v11;
  v12 = a1(v10);
  return a2(v12);
}

uint64_t sub_1C5965358@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1C5BC8284();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196170, &qword_1C5BDA000);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v22 - v11);
  if (*v1 == 1)
  {
    sub_1C5BCA494();
    v13 = sub_1C5BCA4B4();

    v14 = *(v10 + 36);
    v15 = *MEMORY[0x1E6981DB8];
    v16 = sub_1C5BCAB54();
    (*(*(v16 - 8) + 104))(v12 + v14, v15, v16);
    *v12 = v13;
    sub_1C5924F54(&qword_1EC192920, &unk_1EC196170, &qword_1C5BDA000, MEMORY[0x1E697FAF0]);
  }

  else
  {
    v17 = v1[1];
    sub_1C5BC8CD4();
    (*(v4 + 104))(v6, *MEMORY[0x1E697DBA8], v3);
    v18 = sub_1C5BC8274();
    v19 = *(v4 + 8);
    v19(v6, v3);
    v19(v9, v3);
    if (v18 & 1) == 0 || (v17)
    {
      sub_1C5BCA474();
    }

    else
    {
      sub_1C5BCA494();
    }

    v20 = sub_1C5BCA4B4();

    v22[1] = v20;
  }

  result = sub_1C5BC85E4();
  *a1 = result;
  return result;
}

double sub_1C5965644(uint64_t a1)
{
  if (qword_1EDA45F90 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x1EEE9AC00](a1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196D78, &qword_1C5BE5850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196D80, &qword_1C5BE5858);
  sub_1C5924F54(&qword_1EDA46250, &qword_1EC196D78, &qword_1C5BE5850, MEMORY[0x1E697FDF8]);
  sub_1C5960CF0();
  sub_1C5BCA374();

  return result;
}

uint64_t sub_1C59657AC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v10 = sub_1C5BC8F34();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v14 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v11 + 8))(v13, v10);
    a1 = v24;
  }

  swift_getKeyPath(byte_1C5BE5870);
  v24 = a1;
  sub_1C5AC3CD8(&unk_1EDA49D30, _s7ArtworkC20MiniPlayerAppearanceCMa, &unk_1C5BDD4F8);
  sub_1C5BC7B74();

  v15 = *(a1 + 18);

  if (v15 != 1)
  {
    goto LABEL_7;
  }

  if ((a4 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v16 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v11 + 8))(v13, v10);
    a3 = v24;
  }

  swift_getKeyPath(asc_1C5BE53C0);
  v24 = a3;
  sub_1C5AC3CD8(&qword_1EDA4AF70, _s12PresentationCMa, &unk_1C5BD2B30);
  sub_1C5BC7B74();

  v17 = *(a3 + 17);

  if ((v17 & 1) == 0)
  {
    sub_1C5BCA474();
    v18 = sub_1C5BCA4B4();

    v19 = sub_1C5BCA5A4();
    sub_1C5BC99C4();
    sub_1C5BC9974();
    v21 = sub_1C5BC99E4();

    KeyPath = swift_getKeyPath(byte_1C5BE5898);
    result = sub_1C5BCA494();
  }

  else
  {
LABEL_7:
    v18 = 0;
    v19 = 0;
    KeyPath = 0;
    v21 = 0;
    result = 0;
  }

  *a5 = v18;
  a5[1] = v19;
  a5[2] = KeyPath;
  a5[3] = v21;
  a5[4] = result;
  return result;
}

double sub_1C5965B5C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196118, &qword_1C5BEDD40);
  sub_1C5BCA6B4();
  return v2;
}

double sub_1C5965BC0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = sub_1C5BCAA54();
  v14 = v13;
  LOBYTE(v23[0]) = a3 & 1;
  sub_1C59657AC(a2, a3 & 1, a4, a5 & 1, v23);
  v15 = v23[0];
  v16 = v23[1];
  v17 = v23[2];
  v18 = v23[3];
  v19 = v23[4];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196D88, &qword_1C5BE5860);
  (*(*(v20 - 8) + 16))(a6, a1, v20);
  v21 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196D80, &qword_1C5BE5858) + 36));
  *v21 = v15;
  v21[1] = v16;
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v21[5] = v12;
  v21[6] = v14;
  sub_1C5965D28(v15, v16, v17, v18, v19);

  return sub_1C5965D98(v15, v16, v17, v18, v19);
}

uint64_t sub_1C5965D28(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
  }

  return result;
}

double sub_1C5965D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1C5965E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1997D0, &qword_1C5BF1298);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1997D8, &qword_1C5BF12A0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v28 - v9;
  v11 = swift_allocObject();
  v12 = *(v3 + 48);
  *(v11 + 3) = *(v3 + 32);
  *(v11 + 4) = v12;
  *(v11 + 5) = *(v3 + 64);
  v13 = *(v3 + 16);
  *(v11 + 1) = *v3;
  *(v11 + 2) = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1997E0, &qword_1C5BF12A8);
  (*(*(v14 - 8) + 16))(v7, a1, v14);
  v15 = &v7[*(v5 + 36)];
  *v15 = sub_1C5966344;
  v15[1] = 0;
  v15[2] = sub_1C59717F8;
  v15[3] = v11;
  v16 = *(v3 + 48);
  v31 = *(v3 + 32);
  v32 = v16;
  v33 = *(v3 + 64);
  sub_1C596625C(v3, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1997E8, &unk_1C5BF12B0);
  sub_1C5BCA694();
  v31 = v29[0];
  v32 = v29[1];
  LOBYTE(v33) = v30;
  v17 = swift_allocObject();
  v18 = *(v3 + 48);
  v17[3] = *(v3 + 32);
  v17[4] = v18;
  v17[5] = *(v3 + 64);
  v19 = *(v3 + 16);
  v17[1] = *v3;
  v17[2] = v19;
  sub_1C596625C(v3, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1929F8, &qword_1C5BD6590);
  sub_1C594664C();
  sub_1C5946730();
  sub_1C5BCA344();

  sub_1C5924EF4(v7, &qword_1EC1997D0, &qword_1C5BF1298);
  v20 = swift_allocObject();
  v21 = *(v3 + 48);
  v20[3] = *(v3 + 32);
  v20[4] = v21;
  v20[5] = *(v3 + 64);
  v22 = *(v3 + 16);
  v20[1] = *v3;
  v20[2] = v22;
  v23 = &v10[*(v8 + 36)];
  *v23 = 0;
  *(v23 + 1) = 0;
  *(v23 + 2) = sub_1C5B8579C;
  *(v23 + 3) = v20;
  LOBYTE(v31) = *(v3 + 8);
  v24 = swift_allocObject();
  v25 = *(v3 + 48);
  v24[3] = *(v3 + 32);
  v24[4] = v25;
  v24[5] = *(v3 + 64);
  v26 = *(v3 + 16);
  v24[1] = *v3;
  v24[2] = v26;
  sub_1C596625C(v3, v29);
  sub_1C596625C(v3, v29);
  sub_1C5946558();
  sub_1C5BCA344();

  return sub_1C59661A4(v10);
}

uint64_t sub_1C59661A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1997D8, &qword_1C5BF12A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C5966294@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C5BC86C4();
  for (i = 0; ; ++i)
  {
    if (!byte_1F45189D8[i + 32])
    {
      if (v3 > 0.0)
      {
        LOBYTE(i) = 0;
        goto LABEL_16;
      }

      goto LABEL_12;
    }

    if (byte_1F45189D8[i + 32] != 1)
    {
      break;
    }

    if (v3 > 594.0)
    {
      LOBYTE(i) = 1;
      goto LABEL_16;
    }

LABEL_12:
    if (i == 2)
    {
      goto LABEL_16;
    }

LABEL_6:
    ;
  }

  if (v3 <= 690.0 && i != 2)
  {
    goto LABEL_6;
  }

  LOBYTE(i) = 2;
LABEL_16:
  *a1 = i;
  return result;
}

uint64_t sub_1C5966344@<X0>(double *a1@<X8>)
{
  v2 = sub_1C5BC9314();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = 0xD000000000000037;
  v15[1] = 0x80000001C5BFD680;
  sub_1C5BC9494();
  sub_1C5BC86D4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  *(a1 + 1) = v9;
  *(a1 + 2) = v11;
  *(a1 + 3) = v13;
  return result;
}

uint64_t sub_1C5966488(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1C59664F0()
{
  result = qword_1EDA46540;
  if (!qword_1EDA46540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC194E68, qword_1C5BDDFC8);
    sub_1C5924F54(&qword_1EDA46218, &qword_1EC194DC8, &qword_1C5BDDCF8, MEMORY[0x1E697FF90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46540);
  }

  return result;
}

void sub_1C59665C8(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_1C5BC8F34();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C5BCA484();
  if ((a3 & 1) == 0)
  {

    sub_1C5BCB4E4();
    v13 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v14 = sub_1C5942458(a2, 0);
    (*(v9 + 8))(v11, v8, v14);
    a2 = v18[1];
  }

  v15 = sub_1C5BC9664();
  sub_1C5BCABD4();
  *a4 = v12;
  *(a4 + 8) = a1;
  *(a4 + 16) = a2;
  *(a4 + 24) = v15;
  *(a4 + 32) = v16;
  *(a4 + 40) = v17;
  *(a4 + 48) = 1;
}

uint64_t sub_1C5966770(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x756F72676B636162;
  v4 = 0xEA0000000000646ELL;
  if (v2 != 1)
  {
    v3 = 0x726564616568;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x756F72676B636162;
  v8 = 0xEA0000000000646ELL;
  if (*a2 != 1)
  {
    v7 = 0x726564616568;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C5BCBDE4();
  }

  return v11 & 1;
}

uint64_t sub_1C5966874(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ViewState();
  v4 = swift_allocObject();
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  return v4;
}

uint64_t sub_1C59668E0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ViewState();
  result = sub_1C5BC7F24();
  *a2 = result;
  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1C596693C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192880, &unk_1C5BD5D10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1C59669AC@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v12 = *(v1 + 16);
  sub_1C596693C(&v12, &v11);
  type metadata accessor for ViewState();
  sub_1C5954190(&qword_1EDA46C30, type metadata accessor for ViewState, &unk_1C5BE8554);
  sub_1C5BC83A4();
  v5 = type metadata accessor for _CAPackageView(0);
  v6 = v5[6];
  *(a1 + v6) = swift_getKeyPath(byte_1C5BE8680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E40, &qword_1C5BE0130);
  swift_storeEnumTagMultiPayload();
  v7 = a1 + v5[7];
  *v7 = swift_getKeyPath(byte_1C5BE86B8);
  *(v7 + 8) = 0;
  v8 = v5[8];
  *(a1 + v8) = swift_getKeyPath(aP_11);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191B88, &qword_1C5BD3D30);
  swift_storeEnumTagMultiPayload();
  *a1 = v12;

  *(a1 + 16) = sub_1C5BC88C4();
  *(a1 + 24) = v9;
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  sub_1C5966BDC(v3, v4);

  return result;
}

void *sub_1C5966B7C@<X0>(void *a1@<X8>)
{
  sub_1C59676E0();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

void sub_1C5966BDC(uint64_t a1, unint64_t a2)
{
  if (!v2[7])
  {
    v3 = v2;
    v6 = sub_1C5966E14(a1, a2);
    v7 = v2[7];
    v3[7] = v6;
    v8 = v6;

    sub_1C596721C();
    v3[2] = a1;
    v3[3] = a2;

    v9 = v3[5];
    if (v9)
    {
      v10 = v3[4];
      v11 = qword_1EDA46990;

      if (v11 != -1)
      {
        swift_once();
      }

      v12 = sub_1C5BC7D64();
      __swift_project_value_buffer(v12, qword_1EDA5DA60);

      oslog = sub_1C5BC7D44();
      v13 = sub_1C5BCB4F4();

      if (os_log_type_enabled(oslog, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v18 = v15;
        *v14 = 136446466;
        v16 = sub_1C592ADA8(v10, v9, &v18);

        *(v14 + 4) = v16;
        *(v14 + 12) = 2082;
        *(v14 + 14) = sub_1C592ADA8(a1, a2, &v18);
        _os_log_impl(&dword_1C5922000, oslog, v13, "%{public}s: %{public}s ViewState loaded package ", v14, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C69510F0](v15, -1, -1);
        MEMORY[0x1C69510F0](v14, -1, -1);
      }

      else
      {
      }
    }
  }
}

id sub_1C5966E14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1C5BC7A24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21[-v9];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21[-v12];
  v14 = sub_1C5BCAE44();
  v15 = sub_1C5BCAE44();
  v16 = [v3 URLForResource:v14 withExtension:v15];

  if (!v16)
  {
    return 0;
  }

  sub_1C5BC79E4();

  (*(v5 + 32))(v13, v10, v4);
  sub_1C592535C(0, &qword_1EDA45D50, 0x1E6979400);
  (*(v5 + 16))(v7, v13, v4);
  v17 = sub_1C5BCAE74();
  v20 = sub_1C5967054(v7, v17, v18, 0);
  (*(v5 + 8))(v13, v4);
  result = v20;
  if (!v20)
  {
    return 0;
  }

  return result;
}

id sub_1C5967054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1C5BC7994();
  v7 = sub_1C5BCAE44();

  if (a4)
  {
    v8 = sub_1C5BCACA4();
  }

  else
  {
    v8 = 0;
  }

  v17[0] = 0;
  v9 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v6 type:v7 options:v8 error:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_1C5BC7A24();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v17[0];
    sub_1C5BC7914();

    swift_willThrow();
    v15 = sub_1C5BC7A24();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  return v9;
}

void sub_1C596721C()
{
  v1 = v0[7];
  if (v1)
  {
    v2 = [v1 rootLayer];
    if (v2)
    {
      v3 = v2;
      v4 = [objc_allocWithZone(MEMORY[0x1E69794D0]) initWithLayer_];
      v5 = v0[6];
      v0[6] = v4;

      v6 = v0[7];
      if (!v6 || (v7 = [v6 rootLayer]) == 0 || (v8 = v7, v9 = objc_msgSend(v7, sel_states), v8, !v9) || (v10 = sub_1C5BCB054(), v9, v11 = sub_1C59673D0(v10), , !v11))
      {

        v11 = MEMORY[0x1E69E7CC0];
      }

      if (v11 >> 62)
      {
        if (sub_1C5BCB984())
        {
          goto LABEL_10;
        }
      }

      else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_10:
        if ((v11 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1C694FD20](0, v11);
        }

        else
        {
          if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v12 = *(v11 + 32);
        }

        v13 = v12;

        goto LABEL_17;
      }

      v13 = 0;
LABEL_17:
      v16 = v0[8];
      v0[8] = v13;
      v15 = v13;
      sub_1C59674DC(v16);

      v14 = v16;
      goto LABEL_18;
    }
  }

  v14 = v0[6];
  v0[6] = 0;
LABEL_18:
}

uint64_t sub_1C59673D0(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_1C5BCBB44();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1C592B32C(i, v5);
    sub_1C592535C(0, &qword_1EDA45DA8, 0x1E69794B8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1C5BCBB24();
    sub_1C5BCBB54();
    sub_1C5BCBB64();
    sub_1C5BCBB34();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void sub_1C59674DC(void *a1)
{
  v2 = v1;
  v4 = v2[8];
  if (v4)
  {
    if (a1)
    {
      sub_1C592535C(0, &qword_1EDA45DA8, 0x1E69794B8);
      v5 = v4;
      v6 = a1;
      v7 = sub_1C5BCB744();

      if (v7)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  v8 = v2[6];
  if (v8)
  {
    v9 = v2[8];
    if (v9)
    {
      v10 = v2[7];
      if (v10)
      {
        v11 = v9;
        v18 = v8;
        v12 = [v10 rootLayer];
        if (v12)
        {
          v13 = v12;
          v14 = objc_opt_self();
          v15 = v11;
          v11 = v13;
          v16 = [v14 areAnimationsEnabled];
          v17 = 0.0;
          if (v16)
          {
            *&v17 = 1.0;
          }

          [v18 setState:v15 ofLayer:v11 transitionSpeed:v17];

          v18 = v11;
        }
      }
    }
  }
}

uint64_t sub_1C596765C()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EDA5DA60);
  __swift_project_value_buffer(v0, qword_1EDA5DA60);
  return sub_1C5BC7D54();
}

unint64_t sub_1C59676E0()
{
  result = qword_1EDA475A0;
  if (!qword_1EDA475A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA475A0);
  }

  return result;
}

uint64_t sub_1C5967734@<X0>(void *a1@<X8>)
{
  if (qword_1EDA475A8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EDA475B0;
}

uint64_t sub_1C59677A4(uint64_t a1)
{
  result = sub_1C5BCA4C4();
  qword_1EDA475B0 = result;
  return result;
}

uint64_t sub_1C59677C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v40 = sub_1C5BC81D4();
  v42 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v37 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for _CAPackageView(0);
  v5 = *(v4 - 8);
  v36 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v6;
  v8 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1978F8, &qword_1C5BE87C8);
  v33 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197900, &qword_1C5BE87D0);
  v13 = *(v12 - 8);
  v38 = v12;
  v39 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v43 = &v32 - v14;
  type metadata accessor for CAPackageViewLayer();
  sub_1C5967CB0(v2, v8);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_1C5967D14(v8, v16 + v15);
  sub_1C5BC85C4();
  sub_1C5967CB0(v2, v8);
  v35 = v7;
  v17 = swift_allocObject();
  sub_1C5967D14(v8, v17 + v15);
  v18 = &v11[*(v9 + 36)];
  *v18 = sub_1C5971B88;
  v18[1] = v17;
  v18[2] = 0;
  v18[3] = 0;
  v34 = v2;
  v19 = v2[1];
  v44 = *v2;
  v45 = v19;
  sub_1C5967CB0(v2, v8);
  v20 = swift_allocObject();
  sub_1C5967D14(v8, v20 + v15);

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192880, &unk_1C5BD5D10);
  v22 = sub_1C5954398();
  v23 = sub_1C5954488();
  v24 = v33;
  sub_1C5BCA334();

  sub_1C5924EF4(v11, &qword_1EC1978F8, &qword_1C5BE87C8);
  v25 = v37;
  v26 = v34;
  sub_1C594C72C(v37);
  sub_1C5967CB0(v26, v8);
  v27 = swift_allocObject();
  sub_1C5967D14(v8, v27 + v15);
  v44 = v24;
  v45 = v21;
  v46 = v22;
  v47 = v23;
  swift_getOpaqueTypeConformance2();
  sub_1C5954190(&qword_1EDA467E8, MEMORY[0x1E697BE48], MEMORY[0x1E697BE50]);
  v28 = v40;
  v29 = v38;
  v30 = v43;
  sub_1C5BCA344();

  (*(v42 + 8))(v25, v28);
  return (*(v39 + 8))(v30, v29);
}

uint64_t sub_1C5967CB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _CAPackageView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5967D14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _CAPackageView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5967D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(_s25BackdropConditionObserverVMa(0, v5, v6, a4) - 8);
  return sub_1C5967DF8(v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v5, v6, v8);
}

uint64_t sub_1C5967DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = _s25BackdropConditionObserverVMa(0, a2, a3, a4);
  memset(v6, 0, sizeof(v6));
  v7 = 0;
  sub_1C5967E58(v6, v4);
  return sub_1C5924EF4(v6, &qword_1EC1999A8, &unk_1C5BF1D30);
}

double sub_1C5967E58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v155 - v7;
  v167 = sub_1C5BC90F4();
  v166 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v165 = &v155 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v164 = &v155 - v11;
  v175 = sub_1C5BC81D4();
  v173 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v172 = &v155 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v174 = &v155 - v14;
  v15 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v161 = &v155 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v168 = &v155 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v170 = &v155 - v21;
  v160 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v178 = &v155 - v24;
  v25 = sub_1C5BC7D64();
  v26 = *(v25 - 1);
  MEMORY[0x1EEE9AC00](v25);
  v159 = &v155 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v158 = &v155 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v162 = &v155 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v163 = &v155 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v169 = &v155 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v171 = &v155 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v155 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v176 = &v155 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v155 - v44;
  v46 = sub_1C5BC8F34();
  v180 = *(v46 - 1);
  v181 = v46;
  MEMORY[0x1EEE9AC00](v46);
  v179 = &v155 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5969DFC(a1, &v183);
  v177 = v40;
  if (v185)
  {
    sub_1C596A0A8(&v183, &v186);
  }

  else
  {
    sub_1C59416B4(&v186);
    if (v185)
    {
      sub_1C5924EF4(&v183, &qword_1EC1999A8, &unk_1C5BF1D30);
    }
  }

  v48 = *(v3 + 72);
  v49 = *(v3 + 80);

  if ((v49 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v50 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v51 = v179;
    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v180 + 1))(v51, v181);
    v48 = v183;
  }

  swift_getKeyPath("(3[&");
  *&v183 = v48;
  sub_1C592F30C(&qword_1EDA4B960, type metadata accessor for WindowProperties, &unk_1C5BDAF08);
  sub_1C5BC7B74();

  v52 = *(v48 + 48);

  if ((v52 & 1) == 0)
  {
    v59 = *(v3 + 88);
    v58 = *(v3 + 96);
    v61 = *(v3 + 104);
    v60 = *(v3 + 112);
    v62 = *(v3 + 120) == 1;
    v156 = v8;
    if (v62)
    {
      *&v183 = v59;
      *(&v183 + 1) = v58;
      v184 = v61;
      v185 = v60;
      sub_1C593E7D8(v59, v58, v61, v60);
    }

    else
    {

      sub_1C5BCB4E4();
      v157 = v15;
      v63 = sub_1C5BC9844();
      v15 = v157;
      sub_1C5BC7C54();

      v64 = v179;
      sub_1C5BC8F24();
      swift_getAtKeyPath();
      v65 = sub_1C596AC4C(v59, v58, v61, v60, 0);
      (*(v180 + 1))(v64, v181, v65);
    }

    if (*(&v183 + 1) != 1)
    {
      sub_1C593E820(v183, *(&v183 + 1), v184, v185);
      sub_1C5969E6C();
      swift_getKeyPath(byte_1C5BF1AF0);
      swift_getKeyPath(byte_1C5BF1B18);

      sub_1C5BC8034();

      if ((v183 & 1) == 0)
      {
        if (qword_1EDA46998 != -1)
        {
          swift_once();
        }

        v81 = __swift_project_value_buffer(v25, qword_1EDA469A0);
        v45 = v176;
        (*(v26 + 2))(v176, v81, v25);
        v54 = sub_1C5BC7D44();
        v55 = sub_1C5BCB4F4();
        if (!os_log_type_enabled(v54, v55))
        {
          goto LABEL_33;
        }

        v56 = swift_slowAlloc();
        *v56 = 0;
        v57 = "Pausing backdrop during queue transition";
        goto LABEL_32;
      }

      return __swift_destroy_boxed_opaque_existential_0(&v186);
    }

    v66 = *(sub_1C594C688() + 16);
    if (v66 <= 4 && v66 != 2)
    {
      sub_1C5969E6C();
      swift_getKeyPath(byte_1C5BF1AF0);
      swift_getKeyPath(byte_1C5BF1B18);

      sub_1C5BC8034();

      if ((v183 & 1) == 0)
      {
        if (qword_1EDA46998 != -1)
        {
          swift_once();
        }

        v67 = __swift_project_value_buffer(v25, qword_1EDA469A0);
        v68 = v177;
        (*(v26 + 2))(v177, v67, v25);
        v69 = v178;
        (*(v15 + 16))(v178, v3, a2);
        v70 = sub_1C5BC7D44();
        v71 = sub_1C5BCB4F4();
        if (os_log_type_enabled(v70, v71))
        {
          v181 = v25;
          v72 = v26;
          v73 = 0xE900000000000064;
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v76 = a2;
          v77 = v75;
          *&v183 = v75;
          *v74 = 136446210;
          v78 = v76;
          v79 = *(sub_1C594C688() + 16);
          if (v79 > 2)
          {
            if (v79 == 3)
            {
              v80 = 0xD000000000000017;
              v73 = 0x80000001C5BF5790;
            }

            else if (v79 == 4)
            {
              v80 = 0x697370616C6C6F63;
              v73 = 0xEA0000000000676ELL;
            }

            else
            {
              v80 = 0x657370616C6C6F63;
            }
          }

          else if (v79)
          {
            if (v79 == 1)
            {
              v73 = 0x80000001C5BF5760;
              v80 = 0xD000000000000020;
            }

            else
            {
              v73 = 0xE800000000000000;
              v80 = 0x6465646E61707865;
            }
          }

          else
          {
            v80 = 0x6E69646E61707865;
            v73 = 0xE900000000000067;
          }

          (*(v15 + 8))(v178, v78);
          v118 = sub_1C592ADA8(v80, v73, &v183);

          *(v74 + 4) = v118;
          _os_log_impl(&dword_1C5922000, v70, v71, "Pausing backdrop during transition phase: %{public}s", v74, 0xCu);
          v119 = __swift_destroy_boxed_opaque_existential_0(v77);
          MEMORY[0x1C69510F0](v77, -1, -1, v119);
          MEMORY[0x1C69510F0](v74, -1, -1);

          (*(v72 + 1))(v177, v181);
        }

        else
        {

          (*(v15 + 8))(v69, a2);
          (*(v26 + 1))(v68, v25);
        }

        goto LABEL_34;
      }

      return __swift_destroy_boxed_opaque_existential_0(&v186);
    }

    v157 = v15;
    v83 = v174;
    sub_1C594C72C(v174);
    v84 = v173;
    v85 = v172;
    v86 = v175;
    (*(v173 + 104))(v172, *MEMORY[0x1E697BE38], v175);
    sub_1C592F30C(&qword_1EDA467E8, MEMORY[0x1E697BE48], MEMORY[0x1E697BE50]);
    v87 = sub_1C5BCADB4();
    v88 = *(v84 + 8);
    v88(v85, v86);
    v88(v83, v86);
    if ((v87 & 1) == 0)
    {
      sub_1C5969E6C();
      swift_getKeyPath(byte_1C5BF1AF0);
      swift_getKeyPath(byte_1C5BF1B18);

      sub_1C5BC8034();

      v92 = v157;
      if (v183)
      {
        return __swift_destroy_boxed_opaque_existential_0(&v186);
      }

      if (qword_1EDA46998 != -1)
      {
        swift_once();
      }

      v93 = __swift_project_value_buffer(v25, qword_1EDA469A0);
      v94 = v171;
      (*(v26 + 2))(v171, v93, v25);
      v95 = v170;
      (*(v92 + 16))(v170, v3, a2);
      v96 = sub_1C5BC7D44();
      v97 = sub_1C5BCB4F4();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v180 = v98;
        v181 = swift_slowAlloc();
        *&v183 = v181;
        *v98 = 136446210;
        v99 = v95;
        sub_1C594C72C(v174);
        v100 = sub_1C5BCAEA4();
        v101 = v25;
        v102 = a2;
        v104 = v103;
        (*(v92 + 8))(v99, v102);
        v105 = sub_1C592ADA8(v100, v104, &v183);

        v106 = v180;
        *(v180 + 1) = v105;
        _os_log_impl(&dword_1C5922000, v96, v97, "Pausing backdrop for scenePhase: %{public}s", v106, 0xCu);
        v107 = v181;
        v108 = __swift_destroy_boxed_opaque_existential_0(v181);
        MEMORY[0x1C69510F0](v107, -1, -1, v108);
        MEMORY[0x1C69510F0](v106, -1, -1);

        (*(v26 + 1))(v171, v101);
      }

      else
      {

        (*(v92 + 8))(v95, a2);
        (*(v26 + 1))(v94, v25);
      }

      goto LABEL_34;
    }

    v178 = v26;
    type metadata accessor for EnvironmentMonitor(0);
    sub_1C592F30C(qword_1EDA4B360, type metadata accessor for EnvironmentMonitor, &unk_1C5BF1564);
    v89 = sub_1C5BC83A4();
    swift_getKeyPath("@3[&");
    sub_1C5BC8034();

    v90 = v157;
    if (v183 >= 0x14)
    {
      sub_1C5969E6C();
      swift_getKeyPath(byte_1C5BF1AF0);
      swift_getKeyPath(byte_1C5BF1B18);

      sub_1C5BC8034();

      v109 = v178;
      if (v183)
      {
        return __swift_destroy_boxed_opaque_existential_0(&v186);
      }

      if (qword_1EDA46998 != -1)
      {
        swift_once();
      }

      v110 = __swift_project_value_buffer(v25, qword_1EDA469A0);
      v111 = v169;
      (*(v109 + 2))(v169, v110, v25);
      v112 = v168;
      (*(v90 + 16))(v168, v3, a2);
      v113 = sub_1C5BC7D44();
      v114 = sub_1C5BCB4F4();
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        *v115 = 67240192;
        v116 = sub_1C5BC83A4();
        swift_getKeyPath("@3[&");
        LODWORD(v181) = v114;
        sub_1C5BC8034();

        LODWORD(v116) = v183;
        (*(v90 + 8))(v112, a2);
        *(v115 + 4) = v116;
        _os_log_impl(&dword_1C5922000, v113, v181, "Pausing backdrop for thermal pressure: %{public}u", v115, 8u);
        v117 = v115;
        v111 = v169;
        MEMORY[0x1C69510F0](v117, -1, -1);
      }

      else
      {
        (*(v90 + 8))(v112, a2);
      }

      v120 = v178;
      goto LABEL_64;
    }

    v91 = *(sub_1C594C688() + 16);
    if (v91 > 2)
    {
      v26 = v178;
    }

    else
    {
      v26 = v178;
      if (v91 > 1)
      {

LABEL_67:
        v122 = v187;
        __swift_project_boxed_opaque_existential_0(&v186, v187);
        if (sub_1C596CB78(v122))
        {
          sub_1C5969E6C();
          swift_getKeyPath(byte_1C5BF1AF0);
          swift_getKeyPath(byte_1C5BF1B18);

          sub_1C5BC8034();

          if (v183)
          {
            return __swift_destroy_boxed_opaque_existential_0(&v186);
          }

          if (qword_1EDA46998 != -1)
          {
            swift_once();
          }

          v123 = __swift_project_value_buffer(v25, qword_1EDA469A0);
          v45 = v162;
          (*(v26 + 2))(v162, v123, v25);
          v54 = sub_1C5BC7D44();
          v55 = sub_1C5BCB4F4();
          if (!os_log_type_enabled(v54, v55))
          {
            goto LABEL_33;
          }

          v56 = swift_slowAlloc();
          *v56 = 0;
          v57 = "Pausing backdrop because current treatment is video";
          goto LABEL_32;
        }

        sub_1C59318C8(&v186, &v183);
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC19A460, &unk_1C5BDD000);
        if (swift_dynamicCast())
        {
          v125 = v182;

          v126 = *(v3 + 176);
          if (*(v3 + 184) == 1)
          {
            v127 = *(v3 + 176);
          }

          else
          {

            sub_1C5BCB4E4();
            v128 = sub_1C5BC9844();
            sub_1C5BC7C54();

            v129 = v179;
            sub_1C5BC8F24();
            swift_getAtKeyPath();
            v130 = sub_1C5950E44(v126, 0);
            (*(v180 + 1))(v129, v181, v130);
            v127 = v183;
          }

          if (!v127)
          {
            v131 = v3 + *(a2 + 68);
            v133 = *v131;
            v132 = *(v131 + 8);
            if (*(v131 + 16) == 1)
            {
              *&v183 = *v131;
              *(&v183 + 1) = v132;
            }

            else
            {

              sub_1C5BCB4E4();
              v134 = sub_1C5BC9844();
              sub_1C5BC7C54();

              v26 = v178;
              v135 = v179;
              sub_1C5BC8F24();
              swift_getAtKeyPath();
              v136 = sub_1C596AC58(v133, v132, 0);
              (*(v180 + 1))(v135, v181, v136);
              v132 = *(&v183 + 1);
            }

            if (!v132)
            {
              sub_1C5969E6C();
              swift_getKeyPath(byte_1C5BF1AF0);
              swift_getKeyPath(byte_1C5BF1B18);

              sub_1C5BC8034();

              if (v183)
              {
                return __swift_destroy_boxed_opaque_existential_0(&v186);
              }

              if (qword_1EDA46998 != -1)
              {
                swift_once();
              }

              v154 = __swift_project_value_buffer(v25, qword_1EDA469A0);
              v45 = v158;
              (*(v26 + 2))(v158, v154, v25);
              v54 = sub_1C5BC7D44();
              v55 = sub_1C5BCB4F4();
              if (!os_log_type_enabled(v54, v55))
              {
                goto LABEL_33;
              }

              v56 = swift_slowAlloc();
              *v56 = 0;
              v57 = "Pausing backdrop because full bleed art is showing";
              goto LABEL_32;
            }
          }
        }

        v137 = v164;
        sub_1C594C704(v164);
        v138 = v166;
        v139 = v165;
        v140 = v167;
        (*(v166 + 104))(v165, *MEMORY[0x1E697F600], v167);
        sub_1C592F30C(&qword_1EDA46328, MEMORY[0x1E697F610], MEMORY[0x1E697F620]);
        v141 = sub_1C5BCADB4();
        v142 = *(v138 + 8);
        v142(v139, v140);
        v142(v137, v140);
        sub_1C5969E6C();
        swift_getKeyPath(byte_1C5BF1AF0);
        swift_getKeyPath(byte_1C5BF1B18);
        if (v141)
        {

          sub_1C5BC8034();

          if (v183 == 1)
          {
            v143 = sub_1C5BCB214();
            v144 = v156;
            (*(*(v143 - 8) + 56))(v156, 1, 1, v143);
            v145 = v161;
            (*(v90 + 16))(v161, v3, a2);
            sub_1C5BCB1E4();
            v146 = sub_1C5BCB1D4();
            v147 = (*(v90 + 80) + 48) & ~*(v90 + 80);
            v148 = swift_allocObject();
            v149 = MEMORY[0x1E69E85E0];
            *(v148 + 16) = v146;
            *(v148 + 24) = v149;
            *(v148 + 32) = *(a2 + 16);
            (*(v90 + 32))(v148 + v147, v145, a2);
            sub_1C5AD0FB8(0, 0, v144, &unk_1C5BF1D48, v148);
          }

          return __swift_destroy_boxed_opaque_existential_0(&v186);
        }

        sub_1C5BC8034();

        v120 = v178;
        if (v183)
        {
          return __swift_destroy_boxed_opaque_existential_0(&v186);
        }

        if (qword_1EDA46998 != -1)
        {
          swift_once();
        }

        v150 = __swift_project_value_buffer(v25, qword_1EDA469A0);
        v111 = v159;
        (*(v120 + 2))(v159, v150, v25);
        v151 = sub_1C5BC7D44();
        v152 = sub_1C5BCB4F4();
        if (os_log_type_enabled(v151, v152))
        {
          v153 = swift_slowAlloc();
          *v153 = 0;
          _os_log_impl(&dword_1C5922000, v151, v152, "Pausing backdrop because increase contrast mode is enabled", v153, 2u);
          MEMORY[0x1C69510F0](v153, -1, -1);
        }

LABEL_64:
        (*(v120 + 1))(v111, v25);
        goto LABEL_34;
      }
    }

    v121 = sub_1C5BCBDE4();

    if ((v121 & 1) == 0)
    {
      sub_1C5969E6C();
      swift_getKeyPath(byte_1C5BF1AF0);
      swift_getKeyPath(byte_1C5BF1B18);

      sub_1C5BC8034();

      if (v183)
      {
        return __swift_destroy_boxed_opaque_existential_0(&v186);
      }

      if (qword_1EDA46998 != -1)
      {
        swift_once();
      }

      v124 = __swift_project_value_buffer(v25, qword_1EDA469A0);
      v45 = v163;
      (*(v26 + 2))(v163, v124, v25);
      v54 = sub_1C5BC7D44();
      v55 = sub_1C5BCB4F4();
      if (!os_log_type_enabled(v54, v55))
      {
        goto LABEL_33;
      }

      v56 = swift_slowAlloc();
      *v56 = 0;
      v57 = "Pausing backdrop because player is not not expanded";
      goto LABEL_32;
    }

    goto LABEL_67;
  }

  sub_1C5969E6C();
  swift_getKeyPath(byte_1C5BF1AF0);
  swift_getKeyPath(byte_1C5BF1B18);

  sub_1C5BC8034();

  if ((v183 & 1) == 0)
  {
    if (qword_1EDA46998 != -1)
    {
      swift_once();
    }

    v53 = __swift_project_value_buffer(v25, qword_1EDA469A0);
    (*(v26 + 2))(v45, v53, v25);
    v54 = sub_1C5BC7D44();
    v55 = sub_1C5BCB4F4();
    if (!os_log_type_enabled(v54, v55))
    {
      goto LABEL_33;
    }

    v56 = swift_slowAlloc();
    *v56 = 0;
    v57 = "Pausing backdrop during view transition";
LABEL_32:
    _os_log_impl(&dword_1C5922000, v54, v55, v57, v56, 2u);
    MEMORY[0x1C69510F0](v56, -1, -1);
LABEL_33:

    (*(v26 + 1))(v45, v25);
LABEL_34:
    sub_1C5969E6C();
    swift_getKeyPath(byte_1C5BF1AF0);
    swift_getKeyPath(byte_1C5BF1B18);
    LOBYTE(v183) = 1;

    sub_1C5BC8044();
  }

  return __swift_destroy_boxed_opaque_existential_0(&v186);
}

uint64_t sub_1C5969BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = _s25BackdropConditionObserverVMa(0, *(v4 + 32), *(v4 + 40), a4);
  v6 = (*(*(v5 - 1) + 80) + 48) & ~*(*(v5 - 1) + 80);
  swift_unknownObjectRelease();
  v7 = v4 + v6;
  sub_1C596AC3C(*(v4 + v6), *(v4 + v6 + 8), *(v4 + v6 + 16));

  swift_unknownObjectRelease();

  sub_1C596AC4C(*(v7 + 88), *(v7 + 96), *(v7 + 104), *(v7 + 112), *(v7 + 120));
  if (*(v4 + v6 + 168))
  {
    __swift_destroy_boxed_opaque_existential_0((v7 + 128));
  }

  else
  {
  }

  sub_1C5950E44(*(v7 + 176), *(v7 + 184));
  v8 = v5[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191B88, &qword_1C5BD3D30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1C5BC81D4();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  sub_1C596AC58(*(v7 + v5[17]), *(v7 + v5[17] + 8), *(v7 + v5[17] + 16));
  v10 = v5[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900, &qword_1C5BD5AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C5BC90F4();
    (*(*(v11 - 8) + 8))(v7 + v10, v11);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C5969DFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1999A8, &unk_1C5BF1D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5969E6C()
{
  result = *(v0 + 24);
  if (!result)
  {
    _s8BackdropCMa(0);
    sub_1C592F30C(&qword_1EDA49930, _s8BackdropCMa, &unk_1C5BF1940);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5969EE8()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EDA469A0);
  __swift_project_value_buffer(v0, qword_1EDA469A0);
  return sub_1C5BC7D54();
}

uint64_t sub_1C5969F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C59318C8(a1, v10);
  v8 = _s25BackdropConditionObserverVMa(0, a3, a4, v7);
  sub_1C5967E58(v10, v8);
  sub_1C5924EF4(v10, &qword_1EC1999A8, &unk_1C5BF1D30);
  sub_1C59318C8(a1, v10);
  sub_1C596A0AC(v10, v8);
  return sub_1C5924EF4(v10, &qword_1EC1999A8, &unk_1C5BF1D30);
}

uint64_t sub_1C596A01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(_s25BackdropConditionObserverVMa(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1C5969F68(a1, v9, v6, v7);
}

double sub_1C596A0AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1C5BC8F34();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5969DFC(a1, &v23);
  if (v24)
  {
    sub_1C596A0A8(&v23, v25);
  }

  else
  {
    sub_1C59416B4(v25);
    if (v24)
    {
      sub_1C5924EF4(&v23, &qword_1EC1999A8, &unk_1C5BF1D30);
    }
  }

  sub_1C59318C8(v25, &v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC19A460, &unk_1C5BDD000);
  if (swift_dynamicCast())
  {
    v10 = v22[1];

    v11 = *(v3 + 176);
    if (*(v3 + 184) == 1)
    {
      v12 = *(v3 + 176);
    }

    else
    {

      sub_1C5BCB4E4();
      v13 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      v14 = sub_1C5950E44(v11, 0);
      (*(v7 + 8))(v9, v6, v14);
      v12 = v23;
    }

    sub_1C5969E6C();
    if (!v12)
    {

      v20 = 1;
      goto LABEL_17;
    }
  }

  else
  {
    sub_1C5969E6C();
  }

  v15 = v3 + *(a2 + 68);
  v17 = *v15;
  v16 = *(v15 + 8);
  if (*(v15 + 16) == 1)
  {
    *&v23 = *v15;
    *(&v23 + 1) = v16;

    sub_1C5A059A0(v17, v16, 1);
  }

  else
  {

    sub_1C5A059A0(v17, v16, 0);
    sub_1C5BCB4E4();
    v18 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v19 = sub_1C596AC58(v17, v16, 0);
    (*(v7 + 8))(v9, v6, v19);
    v16 = *(&v23 + 1);
  }

  v20 = v16 != 0;
  if (v16)
  {
  }

LABEL_17:
  swift_getKeyPath("85[&");
  swift_getKeyPath(byte_1C5BF1AD0);
  LOBYTE(v23) = v20;
  sub_1C5BC8044();
  return __swift_destroy_boxed_opaque_existential_0(v25);
}

uint64_t objectdestroy_24Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(_s25ExpandsNowPlayingModifierVMa(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1997C0, &qword_1C5BF1280);
  (*(*(v7 - 8) + 8))(v4 + v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1997C8, &unk_1C5BF1288);

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C596A58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C596A5F0();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_1C596A5F0()
{
  result = qword_1EDA4DA18;
  if (!qword_1EDA4DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4DA18);
  }

  return result;
}

uint64_t sub_1C596A648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C593B5AC();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

double sub_1C596A6DC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v6 = sub_1C5BC8744();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C5BC88A4();
  v13[8] = a2 & 1;
  v13[0] = a4 & 1;
  sub_1C5BC8714();
  v11 = v10;
  (*(v7 + 8))(v9, v6);
  return v11;
}

uint64_t sub_1C596A87C(uint64_t a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, uint64_t a7, char a8)
{
  v14 = sub_1C5BC8744();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v19[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C5BC88A4();
  v20.origin.x = a3;
  v20.origin.y = a4;
  v20.size.width = a5;
  v20.size.height = a6;
  CGRectGetMidX(v20);
  v21.origin.x = a3;
  v21.origin.y = a4;
  v21.size.width = a5;
  v21.size.height = a6;
  CGRectGetMidY(v21);
  sub_1C5BCABD4();
  v19[8] = a2 & 1;
  v19[0] = a8 & 1;
  sub_1C5BC8724();
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_1C596AA3C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0xE900000000000067;
  v4 = a1;
  v5 = 0x697370616C6C6F63;
  v6 = 0xEA0000000000676ELL;
  if (a1 != 4)
  {
    v5 = 0x657370616C6C6F63;
    v6 = 0xE900000000000064;
  }

  if (a1 == 3)
  {
    v5 = 0xD000000000000017;
    v6 = 0x80000001C5BF5790;
  }

  v7 = 0x80000001C5BF5760;
  v8 = 0xD000000000000020;
  if (a1 != 1)
  {
    v8 = 0x6465646E61707865;
    v7 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 0x6E69646E61707865;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v4 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x80000001C5BF5790;
      if (v9 != 0xD000000000000017)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEA0000000000676ELL;
      if (v9 != 0x697370616C6C6F63)
      {
        goto LABEL_34;
      }
    }

    else if (v9 != 0x657370616C6C6F63)
    {
LABEL_34:
      v11 = sub_1C5BCBDE4();
      goto LABEL_35;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x80000001C5BF5760;
      if (v9 != 0xD000000000000020)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v2 = 0xE800000000000000;
      if (v9 != 0x6465646E61707865)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v2 = 0xE900000000000067;
    if (v9 != 0x6E69646E61707865)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v2)
  {
    goto LABEL_34;
  }

  v11 = 1;
LABEL_35:

  return v11 & 1;
}

void sub_1C596AC3C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    MEMORY[0x1EEE66BB8](a1, a2);
  }

  else
  {
  }
}

double sub_1C596AC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    sub_1C593E820(a1, a2, a3, a4);
  }

  else
  {
  }

  return result;
}

double sub_1C596AC58(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

double sub_1C596AC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11)
{
  if ((a11 & 1) == 0)
  {
  }

  return result;
}

uint64_t objectdestroyTm()
{

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for MaterialView(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));
  sub_1C59B5190(*v7, *(v7 + 8), *(v7 + 16));
  (*(*(v5 - 8) + 8))(v7 + v6[11], v5);

  j__swift_release(*(v7 + v6[13]));
  sub_1C5942458(*(v7 + v6[14]), *(v7 + v6[14] + 8));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (_s33HeadlessTimeControlSliderModifierVMa(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = v4 + ((*(*v5 + 80) + 32) & ~*(*v5 + 80));

  v7 = v5[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191B88, &qword_1C5BD3D30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1C5BC81D4();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_3()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for MotionPlayerView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193430, &qword_1C5BD7C90);
  (*(*(v3 - 8) + 8))(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193438, &qword_1C5BD7C98);

  v4 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191ED8, &qword_1C5BD7CA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for MotionAsset(0);
    if (!(*(*(v5 - 8) + 48))(v2 + v4, 1, v5))
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
      }

      else
      {
        v7 = sub_1C5BC7A24();
        (*(*(v7 - 8) + 8))(v2 + v4, v7);
      }
    }
  }

  else
  {
  }

  sub_1C596AC58(*(v2 + *(v1 + 24)), *(v2 + *(v1 + 24) + 8), *(v2 + *(v1 + 24) + 16));

  return swift_deallocObject();
}

uint64_t objectdestroy_110Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for ParallaxEffectViewModifier(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E50, &unk_1C5BD7190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1C5BC8F34();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for NowPlayingArtworkBackground(0, v5, *(v4 + 24), a4);
  v7 = (*(*(v6 - 1) + 80) + 32) & ~*(*(v6 - 1) + 80);
  v8 = v4 + v7;
  v9 = sub_1C5BC7A24();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v4 + v7, 1, v9))
  {
    (*(v10 + 8))(v4 + v7, v9);
  }

  (*(*(v5 - 8) + 8))(v8 + v6[10], v5);
  v11 = v8 + v6[12];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195740, &unk_1C5BE8BE0);
  (*(*(v12 - 8) + 8))(v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195748, &qword_1C5BE0D90);

  sub_1C5950E44(*(v8 + v6[13]), *(v8 + v6[13] + 8));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for Scrubber(0, v5, *(v4 + 24), a4);
  v7 = v4 + ((*(*(v6 - 1) + 80) + 32) & ~*(*(v6 - 1) + 80));

  j__swift_release(*(v7 + 16));
  v8 = v6[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900, &qword_1C5BD5AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1C5BC90F4();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  sub_1C5942458(*(v7 + v6[11]), *(v7 + v6[11] + 8));
  sub_1C5942458(*(v7 + v6[12]), *(v7 + v6[12] + 8));

  (*(*(v5 - 8) + 8))(v7 + v6[17], v5);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for NowPlayingQueue(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));
  (*(*(v5 - 8) + 8))(v7, v5);
  v8 = v7 + v6[11];
  sub_1C596AC80(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40), *(v8 + 48), *(v8 + 56), *(v8 + 64), *(v8 + 72), *(v8 + 73));
  v9 = v7 + v6[12];
  sub_1C596AC4C(*v9, *(v9 + 8), *(v9 + 16), *(v9 + 24), *(v9 + 32));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_9()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_10()
{
  v1 = type metadata accessor for ArtworkCornerModifier(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_1C5942458(*v2, *(v2 + 8));
  if (*(v2 + 56))
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  }

  else
  {
  }

  sub_1C5942458(*(v2 + 64), *(v2 + 72));

  v3 = v2 + *(v1 + 36);
  v4 = *(type metadata accessor for ArtworkCornerStyle(0) + 20);
  v5 = sub_1C5BC9044();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196DE8, &qword_1C5BE5918);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for ToastView(0, v5, *(v4 + 24), a4);
  v7 = v4 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80));
  (*(*(v5 - 8) + 8))(v7, v5);
  if (*(v7 + *(v6 + 36)))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_12()
{
  sub_1C5950E44(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_13()
{
  v2 = *(v0 + 24);
  v8[0] = *(v0 + 16);
  v1 = v8[0];
  v8[1] = v2;
  v3 = *(v0 + 48);
  v9 = *(v0 + 32);
  v7 = v9;
  v10 = v3;
  v4 = (type metadata accessor for ParallaxHeader(0, v8) - 8);
  v5 = v0 + ((*(*v4 + 80) + 64) & ~*(*v4 + 80));

  (*(*(v1 - 8) + 8))(v5 + v4[19], v1);
  (*(*(v2 - 8) + 8))(v5 + v4[20], v2);
  (*(*(v7 - 8) + 8))(v5 + v4[21]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_14()
{
  v1 = sub_1C5BC9624();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for NowPlayingHostedContentToggleButtonStyle(0);
  v6 = (v3 + v4 + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  (*(v2 + 8))(v0 + v3, v1);

  v7 = *(v5 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900, &qword_1C5BD5AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1C5BC90F4();
    (*(*(v8 - 8) + 8))(v0 + v6 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_15()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_36Tm()
{

  return swift_deallocObject();
}

void sub_1C596C058(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1C5938344();
  }
}

void sub_1C596C0AC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

double sub_1C596C120(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_1C5BCB214();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1C5BCB1E4();
  v8 = a1;

  v9 = sub_1C5BCB1D4();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = a2;
  v10[5] = a1;
  sub_1C5AD0FB8(0, 0, v6, &unk_1C5BEA3E0, v10);

  return result;
}

uint64_t sub_1C596C24C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_1C596C294(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F20, &qword_1C5BD88C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  v7 = sub_1C5BCB5F4();
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A440, &unk_1C5BDFC40);
  v27 = *(v10 - 8);
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = &v25 - v12;
  swift_getKeyPath(aP_12, v11);
  swift_getKeyPath(a0_1);
  sub_1C5BC8034();

  v14 = v28;
  if (v28)
  {
    if (a1)
    {
      sub_1C592535C(0, &qword_1EDA45D48, 0x1E6970480);
      v15 = a1;
      v16 = sub_1C5BCB744();

      if (v16)
      {
        return;
      }
    }

    else
    {
    }

LABEL_8:
    v17 = [objc_opt_self() defaultCenter];
    swift_getKeyPath(aP_12);
    swift_getKeyPath(a0_1);
    sub_1C5BC8034();

    v18 = v28;
    sub_1C5BCB604();

    sub_1C592535C(0, &qword_1EDA4E620, 0x1E69E9610);
    v19 = sub_1C5BCB5A4();
    v28 = v19;
    v20 = sub_1C5BCB594();
    (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
    sub_1C59315F8(&unk_1EDA4E0E0, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
    sub_1C5931640();
    sub_1C5BC80D4();
    sub_1C59316A8(v6);

    (*(v26 + 8))(v9, v7);
    swift_allocObject();
    swift_weakInit();
    sub_1C5931710();
    v21 = sub_1C5BC8114();

    (*(v27 + 8))(v13, v10);
    *(v2 + OBJC_IVAR____TtC11MediaCoreUI23NowPlayingRouteObserver_routeDidChange) = v21;

    swift_getKeyPath(aP_12);
    swift_getKeyPath(a0_1);
    sub_1C5BC8034();

    v22 = v28;
    v23 = [objc_allocWithZone(MEMORY[0x1E6970A20]) initWithGroupRoute:v28 outputDeviceRoute:0];
    v24 = [objc_opt_self() sharedController];
    [v24 setActiveDataSource_];

    return;
  }

  if (a1)
  {
    goto LABEL_8;
  }
}

uint64_t sub_1C596C788()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_1C596C8BC(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + qword_1EDA48120);
    v5 = Strong;
    v6 = v4;

    if (v4)
    {
      v7 = *&v6[OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_image];
      *&v6[OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_image] = v2;
      v8 = v2;

      sub_1C5B35FB4();
    }
  }
}

void sub_1C596C98C(unsigned __int8 *a1, void *a2, uint64_t a3)
{
  v5 = sub_1C5BC7DC4();
  MEMORY[0x1EEE9AC00](v5);
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = qword_1EDA48128;
    v10 = *(Strong + qword_1EDA48128);
    v11 = a2[3];
    __swift_project_boxed_opaque_existential_0(a2, v11);
    v12 = v10;
    v12[qword_1EDA481C8] = sub_1C596CB78(v11) & 1;
    sub_1C5932CD4();

    v13 = *&v8[v9];
    v13[qword_1EDA481C0] = v6;
    v14 = v13;
    sub_1C5932CD4();

    v15 = a2[3];
    __swift_project_boxed_opaque_existential_0(a2, v15);
    v16 = sub_1C596CB78(v15);
    v17 = *&v8[qword_1EDA480F0];
    if ((v16 & 1) != 0 && v6)
    {
      sub_1C5BCB6A4();
      sub_1C5BC7D94();
      sub_1C5BCB6B4();
    }

    else
    {
      sub_1C5BC7E04();
      v18 = v17;
      sub_1C5BCB6A4();
      sub_1C5BC7DB4();
      sub_1C5BCB6B4();
    }
  }
}

uint64_t sub_1C596CB78(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v7[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199CD0, &qword_1C5BDD7B0);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = result;
    __swift_destroy_boxed_opaque_existential_0(v7);
    return v5;
  }

  return result;
}

void sub_1C596CC74(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + qword_1EDA48100);

    [v5 setHidden_];
  }
}

void sub_1C596CD08(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + qword_1EDA48120);
    v5 = Strong;
    v6 = v4;

    if (v4)
    {
      v7 = OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_isPaused;
      v6[OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_isPaused] = v2;
      v8 = *&v6[OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_contentView];
      if (v8)
      {
        v9 = v8;
        if ([v9 isPaused] != v6[v7])
        {
          [v9 setPaused_];
          [v9 setEnableSetNeedsDisplay_];
        }
      }
    }
  }
}

uint64_t sub_1C596CDE8@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, _WORD *a3@<X8>)
{
  v3 = *(result + 1);
  v4 = v3 << 8;
  v5 = v3 & 1;
  if (v4 == 512)
  {
    v5 = 2;
  }

  if (*a2)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  *a3 = v5 | v6;
  return result;
}

void sub_1C596CE64(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 == 2 || ((a1 ^ a2) & 1) != 0)
  {
    v8 = 0.0;
    if (a2)
    {
      v18 = &type metadata for Features;
      v9 = a1;
      v19 = sub_1C5A2E158();
      v10 = swift_allocObject();
      v17[0] = v10;
      *(v10 + 16) = "MediaCoreUI";
      *(v10 + 24) = 11;
      *(v10 + 32) = 2;
      *(v10 + 40) = "BackdropLUT";
      *(v10 + 48) = 11;
      *(v10 + 56) = 2;
      v11 = sub_1C5BC7C14();
      __swift_destroy_boxed_opaque_existential_0(v17);
      LOBYTE(a1) = v9;
      if (v11)
      {
        v12 = 0.1;
      }

      else
      {
        v12 = 0.4;
      }

      if (v11)
      {
        v13 = 0.5;
      }

      else
      {
        v13 = 0.7;
      }
    }

    else
    {
      v13 = 0.4;
      v12 = 0.0;
    }

    if (a1 != 2)
    {
      v8 = 0.2;
    }

    v14 = objc_opt_self();
    v15 = swift_allocObject();
    *(v15 + 16) = a4;
    *(v15 + 24) = a5;
    *(v15 + 32) = a3;
    *(v15 + 40) = v12;
    *(v15 + 48) = v13;
    v19 = sub_1C596D0E0;
    v20 = v15;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1C596D09C;
    v18 = &block_descriptor_25;
    v16 = _Block_copy(v17);

    [v14 animateWithDuration:v16 animations:v8];
    _Block_release(v16);
  }
}

uint64_t sub_1C596D054()
{

  return swift_deallocObject();
}

double sub_1C596D09C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

void sub_1C596D0F0(uint64_t a1, double a2, double a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + qword_1EDA48108);

    v8 = sub_1C59343CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC197420, &qword_1C5BE4CB0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1C5BD4D40;
    v10 = objc_opt_self();
    v11 = [v10 blackColor];
    v12 = [v11 colorWithAlphaComponent_];

    v13 = [v12 CGColor];
    type metadata accessor for CGColor(0);
    v15 = v14;
    *(v9 + 56) = v14;
    *(v9 + 32) = v13;
    v16 = [v10 blackColor];
    v17 = [v16 colorWithAlphaComponent_];

    v18 = [v17 CGColor];
    *(v9 + 88) = v15;
    *(v9 + 64) = v18;
    v19 = sub_1C5BCB044();

    [v8 setColors_];
  }
}

double sub_1C596D2EC(char a1)
{
  v2 = v1;
  v4 = *v2;
  swift_beginAccess();
  v13 = *(v2 + 56);
  v12 = a1;
  v11 = *(v4 + 80);
  v5 = sub_1C5BCADB4();
  if (v5)
  {
    swift_beginAccess();
    *(v2 + 56) = a1 & 1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath(byte_1C5BEB8E0, v11);
    MEMORY[0x1EEE9AC00](KeyPath);
    v9[2] = v2;
    v10 = a1 & 1;
    sub_1C596D460(v8, sub_1C596D544, v9, MEMORY[0x1E69E7CA8] + 8);
  }

  return result;
}

uint64_t sub_1C596D544()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 56) = v2;
  return result;
}

uint64_t sub_1C596D5D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C596D648(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10[0] = *a1;
  v2 = v10[0];
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v10[5] = v7;
  v11 = v8;
  sub_1C596D6D0(v10);
  result = swift_beginAccess();
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 48) = v5;
  *(v1 + 56) = v6;
  *(v1 + 64) = v7;
  *(v1 + 72) = v8;
  return result;
}

void sub_1C596D6D0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = *(a1 + 48);
  swift_beginAccess();
  v9 = *(v1 + 72);
  if (v9 == 2)
  {
    if (v8 == 2)
    {
      return;
    }

LABEL_6:
    type metadata accessor for NowPlayingViewModel.PlaybackPosition();
    sub_1C592C1AC(&qword_1EDA4A740, v11, type metadata accessor for NowPlayingViewModel.PlaybackPosition, &protocol conformance descriptor for NowPlayingViewModel.PlaybackPosition);
    sub_1C5BC7F24();
    sub_1C5BC7FA4();

    return;
  }

  v10 = *(v1 + 40);
  v17[0] = *(v1 + 24);
  v17[1] = v10;
  v17[2] = *(v1 + 56);
  v18 = v9;
  if (v8 == 2)
  {
    goto LABEL_6;
  }

  v12[0] = v2;
  v12[1] = v3;
  v12[2] = v5;
  v13 = v4 & 1;
  v14 = v6;
  v15 = v7;
  v16 = v8 & 1;
  if ((_s11MediaCoreUI19NowPlayingViewModelC16DurationSnapshotV2eeoiySbAE_AEtFZ_0(v17, v12) & 1) == 0)
  {
    goto LABEL_6;
  }
}

void sub_1C596D7EC(char a1)
{
  v2 = v1;
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v4 = sub_1C5BC7D64();
  __swift_project_value_buffer(v4, qword_1EDA5DA78);

  v5 = sub_1C5BC7D44();
  v6 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109376;
    *(v7 + 4) = a1 & 1;
    *(v7 + 8) = 1024;
    swift_beginAccess();
    *(v7 + 10) = *(v2 + 177);

    _os_log_impl(&dword_1C5922000, v5, v6, "ViewModel.isPlaying was changed from %{BOOL}d to %{BOOL}d", v7, 0xEu);
    MEMORY[0x1C69510F0](v7, -1, -1);
  }

  else
  {
  }

  v8 = sub_1C5BCAB14();
  sub_1C596D96C(v8, 1, sub_1C596DA94, v2);

  sub_1C596DD10();
}

double sub_1C596D96C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{

  sub_1C5BC8424();
  if (qword_1EDA48E80 != -1)
  {
    swift_once();
  }

  MEMORY[0x1C694C640](qword_1EDA48E88, 0);
  MEMORY[0x1C694C620](((a2 & 1u) + 1) | 0x290000);
  sub_1C5BC8B14();

  return result;
}

double sub_1C596DA60()
{
  UIAnimationDragCoefficient();
  result = (0.0083333 / v0);
  qword_1EDA48E88 = *&result;
  return result;
}

void sub_1C596DAB0(uint64_t a1)
{
  v2 = *(*(a1 + 72) + 120);
  swift_beginAccess();
  v3 = *(a1 + 177);
  KeyPath = swift_getKeyPath(byte_1C5BF2458);
  v5 = swift_getKeyPath(byte_1C5BF2480);

  sub_1C596DB84(v3, v2, KeyPath, v5);
}

double sub_1C596DBCC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, __n128), unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  v17[0] = a2;
  v13 = a1 & 1;

  swift_getAtKeyPath();

  if (v18 == v13)
  {
  }

  else
  {
    (a5)(0);
    sub_1C5B3F1D8(a6, a7, a8);
    sub_1C5BC7F14();
    sub_1C5BC7FA4();

    v18 = a2;

    v14 = swift_modifyAtReferenceWritableKeyPath();
    *v15 = v13;
    v14(v17, 0);
  }

  return result;
}

void sub_1C596DD10()
{
  swift_beginAccess();
  v1 = *(v0 + 177);
  swift_beginAccess();
  if (v1)
  {
    v2 = *(v0 + 176);
    v3 = *(v0 + 104);
    if (v2)
    {
      swift_beginAccess();
      v4 = *(v3 + 33);
      KeyPath = swift_getKeyPath("p,[&");
      v6 = swift_getKeyPath("P,[&");

      v7 = 2;
    }

    else
    {
      swift_beginAccess();
      v4 = *(v3 + 33);
      KeyPath = swift_getKeyPath("p,[&");
      v6 = swift_getKeyPath("P,[&");

      v7 = 1;
    }
  }

  else
  {
    v3 = *(v0 + 104);
    swift_beginAccess();
    v4 = *(v3 + 33);
    KeyPath = swift_getKeyPath("p,[&");
    v6 = swift_getKeyPath("P,[&");

    v7 = 0;
  }

  sub_1C596DEA4(v7, v3, KeyPath, v6);
  sub_1C596E0BC(v4);
}

uint64_t sub_1C596DE58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 33);
  return result;
}

double sub_1C596DEA4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[0] = a2;

  swift_getAtKeyPath();

  if (a1)
  {
    if (a1 == 1)
    {
      v6 = 0x6573756170;
    }

    else
    {
      v6 = 1886352499;
    }

    if (a1 == 1)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }
  }

  else
  {
    v7 = 0xE400000000000000;
    v6 = 2036427888;
  }

  v8 = 0xE500000000000000;
  v9 = 0x6573756170;
  if (v17 != 1)
  {
    v9 = 1886352499;
    v8 = 0xE400000000000000;
  }

  if (v17)
  {
    v10 = v9;
  }

  else
  {
    v10 = 2036427888;
  }

  if (v17)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  if (v6 == v10 && v7 == v11)
  {
  }

  else
  {
    v12 = sub_1C5BCBDE4();

    if ((v12 & 1) == 0)
    {
      _s17TransportControlsCMa();
      sub_1C5B3F1D8(&qword_1EDA4A620, _s17TransportControlsCMa, &unk_1C5BDFD58);
      sub_1C5BC7F14();
      sub_1C5BC7FA4();

      v17 = a2;

      v13 = swift_modifyAtReferenceWritableKeyPath();
      *v14 = a1;
      v13(v16, 0);

      goto LABEL_23;
    }
  }

LABEL_23:

  return result;
}

void sub_1C596E0BC(char a1)
{
  swift_beginAccess();
  v3 = 0xE500000000000000;
  v4 = 0x6573756170;
  if (*(v1 + 33) != 1)
  {
    v4 = 1886352499;
    v3 = 0xE400000000000000;
  }

  if (*(v1 + 33))
  {
    v5 = v4;
  }

  else
  {
    v5 = 2036427888;
  }

  if (*(v1 + 33))
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v7 = 0x6573756170;
    }

    else
    {
      v7 = 1886352499;
    }

    if (a1 == 1)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v5 != v7)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v8 = 0xE400000000000000;
    if (v5 != 2036427888)
    {
      goto LABEL_21;
    }
  }

  if (v6 == v8)
  {

    return;
  }

LABEL_21:
  v9 = sub_1C5BCBDE4();

  if ((v9 & 1) == 0)
  {
    if (qword_1EDA469E0 != -1)
    {
      swift_once();
    }

    v10 = sub_1C5BC7D64();
    __swift_project_value_buffer(v10, qword_1EDA5DA78);

    v11 = v1;
    v12 = sub_1C5BC7D44();
    v13 = sub_1C5BCB4F4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136446466;
      if (a1)
      {
        if (a1 == 1)
        {
          v16 = 0x6573756170;
        }

        else
        {
          v16 = 1886352499;
        }

        if (a1 == 1)
        {
          v17 = 0xE500000000000000;
        }

        else
        {
          v17 = 0xE400000000000000;
        }
      }

      else
      {
        v17 = 0xE400000000000000;
        v16 = 2036427888;
      }

      v18 = sub_1C592ADA8(v16, v17, &v24);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      v19 = 0xE500000000000000;
      v20 = 0x6573756170;
      if (*(v11 + 33) != 1)
      {
        v20 = 1886352499;
        v19 = 0xE400000000000000;
      }

      if (*(v11 + 33))
      {
        v21 = v20;
      }

      else
      {
        v21 = 2036427888;
      }

      if (*(v11 + 33))
      {
        v22 = v19;
      }

      else
      {
        v22 = 0xE400000000000000;
      }

      v23 = sub_1C592ADA8(v21, v22, &v24);

      *(v14 + 14) = v23;
      _os_log_impl(&dword_1C5922000, v12, v13, "TransportControls.center button changed from %{public}s to %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C69510F0](v15, -1, -1);
      MEMORY[0x1C69510F0](v14, -1, -1);
    }
  }
}

uint64_t static NowPlayingArtworkTreatment<>.standard.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C592CFE4(&unk_1F45138D0);
  *a1 = result;
  return result;
}

void sub_1C596E404(void *a2@<X8>)
{
  swift_getKeyPath(byte_1C5BF1E60);
  swift_getKeyPath(byte_1C5BF1E88);
  sub_1C5BC8034();

  *a2 = v3;
}

uint64_t sub_1C596E488(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_getKeyPath(byte_1C5BF1E60);
  swift_getKeyPath(byte_1C5BF1E88);
  v3 = v2;

  return sub_1C5BC8044();
}

double static NowPlayingViewModel.LeadingTransportButtonConfiguration.seekBackward15.getter@<D0>(uint64_t a1@<X8>)
{
  result = 3.29257015e161;
  *a1 = xmmword_1C5BEF370;
  *(a1 + 16) = 0;
  return result;
}

double static NowPlayingViewModel.TrailingTransportButtonConfiguration.seekForward30.getter@<D0>(uint64_t a1@<X8>)
{
  result = 9.31739788e242;
  *a1 = xmmword_1C5BEF3D0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_1C596E5D4(uint64_t *a1, const char *a2, const char *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(v4 + 104);
  v9 = *(a1 + 16);
  KeyPath = swift_getKeyPath(a2);
  v11 = swift_getKeyPath(a3);

  return a4(v6, v7, v9, v8, KeyPath, v11);
}

double sub_1C596E698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t), void (*a8)(uint64_t, uint64_t, uint64_t))
{
  v31 = a4;
  v14 = ~a3;

  swift_getAtKeyPath();

  if (!v14)
  {
    if (v30 == 255)
    {
      a7(v28, v29, 255);
      a7(a1, a2, 255);
      v23 = a1;
      v24 = a2;
      v25 = 255;
      goto LABEL_19;
    }

    a7(v28, v29, v30);
    a7(a1, a2, 255);
LABEL_10:
    a8(a1, a2, a3);
    v15 = v28;
    v16 = v29;
    v17 = v30;
    goto LABEL_11;
  }

  if (v30 == 255)
  {
    a7(v28, v29, 255);
    a7(a1, a2, a3);
    a7(a1, a2, a3);
    sub_1C5950CE4(a1, a2);
    goto LABEL_10;
  }

  if ((a3 & 1) == 0)
  {
    if (v30)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v30)
  {
LABEL_13:
    if (v28 == a1 && v29 == a2)
    {
      a7(a1, a2, v30);
      a7(a1, a2, a3);
      a7(a1, a2, a3);
      a8(a1, a2, v30);
    }

    else
    {
      v26 = sub_1C5BCBDE4();
      a7(v28, v29, v30);
      a7(a1, a2, a3);
      a7(a1, a2, a3);
      a8(v28, v29, v30);
      if ((v26 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    sub_1C5950CE4(a1, a2);
    v23 = a1;
    v24 = a2;
    v25 = a3;
LABEL_19:
    a8(v23, v24, v25);
    a8(v28, v29, v30);
    a8(a1, a2, a3);

    goto LABEL_20;
  }

LABEL_5:
  a7(v28, v29, v30);
  a7(a1, a2, a3);
  a7(a1, a2, a3);
  a8(v28, v29, v30);
LABEL_6:
  sub_1C5950CE4(a1, a2);
  v15 = a1;
  v16 = a2;
  v17 = a3;
LABEL_11:
  a8(v15, v16, v17);
  a8(v28, v29, v30);
  _s17TransportControlsCMa();
  sub_1C5B3F1D8(&qword_1EDA4A620, _s17TransportControlsCMa, &unk_1C5BDFD58);
  sub_1C5BC7F14();
  sub_1C5BC7FA4();

  v31 = a4;

  v18 = swift_modifyAtReferenceWritableKeyPath();
  v20 = *v19;
  v21 = *(v19 + 8);
  *v19 = a1;
  *(v19 + 8) = a2;
  v22 = *(v19 + 16);
  *(v19 + 16) = a3;
  a8(v20, v21, v22);
  v18(&v28, 0);

LABEL_20:

  return result;
}

uint64_t sub_1C596EAC0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1C5950CE4(a1, a2);
  }

  return a1;
}

void sub_1C596EBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v7 = v5;
  v66 = a4;
  swift_getKeyPath("H \\&");
  v70 = v5;
  sub_1C5937938(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
  sub_1C5BC7B74();

  v10 = *(v5 + 16);
  if (v10 >> 62)
  {
    v11 = sub_1C5BCB984();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x1E69E7CC0];
  v67 = a5;
  v68 = a1;
  if (v11)
  {
    v70 = MEMORY[0x1E69E7CC0];

    sub_1C5B8F088(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
LABEL_56:
      swift_once();
      goto LABEL_23;
    }

    v13 = 0;
    v12 = v70;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1C694FD20](v13, v10);
      }

      else
      {
        v14 = *(v10 + 8 * v13 + 32);
      }

      swift_beginAccess();
      v16 = v14[2];
      v15 = v14[3];
      v17 = v14[4];
      v18 = v14[5];

      v70 = v12;
      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1C5B8F088((v19 > 1), v20 + 1, 1);
        v12 = v70;
      }

      ++v13;
      *(v12 + 16) = v20 + 1;
      v21 = (v12 + 32 * v20);
      v21[4] = v16;
      v21[5] = v15;
      v21[6] = v17;
      v21[7] = v18;
    }

    while (v11 != v13);

    a5 = v67;
    a1 = v68;
  }

  v22 = sub_1C5A4A200(a1, v12);

  swift_getKeyPath("( \\&");
  v70 = v7;
  sub_1C5BC7B74();

  v23 = *(v7 + 48);
  LOBYTE(v11) = v23 == 0;
  if (a5)
  {
    v24 = 1702195828;
    if (v23)
    {
      v25 = *(v7 + 24);
      v26 = *(v7 + 32);
      v27 = *(v7 + 40);
      sub_1C59AEE34(v25, v26, *(v7 + 40) & 1);

      LOBYTE(v70) = v66 & 1;
      LODWORD(v11) = sub_1C5BC9C04();
      sub_1C5953BD8(v25, v26, v27 & 1);

      if (v22 & v11)
      {
        return;
      }

      v65 = v22;
      LOBYTE(v11) = (v22 ^ 1) & v11;
    }

    else
    {
      v65 = v22;
      LOBYTE(v11) = 0;
    }

    v28 = 0xE400000000000000;
  }

  else
  {
    if (((v23 == 0) & v22) != 0)
    {
      return;
    }

    v65 = v22;
    v24 = 0x65736C6166;
    v28 = 0xE500000000000000;
  }

  v70 = 0;
  v71 = 0xE000000000000000;
  sub_1C5BCBA94();
  MEMORY[0x1C694F170](0xD00000000000001BLL, 0x80000001C5BF8860);
  v73 = *(a1 + 16);
  a5 = v73;
  v29 = sub_1C5BCBD64();
  MEMORY[0x1C694F170](v29);

  MEMORY[0x1C694F170](0xD000000000000019, 0x80000001C5BF8880);
  MEMORY[0x1C694F170](v24, v28);

  MEMORY[0x1C694F170](46, 0xE100000000000000);
  a1 = 0;
  v6 = 0xE000000000000000;
  if (!v73)
  {
    if (qword_1EDA469E0 != -1)
    {
      swift_once();
    }

    v45 = sub_1C5BC7D64();
    __swift_project_value_buffer(v45, qword_1EDA5DA78);

    v46 = sub_1C5BC7D44();
    v47 = sub_1C5BCB4F4();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v70 = v49;
      *v48 = 136446210;
      v50 = sub_1C592ADA8(0, 0xE000000000000000, &v70);

      *(v48 + 4) = v50;
      _os_log_impl(&dword_1C5922000, v46, v47, "%{public}s", v48, 0xCu);
      v51 = __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x1C69510F0](v49, -1, -1, v51);
      MEMORY[0x1C69510F0](v48, -1, -1);
    }

    else
    {
    }

    v56 = v68;
    goto LABEL_36;
  }

  if (qword_1EDA469E0 != -1)
  {
    goto LABEL_56;
  }

LABEL_23:
  v30 = sub_1C5BC7D64();
  __swift_project_value_buffer(v30, qword_1EDA5DA78);

  v31 = sub_1C5BC7D44();
  v32 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v31, v32))
  {
    v63 = v32;
    v64 = v11;
    v33 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v73 = v62;
    *v33 = 136446466;
    v34 = sub_1C592ADA8(a1, v6, &v73);

    *(v33 + 4) = v34;
    *(v33 + 12) = 2082;
    v69 = MEMORY[0x1E69E7CC0];
    sub_1C594A39C(0, a5, 0);
    v35 = v69;
    v36 = (v68 + 48);
    v37 = a5;
    do
    {
      v38 = *(v36 - 1);
      v70 = *(v36 - 2);
      v71 = v38;
      v72 = *v36;
      v39 = sub_1C5A58314();
      v69 = v35;
      v42 = *(v35 + 16);
      v41 = *(v35 + 24);
      if (v42 >= v41 >> 1)
      {
        v61 = v39;
        v44 = v40;
        sub_1C594A39C((v41 > 1), v42 + 1, 1);
        v40 = v44;
        v39 = v61;
        v35 = v69;
      }

      *(v35 + 16) = v42 + 1;
      v43 = v35 + 16 * v42;
      *(v43 + 32) = v39;
      *(v43 + 40) = v40;
      v36 += 2;
      --v37;
    }

    while (v37);
    v70 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192888, &qword_1C5BDE420);
    sub_1C5924F54(&qword_1EDA45EB0, &qword_1EC192888, &qword_1C5BDE420, MEMORY[0x1E69E6310]);
    v52 = sub_1C5BCAD74();
    v54 = v53;

    v55 = sub_1C592ADA8(v52, v54, &v73);

    *(v33 + 14) = v55;
    _os_log_impl(&dword_1C5922000, v31, v63, "%{public}s\n\n%{public}s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C69510F0](v62, -1, -1);
    MEMORY[0x1C69510F0](v33, -1, -1);

    v56 = v68;
    LOBYTE(v11) = v64;
  }

  else
  {

    v56 = v68;
  }

LABEL_36:
  swift_getKeyPath("\b \\&");
  v70 = v7;
  sub_1C5BC7B74();

  if (*(v7 + 56) == 1)
  {
    KeyPath = swift_getKeyPath("\b \\&");
    MEMORY[0x1EEE9AC00](KeyPath);
    v70 = v7;
    sub_1C5BC7B64();
  }

  if ((v65 & 1) == 0)
  {
    v73 = MEMORY[0x1E69E7CC0];
    if (a5)
    {
      v58 = (v56 + 48);
      do
      {
        v59 = *(v58 - 1);
        v70 = *(v58 - 2);
        v71 = v59;
        v72 = *v58;

        sub_1C5A585F8(&v70, &v69);

        if (v69)
        {
          MEMORY[0x1C694F270](v60);
          if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C5BCB094();
          }

          sub_1C5BCB0E4();
        }

        v58 += 2;
        --a5;
      }

      while (a5);
    }

    if (qword_1EC1906F0 != -1)
    {
      swift_once();
    }

    MEMORY[0x1EEE9AC00](qword_1EC194EB0);
    sub_1C5BC87F4();
  }

  if ((v11 & 1) == 0)
  {
    if (qword_1EC1906F0 != -1)
    {
      swift_once();
    }

    MEMORY[0x1EEE9AC00](qword_1EC194EB0);
    sub_1C5BC87F4();
  }
}

void sub_1C596F708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v10 = v5[3];
  v11 = v5[4];
  v13 = v5[5];
  v12 = v5[6];
  if (!v12)
  {
    if (!a4)
    {
      v15 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath("( \\&", a5.n128_f64[0]);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5937938(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
    sub_1C5BC7B64();
    sub_1C596F908(a1, a2, a3, a4);

    return;
  }

  if (!a4)
  {
    goto LABEL_6;
  }

  sub_1C59AEE34(v5[3], v5[4], v13 & 1);

  v14 = sub_1C5BC9C04();
  sub_1C596F908(v10, v11, v13, v12);
  if ((v14 & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = v5[3];
  v11 = v5[4];
  v13 = v5[5];
  v15 = v5[6];
LABEL_8:
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = a4;

  sub_1C596F908(v10, v11, v13, v15);
}

uint64_t sub_1C596F908(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1C5953BD8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1C596F94C(uint64_t result, uint64_t a2, char a3, uint64_t a4, __n128 a5)
{
  if (a4)
  {
    sub_1C59AEE34(result, a2, a3 & 1);
  }

  return result;
}

uint64_t NowPlayingViewModel.Metrics.on(_:for:handler:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v7 = a2[1];
  v9 = *(v4 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v9 + 16);
  *(v9 + 16) = 0x8000000000000000;
  v14 = sub_1C596FBD8(v8, v7);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_10;
  }

  LOBYTE(a3) = v13;
  if (v12[3] >= v17)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(v9 + 16) = v12;
      if ((v13 & 1) == 0)
      {
        goto LABEL_11;
      }

LABEL_8:

LABEL_13:
      v25 = v12[7];
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v28 = *(v25 + 8 * v14);
      *(v25 + 8 * v14) = 0x8000000000000000;
      sub_1C5970A48(sub_1C5B3D038, v10, v26);
      *(v25 + 8 * v14) = v28;
      return swift_endAccess();
    }

LABEL_10:
    sub_1C5AF616C();
    *(v9 + 16) = v12;
    if ((a3 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  sub_1C596FCA0(v17, isUniquelyReferenced_nonNull_native);
  v18 = sub_1C596FBD8(v8, v7);
  if ((a3 & 1) != (v19 & 1))
  {
    goto LABEL_15;
  }

  v14 = v18;
  *(v9 + 16) = v12;
  if (a3)
  {
    goto LABEL_8;
  }

LABEL_11:
  v20 = sub_1C5970708(MEMORY[0x1E69E7CC0]);
  v12[(v14 >> 6) + 8] |= 1 << v14;
  v21 = (v12[6] + 16 * v14);
  *v21 = v8;
  v21[1] = v7;
  *(v12[7] + 8 * v14) = v20;
  v22 = v12[2];
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    v12[2] = v24;
    goto LABEL_13;
  }

  __break(1u);
LABEL_15:
  result = sub_1C5BCBE84();
  __break(1u);
  return result;
}

uint64_t sub_1C596FB90()
{

  return swift_deallocObject();
}

uint64_t sub_1C596FC1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_1C5BCBF54();
  sub_1C5BCAF04();
  v5 = sub_1C5BCBF94();

  return a3(a1, a2, v5);
}

void sub_1C596FCA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191828, &unk_1C5BE7FA0);
  v35 = v4;
  v6 = sub_1C5BCBC64();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
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
    v14 = v6 + 64;
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
      if ((v35 & 1) == 0)
      {
      }

      sub_1C5BCBF54();
      sub_1C5BCAF04();
      v25 = sub_1C5BCBF94();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1C596FF48(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 177);
  *(v1 + 177) = a1;
  sub_1C596D7EC(v3);
}

unint64_t sub_1C596FFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1C5BCBDE4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1C5970074()
{
  v1 = v0;
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C5BC7D64();
  __swift_project_value_buffer(v2, qword_1EDA5DA78);
  v3 = sub_1C5BC7D44();
  v4 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C5922000, v3, v4, "NowPlayingViewModel clearing current item", v5, 2u);
    MEMORY[0x1C69510F0](v5, -1, -1);
  }

  sub_1C59704F4();
  v6 = sub_1C5971548();
  v7 = v1[13];
  KeyPath = swift_getKeyPath(byte_1C5BF1D58, v6);
  v9 = swift_getKeyPath(byte_1C5BF1D80);

  v10 = sub_1C5971FE0(0, v7, KeyPath, v9);
  v11 = v1[11];
  if (*(v11 + 16))
  {
    v12 = swift_getKeyPath(byte_1C5BF1DA0, v10);
    MEMORY[0x1EEE9AC00](v12);
    *&v17[0] = v11;
    sub_1C5B906C0(&qword_1EDA4B230, _s11ContextMenuCMa, &unk_1C5BDA930);
    sub_1C5BC7B64();
  }

  else
  {
    *(v11 + 16) = 0;
  }

  v13 = v1[9];
  v14 = sub_1C592CFE4(&unk_1F4518BD0);
  sub_1C5972918(v14, v13);
  swift_getKeyPath("P2[&");
  swift_getKeyPath("02[&");

  sub_1C5BC8044();
  swift_getKeyPath(byte_1C5BF1E60);
  swift_getKeyPath(byte_1C5BF1E88);

  sub_1C5BC8044();
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  swift_getKeyPath(byte_1C5BF1DC8);
  swift_getKeyPath("p2[&");
  sub_1C592CB84(v17, v16);

  sub_1C5BC8044();
  return sub_1C5924EF4(v17, &qword_1EC1929B0, &qword_1C5BDD720);
}

uint64_t sub_1C5970398@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 57);
  return result;
}

double sub_1C59704F4()
{
  KeyPath = swift_getKeyPath(byte_1C5BD5830);
  v2 = swift_getKeyPath(byte_1C5BD5858);

  sub_1C59707FC(0, 0, v0, KeyPath, v2);
  if (qword_1EDA4AEA0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDA5DB08;
  v4 = unk_1EDA5DB10;
  v5 = swift_getKeyPath(byte_1C5BD5958);
  v6 = swift_getKeyPath(byte_1C5BD5980);

  v7 = sub_1C59709E4(v3, v4, v0, v5, v6);
  v8 = swift_getKeyPath(a8_2, v7);
  v9 = swift_getKeyPath(byte_1C5BD5810);

  v10 = sub_1C5971010(MEMORY[0x1E69E7CC0], v0, v8, v9);
  v11 = swift_getKeyPath(aP_13, v10);
  v12 = swift_getKeyPath(aP_14);

  v13 = sub_1C59707FC(0, 0, v0, v11, v12);
  v14 = swift_getKeyPath(byte_1C5BD5758, v13);
  v15 = swift_getKeyPath(byte_1C5BD5780);

  return sub_1C59713E8(0, v0, v14, v15);
}

unint64_t sub_1C59706B4()
{
  result = qword_1EDA49A40;
  if (!qword_1EDA49A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA49A40);
  }

  return result;
}

unint64_t sub_1C5970708(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191830, &unk_1C5BD30D0);
  v3 = sub_1C5BCBC74();
  v13 = *(a1 + 32);
  result = sub_1C5970D3C();
  if (v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v6 = (a1 + 48);
  v7 = v1 - 1;
  while (1)
  {
    *(v3 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    *(*(v3 + 56) + 16 * result) = v13;
    v8 = *(v3 + 16);
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    *(v3 + 16) = v10;
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = *v6++;
    v13 = v11;

    result = sub_1C5970D3C();
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

double sub_1C59707FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a3;

  swift_getAtKeyPath();

  if (!a2)
  {
    if (!v13)
    {

      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (!v13)
  {
LABEL_11:
    type metadata accessor for NowPlayingViewModel.PrimaryMetadata();
    sub_1C5B3F1D8(qword_1EDA4A8C8, type metadata accessor for NowPlayingViewModel.PrimaryMetadata, &protocol conformance descriptor for NowPlayingViewModel.PrimaryMetadata);
    sub_1C5BC7F14();
    sub_1C5BC7FA4();

    v14 = a3;

    v9 = swift_modifyAtReferenceWritableKeyPath();
    *v10 = a1;
    v10[1] = a2;

    v9(&v12, 0);

    goto LABEL_12;
  }

  if (v12 != a1 || v13 != a2)
  {
    v8 = sub_1C5BCBDE4();

    if (v8)
    {

      goto LABEL_10;
    }

    goto LABEL_11;
  }

LABEL_10:

LABEL_12:

  return result;
}

void sub_1C5970A48(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1C5970D3C();
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1C5970D94(v14, a3 & 1);
      v9 = sub_1C5970D3C();
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_1C5BCBE84();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_1C5AF6014();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    *(v19 + 8 * (v9 >> 6) + 64) |= 1 << v9;
    v21 = (*(v19 + 56) + 16 * v9);
    *v21 = a1;
    v21[1] = a2;
    v22 = *(v19 + 16);
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v13)
    {
      *(v19 + 16) = v23;
      return;
    }

    goto LABEL_15;
  }

  v20 = (*(v19 + 56) + 16 * v9);
  *v20 = a1;
  v20[1] = a2;
}

double sub_1C5970B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), unint64_t *a7, uint64_t (*a8)(uint64_t), uint64_t a9)
{
  v21 = a3;

  swift_getAtKeyPath();

  if (v20[0] == a1 && v20[1] == a2)
  {

    goto LABEL_8;
  }

  v16 = sub_1C5BCBDE4();

  if (v16)
  {

LABEL_8:

    return result;
  }

  a6(0);
  sub_1C5B3F1D8(a7, a8, a9);
  sub_1C5BC7F14();
  sub_1C5BC7FA4();

  v21 = a3;

  v18 = swift_modifyAtReferenceWritableKeyPath();
  *v19 = a1;
  v19[1] = a2;

  v18(v20, 0);

  return result;
}

uint64_t sub_1C5970D3C()
{
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](0);
  v0 = sub_1C5BCBF94();

  return sub_1C5971338(v0);
}

void sub_1C5970D94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191830, &unk_1C5BD30D0);
  v6 = sub_1C5BCBC64();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v28 = *(*(v5 + 56) + 16 * (v16 | (v8 << 6)));
      if ((v4 & 1) == 0)
      {
      }

      sub_1C5BCBF54();
      MEMORY[0x1C69501A0](0);
      v19 = sub_1C5BCBF94();
      v20 = -1 << *(v7 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 56) + 16 * v15) = v28;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v27 = 1 << *(v5 + 32);
      if (v27 >= 64)
      {
        bzero((v5 + 64), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v27;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
}

double sub_1C5971010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[0] = a2;

  swift_getAtKeyPath();

  v6 = sub_1C597118C(a1, v11);

  if (v6)
  {
  }

  else
  {
    type metadata accessor for NowPlayingViewModel.PrimaryMetadata();
    sub_1C5B3F1D8(qword_1EDA4A8C8, type metadata accessor for NowPlayingViewModel.PrimaryMetadata, &protocol conformance descriptor for NowPlayingViewModel.PrimaryMetadata);
    sub_1C5BC7F14();
    sub_1C5BC7FA4();

    v11 = a2;

    v8 = swift_modifyAtReferenceWritableKeyPath();
    *v9 = a1;

    v8(v10, 0);
  }

  return result;
}

uint64_t sub_1C597118C(uint64_t result, uint64_t a2)
{
  v10 = result;
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  while (v2)
  {
    v4 = *(v10 + v3 + 56);
    v5 = *(v10 + v3 + 64);
    v7 = *(a2 + v3 + 48);
    v6 = *(a2 + v3 + 56);
    v8 = *(a2 + v3 + 64);
    v14 = *(v10 + v3 + 48);
    v9 = *(v10 + v3 + 32) == *(a2 + v3 + 32) && *(v10 + v3 + 40) == *(a2 + v3 + 40);
    if (!v9 && (sub_1C5BCBDE4() & 1) == 0)
    {
      return 0;
    }

    v12 = v2;

    sub_1C59AEE34(v14, v4, v5);

    sub_1C59AEE34(v7, v6, v8);

    v13 = sub_1C5BC9C04();

    sub_1C5953BD8(v7, v6, v8);

    sub_1C5953BD8(v14, v4, v5);

    if ((v13 & 1) == 0)
    {
      return 0;
    }

    v3 += 48;
    --v2;
    if (v12 == 1)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

double sub_1C5971364(char *a1, uint64_t a2)
{
  v2 = *a1;
  v6 = *(a2 + 32);
  v5 = *(a2 + 32);
  v4[23] = v2;
  sub_1C59400B0(&v6, v4, &qword_1EC198EC0, &qword_1C5BEE9D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198EC0, &qword_1C5BEE9D0);
  sub_1C5BCA6A4();

  return result;
}

double sub_1C59713E8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[0] = a2;

  swift_getAtKeyPath();

  if (v10 == (a1 & 1))
  {
  }

  else
  {
    type metadata accessor for NowPlayingViewModel.PrimaryMetadata();
    sub_1C5B3F1D8(qword_1EDA4A8C8, type metadata accessor for NowPlayingViewModel.PrimaryMetadata, &protocol conformance descriptor for NowPlayingViewModel.PrimaryMetadata);
    sub_1C5BC7F14();
    sub_1C5BC7FA4();

    v10 = a2;

    v6 = swift_modifyAtReferenceWritableKeyPath();
    *v7 = a1 & 1;
    v6(v9, 0);
  }

  return result;
}

double sub_1C5971548()
{
  if (qword_1EDA4AEA0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDA5DB08;
  v2 = unk_1EDA5DB10;
  KeyPath = swift_getKeyPath(byte_1C5BD58C8);
  v4 = swift_getKeyPath(aH_5);

  sub_1C5971730(v1, v2, v0, KeyPath, v4);
  memset(v11, 0, sizeof(v11));
  v12 = -1;
  v5 = swift_getKeyPath(byte_1C5BD5880);
  v6 = swift_getKeyPath(byte_1C5BD58A8);
  sub_1C59400B0(v11, v10, &qword_1EC192770, &qword_1C5BEBF20);

  sub_1C5971800(v10, v0, v5, v6);
  sub_1C5924EF4(v11, &qword_1EC192770, &qword_1C5BEBF20);
  v7 = swift_getKeyPath(aP_15);
  v8 = swift_getKeyPath(a0_2);

  return sub_1C5971E8C(0, v0, v7, v8);
}

uint64_t sub_1C59716C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1C59400B0(v3 + 40, a2, &qword_1EC192770, &qword_1C5BEBF20);
}

double sub_1C5971800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[7] = a2;

  swift_getAtKeyPath();

  sub_1C5971B18(a1, v13);
  sub_1C5971B18(v17, v15);
  if (v14 == 255)
  {
    if (v16 == 255)
    {
      sub_1C5924EF4(v13, &qword_1EC192770, &qword_1C5BEBF20);
      sub_1C5924EF4(v17, &qword_1EC192770, &qword_1C5BEBF20);
      goto LABEL_7;
    }

LABEL_9:
    sub_1C5924EF4(v13, &qword_1EC1988A0, &qword_1C5BEBF28);
    sub_1C5924EF4(v17, &qword_1EC192770, &qword_1C5BEBF20);
LABEL_10:
    _s18MiniPlayerMetadataCMa();
    sub_1C5B3F1D8(qword_1EDA4A4D8, _s18MiniPlayerMetadataCMa, &unk_1C5BD5704);
    sub_1C5BC7F14();
    sub_1C5BC7FA4();

    v17[0] = a2;

    v7 = swift_modifyAtReferenceWritableKeyPath();
    sub_1C5B3F168(a1, v8);
    v7(v13, 0);

    sub_1C5924EF4(a1, &qword_1EC192770, &qword_1C5BEBF20);
    goto LABEL_11;
  }

  sub_1C5971B18(v13, v12);
  if (v16 == 255)
  {
    sub_1C59E6580(v12);
    goto LABEL_9;
  }

  v10[0] = v15[0];
  v10[1] = v15[1];
  v10[2] = v15[2];
  v11 = v16;
  v6 = sub_1C59E5CF8(v12, v10);
  sub_1C59E6580(v10);
  sub_1C59E6580(v12);
  sub_1C5924EF4(v13, &qword_1EC192770, &qword_1C5BEBF20);
  sub_1C5924EF4(v17, &qword_1EC192770, &qword_1C5BEBF20);
  if ((v6 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  sub_1C5924EF4(a1, &qword_1EC192770, &qword_1C5BEBF20);

LABEL_11:

  return result;
}

uint64_t sub_1C5971AA4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for _CAPackageView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1C5971B18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192770, &qword_1C5BEBF20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C5971BA0(uint64_t *a1)
{
  v2 = type metadata accessor for _CAPackageView(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = a1[3];
  v9 = *(v8 + 40);
  if (!v9)
  {
LABEL_8:
    v21 = a1[1];
    if (!v21)
    {
      return;
    }

    goto LABEL_9;
  }

  v10 = *(v8 + 32);
  v11 = qword_1EDA46990;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_1C5BC7D64();
  __swift_project_value_buffer(v12, qword_1EDA5DA60);
  sub_1C5967CB0(a1, v7);
  sub_1C5967CB0(a1, v4);

  v13 = sub_1C5BC7D44();
  v14 = sub_1C5BCB4F4();

  if (!os_log_type_enabled(v13, v14))
  {

    sub_1C5972028(v4);
    sub_1C5972028(v7);
    goto LABEL_8;
  }

  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v27 = v16;
  *v15 = 136446722;
  v17 = sub_1C592ADA8(v10, v9, &v27);

  *(v15 + 4) = v17;
  *(v15 + 12) = 2082;
  v18 = *(v7 + 3);
  if (*(v18 + 24))
  {
    v19 = *(v18 + 16);
    v20 = *(v18 + 24);
  }

  else
  {
    v19 = 7104878;
    v20 = 0xE300000000000000;
  }

  sub_1C5972028(v7);
  v22 = sub_1C592ADA8(v19, v20, &v27);

  *(v15 + 14) = v22;
  *(v15 + 22) = 2082;
  if (v4[1])
  {
    v23 = *v4;
    v24 = v4[1];
  }

  else
  {
    v23 = 7104878;
    v24 = 0xE300000000000000;
  }

  sub_1C5972028(v4);
  v25 = sub_1C592ADA8(v23, v24, &v27);

  *(v15 + 24) = v25;
  _os_log_impl(&dword_1C5922000, v13, v14, "%{public}s: %{public}s CAPackageView appeared, updating state to %{public}s", v15, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1C69510F0](v16, -1, -1);
  MEMORY[0x1C69510F0](v15, -1, -1);

  v21 = a1[1];
  if (v21)
  {
LABEL_9:
    sub_1C5972084(*a1, v21);
  }
}

double sub_1C5971E8C(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[0] = a2;

  swift_getAtKeyPath();

  if (v10 == a1)
  {
  }

  else
  {
    _s18MiniPlayerMetadataCMa();
    sub_1C5B3F1D8(qword_1EDA4A4D8, _s18MiniPlayerMetadataCMa, &unk_1C5BD5704);
    sub_1C5BC7F14();
    sub_1C5BC7FA4();

    v10 = a2;

    v6 = swift_modifyAtReferenceWritableKeyPath();
    *v7 = a1;
    v6(v9, 0);
  }

  return result;
}

uint64_t sub_1C5972028(uint64_t a1)
{
  v2 = type metadata accessor for _CAPackageView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C5972084(uint64_t a1, unint64_t a2)
{
  v3 = v2[6];
  if (!v3)
  {
    return;
  }

  v4 = v2[7];
  if (!v4)
  {
    return;
  }

  v45 = v3;
  v44 = [v4 rootLayer];
  if (v44)
  {
    v7 = sub_1C5BCAE44();
    v8 = [v44 stateWithName_];

    if (v8)
    {
      v44 = v44;
      v9 = [v45 stateOfLayer_];
      if (v9)
      {
        v10 = v9;
        sub_1C592535C(0, &qword_1EDA45DA8, 0x1E69794B8);
        v11 = v8;
        v12 = v2;
        v13 = sub_1C5BCB744();

        if (v13)
        {

          v14 = v2[5];
          if (v14)
          {
            v15 = v2[4];
            v16 = qword_1EDA46990;

            if (v16 != -1)
            {
              swift_once();
            }

            v17 = sub_1C5BC7D64();
            __swift_project_value_buffer(v17, qword_1EDA5DA60);

            v18 = sub_1C5BC7D44();
            v19 = sub_1C5BCB4F4();

            if (os_log_type_enabled(v18, v19))
            {
              v20 = swift_slowAlloc();
              v21 = swift_slowAlloc();
              v46 = v21;
              *v20 = 136446722;
              v22 = sub_1C592ADA8(v15, v14, &v46);

              *(v20 + 4) = v22;
              *(v20 + 12) = 2082;
              if (v12[3])
              {
                v23 = v12[2];
                v24 = v12[3];
              }

              else
              {
                v23 = 7104878;
                v24 = 0xE300000000000000;
              }

              v43 = sub_1C592ADA8(v23, v24, &v46);

              *(v20 + 14) = v43;
              *(v20 + 22) = 2082;
              *(v20 + 24) = sub_1C592ADA8(a1, a2, &v46);
              _os_log_impl(&dword_1C5922000, v18, v19, "%{public}s: %{public}s ViewState ignoring update to %{public}s: state already set", v20, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x1C69510F0](v21, -1, -1);
              MEMORY[0x1C69510F0](v20, -1, -1);

              return;
            }
          }

          goto LABEL_24;
        }
      }

      else
      {
        v26 = v8;
      }

      v27 = v2[5];
      if (v27)
      {
        v28 = v2[4];
        v29 = qword_1EDA46990;

        if (v29 != -1)
        {
          swift_once();
        }

        v30 = sub_1C5BC7D64();
        __swift_project_value_buffer(v30, qword_1EDA5DA60);

        v31 = v2;
        v32 = sub_1C5BC7D44();
        v33 = sub_1C5BCB4F4();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v46 = v35;
          *v34 = 136446722;
          v36 = sub_1C592ADA8(v28, v27, &v46);

          *(v34 + 4) = v36;
          *(v34 + 12) = 2082;
          if (v31[3])
          {
            v37 = v31[2];
            v38 = v31[3];
          }

          else
          {
            v37 = 7104878;
            v38 = 0xE300000000000000;
          }

          v40 = sub_1C592ADA8(v37, v38, &v46);

          *(v34 + 14) = v40;
          *(v34 + 22) = 2082;
          *(v34 + 24) = sub_1C592ADA8(a1, a2, &v46);
          _os_log_impl(&dword_1C5922000, v32, v33, "%{public}s: %{public}s ViewState updating stateController to %{public}s", v34, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1C69510F0](v35, -1, -1);
          MEMORY[0x1C69510F0](v34, -1, -1);
        }

        else
        {
        }
      }

      v41 = [objc_opt_self() areAnimationsEnabled];
      v42 = 0.0;
      if (v41)
      {
        *&v42 = 1.0;
      }

      [v45 setState:v8 ofLayer:v44 transitionSpeed:v42];

      v25 = v44;
    }

    else
    {
      v25 = v45;
    }

    v39 = v44;
    goto LABEL_32;
  }

LABEL_24:
  v39 = v45;
LABEL_32:
}

uint64_t sub_1C597262C(uint64_t *a1)
{
  v2 = sub_1C5BC8F34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for ArtworkCornerStyle(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19[-v10];
  v12 = *a1;
  if (*(a1 + 8) == 1)
  {
    v23 = *a1;
  }

  else
  {

    sub_1C5BCB4E4();
    v13 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v14 = sub_1C5942458(v12, 0);
    (*(v3 + 8))(v5, v2, v14);
    LOBYTE(v12) = v23;
  }

  v22 = v12;
  v15 = a1[8];
  if (*(a1 + 72) == 1)
  {
    v21 = a1[8];
  }

  else
  {

    sub_1C5BCB4E4();
    v16 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v17 = sub_1C5942458(v15, 0);
    (*(v3 + 8))(v5, v2, v17);
    LOBYTE(v15) = v21;
  }

  v20 = v15;
  sub_1C5972A60(&v22, &v20, v11);
  type metadata accessor for ArtworkCornerModifier(0);
  sub_1C5945830(v11, v8, type metadata accessor for ArtworkCornerStyle);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196DE8, &qword_1C5BE5918);
  sub_1C5BCA6A4();
  return sub_1C5945898(v11, type metadata accessor for ArtworkCornerStyle);
}

uint64_t sub_1C5972918(uint64_t a1, uint64_t a2)
{
  v11 = &type metadata for NowPlayingStandardArtworkTreatment;
  v12 = sub_1C5928464();
  *&v10 = a1;
  swift_beginAccess();
  sub_1C59318C8(a2 + 16, v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_0(v7, v8);
  LOBYTE(v4) = NowPlayingArtworkTreatment.isEqual(_:)(&v10, v4, v5);
  __swift_destroy_boxed_opaque_existential_0(v7);
  if ((v4 & 1) == 0)
  {
    sub_1C5B8FC18(v10, *(a2 + 56), a2);
  }

  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((a2 + 16));
  sub_1C596A0A8(&v10, a2 + 16);
  return swift_endAccess();
}

uint64_t sub_1C5972A60@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  if (*a1 <= 1u)
  {
    if (!*a1)
    {
      v10 = v3;
      sub_1C59416B4(v24);
      v11 = v25;
      __swift_project_boxed_opaque_existential_0(v24, v25);
      if (sub_1C596CB78(v11))
      {
        v12 = *(v10 + 80);
        if (!v12)
        {
          _s14DefaultArtworkCMa();
          sub_1C5AC3CD8(qword_1EDA49E00, _s14DefaultArtworkCMa, &unk_1C5BDEF78);
          result = sub_1C5BC8C74();
          __break(1u);
          return result;
        }

        swift_beginAccess();
        v13 = *(v12 + 16);
        __swift_destroy_boxed_opaque_existential_0(v24);
        if (v13)
        {
          if (qword_1EC190818 != -1)
          {
            swift_once();
          }

          v14 = type metadata accessor for ArtworkCornerStyle(0);
          v15 = qword_1EC1A6CE8;
LABEL_18:
          v20 = __swift_project_value_buffer(v14, v15);
          return sub_1C5945830(v20, a3, type metadata accessor for ArtworkCornerStyle);
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v24);
      }

      v21 = *(type metadata accessor for ArtworkCornerStyle(0) + 20);
      v22 = *MEMORY[0x1E697F480];
      v23 = sub_1C5BC9044();
      result = (*(*(v23 - 8) + 104))(a3 + v21, v22, v23);
      v9 = 0x4024000000000000;
      goto LABEL_21;
    }

    if (qword_1EC190810 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for ArtworkCornerStyle(0);
    v15 = qword_1EC1A6CD0;
    goto LABEL_18;
  }

  if (*a1 - 2 < 2)
  {
    v5 = *(type metadata accessor for ArtworkCornerStyle(0) + 20);
    v6 = *MEMORY[0x1E697F468];
    v7 = sub_1C5BC9044();
    result = (*(*(v7 - 8) + 104))(a3 + v5, v6, v7);
    v9 = 0x401A000000000000;
LABEL_21:
    *a3 = v9;
    return result;
  }

  if (*a2)
  {
    v16 = 7.0;
  }

  else
  {
    v16 = 5.0;
  }

  v17 = *(type metadata accessor for ArtworkCornerStyle(0) + 20);
  v18 = *MEMORY[0x1E697F468];
  v19 = sub_1C5BC9044();
  result = (*(*(v19 - 8) + 104))(a3 + v17, v18, v19);
  *a3 = v16;
  return result;
}

uint64_t sub_1C5972D4C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(_s25ExpandsNowPlayingModifierVMa(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

double sub_1C5972DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (a1 + *(_s25ExpandsNowPlayingModifierVMa(0, a2, a3, a4) + 40));
  v7 = *v6;
  v8 = v6[1];
  v10 = type metadata accessor for NowPlayingViewControllerProxy(0, a2, a3, v9);
  WitnessTable = swift_getWitnessTable();
  sub_1C59498C4(v7, v8, v10, WitnessTable);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1997A8, &qword_1C5BF10E8);
  sub_1C5BC81A4();
  v14 = type metadata accessor for TapExcludedGeometries(0);
  v15 = &off_1F452A510;
  sub_1C5972EE4(v13);

  return result;
}

uint64_t sub_1C5972EE4(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1C59400B0(a1, v5, &qword_1EC19A180, &qword_1C5BF3690);
    sub_1C5972FA4(v5);
  }

  return sub_1C5924EF4(a1, &qword_1EC19A180, &qword_1C5BF3690);
}

uint64_t sub_1C5972F7C(double *a1, double *a2, uint64_t a3)
{
  if (*a1 == *a2)
  {
    return MEMORY[0x1EEDE0BF8](a1 + *(a3 + 20), a2 + *(a3 + 20), *a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5972FA4(uint64_t a1)
{
  v3 = qword_1EDA47F40;
  swift_beginAccess();
  sub_1C5973004(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1C5973004(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A180, &qword_1C5BF3690);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1C5973080(char a1, uint64_t *a2)
{
  v4 = sub_1C5BC8F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v8 = sub_1C5BC7D64();
  __swift_project_value_buffer(v8, qword_1EDA5DA78);
  sub_1C594AAD8(a2, v37);
  v9 = sub_1C5BC7D44();
  v10 = sub_1C5BCB4F4();
  sub_1C59735B8(a2);
  if (os_log_type_enabled(v9, v10))
  {
    v34 = v5;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v36 = v12;
    *v11 = 136446978;
    if (a1)
    {
      if (a1 == 1)
      {
        v13 = 0x6D756964656DLL;
      }

      else
      {
        v13 = 0x7274736E6F636E75;
      }

      if (a1 == 1)
      {
        v14 = 0xE600000000000000;
      }

      else
      {
        v14 = 0xED000064656E6961;
      }
    }

    else
    {
      v14 = 0xE500000000000000;
      v13 = 0x6C6C616D73;
    }

    v15 = sub_1C592ADA8(v13, v14, &v36);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    v39 = *(a2 + 8);
    v16 = *a2;
    v38 = *a2;
    if (v39 == 1)
    {
      LOBYTE(v37[0]) = v16;
    }

    else
    {
      sub_1C59400B0(&v38, v37, &qword_1EC1929E0, &qword_1C5BDE810);
      sub_1C5BCB4E4();
      v17 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(&v38, &qword_1EC1929E0, &qword_1C5BDE810);
      (*(v34 + 8))(v7, v4);
      LOBYTE(v16) = v37[0];
    }

    LOBYTE(v35) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193C10, &qword_1C5BDB690);
    v18 = sub_1C5BCAEA4();
    v20 = sub_1C592ADA8(v18, v19, &v36);

    *(v11 + 14) = v20;
    *(v11 + 22) = 2082;
    v37[0] = *(a2 + 2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198EC0, &qword_1C5BEE9D0);
    sub_1C5BCA694();
    v21 = 0xE600000000000000;
    v22 = 0x6D756964656DLL;
    if (v35 != 1)
    {
      v22 = 0x7274736E6F636E75;
      v21 = 0xED000064656E6961;
    }

    if (v35)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0x6C6C616D73;
    }

    if (v35)
    {
      v24 = v21;
    }

    else
    {
      v24 = 0xE500000000000000;
    }

    v25 = sub_1C592ADA8(v23, v24, &v36);

    *(v11 + 24) = v25;
    *(v11 + 32) = 2082;
    v26 = a2[2];
    *&v37[0] = v26;
    BYTE8(v37[0]) = *(a2 + 24);
    v27 = BYTE8(v37[0]);

    if ((v27 & 1) == 0)
    {
      sub_1C5BCB4E4();
      v28 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(v37, &qword_1EC194408, &qword_1C5BDB3B8);
      (*(v34 + 8))(v7, v4);
      v26 = v35;
    }

    swift_getKeyPath("(_[&");
    v35 = v26;
    sub_1C594AA80();
    sub_1C5BC7B74();

    v29 = *(v26 + 49);

    LOBYTE(v35) = v29;
    v30 = sub_1C5BCAEA4();
    v32 = sub_1C592ADA8(v30, v31, &v36);

    *(v11 + 34) = v32;
    _os_log_impl(&dword_1C5922000, v9, v10, "Mini player width constraint changed to %{public}s (layout=%{public}s, regularConstraint=%{public}s, miniPlayerPosition=%{public}s)", v11, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1C69510F0](v12, -1, -1);
    MEMORY[0x1C69510F0](v11, -1, -1);
  }
}

uint64_t sub_1C59735E8()
{
  v1 = 0x72616C75676572;
  if (*v0 != 1)
  {
    v1 = 0x4572616C75676572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746361706D6F63;
  }
}

double sub_1C5973650(uint64_t *a1)
{
  v2 = sub_1C5BC8F34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 24);
  v6 = a1[2];
  v21 = v6;
  v7 = v22;

  if ((v7 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v8 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v21, &qword_1EC1997F0, &unk_1C5BF12C0);
    (*(v3 + 8))(v5, v2);
    v6 = v16;
  }

  v20 = v6;
  swift_getAtKeyPath();

  v9 = v19;
  v10 = *(a1 + 3);
  v16 = *(a1 + 2);
  v17 = v10;
  v18 = *(a1 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1997E8, &unk_1C5BF12B0);
  sub_1C5BCA694();
  v11 = v15;
  v12 = v14[1];
  *(v9 + 16) = v14[0];
  *(v9 + 32) = v12;
  *(v9 + 48) = v11;

  return result;
}

double sub_1C5973824(uint64_t *a1)
{
  v2 = sub_1C5BC8F34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 24);
  v6 = a1[2];
  v12 = v6;
  v7 = v13;

  if ((v7 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v8 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v12, &qword_1EC1997F0, &unk_1C5BF12C0);
    (*(v3 + 8))(v5, v2);
    v6 = v11;
  }

  v11 = v6;
  swift_getAtKeyPath();

  *(v10 + 49) = *(a1 + 8);

  return result;
}

uint64_t sub_1C59739BC()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EDA46950);
  __swift_project_value_buffer(v0, qword_1EDA46950);
  return sub_1C5BC7D54();
}

unint64_t sub_1C5973A34()
{
  result = qword_1EDA4A218;
  if (!qword_1EDA4A218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4A218);
  }

  return result;
}

unint64_t sub_1C5973A88(uint64_t a1)
{
  result = sub_1C5973AB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C5973AB0()
{
  result = qword_1EDA4A220;
  if (!qword_1EDA4A220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4A220);
  }

  return result;
}

uint64_t sub_1C5973B04@<X0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a7@<X8>)
{
  sub_1C5931F84(a1, a7);
  *(a7 + 40) = a2;
  *(a7 + 48) = a3;
  *(a7 + 56) = a4;
  *(a7 + 64) = swift_getKeyPath(asc_1C5BDFD90);
  *(a7 + 72) = 0;
  result = sub_1C5BC8C84();
  *(a7 + 80) = result;
  *(a7 + 88) = v12;
  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1C5973BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v60 = sub_1C5BC89B4();
  v58 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v57 = &v49[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = type metadata accessor for NowPlayingTransportButtonStyle(0);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v49[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195648, &qword_1C5BE0718);
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v49[-v7];
  v8 = sub_1C5BC8F34();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v49[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v61 = type metadata accessor for MiniPlayerTransportSpecs(0);
  MEMORY[0x1EEE9AC00](v61);
  v13 = &v49[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v2 + 64);
  if (*(v2 + 72) != 1)
  {

    sub_1C5BCB4E4();
    v15 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v16 = sub_1C5942458(v14, 0);
    (*(v9 + 8))(v11, v8, v16);
    LOBYTE(v14) = v65[0];
  }

  if (v14 != 3 && v14)
  {
    if (qword_1EDA482A0 != -1)
    {
      swift_once();
    }

    v17 = qword_1EDA482A8;
  }

  else
  {
    if (qword_1EDA482C8 != -1)
    {
      swift_once();
    }

    v17 = qword_1EDA482D0;
  }

  v18 = __swift_project_value_buffer(v61, v17);
  v51 = v13;
  sub_1C59534C8(v18, v13);
  sub_1C59318C8(v2, v65);
  v50 = *(v2 + 40);
  v19 = *(*(a1 - 8) + 16);
  v19(v64, v2, a1);
  v20 = swift_allocObject();
  v22 = *(a1 + 16);
  v21 = *(a1 + 24);
  *(v20 + 16) = v22;
  *(v20 + 24) = v21;
  v23 = v64[3];
  *(v20 + 64) = v64[2];
  *(v20 + 80) = v23;
  v24 = v64[5];
  *(v20 + 96) = v64[4];
  *(v20 + 112) = v24;
  v25 = v64[1];
  *(v20 + 32) = v64[0];
  *(v20 + 48) = v25;
  v19(v63, v2, a1);
  v26 = swift_allocObject();
  *(v26 + 16) = v22;
  *(v26 + 24) = v21;
  v27 = v63[3];
  *(v26 + 64) = v63[2];
  *(v26 + 80) = v27;
  v28 = v63[5];
  *(v26 + 96) = v63[4];
  *(v26 + 112) = v28;
  v29 = v63[1];
  *(v26 + 32) = v63[0];
  *(v26 + 48) = v29;
  v19(v62, v2, a1);
  v30 = swift_allocObject();
  *(v30 + 16) = v22;
  *(v30 + 24) = v21;
  v31 = v62[3];
  *(v30 + 64) = v62[2];
  *(v30 + 80) = v31;
  v32 = v62[5];
  *(v30 + 96) = v62[4];
  *(v30 + 112) = v32;
  v33 = v62[1];
  *(v30 + 32) = v62[0];
  *(v30 + 48) = v33;
  v66 = v50;
  v67 = sub_1C5A6CFB0;
  v68 = v20;
  v69 = sub_1C5A6CFDC;
  v70 = v26;
  v71 = sub_1C5A6D05C;
  v72 = v30;
  v73 = 0x3FF0000000000000;
  v74 = 0;
  v34 = *&v13[*(v61 + 24)];
  KeyPath = swift_getKeyPath("P\v\\&");
  v76 = v34;
  v35 = swift_getKeyPath(byte_1C5BE0100);
  v36 = v52;
  *v52 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E40, &qword_1C5BE0130);
  swift_storeEnumTagMultiPayload();
  v37 = v54;
  v38 = v36 + *(v54 + 20);
  *v38 = swift_getKeyPath(byte_1C5BE0138);
  *(v38 + 8) = 0;
  v39 = v36 + *(v37 + 24);
  *v39 = swift_getKeyPath(byte_1C5BE0168);
  *(v39 + 8) = 0;
  *(v36 + *(v37 + 28)) = 0x3FF0000000000000;

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195610, &qword_1C5BE0228);
  v41 = sub_1C5951214();
  v42 = sub_1C5950DFC(qword_1EDA47650, 255, type metadata accessor for NowPlayingTransportButtonStyle, &unk_1C5BE0690);
  v43 = v53;
  sub_1C5BC9DB4();
  sub_1C595391C(v36, type metadata accessor for NowPlayingTransportButtonStyle);
  sub_1C5924EF4(v65, &qword_1EC195610, &qword_1C5BE0228);
  v45 = v57;
  v44 = v58;
  v46 = v60;
  (*(v58 + 104))(v57, *MEMORY[0x1E697E6E8], v60);
  v65[0] = v40;
  v65[1] = v37;
  v65[2] = v41;
  v65[3] = v42;
  swift_getOpaqueTypeConformance2();
  v47 = v56;
  sub_1C5BC9F44();
  (*(v44 + 8))(v45, v46);
  (*(v55 + 8))(v43, v47);
  return sub_1C595391C(v51, type metadata accessor for MiniPlayerTransportSpecs);
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_1C5974324@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5974444(v1, v12);
  v4 = *(v1 + 40);
  KeyPath = swift_getKeyPath(byte_1C5BE0770, v3);
  v6 = swift_allocObject();
  *(v6 + 16) = (v4 & 1) == 0;
  v7 = v16;
  *(a1 + 64) = v15;
  *(a1 + 80) = v7;
  *(a1 + 96) = v17;
  v8 = v18;
  v9 = v12[1];
  *a1 = v12[0];
  *(a1 + 16) = v9;
  result = *&v13;
  v11 = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = v11;
  *(a1 + 112) = v8;
  *(a1 + 120) = KeyPath;
  *(a1 + 128) = sub_1C596A6BC;
  *(a1 + 136) = v6;
  return result;
}

uint64_t sub_1C59743DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C5BC8EC4();
  *a1 = result & 1;
  return result;
}

double sub_1C5974444@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v4);
  (*(v5 + 16))(v4, v5);
  if (v6)
  {
    v7 = a1[8];
    v8 = a1[9];
    v9 = a1[10];
    v10 = a1[11];
    sub_1C5974664(a1[6], a1[7]);
    sub_1C5974664(v7, v8);
    sub_1C5974664(v9, v10);
    sub_1C5BCA684();
    sub_1C59318C8(a1, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1956B0, &qword_1C5BE07A0);
    if (swift_dynamicCast())
    {
      sub_1C5950CE4(v21, v22);
    }

    sub_1C5BCABD4();
  }

  else
  {
    v11 = a1[6];
    v12 = a1[7];
    v13 = a1[8];
    v14 = a1[9];
    v15 = a1[10];
    v16 = a1[11];
    v23[0] = 0;
    sub_1C5974664(v11, v12);
    sub_1C5974664(v13, v14);
    sub_1C5974664(v15, v16);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1956B8, &qword_1C5BE07A8);
  sub_1C59514A4();
  sub_1C5A6D330();
  sub_1C5BC92C4();
  v17 = v29;
  *(a2 + 64) = v28;
  *(a2 + 80) = v17;
  *(a2 + 96) = v30;
  *(a2 + 112) = v31;
  v18 = v25;
  *a2 = v24;
  *(a2 + 16) = v18;
  result = *&v26;
  v20 = v27;
  *(a2 + 32) = v26;
  *(a2 + 48) = v20;
  return result;
}

uint64_t sub_1C5974668(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C5974678()
{
  v1 = *v0;
  sub_1C5951550(*v0, v0[1]);
  return v1;
}

unint64_t sub_1C59746DC()
{
  result = qword_1EDA489C8;
  if (!qword_1EDA489C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA489C8);
  }

  return result;
}

unint64_t sub_1C5974750()
{
  result = qword_1EDA466A8;
  if (!qword_1EDA466A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195710, &qword_1C5BE0A68);
    sub_1C5924F54(&qword_1EDA466E8, &qword_1EC195718, &qword_1C5BE0A70, MEMORY[0x1E697DDD0]);
    sub_1C5924F54(&qword_1EDA45F48, &qword_1EC195720, &qword_1C5BE0A78, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA466A8);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
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

double sub_1C5974854@<D0>(void *a1@<X8>)
{
  v3 = v1[1];
  v7[0] = *v1;
  v7[1] = v3;
  v4 = v1[3];
  v7[2] = v1[2];
  v7[3] = v4;

  v5 = sub_1C5BCA5A4();
  sub_1C59748D0(v5, v7, a1);

  return result;
}

double sub_1C59748D0@<D0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v26 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1956E8, &unk_1C5BE0A30);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  v28 = *a2;
  v12 = *(a2 + 2);
  v13 = *(a2 + 3);
  v14 = *(a2 + 4);
  v15 = *(a2 + 5);
  v16 = *(a2 + 6);
  v24 = *(a2 + 7);
  v25 = v16;
  v17 = swift_allocObject();
  v18 = a2[1];
  v17[1] = *a2;
  v17[2] = v18;
  v19 = a2[3];
  v17[3] = a2[2];
  v17[4] = v19;

  sub_1C5974B5C(&v28, v27);
  sub_1C5974664(v12, v13);
  sub_1C5974664(v14, v15);
  sub_1C5974664(v25, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194FA8, &unk_1C5BDE5C8);
  sub_1C5974BB8();
  sub_1C5BCA6E4();
  v11[*(v6 + 44)] = 0;
  sub_1C59400B0(v11, v8, &qword_1EC1956E8, &unk_1C5BE0A30);
  v20 = v26;
  *v26 = a1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1956F0, &qword_1C5BE0A40);
  sub_1C59400B0(v8, v20 + *(v21 + 48), &qword_1EC1956E8, &unk_1C5BE0A30);

  sub_1C5924EF4(v11, &qword_1EC1956E8, &unk_1C5BE0A30);
  sub_1C5924EF4(v8, &qword_1EC1956E8, &unk_1C5BE0A30);

  return result;
}

uint64_t sub_1C5974AF4()
{

  if (v0[4])
  {
  }

  if (v0[6])
  {
  }

  if (v0[8])
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1C5974BB8()
{
  result = qword_1EDA46520;
  if (!qword_1EDA46520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194FA8, &unk_1C5BDE5C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46520);
  }

  return result;
}

uint64_t sub_1C5974C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C5BC9894();
  sub_1C5BC8174();
  *a2 = a1;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = 0;
}

uint64_t objectdestroy_71Tm()
{
  v1 = type metadata accessor for _CAPackageView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E40, &qword_1C5BE0130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1C5BC8284();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191B88, &qword_1C5BD3D30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1C5BC81D4();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

id sub_1C5974EB0(char *a1, uint64_t a2)
{
  v4 = sub_1C5BC8284();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C5BC8F34();
  v63 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v53 - v11;
  v13 = type metadata accessor for _CAPackageView(0);
  *&v14 = MEMORY[0x1EEE9AC00](v13).n128_u64[0];
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 24);
  result = v17[7];
  if (result)
  {
    result = [result rootLayer];
    if (result)
    {
      v19 = result;
      v62 = v7;
      v20 = v17[5];
      if (v20)
      {
        v57 = v17[4];
        v21 = v17[6];

        if (v21)
        {
          v61 = [v21 stateOfLayer_];
        }

        else
        {
          v61 = 0;
        }

        v59 = v12;
        v60 = v9;
        if (qword_1EDA46990 != -1)
        {
          swift_once();
        }

        v22 = sub_1C5BC7D64();
        __swift_project_value_buffer(v22, qword_1EDA5DA60);
        sub_1C5967CB0(a2, v16);
        v23 = v61;

        v24 = sub_1C5BC7D44();
        v25 = sub_1C5BCB4F4();

        v58 = v25;
        if (os_log_type_enabled(v24, v25))
        {
          v55 = v24;
          v56 = v19;
          v26 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v64 = v54;
          *v26 = 136446722;
          v27 = sub_1C592ADA8(v57, v20, &v64);

          *(v26 + 4) = v27;
          *(v26 + 12) = 2082;
          v28 = *(v16 + 3);
          v12 = v59;
          if (*(v28 + 24))
          {
            v29 = *(v28 + 16);
            v30 = *(v28 + 24);
          }

          else
          {
            v30 = 0xE300000000000000;
            v29 = 7104878;
          }

          sub_1C5972028(v16);
          v31 = sub_1C592ADA8(v29, v30, &v64);

          *(v26 + 14) = v31;
          *(v26 + 22) = 2082;
          if (v61)
          {
            v32 = v23;
            v33 = [v23 name];
            v34 = 7104878;
            if (v33)
            {
              v35 = v33;
              v36 = sub_1C5BCAE74();
              v38 = v37;

              v34 = v36;
            }

            else
            {
              v38 = 0xE300000000000000;
            }

            v9 = v60;
          }

          else
          {
            v38 = 0xE300000000000000;
            v32 = v23;
            v9 = v60;
            v34 = 7104878;
          }

          v39 = sub_1C592ADA8(v34, v38, &v64);

          *(v26 + 24) = v39;
          v40 = v55;
          _os_log_impl(&dword_1C5922000, v55, v58, "%{public}s: %{public}s CAPackageView _CALayerView update closure called with state %{public}s", v26, 0x20u);
          v41 = v54;
          swift_arrayDestroy();
          MEMORY[0x1C69510F0](v41, -1, -1);
          MEMORY[0x1C69510F0](v26, -1, -1);

          v19 = v56;
        }

        else
        {

          sub_1C5972028(v16);
          v12 = v59;
          v9 = v60;
        }
      }

      sub_1C5BC8F24();
      sub_1C59421E4(v6);
      sub_1C5BC8CE4();
      v42 = *(a2 + *(v13 + 28) + 8);

      v43 = v63;
      if ((v42 & 1) == 0)
      {
        sub_1C5BCB4E4();
        v44 = v19;
        v45 = sub_1C5BC9844();
        sub_1C5BC7C54();

        v19 = v44;
        sub_1C5BC8F24();
        swift_getAtKeyPath();

        (*(v43 + 8))(v9, v62);
      }

      sub_1C5BCA4D4();

      v46 = sub_1C5BCA4E4();
      v47 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

      v48 = *&a1[OBJC_IVAR____TtC11MediaCoreUIP33_F4C8615D44A19A30266CA641FD3263FC18CAPackageViewLayer_foregroundColor];
      *&a1[OBJC_IVAR____TtC11MediaCoreUIP33_F4C8615D44A19A30266CA641FD3263FC18CAPackageViewLayer_foregroundColor] = v47;
      v49 = v47;

      sub_1C5975698();
      v50 = OBJC_IVAR____TtC11MediaCoreUIP33_F4C8615D44A19A30266CA641FD3263FC18CAPackageViewLayer_packageLayer;
      v51 = *&a1[OBJC_IVAR____TtC11MediaCoreUIP33_F4C8615D44A19A30266CA641FD3263FC18CAPackageViewLayer_packageLayer];
      *&a1[OBJC_IVAR____TtC11MediaCoreUIP33_F4C8615D44A19A30266CA641FD3263FC18CAPackageViewLayer_packageLayer] = v19;
      v52 = v19;
      [v51 removeFromSuperlayer];
      if (*&a1[v50])
      {
        [a1 addSublayer_];
      }

      sub_1C5975698();

      return (*(v43 + 8))(v12, v62);
    }
  }

  return result;
}

id sub_1C59754E8(char *a1)
{
  v3 = *(type metadata accessor for _CAPackageView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1C5974EB0(a1, v4);
}

uint64_t sub_1C5975558(uint64_t a1, char a2)
{
  v4 = sub_1C5BC8F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v8 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    return v10[1];
  }

  return a1;
}

id sub_1C5975698()
{
  v1 = objc_opt_self();
  [v1 begin];
  [v1 setDisableActions_];
  v2 = *(v0 + OBJC_IVAR____TtC11MediaCoreUIP33_F4C8615D44A19A30266CA641FD3263FC18CAPackageViewLayer_foregroundColor);
  if (v2)
  {
    v3 = *MEMORY[0x1E6979888];
    v4 = objc_allocWithZone(MEMORY[0x1E6979378]);
    v5 = v2;
    v6 = [v4 initWithType_];
    v7 = sub_1C5BCB394();
    [v6 setValue:v7 forKey:*MEMORY[0x1E69799C8]];

    v8 = sub_1C5BCB394();
    [v6 setValue:v8 forKey:*MEMORY[0x1E6979990]];

    v9 = [v5 CGColor];
    [v6 setValue:v9 forKey:*MEMORY[0x1E6979AA0]];

    v10 = *(v0 + OBJC_IVAR____TtC11MediaCoreUIP33_F4C8615D44A19A30266CA641FD3263FC18CAPackageViewLayer_packageLayer);
    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC197420, &qword_1C5BE4CB0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1C5BCFF00;
      *(v11 + 56) = sub_1C592535C(0, &qword_1EDA45D80, 0x1E6979378);
      *(v11 + 32) = v6;
      v12 = v10;
      v13 = v6;
      v14 = sub_1C5BCB044();

      [v12 setFilters_];
    }
  }

  else
  {
    v15 = *(v0 + OBJC_IVAR____TtC11MediaCoreUIP33_F4C8615D44A19A30266CA641FD3263FC18CAPackageViewLayer_packageLayer);
    if (!v15)
    {
      goto LABEL_7;
    }

    v6 = v15;
    v5 = sub_1C5BCB044();
    [v6 setFilters_];
  }

LABEL_7:

  return [v1 commit];
}

void sub_1C597594C()
{
  v33.receiver = v0;
  v33.super_class = type metadata accessor for CAPackageViewLayer();
  objc_msgSendSuper2(&v33, sel_layoutSublayers);
  v1 = *&v0[OBJC_IVAR____TtC11MediaCoreUIP33_F4C8615D44A19A30266CA641FD3263FC18CAPackageViewLayer_packageLayer];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [v2 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v34.origin.x = v4;
    v34.origin.y = v6;
    v34.size.width = v8;
    v34.size.height = v10;
    Width = CGRectGetWidth(v34);
    v28 = v4;
    v35.origin.x = v4;
    v35.origin.y = v6;
    v29 = v10;
    v35.size.width = v8;
    v35.size.height = v10;
    v19 = Width / CGRectGetHeight(v35);
    v36.origin.x = v12;
    v36.origin.y = v14;
    v36.size.width = v16;
    v36.size.height = v18;
    v20 = CGRectGetWidth(v36);
    v37.origin.x = v12;
    v37.origin.y = v14;
    v37.size.width = v16;
    v37.size.height = v18;
    if (v19 >= v20 / CGRectGetHeight(v37))
    {
      v40.origin.x = v28;
      v40.origin.y = v6;
      v40.size.width = v8;
      v40.size.height = v29;
      Height = CGRectGetHeight(v40);
      v41.origin.x = v12;
      v41.origin.y = v14;
      v41.size.width = v16;
      v41.size.height = v18;
      v22 = CGRectGetHeight(v41);
    }

    else
    {
      v38.origin.x = v28;
      v38.origin.y = v6;
      v38.size.width = v8;
      v38.size.height = v29;
      Height = CGRectGetWidth(v38);
      v39.origin.x = v12;
      v39.origin.y = v14;
      v39.size.width = v16;
      v39.size.height = v18;
      v22 = CGRectGetWidth(v39);
    }

    CGAffineTransformMakeScale(&v31, Height / v22, Height / v22);
    *&m.a = *&v31.m11;
    *&m.c = *&v31.m13;
    *&m.tx = *&v31.m21;
    CATransform3DMakeAffineTransform(&v31, &m);
    [v2 setTransform_];
    [v0 bounds];
    x = v42.origin.x;
    y = v42.origin.y;
    v25 = v42.size.width;
    v26 = v42.size.height;
    MidX = CGRectGetMidX(v42);
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = v25;
    v43.size.height = v26;
    [v2 setPosition_];
  }
}

uint64_t sub_1C5975B64(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C5BC77E4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1C5BC77D4();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1C5975C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C599EF70();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1C5975CBC(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_1C5BC8974();
  }

  else
  {
    sub_1C5BC87B4();
  }

  return sub_1C5BC8AB4();
}

uint64_t sub_1C5975D24(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_1C5BC8974();
    sub_1C5BC8AB4();
    sub_1C599C1FC();
  }

  else
  {
    sub_1C5BC87B4();
    sub_1C5BC8AB4();
    sub_1C599D80C(&qword_1EC190A00, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
  }

  return swift_getWitnessTable();
}

uint64_t sub_1C5975E18(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC190A08, &qword_1C5BD2790);
  sub_1C5BC8AB4();
  sub_1C5924F54(&unk_1EC190A10, &qword_1EC190A08, &qword_1C5BD2790, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable();
}

uint64_t sub_1C5975EC4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for WaveformSize(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WaveformSize(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

void *sub_1C5975F40@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_1C5975F78(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_1C5976008@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5BCAE74();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_1C5976068@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1C5976094@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1C5976150@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1C599E00C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1C5976234@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C59A2270();
  *a1 = result & 1;
  return result;
}

__n128 sub_1C5976298(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C59762A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C59A2418();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C5976308@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C59A25C0();
  *a1 = result;
  return result;
}

id sub_1C597636C@<X0>(void *a1@<X8>)
{
  v2 = sub_1C59A3DBC();
  *a1 = v2;

  return v2;
}

void sub_1C59763A8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C59A3E3C(v1);
}

void sub_1C5976404(uint64_t a1@<X8>)
{
  *a1 = sub_1C59A2CB0();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t sub_1C5976484(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PopoverViewModifier(255, a1[1], a1[3], a4);
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C5976518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1913A0, &unk_1C5BD2460);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C59765E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1913A0, &unk_1C5BD2460);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C59766B0()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1C5976738()
{

  if (*(v0 + 72))
  {
  }

  if (*(v0 + 88))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C59767B8()
{

  return swift_deallocObject();
}

uint64_t sub_1C5976800(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PopoverViewModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_1C5BC9394();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191168, &qword_1C5BD2220);
  v4 = sub_1C5BC8AB4();
  sub_1C5924F54(qword_1EC191318, &qword_1EC191168, &qword_1C5BD2220, MEMORY[0x1E6980A18]);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Popover(255, v4, WitnessTable, v6);
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC92A4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C59769D8(void *a1)
{
  sub_1C5BC81E4();
  sub_1C5BC92D4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C5976B34(void *a1)
{
  sub_1C5BC8AB4();
  sub_1C59A5AEC();
  return swift_getWitnessTable();
}

uint64_t sub_1C5976B98(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC190A08, &qword_1C5BD2790);
  sub_1C5BC8AB4();
  sub_1C5924F54(&unk_1EC190A10, &qword_1EC190A08, &qword_1C5BD2790, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable();
}

void *sub_1C5976C48@<X0>(_BYTE *a1@<X8>)
{
  sub_1C599DCB8();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

uint64_t sub_1C5976D24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1916F8, &qword_1C5BD2F38);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1C5976DC0()
{
  v1 = (type metadata accessor for FittedTextStack(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[10];
  v4 = sub_1C5BC9BB4();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1C5976EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C5BC9BB4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}