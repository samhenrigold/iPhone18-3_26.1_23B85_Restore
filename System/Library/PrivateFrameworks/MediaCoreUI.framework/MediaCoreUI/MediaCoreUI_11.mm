uint64_t sub_1C5A4D7D8()
{
  _s12PresentationCMa(0);
  sub_1C5A4E970(&qword_1EDA4AF70, 255, _s12PresentationCMa, &unk_1C5BD2B30);
  return sub_1C5BC8324();
}

uint64_t sub_1C5A4D84C()
{
  swift_getKeyPath("@+\\&");
  swift_getKeyPath(" +\\&");
  sub_1C5BC8034();

  return v1;
}

uint64_t sub_1C5A4D8D4()
{
  v1 = OBJC_IVAR____TtCCC11MediaCoreUI19NowPlayingViewModel7Artwork17BackgroundArtwork__snapshotImage;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194D88, &qword_1C5BDD798);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1C5A4D97C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath("p%\\&");
  sub_1C5A4E970(&unk_1EDA49D30, 255, _s7ArtworkC20MiniPlayerAppearanceCMa, &unk_1C5BDD4F8);
  sub_1C5BC7B74();

  *a2 = *(v3 + 16);
}

void sub_1C5A4DA28(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath("p%\\&");
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A4E970(&unk_1EDA49D30, 255, _s7ArtworkC20MiniPlayerAppearanceCMa, &unk_1C5BDD4F8);
    sub_1C5BC7B64();
  }
}

void sub_1C5A4DB3C(char a1)
{
  if (*(v1 + 17) == (a1 & 1))
  {
    *(v1 + 17) = a1 & 1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A4E970(&unk_1EDA49D30, 255, _s7ArtworkC20MiniPlayerAppearanceCMa, &unk_1C5BDD4F8);
    sub_1C5BC7B64();
  }
}

uint64_t sub_1C5A4DC50()
{
  swift_getKeyPath("($\\&");
  sub_1C5A4E970(&unk_1EDA49D30, 255, _s7ArtworkC20MiniPlayerAppearanceCMa, &unk_1C5BDD4F8);
  sub_1C5BC7B74();

  return *(v0 + 18);
}

void sub_1C5A4DCF4(char a1)
{
  if (*(v1 + 18) == (a1 & 1))
  {
    *(v1 + 18) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath("($\\&");
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A4E970(&unk_1EDA49D30, 255, _s7ArtworkC20MiniPlayerAppearanceCMa, &unk_1C5BDD4F8);
    sub_1C5BC7B64();
  }
}

void sub_1C5A4DE08(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1C5BDDD10);
  sub_1C5A4E970(&unk_1EDA49D30, 255, _s7ArtworkC20MiniPlayerAppearanceCMa, &unk_1C5BDD4F8);
  sub_1C5BC7B74();

  *a2 = *(v3 + 19);
}

void sub_1C5A4DEB4(char a1)
{
  if (*(v1 + 19) == (a1 & 1))
  {
    *(v1 + 19) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1C5BDDD10);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A4E970(&unk_1EDA49D30, 255, _s7ArtworkC20MiniPlayerAppearanceCMa, &unk_1C5BDD4F8);
    sub_1C5BC7B64();
  }
}

uint64_t sub_1C5A4DFC8()
{
  v1 = OBJC_IVAR____TtCCC11MediaCoreUI19NowPlayingViewModel7Artwork20MiniPlayerAppearance___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1C5A4E064()
{
  sub_1C5BCBF54();
  sub_1C5BCAF04();

  return sub_1C5BCBF94();
}

uint64_t sub_1C5A4E108(uint64_t a1)
{
  sub_1C5BCBF54();
  sub_1C5BCAF04();

  return sub_1C5BCBF94();
}

unint64_t sub_1C5A4E1A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C5A4EF64(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1C5A4E1D8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEA0000000000646ELL;
  v5 = 0x756F72676B636162;
  if (v2 != 1)
  {
    v5 = 0x726564616568;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void sub_1C5A4E23C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_1C5BCB984())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v7 &= v7 - 1;
LABEL_12:

      v11 = sub_1C5BCB9D4();

      if ((v11 & 1) == 0)
      {
        return;
      }
    }

    v9 = v4;
    while (1)
    {
      v4 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v10 = *(a2 + 56 + 8 * v4);
      ++v9;
      if (v10)
      {
        v7 = (v10 - 1) & v10;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C5A4E340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a3;
  v17 = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v15);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a1, a3);
  swift_beginAccess();
  sub_1C59318C8(a2 + 16, v12);
  v9 = v13;
  v10 = v14;
  __swift_project_boxed_opaque_existential_0(v12, v13);
  LOBYTE(v9) = NowPlayingArtworkTreatment.isEqual(_:)(&v15, v9, v10);
  __swift_destroy_boxed_opaque_existential_0(v12);
  if ((v9 & 1) == 0)
  {
    sub_1C593192C(boxed_opaque_existential_0, *(a2 + 56), a2, a3, a4);
  }

  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((a2 + 16));
  sub_1C5931F84(&v15, a2 + 16);
  return swift_endAccess();
}

uint64_t _s11MediaCoreUI42NowPlayingBackgroundStaticArtworkTreatmentV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (sub_1C5931E14(*a1, *a2))
  {
    if (v2)
    {
      if (v3)
      {
        sub_1C592535C(0, &qword_1EDA4E5E0, 0x1E69DCAB8);
        v4 = v3;
        v5 = v2;
        v6 = sub_1C5BCB744();

        if (v6)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1C5A4E4FC(uint64_t a1)
{
  result = sub_1C5A4E524();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C5A4E524()
{
  result = qword_1EDA47380;
  if (!qword_1EDA47380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA47380);
  }

  return result;
}

unint64_t sub_1C5A4E578(uint64_t a1)
{
  result = sub_1C5A4E5A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C5A4E5A0()
{
  result = qword_1EC194CB8;
  if (!qword_1EC194CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194CB8);
  }

  return result;
}

unint64_t sub_1C5A4E5F4(uint64_t a1)
{
  result = sub_1C5A4E61C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C5A4E61C()
{
  result = qword_1EC194CC0;
  if (!qword_1EC194CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194CC0);
  }

  return result;
}

unint64_t sub_1C5A4E670(uint64_t a1)
{
  result = sub_1C5A4E698();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C5A4E698()
{
  result = qword_1EC194CC8;
  if (!qword_1EC194CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194CC8);
  }

  return result;
}

unint64_t sub_1C5A4E6EC(uint64_t a1)
{
  result = sub_1C5A4E714();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C5A4E714()
{
  result = qword_1EC194CD0;
  if (!qword_1EC194CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194CD0);
  }

  return result;
}

uint64_t sub_1C5A4E78C(uint64_t *a1, int a2)
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

uint64_t sub_1C5A4E7D4(uint64_t result, int a2, int a3)
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

uint64_t sub_1C5A4E810(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1C5A4E858(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C5A4E8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5A4E970(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C5A4E9B8(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1C5BCB984())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC194DA0, &qword_1C5BDD7A8);
      v3 = sub_1C5BCBA64();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1C5BCB984();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v22 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v1;
  while (v22)
  {
    v8 = MEMORY[0x1C694FD20](v6, v1);
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_1C5BC7F04();
    sub_1C5A4E970(&qword_1EC194D70, 255, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
    v10 = sub_1C5BCAD34();
    v11 = -1 << *(v3 + 32);
    v12 = v10 & ~v11;
    v13 = v12 >> 6;
    v14 = *(v7 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_1C5A4E970(&unk_1EC194D78, 255, MEMORY[0x1E695BF10], MEMORY[0x1E695BF20]);
      do
      {
        if (sub_1C5BCADB4())
        {

          v1 = v21;
          goto LABEL_11;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v1 = v21;
    }

    *(v7 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 8 * v12) = v8;
    v17 = *(v3 + 16);
    v9 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v6 == v5)
    {
      return;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_1C5A4EC64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 280) = 0;
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
    *(result + 288) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 290) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 290) = 0;
    }

    if (a2)
    {
      *(result + 248) = a2;
    }
  }

  return result;
}

void sub_1C5A4ED30()
{
  v1 = *(v0 + 16);
  v2 = v1;
  sub_1C5BB9BA0(v1);
}

unint64_t sub_1C5A4ED64()
{
  result = qword_1EDA465B8;
  if (!qword_1EDA465B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194E30, &qword_1C5BDDDF8);
    sub_1C5924F54(&qword_1EDA466C0, &unk_1EC194E48, &qword_1C5BDDE98, MEMORY[0x1E697E030]);
    sub_1C5924F54(&qword_1EDA46420, &unk_1EC194E58, &qword_1C5BDDEA0, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA465B8);
  }

  return result;
}

uint64_t sub_1C5A4EE58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1C5A4EEA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C5A4EF64(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C5BCBCB4();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void *sub_1C5A4EFB0(uint64_t a1, unint64_t a2, unint64_t a3, void *a4, uint64_t a5, double a6)
{
  v51 = a4;
  v7 = v6;
  v52 = a5;
  v49 = a3;
  v11 = sub_1C5BC7D64();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v7 + 144) = 0u;
  v15 = v7 + 144;
  *(v7 + 136) = 0;
  *(v7 + 112) = 0;
  *(v7 + 120) = 0;
  *(v7 + 160) = 0u;
  if (qword_1EDA46940 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v11, qword_1EDA5DA48);
  (*(v12 + 16))(v14, v16, v11);
  v17 = sub_1C5BC7D44();
  v18 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v48 = v7 + 144;
    v20 = a2;
    v21 = v7;
    v22 = a1;
    v23 = v19;
    *v19 = 0;
    _os_log_impl(&dword_1C5922000, v17, v18, "AudioTapQueueProcessor initialized, will enqueue buffer", v19, 2u);
    v24 = v23;
    a1 = v22;
    v7 = v21;
    a2 = v20;
    v15 = v48;
    MEMORY[0x1C69510F0](v24, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  type metadata accessor for AudioTapCallbackWrapper();
  result = swift_allocObject();
  v26 = v52;
  result[2] = v51;
  result[3] = v26;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a2))
  {
    v27 = result;
    v28 = objc_allocWithZone(MEMORY[0x1E6958418]);

    v29 = [v28 initWithCommonFormat:1 sampleRate:a2 channels:1 interleaved:a6];
    if (v29)
    {
      v30 = v29;
      v31 = v50;
      v32 = sub_1C5A3BA28(v29, v27);
      if (v31)
      {
      }

      else
      {
        v34 = v32;
        v35 = objc_allocWithZone(MEMORY[0x1E695A888]);
        LODWORD(v50) = a1;
        v36 = [v35 initProcessTapWithFormat:v30 PID:a1];
        v37 = objc_allocWithZone(MEMORY[0x1E695A880]);
        v51 = v36;
        v38 = [v37 initWithTapDescription_];
        v39 = AudioQueueSetProperty(v34, 0x71746F62u, v38, 8u);
        if (!v39)
        {

          v42 = sub_1C5A3B8AC(v30, v34, v50, a2, v49);
          *(v7 + 112) = v34;
          *(v7 + 120) = v42;
          *(v7 + 128) = v27;
          v43 = v42;

          v44 = AudioQueueEnqueueBuffer(v34, v43, 0, 0);
          if (v44)
          {
            v45 = v44;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194590, &qword_1C5BDC0A8);
            sub_1C5A3B9C4();
            swift_allocError();
            *v46 = 4;
            *(v46 + 4) = v45;
            swift_willThrow();
          }

          else
          {
          }

          return v7;
        }

        v40 = v39;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194590, &qword_1C5BDC0A8);
        sub_1C5A3B9C4();
        swift_allocError();
        *v41 = 2;
        *(v41 + 4) = v40;
        swift_willThrow();
      }
    }

    else
    {
      sub_1C5A4F89C();
      swift_allocError();
      *v33 = 0;
      swift_willThrow();
    }

    sub_1C5924EF4(v15, &qword_1EC191700, &unk_1C5BD5040);
    type metadata accessor for AudioTapQueueProcessor();
    swift_defaultActor_destroy();

    swift_deallocPartialClassInstance();
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5A4F49C()
{
  v1 = v0;
  v2 = sub_1C5BC7D64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - v6;
  v8 = *(v1 + 112);
  if (v8)
  {
    AudioQueueStop(v8, 1u);
  }

  if (qword_1EDA46940 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v2, qword_1EDA5DA48);
  v10 = *(v3 + 16);
  v10(v7, v9, v2);
  v11 = sub_1C5BC7D44();
  v12 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1C5922000, v11, v12, "AudioTapQueueProcessor deinitialized, will destroy audio tap setup", v13, 2u);
    MEMORY[0x1C69510F0](v13, -1, -1);
  }

  v14 = *(v3 + 8);
  v14(v7, v2);
  v15 = *(v1 + 112);
  if (v15)
  {
    v16 = *(v1 + 120);
    if (v16 && (v17 = AudioQueueFreeBuffer(*(v1 + 112), v16)) != 0)
    {
      v18 = v17;
      v32 = v14;
      v19 = 5;
    }

    else
    {
      v20 = AudioQueueDispose(v15, 0);
      if (!v20)
      {
        goto LABEL_17;
      }

      v18 = v20;
      v32 = v14;
      v19 = 7;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194590, &qword_1C5BDC0A8);
    sub_1C5A3B9C4();
    v21 = swift_allocError();
    *v22 = v19;
    *(v22 + 4) = v18;
    swift_willThrow();
    v10(v33, v9, v2);
    v23 = v21;
    v24 = sub_1C5BC7D44();
    v25 = sub_1C5BCB4F4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = v21;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v29;
      *v27 = v29;
      _os_log_impl(&dword_1C5922000, v24, v25, "AudioTapQueueProcessor error during audio tap setup destruction: %@", v26, 0xCu);
      sub_1C5924EF4(v27, &unk_1EC196F30, &qword_1C5BD8940);
      MEMORY[0x1C69510F0](v27, -1, -1);
      MEMORY[0x1C69510F0](v26, -1, -1);
    }

    else
    {
    }

    v32(v33, v2);
  }

LABEL_17:

  sub_1C5924EF4(v1 + 144, &qword_1EC191700, &unk_1C5BD5040);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_1C5A4F84C()
{
  sub_1C5A4F49C();

  return MEMORY[0x1EEE6DEF0](v0);
}

unint64_t sub_1C5A4F89C()
{
  result = qword_1EC194E90;
  if (!qword_1EC194E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194E90);
  }

  return result;
}

uint64_t sub_1C5A4F8F0()
{
  swift_getKeyPath("H \\&");
  sub_1C5937938(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
  sub_1C5BC7B74();
}

uint64_t sub_1C5A4F994()
{
  _s13TrackSectionsCMa(0);
  sub_1C5937938(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
  return sub_1C5BC8324();
}

uint64_t sub_1C5A4FA04()
{
  swift_getKeyPath("\b \\&");
  sub_1C5937938(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
  sub_1C5BC7B74();

  return *(v0 + 56);
}

uint64_t sub_1C5A4FAA4@<X0>(uint64_t a3@<X8>)
{
  _s13TrackSectionsCMa(0);
  sub_1C5937938(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
  v4 = sub_1C5BC8324();
  v6 = v5;
  _s13HostedContentCMa(0);
  sub_1C5937938(&qword_1EDA4AE80, _s13HostedContentCMa, &unk_1C5BDBA8C);
  v7 = sub_1C5BC8324();
  v9 = v8;
  type metadata accessor for NowPlayingViewModel.PlaybackPosition();
  sub_1C5937938(&qword_1EDA4A740, type metadata accessor for NowPlayingViewModel.PlaybackPosition, &protocol conformance descriptor for NowPlayingViewModel.PlaybackPosition);
  v10 = sub_1C5BC8C84();
  v12 = v11;
  result = sub_1C5BC8C84();
  *a3 = v4;
  *(a3 + 8) = v6 & 1;
  *(a3 + 16) = v7;
  *(a3 + 24) = v9 & 1;
  *(a3 + 32) = v10;
  *(a3 + 40) = v12;
  *(a3 + 48) = result;
  *(a3 + 56) = v14;
  return result;
}

void sub_1C5A4FC2C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v7 = sub_1C5BC7AC4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (*(a1 + 72) == 2)
  {
    goto LABEL_25;
  }

  v12 = *(a1 + 56);
  v11 = *(a1 + 64);
  v14 = *(a1 + 24);
  v13 = *(a1 + 32);
  sub_1C5BC7AB4();
  sub_1C5BC7A54();
  v16 = v15;
  (*(v8 + 8))(v10, v7);
  v17 = v14 + v11 * (v16 - v12);
  if (v13 < v17)
  {
    v17 = v13;
  }

  if (v17 < 0.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v17;
  }

  swift_getKeyPath("H \\&");
  v33 = v4;
  sub_1C5937938(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
  sub_1C5BC7B74();

  v19 = *(v4 + 16);
  v31 = v19;
  if (v19 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C5BCB984())
  {

    if (!i)
    {
      break;
    }

    while (!__OFSUB__(i--, 1))
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1C694FD20](i, v19);
      }

      else
      {
        if ((i & 0x8000000000000000) != 0)
        {
          goto LABEL_27;
        }

        if (i >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }
      }

      if (*(v22 + 32) > v18)
      {
      }

      else
      {
        v23 = *(v22 + 40);

        if (v18 <= v23)
        {
          MEMORY[0x1EEE9AC00](v24);
          *&v30[-16] = &v31;
          v32 = i;
          sub_1C5A59B78(&v32, &v33);
          v25 = v33;
          goto LABEL_23;
        }
      }

      if (!i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

LABEL_22:
  v25 = 0;
LABEL_23:

  if (!v25)
  {
LABEL_25:
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v27 = v25[2];
    v26 = v25[3];
    v28 = v25[4];
    v29 = v25[5];

    *a2 = v27;
    *(a2 + 8) = v26;
    *(a2 + 16) = v28;
    *(a2 + 24) = v29;
  }
}

uint64_t sub_1C5A4FF24()
{
  swift_getKeyPath("( \\&");
  v4 = v0;
  sub_1C5937938(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
  sub_1C5BC7B74();

  v1 = v0[3];
  sub_1C596F94C(v1, v4[4], v4[5], v4[6], v2);
  return v1;
}

void sub_1C5A4FFEC(char a1)
{
  if (*(v1 + 56) == (a1 & 1))
  {
    *(v1 + 56) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath("\b \\&");
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5937938(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
    sub_1C5BC7B64();
  }
}

uint64_t sub_1C5A500FC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v91 = a4;
  v90 = a3;
  v99 = a2;
  v85 = a1;
  v79 = a5;
  v95 = a2 & 1;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192838, &qword_1C5BD5C80);
  MEMORY[0x1EEE9AC00](v101);
  v100 = &v68 - v7;
  v71 = sub_1C5BC8F34();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v69 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C5BC8B34();
  v94 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v93 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s19TrackSectionsButtonV9TitleViewVMa(255, a3, a4, v11);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194F68, &qword_1C5BDE528);
  swift_getTupleTypeMetadata3();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA714();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194A78, &unk_1C5BDE530);
  v12 = sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1C5924F54(&qword_1EDA462C8, &qword_1EC194A78, &unk_1C5BDE530, MEMORY[0x1E697FD58]);
  v115 = WitnessTable;
  v116 = v14;
  v88 = v12;
  v87 = swift_getWitnessTable();
  v15 = sub_1C5BCA6F4();
  v89 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v84 = &v68 - v16;
  v17 = swift_getWitnessTable();
  v18 = sub_1C5937938(&qword_1EC192338, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v111 = v15;
  v112 = v9;
  v80 = v9;
  v113 = v17;
  v114 = v18;
  v82 = v17;
  v81 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v86 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v21 = &v68 - v20;
  v22 = sub_1C5BC8AB4();
  v96 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v83 = &v68 - v23;
  sub_1C5BC97C4();
  v24 = sub_1C5BC8AB4();
  v78 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v98 = &v68 - v25;
  v111 = v15;
  v112 = v9;
  v113 = v17;
  v114 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v110 = MEMORY[0x1E697E5D8];
  v97 = v22;
  v26 = v24;
  v27 = swift_getWitnessTable();
  v28 = sub_1C5937938(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v92 = v27;
  v107 = v27;
  v108 = v28;
  v29 = swift_getWitnessTable();
  v30 = sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838, &qword_1C5BD5C80, MEMORY[0x1E69E6ED8]);
  v111 = v26;
  v112 = v101;
  v75 = v29;
  v113 = v29;
  v114 = v30;
  v74 = v30;
  v77 = swift_getOpaqueTypeMetadata2();
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v72 = &v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v73 = &v68 - v33;
  v34 = swift_allocObject();
  v35 = v90;
  v36 = v91;
  *(v34 + 16) = v90;
  *(v34 + 24) = v36;
  v37 = v85;
  *(v34 + 32) = v85;
  v38 = v95;
  *(v34 + 40) = v95;
  v102 = v35;
  v103 = v36;
  v104 = v37;
  v105 = v38;
  v39 = v37;

  v40 = v84;
  sub_1C5BCA6E4();
  v41 = v93;
  sub_1C5BC8B24();
  v42 = v80;
  sub_1C5BC9DA4();
  v43 = v41;
  v44 = v39;
  (*(v94 + 8))(v43, v42);
  v45 = v15;
  v46 = v83;
  (*(v89 + 8))(v40, v45);
  sub_1C5BC98E4();
  sub_1C5BCA2F4();
  (*(v86 + 8))(v21, OpaqueTypeMetadata2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1943F8, &unk_1C5BDB380);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C5BCFF00;
  v111 = 0;
  v112 = 0xE000000000000000;
  sub_1C5BCBA94();

  v111 = 0xD000000000000012;
  v112 = 0x80000001C5BF88A0;

  if ((v99 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v48 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v49 = v69;
    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v70 + 8))(v49, v71);
    v44 = v106;
  }

  swift_getKeyPath("\b \\&");
  v106 = v44;
  sub_1C5937938(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
  sub_1C5BC7B74();

  v50 = *(v44 + 56);

  if (v50)
  {
    v51 = 1702195828;
  }

  else
  {
    v51 = 0x65736C6166;
  }

  if (v50)
  {
    v52 = 0xE400000000000000;
  }

  else
  {
    v52 = 0xE500000000000000;
  }

  MEMORY[0x1C694F170](v51, v52);

  v53 = v112;
  *(inited + 32) = v111;
  *(inited + 40) = v53;
  v54 = v98;
  v55 = v97;
  sub_1C5949C94(0xD00000000000001ALL, 0x80000001C5BF88C0, inited, v97);
  swift_setDeallocating();
  sub_1C5A4EF10(inited + 32);
  (*(v96 + 8))(v46, v55);
  v56 = *MEMORY[0x1E697E728];
  v57 = sub_1C5BC89B4();
  v58 = v100;
  (*(*(v57 - 8) + 104))(v100, v56, v57);
  sub_1C5937938(&qword_1EDA46688, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1C5BCADB4();
  if (result)
  {
    v60 = v72;
    v61 = v101;
    v62 = v75;
    v63 = v74;
    sub_1C5BC9F54();
    sub_1C5924EF4(v58, &qword_1EC192838, &qword_1C5BD5C80);
    (*(v78 + 8))(v54, v26);
    v111 = v26;
    v112 = v61;
    v113 = v62;
    v114 = v63;
    v64 = swift_getOpaqueTypeConformance2();
    v65 = v73;
    v66 = v77;
    sub_1C593EDC0(v60, v77, v64);
    v67 = *(v76 + 8);
    v67(v60, v66);
    sub_1C593EDC0(v65, v66, v64);
    return (v67)(v65, v66);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1C5A50DF4(uint64_t a1, char a2)
{
  v4 = sub_1C5BC8F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v8 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    a1 = v11;
  }

  swift_getKeyPath("\b \\&");
  v11 = a1;
  sub_1C5937938(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
  sub_1C5BC7B74();

  v11 = a1;
  swift_getKeyPath("\b \\&");
  sub_1C5BC7B94();

  *(a1 + 56) = (*(a1 + 56) & 1) == 0;
  v11 = a1;
  swift_getKeyPath("\b \\&");
  sub_1C5BC7B84();

  return result;
}

uint64_t sub_1C5A51014@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a4;
  v23 = a1;
  v24 = a2;
  v25 = a5;
  _s19TrackSectionsButtonV9TitleViewVMa(255, a3, a4, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194F68, &qword_1C5BDE528);
  swift_getTupleTypeMetadata3();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  v6 = sub_1C5BCA714();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194A78, &unk_1C5BDE530);
  v10 = sub_1C5BC8AB4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - v15;
  v26 = a3;
  v27 = v22;
  v28 = v23;
  v29 = v24 & 1;
  sub_1C5BC8FC4();
  sub_1C5BCA704();
  WitnessTable = swift_getWitnessTable();
  sub_1C594E11C();
  sub_1C5BC9E84();
  (*(v7 + 8))(v9, v6);
  v18 = sub_1C5924F54(&qword_1EDA462C8, &qword_1EC194A78, &unk_1C5BDE530, MEMORY[0x1E697FD58]);
  v30 = WitnessTable;
  v31 = v18;
  v19 = swift_getWitnessTable();
  sub_1C593EDC0(v13, v10, v19);
  v20 = *(v11 + 8);
  v20(v13, v10);
  sub_1C593EDC0(v16, v10, v19);
  return (v20)(v16, v10);
}

uint64_t sub_1C5A51364@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v86 = a2;
  v85 = a1;
  v110 = a5;
  v7 = sub_1C5BC89E4();
  v108 = *(v7 - 8);
  v109 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v107 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1C5BC90D4();
  v103 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v101 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v93 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v92 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C5BC8F34();
  v83 = *(v14 - 8);
  v84 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v82 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194F70, &qword_1C5BDE540);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v81 - v18;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194F78, &qword_1C5BDE548);
  MEMORY[0x1EEE9AC00](v87);
  v88 = &v81 - v20;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194F80, &qword_1C5BDE550);
  MEMORY[0x1EEE9AC00](v100);
  v89 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v90 = &v81 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v95 = &v81 - v25;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194F68, &qword_1C5BDE528);
  v104 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v102 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v98 = &v81 - v28;
  sub_1C5A51ED8(&v125);
  v30 = _s19TrackSectionsButtonV9TitleViewVMa(0, a3, a4, v29);
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(&v125, v30, WitnessTable);
  v135[2] = v127;
  v135[3] = v128;
  v135[4] = v129;
  v135[0] = v125;
  v135[1] = v126;
  v91 = *(v30 - 8);
  v31 = *(v91 + 8);
  v99 = v30;
  v96 = v31;
  v97 = v91 + 8;
  v31(v135, v30);
  v32 = sub_1C5BCA5A4();
  v33 = sub_1C5BC98C4();
  sub_1C5BC8174();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_1C5BC9924();
  v42 = sub_1C5BC9934();

  KeyPath = swift_getKeyPath(a8_5);
  LOBYTE(v125) = 0;
  v44 = &v19[*(v17 + 44)];
  v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192C78, &qword_1C5BD9590) + 28);
  v46 = *MEMORY[0x1E69816C8];
  v47 = sub_1C5BCA5D4();
  v48 = &v44[v45];
  v49 = v85;
  (*(*(v47 - 8) + 104))(v48, v46, v47);
  *v44 = swift_getKeyPath(asc_1C5BDE590);
  *v19 = v32;
  v19[8] = v33;
  *(v19 + 9) = v137[0];
  *(v19 + 3) = *(v137 + 3);
  *(v19 + 2) = v35;
  *(v19 + 3) = v37;
  *(v19 + 4) = v39;
  *(v19 + 5) = v41;
  v19[48] = 0;
  *(v19 + 49) = *v136;
  *(v19 + 13) = *&v136[3];
  *(v19 + 7) = KeyPath;
  *(v19 + 8) = v42;

  if ((v86 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v50 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v51 = v82;
    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v83 + 8))(v51, v84);
    v49 = v125;
  }

  swift_getKeyPath("\b \\&");
  *&v125 = v49;
  sub_1C5937938(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
  sub_1C5BC7B74();

  v52 = *(v49 + 56);

  if (v52)
  {
    v53 = 3.14159265;
  }

  else
  {
    v53 = 0.0;
  }

  sub_1C5BCABD4();
  v55 = v54;
  v57 = v56;
  v58 = v88;
  sub_1C59E7D34(v19, v88, &qword_1EC194F70, &qword_1C5BDE540);
  v59 = v58 + *(v87 + 36);
  *v59 = v53;
  *(v59 + 8) = v55;
  *(v59 + 16) = v57;
  sub_1C5BCADC4();
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v60 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  *&v125 = sub_1C5BCAE94();
  *(&v125 + 1) = v61;
  sub_1C5A59640();
  sub_1C594A23C();
  v62 = v89;
  sub_1C5BCA034();

  sub_1C5924EF4(v58, &qword_1EC194F78, &qword_1C5BDE548);
  v63 = v101;
  sub_1C5BC90B4();
  v64 = v90;
  v65 = v100;
  sub_1C5BC8A04();
  v66 = *(v103 + 8);
  v67 = v105;
  v66(v63, v105);
  sub_1C5924EF4(v62, &qword_1EC194F80, &qword_1C5BDE550);
  sub_1C5BC9094();
  v68 = v95;
  sub_1C5BC8A64();
  v66(v63, v67);
  sub_1C5924EF4(v64, &qword_1EC194F80, &qword_1C5BDE550);
  v69 = v107;
  sub_1C5BC8C44();
  v105 = sub_1C5A5983C();
  v70 = sub_1C5937938(qword_1EC194FB8, MEMORY[0x1E697C168], MEMORY[0x1E697C160]);
  v71 = v98;
  v72 = v65;
  v73 = v109;
  sub_1C5BC9E04();
  (*(v108 + 8))(v69, v73);
  sub_1C5924EF4(v68, &qword_1EC194F80, &qword_1C5BDE550);
  v123[2] = v132;
  v123[3] = v133;
  v123[4] = v134;
  v123[0] = v130;
  v123[1] = v131;
  v119 = v132;
  v120 = v133;
  v121 = v134;
  v117 = v130;
  v118 = v131;
  v115 = 0;
  v116 = 1;
  v122[0] = &v117;
  v122[1] = &v115;
  v74 = v104;
  v75 = v102;
  v76 = v106;
  (*(v104 + 16))(v102, v71, v106);
  v122[2] = v75;
  v77 = v99;
  (*(v91 + 16))(&v125, v123, v99);
  v114[0] = v77;
  v114[1] = MEMORY[0x1E6981840];
  v114[2] = v76;
  v111 = WitnessTable;
  v112 = MEMORY[0x1E6981838];
  *&v125 = v72;
  *(&v125 + 1) = v73;
  *&v126 = v105;
  *(&v126 + 1) = v70;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C594226C(v122, 3uLL, v114);
  v78 = *(v74 + 8);
  v78(v71, v76);
  v124[2] = v132;
  v124[3] = v133;
  v124[4] = v134;
  v124[0] = v130;
  v124[1] = v131;
  v79 = v96;
  v96(v124, v77);
  v78(v75, v76);
  v127 = v119;
  v128 = v120;
  v129 = v121;
  v125 = v117;
  v126 = v118;
  return v79(&v125, v77);
}

uint64_t sub_1C5A51ED8@<X0>(uint64_t a3@<X8>)
{
  _s13TrackSectionsCMa(0);
  sub_1C5937938(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
  *a3 = sub_1C5BC8324();
  *(a3 + 8) = v4 & 1;
  *(a3 + 16) = sub_1C5BC8C84();
  *(a3 + 24) = v5;
  type metadata accessor for NowPlayingViewModel.PlaybackPosition();
  sub_1C5937938(&qword_1EDA4A740, type metadata accessor for NowPlayingViewModel.PlaybackPosition, &protocol conformance descriptor for NowPlayingViewModel.PlaybackPosition);
  *(a3 + 32) = sub_1C5BC8C84();
  *(a3 + 40) = v6;
  *(a3 + 48) = swift_getKeyPath(byte_1C5BDE5D8);
  *(a3 + 56) = 0;
  type metadata accessor for NowPlayingViewModel.PrimaryMetadata();
  sub_1C5937938(qword_1EDA4A8C8, type metadata accessor for NowPlayingViewModel.PrimaryMetadata, &protocol conformance descriptor for NowPlayingViewModel.PrimaryMetadata);
  result = sub_1C5BC8C84();
  *(a3 + 64) = result;
  *(a3 + 72) = v8;
  return result;
}

uint64_t sub_1C5A5203C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v74 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195040, &qword_1C5BDE788);
  MEMORY[0x1EEE9AC00](v5);
  v72 = (&v58 - v6);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v71 = v7;
  v70 = v8;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1C5BCB804();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195048, &unk_1C5BDE790);
  v9 = sub_1C5BC8AB4();
  v10 = sub_1C5924F54(&qword_1EC195050, &qword_1EC195040, &qword_1C5BDE788, MEMORY[0x1E6981870]);
  v77[6] = swift_getAssociatedConformanceWitness();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1C5924F54(&qword_1EC195058, &qword_1EC195048, &unk_1C5BDE790, MEMORY[0x1E6980A18]);
  v77[4] = WitnessTable;
  v77[5] = v12;
  v13 = swift_getWitnessTable();
  *&v78 = v5;
  *(&v78 + 1) = v9;
  *&v79 = v10;
  *(&v79 + 1) = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v15 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v64 = &v58 - v16;
  v73 = v5;
  *&v78 = v5;
  *(&v78 + 1) = v9;
  v68 = v9;
  v69 = v10;
  *&v79 = v10;
  *(&v79 + 1) = v13;
  v61 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v78 = OpaqueTypeMetadata2;
  *(&v78 + 1) = MEMORY[0x1E69E6158];
  v60 = OpaqueTypeConformance2;
  *&v79 = OpaqueTypeConformance2;
  *(&v79 + 1) = MEMORY[0x1E69E6168];
  v18 = sub_1C5BCA724();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v59 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v62 = &v58 - v22;
  v23 = sub_1C5BC8F34();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v3 + 16);
  v28 = *(v3 + 48);
  v29 = *(v3 + 64);
  v80 = *(v3 + 32);
  v81 = v28;
  v82 = v29;
  v78 = *v3;
  v79 = v27;
  v83 = *v3;
  v84 = *(v3 + 8);
  LOBYTE(v3) = v84;

  if ((v3 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v30 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v83, &qword_1EC1948D8, &qword_1C5BE4FD0);
    (*(v24 + 8))(v26, v23);
  }

  if (v80)
  {
    v63 = v19;
    v65 = v18;
    v66 = v15;
    v67 = OpaqueTypeMetadata2;

    sub_1C5A4FC2C(v31, v77);

    v32 = v77[0];
    v34 = v77[1];
    v33 = v77[2];
    v35 = v77[3];
    if (qword_1EC1906E8 != -1)
    {
      swift_once();
    }

    v36 = unk_1EC194EA0;
    v37 = qword_1EC194EA8;
    v38 = sub_1C5BC9144();
    v39 = v72;
    *v72 = v38;
    *(v39 + 8) = v37;
    *(v39 + 16) = 0;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195060, &qword_1C5BDE7A0) + 44);
    v41 = v71;
    v42 = v70;
    v43 = sub_1C5A528E0(v32, v34, v33, v35, &v78, v36, v39 + v40);
    MEMORY[0x1EEE9AC00](v43);
    *(&v58 - 8) = v42;
    *(&v58 - 7) = v41;
    *(&v58 - 6) = &v78;
    *(&v58 - 5) = v32;
    *(&v58 - 4) = v34;
    *(&v58 - 3) = v33;
    v57 = v35;
    swift_checkMetadataState();
    v44 = v64;
    sub_1C5BC9DD4();

    sub_1C5924EF4(v39, &qword_1EC195040, &qword_1C5BDE788);
    v45 = v82;
    if (v82)
    {
      swift_beginAccess();
      v46 = *(v45 + 40);
      v75 = *(v45 + 32);
      v76 = v46;
      v47 = v59;
      v48 = v67;
      sub_1C5BCA1C4();
      (*(v66 + 8))(v44, v48);
      v49 = v65;
      v50 = swift_getWitnessTable();
      v51 = v62;
      sub_1C593EDC0(v47, v49, v50);
      v52 = *(v63 + 8);
      v52(v47, v49);
      sub_1C593EDC0(v51, v49, v50);
      return (v52)(v51, v49);
    }

    type metadata accessor for NowPlayingViewModel.PrimaryMetadata();
    v54 = qword_1EDA4A8C8;
    v55 = type metadata accessor for NowPlayingViewModel.PrimaryMetadata;
    v56 = &protocol conformance descriptor for NowPlayingViewModel.PrimaryMetadata;
  }

  else
  {
    type metadata accessor for NowPlayingViewModel.PlaybackPosition();
    v54 = &qword_1EDA4A740;
    v55 = type metadata accessor for NowPlayingViewModel.PlaybackPosition;
    v56 = &protocol conformance descriptor for NowPlayingViewModel.PlaybackPosition;
  }

  sub_1C5937938(v54, v55, v56);
  result = sub_1C5BC8C74();
  __break(1u);
  return result;
}

uint64_t sub_1C5A528E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v132 = a7;
  v135 = a4;
  v134 = a3;
  v143 = a1;
  v150 = a8;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196170, &qword_1C5BDA000);
  MEMORY[0x1EEE9AC00](v130);
  v131 = &v126[-v10];
  v11 = sub_1C5BCAE14();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v126[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195068, &qword_1C5BDE7F0);
  MEMORY[0x1EEE9AC00](v137);
  v138 = &v126[-v14];
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195070, &qword_1C5BDE7F8);
  v147 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v139 = &v126[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195078, &qword_1C5BDE800);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v149 = &v126[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v126[-v19];
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195080, &qword_1C5BDE808);
  MEMORY[0x1EEE9AC00](v136);
  v151 = &v126[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v126[-v23];
  v25 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v126[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v126[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v146 = sub_1C5BC8F34();
  v145 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v144 = &v126[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v142 = a2;
  v141 = v27;
  v140 = v30;
  if (a2)
  {
    v165 = *(a5 + 8);
    v32 = *a5;
    v164 = *a5;
    if (v165 == 1)
    {
      v154 = v32;

      sub_1C59400B0(&v164, &v156, &qword_1EC1948D8, &qword_1C5BE4FD0);
    }

    else
    {

      sub_1C59400B0(&v164, &v156, &qword_1EC1948D8, &qword_1C5BE4FD0);
      sub_1C5BCB4E4();
      v33 = sub_1C5BC9844();
      sub_1C5BC7C54();

      v34 = v144;
      sub_1C5BC8F24();
      swift_getAtKeyPath();
      a2 = v142;
      sub_1C5924EF4(&v164, &qword_1EC1948D8, &qword_1C5BE4FD0);
      (*(v145 + 8))(v34, v146);
    }

    v35 = v154;
    swift_getKeyPath("\b \\&");
    v156 = v35;
    sub_1C5937938(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
    sub_1C5BC7B74();

    v36 = *(v35 + 56);

    v37 = v143;
    v38 = a2;
    if (v36 != 1)
    {
      goto LABEL_10;
    }
  }

  sub_1C5BCADC4();
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v39 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  v37 = sub_1C5BCAE94();
LABEL_10:
  v133 = v13;
  v152 = v20;
  v156 = v37;
  v157 = v38;
  v128 = sub_1C594A23C();
  v40 = sub_1C5BC9CA4();
  v42 = v41;
  v44 = v43;
  v45 = sub_1C5BC9C14();
  v47 = v46;
  v153 = v24;
  v49 = v48;
  v51 = v50;
  sub_1C5953BD8(v40, v42, v44 & 1);

  v156 = v45;
  v157 = v47;
  v52 = v49 & 1;
  v53 = v153;
  LOBYTE(v158) = v52;
  v159 = v51;
  v129 = objc_opt_self();
  v54 = [v129 mainBundle];
  v55 = sub_1C5949F2C();
  v57 = v56;

  v154 = v55;
  v155 = v57;
  MEMORY[0x1C694F170](46, 0xE100000000000000);
  MEMORY[0x1C694F170](0xD00000000000001FLL, 0x80000001C5BF8900);
  sub_1C5BCA164();
  sub_1C5953BD8(v45, v47, v52);

  v163 = *(a5 + 56);
  v58 = a5[6];
  v162 = v58;
  if (v163 == 1)
  {
    v59 = v58;
  }

  else
  {
    sub_1C59400B0(&v162, &v156, &qword_1EC1929E0, &qword_1C5BDE810);
    sub_1C5BCB4E4();
    v60 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v61 = v144;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v162, &qword_1EC1929E0, &qword_1C5BDE810);
    (*(v145 + 8))(v61, v146);
    v59 = v154;
  }

  v62 = v152;
  if (v59 == 2)
  {
    v161 = *(a5 + 8);
    v63 = *a5;
    v160 = v63;
    v64 = v161;

    v65 = v63;
    v127 = v64;
    if ((v64 & 1) == 0)
    {
      sub_1C5BCB4E4();
      v66 = sub_1C5BC9844();
      sub_1C5BC7C54();

      v67 = v144;
      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(&v160, &qword_1EC1948D8, &qword_1C5BE4FD0);
      (*(v145 + 8))(v67, v146);
      v65 = v156;
    }

    swift_getKeyPath("( \\&");
    v156 = v65;
    sub_1C5937938(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
    sub_1C5BC7B74();

    v68 = v65[3];
    v69 = v65[4];
    v71 = v65[5];
    v70 = v65[6];
    sub_1C596F94C(v68, v69, v71, v70, v72);

    if (v70)
    {
      sub_1C596F908(v68, v69, v71, v70);
      _s13TrackSectionsCMa(0);
      v73 = sub_1C5BC8324();
      v74 = v138;
      *v138 = v73;
      *(v74 + 8) = v75 & 1;
      swift_storeEnumTagMultiPayload();
      sub_1C5A47F0C();
      sub_1C5A59ABC();
      v76 = v139;
      sub_1C5BC92C4();
      v77 = 0;
LABEL_34:
      v120 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC195090, &qword_1C5BDE820);
      (*(*(v120 - 8) + 56))(v76, v77, 1, v120);
      sub_1C59E7D34(v76, v62, &qword_1EC195070, &qword_1C5BDE7F8);
      v78 = 0;
      v53 = v153;
      goto LABEL_35;
    }

    v79 = v142;
    if (!v142)
    {
      goto LABEL_23;
    }

    v80 = v127;
    if ((v127 & 1) == 0)
    {
      sub_1C5BCB4E4();
      v81 = sub_1C5BC9844();
      sub_1C5BC7C54();

      v82 = v144;
      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(&v160, &qword_1EC1948D8, &qword_1C5BE4FD0);
      (*(v145 + 8))(v82, v146);
    }

    v156 = v143;
    v157 = v79;
    v158 = v134;
    v159 = v135;
    v83 = sub_1C5A53B44(&v156);
    v85 = v84;

    if (v85)
    {
LABEL_23:
      v77 = 1;
      v76 = v139;
      goto LABEL_34;
    }

    sub_1C5BCAE04();
    sub_1C5BCADF4();
    if (__OFADD__(v83, 1))
    {
      __break(1u);
    }

    else
    {
      v156 = v83 + 1;
      sub_1C5BCADD4();
      sub_1C5BCADF4();

      if ((v80 & 1) == 0)
      {
        sub_1C5BCB4E4();
        v86 = sub_1C5BC9844();
        sub_1C5BC7C54();

        v87 = v144;
        sub_1C5BC8F24();
        swift_getAtKeyPath();
        sub_1C5924EF4(&v160, &qword_1EC1948D8, &qword_1C5BE4FD0);
        (*(v145 + 8))(v87, v146);
        v63 = v156;
      }

      swift_getKeyPath("H \\&");
      v156 = v63;
      sub_1C5BC7B74();

      v88 = v63[2];

      if (!(v88 >> 62))
      {
        v89 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_29:
        v90 = v130;

        v156 = v89;
        sub_1C5BCADD4();
        sub_1C5BCADF4();
        sub_1C5BCAE24();
        if (qword_1EDA4E5D0 != -1)
        {
          swift_once();
        }

        v91 = qword_1EDA5DD00;
        sub_1C5BC7B14();
        v156 = sub_1C5BCAE94();
        v157 = v92;
        v93 = sub_1C5BC9CA4();
        v95 = v94;
        v97 = v96;
        if (qword_1EC190670 != -1)
        {
          swift_once();
        }

        v98 = qword_1EC1A6AB8;
        v99 = *(v90 + 36);
        v100 = *MEMORY[0x1E6981DB8];
        v101 = sub_1C5BCAB54();
        v102 = v131;
        (*(*(v101 - 8) + 104))(v131 + v99, v100, v101);
        *v102 = v98;
        sub_1C5924F54(&qword_1EC192920, &unk_1EC196170, &qword_1C5BDA000, MEMORY[0x1E697FAF0]);

        v103 = sub_1C5BC9BC4();
        v105 = v104;
        v107 = v106;
        sub_1C5953BD8(v93, v95, v97 & 1);

        sub_1C5924EF4(v102, &unk_1EC196170, &qword_1C5BDA000);
        v108 = sub_1C5BC9C14();
        v110 = v109;
        v112 = v111;
        v114 = v113;
        sub_1C5953BD8(v103, v105, v107 & 1);

        v156 = v108;
        v157 = v110;
        LOBYTE(v103) = v112 & 1;
        LOBYTE(v158) = v112 & 1;
        v159 = v114;
        v115 = [v129 mainBundle];
        v116 = sub_1C5949F2C();
        v118 = v117;

        v154 = v116;
        v155 = v118;
        MEMORY[0x1C694F170](46, 0xE100000000000000);
        MEMORY[0x1C694F170](0xD000000000000022, 0x80000001C5BF8920);
        v119 = v151;
        sub_1C5BCA164();
        sub_1C5953BD8(v108, v110, v103);

        sub_1C59400B0(v119, v138, &qword_1EC195080, &qword_1C5BDE808);
        swift_storeEnumTagMultiPayload();
        sub_1C5A47F0C();
        sub_1C5A59ABC();
        v76 = v139;
        sub_1C5BC92C4();
        sub_1C5924EF4(v119, &qword_1EC195080, &qword_1C5BDE808);
        v77 = 0;
        v62 = v152;
        goto LABEL_34;
      }
    }

    v89 = sub_1C5BCB984();
    goto LABEL_29;
  }

  v78 = 1;
LABEL_35:
  (*(v147 + 56))(v62, v78, 1, v148);
  v121 = v151;
  sub_1C59400B0(v53, v151, &qword_1EC195080, &qword_1C5BDE808);
  v122 = v149;
  sub_1C59400B0(v62, v149, &qword_1EC195078, &qword_1C5BDE800);
  v123 = v150;
  sub_1C59400B0(v121, v150, &qword_1EC195080, &qword_1C5BDE808);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195088, &qword_1C5BDE818);
  sub_1C59400B0(v122, v123 + *(v124 + 48), &qword_1EC195078, &qword_1C5BDE800);
  sub_1C5924EF4(v62, &qword_1EC195078, &qword_1C5BDE800);
  sub_1C5924EF4(v53, &qword_1EC195080, &qword_1C5BDE808);
  sub_1C5924EF4(v122, &qword_1EC195078, &qword_1C5BDE800);
  return sub_1C5924EF4(v121, &qword_1EC195080, &qword_1C5BDE808);
}

unint64_t sub_1C5A53B44(double *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = a1[2];
  v5 = a1[3];
  swift_getKeyPath("H \\&");
  sub_1C5937938(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
  sub_1C5BC7B74();

  v6 = *(v1 + 16);
  if (v6 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C5BCB984())
  {

    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1C694FD20](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v11 = *(v9 + 32);
      v10 = *(v9 + 40);
      if (*(v9 + 16) == v2 && *(v9 + 24) == v3)
      {
      }

      else
      {
        v13 = sub_1C5BCBDE4();

        if ((v13 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      if (v11 == v4 && v10 == v5)
      {
        goto LABEL_22;
      }

LABEL_19:
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (++v8 == i)
      {
        v8 = 0;
LABEL_22:

        return v8;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  return 0;
}

uint64_t sub_1C5A53D1C@<X0>(uint64_t a1@<X0>, ValueMetadata *a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v44 = a4;
  v45 = a5;
  v42 = a2;
  v43 = a3;
  v46 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v36 = AssociatedConformanceWitness;
  v37 = AssociatedTypeWitness;
  v39 = swift_getAssociatedTypeWitness();
  v35 = sub_1C5BCB804();
  v41 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v33 - v13;
  v14 = sub_1C5950C90();
  v50 = &type metadata for NowPlayingLookupID;
  v51 = AssociatedTypeWitness;
  v52 = v14;
  v53 = AssociatedConformanceWitness;
  v15 = type metadata accessor for ViewProvider(0, &v50);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195048, &unk_1C5BDE790);
  v19 = sub_1C5BC8AB4();
  v40 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v38 = &v33 - v23;
  sub_1C59498C4(*(a1 + 16), *(a1 + 24), a6, *(a7 + 8));
  v24 = *(a7 + 384);
  swift_unknownObjectRetain();
  v24(a6, a7);
  swift_unknownObjectRelease();
  v50 = 0xD000000000000015;
  v51 = 0x80000001C5BF88E0;
  v25 = v34;
  sub_1C595BC70();

  (*(v16 + 8))(v18, v15);
  swift_getKeyPath(byte_1C5BDE7A8);
  v50 = v42;
  v51 = v43;
  v52 = v44;
  v53 = v45;
  v49 = swift_getAssociatedConformanceWitness();
  v26 = v35;
  WitnessTable = swift_getWitnessTable();
  sub_1C5BC9DF4();

  (*(v41 + 8))(v25, v26);
  v28 = sub_1C5924F54(&qword_1EC195058, &qword_1EC195048, &unk_1C5BDE790, MEMORY[0x1E6980A18]);
  v47 = WitnessTable;
  v48 = v28;
  v29 = swift_getWitnessTable();
  v30 = v38;
  sub_1C593EDC0(v21, v19, v29);
  v31 = *(v40 + 8);
  v31(v21, v19);
  sub_1C593EDC0(v30, v19, v29);
  return (v31)(v30, v19);
}

void *MCUINamespace<A>.nowPlayingDisplayedTrackSection.getter()
{
  sub_1C5A541E8();

  return sub_1C5BC8F44();
}

unint64_t sub_1C5A541E8()
{
  result = qword_1EC194ED0;
  if (!qword_1EC194ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194ED0);
  }

  return result;
}

double sub_1C5A5423C@<D0>(_OWORD *a1@<X8>)
{
  sub_1C5A541E8();
  sub_1C5BC8F44();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C5A5428C(uint64_t *a1)
{
  sub_1C5A541E8();

  return sub_1C5BC8F54();
}

uint64_t sub_1C5A54344(uint64_t a1)
{
  sub_1C5BC9924();
  v1 = sub_1C5BC9934();

  result = sub_1C5BC9924();
  qword_1EC194E98 = v1;
  unk_1EC194EA0 = result;
  qword_1EC194EA8 = 0x4014000000000000;
  return result;
}

uint64_t sub_1C5A54390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192838, &qword_1C5BD5C80);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v71 - v3;
  v100 = sub_1C5BC8B34();
  v96 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v95 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195118, &qword_1C5BDE990);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  _s19TrackSectionsPickerV8RowLabelVMa(255, v5, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194A78, &unk_1C5BDE530);
  sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1C5924F54(&qword_1EDA462C8, &qword_1EC194A78, &unk_1C5BDE530, MEMORY[0x1E697FD58]);
  v114 = WitnessTable;
  v115 = v9;
  swift_getWitnessTable();
  sub_1C5BCA6F4();
  v10 = sub_1C5BC8AB4();
  swift_getAssociatedTypeWitness();
  v93 = v6;
  v94 = v5;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1C5BCB804();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195048, &unk_1C5BDE790);
  v11 = sub_1C5BC8AB4();
  v112 = swift_getWitnessTable();
  v113 = MEMORY[0x1E697EBF8];
  v12 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = swift_getWitnessTable();
  v14 = sub_1C5924F54(&qword_1EC195058, &qword_1EC195048, &unk_1C5BDE790, MEMORY[0x1E6980A18]);
  v109 = v13;
  v110 = v14;
  v15 = swift_getWitnessTable();
  *&v104 = v10;
  *(&v104 + 1) = v11;
  *&v105 = v12;
  *(&v105 + 1) = v15;
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC97C4();
  v16 = sub_1C5BC8AB4();
  *&v104 = v10;
  *(&v104 + 1) = v11;
  *&v105 = v12;
  *(&v105 + 1) = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = sub_1C5937938(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v107 = OpaqueTypeConformance2;
  v108 = v18;
  v19 = swift_getWitnessTable();
  v20 = sub_1C5A498DC();
  *&v104 = v16;
  *(&v104 + 1) = &type metadata for NowPlayingTrackSection;
  *&v105 = v19;
  *(&v105 + 1) = v20;
  v21 = sub_1C5BCA724();
  v22 = sub_1C5A59D08();
  *&v104 = v99;
  *(&v104 + 1) = &type metadata for NowPlayingTrackSection;
  *&v105 = v21;
  *(&v105 + 1) = v22;
  v88 = v22;
  v92 = v20;
  v106 = v20;
  v23 = sub_1C5BCA8C4();
  v91 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v87 = &v71 - v24;
  v89 = v21;
  v85 = swift_getWitnessTable();
  v103 = v85;
  v25 = swift_getWitnessTable();
  v26 = sub_1C5937938(&qword_1EC192338, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v27 = v100;
  *&v104 = v23;
  *(&v104 + 1) = v100;
  *&v105 = v25;
  *(&v105 + 1) = v26;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v78 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v90 = &v71 - v29;
  *&v104 = v23;
  *(&v104 + 1) = v27;
  v86 = v25;
  *&v105 = v25;
  *(&v105 + 1) = v26;
  v84 = v26;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838, &qword_1C5BD5C80, MEMORY[0x1E69E6ED8]);
  v79 = OpaqueTypeMetadata2;
  *&v104 = OpaqueTypeMetadata2;
  *(&v104 + 1) = v98;
  v75 = v30;
  *&v105 = v30;
  *(&v105 + 1) = v31;
  v74 = v31;
  v77 = swift_getOpaqueTypeMetadata2();
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v72 = &v71 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v73 = &v71 - v34;
  v35 = sub_1C5BC8F34();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v71 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = *(v83 + 8);
  v39 = v83;
  v40 = *v83;
  v118 = *v83;
  v41 = v119;

  if ((v41 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v42 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v118, &qword_1EC1948D8, &qword_1C5BE4FD0);
    (*(v36 + 8))(v38, v35);
  }

  if (v39[4])
  {

    sub_1C5A4FC2C(v43, &v104);
    if (*(&v104 + 1))
    {
      v101[0] = v104;
      v101[1] = v105;

      v82 = sub_1C5A53B44(v101);
      v81 = v44;

      swift_bridgeObjectRelease_n();
    }

    else
    {

      v82 = 0;
      v81 = 1;
    }

    if ((v41 & 1) == 0)
    {
      sub_1C5BCB4E4();
      v45 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(&v118, &qword_1EC1948D8, &qword_1C5BE4FD0);
      (*(v36 + 8))(v38, v35);
      v40 = v104;
    }

    swift_getKeyPath("H \\&");
    *&v104 = v40;
    sub_1C5937938(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
    sub_1C5BC7B74();

    v46 = *(v40 + 16);

    v102 = v46;
    swift_getKeyPath(asc_1C5BDE9A0);
    v116 = v39[2];
    v117 = *(v39 + 24);
    v101[0] = *(v39 + 3);
    v47 = swift_allocObject();
    v48 = v94;
    v49 = v93;
    *(v47 + 16) = v94;
    *(v47 + 24) = v49;
    v50 = *(v39 + 1);
    *(v47 + 32) = *v39;
    *(v47 + 48) = v50;
    v51 = *(v39 + 3);
    *(v47 + 64) = *(v39 + 2);
    *(v47 + 80) = v51;
    *(v47 + 96) = v82;
    *(v47 + 104) = v81 & 1;
    v52 = swift_allocObject();
    v52[2] = v48;
    v52[3] = v49;
    v52[4] = sub_1C5A59DB8;
    v52[5] = v47;
    sub_1C59400B0(&v118, &v104, &qword_1EC1948D8, &qword_1C5BE4FD0);

    sub_1C59400B0(&v116, &v104, &qword_1EC1948E0, &unk_1C5BDCCC0);
    v53 = sub_1C5BC8C94();
    (*(*(v53 - 8) + 16))(&v104, v101, v53);
    v54 = v87;
    sub_1C5BCA8A4();
    v55 = v95;
    sub_1C5BC8B24();
    v56 = v90;
    v57 = v100;
    sub_1C5BC9DA4();
    (*(v96 + 8))(v55, v57);
    (*(v91 + 8))(v54, v23);
    v58 = *MEMORY[0x1E697E728];
    v59 = sub_1C5BC89B4();
    v60 = v97;
    (*(*(v59 - 8) + 104))(v97, v58, v59);
    sub_1C5937938(&qword_1EDA46688, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
    if (sub_1C5BCADB4())
    {
      v61 = v72;
      v62 = v79;
      v63 = v98;
      v64 = v75;
      v65 = v74;
      sub_1C5BC9F54();
      sub_1C5924EF4(v60, &qword_1EC192838, &qword_1C5BD5C80);
      (*(v78 + 8))(v56, v62);
      *&v104 = v62;
      *(&v104 + 1) = v63;
      *&v105 = v64;
      *(&v105 + 1) = v65;
      v66 = swift_getOpaqueTypeConformance2();
      v67 = v73;
      v68 = v77;
      sub_1C593EDC0(v61, v77, v66);
      v69 = *(v76 + 8);
      v69(v61, v68);
      sub_1C593EDC0(v67, v68, v66);
      return (v69)(v67, v68);
    }

    __break(1u);
  }

  type metadata accessor for NowPlayingViewModel.PlaybackPosition();
  sub_1C5937938(&qword_1EDA4A740, type metadata accessor for NowPlayingViewModel.PlaybackPosition, &protocol conformance descriptor for NowPlayingViewModel.PlaybackPosition);
  result = sub_1C5BC8C74();
  __break(1u);
  return result;
}

uint64_t sub_1C5A552AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v94 = a5;
  v92 = a1;
  v93 = a4;
  v87 = a2;
  v95 = a8;
  _s19TrackSectionsPickerV8RowLabelVMa(255, a6, a7, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194A78, &unk_1C5BDE530);
  v11 = sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  v114 = sub_1C5924F54(&qword_1EDA462C8, &qword_1EC194A78, &unk_1C5BDE530, MEMORY[0x1E697FD58]);
  v89 = v11;
  v88 = swift_getWitnessTable();
  v12 = sub_1C5BCA6F4();
  v90 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v85 = &v64 - v13;
  v78 = v12;
  v14 = sub_1C5BC8AB4();
  v91 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v84 = &v64 - v15;
  v68 = a6;
  v69 = a7;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1C5BCB804();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195048, &unk_1C5BDE790);
  v16 = sub_1C5BC8AB4();
  v74 = swift_getWitnessTable();
  v111 = v74;
  v112 = MEMORY[0x1E697EBF8];
  v17 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = swift_getWitnessTable();
  v19 = sub_1C5924F54(&qword_1EC195058, &qword_1EC195048, &unk_1C5BDE790, MEMORY[0x1E6980A18]);
  v108 = v18;
  v109 = v19;
  v20 = swift_getWitnessTable();
  v65 = v14;
  v66 = v20;
  v105 = v14;
  v106 = v16;
  v21 = v16;
  v22 = v17;
  v67 = v17;
  *&v107 = v17;
  *(&v107 + 1) = v20;
  v23 = v20;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v25 = *(OpaqueTypeMetadata2 - 8);
  v82 = OpaqueTypeMetadata2;
  v83 = v25;
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v70 = &v64 - v26;
  sub_1C5BC97C4();
  v27 = sub_1C5BC8AB4();
  v86 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v79 = &v64 - v28;
  v105 = v14;
  v106 = v21;
  *&v107 = v22;
  *(&v107 + 1) = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v72 = OpaqueTypeConformance2;
  v30 = sub_1C5937938(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v103 = OpaqueTypeConformance2;
  v104 = v30;
  v77 = v27;
  v31 = swift_getWitnessTable();
  v76 = v31;
  v75 = sub_1C5A498DC();
  v105 = v27;
  v106 = &type metadata for NowPlayingTrackSection;
  *&v107 = v31;
  *(&v107 + 1) = v75;
  v32 = sub_1C5BCA724();
  v33 = *(v32 - 8);
  v80 = v32;
  v81 = v33;
  MEMORY[0x1EEE9AC00](v32);
  v71 = &v64 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v73 = &v64 - v36;
  v119 = *a3;
  v120 = *(a3 + 8);
  v117 = a3[2];
  v118 = *(a3 + 24);
  v37 = *(a3 + 2);
  v115 = *(a3 + 3);
  v116 = v37;
  v38 = swift_allocObject();
  v40 = v68;
  v39 = v69;
  *(v38 + 16) = v68;
  *(v38 + 24) = v39;
  v41 = *(a3 + 1);
  *(v38 + 32) = *a3;
  *(v38 + 48) = v41;
  v42 = *(a3 + 3);
  *(v38 + 64) = *(a3 + 2);
  *(v38 + 80) = v42;
  v43 = v87;
  *(v38 + 96) = v87;
  v100 = v40;
  v101 = v39;
  v102 = v43;

  sub_1C59400B0(&v119, &v105, &qword_1EC1948D8, &qword_1C5BE4FD0);
  sub_1C59400B0(&v117, &v105, &qword_1EC1948E0, &unk_1C5BDCCC0);
  sub_1C59400B0(&v116, &v105, &qword_1EC1948E8, &unk_1C5BDE9D0);
  v44 = sub_1C5BC8C94();
  (*(*(v44 - 8) + 16))(&v105, &v115, v44);
  v45 = v85;
  sub_1C5BCA6E4();
  sub_1C5BCAA54();
  v46 = v78;
  v47 = v84;
  sub_1C5BCA244();
  (*(v90 + 8))(v45, v46);
  v96 = v40;
  v97 = v39;
  v98 = a3;
  v99 = v43;
  swift_checkMetadataState();
  v48 = v70;
  v49 = v65;
  sub_1C5BC9DD4();
  (*(v91 + 8))(v47, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1943F8, &unk_1C5BDB380);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C5BCFF00;
  v105 = 0;
  v106 = 0xE000000000000000;
  sub_1C5BCBA94();

  v105 = 0xD000000000000011;
  v106 = 0x80000001C5BF8950;
  if (v94 & 1 | (v92 != v93))
  {
    v51 = 0x65736C6166;
  }

  else
  {
    v51 = 1702195828;
  }

  if (v94 & 1 | (v92 != v93))
  {
    v52 = 0xE500000000000000;
  }

  else
  {
    v52 = 0xE400000000000000;
  }

  MEMORY[0x1C694F170](v51, v52);

  v53 = v106;
  *(inited + 32) = v105;
  *(inited + 40) = v53;
  v54 = v79;
  v55 = v82;
  sub_1C5949C94(0xD000000000000012, 0x80000001C5BF8970, inited, v82);
  swift_setDeallocating();
  sub_1C5A4EF10(inited + 32);
  (*(v83 + 8))(v48, v55);
  v56 = *(v43 + 24);
  v105 = *(v43 + 16);
  v106 = v56;
  v107 = *(v43 + 32);

  v57 = v71;
  v58 = v77;
  sub_1C5BCA1C4();

  (*(v86 + 8))(v54, v58);
  v59 = v80;
  v60 = swift_getWitnessTable();
  v61 = v73;
  sub_1C593EDC0(v57, v59, v60);
  v62 = *(v81 + 8);
  v62(v57, v59);
  sub_1C593EDC0(v61, v59, v60);
  return (v62)(v61, v59);
}

void sub_1C5A55CE4(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1C5BC8F34();
  v34 = *(v8 - 8);
  v35 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[6];
  v11 = a1[7];
  v12 = a4[1];
  sub_1C59498C4(v10, v11, a3, v12);
  v13 = *(a2 + 32);
  v14 = a4[33];
  swift_unknownObjectRetain();
  v14(a3, a4, v13);
  swift_unknownObjectRelease();
  sub_1C59498C4(v10, v11, a3, v12);
  v15 = a4[29];
  swift_unknownObjectRetain();
  v15(a3, a4);
  swift_unknownObjectRelease();
  v40 = *(a1 + 24);
  v16 = a1[2];
  v39 = v16;
  v17 = v40;

  if ((v17 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v18 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v19 = v33;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v39, &qword_1EC1948E0, &unk_1C5BDCCC0);
    (*(v34 + 8))(v19, v35);
    v16 = v37;
  }

  swift_getKeyPath(byte_1C5BDE9E0);
  v37 = v16;
  sub_1C5937938(&qword_1EDA4AE80, _s13HostedContentCMa, &unk_1C5BDBA8C);
  sub_1C5BC7B74();

  v21 = *(v16 + 40);
  v20 = *(v16 + 48);

  if (!v20)
  {

LABEL_9:
    v38 = *(a1 + 8);
    v23 = *a1;
    v37 = v23;
    v24 = v38;

    v25 = v23;
    if ((v24 & 1) == 0)
    {
      sub_1C5BCB4E4();
      v26 = sub_1C5BC9844();
      sub_1C5BC7C54();

      v27 = v33;
      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(&v37, &qword_1EC1948D8, &qword_1C5BE4FD0);
      (*(v34 + 8))(v27, v35);
      v25 = v36;
    }

    swift_getKeyPath("\b \\&");
    v36 = v25;
    sub_1C5937938(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
    sub_1C5BC7B74();

    v28 = *(v25 + 56);

    if (v28 == 1)
    {

      if ((v24 & 1) == 0)
      {
        sub_1C5BCB4E4();
        v29 = sub_1C5BC9844();
        sub_1C5BC7C54();

        v30 = v33;
        sub_1C5BC8F24();
        swift_getAtKeyPath();
        sub_1C5924EF4(&v37, &qword_1EC1948D8, &qword_1C5BE4FD0);
        (*(v34 + 8))(v30, v35);
        v23 = v36;
      }

      if (*(v23 + 56))
      {
        KeyPath = swift_getKeyPath("\b \\&");
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v32 - 2) = v23;
        *(&v32 - 8) = 0;
        v36 = v23;
        sub_1C5BC7B64();
      }

      else
      {
        *(v23 + 56) = 0;
      }
    }

    return;
  }

  if (v21 == 0x6575657571 && v20 == 0xE500000000000000)
  {

    return;
  }

  v22 = sub_1C5BCBDE4();

  if ((v22 & 1) == 0)
  {
    goto LABEL_9;
  }
}

uint64_t sub_1C5A56270(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1C5A56508(v5, v19);
  v22 = *&v19[8];
  v27 = *v19;
  v28 = *&v19[16];
  v25 = *(&v20 + 1);
  v26 = v21;
  v23 = *&v19[24];
  v24 = v20;
  v29 = v20;
  LOBYTE(v30) = v21;
  _s19TrackSectionsPickerV8RowLabelVMa(0, a2, a3, v6);
  swift_getWitnessTable();
  sub_1C594E11C();
  sub_1C5BC9E84();

  sub_1C5924EF4(&v22, &qword_1EC1948E8, &unk_1C5BDE9D0);
  sub_1C5924EF4(&v23, &qword_1EC194400, &unk_1C5BE94E0);
  sub_1C5924EF4(&v25, &qword_1EC1948D8, &qword_1C5BE4FD0);
  v11 = v31;
  v12 = v32;
  v13 = v33;
  v14 = v34;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194A78, &unk_1C5BDE530);
  v7 = sub_1C5BC8AB4();
  sub_1C5924F54(&qword_1EDA462C8, &qword_1EC194A78, &unk_1C5BDE530, MEMORY[0x1E697FD58]);
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(&v11, v7, WitnessTable);
  v27 = v11;
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v9 = *(*(v7 - 8) + 8);
  v9(&v27, v7);
  v11 = v15;
  v12 = v16;
  v13 = v17;
  v14 = v18;
  sub_1C593EDC0(&v11, v7, WitnessTable);
  v31 = v11;
  v32 = v12;
  v33 = v13;
  v34 = v14;
  return (v9)(&v31, v7);
}

uint64_t sub_1C5A56508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for NowPlayingViewModel.PlaybackPosition();
  sub_1C5937938(&qword_1EDA4A740, type metadata accessor for NowPlayingViewModel.PlaybackPosition, &protocol conformance descriptor for NowPlayingViewModel.PlaybackPosition);
  v4 = sub_1C5BC8C84();
  v6 = v5;
  _s12PresentationCMa(0);
  sub_1C5937938(&qword_1EDA4AF70, _s12PresentationCMa, &unk_1C5BD2B30);
  v7 = sub_1C5BC8324();
  v9 = v8;
  _s13TrackSectionsCMa(0);
  sub_1C5937938(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
  result = sub_1C5BC8324();
  *a2 = a1;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v9 & 1;
  *(a2 + 40) = result;
  *(a2 + 48) = v11 & 1;
  return result;
}

uint64_t sub_1C5A5665C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a2;
  v41 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedConformanceWitness;
  v35 = AssociatedTypeWitness;
  v37 = swift_getAssociatedTypeWitness();
  v33 = sub_1C5BCB804();
  v40 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v31 - v10;
  v11 = sub_1C5950C90();
  v45 = &type metadata for NowPlayingLookupID;
  v46 = AssociatedTypeWitness;
  *&v47 = v11;
  *(&v47 + 1) = AssociatedConformanceWitness;
  v12 = type metadata accessor for ViewProvider(0, &v45);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195048, &unk_1C5BDE790);
  v16 = sub_1C5BC8AB4();
  v38 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v36 = &v31 - v20;
  sub_1C59498C4(*(a1 + 48), *(a1 + 56), a3, *(a4 + 8));
  v21 = *(a4 + 384);
  swift_unknownObjectRetain();
  v21(a3, a4);
  swift_unknownObjectRelease();
  v45 = 0xD000000000000015;
  v46 = 0x80000001C5BF88E0;
  v22 = v32;
  sub_1C595BC70();

  (*(v13 + 8))(v15, v12);
  swift_getKeyPath(byte_1C5BDE7A8);
  v23 = *(v39 + 24);
  v45 = *(v39 + 16);
  v46 = v23;
  v47 = *(v39 + 32);
  v44 = swift_getAssociatedConformanceWitness();

  v24 = v33;
  WitnessTable = swift_getWitnessTable();
  sub_1C5BC9DF4();

  (*(v40 + 8))(v22, v24);
  v26 = sub_1C5924F54(&qword_1EC195058, &qword_1EC195048, &unk_1C5BDE790, MEMORY[0x1E6980A18]);
  v42 = WitnessTable;
  v43 = v26;
  v27 = swift_getWitnessTable();
  v28 = v36;
  sub_1C593EDC0(v18, v16, v27);
  v29 = *(v38 + 8);
  v29(v18, v16);
  sub_1C593EDC0(v28, v16, v27);
  return (v29)(v28, v16);
}

uint64_t sub_1C5A56AEC()
{
  v1 = v0;
  v2 = sub_1C5BC8F34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v0 + 32);
  v6 = *(v0 + 24);
  v20 = v6;
  v7 = v21;

  if ((v7 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v8 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v20, &qword_1EC194400, &unk_1C5BE94E0);
    (*(v3 + 8))(v5, v2);
    v6 = v17;
  }

  swift_getKeyPath(byte_1C5BDEBA0);
  v17 = v6;
  sub_1C5937938(&qword_1EDA4AF70, _s12PresentationCMa, &unk_1C5BD2B30);
  sub_1C5BC7B74();

  v9 = *(v6 + 17);

  if (v9 != 1)
  {
    return 0;
  }

  v10 = *(v1 + 8);
  if (v10)
  {
    swift_beginAccess();
    result = 0;
    if (*(v10 + 72) != 2 && *(v10 + 64) != 0.0)
    {
      v19 = *(v1 + 48);
      v12 = *(v1 + 40);
      v18 = v12;
      v13 = v19;

      if ((v13 & 1) == 0)
      {
        sub_1C5BCB4E4();
        v14 = sub_1C5BC9844();
        sub_1C5BC7C54();

        sub_1C5BC8F24();
        swift_getAtKeyPath();
        sub_1C5924EF4(&v18, &qword_1EC1948D8, &qword_1C5BE4FD0);
        (*(v3 + 8))(v5, v2);
        v12 = v16;
      }

      swift_getKeyPath("\b \\&");
      v16 = v12;
      sub_1C5937938(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
      sub_1C5BC7B74();

      v15 = *(v12 + 56);

      return v15;
    }
  }

  else
  {
    type metadata accessor for NowPlayingViewModel.PlaybackPosition();
    sub_1C5937938(&qword_1EDA4A740, type metadata accessor for NowPlayingViewModel.PlaybackPosition, &protocol conformance descriptor for NowPlayingViewModel.PlaybackPosition);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5A56E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v38 = a2;
  v3 = sub_1C5BC9654();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1951B8, &qword_1C5BDEB68);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v33 - v10;
  v11 = sub_1C5BC8F34();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(v2 + 48);
  v43 = v2[5];
  v15 = v44;

  if ((v15 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v16 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v43, &qword_1EC1948D8, &qword_1C5BE4FD0);
    (*(v12 + 8))(v14, v11);
  }

  v17 = *v2;
  v18 = *(*v2 + 24);
  *&v40[0] = *(*v2 + 16);
  *(&v40[0] + 1) = v18;
  v40[1] = *(v17 + 32);

  v19 = sub_1C5A53B44(v40);
  v21 = v20;

  v22 = 1;
  if ((v21 & 1) == 0)
  {
    v23 = v33;
    sub_1C5A56AEC();
    sub_1C5BC9644();
    v40[0] = *(v2 + 1);
    v41 = v2[3];
    v42 = *(v2 + 32);
    v24 = swift_allocObject();
    v25 = *v2;
    v26 = *(v2 + 1);
    *(v24 + 16) = *(v23 + 16);
    *(v24 + 32) = v25;
    v27 = *(v2 + 2);
    *(v24 + 48) = v26;
    *(v24 + 64) = v27;
    *(v24 + 80) = *(v2 + 48);
    *(v24 + 88) = v19;
    v28 = v36;
    v29 = v37;
    (*(v36 + 16))(v35, v7, v37);
    v30 = swift_allocObject();
    *(v30 + 16) = sub_1C5A59F3C;
    *(v30 + 24) = v24;
    sub_1C59400B0(&v43, v39, &qword_1EC1948D8, &qword_1C5BE4FD0);

    sub_1C59400B0(v40, v39, &qword_1EC1948E8, &unk_1C5BDE9D0);
    sub_1C59400B0(&v41, v39, &qword_1EC194400, &unk_1C5BE94E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1951C0, &qword_1C5BDEB70);
    sub_1C5937938(&unk_1EDA461C8, MEMORY[0x1E697C998], MEMORY[0x1E697C990]);
    sub_1C5A59F54();
    v31 = v34;
    sub_1C5BC8534();
    (*(v28 + 8))(v7, v29);
    (*(v9 + 32))(v38, v31, v8);
    v22 = 0;
  }

  return (*(v9 + 56))(v38, v22, 1, v8);
}

void sub_1C5A57378(uint64_t *a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30[0] = a4;
  v30[1] = a5;
  v9 = sub_1C5BC8F34();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(a2 + 48);
  v38 = a2[5];
  v13 = v39;

  if ((v13 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v14 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v38, &qword_1EC1948D8, &qword_1C5BE4FD0);
    (*(v10 + 8))(v12, v9);
  }

  if (a2[1])
  {

    sub_1C5A4FC2C(v15, &v31);
    if (*(&v31 + 1))
    {
      v37[0] = v31;
      v37[1] = v32;

      v16 = sub_1C5A53B44(v37);
      v18 = v17;

      swift_bridgeObjectRelease_n();
      if ((v18 & 1) == 0)
      {
        v20 = *(*a2 + 16);
        v19 = *(*a2 + 24);
        v21 = *(*a2 + 48);
        v22 = *(*a2 + 56);
        *&v31 = a3;
        *(&v31 + 1) = v20;
        *&v32 = v19;
        BYTE8(v32) = v16 == a3;
        *&v33 = v21;
        *(&v33 + 1) = v22;

        sub_1C5A57674(a3, v16, a2, v34);
        v23 = v31;
        v24 = v32;
        v25 = v33;
        v26 = v34[0];
        v27 = v34[1];
        v28 = v35;
        v29 = v36 | ((v16 > a3) << 8);
LABEL_9:
        *a6 = v23;
        *(a6 + 16) = v24;
        *(a6 + 32) = v25;
        *(a6 + 48) = v26;
        *(a6 + 64) = v27;
        *(a6 + 80) = v28;
        *(a6 + 88) = v29;
        return;
      }
    }

    else
    {
    }

    v28 = 0;
    v29 = 0;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    goto LABEL_9;
  }

  type metadata accessor for NowPlayingViewModel.PlaybackPosition();
  sub_1C5937938(&qword_1EDA4A740, type metadata accessor for NowPlayingViewModel.PlaybackPosition, &protocol conformance descriptor for NowPlayingViewModel.PlaybackPosition);
  sub_1C5BC8C74();
  __break(1u);
}

uint64_t sub_1C5A57674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_1C5BC7AC4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a3;
  if (a1 != a2)
  {
    v16 = *(v13 + 72);
    v17 = *(v13 + 80);
    v18 = *(v13 + 88);
    v19 = *(v13 + 40) - *(v13 + 32);
    v32 = *(v13 + 64);
    *&v33 = v16;
    *(&v33 + 1) = v17;
    *&v34 = v18;
    *(&v34 + 1) = v19;
    v35 = 1;
    sub_1C5A5A0BC();
    sub_1C5A5A110();

LABEL_11:
    result = sub_1C5BC92C4();
    v28 = v37;
    v29 = v38;
    v30 = v39;
    *a4 = v36;
    *(a4 + 16) = v28;
    *(a4 + 32) = v29;
    *(a4 + 40) = v30;
    return result;
  }

  v14 = a3[1];
  if (v14)
  {
    v15 = *(v13 + 40);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196270, &qword_1C5BDEB90);
    sub_1C5BC8514();
    swift_beginAccess();
    if (*(v14 + 72) == 2)
    {

      (*(v10 + 8))(v12, v9);
    }

    else
    {
      v21 = *(v14 + 56);
      v20 = *(v14 + 64);
      v23 = *(v14 + 24);
      v22 = *(v14 + 32);
      sub_1C5BC7A54();
      v25 = v24;

      (*(v10 + 8))(v12, v9);
      v26 = v23 + v20 * (v25 - v21);
      if (v22 < v26)
      {
        v26 = v22;
      }

      if (v26 >= 0.0)
      {
        goto LABEL_10;
      }
    }

    v26 = 0.0;
LABEL_10:
    v32 = v15 - v26;
    sub_1C5A5A0BC();
    sub_1C5A5A110();
    v33 = 0u;
    v34 = 0u;
    v35 = 0;
    goto LABEL_11;
  }

  type metadata accessor for NowPlayingViewModel.PlaybackPosition();
  sub_1C5937938(&qword_1EDA4A740, type metadata accessor for NowPlayingViewModel.PlaybackPosition, &protocol conformance descriptor for NowPlayingViewModel.PlaybackPosition);
  result = sub_1C5BC8C74();
  __break(1u);
  return result;
}

uint64_t sub_1C5A57998@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC190700 != -1)
  {
    swift_once();
  }

  v2 = [qword_1EC194EC0 stringFromSeconds_];
  sub_1C5BCAE74();

  sub_1C594A23C();
  v3 = sub_1C5BC9CA4();
  v5 = v4;
  v7 = v6;
  v8 = sub_1C5BC9BD4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_1C5953BD8(v3, v5, v7 & 1);

  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  return result;
}

void sub_1C5A57AC0(uint64_t a1@<X8>)
{
  if (*(v1 + 32) >= 60.0)
  {
    if (!*(v1 + 8))
    {
      v22 = 0uLL;
      v24 = -1;
      v23 = 0uLL;
      goto LABEL_6;
    }

    v25 = a1;
    sub_1C594A23C();

    v12 = sub_1C5BC9CA4();
    v14 = v13;
    v16 = v15;
    v26 = *(v1 + 16);

    v17 = sub_1C5BC9CA4();
    v19 = v18;
    v21 = v20;
    sub_1C5BC9BE4();
    sub_1C5953BD8(v17, v19, v21 & 1);

    sub_1C5953BD8(v12, v14, v16 & 1);
  }

  else
  {
    v25 = a1;
    sub_1C5BC9024();
    v2 = sub_1C5BC9C94();
    v4 = v3;
    v6 = v5;
    sub_1C5BC9024();
    v7 = sub_1C5BC9C94();
    v9 = v8;
    v11 = v10;
    sub_1C5BC9BE4();
    sub_1C5953BD8(v7, v9, v11 & 1);

    sub_1C5953BD8(v2, v4, v6 & 1);
  }

  sub_1C5BC92C4();
  a1 = v25;
  v22 = v26;
  v23 = v27;
  v24 = v28;
LABEL_6:
  *a1 = v22;
  *(a1 + 16) = v23;
  *(a1 + 32) = v24;
}

uint64_t NowPlayingTrackSection.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NowPlayingTrackSection.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

MediaCoreUI::NowPlayingTrackSection __swiftcall NowPlayingTrackSection.init(title:startTime:endTime:)(Swift::String title, Swift::Double startTime, Swift::Double endTime)
{
  *v3 = title;
  *(v3 + 16) = startTime;
  *(v3 + 24) = endTime;
  result.title = title;
  result.endTime = endTime;
  result.startTime = startTime;
  return result;
}

BOOL static NowPlayingTrackSection.== infix(_:_:)(double *a1, uint64_t a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 8))
  {
    if (v3 != v5)
    {
      return 0;
    }

    return v2 == v4;
  }

  v7 = sub_1C5BCBDE4();
  result = 0;
  if ((v7 & 1) != 0 && v3 == v5)
  {
    return v2 == v4;
  }

  return result;
}

uint64_t NowPlayingTrackSection.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1C5BCAF04();
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1C69501C0](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  return MEMORY[0x1C69501C0](*&v5);
}

uint64_t NowPlayingTrackSection.hashValue.getter()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  v6 = *(v0 + 1);
  sub_1C5BCBF54();
  NowPlayingTrackSection.hash(into:)(v3);
  return sub_1C5BCBF94();
}

BOOL sub_1C5A57FC0(double *a1, uint64_t a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 8))
  {
    if (v3 != v5)
    {
      return 0;
    }

    return v2 == v4;
  }

  v7 = sub_1C5BCBDE4();
  result = 0;
  if ((v7 & 1) != 0 && v3 == v5)
  {
    return v2 == v4;
  }

  return result;
}

uint64_t sub_1C5A58044()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  v6 = *(v0 + 1);
  sub_1C5BCBF54();
  NowPlayingTrackSection.hash(into:)(v3);
  return sub_1C5BCBF94();
}

uint64_t sub_1C5A5809C(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  v7 = *(v1 + 1);
  sub_1C5BCBF54();
  NowPlayingTrackSection.hash(into:)(v4);
  return sub_1C5BCBF94();
}

uint64_t sub_1C5A580EC(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
}

uint64_t sub_1C5A58128@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath("( \\&");
  sub_1C5937938(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
  sub_1C5BC7B74();

  v4 = v3[3];
  v5 = v3[4];
  v6 = v3[5];
  v7 = v3[6];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return sub_1C596F94C(v4, v5, v6, v7, v8);
}

void sub_1C5A581DC(uint64_t *a1, __n128 a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  sub_1C596F94C(*a1, v3, v4, v5, a2);
  sub_1C596F708(v2, v3, v4, v5, v6);
}

void sub_1C5A5823C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath("\b \\&");
  sub_1C5937938(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
  sub_1C5BC7B74();

  *a2 = *(v3 + 56);
}

uint64_t sub_1C5A58314()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v4 = v0[2];
  v3 = v0[3];
  if (qword_1EC1906F8 != -1)
  {
    swift_once();
  }

  v5 = qword_1EC194EB8;
  v6 = [qword_1EC194EB8 stringFromTimeInterval_];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1C5BCAE74();
    v10 = v9;
  }

  else
  {
    v10 = 0xE100000000000000;
    v8 = 63;
  }

  v11 = [v5 stringFromTimeInterval_];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1C5BCAE74();
    v15 = v14;
  }

  else
  {
    v15 = 0xE100000000000000;
    v13 = 63;
  }

  v16 = [v5 stringFromTimeInterval_];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1C5BCAE74();
    v20 = v19;
  }

  else
  {
    v20 = 0xE100000000000000;
    v18 = 63;
  }

  sub_1C5BCBA94();
  MEMORY[0x1C694F170](0x203A656C7469743CLL, 0xE800000000000000);
  MEMORY[0x1C694F170](*&v1, v2);
  MEMORY[0x1C694F170](0x547472617473202CLL, 0xED0000203A656D69);
  sub_1C5BCB324();
  MEMORY[0x1C694F170](10272, 0xE200000000000000);
  MEMORY[0x1C694F170](v8, v10);

  MEMORY[0x1C694F170](0x6954646E65202C29, 0xEC000000203A656DLL);
  sub_1C5BCB324();
  MEMORY[0x1C694F170](10272, 0xE200000000000000);
  MEMORY[0x1C694F170](v13, v15);

  MEMORY[0x1C694F170](0x7461727564202C29, 0xED0000203A6E6F69);
  sub_1C5BCB324();
  MEMORY[0x1C694F170](10272, 0xE200000000000000);
  MEMORY[0x1C694F170](v18, v20);

  MEMORY[0x1C694F170](15913, 0xE200000000000000);
  return 0;
}

void sub_1C5A585F8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (qword_1EC190700 != -1)
  {
    swift_once();
  }

  v6 = [qword_1EC194EC0 stringFromSeconds_];
  v7 = sub_1C5BCAE74();
  v9 = v8;

  if (qword_1EC190708 != -1)
  {
    swift_once();
  }

  v10 = [qword_1EC194EC8 stringFromTimeInterval_];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1C5BCAE74();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = MEMORY[0x1C6950260](0, v5 - v4);
  if (v15)
  {
    v16 = v15;
    v17 = sub_1C5BCAE74();
    v19 = v18;

    if (v14)
    {
LABEL_10:
      _s13TrackSectionsC4CellCMa(0);
      v20 = swift_allocObject();

      sub_1C5BC7BA4();
      *(v20 + 16) = v3;
      *(v20 + 24) = v2;
      *(v20 + 32) = v4;
      *(v20 + 40) = v5;
      *(v20 + 48) = v7;
      *(v20 + 56) = v9;
      *(v20 + 64) = v12;
      *(v20 + 72) = v14;
      *(v20 + 80) = v17;
      *(v20 + 88) = v19;
      goto LABEL_17;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0xE000000000000000;
    if (v14)
    {
      goto LABEL_10;
    }
  }

  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v21 = sub_1C5BC7D64();
  __swift_project_value_buffer(v21, qword_1EDA5DA78);

  v22 = sub_1C5BC7D44();
  v23 = sub_1C5BCB4D4();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v28 = v25;
    *v24 = 136315394;
    *(v24 + 4) = sub_1C592ADA8(v3, v2, &v28);
    *(v24 + 12) = 2048;
    *(v24 + 14) = v5 - v4;
    _os_log_impl(&dword_1C5922000, v22, v23, "Failed to format track section duration for section with title: \n%s and duration: %f", v24, 0x16u);
    v26 = __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x1C69510F0](v25, -1, -1, v26);
    MEMORY[0x1C69510F0](v24, -1, -1);
  }

  v20 = 0;
LABEL_17:
  *a2 = v20;
}

double sub_1C5A588EC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath("H \\&");
  sub_1C5937938(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
  sub_1C5BC7B64();

  swift_getKeyPath("H \\&");
  sub_1C5BC7B64();

  return result;
}

void sub_1C5A58A38(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v10 = a1[3];
  v11 = a1[4];
  v13 = a1[5];
  v12 = a1[6];
  if (!v12)
  {
    if (!a5)
    {
      v15 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath("( \\&", a6.n128_f64[0]);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5937938(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
    sub_1C5BC7B64();

    return;
  }

  if (!a5)
  {
    goto LABEL_6;
  }

  sub_1C59AEE34(a1[3], v11, v13 & 1);

  v14 = sub_1C5BC9C04();
  sub_1C596F908(v10, v11, v13, v12);
  if ((v14 & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = a1[3];
  v11 = a1[4];
  v13 = a1[5];
  v15 = a1[6];
LABEL_8:
  a1[3] = a2;
  a1[4] = a3;
  a1[5] = a4;
  a1[6] = a5;
  sub_1C596F94C(a2, a3, a4, a5, a6);
  sub_1C596F908(v10, v11, v13, v15);
}

uint64_t sub_1C5A58C24()
{

  v1 = OBJC_IVAR____TtCCC11MediaCoreUI19NowPlayingViewModel13TrackSections4Cell___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1C5A58CE0()
{

  sub_1C596F908(v0[3], v0[4], v0[5], v0[6]);
  v1 = OBJC_IVAR____TtCC11MediaCoreUI19NowPlayingViewModel13TrackSections___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_1C5A58D90()
{
  if (qword_1EC1905C8 != -1)
  {
    swift_once();
  }

  qword_1EC194EB0 = qword_1EC1A6A38;

  return result;
}

uint64_t (*MCUINamespace<A>.nowPlayingDisplayedTrackSection.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  *a1 = v3;
  *(v3 + 64) = v1;
  *(v3 + 72) = sub_1C5A541E8();
  sub_1C5BC8F44();
  return sub_1C5A58E84;
}

void sub_1C5A58E84(void **a1, char a2)
{
  v2 = *a1;
  (*a1)[4] = **a1;
  v3 = v2[3];
  *(v2 + 5) = *(v2 + 1);
  v2[7] = v3;
  if (a2)
  {

    sub_1C5BC8F54();
  }

  else
  {
    sub_1C5BC8F54();
  }

  free(v2);
}

unint64_t sub_1C5A58F2C()
{
  result = qword_1EC194ED8;
  if (!qword_1EC194ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194ED8);
  }

  return result;
}

uint64_t sub_1C5A58F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1C5BC7BB4();
  if (v8 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C5A59038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5A5909C();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_1C5A5909C()
{
  result = qword_1EC194EE0[0];
  if (!qword_1EC194EE0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194B98, &qword_1C5BDCF50);
    sub_1C5A58F2C();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC194EE0);
  }

  return result;
}

id sub_1C5A59120()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v0 setAllowedUnits_];
  [v0 setUnitsStyle_];
  result = [v0 setZeroFormattingBehavior_];
  qword_1EC194EB8 = v0;
  return result;
}

id sub_1C5A59198()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6988158]) init];
  result = [v0 setStyle_];
  qword_1EC194EC0 = v0;
  return result;
}

id sub_1C5A591E8()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v0 setUnitsStyle_];
  result = [v0 setAllowedUnits_];
  qword_1EC194EC8 = v0;
  return result;
}

uint64_t sub_1C5A5924C@<X0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, _BYTE *)@<X1>, _OWORD *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196270, &qword_1C5BDEB90);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195200, &qword_1C5BDEB98);
  v13 = *(v11 - 8);
  result = v11 - 8;
  if (*(v13 + 64) == v8)
  {
    (*(v7 + 16))(v10, a1, v6);
    a2(&v17, v10);
    (*(v7 + 8))(v10, v6);
    v24 = v19;
    v25 = v20;
    v26[0] = v21[0];
    *(v26 + 10) = *(v21 + 10);
    v22 = v17;
    v23 = v18;
    *&v28[10] = *(v21 + 10);
    v27[2] = v19;
    v27[3] = v20;
    *v28 = v21[0];
    v27[0] = v17;
    v27[1] = v18;
    sub_1C59400B0(&v22, v16, &qword_1EC1951C0, &qword_1C5BDEB70);
    result = sub_1C5924EF4(v27, &qword_1EC1951C0, &qword_1C5BDEB70);
    v14 = v25;
    a3[2] = v24;
    a3[3] = v14;
    a3[4] = v26[0];
    *(a3 + 74) = *(v26 + 10);
    v15 = v23;
    *a3 = v22;
    a3[1] = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5A59494(__n128 a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  v3[3] = v2;
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  sub_1C596F94C(v2, v4, v5, v6, a1);
  return sub_1C596F908(v7, v8, v9, v10);
}

uint64_t sub_1C5A594FC()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

uint64_t sub_1C5A59538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1C5A59640()
{
  result = qword_1EC194F88;
  if (!qword_1EC194F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194F78, &qword_1C5BDE548);
    sub_1C5A596CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194F88);
  }

  return result;
}

unint64_t sub_1C5A596CC()
{
  result = qword_1EC194F90;
  if (!qword_1EC194F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194F70, &qword_1C5BDE540);
    sub_1C5A59784();
    sub_1C5924F54(&qword_1EDA4E198, &qword_1EC192C78, &qword_1C5BD9590, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194F90);
  }

  return result;
}

unint64_t sub_1C5A59784()
{
  result = qword_1EC194F98;
  if (!qword_1EC194F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194FA0, &qword_1C5BDE5C0);
    sub_1C5974BB8();
    sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980, &qword_1C5BD5EC0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194F98);
  }

  return result;
}

unint64_t sub_1C5A5983C()
{
  result = qword_1EC194FB0;
  if (!qword_1EC194FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194F80, &qword_1C5BDE550);
    sub_1C5A59640();
    sub_1C5937938(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194FB0);
  }

  return result;
}

uint64_t sub_1C5A598F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5A59934(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1C5A59990(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_1C5A59A50(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1C694FD20](v4);
    goto LABEL_5;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_5:
    *a3 = v6;
    return;
  }

  __break(1u);
}

unint64_t sub_1C5A59ABC()
{
  result = qword_1EDA46598;
  if (!qword_1EDA46598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195080, &qword_1C5BDE808);
    sub_1C5937938(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46598);
  }

  return result;
}

uint64_t sub_1C5A59B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5A59BD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1C5A59C30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_1C5A59D08()
{
  result = qword_1EC195120;
  if (!qword_1EC195120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195118, &qword_1C5BDE990);
    sub_1C5924F54(&qword_1EC195128, qword_1EC195130, &qword_1C5BDE998, MEMORY[0x1E69E6338]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195120);
  }

  return result;
}

uint64_t sub_1C5A59E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5A59E60(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1C5A59EA8(uint64_t result, int a2, int a3)
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
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C5A59F54()
{
  result = qword_1EC1951C8;
  if (!qword_1EC1951C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1951C0, &qword_1C5BDEB70);
    sub_1C5A59FD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1951C8);
  }

  return result;
}

unint64_t sub_1C5A59FD8()
{
  result = qword_1EC1951D0;
  if (!qword_1EC1951D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1951D8, &qword_1C5BDEB78);
    sub_1C5924F54(&qword_1EC1951E0, &qword_1EC1951E8, &qword_1C5BDEB80, &unk_1C5BD9F18);
    sub_1C5924F54(&qword_1EC1951F0, &qword_1EC1951F8, &qword_1C5BDEB88, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1951D0);
  }

  return result;
}

unint64_t sub_1C5A5A0BC()
{
  result = qword_1EC195208;
  if (!qword_1EC195208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195208);
  }

  return result;
}

unint64_t sub_1C5A5A110()
{
  result = qword_1EC195210;
  if (!qword_1EC195210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195210);
  }

  return result;
}

uint64_t sub_1C5A5A164(uint64_t a1, int a2)
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

uint64_t sub_1C5A5A1AC(uint64_t result, int a2, int a3)
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

unint64_t sub_1C5A5A214()
{
  result = qword_1EC195218;
  if (!qword_1EC195218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195220, &qword_1C5BDEC58);
    sub_1C5A5A298();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195218);
  }

  return result;
}

unint64_t sub_1C5A5A298()
{
  result = qword_1EC195228;
  if (!qword_1EC195228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1951B8, &qword_1C5BDEB68);
    sub_1C5A59F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195228);
  }

  return result;
}

unint64_t sub_1C5A5A354()
{
  result = qword_1EC195230;
  if (!qword_1EC195230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195238, &qword_1C5BDED00);
    sub_1C5A5A3D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195230);
  }

  return result;
}

unint64_t sub_1C5A5A3D8()
{
  result = qword_1EC195240;
  if (!qword_1EC195240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195248, &qword_1C5BDED08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195240);
  }

  return result;
}

uint64_t static ApproximatelyEquatable<>.==~ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21[0] = a2;
  v21[1] = a1;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v21 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v21 - v14;
  sub_1C5BCAD24();
  v16 = *(*(a5 + 16) + 8);
  v22[0] = a3;
  v22[1] = v16;
  v22[2] = a5;
  KeyPath = swift_getKeyPath(byte_1C5BDED10, v22);
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = a5;
  v18[4] = KeyPath;
  sub_1C5BCAD04();
  sub_1C5BCB3A4();
  v19 = *(v7 + 8);
  v19(v9, a3);
  LOBYTE(KeyPath) = AdditiveArithmetic.isApproximatelyEqual<A>(to:absoluteTolerance:relativeTolerance:norm:)(v21[0], v12, v15, sub_1C5A5A6A8, v18, a3, a3, *(v16 + 8), a5);
  v19(v12, a3);
  v19(v15, a3);

  return KeyPath & 1;
}

BOOL sub_1C5A5A6E4(double a1, double a2)
{
  if (a2 <= a1)
  {
    return 1;
  }

  if (COERCE__INT64(fabs(a1 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v3 = vabdd_f64(a1, a2);
  v4 = fabs(a1);
  v5 = fabs(a2);
  if (v4 <= v5)
  {
    v4 = v5;
  }

  return v3 <= fmax(v4 * 2.22044605e-16, COERCE_DOUBLE(1));
}

uint64_t sub_1C5A5A764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a7(a1, a2, a3, a6))
  {
    return 1;
  }

  else
  {
    return (*(a5 + 8))(a1, a2, a3, a5) & 1;
  }
}

uint64_t static Optional<A>.==~ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v29 = &v28 - v10;
  v11 = sub_1C5BCB804();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v15 = &v28 - v14;
  v17 = *(v16 + 56);
  v18 = *(v11 - 8);
  v19 = *(v18 + 16);
  v19(&v28 - v14, a1, v11, v13);
  (v19)(&v15[v17], a2, v11);
  v20 = v7[6];
  LODWORD(a2) = v20(v15, 1, a3);
  v21 = v20(&v15[v17], 1, a3);
  if (a2 != 1)
  {
    if (v21 != 1)
    {
      v23 = v7[4];
      v24 = v29;
      v23(v29, v15, a3);
      v25 = v30;
      v23(v30, &v15[v17], a3);
      v22 = (*(v31 + 8))(v24, v25, a3);
      v26 = v7[1];
      v26(v25, a3);
      v26(v24, a3);
      return v22 & 1;
    }

    (v7[1])(v15, a3);
    goto LABEL_7;
  }

  if (v21 != 1)
  {
    (*(v18 + 8))(&v15[v17], v11);
LABEL_7:
    v22 = 0;
    return v22 & 1;
  }

  v22 = 1;
  return v22 & 1;
}

uint64_t static Optional<A>.<=~ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v29 = &v28 - v10;
  v11 = sub_1C5BCB804();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v15 = &v28 - v14;
  v17 = *(v16 + 56);
  v18 = *(v11 - 8);
  v19 = *(v18 + 16);
  v19(&v28 - v14, a1, v11, v13);
  (v19)(&v15[v17], a2, v11);
  v20 = v7[6];
  LODWORD(a2) = v20(v15, 1, a3);
  v21 = v20(&v15[v17], 1, a3);
  if (a2 != 1)
  {
    if (v21 != 1)
    {
      v23 = v7[4];
      v24 = v29;
      v23(v29, v15, a3);
      v25 = v30;
      v23(v30, &v15[v17], a3);
      v22 = (*(v31 + 8))(v24, v25, a3);
      v26 = v7[1];
      v26(v25, a3);
      v26(v24, a3);
      return v22 & 1;
    }

    (v7[1])(v15, a3);
    goto LABEL_7;
  }

  if (v21 != 1)
  {
    (*(v18 + 8))(&v15[v17], v11);
LABEL_7:
    v22 = 0;
    return v22 & 1;
  }

  v22 = 1;
  return v22 & 1;
}

uint64_t static Optional<A>.>=~ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v29 = &v28 - v10;
  v11 = sub_1C5BCB804();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v15 = &v28 - v14;
  v17 = *(v16 + 56);
  v18 = *(v11 - 8);
  v19 = *(v18 + 16);
  v19(&v28 - v14, a1, v11, v13);
  (v19)(&v15[v17], a2, v11);
  v20 = v7[6];
  LODWORD(a2) = v20(v15, 1, a3);
  v21 = v20(&v15[v17], 1, a3);
  if (a2 != 1)
  {
    if (v21 != 1)
    {
      v23 = v7[4];
      v24 = v29;
      v23(v29, v15, a3);
      v25 = v30;
      v23(v30, &v15[v17], a3);
      v22 = (*(v31 + 16))(v24, v25, a3);
      v26 = v7[1];
      v26(v25, a3);
      v26(v24, a3);
      return v22 & 1;
    }

    (v7[1])(v15, a3);
    goto LABEL_7;
  }

  if (v21 != 1)
  {
    (*(v18 + 8))(&v15[v17], v11);
LABEL_7:
    v22 = 0;
    return v22 & 1;
  }

  v22 = 1;
  return v22 & 1;
}

float64x2_t static UIOffset.*= infix(_:_:)(float64x2_t *a1, double a2)
{
  result = vmulq_n_f64(*a1, a2);
  *a1 = result;
  return result;
}

float64x2_t static UIOffset./= infix(_:_:)(float64x2_t *a1, double a2)
{
  result = vdivq_f64(*a1, vdupq_lane_s64(*&a2, 0));
  *a1 = result;
  return result;
}

uint64_t sub_1C5A5B1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C5A5B1C4, 0, 0);
}

uint64_t sub_1C5A5B1C4()
{
  v1 = sub_1C5BC7A34();
  v2 = *(v0 + 16);
  *v2 = v1;
  v2[1] = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1C5A5B254(uint64_t a1)
{
  v1[21] = a1;
  v2 = sub_1C5BC7A24();
  v1[22] = v2;
  v3 = *(v2 - 8);
  v1[23] = v3;
  v1[24] = *(v3 + 64);
  v1[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  v1[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5A5B354, 0, 0);
}

uint64_t sub_1C5A5B354()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[23];
  v5 = v0[21];
  v4 = v0[22];
  v6 = sub_1C5BCB214();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  (*(v3 + 16))(v1, v5, v4);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  (*(v3 + 32))(v8 + v7, v1, v4);
  v9 = sub_1C59D2F90(0, 0, v2, &unk_1C5BDEE88, v8);
  v0[27] = v9;
  v10 = swift_task_alloc();
  v0[28] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930D0, &qword_1C5BD4FE0);
  v0[29] = v11;
  *v10 = v0;
  v10[1] = sub_1C5A5B514;
  v12 = MEMORY[0x1E6969080];
  v13 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA20](v0 + 14, v9, v12, v11, v13);
}

uint64_t sub_1C5A5B514()
{

  return MEMORY[0x1EEE6DFA0](sub_1C5A5B62C, 0, 0);
}

uint64_t sub_1C5A5B62C()
{
  v1 = *(v0 + 112);
  if (*(v0 + 128) == 1)
  {
    v2 = *(v0 + 176);
    v3 = *(v0 + 184);
    v4 = *(v0 + 168);
    *(v0 + 136) = v1;
    swift_willThrowTypedImpl();
    (*(v3 + 8))(v4, v2);
LABEL_18:

    v19 = *(v0 + 8);

    return v19();
  }

  v5 = *(v0 + 120);
  sub_1C592535C(0, &qword_1EDA45E28, 0x1E696ACD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195250, &qword_1C5BDEE90);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C5BDEE30;
  *(v6 + 32) = sub_1C592535C(0, &qword_1EDA45DB0, 0x1E6979398);
  *(v6 + 40) = sub_1C592535C(0, &qword_1EDA45E18, 0x1E695DF90);
  *(v6 + 48) = sub_1C592535C(0, &qword_1EDA45DA0, 0x1E695DEC8);
  *(v6 + 56) = sub_1C592535C(0, &unk_1EDA45D60, 0x1E696AEC0);
  *(v6 + 64) = sub_1C592535C(0, &qword_1EDA4E048, 0x1E696AD98);
  sub_1C5BCB564();

  if (!*(v0 + 40))
  {
    sub_1C592BE5C(v0 + 16);
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195260, &qword_1C5BDEE98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v16 = *(v0 + 176);
    v17 = *(v0 + 184);
    v18 = *(v0 + 168);
    sub_1C5A5BBA0();
    swift_allocError();
    swift_willThrow();
    sub_1C5A5BB40(v1, v5, 0);
    (*(v17 + 8))(v18, v16);
    goto LABEL_18;
  }

  v7 = *(v0 + 144);
  if (!*(v7 + 16))
  {
    goto LABEL_16;
  }

  v8 = sub_1C596FBD8(0x6579614C746F6F72, 0xE900000000000072);
  if ((v9 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_1C592B32C(*(v7 + 56) + 32 * v8, v0 + 48);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v10 = *(v0 + 152);
  if (!*(v7 + 16) || (v11 = sub_1C596FBD8(0xD000000000000010, 0x80000001C5BF89D0), (v12 & 1) == 0))
  {

LABEL_16:

    goto LABEL_17;
  }

  sub_1C592B32C(*(v7 + 56) + 32 * v11, v0 + 80);

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_17;
  }

  (*(*(v0 + 184) + 8))(*(v0 + 168), *(v0 + 176));
  sub_1C5A5BB40(v1, v5, 0);
  v13 = *(v0 + 160);

  v14 = *(v0 + 8);

  return v14(v13, v10);
}

uint64_t sub_1C5A5BA50(uint64_t a1)
{
  v4 = *(sub_1C5BC7A24() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C592ABD4;

  return sub_1C5A5B1A4(a1, v6, v7, v1 + v5);
}

void sub_1C5A5BB40(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_1C5A5BB4C(a1, a2);
  }
}

double sub_1C5A5BB4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

unint64_t sub_1C5A5BBA0()
{
  result = qword_1EC195258;
  if (!qword_1EC195258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195258);
  }

  return result;
}

unint64_t sub_1C5A5BC08()
{
  result = qword_1EC195268[0];
  if (!qword_1EC195268[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC195268);
  }

  return result;
}

uint64_t sub_1C5A5BC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    if (*(v3 + 16))
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.73;
    }

    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    *(v8 + 32) = v5;
    MEMORY[0x1EEE9AC00](v8);
    v27[2] = v6;
    v27[3] = v7;
    v27[4] = v2;
    sub_1C5A5C478(sub_1C5A5DAEC, v27, v6, v7, v55);

    v102 = v55[2];
    v103 = v55[3];
    *&v104 = v56;
    v101 = v55[1];
    v100 = v55[0];
    v28 = sub_1C5BC98A4();
    sub_1C5A5D088(v98);
    _s27DefaultArtworkContainerViewV6LayoutVMa(255, v6, v7, v9);
    swift_getWitnessTable();
    sub_1C5BC8454();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC199E00, &qword_1C5BD87E0);
    _s18ArtworkPlaceholderVMa(255, v6, v7, v10);
    sub_1C5BCB804();
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1C5BC8BE4();
    sub_1C5BC8AB4();
    swift_getWitnessTable();
    v11 = sub_1C5BC87C4();
    v12 = swift_getWitnessTable();
    v13 = sub_1C5A0BA0C();
    v14 = swift_getWitnessTable();
    v52 = v13;
    v53 = v14;
    v15 = swift_getWitnessTable();
    v50 = v12;
    v51 = v15;
    v16 = swift_getWitnessTable();
    sub_1C5BCA2F4();
    v57[2] = v102;
    v57[3] = v103;
    v58 = v104;
    v57[0] = v100;
    v57[1] = v101;
    (*(*(v11 - 8) + 8))(v57, v11);
    v104 = v83;
    v105 = v84;
    v106 = v85;
    LOBYTE(v107) = v86;
    v100 = v79;
    v101 = v80;
    v102 = v81;
    v103 = v82;
    sub_1C5BC9884();
    sub_1C5A5D088(v98);
    v17 = sub_1C5BC8AB4();
    v48 = v16;
    v49 = MEMORY[0x1E697E5D8];
    v18 = MEMORY[0x1E697E5D8];
    v19 = swift_getWitnessTable();
    sub_1C5BCA2F4();
    v59[4] = v104;
    v59[5] = v105;
    v59[6] = v106;
    v60 = v107;
    v59[0] = v100;
    v59[1] = v101;
    v59[2] = v102;
    v59[3] = v103;
    (*(*(v17 - 8) + 8))(v59, v17);
    v108 = v95;
    v109 = v96;
    LOBYTE(v110) = v97;
    v104 = v91;
    v105 = v92;
    v107 = v94;
    v106 = v93;
    v100 = v87;
    v101 = v88;
    v103 = v90;
    v102 = v89;
    sub_1C5BC98B4();
    sub_1C5A5D088(&v65);
    v20 = sub_1C5BC8AB4();
    v46 = v19;
    v47 = v18;
    v21 = swift_getWitnessTable();
    sub_1C5BCA2F4();
    v61[8] = v108;
    v61[9] = v109;
    v62 = v110;
    v61[4] = v104;
    v61[5] = v105;
    v61[6] = v106;
    v61[7] = v107;
    v61[0] = v100;
    v61[1] = v101;
    v61[2] = v102;
    v61[3] = v103;
    (*(*(v20 - 8) + 8))(v61, v20);
    v75 = v98[10];
    v76 = v98[11];
    v77 = v98[12];
    v78 = v99;
    v71 = v98[6];
    v72 = v98[7];
    v73 = v98[8];
    v74 = v98[9];
    v67 = v98[2];
    v68 = v98[3];
    v69 = v98[4];
    v70 = v98[5];
    v65 = v98[0];
    v66 = v98[1];
    v22 = sub_1C5BC8AB4();
    v44 = v21;
    v45 = v18;
    v23 = swift_getWitnessTable();
    sub_1C593EDC0(&v65, v22, v23);
    v63[10] = v75;
    v63[11] = v76;
    v63[12] = v77;
    v64 = v78;
    v63[6] = v71;
    v63[7] = v72;
    v63[8] = v73;
    v63[9] = v74;
    v63[2] = v67;
    v63[3] = v68;
    v63[4] = v69;
    v63[5] = v70;
    v63[0] = v65;
    v63[1] = v66;
    v24 = *(*(v22 - 8) + 8);
    v24(v63, v22);
    v40 = v110;
    v41 = v111;
    v42 = v112;
    v43 = v113;
    v36 = v106;
    v37 = v107;
    v38 = v108;
    v39 = v109;
    v32 = v102;
    v33 = v103;
    v34 = v104;
    v35 = v105;
    v30 = v100;
    v31 = v101;
    sub_1C593EDC0(&v30, v22, v23);
    v75 = v40;
    v76 = v41;
    v77 = v42;
    v78 = v43;
    v71 = v36;
    v72 = v37;
    v73 = v38;
    v74 = v39;
    v67 = v32;
    v68 = v33;
    v69 = v34;
    v70 = v35;
    v65 = v30;
    v66 = v31;
    return v24(&v65, v22);
  }

  else
  {
    _s14DefaultArtworkCMa();
    sub_1C5A5DE20(qword_1EDA49E00, v26, _s14DefaultArtworkCMa, &unk_1C5BDEF78);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5A5C478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = _s27DefaultArtworkContainerViewV6LayoutVMa(0, a3, a4, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC199E00, &qword_1C5BD87E0);
  _s18ArtworkPlaceholderVMa(255, a3, a4, v11);
  sub_1C5BCB804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  v12 = sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  sub_1C5A0BA0C();
  swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  return sub_1C59485B4(a1, a2, v10, v12, WitnessTable, v14, a5);
}

uint64_t sub_1C5A5C610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C5BCA484();
  _s27DefaultArtworkContainerViewVMa(0, a2, a3, v6);
  *&v21 = v5;
  *(&v21 + 1) = 0x3FF0000000000000;
  LOBYTE(v22) = 0;
  BYTE1(v22) = sub_1C5A5C88C();
  sub_1C5BCAA54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199E00, &qword_1C5BD87E0);
  _s18ArtworkPlaceholderVMa(255, a2, a3, v7);
  sub_1C5BCB804();
  sub_1C5A0BA0C();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BCA2C4();

  v12 = v25;
  v13 = v26;
  v14 = v27;
  v15 = v28;
  sub_1C5BC8BE4();
  v8 = sub_1C5BC8AB4();
  swift_getWitnessTable();
  v9 = swift_getWitnessTable();
  sub_1C593EDC0(&v12, v8, v9);
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v10 = *(*(v8 - 8) + 8);
  v10(&v21, v8);
  v12 = v17;
  v13 = v18;
  v14 = v19;
  v15 = v20;
  sub_1C593EDC0(&v12, v8, v9);
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  return (v10)(&v25, v8);
}

BOOL sub_1C5A5C88C()
{
  v1 = v0;
  v2 = sub_1C5BC8F34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C59416B4(v20);
  v6 = v21;
  __swift_project_boxed_opaque_existential_0(v20, v21);
  if ((sub_1C596CB78(v6) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v20);
    return 0;
  }

  *&v19[10] = *(v1 + 122);
  v7 = v1[7];
  v18[2] = v1[6];
  *v19 = v7;
  v8 = v1[5];
  v18[0] = v1[4];
  v18[1] = v8;
  if (v19[25])
  {
    v9 = v1[7];
    v16 = v1[6];
    v17[0] = v9;
    *(v17 + 9) = *(v1 + 121);
    v10 = v1[4];
    v15 = v1[5];
    v14 = v10;
    if ((v16 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {

    sub_1C5BCB4E4();
    v13 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(v18, &unk_1EC194DE0, &qword_1C5BDCD20);
    (*(v3 + 8))(v5, v2);
    if ((v16 & 1) == 0)
    {
LABEL_4:
      v11 = *(&v15 + 1);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return v11 != 1;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v20);
  return 1;
}

double sub_1C5A5CA90@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v43 = a3;
  v44 = a4;
  v6 = sub_1C5BC8F34();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 144);
  v11 = *(a1 + 152);

  if ((v11 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v12 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    v10 = v56;
  }

  swift_getKeyPath(asc_1C5BDF258, v43);
  *&v56 = v10;
  sub_1C5A5DE20(&qword_1EDA4AF70, 255, _s12PresentationCMa, &unk_1C5BD2B30);
  sub_1C5BC7B74();

  v13 = *(v10 + 17);

  if (v13 != 1)
  {
    goto LABEL_11;
  }

  *&v59[10] = *(a1 + 122);
  v15 = *(a1 + 112);
  v58 = *(a1 + 96);
  *v59 = v15;
  v16 = *(a1 + 80);
  v56 = *(a1 + 64);
  v57 = v16;
  if (v59[25])
  {
    v17 = *(a1 + 112);
    v54 = *(a1 + 96);
    v55[0] = v17;
    *(v55 + 9) = *(a1 + 121);
    v18 = *(a1 + 64);
    v53 = *(a1 + 80);
    v52 = v18;
  }

  else
  {

    sub_1C5BCB4E4();
    v19 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v56, &unk_1EC194DE0, &qword_1C5BDCD20);
    (*(v7 + 8))(v9, v6);
  }

  if (BYTE2(v53) == 2)
  {
    goto LABEL_13;
  }

  v21 = *(a1 + 160);
  v20 = *(a1 + 168);
  if (*(a1 + 176) != 1)
  {

    sub_1C5BCB4E4();
    v26 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v27 = sub_1C596AC58(v21, v20, 0);
    (*(v7 + 8))(v9, v6, v27);
    if (*(&v52 + 1))
    {
      goto LABEL_10;
    }

LABEL_13:
    v22 = v43;
    v28 = sub_1C595B4FC(0);
    v30 = v29;
    v49[0] = v28;
    v50 = v29;
    v32 = v31 & 1;
    v51 = v31 & 1;
    v34 = _s18ArtworkPlaceholderVMa(0, a2, v22, v33);
    WitnessTable = swift_getWitnessTable();
    sub_1C593EDC0(v49, v34, WitnessTable);
    sub_1C5950E44(v30, v32);
    v36 = *(&v52 + 1);
    v37 = v53;
    LOBYTE(v47) = v52;
    *(&v47 + 1) = *(&v52 + 1);
    v48 = v53;
    sub_1C593EDC0(&v47, v34, WitnessTable);
    sub_1C5950E44(v36, v37);
    v38 = v50;
    v39 = v51;
    v45[0] = v49[0];
    v45[1] = v50;
    v46 = v51;
    sub_1C5941600(v45, &v47);
    sub_1C5950E44(v38, v39);
    v24 = v47;
    v25 = v48;
    goto LABEL_14;
  }

  *&v52 = *(a1 + 160);
  *(&v52 + 1) = v20;

  if (!v20)
  {
    goto LABEL_13;
  }

LABEL_10:

LABEL_11:
  v52 = 0uLL;
  LOBYTE(v53) = -1;
  v22 = v43;
  _s18ArtworkPlaceholderVMa(0, a2, v43, v14);
  swift_getWitnessTable();
  sub_1C5941600(&v52, &v56);
  v24 = v56;
  v25 = v57;
LABEL_14:
  v43 = v24;
  v56 = v24;
  LOBYTE(v57) = v25;
  _s18ArtworkPlaceholderVMa(255, a2, v22, v23);
  v40 = sub_1C5BCB804();
  v60 = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  sub_1C593EDC0(&v56, v40, v41);
  return sub_1C5A5DB1C(v43, *(&v43 + 1), v25);
}

void sub_1C5A5D088(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C5BC8F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C59416B4(v45);
  v8 = v46;
  __swift_project_boxed_opaque_existential_0(v45, v46);
  if ((sub_1C596CB78(v8) & 1) == 0)
  {
    goto LABEL_7;
  }

  *&v44[10] = *(v2 + 122);
  v9 = v2[7];
  v43 = v2[6];
  *v44 = v9;
  v10 = v2[5];
  v41 = v2[4];
  v42 = v10;
  if (v44[25])
  {
    v11 = v2[7];
    v35 = v2[6];
    v36[0] = v11;
    *(v36 + 9) = *(v2 + 121);
    v12 = v2[5];
    v33 = v2[4];
    v34 = v12;
  }

  else
  {

    sub_1C5BCB4E4();
    v13 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v41, &unk_1EC194DE0, &qword_1C5BDCD20);
    (*(v5 + 8))(v7, v4);
  }

  v14 = BYTE2(v34);
  if (BYTE2(v34) == 3)
  {
LABEL_7:
    __swift_destroy_boxed_opaque_existential_0(v45);
LABEL_8:
    *&v44[10] = *(v2 + 122);
    v15 = v2[7];
    v43 = v2[6];
    *v44 = v15;
    v16 = v2[5];
    v41 = v2[4];
    v42 = v16;
    if (v44[25])
    {
      v17 = v2[7];
      v35 = v2[6];
      v36[0] = v17;
      *(v36 + 9) = *(v2 + 121);
      v18 = v2[5];
      v33 = v2[4];
      v34 = v18;
    }

    else
    {

      sub_1C5BCB4E4();
      v19 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(&v41, &unk_1EC194DE0, &qword_1C5BDCD20);
      (*(v5 + 8))(v7, v4);
    }

    v39 = v35;
    v40[0] = v36[0];
    *(v40 + 9) = *(v36 + 9);
    v37 = v33;
    v38 = v34;
    sub_1C5A5D530(&v29);
    v20 = v29;
    v21 = *&v30;
    goto LABEL_12;
  }

  __swift_destroy_boxed_opaque_existential_0(v45);
  if (v14)
  {
    goto LABEL_8;
  }

  *(v36 + 10) = *(v2 + 122);
  v22 = v2[7];
  v35 = v2[6];
  v36[0] = v22;
  v23 = v2[5];
  v33 = v2[4];
  v34 = v23;
  if (BYTE9(v36[1]))
  {
    v24 = v2[7];
    v39 = v2[6];
    v40[0] = v24;
    *(v40 + 9) = *(v2 + 121);
    v25 = v2[5];
    v37 = v2[4];
    v38 = v25;
  }

  else
  {

    sub_1C5BCB4E4();
    v26 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v33, &unk_1EC194DE0, &qword_1C5BDCD20);
    (*(v5 + 8))(v7, v4);
  }

  v31 = v39;
  v32[0] = v40[0];
  *(v32 + 9) = *(v40 + 9);
  v29 = v37;
  v30 = v38;
  sub_1C5A5D530(v28);
  v21 = v28[2];
  *&v20 = v28[0];
LABEL_12:
  *a1 = v20;
  *(a1 + 16) = v21;
}

void (*sub_1C5A5D4A8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1C5BC8134();
  return sub_1C599BD44;
}

void sub_1C5A5D530(double *a1@<X8>)
{
  v3 = *(v1 + 17);
  if (*(v1 + 18) > 1u)
  {
    if (*(v1 + 18) == 2)
    {
      v4 = 0.0;
      if (v3 >= 7)
      {
        v6 = 75.0;
        v5 = 0.0;
      }

      else
      {
        v5 = dbl_1C5BDF388[*(v1 + 17)];
        v6 = dbl_1C5BDF3C0[*(v1 + 17)];
      }
    }

    else
    {
      if (qword_1EC1908D8 != -1)
      {
        swift_once();
      }

      v4 = *(&xmmword_1EC198A88 + 1);
      v6 = *&xmmword_1EC198A88;
      v5 = *&qword_1EC198A98;
    }
  }

  else
  {
    if (!*(v1 + 18))
    {
      if (*(v1 + 17) <= 2u)
      {
        if (!*(v1 + 17))
        {
          v9 = *v1;
          v10 = *(v1 + 16);
          v11 = 0;
          v12 = *(v1 + 19);
          v13 = *(v1 + 35);
          *v14 = *(v1 + 51);
          *&v14[14] = *(v1 + 65);
          DeviceMetrics.padding.getter(&v7);
          v4 = v8;
          v5 = 8.0;
          v6 = 36.0;
          goto LABEL_24;
        }

        if (v3 != 1)
        {
          goto LABEL_18;
        }

LABEL_20:
        v9 = *v1;
        v10 = *(v1 + 16);
        v11 = v3;
        v12 = *(v1 + 19);
        v13 = *(v1 + 35);
        *v14 = *(v1 + 51);
        *&v14[14] = *(v1 + 65);
        DeviceMetrics.padding.getter(&v7);
        v4 = v8 + -8.0;
        v6 = 30.0;
        v5 = 10.0;
        goto LABEL_24;
      }

      switch(v3)
      {
        case 3u:
          v9 = *v1;
          v10 = *(v1 + 16);
          v11 = 3;
          break;
        case 4u:
          goto LABEL_20;
        case 5u:
LABEL_18:
          v9 = *v1;
          v10 = *(v1 + 16);
          v11 = v3;
          v12 = *(v1 + 19);
          v13 = *(v1 + 35);
          *v14 = *(v1 + 51);
          *&v14[14] = *(v1 + 65);
          DeviceMetrics.padding.getter(&v7);
          v4 = v8 + -8.0;
          v6 = 26.0;
          v5 = 10.0;
          goto LABEL_24;
        default:
          v9 = *v1;
          v10 = *(v1 + 16);
          v11 = v3;
          break;
      }

      v12 = *(v1 + 19);
      v13 = *(v1 + 35);
      *v14 = *(v1 + 51);
      *&v14[14] = *(v1 + 65);
      DeviceMetrics.padding.getter(&v7);
      v4 = v8 + -8.0;
      v6 = 26.0;
      v5 = 23.0;
      goto LABEL_24;
    }

    v9 = *v1;
    v10 = *(v1 + 16);
    LOBYTE(v11) = v3;
    HIBYTE(v11) = 1;
    v12 = *(v1 + 19);
    v13 = *(v1 + 35);
    *v14 = *(v1 + 51);
    *&v14[14] = *(v1 + 65);
    DeviceMetrics.padding.getter(&v7);
    v4 = v8;
    v5 = 16.0;
    v6 = 33.0;
  }

LABEL_24:
  *a1 = v6;
  a1[1] = v4;
  a1[2] = v5;
}

uint64_t sub_1C5A5D810@<X0>(uint64_t a1@<X8>)
{
  _s14DefaultArtworkCMa();
  sub_1C5A5DE20(qword_1EDA49E00, v2, _s14DefaultArtworkCMa, &unk_1C5BDEF78);
  *a1 = sub_1C5BC8C84();
  *(a1 + 8) = v3;
  *(a1 + 16) = swift_getKeyPath(byte_1C5BDEFB0);
  *(a1 + 56) = 0;
  *(a1 + 64) = swift_getKeyPath(byte_1C5BDEFD8);
  *(a1 + 137) = 0;
  _s12PresentationCMa(0);
  sub_1C5A5DE20(&qword_1EDA4AF70, 255, _s12PresentationCMa, &unk_1C5BD2B30);
  *(a1 + 144) = sub_1C5BC8324();
  *(a1 + 152) = v4 & 1;
  result = swift_getKeyPath(aX_7);
  *(a1 + 160) = result;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  return result;
}

uint64_t sub_1C5A5D938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy177_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1C5A5D9B0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 177))
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

uint64_t sub_1C5A5DA0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 177) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 177) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

double sub_1C5A5DB1C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1C5950E44(a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1C5A5DB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5A5DB90(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1964F0, &qword_1C5BE35D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17[-v10];
  v12 = sub_1C5BC8744();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v17[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C5BC8894();
  sub_1C5A5DE20(&qword_1EDA4E1A0, 255, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D8]);
  sub_1C5BCB444();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_1C5924EF4(v11, &qword_1EC1964F0, &qword_1C5BE35D0);
  }

  (*(v13 + 32))(v15, v11, v12);
  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  CGRectGetMidX(v18);
  v19.origin.x = a1;
  v19.origin.y = a2;
  v19.size.width = a3;
  v19.size.height = a4;
  CGRectGetMidY(v19);
  sub_1C5BCABD4();
  v17[24] = 0;
  v17[16] = 0;
  sub_1C5BC8714();
  v17[8] = 0;
  v17[0] = 0;
  sub_1C5BC8724();
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1C5A5DE20(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for MotionAsset(uint64_t a1)
{
  result = qword_1EDA4DF88;
  if (!qword_1EDA4DF88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C5A5DF04(uint64_t a1)
{
  result = sub_1C5BC7A24();
  if (v2 <= 0x3F)
  {
    result = sub_1C592535C(319, &qword_1EDA45DB8, 0x1E6987E28);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C5A5DFD4(uint64_t a1)
{
  v2 = sub_1C5BC7A24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MotionAsset(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C59C122C(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (!v10)
    {
      sub_1C5BCB754();

      return;
    }

    v11 = v10;
    MEMORY[0x1C69501A0](1);
    v12 = [v11 URL];
    sub_1C5BC79E4();

    sub_1C5A5E6C4(&qword_1EC192578, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1C5BCAD44();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1C5A5E6C4(&qword_1EC192578, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1C5BCAD44();
  }

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_1C5A5E230()
{
  sub_1C5BCBF54();
  sub_1C5A5DFD4(v1);
  return sub_1C5BCBF94();
}

uint64_t sub_1C5A5E274(uint64_t a1)
{
  sub_1C5BCBF54();
  sub_1C5A5DFD4(v2);
  return sub_1C5BCBF94();
}

uint64_t sub_1C5A5E2B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5BC7A24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v34 - v9;
  v10 = type metadata accessor for MotionAsset(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1952F0, &qword_1C5BDF470);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v34 - v17;
  v20 = *(v19 + 56);
  sub_1C59C122C(a1, &v34 - v17);
  sub_1C59C122C(a2, &v18[v20]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C59C122C(v18, v12);
    v21 = *v12;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = *&v18[v20];
      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      if (!v23 || (v24 = v23, objc_opt_self(), (v25 = swift_dynamicCastObjCClass()) == 0))
      {
        sub_1C592535C(0, &qword_1EDA45D70, 0x1E69E58C0);
        v30 = sub_1C5BCB744();

        goto LABEL_13;
      }

      v26 = v25;
      v27 = [v24 URL];
      v28 = v35;
      sub_1C5BC79E4();

      v29 = [v26 URL];
      sub_1C5BC79E4();

      v30 = sub_1C5BC79D4();
LABEL_11:
      v32 = *(v5 + 8);
      v32(v7, v4);
      v32(v28, v4);
LABEL_13:
      sub_1C59C1338(v18);
      return v30 & 1;
    }
  }

  else
  {
    sub_1C59C122C(v18, v15);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v31 = *(v5 + 32);
      v28 = v35;
      v31(v35, v15, v4);
      v31(v7, &v18[v20], v4);
      v30 = sub_1C5BC79D4();
      goto LABEL_11;
    }

    (*(v5 + 8))(v15, v4);
  }

  sub_1C5A5E65C(v18);
  v30 = 0;
  return v30 & 1;
}

uint64_t sub_1C5A5E65C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1952F0, &qword_1C5BDF470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C5A5E6C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1C5A5E714()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = objc_allocWithZone(MEMORY[0x1E6974440]);
  swift_unknownObjectRetain();
  v4 = [v3 init];
  [v4 setPaused_];
  [v4 setPreferredFramesPerSecond_];
  [v4 setEnableSetNeedsDisplay_];
  [v4 setDelegate_];
  swift_unknownObjectRelease();
  [v4 setDevice_];
  [v4 setColorPixelFormat_];
  [v4 setAlpha_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195340, &unk_1C5BDF6C8);
  sub_1C5BC96B4();
  swift_unknownObjectWeakAssign();

  if (qword_1EC190888 != -1)
  {
    swift_once();
  }

  v5 = sub_1C5BC7D64();
  __swift_project_value_buffer(v5, qword_1EC1A6D48);
  v6 = v4;
  v7 = sub_1C5BC7D44();
  v8 = sub_1C5BCB4C4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136380675;
    v11 = v6;
    v12 = [v11 description];
    v13 = sub_1C5BCAE74();
    v15 = v14;

    v16 = sub_1C592ADA8(v13, v15, &v19);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_1C5922000, v7, v8, "Created new mtkView: %{private}s", v9, 0xCu);
    v17 = __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1C69510F0](v10, -1, -1, v17);
    MEMORY[0x1C69510F0](v9, -1, -1);
  }

  return v6;
}

void sub_1C5A5E9A8(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtCV11MediaCoreUI16MetalTextureView11Coordinator_source;
  v3 = *(v1 + OBJC_IVAR____TtCV11MediaCoreUI16MetalTextureView11Coordinator_source + 16);
  if (v3 == 255)
  {
    return;
  }

  v5 = *result;
  v4 = *(result + 8);
  v6 = *(result + 16);
  v8 = *v2;
  v7 = *(v2 + 8);
  v22 = *v2;
  v23 = v7;
  v24 = v3;
  if (v6 == 255)
  {
    sub_1C5A5FC84(v8, v7, v3);
    sub_1C5A5FC84(v8, v7, v3);
    sub_1C5A5FC84(v5, v4, 255);
    sub_1C5A5FC84(v8, v7, v3);
    sub_1C59B5190(v8, v7, v3 & 1);
    sub_1C5A5FC9C(v8, v7, v3);
    sub_1C5A5FC9C(v5, v4, 255);
    if (v3)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  v19 = v5;
  v20 = v4;
  v21 = v6 & 1;
  sub_1C5A5FC84(v8, v7, v3);
  sub_1C5A5FC84(v8, v7, v3);
  sub_1C5A5FC84(v5, v4, v6);
  sub_1C5A5FC84(v8, v7, v3);
  v9 = _s11MediaCoreUI18MetalTextureSourceO2eeoiySbAC_ACtFZ_0(&v22, &v19);
  sub_1C59B5190(v19, v20, v21);
  sub_1C59B5190(v22, v23, v24);
  sub_1C5A5FC9C(v8, v7, v3);
  if ((v9 & 1) == 0)
  {
    if (v3)
    {
LABEL_5:
      v10 = *(*(v1 + OBJC_IVAR____TtCV11MediaCoreUI16MetalTextureView11Coordinator_metalContext) + 40);
      v11 = objc_allocWithZone(type metadata accessor for MetalImageTextureProvider());
      sub_1C5A5FC84(v8, v7, v3);
      v12 = sub_1C5B51D44(v8, v10);
      v13 = &off_1F4528260;
LABEL_9:
      sub_1C5A5EC14(v12, v13);
      goto LABEL_10;
    }

LABEL_8:
    v14 = *(v1 + OBJC_IVAR____TtCV11MediaCoreUI16MetalTextureView11Coordinator_metalContext);
    v15 = *(v1 + OBJC_IVAR____TtCV11MediaCoreUI16MetalTextureView11Coordinator_preferredFramesPerSecond);
    v16 = objc_allocWithZone(type metadata accessor for MetalVideoTextureProvider());
    v17 = v7;
    v18 = v8;

    sub_1C5A0C09C(v17, v8, v14, v15);
    v13 = &off_1F451D978;
    goto LABEL_9;
  }

LABEL_10:

  sub_1C5A5FC9C(v8, v7, v3);
}

uint64_t sub_1C5A5EC14(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCV11MediaCoreUI16MetalTextureView11Coordinator_textureProvider);
  *v5 = a1;
  v5[1] = a2;
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  if (a1)
  {
    v7 = *(v2 + OBJC_IVAR____TtCV11MediaCoreUI16MetalTextureView11Coordinator_renderer);
    if (v7)
    {
      *(v7 + OBJC_IVAR____TtC11MediaCoreUI16MaterialRenderer_textureProvider + 8) = a2;
      swift_unknownObjectWeakAssign();
    }

    sub_1C5A5ED88(a1, a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_1C5A5ECC0()
{
  v1 = (v0 + OBJC_IVAR____TtCV11MediaCoreUI16MetalTextureView11Coordinator_renderer);
  *v1 = 0;
  v1[1] = 0;
  swift_unknownObjectRelease();
  v2 = (v0 + OBJC_IVAR____TtCV11MediaCoreUI16MetalTextureView11Coordinator_textureProvider);
  *v2 = 0;
  v2[1] = 0;
  swift_unknownObjectRelease();
  *(v0 + OBJC_IVAR____TtCV11MediaCoreUI16MetalTextureView11Coordinator_displayModeObserver) = 0;

  return result;
}

void sub_1C5A5ED24(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong setAlpha_];
  }
}

double sub_1C5A5ED88(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F20, &qword_1C5BD88C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195348, &qword_1C5BDF6D8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195350, &qword_1C5BDF6E0);
  v10 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v12 = &v20 - v11;
  ObjectType = swift_getObjectType();
  v23 = (*(a2 + 16))(ObjectType, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195358, &unk_1C5BDF6E8);
  sub_1C5924F54(&qword_1EC195360, &qword_1EC195358, &unk_1C5BDF6E8, MEMORY[0x1E695BED8]);
  sub_1C5A07E3C();
  sub_1C5BC80F4();

  sub_1C592535C(0, &qword_1EDA4E620, 0x1E69E9610);
  v14 = sub_1C5BCB5A4();
  v23 = v14;
  v15 = sub_1C5BCB594();
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  sub_1C5924F54(&qword_1EC195368, &qword_1EC195348, &qword_1C5BDF6D8, MEMORY[0x1E695BD38]);
  sub_1C5931640();
  sub_1C5BC80D4();
  sub_1C59316A8(v5);

  (*(v7 + 8))(v9, v6);
  swift_allocObject();
  v16 = v22;
  swift_unknownObjectWeakInit();
  sub_1C5924F54(&qword_1EC195370, &qword_1EC195350, &qword_1C5BDF6E0, MEMORY[0x1E695BE98]);
  v17 = v21;
  v18 = sub_1C5BC8114();

  (*(v10 + 8))(v12, v17);
  *(v16 + OBJC_IVAR____TtCV11MediaCoreUI16MetalTextureView11Coordinator_displayModeObserver) = v18;

  return result;
}

void sub_1C5A5F160(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (!v5)
    {

      return;
    }

    v6 = v5;
    if (!v2)
    {

      return;
    }

    if (v2 == 1)
    {
      [v5 setEnableSetNeedsDisplay_];
      [v6 setNeedsDisplay];
      v7 = v4[OBJC_IVAR____TtCV11MediaCoreUI16MetalTextureView11Coordinator_isLoaded];
      v4[OBJC_IVAR____TtCV11MediaCoreUI16MetalTextureView11Coordinator_isLoaded] = 1;
      if (v7 != 1)
      {
        v8 = objc_opt_self();
        v9 = swift_allocObject();
        *(v9 + 16) = v4;
        v19 = sub_1C5A5FCC8;
        v20 = v9;
        aBlock = MEMORY[0x1E69E9820];
        v16 = 1107296256;
        v10 = &block_descriptor_34_0;
LABEL_12:
        v17 = sub_1C596D09C;
        v18 = v10;
        v13 = _Block_copy(&aBlock);
        v14 = v4;

        [v8 animateWithDuration:0 delay:v13 options:0 animations:0.2 completion:0.0];

        _Block_release(v13);
        return;
      }
    }

    else
    {
      [v5 setEnableSetNeedsDisplay_];
      [v6 setPaused_];
      [v6 setPreferredFramesPerSecond_];
      v11 = v4[OBJC_IVAR____TtCV11MediaCoreUI16MetalTextureView11Coordinator_isLoaded];
      v4[OBJC_IVAR____TtCV11MediaCoreUI16MetalTextureView11Coordinator_isLoaded] = 1;
      if (v11 != 1)
      {
        v8 = objc_opt_self();
        v12 = swift_allocObject();
        *(v12 + 16) = v4;
        v19 = sub_1C5A5FCBC;
        v20 = v12;
        aBlock = MEMORY[0x1E69E9820];
        v16 = 1107296256;
        v10 = &block_descriptor_9;
        goto LABEL_12;
      }
    }
  }
}

id sub_1C5A5F424()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetalTextureView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C5A5F500@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  v6 = v1[5];
  v5 = v1[6];
  v7 = objc_allocWithZone(type metadata accessor for MetalTextureView.Coordinator());
  swift_unknownObjectRetain();

  v8 = sub_1C5A5FB8C(v3, v4, v6, v5);
  result = swift_unknownObjectRelease();
  *a1 = v8;
  return result;
}

uint64_t sub_1C5A5F57C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5A5F8C4();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C5A5F5E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5A5F8C4();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C5A5F644(uint64_t a1)
{
  sub_1C5A5F8C4();
  sub_1C5BC9264();
  __break(1u);
}

uint64_t _s11MediaCoreUI18MetalTextureSourceO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4)
  {
    if (*(a2 + 16))
    {
      sub_1C592535C(0, &qword_1EDA45D70, 0x1E69E58C0);
      v4 = 1;
      sub_1C59B5E3C(v5, v6, 1);
      sub_1C59B5E3C(v2, v3, 1);
      v8 = sub_1C5BCB744();
      v7 = 1;
      goto LABEL_6;
    }

LABEL_5:
    sub_1C59B5E3C(*a2, *(a2 + 8), v7);
    sub_1C59B5E3C(v2, v3, v4);
    v8 = 0;
    goto LABEL_6;
  }

  if (*(a2 + 16))
  {
    goto LABEL_5;
  }

  sub_1C592535C(0, &qword_1EDA45D70, 0x1E69E58C0);
  sub_1C59B5E3C(v5, v6, 0);
  sub_1C59B5E3C(v2, v3, 0);
  v4 = 0;
  v7 = 0;
  v8 = 0;
  if (sub_1C5BCB744())
  {
    v8 = sub_1C5BCB744();
    v4 = 0;
    v7 = 0;
  }

LABEL_6:
  sub_1C59B5190(v2, v3, v4);
  sub_1C59B5190(v5, v6, v7);
  return v8 & 1;
}

uint64_t sub_1C5A5F81C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1C5A5F864(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C5A5F8C4()
{
  result = qword_1EC195338;
  if (!qword_1EC195338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195338);
  }

  return result;
}

void sub_1C5A5F918()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1C59B5E3C(*v0, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195340, &unk_1C5BDF6C8);
  sub_1C5BC96B4();
  v4 = v10;
  v5 = &v10[OBJC_IVAR____TtCV11MediaCoreUI16MetalTextureView11Coordinator_source];
  v6 = *&v10[OBJC_IVAR____TtCV11MediaCoreUI16MetalTextureView11Coordinator_source];
  v7 = *&v10[OBJC_IVAR____TtCV11MediaCoreUI16MetalTextureView11Coordinator_source + 8];
  *v5 = v1;
  *(v5 + 1) = v2;
  LOBYTE(v1) = v5[16];
  v5[16] = v3;
  sub_1C5A5FC84(v6, v7, v1);
  sub_1C5A5FC9C(v6, v7, v1);
  v8[0] = v6;
  v8[1] = v7;
  v9 = v1;
  sub_1C5A5E9A8(v8);

  sub_1C5A5FC9C(v6, v7, v1);
}

double sub_1C5A5F9EC(void *a1)
{
  if (qword_1EC190888 != -1)
  {
    swift_once();
  }

  v2 = sub_1C5BC7D64();
  __swift_project_value_buffer(v2, qword_1EC1A6D48);
  v3 = a1;
  v4 = sub_1C5BC7D44();
  v5 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136380675;
    v8 = v3;
    v9 = [v8 description];
    v10 = sub_1C5BCAE74();
    v12 = v11;

    v13 = sub_1C592ADA8(v10, v12, &v16);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_1C5922000, v4, v5, "Dismantle mtkView: %{private}s", v6, 0xCu);
    v14 = __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1C69510F0](v7, -1, -1, v14);
    MEMORY[0x1C69510F0](v6, -1, -1);
  }

  return sub_1C5A5ECC0();
}

id sub_1C5A5FB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = &v4[OBJC_IVAR____TtCV11MediaCoreUI16MetalTextureView11Coordinator_renderer];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v4[OBJC_IVAR____TtCV11MediaCoreUI16MetalTextureView11Coordinator_source];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = -1;
  v11 = &v4[OBJC_IVAR____TtCV11MediaCoreUI16MetalTextureView11Coordinator_textureProvider];
  *v11 = 0;
  v11[1] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtCV11MediaCoreUI16MetalTextureView11Coordinator_isLoaded] = 0;
  *&v4[OBJC_IVAR____TtCV11MediaCoreUI16MetalTextureView11Coordinator_displayModeObserver] = 0;
  *v9 = a1;
  v9[1] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *&v4[OBJC_IVAR____TtCV11MediaCoreUI16MetalTextureView11Coordinator_metalContext] = a3;
  *&v4[OBJC_IVAR____TtCV11MediaCoreUI16MetalTextureView11Coordinator_preferredFramesPerSecond] = a4;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for MetalTextureView.Coordinator();
  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_1C5A5FC84(id result, void *a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1C59B5E3C(result, a2, a3 & 1);
  }

  return result;
}

void sub_1C5A5FC9C(void *a1, void *a2, char a3)
{
  if (a3 != -1)
  {
    sub_1C59B5190(a1, a2, a3 & 1);
  }
}

uint64_t sub_1C5A5FCD0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v27 = &v26 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC193058, &qword_1C5BD7418);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  v9 = sub_1C5BC7AC4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v16 = OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_playbackStartDate;
  swift_beginAccess();
  sub_1C59400B0(v0 + v16, v8, &unk_1EC193058, &qword_1C5BD7418);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5924EF4(v8, &unk_1EC193058, &qword_1C5BD7418);
  }

  (*(v10 + 32))(v15, v8, v9);
  (*(v10 + 56))(v5, 1, 1, v9);
  swift_beginAccess();
  sub_1C5A67E40(v5, v0 + v16, &unk_1EC193058, &qword_1C5BD7418);
  swift_endAccess();
  sub_1C5BC7AA4();
  sub_1C5BC7A74();
  v19 = v18;
  v20 = *(v10 + 8);
  v20(v12, v9);
  sub_1C5BC7AB4();
  sub_1C5BC7A84();
  v22 = v21;
  v20(v12, v9);
  v23 = sub_1C5BCB214();
  v24 = v27;
  (*(*(v23 - 8) + 56))(v27, 1, 1, v23);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v19;
  v25[5] = v22;
  sub_1C5A0BB28(0, 0, v24, &unk_1C5BDF9B0, v25);

  sub_1C5924EF4(v24, &qword_1EC1930A0, &qword_1C5BD7440);
  return (v20)(v15, v9);
}

void *sub_1C5A60078()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F20, &qword_1C5BD88C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v56 = &v52 - v3;
  v4 = sub_1C5BCB5F4();
  v5 = *(v4 - 8);
  v57 = v4;
  v58 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v54 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A440, &unk_1C5BDFC40);
  v8 = *(v7 - 8);
  v59 = v7;
  v60 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v52 - v9;
  v53 = sub_1C5BC7B04();
  v10 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195550, &qword_1C5BDFB78);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v52 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195548, &qword_1C5BDFB70);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v52 - v19;
  v0[2] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195520, &unk_1C5BDFB60);
  swift_allocObject();
  v0[3] = sub_1C5BC7F44();
  v0[4] = 0;
  v21 = OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator__looper;
  v61 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195408, &qword_1C5BDF7A0);
  sub_1C5BC7FF4();
  (*(v18 + 32))(v1 + v21, v20, v17);
  v22 = OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator__error;
  v61 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195418, &qword_1C5BDF7A8);
  sub_1C5BC7FF4();
  (*(v14 + 32))(v1 + v22, v16, v13);
  v23 = OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_errorSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193480, &qword_1C5BD7EB0);
  swift_allocObject();
  *(v1 + v23) = sub_1C5BC7F44();
  *(v1 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator____lazy_storage___errorPublisher) = 0;
  v24 = v1 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_currentPresentationSize;
  *v24 = 0;
  *(v24 + 1) = 0;
  v24[16] = 1;
  v25 = OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_signposts;
  type metadata accessor for MotionSignposts(0);
  swift_allocObject();
  *(v1 + v25) = sub_1C59DA44C();
  v26 = (v1 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_nextAssetRequestID);
  sub_1C5BC7AF4();
  v27 = sub_1C5BC7AD4();
  v29 = v28;
  (*(v10 + 8))(v12, v53);
  *v26 = v27;
  v26[1] = v29;
  v30 = (v1 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_currentAssetRequestID);
  *v30 = 0;
  v30[1] = 0;
  *(v1 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_shouldResetOnSizeChange) = 1;
  v31 = OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_lastCommandExecution;
  v32 = type metadata accessor for LooperConfigurator.CommandExecution(0);
  (*(*(v32 - 8) + 56))(v1 + v31, 1, 1, v32);
  v33 = v1 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_looperItemResolution;
  *v33 = 0;
  *(v33 + 1) = 0;
  v33[16] = 1;
  *(v1 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_placementContext) = 0;
  v34 = OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_currentAsset;
  v35 = type metadata accessor for MotionAsset(0);
  (*(*(v35 - 8) + 56))(v1 + v34, 1, 1, v35);
  v36 = OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_playbackStartDate;
  v37 = sub_1C5BC7AC4();
  (*(*(v37 - 8) + 56))(v1 + v36, 1, 1, v37);
  *(v1 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_looperStatus) = 0;
  *(v1 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_configurationTask) = 0;
  v38 = OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_mediaServicesWereResetPublisher;
  *(v1 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_mediaServicesWereResetPublisher) = 0;
  *(v1 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_looperStatusPublisher) = 0;
  *(v1 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_looperTimeControlStatusPublisher) = 0;
  *(v1 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_looperCurrentItemsPublisher) = 0;
  v39 = (v1 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_loggingContext);
  *v39 = 0;
  v39[1] = 0;
  v40 = (v1 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_cacheBucketID);
  *v40 = 0;
  v40[1] = 0;
  v41 = [objc_opt_self() defaultCenter];
  v42 = v54;
  sub_1C5BCB604();

  sub_1C592535C(0, &qword_1EDA4E620, 0x1E69E9610);
  v43 = sub_1C5BCB5A4();
  v61 = v43;
  v44 = sub_1C5BCB594();
  v45 = v56;
  (*(*(v44 - 8) + 56))(v56, 1, 1, v44);
  sub_1C5A68104(&unk_1EDA4E0E0, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  sub_1C5A11814(&qword_1EDA4E630, &qword_1EDA4E620, 0x1E69E9610, MEMORY[0x1E69E8028]);
  v46 = v55;
  v47 = v45;
  v48 = v57;
  sub_1C5BC80D4();
  sub_1C5924EF4(v47, &unk_1EC199F20, &qword_1C5BD88C0);

  (*(v58 + 8))(v42, v48);
  swift_allocObject();
  swift_weakInit();
  sub_1C5924F54(&qword_1EDA4E1B8, &qword_1EC19A440, &unk_1C5BDFC40, MEMORY[0x1E695BE98]);
  v49 = v59;
  v50 = sub_1C5BC8114();

  (*(v60 + 8))(v46, v49);
  *(v1 + v38) = v50;

  return v1;
}

uint64_t sub_1C5A608BC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191EB8, &qword_1C5BD71A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for MotionAsset(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v12 = *(result + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_loggingContext);
    v11 = *(result + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_loggingContext + 8);
    v13 = *(result + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_cacheBucketID + 8);
    v22 = *(result + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_cacheBucketID);
    v14 = qword_1EDA4E1C0;

    if (v14 != -1)
    {
      swift_once();
    }

    v15 = sub_1C5BC7D64();
    __swift_project_value_buffer(v15, qword_1EDA5DB60);
    v16 = sub_1C5BCB4F4();
    v24[0] = v12;
    v24[1] = v11;
    sub_1C5ACCC10(v16, 0xD00000000000003FLL, 0x80000001C5BF91E0, v24);
    v17 = OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_currentAsset;
    swift_beginAccess();
    sub_1C59400B0(v10 + v17, v4, &qword_1EC191EB8, &qword_1C5BD71A0);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {

      return sub_1C5924EF4(v4, &qword_1EC191EB8, &qword_1C5BD71A0);
    }

    else
    {
      sub_1C5A67D1C(v4, v8);
      v18 = (v10 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_currentPresentationSize);
      if (*(v10 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_currentPresentationSize + 16))
      {
        sub_1C5A0520C(v8, type metadata accessor for MotionAsset);
      }

      else
      {
        v20 = *v18;
        v19 = v18[1];
        sub_1C5A65DE0();
        v23[0] = v12;
        v23[1] = v11;
        sub_1C5A61488(v8, v22, v13, v23, v20, v19);

        sub_1C5A0520C(v8, type metadata accessor for MotionAsset);
      }
    }
  }

  return result;
}

uint64_t sub_1C5A60BD8()
{
  if (*(v0 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_configurationTask))
  {

    sub_1C5BCB2A4();
  }

  v1 = OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator__looper;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195548, &qword_1C5BDFB70);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator__error;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195550, &qword_1C5BDFB78);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_1C5924EF4(v0 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_lastCommandExecution, &qword_1EC1934D8, &qword_1C5BDF9A0);
  sub_1C5924EF4(v0 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_currentAsset, &qword_1EC191EB8, &qword_1C5BD71A0);
  sub_1C5924EF4(v0 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_playbackStartDate, &unk_1EC193058, &qword_1C5BD7418);

  return v0;
}

uint64_t sub_1C5A60E18()
{
  sub_1C5A60BD8();

  return swift_deallocClassInstance();
}

void sub_1C5A60E70(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(v1 + 16);
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!a1)
  {
LABEL_10:
    sub_1C5A5FCD0();
    v8 = *(v2 + 16);
    sub_1C5BC7F34();

    return;
  }

  sub_1C592535C(0, &qword_1EC195470, 0x1E6988100);
  v5 = v4;
  v3 = v3;
  v6 = sub_1C5BCB744();

  if ((v6 & 1) == 0)
  {
LABEL_6:
    [v3 pause];
    if (!*(v2 + 16))
    {
      v7 = OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_looperTimeControlStatusPublisher;
      if (*(v2 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_looperTimeControlStatusPublisher))
      {

        sub_1C5BC7EF4();
      }

      *(v2 + v7) = 0;
    }

    goto LABEL_10;
  }
}

uint64_t sub_1C5A60F74()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195518, &qword_1C5BDFB58);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v8 - v3;
  if (*(v0 + 32))
  {
    v5 = *(v0 + 32);
  }

  else
  {
    v8[1] = *(v0 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195520, &unk_1C5BDFB60);
    sub_1C5924F54(&qword_1EC195528, &qword_1EC195520, &unk_1C5BDFB60, MEMORY[0x1E695BF88]);
    sub_1C5A688A0();
    v6 = v0;
    sub_1C5BC80F4();
    sub_1C5924F54(&qword_1EC195540, &qword_1EC195518, &qword_1C5BDFB58, MEMORY[0x1E695BD38]);
    v5 = sub_1C5BC8064();
    (*(v2 + 8))(v4, v1);
    *(v6 + 32) = v5;
  }

  return v5;
}

double sub_1C5A61134()
{
  swift_getKeyPath(byte_1C5BDF8F8);
  swift_getKeyPath(aX_8);
  sub_1C5BC8034();

  if (v4)
  {
  }

  else
  {
    v2 = OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_looperStatusPublisher;
    if (*(v0 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_looperStatusPublisher))
    {

      sub_1C5BC7EF4();
    }

    *(v0 + v2) = 0;

    v3 = OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_looperCurrentItemsPublisher;
    if (*(v0 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_looperCurrentItemsPublisher))
    {

      sub_1C5BC7EF4();
    }

    *(v0 + v3) = 0;
  }

  return result;
}

uint64_t sub_1C5A61250(const char *a1, const char *a2)
{
  swift_getKeyPath(a1);
  swift_getKeyPath(a2);
  sub_1C5BC8034();

  return v4;
}

uint64_t sub_1C5A612BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195508, &unk_1C5BDFB48);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - v3;
  v5 = OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator____lazy_storage___errorPublisher;
  if (*(v0 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator____lazy_storage___errorPublisher))
  {
    v6 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator____lazy_storage___errorPublisher);
  }

  else
  {
    v9[1] = *(v0 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_errorSubject);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193480, &qword_1C5BD7EB0);
    sub_1C5924F54(&qword_1EC193488, &qword_1EC193480, &qword_1C5BD7EB0, MEMORY[0x1E695BF88]);
    v7 = v0;
    sub_1C5BC80F4();
    sub_1C5924F54(&qword_1EC195510, &qword_1EC195508, &unk_1C5BDFB48, MEMORY[0x1E695BD38]);
    v6 = sub_1C5BC8064();
    (*(v2 + 8))(v4, v1);
    *(v7 + v5) = v6;
  }

  return v6;
}

void sub_1C5A61488(uint64_t a1, uint64_t a2, uint64_t a3, void **a4, double a5, double a6)
{
  v82 = a2;
  v83 = a3;
  v81 = *v6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v88 = &v71 - v12;
  v13 = sub_1C5BC7B04();
  v78 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v77 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for MotionAsset(0);
  v15 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v80 = v16;
  v84 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195478, &qword_1C5BDF9B8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v71 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191EB8, &qword_1C5BD71A0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v71 - v25;
  v29 = *a4;
  v28 = a4[1];
  v30 = (v6 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_currentPresentationSize);
  v31 = *(v6 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_currentPresentationSize + 16);
  v32 = &qword_1EC194FB8[9];
  v86 = v28;
  v79 = v13;
  v85 = v29;
  if ((v31 & 1) != 0 || *(v6 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_shouldResetOnSizeChange) == 1 && (*v30 != a5 || v30[1] != a6))
  {
    goto LABEL_11;
  }

  v72 = v22;
  v71 = v26;
  v74 = a1;
  sub_1C5A67EA8(a1, &v71 - v25, type metadata accessor for MotionAsset);
  v33 = v87;
  (*(v15 + 56))(v27, 0, 1, v87);
  v34 = OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_currentAsset;
  swift_beginAccess();
  v35 = *(v17 + 48);
  sub_1C59400B0(v27, v19, &qword_1EC191EB8, &qword_1C5BD71A0);
  v76 = v35;
  sub_1C59400B0(v6 + v34, v35 + v19, &qword_1EC191EB8, &qword_1C5BD71A0);
  v73 = v15;
  v36 = *(v15 + 48);
  if (v36(v19, 1, v33) == 1)
  {
    sub_1C5924EF4(v27, &qword_1EC191EB8, &qword_1C5BD71A0);
    if (v36(v76 + v19, 1, v33) == 1)
    {
      sub_1C5924EF4(v19, &qword_1EC191EB8, &qword_1C5BD71A0);
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v37 = v71;
  sub_1C59400B0(v19, v71, &qword_1EC191EB8, &qword_1C5BD71A0);
  v38 = v76;
  if (v36(v76 + v19, 1, v33) == 1)
  {
    sub_1C5924EF4(v27, &qword_1EC191EB8, &qword_1C5BD71A0);
    sub_1C5A0520C(v37, type metadata accessor for MotionAsset);
LABEL_10:
    sub_1C5924EF4(v19, &qword_1EC195478, &qword_1C5BDF9B8);
    a1 = v74;
    v15 = v73;
    v29 = v85;
    v28 = v86;
    v32 = &qword_1EC194FB8[9];
    v22 = v72;
LABEL_11:
    v39 = (v6 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_loggingContext);
    *v39 = v29;
    v39[1] = v28;
    v40 = v28;
    v41 = a1;
    v42 = v29;

    v76 = type metadata accessor for MotionAsset;
    sub_1C5A67EA8(v41, v22, type metadata accessor for MotionAsset);
    (*(v15 + 56))(v22, 0, 1, v87);
    v43 = v32[118];
    swift_beginAccess();
    sub_1C5A67E40(v22, v6 + v43, &qword_1EC191EB8, &qword_1C5BD71A0);
    swift_endAccess();
    *v30 = a5;
    v30[1] = a6;
    *(v30 + 16) = 0;
    v89[3] = &type metadata for MCUILoggingContext;
    v89[4] = sub_1C5A67CC8();
    v89[0] = v42;
    v89[1] = v40;
    swift_beginAccess();

    v44 = v6;
    sub_1C5B85914(v89);
    swift_endAccess();
    sub_1C5924EF4(v89, &qword_1EC195468, &qword_1C5BDF9A8);
    v45 = (v6 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_nextAssetRequestID);
    v46 = *(v6 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_nextAssetRequestID + 8);
    v87 = *(v6 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_nextAssetRequestID);
    v47 = v87;

    v48 = v77;
    sub_1C5BC7AF4();
    v49 = sub_1C5BC7AD4();
    v51 = v50;
    (*(v78 + 8))(v48, v79);
    *v45 = v49;
    v45[1] = v51;

    v75 = v44;
    v52 = (v44 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_currentAssetRequestID);
    *v52 = v47;
    v52[1] = v46;

    v53 = sub_1C5BCB214();
    (*(*(v53 - 8) + 56))(v88, 1, 1, v53);
    v54 = swift_allocObject();
    swift_weakInit();
    v55 = v15 + 56;
    v56 = v84;
    sub_1C5A67EA8(v41, v84, v76);
    v57 = (*(v55 + 24) + 56) & ~*(v55 + 24);
    v58 = (v80 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = (v58 + 23) & 0xFFFFFFFFFFFFFFF8;
    v60 = (v59 + 23) & 0xFFFFFFFFFFFFFFF8;
    v61 = swift_allocObject();
    v61[2] = 0;
    v61[3] = 0;
    v62 = v86;
    v61[4] = v85;
    v61[5] = v62;
    v61[6] = v54;
    sub_1C5A67D1C(v56, v61 + v57);
    v63 = (v61 + v58);
    *v63 = v87;
    v63[1] = v46;
    v64 = (v61 + v59);
    *v64 = a5;
    v64[1] = a6;
    v65 = (v61 + v60);
    v66 = v83;
    *v65 = v82;
    v65[1] = v66;
    *(v61 + ((v60 + 23) & 0xFFFFFFFFFFFFFFF8)) = v81;

    v67 = v88;
    v68 = sub_1C5A0BB28(0, 0, v88, &unk_1C5BDF9C8, v61);
    sub_1C5924EF4(v67, &qword_1EC1930A0, &qword_1C5BD7440);
    v69 = *(v75 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_configurationTask);
    *(v75 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_configurationTask) = v68;

    sub_1C5A66AE4(v69);

    return;
  }

  v70 = v84;
  sub_1C5A67D1C(v38 + v19, v84);
  LODWORD(v76) = sub_1C5A5E2B0(v37, v70);
  sub_1C5A0520C(v70, type metadata accessor for MotionAsset);
  sub_1C5924EF4(v27, &qword_1EC191EB8, &qword_1C5BD71A0);
  sub_1C5A0520C(v37, type metadata accessor for MotionAsset);
  sub_1C5924EF4(v19, &qword_1EC191EB8, &qword_1C5BD71A0);
  a1 = v74;
  v15 = v73;
  v29 = v85;
  v28 = v86;
  v32 = qword_1EC194FB8 + 72;
  v22 = v72;
  if ((v76 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_getKeyPath(byte_1C5BDF8F8);
  swift_getKeyPath(aX_8);
  sub_1C5BC8034();

  if (v89[0])
  {

    if (v6[2])
    {
      sub_1C5A661BC();
    }
  }
}

uint64_t sub_1C5A61E1C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 120) = v22;
  *(v10 + 128) = v23;
  *(v10 + 104) = a1;
  *(v10 + 112) = a2;
  *(v10 + 88) = a10;
  *(v10 + 96) = v21;
  *(v10 + 72) = a8;
  *(v10 + 80) = a9;
  *(v10 + 56) = a6;
  *(v10 + 64) = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195480, &qword_1C5BDF9D0);
  *(v10 + 136) = v11;
  *(v10 + 144) = *(v11 - 8);
  *(v10 + 152) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195488, &qword_1C5BDF9D8);
  *(v10 + 160) = v12;
  *(v10 + 168) = *(v12 - 8);
  *(v10 + 176) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195490, &qword_1C5BDF9E0);
  *(v10 + 184) = v13;
  *(v10 + 192) = *(v13 - 8);
  *(v10 + 200) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195498, &qword_1C5BDF9E8);
  *(v10 + 208) = v14;
  *(v10 + 216) = *(v14 - 8);
  *(v10 + 224) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1954A0, &qword_1C5BDF9F0);
  *(v10 + 232) = v15;
  *(v10 + 240) = *(v15 - 8);
  *(v10 + 248) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1954A8, &qword_1C5BDF9F8);
  *(v10 + 256) = v16;
  *(v10 + 264) = *(v16 - 8);
  *(v10 + 272) = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1954B0, &unk_1C5BDFA00);
  *(v10 + 280) = v17;
  *(v10 + 288) = *(v17 - 8);
  *(v10 + 296) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  *(v10 + 304) = swift_task_alloc();
  v18 = sub_1C5BC7A24();
  *(v10 + 312) = v18;
  *(v10 + 320) = *(v18 - 8);
  *(v10 + 328) = swift_task_alloc();
  *(v10 + 336) = type metadata accessor for MotionAsset(0);
  *(v10 + 344) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5A62238, 0, 0);
}

uint64_t sub_1C5A62238()
{
  v15 = v0;
  if (qword_1EDA4E1C0 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[7];
  v3 = sub_1C5BC7D64();
  v0[44] = __swift_project_value_buffer(v3, qword_1EDA5DB60);
  v4 = sub_1C5BCB4C4();
  v13 = v2;
  v14 = v1;
  sub_1C5ACCC10(v4, 0xD000000000000022, 0x80000001C5BF8F50, &v13);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[45] = Strong;
  if (!Strong)
  {
    goto LABEL_6;
  }

  if (sub_1C5BCB2D4())
  {
    v7 = v0[7];
    v6 = v0[8];
    v8 = sub_1C5BCB4C4();
    v13 = v7;
    v14 = v6;
    sub_1C5ACCC10(v8, 0xD000000000000038, 0x80000001C5BF9110, &v13);

LABEL_6:

    v9 = v0[1];

    return v9();
  }

  v0[46] = sub_1C5BCB1E4();
  v0[47] = sub_1C5BCB1D4();
  v12 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5A62484, v12, v11);
}

uint64_t sub_1C5A62484()
{
  v1 = *(v0 + 360);

  *(v0 + 520) = *(v1 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_placementContext);

  return MEMORY[0x1EEE6DFA0](sub_1C5A62500, 0, 0);
}

uint64_t sub_1C5A62500()
{
  v0[48] = swift_allocObject();
  swift_weakInit();

  v0[49] = sub_1C5BCB1D4();
  v2 = sub_1C5BCB194();
  v0[50] = v2;
  v0[51] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C5A625CC, v2, v1);
}

uint64_t sub_1C5A625CC()
{
  v15 = v0;
  sub_1C5A67EA8(v0[10], v0[43], type metadata accessor for MotionAsset);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = v0[43];

    v2 = *v1;
LABEL_5:
    v0[52] = v2;

    v11 = sub_1C5A627C0;
    v12 = 0;
    goto LABEL_9;
  }

  (*(v0[40] + 32))(v0[41], v0[43], v0[39]);
  if (sub_1C5BC7934())
  {
    v4 = v0[40];
    v3 = v0[41];
    v5 = v0[39];
    v7 = v0[7];
    v6 = v0[8];

    v8 = sub_1C5BCB4F4();
    v14[0] = v7;
    v14[1] = v6;
    sub_1C5ACCC10(v8, 0xD00000000000003ELL, 0x80000001C5BF90D0, v14);
    v9 = objc_allocWithZone(MEMORY[0x1E6988168]);
    v10 = sub_1C5BC7994();
    v2 = [v9 initWithURL:v10 options:0];

    (*(v4 + 8))(v3, v5);
    goto LABEL_5;
  }

  if (qword_1EC1909D0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EC19A688;
  v0[54] = qword_1EC19A688;
  v11 = sub_1C5A62994;
LABEL_9:

  return MEMORY[0x1EEE6DFA0](v11, v12, 0);
}

uint64_t sub_1C5A627C0()
{
  v12 = v0;
  v1 = [objc_allocWithZone(MEMORY[0x1E6988100]) init];
  v0[53] = v1;
  if (sub_1C5BCB2D4())
  {
    v2 = v0[52];
    v4 = v0[7];
    v3 = v0[8];

    v5 = sub_1C5BCB4C4();
    v11[0] = v4;
    v11[1] = v3;
    sub_1C5ACCC10(v5, 0xD00000000000003BLL, 0x80000001C5BF9010, v11);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v1;
    v0[61] = sub_1C5BCB1D4();
    v10 = sub_1C5BCB194();

    return MEMORY[0x1EEE6DFA0](sub_1C5A635B0, v10, v9);
  }
}

uint64_t sub_1C5A62994()
{
  if (qword_1EC1909D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 432);

  return MEMORY[0x1EEE6DFA0](sub_1C5A62A24, v1, 0);
}

uint64_t sub_1C5A62A24()
{
  *(v0 + 440) = qword_1EC19A690;
  v1 = swift_task_alloc();
  *(v0 + 448) = v1;
  *v1 = v0;
  v1[1] = sub_1C5A62ABC;

  return sub_1C5BAD518();
}

uint64_t sub_1C5A62ABC()
{
  v1 = *(*v0 + 432);

  return MEMORY[0x1EEE6DFA0](sub_1C5A62BCC, v1, 0);
}

uint64_t sub_1C5A62BCC(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 440);
  v5 = *(v4 + 16);
  if (*(v4 + 40) == 1)
  {
    v6 = 0;
    v7 = *(v4 + 24);
    v8 = *(v4 + 32);
    v9 = -1;
    v10 = -1 << *(v5 + 32);
    if (-v10 < 64)
    {
      v9 = ~(-1 << -v10);
    }

    v11 = v9 & *(v5 + 64);
    v12 = (63 - v10) >> 6;
    while (v11)
    {
      v13 = v6;
LABEL_11:
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      if (*(*(*(v5 + 56) + ((v13 << 9) | (8 * v14))) + 48) >= 1)
      {
        v15 = 1;
LABEL_15:
        *(v3 + 521) = v15;
        sub_1C5A680AC(v5, v7, v8, 1);

        v7 = *(v3 + 400);
        a3 = *(v3 + 408);
        v16 = sub_1C5A63464;
        goto LABEL_16;
      }
    }

    while (1)
    {
      v13 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        v15 = 0;
        goto LABEL_15;
      }

      v11 = *(v5 + 64 + 8 * v13);
      ++v6;
      if (v11)
      {
        v6 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    *(v3 + 456) = *(v5 + 48);
    v7 = *(v3 + 400);
    a3 = *(v3 + 408);
    v16 = sub_1C5A62D20;
LABEL_16:
    a1 = v16;
  }

  return MEMORY[0x1EEE6DFA0](a1, v7, a3);
}

uint64_t sub_1C5A62D20()
{
  v15 = v0;
  if (v0[57] < 1)
  {
    v5 = v0[40];
    v4 = v0[41];
    v6 = v0[39];
    v8 = v0[7];
    v7 = v0[8];

    v9 = sub_1C5BCB4F4();
    v14[0] = v8;
    v14[1] = v7;
    sub_1C5ACCC10(v9, 0xD000000000000034, 0x80000001C5BF8F80, v14);
    v10 = objc_allocWithZone(MEMORY[0x1E6988168]);
    v11 = sub_1C5BC7994();
    v12 = [v10 initWithURL:v11 options:0];

    (*(v5 + 8))(v4, v6);
    v0[52] = v12;

    v3 = sub_1C5A627C0;
    v1 = 0;
    v2 = 0;
  }

  else
  {
    v1 = v0[50];
    v2 = v0[51];
    v3 = sub_1C5A62E6C;
  }

  return MEMORY[0x1EEE6DFA0](v3, v1, v2);
}

uint64_t sub_1C5A62E6C()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = [objc_opt_self() mainScreen];
  [v6 scale];
  v8 = v7;

  *(v0 + 40) = v5;
  *(v0 + 48) = v4;
  v9 = swift_task_alloc();
  *(v0 + 464) = v9;
  *v9 = v0;
  v9[1] = sub_1C5A62FA8;
  v10 = *(v0 + 328);
  v11 = *(v0 + 120);
  v12 = *(v0 + 128);
  v13 = *(v0 + 88);
  v14 = *(v0 + 96);
  v15 = *(v0 + 520);

  return sub_1C5BAE17C(v10, v13, v14, v11, v12, v15, sub_1C5A680A4, v1, v2 * v8, v3 * v8);
}

uint64_t sub_1C5A62FA8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 472) = a1;

  v3 = *(v2 + 408);
  v4 = *(v2 + 400);

  return MEMORY[0x1EEE6DFA0](sub_1C5A630D0, v4, v3);
}

uint64_t sub_1C5A630D0()
{
  v26 = v0;
  v1 = v0[59];

  switch(v1)
  {
    case 0:
      v12 = v0[7];
      v11 = v0[8];

      v4 = "Motion asset retrieval failed.";
      v5 = sub_1C5BCB4D4();
      v24 = v12;
      v25 = v11;
      v6 = 0xD000000000000025;
      goto LABEL_7;
    case 1:
      v8 = v0[7];
      v7 = v0[8];

      v9 = sub_1C5BCB4D4();
      v24 = v8;
      v25 = v7;
      sub_1C5ACCC10(v9, 0xD00000000000001ELL, 0x80000001C5BF9080, &v24);
      v10 = 1;
LABEL_8:
      v14 = v0[40];
      v13 = v0[41];
      v15 = v0[39];
      sub_1C5A67B2C();
      v16 = swift_allocError();
      *v17 = v10;
      v0[60] = v16;
      swift_willThrow();

      (*(v14 + 8))(v13, v15);
      v18 = sub_1C5A632A8;
      goto LABEL_10;
    case 2:
      v3 = v0[7];
      v2 = v0[8];

      v4 = " before configuring looper.";
      v5 = sub_1C5BCB4D4();
      v24 = v3;
      v25 = v2;
      v6 = 0xD000000000000021;
LABEL_7:
      sub_1C5ACCC10(v5, v6, v4 | 0x8000000000000000, &v24);
      v10 = 2;
      goto LABEL_8;
  }

  v19 = v0[59];
  v21 = v0[40];
  v20 = v0[41];
  v22 = v0[39];

  (*(v21 + 8))(v20, v22);
  v0[52] = v19;

  v18 = sub_1C5A627C0;
LABEL_10:

  return MEMORY[0x1EEE6DFA0](v18, 0, 0);
}

uint64_t sub_1C5A632A8()
{
  v1 = v0[60];
  v2 = v0[45];
  v3 = v0[38];

  v4 = sub_1C5BCB214();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);

  v5 = v1;
  v6 = sub_1C5BCB1D4();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v2;
  v7[5] = v1;
  sub_1C5AD0FB8(0, 0, v3, &unk_1C5BDFAF0, v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1C5A63464()
{
  v15 = v0;
  if (*(v0 + 521) == 1)
  {
    v1 = *(v0 + 400);
    v2 = *(v0 + 408);
    v3 = sub_1C5A62E6C;
  }

  else
  {
    v5 = *(v0 + 320);
    v4 = *(v0 + 328);
    v6 = *(v0 + 312);
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);

    v9 = sub_1C5BCB4F4();
    v14[0] = v8;
    v14[1] = v7;
    sub_1C5ACCC10(v9, 0xD000000000000034, 0x80000001C5BF8F80, v14);
    v10 = objc_allocWithZone(MEMORY[0x1E6988168]);
    v11 = sub_1C5BC7994();
    v12 = [v10 initWithURL:v11 options:0];

    (*(v5 + 8))(v4, v6);
    *(v0 + 416) = v12;

    v3 = sub_1C5A627C0;
    v1 = 0;
    v2 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v3, v1, v2);
}

uint64_t sub_1C5A635B0()
{

  *(v0 + 496) = sub_1C5B77464();

  return MEMORY[0x1EEE6DFA0](sub_1C5A63624, 0, 0);
}

uint64_t sub_1C5A63624()
{
  v1 = *(v0 + 416);
  *(v0 + 504) = sub_1C5BCB1D4();
  v3 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5A636B8, v3, v2);
}

uint64_t sub_1C5A636B8()
{
  v1 = *(v0 + 416);

  *(v0 + 512) = [objc_allocWithZone(MEMORY[0x1E69880B0]) initWithAsset_];

  return MEMORY[0x1EEE6DFA0](sub_1C5A63748, 0, 0);
}

uint64_t sub_1C5A63748()
{
  v60 = v0;
  v1 = v0[53];
  v2 = v0[37];
  v53 = v0[38];
  v3 = v0[36];
  v33 = v0[35];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[32];
  v38 = v0[31];
  v40 = v0[29];
  v41 = v0[30];
  v35 = v0[28];
  v56 = v0[27];
  v7 = v0[25];
  v36 = v0[24];
  v37 = v0[26];
  v34 = v0[23];
  v48 = v0[20];
  v50 = v0[21];
  v42 = v0[19];
  v44 = v0[22];
  v45 = v0[18];
  v43 = v0[17];
  v55 = v0[8];
  v46 = v0[7];
  v39 = [objc_opt_self() playerLooperWithPlayer:v1 templateItem:v0[64]];
  [v1 _setDisallowsVideoLayerDisplayCompositing_];

  swift_getKeyPath(byte_1C5BDFA10);
  sub_1C5BC7924();

  v32 = MEMORY[0x1E6969F80];
  sub_1C5924F54(&qword_1EC1954B8, &qword_1EC1954A8, &qword_1C5BDF9F8, MEMORY[0x1E6969F80]);
  sub_1C5A68104(&qword_1EC1954C0, type metadata accessor for Status, &unk_1C5BD0714);
  sub_1C5BC80F4();
  (*(v5 + 8))(v4, v6);
  swift_allocObject();
  swift_weakInit();
  v8 = MEMORY[0x1E695BD38];
  sub_1C5924F54(&qword_1EC1954C8, &qword_1EC1954B0, &unk_1C5BDFA00, MEMORY[0x1E695BD38]);
  v58 = sub_1C5BC8114();

  (*(v3 + 8))(v2, v33);
  swift_getKeyPath(asc_1C5BDFA58);
  sub_1C5BC7924();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1C5924F54(&qword_1EC1954D0, &qword_1EC195490, &qword_1C5BDF9E0, v32);
  sub_1C5BC8074();

  (*(v36 + 8))(v7, v34);
  sub_1C5924F54(&qword_1EC1954D8, &qword_1EC195498, &qword_1C5BDF9E8, MEMORY[0x1E695BC80]);
  sub_1C5BC80F4();
  (*(v56 + 8))(v35, v37);
  swift_allocObject();
  swift_weakInit();
  sub_1C5924F54(&qword_1EC1954E0, &qword_1EC1954A0, &qword_1C5BDF9F0, v8);
  v57 = sub_1C5BC8114();

  (*(v41 + 8))(v38, v40);
  swift_getKeyPath(asc_1C5BDFA98);
  sub_1C5BC7924();

  sub_1C5924F54(&qword_1EC1954E8, &qword_1EC195480, &qword_1C5BDF9D0, v32);
  sub_1C5A68170();
  sub_1C5BC80F4();
  (*(v45 + 8))(v42, v43);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v46;
  v10[4] = v55;
  v10[5] = v39;
  sub_1C5924F54(&qword_1EC195500, &qword_1EC195488, &qword_1C5BDF9D8, v8);

  v47 = v39;
  v11 = sub_1C5BC8114();

  (*(v50 + 8))(v44, v48);
  v12 = sub_1C5BCB214();
  v13 = (*(v12 - 8) + 56);
  v51 = *v13;
  (*v13)(v53, 1, 1, v12);
  v14 = swift_allocObject();
  swift_weakInit();

  v15 = sub_1C5BCB1D4();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v14;
  v16[5] = v58;
  v16[6] = v57;
  v16[7] = v11;

  sub_1C5AD0FB8(0, 0, v53, &unk_1C5BDFAD0, v16);

  v18 = sub_1C5BCB2D4();
  v19 = v0[64];
  v20 = v0[62];
  v21 = v0[53];
  v54 = v0[52];
  v22 = v0[7];
  v23 = v0[8];
  if (v18)
  {

    v24 = sub_1C5BCB4C4();
    v59[0] = v22;
    v59[1] = v23;
    sub_1C5ACCC10(v24, 0xD00000000000004ELL, 0x80000001C5BF8FC0, v59);
  }

  else
  {
    v49 = v0[38];
    v51();
    v52 = v19;
    v25 = swift_allocObject();
    swift_weakInit();

    v26 = v21;

    v27 = v47;

    v28 = sub_1C5BCB1D4();
    v29 = swift_allocObject();
    v29[2] = v28;
    v29[3] = MEMORY[0x1E69E85E0];
    v29[4] = v25;
    v29[5] = v20;
    v29[6] = v22;
    v29[7] = v23;
    v29[8] = v27;
    v29[9] = v26;

    sub_1C5AD0FB8(0, 0, v49, &unk_1C5BDFAE0, v29);
  }

  v30 = v0[1];

  return v30();
}

double sub_1C5A64068(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C5BC7A24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = sub_1C5BCB214();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    (*(v4 + 16))(&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    sub_1C5BCB1E4();

    v14 = sub_1C5BCB1D4();
    v15 = (*(v4 + 80) + 40) & ~*(v4 + 80);
    v16 = swift_allocObject();
    v17 = MEMORY[0x1E69E85E0];
    *(v16 + 2) = v14;
    *(v16 + 3) = v17;
    *(v16 + 4) = v12;
    (*(v4 + 32))(&v16[v15], v6, v3);
    sub_1C5AD0FB8(0, 0, v9, &unk_1C5BDFB40, v16);
  }

  return result;
}

uint64_t sub_1C5A64294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1C5BC7A24();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  sub_1C5BCB1E4();
  v5[7] = sub_1C5BCB1D4();
  v8 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5A64388, v8, v7);
}

uint64_t sub_1C5A64388()
{
  v1 = v0[2];

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = [v2 currentItem];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 asset];

      if (v5)
      {
        objc_opt_self();
        v6 = swift_dynamicCastObjCClass();
        if (v6)
        {
          v8 = v0[5];
          v7 = v0[6];
          v9 = v0[4];
          v10 = [v6 URL];
          sub_1C5BC79E4();

          v11 = sub_1C5BC79D4();
          (*(v8 + 8))(v7, v9);
          if (v11)
          {
            sub_1C5A65EDC();
          }
        }
      }
    }
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1C5A644C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1C5BCB1E4();
  v5[4] = sub_1C5BCB1D4();
  v7 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5A64560, v7, v6);
}

uint64_t sub_1C5A64560()
{
  v1 = *(v0 + 24);

  v2 = v1;
  sub_1C5A67B80(v1);

  v3 = *(v0 + 8);

  return v3();
}

double sub_1C5A645DC(uint64_t *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = *a1;
  v7 = sub_1C5BCB214();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1C5BCB1E4();

  v9 = sub_1C5BCB1D4();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  v10[5] = v6;

  sub_1C5AD0FB8(0, 0, v5, &unk_1C5BDFB30, v10);

  return result;
}

uint64_t sub_1C5A6476C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  sub_1C5BCB1E4();
  v5[8] = sub_1C5BCB1D4();
  v7 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5A64804, v7, v6);
}

uint64_t sub_1C5A64804()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath(byte_1C5BDF8F8);
    swift_getKeyPath(aX_8);
    sub_1C5BC8034();

    v1 = v0[5];
    if (v1)
    {
      v2 = v0[7];

      sub_1C5A66CA4(v2);
    }
  }

  v3 = v0[1];

  return v3();
}

void sub_1C5A648F8(void *a1@<X0>, BOOL *a3@<X8>)
{
  if (*a1 == 2 && (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v5 = Strong;
    [Strong rate];
    v7 = v6;

    v8 = v7 == 1.0;
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
}

double sub_1C5A64988(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_1C5BCB214();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1C5BCB1E4();

  v7 = sub_1C5BCB1D4();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;

  sub_1C5AD0FB8(0, 0, v4, &unk_1C5BDFB20, v8);

  return result;
}

uint64_t sub_1C5A64B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  sub_1C5BCB1E4();
  *(v4 + 72) = sub_1C5BCB1D4();
  v6 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5A64BA0, v6, v5);
}

uint64_t sub_1C5A64BA0()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();

    sub_1C5B860F0();
    swift_endAccess();
  }

  v1 = *(v0 + 8);

  return v1();
}

void sub_1C5A64C80(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 loopingPlayerItems];
  sub_1C592535C(0, &qword_1EC1939E8, 0x1E69880B0);
  v4 = sub_1C5BCB054();

  *a2 = v4;
}

double sub_1C5A64CF4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v49 = (&v38 - v16);
  v17 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (v17 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C5BCB984())
    {
      v38 = a5;
      v39 = v11;
      v40 = a3;
      v41 = a4;
      a4 = 0;
      v47 = v17 & 0xFFFFFFFFFFFFFF8;
      v48 = v17 & 0xC000000000000001;
      v45 = i;
      v46 = v17;
      while (1)
      {
        if (v48)
        {
          v20 = MEMORY[0x1C694FD20](a4, v17);
        }

        else
        {
          if (a4 >= *(v47 + 16))
          {
            goto LABEL_23;
          }

          v20 = *(v17 + 8 * a4 + 32);
        }

        v21 = v20;
        v22 = a4 + 1;
        if (__OFADD__(a4, 1))
        {
          break;
        }

        a5 = sub_1C5BCB214();
        v23 = *(a5 - 1);
        v24 = *(v23 + 56);
        v25 = v49;
        v43 = v23 + 56;
        v44 = v24;
        v24(v49, 1, 1, a5);
        v11 = swift_allocObject();
        v11[2] = 0;
        v11[3] = 0;
        v11[4] = v21;
        sub_1C59400B0(v25, v14, &qword_1EC1930A0, &qword_1C5BD7440);
        LODWORD(v25) = (*(v23 + 48))(v14, 1, a5);
        v26 = v21;

        if (v25 == 1)
        {
          sub_1C5924EF4(v14, &qword_1EC1930A0, &qword_1C5BD7440);
        }

        else
        {
          sub_1C5BCB204();
          (*(v23 + 8))(v14, a5);
        }

        v27 = v11[2];
        swift_unknownObjectRetain();

        if (v27)
        {
          swift_getObjectType();
          a3 = sub_1C5BCB194();
          v29 = v28;
          swift_unknownObjectRelease();
        }

        else
        {
          a3 = 0;
          v29 = 0;
        }

        sub_1C5924EF4(v49, &qword_1EC1930A0, &qword_1C5BD7440);
        if (v29 | a3)
        {
          v50 = 0;
          v51 = 0;
          v52 = a3;
          v53 = v29;
        }

        swift_task_create();

        ++a4;
        v17 = v46;
        if (v22 == v45)
        {
          v30 = v39;
          v44(v39, 1, 1, a5);
          sub_1C5BCB1E4();
          v31 = v41;

          v32 = v38;
          v33 = Strong;

          v34 = sub_1C5BCB1D4();
          v35 = swift_allocObject();
          v36 = MEMORY[0x1E69E85E0];
          v35[2] = v34;
          v35[3] = v36;
          v37 = v40;
          v35[4] = v33;
          v35[5] = v37;
          v35[6] = v31;
          v35[7] = v32;
          sub_1C5AD0FB8(0, 0, v30, &unk_1C5BDFB10, v35);

          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

LABEL_20:
  }

  return result;
}

uint64_t sub_1C5A65168()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C592ABD4;

  return sub_1C5B775EC();
}

uint64_t sub_1C5A651F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_1C5BCB1E4();
  v7[6] = sub_1C5BCB1D4();
  v9 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5A65294, v9, v8);
}

uint64_t sub_1C5A65294()
{
  v14 = v0;
  v1 = v0[2];

  v2 = (v1 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_looperItemResolution);
  if ((*(v1 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_looperItemResolution + 16) & 1) == 0)
  {
    v4 = *v2;
    v3 = v2[1];
    if (qword_1EDA4E1C0 != -1)
    {
      swift_once();
    }

    v5 = v0[4];
    v6 = v0[3];
    v7 = sub_1C5BC7D64();
    __swift_project_value_buffer(v7, qword_1EDA5DB60);
    sub_1C5BCBA94();
    MEMORY[0x1C694F170](0xD000000000000032, 0x80000001C5BF91A0);
    v8 = sub_1C5BCB304();
    MEMORY[0x1C694F170](v8);

    MEMORY[0x1C694F170](0x203A68203BLL, 0xE500000000000000);
    v9 = sub_1C5BCB304();
    MEMORY[0x1C694F170](v9);

    MEMORY[0x1C694F170](62, 0xE100000000000000);
    MEMORY[0x1C694F170](540702524, 0xE400000000000000);

    v10 = sub_1C5BCB4C4();
    v13[0] = v6;
    v13[1] = v5;
    sub_1C5ACCC10(v10, 0, 0xE000000000000000, v13);

    sub_1C5B77A64(v4, v3);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1C5A6548C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  sub_1C5BCB1E4();
  v7[9] = sub_1C5BCB1D4();
  v9 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5A65528, v9, v8);
}

uint64_t sub_1C5A65528()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = v0[7];
    v3 = v0[8];
    *(Strong + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_looperStatusPublisher) = v0[6];
    v4 = Strong;

    *(v4 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_looperTimeControlStatusPublisher) = v2;

    *(v4 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_looperCurrentItemsPublisher) = v3;
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1C5A65628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v13;
  v8[14] = a6;
  v8[15] = a7;
  v8[12] = a4;
  v8[13] = a5;
  sub_1C5BCB1E4();
  v8[18] = sub_1C5BCB1D4();
  v10 = sub_1C5BCB194();
  v8[19] = v10;
  v8[20] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1C5A656D0, v10, v9);
}

uint64_t sub_1C5A656D0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[21] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[22] = v2;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930D0, &qword_1C5BD4FE0);
    v0[23] = v3;
    *v2 = v0;
    v2[1] = sub_1C5A657F8;
    v4 = v0[13];
    v5 = MEMORY[0x1E69E7288];
    v6 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA10](v3, v4, v6, v3, v5);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1C5A657F8()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);
  if (v0)
  {
    v5 = sub_1C5A65AF0;
  }

  else
  {
    v5 = sub_1C5A65934;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1C5A65934()
{
  v14 = v0;

  v1 = v0[21];
  v3 = v0[16];
  v2 = v0[17];
  swift_beginAccess();

  sub_1C5B860F0();
  swift_endAccess();

  swift_getKeyPath(byte_1C5BDF8F8);
  swift_getKeyPath(aX_8);
  v0[11] = v3;

  v4 = v3;
  sub_1C5BC8044();
  sub_1C5A61134();
  v5 = *(v1 + 16);
  *(v1 + 16) = v2;
  v6 = v2;
  sub_1C5A60E70(v5);

  if (qword_1EDA4E1C0 != -1)
  {
    swift_once();
  }

  v8 = v0[14];
  v7 = v0[15];
  v9 = sub_1C5BC7D64();
  __swift_project_value_buffer(v9, qword_1EDA5DB60);
  v10 = sub_1C5BCB4F4();
  v13[0] = v8;
  v13[1] = v7;
  sub_1C5ACCC10(v10, 0xD00000000000001BLL, 0x80000001C5BF9180, v13);
  sub_1C5A661BC();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1C5A65AF0()
{
  v23 = v0;

  if (qword_1EDA4E1C0 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v3 = v0[14];
  v2 = v0[15];
  v4 = sub_1C5BC7D64();
  __swift_project_value_buffer(v4, qword_1EDA5DB60);
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_1C5BCBA94();
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  MEMORY[0x1C694F170](0xD000000000000026, 0x80000001C5BF9150);
  v0[10] = v1;
  sub_1C5BCBBA4();
  MEMORY[0x1C694F170](46, 0xE100000000000000);
  v5 = v0[8];
  v6 = v0[9];
  v7 = sub_1C5BCB4D4();
  v21 = v3;
  v22 = v2;
  sub_1C5ACCC10(v7, v5, v6, &v21);

  sub_1C5A67B2C();
  v8 = swift_allocError();
  *v9 = 1;
  sub_1C5A67B80(v8);

  v10 = v0[21];
  v12 = v0[16];
  v11 = v0[17];
  swift_beginAccess();

  sub_1C5B860F0();
  swift_endAccess();

  swift_getKeyPath(byte_1C5BDF8F8);
  swift_getKeyPath(aX_8);
  v0[11] = v12;

  v13 = v12;
  sub_1C5BC8044();
  sub_1C5A61134();
  v14 = *(v10 + 16);
  *(v10 + 16) = v11;
  v15 = v11;
  sub_1C5A60E70(v14);

  if (qword_1EDA4E1C0 != -1)
  {
    swift_once();
  }

  v17 = v0[14];
  v16 = v0[15];
  __swift_project_value_buffer(v4, qword_1EDA5DB60);
  v18 = sub_1C5BCB4F4();
  v21 = v17;
  v22 = v16;
  sub_1C5ACCC10(v18, 0xD00000000000001BLL, 0x80000001C5BF9180, &v21);
  sub_1C5A661BC();

  v19 = v0[1];

  return v19();
}

uint64_t sub_1C5A65DE0()
{
  if (qword_1EDA4E1C0 != -1)
  {
    swift_once();
  }

  v1 = sub_1C5BC7D64();
  __swift_project_value_buffer(v1, qword_1EDA5DB60);
  v3 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_loggingContext);
  v2 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_loggingContext + 8);

  v4 = sub_1C5BCB4F4();
  v7[0] = v3;
  v7[1] = v2;
  sub_1C5ACCC10(v4, 0x6E69747465736552, 0xEC0000002E2E2E67, v7);

  v5 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_configurationTask);
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_configurationTask) = 0;
  sub_1C5A66AE4(v5);

  return sub_1C5A5FCD0();
}

uint64_t sub_1C5A65EDC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191EB8, &qword_1C5BD71A0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v22 - v2;
  v4 = type metadata accessor for MotionAsset(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_currentAsset;
  swift_beginAccess();
  sub_1C59400B0(v0 + v8, v3, &qword_1EC191EB8, &qword_1C5BD71A0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_1C5924EF4(v3, &qword_1EC191EB8, &qword_1C5BD71A0);
  }

  sub_1C5A67D1C(v3, v7);
  v10 = (v0 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_currentPresentationSize);
  if ((*(v0 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_currentPresentationSize + 16) & 1) == 0)
  {
    v12 = *v10;
    v11 = v10[1];
    if (qword_1EDA4E1C0 != -1)
    {
      swift_once();
    }

    v13 = sub_1C5BC7D64();
    __swift_project_value_buffer(v13, qword_1EDA5DB60);
    v14 = v0 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_loggingContext;
    v16 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_loggingContext);
    v15 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_loggingContext + 8);

    v17 = sub_1C5BCB4F4();
    v23 = v16;
    v24 = v15;
    v18 = v0;
    sub_1C5ACCC10(v17, 0xD000000000000031, 0x80000001C5BF8E50, &v23);

    sub_1C5A65DE0();
    v19 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_cacheBucketID);
    v20 = *(v18 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_cacheBucketID + 8);
    v21 = *(v14 + 8);
    v23 = *v14;
    v24 = v21;

    sub_1C5A61488(v7, v19, v20, &v23, v12, v11);
  }

  return sub_1C5A0520C(v7, type metadata accessor for MotionAsset);
}

uint64_t sub_1C5A66194(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 == *a2)
  {
    return sub_1C5A5E2B0(&a1[*(a3 + 20)], &a2[*(a3 + 20)]);
  }

  else
  {
    return 0;
  }
}

void sub_1C5A661BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC193058, &qword_1C5BD7418);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v25 - v2;
  v4 = type metadata accessor for LooperConfigurator.CommandExecution(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1934D8, &qword_1C5BDF9A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = *(v0 + 16);
  if (v11)
  {
    v12 = OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_lastCommandExecution;
    swift_beginAccess();
    sub_1C59400B0(v0 + v12, v10, &qword_1EC1934D8, &qword_1C5BDF9A0);
    if ((*(v5 + 48))(v10, 1, v4))
    {
      sub_1C5924EF4(v10, &qword_1EC1934D8, &qword_1C5BDF9A0);
    }

    else
    {
      sub_1C5A67EA8(v10, v7, type metadata accessor for LooperConfigurator.CommandExecution);
      v13 = v11;
      sub_1C5924EF4(v10, &qword_1EC1934D8, &qword_1C5BDF9A0);
      v14 = *v7;
      sub_1C5A0520C(v7, type metadata accessor for LooperConfigurator.CommandExecution);
      if (v14 == 2)
      {
        v15 = v0;
        swift_beginAccess();
        sub_1C5B860F0();
        swift_endAccess();
        if (qword_1EDA4E1C0 != -1)
        {
          swift_once();
        }

        v16 = sub_1C5BC7D64();
        __swift_project_value_buffer(v16, qword_1EDA5DB60);
        v17 = (v0 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_loggingContext);
        v19 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_loggingContext);
        v18 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_loggingContext + 8);

        v20 = sub_1C5BCB4F4();
        v26 = v19;
        v27 = v18;
        sub_1C5ACCC10(v20, 0x20676E696C6C6143, 0xEF2E2E2E79616C70, &v26);

        [v13 play];
        v28 = &type metadata for MCUILoggingContext;
        v29 = sub_1C5A67CC8();
        v21 = v17[1];
        v26 = *v17;
        v27 = v21;
        swift_beginAccess();

        sub_1C5B85914(&v26);
        swift_endAccess();
        sub_1C5924EF4(&v26, &qword_1EC195468, &qword_1C5BDF9A8);
        if (*(v15 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_placementContext))
        {
          sub_1C5BC7AA4();
          v22 = 0;
        }

        else
        {
          v22 = 1;
        }

        v23 = sub_1C5BC7AC4();
        (*(*(v23 - 8) + 56))(v3, v22, 1, v23);
        v24 = OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_playbackStartDate;
        swift_beginAccess();
        sub_1C5A67E40(v3, v15 + v24, &unk_1EC193058, &qword_1C5BD7418);
        swift_endAccess();
      }

      else
      {
      }
    }
  }
}

void sub_1C5A665EC()
{
  v1 = (v0 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_looperItemResolution);
  if ((*(v0 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_looperItemResolution + 16) & 1) == 0)
  {
    v3 = *v1;
    v2 = v1[1];
    swift_getKeyPath(byte_1C5BDF8F8);
    swift_getKeyPath(aX_8);
    sub_1C5BC8034();

    if (v10)
    {
      sub_1C5B77A64(v3, v2);
    }

    if (qword_1EDA4E1C0 != -1)
    {
      swift_once();
    }

    v4 = sub_1C5BC7D64();
    __swift_project_value_buffer(v4, qword_1EDA5DB60);
    sub_1C5BCBA94();

    v10 = 0xD000000000000020;
    v11 = 0x80000001C5BF8F20;
    v5 = sub_1C5BCB304();
    MEMORY[0x1C694F170](v5);

    MEMORY[0x1C694F170](0x203A68203BLL, 0xE500000000000000);
    v6 = sub_1C5BCB304();
    MEMORY[0x1C694F170](v6);

    MEMORY[0x1C694F170](62, 0xE100000000000000);
    MEMORY[0x1C694F170](540702524, 0xE400000000000000);

    v8 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_loggingContext);
    v7 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_loggingContext + 8);

    v9 = sub_1C5BCB4F4();
    v10 = v8;
    v11 = v7;
    sub_1C5ACCC10(v9, 0xD000000000000020, 0x80000001C5BF8F20, &v10);
  }
}

double sub_1C5A66AE4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191EB8, &qword_1C5BD71A0);
  *&result = MEMORY[0x1EEE9AC00](v3 - 8).n128_u64[0];
  v6 = v12 - v5;
  if (a1)
  {

    sub_1C5BCB2A4();
    v7 = type metadata accessor for MotionAsset(0);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_currentAsset;
    swift_beginAccess();
    sub_1C5A67E40(v6, v1 + v8, &qword_1EC191EB8, &qword_1C5BD71A0);
    swift_endAccess();
    swift_getKeyPath(byte_1C5BDF8F8);
    swift_getKeyPath(aX_8);
    v12[1] = 0;

    sub_1C5BC8044();
    sub_1C5A61134();
    v9 = *(v1 + 16);
    *(v1 + 16) = 0;
    sub_1C5A60E70(v9);

    v10 = v1 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_currentPresentationSize;
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 1;
    v11 = v1 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_looperItemResolution;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 1;
    sub_1C5A665EC();
  }

  return result;
}

void sub_1C5A66CA4(unint64_t a1)
{
  v2 = OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_looperStatus;
  if (*(v1 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_looperStatus) != a1)
  {
    v3 = v1;
    v6 = *(v1 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_loggingContext);
    v5 = *(v1 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_loggingContext + 8);
    if (a1 < 2)
    {
      v12 = qword_1EDA4E1C0;

      if (v12 != -1)
      {
        swift_once();
      }

      v13 = sub_1C5BC7D64();
      __swift_project_value_buffer(v13, qword_1EDA5DB60);
      sub_1C5BCBA94();

      v44 = 0xD00000000000001FLL;
      v45 = 0x80000001C5BF8E30;
      v14 = AVPlayerLooperStatus.description.getter(*(v3 + v2));
      MEMORY[0x1C694F170](v14);

      MEMORY[0x1C694F170](544175136, 0xE400000000000000);
      v15 = AVPlayerLooperStatus.description.getter(a1);
      MEMORY[0x1C694F170](v15);

      MEMORY[0x1C694F170](46, 0xE100000000000000);
      v16 = 0xD00000000000001FLL;
      v17 = 0x80000001C5BF8E30;
      v18 = sub_1C5BCB4F4();
    }

    else
    {
      if (a1 == 2)
      {
        v19 = qword_1EDA4E1C0;

        if (v19 != -1)
        {
          swift_once();
        }

        v20 = sub_1C5BC7D64();
        __swift_project_value_buffer(v20, qword_1EDA5DB60);
        v21 = sub_1C5BCB4D4();
        v44 = v6;
        v45 = v5;
        sub_1C5ACCC10(v21, 0x66207265706F6F4CLL, 0xEE002E64656C6961, &v44);
        swift_getKeyPath(byte_1C5BDF8F8);
        swift_getKeyPath(aX_8);
        sub_1C5BC8034();

        v22 = v44;
        if (v44 && (v23 = [v44 error], v22, v23) && (v44 = v23, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930D0, &qword_1C5BD4FE0), sub_1C592535C(0, &qword_1EC195458, 0x1E696ABC0), (swift_dynamicCast() & 1) != 0))
        {
          v24 = v43;
          if (v43)
          {
            v25 = [v43 userInfo];
            v26 = sub_1C5BCACB4();

            v27 = sub_1C5BCAE74();
            if (*(v26 + 16))
            {
              v42 = sub_1C596FBD8(v27, v28);
              v30 = v29;

              if (v30)
              {
                sub_1C592B32C(*(v26 + 56) + 32 * v42, &v44);

                type metadata accessor for AVError(0);
                if (swift_dynamicCast())
                {
                  v44 = v43;
                  sub_1C5A68104(&qword_1EDA45F18, type metadata accessor for AVError, &unk_1C5BD1C50);
                  sub_1C5BC78E4();

                  if (v43 + 11819 < 2)
                  {
                    v31 = sub_1C5BCB4F4();
                    v44 = v6;
                    v45 = v5;
                    sub_1C5ACCC10(v31, 0xD00000000000003ALL, 0x80000001C5BF8DF0, &v44);

                    return;
                  }
                }
              }

              else
              {
              }
            }

            else
            {
            }
          }
        }

        else
        {
          v24 = 0;
        }

        v44 = 0;
        v45 = 0xE000000000000000;
        sub_1C5BCBA94();

        v44 = 0xD00000000000001ALL;
        v45 = 0x80000001C5BF8DD0;
        v35 = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195450, &unk_1C5BDF940);
        v36 = sub_1C5BCAEA4();
        MEMORY[0x1C694F170](v36);

        v37 = v44;
        v38 = v45;
        v39 = sub_1C5BCB4D4();
        v44 = v6;
        v45 = v5;
        sub_1C5ACCC10(v39, v37, v38, &v44);

        sub_1C5A67B2C();
        v40 = swift_allocError();
        *v41 = 0;
        sub_1C5A67B80(v40);

        goto LABEL_28;
      }

      if (a1 == 3)
      {
        v7 = qword_1EDA4E1C0;

        if (v7 != -1)
        {
          swift_once();
        }

        v8 = sub_1C5BC7D64();
        __swift_project_value_buffer(v8, qword_1EDA5DB60);
        v9 = sub_1C5BCB4D4();
        v44 = v6;
        v45 = v5;
        sub_1C5ACCC10(v9, 0xD000000000000010, 0x80000001C5BF8DB0, &v44);

        sub_1C5A67B2C();
        v10 = swift_allocError();
        *v11 = 0;
        sub_1C5A67B80(v10);

        goto LABEL_28;
      }

      v32 = qword_1EDA4E1C0;

      if (v32 != -1)
      {
        swift_once();
      }

      v33 = sub_1C5BC7D64();
      __swift_project_value_buffer(v33, qword_1EDA5DB60);
      sub_1C5BCBA94();

      v34 = AVPlayerLooperStatus.description.getter(a1);
      MEMORY[0x1C694F170](v34);

      v16 = 0xD000000000000029;
      v17 = 0x80000001C5BF8D80;
      v18 = sub_1C5BCB4E4();
    }

    v44 = v6;
    v45 = v5;
    sub_1C5ACCC10(v18, v16, v17, &v44);

LABEL_28:
    *(v3 + v2) = a1;
  }
}

uint64_t sub_1C5A673AC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x656C6C65636E6163;
      }

      goto LABEL_8;
    }

    return 0x64656C696166;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x7964616572;
      }

LABEL_8:
      sub_1C5BCBA94();

      v5 = a2(a1);
      MEMORY[0x1C694F170](v5);

      return 0xD000000000000011;
    }

    return 0x6E776F6E6B6E75;
  }
}

void sub_1C5A674F0(uint64_t a1)
{
  sub_1C59AA930(319, &qword_1EC195400, &qword_1EC195408, &qword_1C5BDF7A0);
  if (v1 <= 0x3F)
  {
    sub_1C59AA930(319, &qword_1EC195410, &qword_1EC195418, &qword_1C5BDF7A8);
    if (v2 <= 0x3F)
    {
      sub_1C5A67794(319, &qword_1EC195420, type metadata accessor for LooperConfigurator.CommandExecution);
      if (v3 <= 0x3F)
      {
        sub_1C5A67794(319, &qword_1EC195428, type metadata accessor for MotionAsset);
        if (v4 <= 0x3F)
        {
          sub_1C5A67794(319, &qword_1EC193090, MEMORY[0x1E6969530]);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1C5A67794(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C5BCB804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C5A67810(uint64_t a1)
{
  result = type metadata accessor for MotionAsset(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MotionPlaybackCommand(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MotionPlaybackCommand(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C5A679E0()
{
  result = qword_1EC195440;
  if (!qword_1EC195440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195440);
  }

  return result;
}

double sub_1C5A67A34(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath(byte_1C5BDF8F8);
  swift_getKeyPath(aX_8);
  v3 = v2;

  sub_1C5BC8044();
  return sub_1C5A61134();
}

void sub_1C5A67AB0(const char *a2@<X3>, const char *a3@<X4>, void *a4@<X8>)
{
  swift_getKeyPath(a2);
  swift_getKeyPath(a3);
  sub_1C5BC8034();

  *a4 = v6;
}

unint64_t sub_1C5A67B2C()
{
  result = qword_1EC195448;
  if (!qword_1EC195448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195448);
  }

  return result;
}

void sub_1C5A67B80(void *a1)
{
  swift_getKeyPath(aP_22);
  swift_getKeyPath(a0_4);
  sub_1C5BC8034();

  swift_getKeyPath(aP_22);
  swift_getKeyPath(a0_4);

  v2 = a1;
  sub_1C5BC8044();
  swift_getKeyPath(aP_22);
  swift_getKeyPath(a0_4);
  sub_1C5BC8034();

  if (a1)
  {
  }

  sub_1C5BC7F34();
}

unint64_t sub_1C5A67CC8()
{
  result = qword_1EC195460;
  if (!qword_1EC195460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195460);
  }

  return result;
}

uint64_t sub_1C5A67D1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MotionAsset(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5A67D80(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C592ABD4;

  return sub_1C5B22998(v3, v4);
}

uint64_t sub_1C5A67E40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C5A67EA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C5A67F10(uint64_t a1)
{
  v3 = *(type metadata accessor for MotionAsset(0) - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = v1[3];
  v16 = v1[2];
  v7 = v1[5];
  v14 = v1[4];
  v8 = v1[6];
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1C592A748;

  return sub_1C5A61E1C(v10, v11, a1, v16, v15, v14, v7, v8, v1 + v4, v9);
}

double sub_1C5A680AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_1C5A68104(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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