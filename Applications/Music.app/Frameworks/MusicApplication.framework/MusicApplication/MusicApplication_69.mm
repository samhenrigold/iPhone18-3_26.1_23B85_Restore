id MPModelPerson.monogramArtworkCatalog.getter()
{
  if (![v0 hasLoadedValueForKey:MPModelPropertyPersonName])
  {
    return 0;
  }

  v1 = [v0 name];
  if (v1)
  {
    v2 = v1;
    v3 = sub_AB92A0();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v7 = [objc_opt_self() currentTraitCollection];
  v8 = [v7 layoutDirection];

  v9 = _sSo16MPArtworkCatalogC9MusicCoreE8monogram3for26environmentLayoutDirectionABSgSSSg_So018UITraitEnvironmenthI0VtFZ_0(v3, v5, v8);

  return v9;
}

void MPModelTVSeason.title.getter()
{
  v8[0] = 0;
  v8[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_60EE9C;
  *(v3 + 24) = v2;
  v7[4] = sub_70638;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1822E0;
  v7[3] = &block_descriptor_89_1;
  v4 = _Block_copy(v7);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

double sub_60E32C(void *a1, uint64_t *a2)
{
  sub_AB35C0();
  __chkstk_darwin();
  v4 = sub_AB9250();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = v21 - v8;
  sub_AB9230();
  if ([a1 number] < 1)
  {
    v15 = [a1 show];
    if (v15 && (v16 = v15, v17 = [v15 title], v16, v17))
    {
      v18 = sub_AB92A0();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }

    *a2 = v18;
    a2[1] = v20;
  }

  else
  {
    sub_AB9220();
    v23._countAndFlagsBits = 0x206E6F73616553;
    v23._object = 0xE700000000000000;
    sub_AB9210(v23);
    v21[1] = [a1 number];
    sub_AB91F0();
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    sub_AB9210(v24);
    sub_AB9240();
    (*(v5 + 16))(v7, v9, v4);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v10 = qword_E71B20;
    sub_AB3550();
    v11 = sub_AB9320();
    v13 = v12;
    (*(v5 + 8))(v9, v4);
    *a2 = v11;
    a2[1] = v13;
  }

  return result;
}

void sub_60E670(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = a1 + 32;
  v5 = _swiftEmptyArrayStorage;
  v6 = &_swiftEmptyArrayStorage[4];
LABEL_3:
  v8 = *(a1 + 16);
  if (v3 != v8)
  {
    if (v3 >= v8)
    {
LABEL_34:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v9 = *(v4 + 8 * v3);

        if (v9)
        {
          v7 = *(v9 + 16);
          if (v7)
          {
            break;
          }
        }

        ++v3;
        v10 = *(a1 + 16);
        if (v3 == v10)
        {
          goto LABEL_30;
        }

        if (v3 >= v10)
        {
          goto LABEL_34;
        }
      }

      v11 = 0;
      ++v3;
      while (v11 < v7)
      {
        v12 = v9 + 16 * v11;
        v13 = *(v12 + 40);
        v29 = *(v12 + 32);
        if (v2)
        {

          v14 = v5;
          v15 = __OFSUB__(v2--, 1);
          if (v15)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v16 = *(v5 + 3);
          if (((v16 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_37;
          }

          v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
          if (v17 <= 1)
          {
            v18 = 1;
          }

          else
          {
            v18 = v17;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0, &unk_B1DCB0);
          v14 = swift_allocObject();
          v19 = _swift_stdlib_malloc_size(v14);
          v20 = v19 - 32;
          if (v19 < 32)
          {
            v20 = v19 - 17;
          }

          v21 = v20 >> 4;
          *(v14 + 2) = v18;
          *(v14 + 3) = 2 * (v20 >> 4);
          v22 = v14 + 32;
          v23 = *(v5 + 3) >> 1;
          v6 = &v14[16 * v23 + 32];
          v24 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - v23;
          if (*(v5 + 2))
          {
            v25 = v5 + 32;
            if (v14 != v5 || v22 >= &v25[16 * v23])
            {
              memmove(v22, v25, 16 * v23);
            }

            *(v5 + 2) = 0;
          }

          else
          {
          }

          v15 = __OFSUB__(v24, 1);
          v2 = v24 - 1;
          if (v15)
          {
            goto LABEL_36;
          }
        }

        ++v11;
        *v6 = v29;
        *(v6 + 1) = v13;
        v6 += 16;
        v5 = v14;
        v7 = *(v9 + 16);
        if (v11 == v7)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_30:

  v26 = *(v5 + 3);
  if (v26 >= 2)
  {
    v27 = v26 >> 1;
    v15 = __OFSUB__(v27, v2);
    v28 = v27 - v2;
    if (v15)
    {
LABEL_38:
      __break(1u);
      return;
    }

    *(v5 + 2) = v28;
  }
}

id _sSo16MPArtworkCatalogC9MusicCoreE8monogram3for26environmentLayoutDirectionABSgSSSg_So018UITraitEnvironmenthI0VtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = sub_AB9260();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(MusicMonogramArtworkToken) initWithFullName:v4 rightToLeft:a3 == 1];

  if (!v5)
  {
    return 0;
  }

  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 sharedMonogramArtworkDataSource];
  v9 = objc_allocWithZone(MPArtworkCatalog);
  v10 = v7;
  v11 = [v9 initWithToken:v10 dataSource:v8];

  return v11;
}

unint64_t _sSo13MPModelObjectC9MusicCoreE20MediaKitPlayableKindO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D1BA78;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v4;
  }
}

unint64_t _sSo13MPModelObjectC9MusicCoreE14FavoriteStatusO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D1BB88;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

id _sSo12MPModelAlbumC9MusicCoreE06orphanC16VideoPropertySetSo010MPPropertyH0CvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0, &unk_B1DCB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF4EC0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11060, &unk_B22950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_AF4EC0;
  *(v4 + 32) = sub_AB92A0();
  *(v4 + 40) = v5;
  isa = sub_AB9740().super.isa;

  v7 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v7;
  sub_52A338(inited);
  swift_setDeallocating();
  sub_60F2FC(inited + 32);
  v8 = objc_allocWithZone(MPPropertySet);
  v9 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_E12D10, MPPropertySet_ptr);
  v10 = sub_AB8FD0().super.isa;

  v11 = [v8 initWithProperties:v9 relationships:v10];

  return v11;
}

id sub_60EC10@<X0>(id *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = [*a1 propertySetByCombiningWithPropertySet:*a2];
  *a3 = result;
  return result;
}

uint64_t sub_60EC88()
{

  return swift_deallocObject();
}

uint64_t sub_60ECF4()
{

  return swift_deallocObject();
}

uint64_t sub_60EDCC()
{

  return swift_deallocObject();
}

uint64_t sub_60EE64()
{

  return swift_deallocObject();
}

unint64_t sub_60EEA8()
{
  result = qword_E10F10;
  if (!qword_E10F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E10F10);
  }

  return result;
}

unint64_t sub_60EF00()
{
  result = qword_E10F18;
  if (!qword_E10F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E10F18);
  }

  return result;
}

unint64_t sub_60EF58()
{
  result = qword_E10F20;
  if (!qword_E10F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E10F20);
  }

  return result;
}

unint64_t sub_60EFB0()
{
  result = qword_E10F28;
  if (!qword_E10F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E10F28);
  }

  return result;
}

unint64_t sub_60F008()
{
  result = qword_E10F30;
  if (!qword_E10F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E10F30);
  }

  return result;
}

unint64_t sub_60F060()
{
  result = qword_E10F38[0];
  if (!qword_E10F38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_E10F38);
  }

  return result;
}

uint64_t sub_60F110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for SnapshotIdentifier.Lazy(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_60F190(uint64_t a1)
{
  sub_60F204(319);
  if (v1 <= 0x3F)
  {
    sub_60F27C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_60F204(uint64_t a1)
{
  if (!qword_E11040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E11048, qword_B1D7D0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_E11040);
    }
  }
}

void sub_60F27C(uint64_t a1)
{
  if (!qword_E11050)
  {
    sub_AB3820();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E11048, qword_B1D7D0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_E11050);
    }
  }
}

uint64_t sub_60F2FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11068, qword_B1D7F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double block_copy_helper_121_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_60F3AC()
{

  return swift_deallocObject();
}

unint64_t sub_60F3F0()
{
  result = qword_E110E0;
  if (!qword_E110E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E110E0);
  }

  return result;
}

uint64_t sub_60F444()
{

  return swift_deallocObject();
}

BOOL sub_60F558(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))(a1);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v4 = sub_615090(v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E111E8, &qword_B1DB68);
  v5 = sub_AB8550();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_AF85F0;
  v10 = v9 + v8;
  v11 = *(v6 + 104);
  v11(v10, enum case for AudioVariant.dolbyAtmos(_:), v5);
  v11(v10 + v7, enum case for AudioVariant.dolbyAudio(_:), v5);
  v12 = sub_614974(v9, v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v13 = *(v12 + 16);

  return v13 != 0;
}

unint64_t AudioVariant.symbolString.getter()
{
  v1 = v0;
  v2 = sub_AB8550();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for AudioVariant.dolbyAtmos(_:))
  {
    return 0xD000000000000018;
  }

  if (v7 == enum case for AudioVariant.dolbyAudio(_:))
  {
    return 0xD000000000000018;
  }

  if (v7 == enum case for AudioVariant.lossless(_:) || v7 == enum case for AudioVariant.highResolutionLossless(_:))
  {
    return 0xD000000000000015;
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t AudioVariant.accessibilityLabel.getter()
{
  v1 = v0;
  v2 = sub_AB8550();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for AudioVariant.dolbyAtmos(_:))
  {
    if (qword_E0D4C0 != -1)
    {
      swift_once();
    }

    v8 = &static AccessibilityString.dolbyAtmosLabel;
  }

  else if (v7 == enum case for AudioVariant.dolbyAudio(_:))
  {
    if (qword_E0D4C8 != -1)
    {
      swift_once();
    }

    v8 = &static AccessibilityString.dolbyAudioLabel;
  }

  else if (v7 == enum case for AudioVariant.lossless(_:))
  {
    if (qword_E0D4D8 != -1)
    {
      swift_once();
    }

    v8 = &static AccessibilityString.losslessLabel;
  }

  else
  {
    if (v7 != enum case for AudioVariant.highResolutionLossless(_:))
    {
      (*(v3 + 8))(v6, v2);
      return 0;
    }

    if (qword_E0D4D0 != -1)
    {
      swift_once();
    }

    v8 = &static AccessibilityString.hiResLosslessLabel;
  }

  v9 = *v8;

  return v9;
}

uint64_t AudioVariant.badgeText.getter()
{
  sub_AB35C0();
  __chkstk_darwin();
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v16[-v5];
  v7 = sub_AB8550();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin();
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 16))(v11, v0, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == enum case for AudioVariant.lossless(_:) || v12 == enum case for AudioVariant.highResolutionLossless(_:))
  {
    sub_AB91E0();
    (*(v2 + 16))(v4, v6, v1);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v13 = qword_E71B20;
    sub_AB3550();
    v14 = sub_AB9320();
    (*(v2 + 8))(v6, v1);
  }

  else
  {
    (*(v8 + 8))(v11, v7);
    return 0;
  }

  return v14;
}

uint64_t Array<A>.removingEquivalents()(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11150, &unk_B1D888);
  __chkstk_darwin();
  v2 = &v14 - v1;
  v3 = sub_AB8550();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = sub_615090(v7);

  v15 = v8;
  v9 = *(v4 + 104);
  v9(v6, enum case for AudioVariant.highResolutionLossless(_:), v3);

  v10 = sub_5E9748(v6, v8);

  v11 = *(v4 + 8);
  v11(v6, v3);
  if (v10)
  {
    v9(v6, enum case for AudioVariant.lossless(_:), v3);
    sub_613988(v6, v2);
    v11(v6, v3);
    sub_12E1C(v2, &qword_E11150, &unk_B1D888);
  }

  v12 = v15;
  v9(v6, enum case for AudioVariant.dolbyAtmos(_:), v3);
  LOBYTE(v12) = sub_5E9748(v6, v12);
  v11(v6, v3);
  if (v12)
  {
    v9(v6, enum case for AudioVariant.dolbyAudio(_:), v3);
    sub_613988(v6, v2);
    v11(v6, v3);
    sub_12E1C(v2, &qword_E11150, &unk_B1D888);
  }

  return v15;
}

uint64_t MusicLibrary.DownloadStatus.DownloadPauseReasons.init(mediaPlayerReason:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_AB8230();
  v11 = *(v4 - 8);
  v5 = __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 4) != 0)
  {
    sub_AB8220();
LABEL_10:
    (*(v11 + 32))(a2, v7, v4);
    return (*(v11 + 56))(a2, 0, 1, v4);
  }

  if ((a1 & 2) != 0)
  {
    sub_AB8210();
    goto LABEL_10;
  }

  if (a1)
  {
    sub_AB8200();
    goto LABEL_10;
  }

  v8 = *(v11 + 56);

  return v8(a2, 1, 1, v4, v5);
}

uint64_t MusicLibrary.DownloadStatus.DownloadPauseReasons.alert.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  sub_AB35C0();
  __chkstk_darwin();
  v72 = v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB9250();
  v73 = *(v5 - 8);
  v74 = v5;
  __chkstk_darwin();
  v7 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = v66 - v8;
  v10 = sub_AB8230();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin();
  v16 = v66 - v15;
  (*(v11 + 16))(v66 - v15, v2, v10, v14);
  sub_AB8220();
  sub_615530(&qword_E11158, &type metadata accessor for MusicLibrary.DownloadStatus.DownloadPauseReasons, &protocol conformance descriptor for MusicLibrary.DownloadStatus.DownloadPauseReasons);
  v17 = sub_AB91C0();
  v18 = *(v11 + 8);
  v18(v13, v10);
  if (v17)
  {
    v18(v16, v10);
    sub_5FFF74(0, 0, v75);
    v20 = v75[0];
    result = v75[1];
    v22 = v75[2];
    v21 = v75[3];
    v23 = v77;
    v24 = v78;
    v25 = v79;
    v26 = v80;
    v27 = v76 & 0xFFFFFFFFFFFFFF00;
    v28 = v78 & 0xFFFFFFFFFFFFFF00;
    v29 = v76;
  }

  else
  {
    sub_AB8210();
    v30 = sub_AB91C0();
    v18(v13, v10);
    if (v30)
    {
      v18(v16, v10);
      sub_AB91E0();
      v31 = v73;
      v32 = v74;
      v33 = v73 + 16;
      v34 = *(v73 + 16);
      v34(v7, v9, v74);
      if (qword_E0CB80 != -1)
      {
        swift_once();
      }

      v35 = qword_E71B20;
      v36 = qword_E71B20;
      sub_AB3550();
      v37 = v36;
      v38 = sub_AB9320();
      v70 = v39;
      v71 = v38;
      v40 = *(v31 + 8);
      v40(v9, v32);
      v68 = v40;
      sub_AB91E0();
      v34(v7, v9, v32);
      sub_AB3550();
      v66[1] = v35;
      v73 = sub_AB9320();
      v69 = v41;
      v40(v9, v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040, &qword_B16BE0);
      v42 = swift_allocObject();
      v66[0] = v33;
      v43 = v34;
      v67 = v34;
      v25 = v42;
      *(v42 + 16) = xmmword_AF85F0;
      sub_AB91E0();
      v43(v7, v9, v32);
      sub_AB3550();
      v44 = sub_AB9320();
      v46 = v45;
      v47 = v68;
      v68(v9, v32);
      *(v25 + 32) = 0x6C65636E6163;
      *(v25 + 40) = 0xE600000000000000;
      *(v25 + 48) = v44;
      *(v25 + 56) = v46;
      *(v25 + 64) = 0;
      *(v25 + 72) = 0;
      *(v25 + 80) = 0;
      sub_AB91E0();
      v67(v7, v9, v32);
      sub_AB3550();
      v48 = sub_AB9320();
      v49 = v32;
      v51 = v50;
      v47(v9, v49);
      v21 = v69;
      result = v70;
      v22 = v73;
      v20 = v71;
      v23 = 0;
      v26 = 0;
      v28 = 0;
      v29 = 0;
      v27 = 0;
      *(v25 + 88) = 0x73676E6974746573;
      *(v25 + 96) = 0xE800000000000000;
      *(v25 + 104) = v48;
      *(v25 + 112) = v51;
      *(v25 + 120) = 2;
      *(v25 + 128) = &unk_B1D898;
      *(v25 + 136) = 0;
      v24 = 1;
    }

    else
    {
      sub_AB8200();
      v52 = sub_AB91C0();
      v18(v13, v10);
      v18(v16, v10);
      if (v52)
      {
        sub_AB91E0();
        v53 = v73;
        v54 = v74;
        v55 = *(v73 + 16);
        v55(v7, v9, v74);
        if (qword_E0CB80 != -1)
        {
          swift_once();
        }

        v56 = qword_E71B20;
        sub_AB3550();
        v57 = v56;
        v58 = sub_AB9320();
        v70 = v59;
        v71 = v58;
        v60 = *(v53 + 8);
        v60(v9, v54);
        sub_AB91E0();
        v68 = v55;
        v55(v7, v9, v54);
        sub_AB3550();
        v73 = sub_AB9320();
        v69 = v61;
        v60(v9, v54);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040, &qword_B16BE0);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_AF4EC0;
        sub_AB91E0();
        (v68)(v7, v9, v54);
        sub_AB3550();
        v62 = sub_AB9320();
        v63 = v54;
        v65 = v64;
        v60(v9, v63);
        v21 = v69;
        result = v70;
        v20 = v71;
        v23 = 0;
        v26 = 0;
        v28 = 0;
        v29 = 0;
        v27 = 0;
        *(v25 + 32) = 0x6C65636E6163;
        *(v25 + 40) = 0xE600000000000000;
        v22 = v73;
        *(v25 + 48) = v62;
        *(v25 + 56) = v65;
        *(v25 + 64) = 0;
        v24 = 1;
        *(v25 + 72) = 0;
        *(v25 + 80) = 0;
      }

      else
      {
        v20 = 0;
        result = 0;
        v22 = 0;
        v21 = 0;
        v23 = 0;
        v25 = 0;
        v26 = 0;
        v24 = 0;
        v28 = 0;
        v29 = 0;
        v27 = 0;
      }
    }
  }

  *a1 = v20;
  a1[1] = result;
  a1[2] = v22;
  a1[3] = v21;
  a1[4] = v27 | v29;
  a1[5] = v23;
  a1[6] = v28 | v24;
  a1[7] = v25;
  a1[8] = v26;
  return result;
}

uint64_t Track.musicItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_AB8030();
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin();
  v39 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB86C0();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_AB8860();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v43 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin();
  v14 = &v37 - v13;
  v15 = *(v10 + 16);
  v42 = v1;
  v15(&v37 - v13, v1, v9, v12);
  v16 = (*(v10 + 88))(v14, v9);
  if (v16 == enum case for Track.song(_:))
  {
    (*(v10 + 96))(v14, v9);
    v17 = *(v6 + 32);
    v17(v8, v14, v5);
    a1[3] = v5;
    a1[4] = &protocol witness table for Song;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
    return (v17)(boxed_opaque_existential_0, v8, v5);
  }

  else
  {
    v38 = a1;
    if (v16 == enum case for Track.musicVideo(_:))
    {
      (*(v10 + 96))(v14, v9);
      v20 = v39;
      v21 = *(v40 + 32);
      v22 = v41;
      v21(v39, v14, v41);
      v23 = v38;
      v38[3] = v22;
      v23[4] = &protocol witness table for MusicVideo;
      v24 = __swift_allocate_boxed_opaque_existential_0(v23);
      return (v21)(v24, v20, v22);
    }

    else
    {
      if (qword_E0CD60 != -1)
      {
        swift_once();
      }

      v25 = sub_AB4BC0();
      __swift_project_value_buffer(v25, static Logger.musicKit);
      v26 = v43;
      (v15)(v43, v42, v9);
      v27 = sub_AB4BA0();
      v28 = sub_AB9F40();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v44 = v42;
        *v29 = 136315138;
        sub_615530(&qword_E11160, &type metadata accessor for Track, &protocol conformance descriptor for Track);
        v30 = sub_ABB330();
        v31 = v26;
        v33 = v32;
        v34 = *(v10 + 8);
        v34(v31, v9);
        v35 = sub_500C84(v30, v33, &v44);

        *(v29 + 4) = v35;
        _os_log_impl(&dword_0, v27, v28, "Unsupported Track type=%s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v42);
      }

      else
      {

        v34 = *(v10 + 8);
        v34(v26, v9);
      }

      v36 = v38;
      v38[4] = 0;
      *v36 = 0u;
      *(v36 + 1) = 0u;
      return (v34)(v14, v9);
    }
  }
}

uint64_t Logger.musicKit.unsafeMutableAddressor()
{
  if (qword_E0CD60 != -1)
  {
    swift_once();
  }

  v0 = sub_AB4BC0();

  return __swift_project_value_buffer(v0, static Logger.musicKit);
}

uint64_t Track.album(from:fallbackSource:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v4;
  v6[5] = a3;
  v6[6] = v3;
  v6[3] = a1;
  v6[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F290, &unk_B196C0);
  v6[7] = swift_task_alloc();
  v8 = sub_AB7EA0();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v9 = swift_task_alloc();
  v6[11] = v9;
  *v9 = v6;
  v9[1] = sub_6111E4;

  return sub_6117E0(a1, a2, v3);
}

uint64_t sub_6111E4()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_611330, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_611330()
{
  *(v0 + 16) = *(v0 + 96);
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
  if (!swift_dynamicCast() || (*(v0 + 120) & 1) != 0)
  {

    swift_willThrow();
LABEL_4:

    v1 = *(v0 + 8);

    return v1();
  }

  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 56);
  v6 = *(v0 + 40);

  sub_61522C(v6, v5);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_12E1C(*(v0 + 56), &qword_E0F290, &unk_B196C0);
LABEL_11:
    sub_61529C();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();

    goto LABEL_4;
  }

  (*(*(v0 + 72) + 32))(*(v0 + 80), *(v0 + 56), *(v0 + 64));
  sub_615530(&qword_E11170, &type metadata accessor for MusicPropertySource, &protocol conformance descriptor for MusicPropertySource);
  if (sub_AB91C0())
  {
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    goto LABEL_11;
  }

  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  *v8 = v0;
  v8[1] = sub_6115AC;
  v9 = *(v0 + 80);
  v10 = *(v0 + 48);
  v11 = *(v0 + 24);

  return sub_6117E0(v11, v9, v10);
}

uint64_t sub_6115AC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_611750;
  }

  else
  {
    v2 = sub_6116C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6116C0()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_611750()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_6117E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_AB8030();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F3E0, &unk_B19920);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC98, &qword_B187E0);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v5 = sub_AB86C0();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v6 = sub_AB8860();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_611A08, 0, 0);
}

uint64_t sub_611A08()
{
  v44 = v0;
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v4 = *(v3 + 16);
  v4(v1, v0[4], v2);
  v5 = (*(v3 + 88))(v1, v2);
  if (v5 == enum case for Track.song(_:))
  {
    v6 = v0[20];
    v7 = v0[16];
    v8 = v0[13];
    v9 = v0[14];
    (*(v0[18] + 96))(v6, v0[17]);
    (*(v9 + 32))(v7, v6, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0, &unk_B19F90);
    v10 = swift_allocObject();
    v0[21] = v10;
    *(v10 + 16) = xmmword_AF82B0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F638, &qword_B1A168);
    *(v10 + 32) = sub_AB7D40();
    v11 = swift_task_alloc();
    v0[22] = v11;
    v12 = sub_615530(&qword_E0F630, &type metadata accessor for Song, &protocol conformance descriptor for Song);
    *v11 = v0;
    v11[1] = sub_611FFC;
    v13 = v0[15];
    v14 = v0[13];
    v15 = v0[3];
    v16 = &protocol witness table for Song;
    v17 = &protocol witness table for Song;
LABEL_5:

    return MusicItem<>.with(_:preferredSource:)(v13, v10, v15, v14, v16, v17, v12);
  }

  if (v5 == enum case for Track.musicVideo(_:))
  {
    v18 = v0[20];
    v19 = v0[8];
    v20 = v0[5];
    v21 = v0[6];
    (*(v0[18] + 96))(v18, v0[17]);
    (*(v21 + 32))(v19, v18, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0, &unk_B19F90);
    v10 = swift_allocObject();
    v0[24] = v10;
    *(v10 + 16) = xmmword_AF82B0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E111D8, &qword_B1DB58);
    *(v10 + 32) = sub_AB7D30();
    v22 = swift_task_alloc();
    v0[25] = v22;
    v12 = sub_615530(&qword_E0F5D8, &type metadata accessor for MusicVideo, &protocol conformance descriptor for MusicVideo);
    *v22 = v0;
    v22[1] = sub_612494;
    v13 = v0[7];
    v14 = v0[5];
    v15 = v0[3];
    v16 = &protocol witness table for MusicVideo;
    v17 = &protocol witness table for MusicVideo;
    goto LABEL_5;
  }

  if (qword_E0CD60 != -1)
  {
    swift_once();
  }

  v23 = v0[19];
  v24 = v0[17];
  v25 = v0[4];
  v26 = sub_AB4BC0();
  __swift_project_value_buffer(v26, static Logger.musicKit);
  v4(v23, v25, v24);
  v27 = sub_AB4BA0();
  v28 = sub_AB9F40();
  v29 = os_log_type_enabled(v27, v28);
  v31 = v0[18];
  v30 = v0[19];
  v32 = v0[17];
  if (v29)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v43 = v34;
    *v33 = 136446210;
    sub_615530(&qword_E11160, &type metadata accessor for Track, &protocol conformance descriptor for Track);
    v35 = sub_ABB330();
    v37 = v36;
    v42 = *(v31 + 8);
    v42(v30, v32);
    v38 = sub_500C84(v35, v37, &v43);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_0, v27, v28, "Unexpected Track type %{public}s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
  }

  else
  {

    v42 = *(v31 + 8);
    v42(v30, v32);
  }

  sub_61529C();
  swift_allocError();
  *v39 = 1;
  swift_willThrow();
  v42(v0[20], v0[17]);

  v40 = v0[1];

  return v40();
}

uint64_t sub_611FFC()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_612930;
  }

  else
  {
    v2 = sub_61212C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_61212C()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  sub_AB8690();
  v18 = *(v2 + 8);
  v18(v1, v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F3E8, &qword_B19930);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v4, 1, v5);
  v8 = v0[12];
  v9 = v0[10];
  if (v7 == 1)
  {
    sub_12E1C(v0[10], &qword_E0F3E0, &unk_B19920);
    v10 = sub_AB8770();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
LABEL_4:
    sub_12E1C(v0[12], &qword_E0EC98, &qword_B187E0);
    sub_61529C();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    v18(v0[16], v0[13]);

    v14 = v0[1];
    goto LABEL_6;
  }

  sub_58B9C8(v0[12]);
  (*(v6 + 8))(v9, v5);
  v11 = sub_AB8770();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) == 1)
  {
    goto LABEL_4;
  }

  v15 = v0[12];
  v16 = v0[2];
  v18(v0[16], v0[13]);
  (*(v12 + 32))(v16, v15, v11);

  v14 = v0[1];
LABEL_6:

  return v14();
}

uint64_t sub_612494()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_612A30;
  }

  else
  {
    v2 = sub_6125C4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6125C4(uint64_t a1)
{
  v2 = v1[9];
  v4 = v1[6];
  v3 = v1[7];
  v5 = v1[5];
  sub_AB8010();
  v19 = *(v4 + 8);
  v19(v3, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F3E8, &qword_B19930);
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v2, 1, v6);
  v9 = v1[11];
  v10 = v1[9];
  if (v8 == 1)
  {
    sub_12E1C(v1[9], &qword_E0F3E0, &unk_B19920);
    v11 = sub_AB8770();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
LABEL_4:
    sub_12E1C(v1[11], &qword_E0EC98, &qword_B187E0);
    sub_61529C();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    v19(v1[8], v1[5]);

    v15 = v1[1];
    goto LABEL_6;
  }

  sub_58B9C8(v1[11]);
  (*(v7 + 8))(v10, v6);
  v12 = sub_AB8770();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v9, 1, v12) == 1)
  {
    goto LABEL_4;
  }

  v16 = v1[11];
  v17 = v1[2];
  v19(v1[8], v1[5]);
  (*(v13 + 32))(v17, v16, v12);

  v15 = v1[1];
LABEL_6:

  return v15();
}

uint64_t sub_612930()
{
  (*(v0[14] + 8))(v0[16], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_612A30()
{
  (*(v0[6] + 8))(v0[8], v0[5]);

  v1 = v0[1];

  return v1();
}

NSString sub_612B38()
{
  result = sub_AB9260();
  static MusicLibrary.downloadingStateDidChange = result;
  return result;
}

uint64_t *MusicLibrary.downloadingStateDidChange.unsafeMutableAddressor()
{
  if (qword_E0CD58 != -1)
  {
    swift_once();
  }

  return &static MusicLibrary.downloadingStateDidChange;
}

id static MusicLibrary.downloadingStateDidChange.getter()
{
  if (qword_E0CD58 != -1)
  {
    swift_once();
  }

  v1 = static MusicLibrary.downloadingStateDidChange;

  return v1;
}

uint64_t MusicPin.Action.localizedTitle(for:)(char *a1)
{
  v2 = v1;
  v32 = a1;
  sub_AB35C0();
  __chkstk_darwin();
  v33 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_AB9250();
  v4 = *(v34 - 8);
  __chkstk_darwin();
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v30 - v7;
  v9 = sub_AB4410();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB4440();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin();
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v2, v13, v15);
  v18 = (*(v14 + 88))(v17, v13);
  if (v18 == enum case for MusicPin.Action.navigate(_:))
  {
    (*(v10 + 16))(v12, v32, v9);
    v19 = (*(v10 + 88))(v12, v9);
    if (v19 == enum case for MusicPin.Item.album(_:))
    {
      v31 = v9;
      v32 = v12;
      sub_AB91E0();
      v20 = v34;
      (*(v4 + 16))(v6, v8, v34);
      if (qword_E0CB80 != -1)
      {
        swift_once();
      }

      v21 = qword_E71B20;
      sub_AB3550();
      v22 = sub_AB9320();
      (*(v4 + 8))(v8, v20);
      (*(v10 + 8))(v32, v31);
      return v22;
    }

    v23 = v34;
    if (v19 != enum case for MusicPin.Item.artist(_:) && v19 != enum case for MusicPin.Item.musicVideo(_:) && v19 != enum case for MusicPin.Item.playlist(_:) && v19 != enum case for MusicPin.Item.song(_:))
    {
      (*(v10 + 8))(v12, v9);
      return 0;
    }

    sub_AB91E0();
    (*(v4 + 16))(v6, v8, v23);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v28 = qword_E71B20;
    sub_AB3550();
    v22 = sub_AB9320();
    (*(v4 + 8))(v8, v23);
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    if (v18 != enum case for MusicPin.Action.play(_:) && v18 != enum case for MusicPin.Action.shuffle(_:))
    {
      (*(v14 + 8))(v17, v13);
      return 0;
    }

    sub_AB91E0();
    v24 = v4;
    v25 = *(v4 + 16);
    v26 = v34;
    v25(v6, v8, v34);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v27 = qword_E71B20;
    sub_AB3550();
    v22 = sub_AB9320();
    (*(v24 + 8))(v8, v26);
  }

  return v22;
}

uint64_t sub_613304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_615530(&qword_E111C0, &type metadata accessor for Song, &protocol conformance descriptor for Song);

  return sub_AB7F90();
}

uint64_t sub_613390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_615530(&qword_E111B8, &type metadata accessor for MusicVideo, &protocol conformance descriptor for MusicVideo);

  return sub_AB7F90();
}

uint64_t sub_61341C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_615530(&qword_E111B0, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);

  return sub_AB7F90();
}

uint64_t sub_6134A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_615530(&qword_E111A0, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
  sub_615530(&qword_E111A8, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);

  return sub_AB7F90();
}

uint64_t sub_613564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_615530(&qword_E11190, &type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
  sub_615530(&qword_E11198, &type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);

  return sub_AB7F90();
}

uint64_t sub_613620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_615530(&qword_E11180, &type metadata accessor for MusicPin.Item, &protocol conformance descriptor for MusicPin.Item);
  sub_615530(&qword_E11188, &type metadata accessor for MusicPin.Item, &protocol conformance descriptor for MusicPin.Item);

  return sub_AB7F90();
}

uint64_t sub_6136DC()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, static Logger.musicKit);
  __swift_project_value_buffer(v0, static Logger.musicKit);
  return sub_AB4BB0();
}

uint64_t static Logger.musicKit.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_E0CD60 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  v3 = __swift_project_value_buffer(v2, static Logger.musicKit);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_6137FC(char a1)
{
  v2 = v1;
  v4 = *v1;
  sub_ABB5C0();
  ActionType.rawValue.getter(a1);
  sub_AB93F0();

  v5 = sub_ABB610();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 52;
  }

  v8 = ~v6;
  while (1)
  {
    v9 = ActionType.rawValue.getter(*(*(v4 + 48) + v7));
    v11 = v10;
    if (v9 == ActionType.rawValue.getter(a1) && v11 == v12)
    {
      break;
    }

    v14 = sub_ABB3C0();

    if (v14)
    {
      goto LABEL_11;
    }

    v7 = (v7 + 1) & v8;
    if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 52;
    }
  }

LABEL_11:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_6840F0();
    v17 = v19;
  }

  v15 = *(*(v17 + 48) + v7);
  sub_614140(v7);
  *v2 = v19;
  return v15;
}

uint64_t sub_613988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_AB8550();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_615530(&qword_E10CF8, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
  v31 = a1;
  v10 = sub_AB90D0();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_615530(&qword_E10D00, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
      v19 = sub_AB91C0();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_684104();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_614304(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_613C30(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *v1;
  sub_ABB5C0();
  Library.Menu.Identifier.rawValue.getter(v3);
  sub_AB93F0();

  v5 = sub_ABB610();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 13;
  }

  v8 = ~v6;
  while (1)
  {
    v9 = 0xD000000000000029;
    v10 = "LibraryView.Playlists";
    switch(*(*(v4 + 48) + v7))
    {
      case 1:
        v9 = 0xD000000000000025;
        v10 = "LibraryView.Artists";
        break;
      case 2:
        v9 = 0xD000000000000023;
        v10 = "LibraryView.Albums";
        break;
      case 3:
        v9 = 0xD000000000000022;
        v10 = "LibraryView.Songs";
        break;
      case 4:
        v9 = 0xD000000000000021;
        v10 = "LibraryView.MadeForYou";
        break;
      case 5:
        v9 = 0xD000000000000026;
        v10 = "LibraryView.MusicVideos";
        break;
      case 6:
        v9 = 0xD000000000000027;
        v10 = "LibraryView.Genres";
        break;
      case 7:
        v9 = 0xD000000000000022;
        v10 = "LibraryView.Compilations";
        break;
      case 8:
        v9 = 0xD000000000000028;
        v10 = "LibraryView.Composers";
        break;
      case 9:
        v9 = 0xD000000000000025;
        v10 = "LibraryView.Shows";
        break;
      case 0xA:
        v9 = 0xD000000000000021;
        v10 = "LibraryView.Downloaded";
        break;
      case 0xB:
        v9 = 0xD000000000000026;
        v10 = "LibraryView.Downloading";
        break;
      case 0xC:
        v9 = 0xD000000000000027;
        v10 = "ByPlaylistOrderAscending";
        break;
      default:
        break;
    }

    v11 = v10 | 0x8000000000000000;
    v12 = 0xD000000000000029;
    v13 = "LibraryView.Playlists";
    switch(v3)
    {
      case 1:
        v12 = 0xD000000000000025;
        v13 = "LibraryView.Artists";
        break;
      case 2:
        v12 = 0xD000000000000023;
        v13 = "LibraryView.Albums";
        break;
      case 3:
        v12 = 0xD000000000000022;
        v13 = "LibraryView.Songs";
        break;
      case 4:
        v12 = 0xD000000000000021;
        v13 = "LibraryView.MadeForYou";
        break;
      case 5:
        v12 = 0xD000000000000026;
        v13 = "LibraryView.MusicVideos";
        break;
      case 6:
        v12 = 0xD000000000000027;
        v13 = "LibraryView.Genres";
        break;
      case 7:
        v12 = 0xD000000000000022;
        v13 = "LibraryView.Compilations";
        break;
      case 8:
        v12 = 0xD000000000000028;
        v13 = "LibraryView.Composers";
        break;
      case 9:
        v12 = 0xD000000000000025;
        v13 = "LibraryView.Shows";
        break;
      case 10:
        v12 = 0xD000000000000021;
        v13 = "LibraryView.Downloaded";
        break;
      case 11:
        v12 = 0xD000000000000026;
        v13 = "LibraryView.Downloading";
        break;
      case 12:
        v12 = 0xD000000000000027;
        v13 = "ByPlaylistOrderAscending";
        break;
      default:
        break;
    }

    if (v9 == v12 && v11 == (v13 | 0x8000000000000000))
    {
      break;
    }

    v14 = sub_ABB3C0();

    if (v14)
    {
      goto LABEL_35;
    }

    v7 = (v7 + 1) & v8;
    if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 13;
    }
  }

LABEL_35:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_68471C();
    v17 = v19;
  }

  v15 = *(*(v17 + 48) + v7);
  sub_61460C(v7);
  *v2 = v19;
  return v15;
}

uint64_t sub_614050(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_ABB5B0();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_684730();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_2F187C(v6);
  result = v11;
  *v1 = v12;
  return result;
}

void sub_614140(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_ABABD0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        sub_ABB5C0();
        ActionType.rawValue.getter(v10);
        sub_AB93F0();

        v11 = sub_ABB610() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + v2);
          v14 = (v12 + v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

void sub_614304(int64_t a1)
{
  v3 = sub_AB8550();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_ABABD0();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_615530(&qword_E10CF8, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
        v23 = sub_AB90D0();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

void sub_61460C(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_ABABD0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_ABB5C0();
        sub_AB93F0();

        v10 = sub_ABB610() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
    JUMPOUT(0x614940);
  }

  *(v3 + 16) = v16;
  ++*(v3 + 36);
}

uint64_t sub_614974(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), (swift_stdlib_isStackAllocationSafe() & 1) != 0))
  {
    __chkstk_darwin();
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_614B14(v9, v7, isStackAllocationSafe, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_615578(v14, v7, v17);
    v10 = v17[0];
  }

  return v10;
}

uint64_t sub_614B14(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v29 = a1;
  v6 = sub_AB8550();
  __chkstk_darwin();
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin();
  v39 = &v26 - v11;
  v32 = *(a3 + 16);
  if (v32)
  {
    v28 = 0;
    v12 = 0;
    v37 = *(v9 + 16);
    v38 = v9 + 16;
    v31 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v13 = *(v9 + 72);
    v35 = a4 + 56;
    v36 = v13;
    v14 = (v9 + 8);
    v34 = a4;
    while (1)
    {
      v33 = v12;
      v37(v39, v31 + v36 * v12, v6, v10);
      sub_615530(&qword_E10CF8, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
      v17 = sub_AB90D0();
      v18 = -1 << *(a4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      v21 = 1 << v19;
      if (((1 << v19) & *(v35 + 8 * (v19 >> 6))) == 0)
      {
        break;
      }

      v30 = v14 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v22 = ~v18;
      while (1)
      {
        (v37)(v8, *(v34 + 48) + v19 * v36, v6);
        sub_615530(&qword_E10D00, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
        v23 = sub_AB91C0();
        v15 = *v14;
        (*v14)(v8, v6);
        if (v23)
        {
          break;
        }

        v19 = (v19 + 1) & v22;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v35 + 8 * (v19 >> 6))) == 0)
        {
          a4 = v34;
          goto LABEL_4;
        }
      }

      result = (v15)(v39, v6);
      v25 = v29[v20];
      v29[v20] = v25 | v21;
      if ((v25 & v21) != 0)
      {
        a4 = v34;
LABEL_5:
        v16 = v33;
        goto LABEL_6;
      }

      v16 = v33;
      a4 = v34;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        return result;
      }

      ++v28;
LABEL_6:
      v12 = v16 + 1;
      if (v12 == v32)
      {
        goto LABEL_17;
      }
    }

    v15 = *v14;
LABEL_4:
    v15(v39, v6);
    goto LABEL_5;
  }

  v28 = 0;
LABEL_17:

  return sub_689A14(v29, v27, v28, a4);
}

uint64_t _s8MusicKit12AudioVariantO0A4CoreE1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E111E0, &qword_B1DB60);
  __chkstk_darwin();
  v5 = &v22 - v4;
  v7 = *(v6 + 56);
  v8 = sub_AB8550();
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v10(v5, a1, v8);
  v10(&v5[v7], a2, v8);
  v11 = *(v9 + 88);
  v12 = v11(v5, v8);
  v13 = enum case for AudioVariant.dolbyAtmos(_:);
  if (v12 == enum case for AudioVariant.dolbyAtmos(_:))
  {
    goto LABEL_2;
  }

  v15 = enum case for AudioVariant.dolbyAudio(_:);
  if (v12 == enum case for AudioVariant.dolbyAudio(_:))
  {
    if (v11(&v5[v7], v8) != v13)
    {
LABEL_2:
      (*(v9 + 8))(&v5[v7], v8);
      return 1;
    }
  }

  else if (v12 == enum case for AudioVariant.lossless(_:))
  {
    v16 = v11(&v5[v7], v8);
    if (v16 != v13 && v16 != v15 && v16 != enum case for AudioVariant.highResolutionLossless(_:))
    {
      goto LABEL_2;
    }
  }

  else if (v12 == enum case for AudioVariant.highResolutionLossless(_:))
  {
    v19 = v11(&v5[v7], v8);
    if (v19 != v13 && v19 != v15)
    {
      goto LABEL_2;
    }
  }

  else
  {
    v21 = *(v9 + 8);
    v21(&v5[v7], v8);
    v21(v5, v8);
  }

  return 0;
}

uint64_t sub_615090(uint64_t a1)
{
  v2 = sub_AB8550();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v15 - v6;
  v8 = *(a1 + 16);
  sub_615530(&qword_E10CF8, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
  result = sub_AB9B70();
  v16 = result;
  if (v8)
  {
    v12 = *(v3 + 16);
    v10 = v3 + 16;
    v11 = v12;
    v13 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v14 = *(v10 + 56);
    do
    {
      v11(v5, v13, v2);
      sub_682E84(v7, v5);
      (*(v10 - 8))(v7, v2);
      v13 += v14;
      --v8;
    }

    while (v8);
    return v16;
  }

  return result;
}

uint64_t sub_61522C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F290, &unk_B196C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_61529C()
{
  result = qword_E11168;
  if (!qword_E11168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11168);
  }

  return result;
}

unint64_t sub_61534C()
{
  result = qword_E11178;
  if (!qword_E11178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11178);
  }

  return result;
}

uint64_t sub_6153A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_6154DC();
  result = sub_AB9B70();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_683310(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_615414(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_615488();
  result = sub_AB9B70();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_6836B0(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_615488()
{
  result = qword_E111C8;
  if (!qword_E111C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E111C8);
  }

  return result;
}

unint64_t sub_6154DC()
{
  result = qword_E111D0;
  if (!qword_E111D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E111D0);
  }

  return result;
}

uint64_t sub_615530(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_615578@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_614B14(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t static Logger.music(_:)(uint64_t a1, uint64_t a2)
{

  return sub_AB4BB0();
}

uint64_t *OS_os_log.musicBag.unsafeMutableAddressor()
{
  if (qword_E0CD70 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.musicBag;
}

void **OS_os_log.musicSignposts.unsafeMutableAddressor()
{
  if (qword_E0CD68 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.musicSignposts;
}

uint64_t sub_615788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_615D34();
  result = sub_ABA9A0();
  *a4 = result;
  return result;
}

uint64_t sub_6158B0(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_AB4BC0();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_615950(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_AB4BC0();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_AB4BB0();
}

uint64_t sub_6159EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_AB4BC0();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t Optional.expectNotNil(logger:file:line:function:)@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, unint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v8 = v7;
  v33 = a3;
  v34 = a4;
  v13 = sub_AB31C0();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin();
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*(*(a6 + 16) - 8) + 48))(v7, 1, v15) == 1)
  {
    v30 = a2;
    v32 = a5;
    v18 = sub_AB9F10();
    v19 = sub_AB4BA0();
    v31 = v18;
    if (os_log_type_enabled(v19, v18))
    {
      v20 = swift_slowAlloc();
      v29 = a7;
      v21 = v20;
      v28 = swift_slowAlloc();
      v35 = v28;
      *v21 = 136315650;
      sub_AB30C0();
      v22 = sub_AB30D0();
      v24 = v23;
      (*(v14 + 8))(v17, v13);
      v25 = sub_500C84(v22, v24, &v35);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2048;
      v26 = v34;
      *(v21 + 14) = v33;
      *(v21 + 22) = 2080;
      *(v21 + 24) = sub_500C84(v26, v32, &v35);
      _os_log_impl(&dword_0, v19, v31, "Unexpectedly found nil: %s:%ld %s", v21, 0x20u);
      swift_arrayDestroy();

      a7 = v29;
    }
  }

  return (*(*(a6 - 8) + 16))(a7, v8, a6);
}

unint64_t sub_615D34()
{
  result = qword_E15F40;
  if (!qword_E15F40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E15F40);
  }

  return result;
}

uint64_t MPModelSong.nowPlayingTitle(from:)(void *a1)
{
  sub_AB35C0();
  __chkstk_darwin();
  v3 = sub_AB9250();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v7 = __chkstk_darwin().n128_u64[0];
  v9 = &v23[-v8];
  v10 = [v1 title];
  if (v10)
  {
    v11 = v10;
    v12 = sub_AB92A0();
    v14 = v13;

    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      return v12;
    }
  }

  if (!a1)
  {
    goto LABEL_12;
  }

  v16 = [a1 name];
  if (!v16)
  {
    goto LABEL_12;
  }

  v17 = v16;
  v12 = sub_AB92A0();
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

LABEL_12:
    sub_AB91E0();
    (*(v4 + 16))(v6, v9, v3);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v21 = qword_E71B20;
    sub_AB3550();
    v12 = sub_AB9320();
    (*(v4 + 8))(v9, v3);
  }

  return v12;
}

id MPModelSong.nowPlayingAttributedTitle(from:explicitBadgeConfigurator:)(void *a1, void (*a2)(char *), uint64_t a3)
{
  v7 = sub_AB2F20();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB2F50();
  __chkstk_darwin();
  MPModelSong.nowPlayingTitle(from:)(a1);
  sub_AB2F40();
  sub_AB2F30();
  result = [v3 isExplicitSong];
  if (result)
  {
    v19[1] = a3;
    v20 = a2;
    v12 = String.nonBreakingSpace.unsafeMutableAddressor();
    v13 = *v12;
    v14 = v12[1];
    v15 = qword_E0D568;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = (static ExplicitRestrictionsController.shared + OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_symbol);
    swift_beginAccess();
    v17 = *v16;
    v18 = v16[1];
    v21 = v13;
    v22 = v14;

    v23._countAndFlagsBits = v17;
    v23._object = v18;
    sub_AB94A0(v23);

    sub_AB2F40();
    sub_AB2F30();
    if (v20)
    {
      v20(v10);
    }

    sub_619768(&qword_E111F0, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
    sub_AB2EE0();
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

double MPModelSong.preferredBylineAttribution(with:from:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E038, &qword_B1DB70);
  __chkstk_darwin();
  v9 = &v34 - v8;
  v10 = sub_AB2F20();
  v11 = *(v10 - 8);
  v39 = v10;
  v40 = v11;
  __chkstk_darwin();
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v41 = &v34 - v14;
  __chkstk_darwin();
  v38 = &v34 - v15;
  sub_AB2F50();
  v16 = __chkstk_darwin();
  if (a2 && (v17 = [a2 attributionLabel]) != 0)
  {
    v18 = v17;
    sub_AB92A0();

    sub_AB2F40();
    sub_AB2F30();
    (*(v40 + 56))(a3, 0, 1, v39);
  }

  else
  {
    v35 = v13;
    v36 = a3;
    v20 = *(a1 + 16);
    if (v20)
    {
      v21 = (a1 + 32);
      v22 = v39;
      v23 = (v40 + 48);
      v24 = (v40 + 32);
      v25 = _swiftEmptyArrayStorage;
      v37 = v4;
      do
      {
        v42 = *v21;
        sub_6166E4(&v42, v4, v9);
        if ((*v23)(v9, 1, v22) == 1)
        {
          sub_12E1C(v9, &qword_E0E038, &qword_B1DB70);
        }

        else
        {
          v26 = *v24;
          v27 = v38;
          (*v24)(v38, v9, v22);
          v26(v41, v27, v22);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_506D10(0, v25[2] + 1, 1, v25);
          }

          v29 = v25[2];
          v28 = v25[3];
          if (v29 >= v28 >> 1)
          {
            v25 = sub_506D10((v28 > 1), v29 + 1, 1, v25);
          }

          v25[2] = v29 + 1;
          v30 = v25 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v29;
          v22 = v39;
          v26(v30, v41, v39);
          v4 = v37;
        }

        ++v21;
        --v20;
      }

      while (v20);
    }

    else
    {
      v25 = _swiftEmptyArrayStorage;
      v22 = v39;
    }

    if (v25[2])
    {
      v31 = v35;
      sub_AB2E30();
      v32 = v36;
      Array<A>.joined(separator:)(v31, v25, v22, &protocol witness table for AttributedString, &protocol witness table for AttributedString, v36);

      v33 = v40;
      (*(v40 + 8))(v31, v22);
      (*(v33 + 56))(v32, 0, 1, v22);
    }

    else
    {
      (*(v40 + 56))(v36, 1, 1, v22, v16);
    }
  }

  return result;
}

uint64_t sub_6166E4@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v31[2] = sub_AB2E50();
  __chkstk_darwin();
  v31[1] = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11200, &qword_B1DCA0);
  __chkstk_darwin();
  v31[0] = v31 - v7;
  sub_AB9250();
  __chkstk_darwin();
  sub_AB9230();
  __chkstk_darwin();
  sub_AB2F50();
  __chkstk_darwin();
  v8 = *a1;
  v9 = sub_616BF8(v8);
  v10 = [a2 hasLoadedValuesForPropertySet:v9];

  if (!v10)
  {
    v19 = sub_AB2F20();
    return (*(*(v19 - 8) + 56))(a3, 1, 1, v19);
  }

  if (v8)
  {
    v11 = [a2 artist];
    v12 = a3;
    if (!v11)
    {
      goto LABEL_19;
    }

    v13 = v11;
    v14 = [v11 name];

    if (!v14)
    {
      goto LABEL_19;
    }

    v15 = sub_AB92A0();
    v17 = v16;

    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      sub_AB2F40();
      sub_AB2F30();
LABEL_17:
      v29 = sub_AB2F20();
      return (*(*(v29 - 8) + 56))(v12, 0, 1, v29);
    }
  }

  else
  {
    v12 = a3;
    if (![a2 shouldShowComposer])
    {
      goto LABEL_19;
    }

    v21 = [a2 composer];
    if (!v21)
    {
      goto LABEL_19;
    }

    v22 = v21;
    v23 = [v21 name];

    if (!v23)
    {
      goto LABEL_19;
    }

    v24 = sub_AB92A0();
    v26 = v25;

    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      sub_AB9220();
      v32._countAndFlagsBits = 2128194;
      v32._object = 0xE300000000000000;
      sub_AB9210(v32);
      v33._countAndFlagsBits = v24;
      v33._object = v26;
      sub_AB9200(v33);

      v34._countAndFlagsBits = 0;
      v34._object = 0xE000000000000000;
      sub_AB9210(v34);
      sub_AB9240();
      v28 = sub_AB35C0();
      (*(*(v28 - 8) + 56))(v31[0], 1, 1, v28);
      v31[5] = _swiftEmptyArrayStorage;
      sub_619768(&qword_E11208, &type metadata accessor for AttributedString.FormattingOptions, &protocol conformance descriptor for AttributedString.FormattingOptions);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11210, &qword_B1DCA8);
      sub_6197B0();
      sub_ABABB0();
      sub_AB2F00();
      goto LABEL_17;
    }
  }

LABEL_19:
  v30 = sub_AB2F20();
  return (*(*(v30 - 8) + 56))(v12, 1, 1, v30);
}

id sub_616BF8(char a1)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11060, &unk_B22950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    *(inited + 32) = sub_AB92A0();
    *(inited + 40) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0, &unk_B1DCB0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_AF4EC0;
    *(v3 + 32) = sub_AB92A0();
    *(v3 + 40) = v4;
    isa = sub_AB9740().super.isa;

    v6 = [objc_opt_self() propertySetWithProperties:isa];

    *(inited + 48) = v6;
    sub_52A338(inited);
    swift_setDeallocating();
    sub_12E1C(inited + 32, &qword_E11068, qword_B1D7F0);
    v7 = objc_allocWithZone(MPPropertySet);
    v8.super.isa = sub_AB9740().super.isa;
    sub_619854();
    v9.super.isa = sub_AB8FD0().super.isa;

    v10 = [v7 initWithProperties:v8.super.isa relationships:{v9.super.isa, 1, 2}];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0, &unk_B1DCB0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_AF4EC0;
    *(v11 + 32) = sub_AB92A0();
    *(v11 + 40) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11060, &unk_B22950);
    v13 = swift_initStackObject();
    *(v13 + 16) = xmmword_AF4EC0;
    *(v13 + 32) = sub_AB92A0();
    *(v13 + 40) = v14;
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_AF4EC0;
    *(v15 + 32) = sub_AB92A0();
    *(v15 + 40) = v16;
    v17 = sub_AB9740().super.isa;

    v18 = [objc_opt_self() propertySetWithProperties:v17];

    *(v13 + 48) = v18;
    sub_52A338(v13);
    swift_setDeallocating();
    sub_12E1C(v13 + 32, &qword_E11068, qword_B1D7F0);
    v19 = objc_allocWithZone(MPPropertySet);
    v8.super.isa = sub_AB9740().super.isa;

    sub_619854();
    v9.super.isa = sub_AB8FD0().super.isa;

    v10 = [v19 initWithProperties:v8.super.isa relationships:{v9.super.isa, 1, 2}];
  }

  v20 = v10;

  return v20;
}

double sub_616F50@<D0>(char *a1@<X0>, void (*a2)(void)@<X1>, void *a3@<X8>)
{
  v7 = sub_AB2F20();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1;

  sub_618E3C(&v15);
  v11 = v15;
  __chkstk_darwin();
  *(&v14 - 2) = v3;
  v12 = sub_503314(a2, (&v14 - 4), v11);

  if (v12[2])
  {
    sub_AB2E30();
    Array<A>.joined(separator:)(v10, v12, v7, &protocol witness table for AttributedString, &protocol witness table for AttributedString, a3);

    (*(v8 + 8))(v10, v7);
    (*(v8 + 56))(a3, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(a3, 1, 1, v7);
  }

  return result;
}

double BylineProviding.byline(with:)@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = sub_AB2F20();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;

  sub_618E3C(&v17);
  v13 = v17;
  __chkstk_darwin();
  *(&v16 - 4) = a2;
  *(&v16 - 3) = a3;
  *(&v16 - 2) = v4;
  v14 = sub_503314(sub_618F7C, (&v16 - 6), v13);

  if (v14[2])
  {
    sub_AB2E30();
    Array<A>.joined(separator:)(v12, v14, v9, &protocol witness table for AttributedString, &protocol witness table for AttributedString, a4);

    (*(v10 + 8))(v12, v9);
    (*(v10 + 56))(a4, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(a4, 1, 1, v9);
  }

  return result;
}

uint64_t sub_617350@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_AB2E50();
  __chkstk_darwin();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11200, &qword_B1DCA0);
  __chkstk_darwin();
  v5 = v19 - v4;
  sub_AB9250();
  __chkstk_darwin();
  sub_AB9230();
  __chkstk_darwin();
  sub_AB2F50();
  __chkstk_darwin();
  if (a1)
  {
    v6 = sub_AB8600();
    v8 = v7;

    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      sub_AB8600();
      sub_AB2F40();
      sub_AB2F30();
LABEL_12:
      v16 = sub_AB2F20();
      return (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
    }
  }

  else if (sub_AB85D0())
  {
    v10 = sub_AB8610();
    if (v11)
    {
      v12 = v11;
      v13 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v13 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        v14 = v10;
        sub_AB9220();
        v20._countAndFlagsBits = 2128194;
        v20._object = 0xE300000000000000;
        sub_AB9210(v20);
        v21._countAndFlagsBits = v14;
        v21._object = v12;
        sub_AB9200(v21);

        v22._countAndFlagsBits = 0;
        v22._object = 0xE000000000000000;
        sub_AB9210(v22);
        sub_AB9240();
        v15 = sub_AB35C0();
        (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
        v19[3] = _swiftEmptyArrayStorage;
        sub_619768(&qword_E11208, &type metadata accessor for AttributedString.FormattingOptions, &protocol conformance descriptor for AttributedString.FormattingOptions);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11210, &qword_B1DCA8);
        sub_6197B0();
        sub_ABABB0();
        sub_AB2F00();
        goto LABEL_12;
      }
    }
  }

  v18 = sub_AB2F20();
  return (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
}

uint64_t sub_617754@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v32 = sub_AB2E50();
  __chkstk_darwin();
  v33 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11200, &qword_B1DCA0);
  __chkstk_darwin();
  v31 = v30 - v6;
  sub_AB9250();
  __chkstk_darwin();
  v30[1] = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB9230();
  __chkstk_darwin();
  v30[0] = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_AB8860();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB86C0();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB2F50();
  __chkstk_darwin();
  if ((a1 & 1) == 0)
  {
    if (sub_AB87C0())
    {
      (*(v10 + 16))(v12, a2, v9);
      if ((*(v10 + 88))(v12, v9) == enum case for Track.song(_:))
      {
        (*(v10 + 96))(v12, v9);
        (*(v14 + 32))(v16, v12, v13);
        v23 = sub_AB8610();
        v25 = v24;
        (*(v14 + 8))(v16, v13);
        if (v25)
        {
          v26 = HIBYTE(v25) & 0xF;
          if ((v25 & 0x2000000000000000) == 0)
          {
            v26 = v23 & 0xFFFFFFFFFFFFLL;
          }

          v21 = v34;
          if (!v26)
          {

            v22 = 1;
            goto LABEL_16;
          }

          sub_AB9220();
          v36._countAndFlagsBits = 2128194;
          v36._object = 0xE300000000000000;
          sub_AB9210(v36);
          v37._countAndFlagsBits = v23;
          v37._object = v25;
          sub_AB9200(v37);

          v38._countAndFlagsBits = 0;
          v38._object = 0xE000000000000000;
          sub_AB9210(v38);
          sub_AB9240();
          v27 = sub_AB35C0();
          (*(*(v27 - 8) + 56))(v31, 1, 1, v27);
          v35 = _swiftEmptyArrayStorage;
          sub_619768(&qword_E11208, &type metadata accessor for AttributedString.FormattingOptions, &protocol conformance descriptor for AttributedString.FormattingOptions);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11210, &qword_B1DCA8);
          sub_6197B0();
          sub_ABABB0();
          sub_AB2F00();
          goto LABEL_6;
        }
      }

      else
      {
        (*(v10 + 8))(v12, v9);
      }
    }

LABEL_15:
    v22 = 1;
    v21 = v34;
    goto LABEL_16;
  }

  v17 = sub_AB87F0();
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
    goto LABEL_15;
  }

  sub_AB87F0();
  sub_AB2F40();
  v21 = v34;
  sub_AB2F30();
LABEL_6:
  v22 = 0;
LABEL_16:
  v28 = sub_AB2F20();
  return (*(*(v28 - 8) + 56))(v21, v22, 1, v28);
}

uint64_t sub_617D04@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v30 = sub_AB2E50();
  __chkstk_darwin();
  v31 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11200, &qword_B1DCA0);
  __chkstk_darwin();
  v29 = v28 - v4;
  sub_AB9250();
  __chkstk_darwin();
  v28[1] = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB9230();
  __chkstk_darwin();
  v28[0] = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB8D50();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_AB86C0();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB2F50();
  __chkstk_darwin();
  if ((a1 & 1) == 0)
  {
    if (sub_AB8D70())
    {
      sub_AB8D60();
      if ((*(v8 + 88))(v10, v7) == enum case for Playlist.Entry.InternalItem.song(_:))
      {
        (*(v8 + 96))(v10, v7);
        (*(v12 + 32))(v14, v10, v11);
        v21 = sub_AB8610();
        v23 = v22;
        (*(v12 + 8))(v14, v11);
        if (v23)
        {
          v24 = HIBYTE(v23) & 0xF;
          if ((v23 & 0x2000000000000000) == 0)
          {
            v24 = v21 & 0xFFFFFFFFFFFFLL;
          }

          v19 = v32;
          if (!v24)
          {

            v20 = 1;
            goto LABEL_16;
          }

          sub_AB9220();
          v34._countAndFlagsBits = 2128194;
          v34._object = 0xE300000000000000;
          sub_AB9210(v34);
          v35._countAndFlagsBits = v21;
          v35._object = v23;
          sub_AB9200(v35);

          v36._countAndFlagsBits = 0;
          v36._object = 0xE000000000000000;
          sub_AB9210(v36);
          sub_AB9240();
          v25 = sub_AB35C0();
          (*(*(v25 - 8) + 56))(v29, 1, 1, v25);
          v33 = _swiftEmptyArrayStorage;
          sub_619768(&qword_E11208, &type metadata accessor for AttributedString.FormattingOptions, &protocol conformance descriptor for AttributedString.FormattingOptions);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11210, &qword_B1DCA8);
          sub_6197B0();
          sub_ABABB0();
          sub_AB2F00();
          goto LABEL_6;
        }
      }

      else
      {
        (*(v8 + 8))(v10, v7);
      }
    }

LABEL_15:
    v20 = 1;
    v19 = v32;
    goto LABEL_16;
  }

  v15 = sub_AB8D90();
  v17 = v16;

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
    goto LABEL_15;
  }

  sub_AB8D90();
  sub_AB2F40();
  v19 = v32;
  sub_AB2F30();
LABEL_6:
  v20 = 0;
LABEL_16:
  v26 = sub_AB2F20();
  return (*(*(v26 - 8) + 56))(v19, v20, 1, v26);
}

uint64_t sub_61829C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X2>, uint64_t (**a3)(uint64_t, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v29 = a4;
  sub_AB2E50();
  __chkstk_darwin();
  v28 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11200, &qword_B1DCA0);
  __chkstk_darwin();
  v9 = &v28 - v8;
  sub_AB9250();
  __chkstk_darwin();
  sub_AB9230();
  __chkstk_darwin();
  sub_AB2F50();
  v10 = __chkstk_darwin();
  if (*a1 == 1)
  {
    v11 = a3[1];
    v12 = (v11)(a2, a3, v10);
    v14 = v13;

    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      v11(a2, a3);
      sub_AB2F40();
      v16 = v29;
      sub_AB2F30();
      v17 = sub_AB2F20();
      return (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
    }
  }

  else if ((a3[3])(a2, a3, v10))
  {
    v19 = a3[2](a2, a3);
    if (v20)
    {
      v21 = v20;
      v22 = HIBYTE(v20) & 0xF;
      if ((v20 & 0x2000000000000000) == 0)
      {
        v22 = v19 & 0xFFFFFFFFFFFFLL;
      }

      if (v22)
      {
        v23 = v19;
        sub_AB9220();
        v31._countAndFlagsBits = 2128194;
        v31._object = 0xE300000000000000;
        sub_AB9210(v31);
        v32._countAndFlagsBits = v23;
        v32._object = v21;
        sub_AB9200(v32);

        v33._countAndFlagsBits = 0;
        v33._object = 0xE000000000000000;
        sub_AB9210(v33);
        sub_AB9240();
        v24 = sub_AB35C0();
        (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
        v30 = _swiftEmptyArrayStorage;
        sub_619768(&qword_E11208, &type metadata accessor for AttributedString.FormattingOptions, &protocol conformance descriptor for AttributedString.FormattingOptions);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11210, &qword_B1DCA8);
        sub_6197B0();
        sub_ABABB0();
        v25 = v29;
        sub_AB2F00();
        v26 = sub_AB2F20();
        return (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
      }
    }
  }

  v27 = sub_AB2F20();
  return (*(*(v27 - 8) + 56))(v29, 1, 1, v27);
}

uint64_t Track.composerName.getter()
{
  v1 = v0;
  v2 = sub_AB8860();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB86C0();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2, v8);
  if ((*(v3 + 88))(v5, v2) == enum case for Track.song(_:))
  {
    (*(v3 + 96))(v5, v2);
    (*(v7 + 32))(v10, v5, v6);
    v11 = sub_AB8610();
    (*(v7 + 8))(v10, v6);
    return v11;
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    return 0;
  }
}

uint64_t sub_618988(uint64_t a1)
{
  v3 = v1;
  v4 = *(a1 - 8);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB86C0();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin();
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v3, a1, v9);
  if ((*(v4 + 88))(v6, a1) == enum case for Track.song(_:))
  {
    (*(v4 + 96))(v6, a1);
    (*(v8 + 32))(v11, v6, v7);
    v12 = sub_AB8610();
    (*(v8 + 8))(v11, v7);
    return v12;
  }

  else
  {
    (*(v4 + 8))(v6, a1);
    return 0;
  }
}

uint64_t Playlist.Entry.composerName.getter()
{
  v0 = sub_AB8D50();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB86C0();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB8D60();
  if ((*(v1 + 88))(v3, v0) == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v1 + 96))(v3, v0);
    (*(v5 + 32))(v7, v3, v4);
    v8 = sub_AB8610();
    (*(v5 + 8))(v7, v4);
    return v8;
  }

  else
  {
    (*(v1 + 8))(v3, v0);
    return 0;
  }
}

void sub_618E3C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_735B5C(v2);
  }

  v3 = *(v2 + 2);
  v17[0] = (v2 + 32);
  v17[1] = v3;
  v4 = sub_ABB2B0(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if ((*v13 & (v11 ^ 1) & 1) == 0)
          {
            break;
          }

          v13[1] = *v13;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_AB97D0();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v15[0] = v7 + 4;
    v15[1] = v6;
    sub_619004(v15, v16, v17, v5);
    v7[2] = 0;
  }

  *a1 = v2;
}

unint64_t sub_618FA0()
{
  result = qword_E111F8;
  if (!qword_E111F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E111F8);
  }

  return result;
}

void sub_619004(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_88:
    a1 = *a1;
    if (!a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v9 = sub_735B34(v9);
    }

    v75 = v9 + 16;
    v76 = *(v9 + 2);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v9[16 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_619544((*a3 + *v77), (*a3 + *v79), (*a3 + v80), a1);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v80 < v78)
        {
          goto LABEL_112;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_113;
        }

        *v77 = v78;
        *(v77 + 1) = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_114;
        }

        v76 = *v75 - 1;
        memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_124;
    }

LABEL_97:

    return;
  }

  v7 = a4;
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = *(*a3 + v10) & (v11 ^ 1);
      v13 = v10 + 2;
      while (v6 != v13)
      {
        v14 = *(*a3 + v13);
        v15 = v11 & (v14 ^ 1);
        ++v13;
        v11 = v14;
        if (v12 != v15)
        {
          v8 = v13 - 1;
          if (!v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (!v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v16 = v8 - 1;
        v17 = v10;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v18 = *(v20 + v17);
            *(v20 + v17) = *(v20 + v16);
            *(v20 + v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_506670(0, *(v9 + 2) + 1, 1, v9);
    }

    v29 = *(v9 + 2);
    v28 = *(v9 + 3);
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      v9 = sub_506670((v28 > 1), v29 + 1, 1, v9);
    }

    *(v9 + 2) = v30;
    v31 = &v9[16 * v29];
    *(v31 + 4) = v10;
    *(v31 + 5) = v8;
    v32 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    if (v29)
    {
      while (1)
      {
        v33 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v34 = *(v9 + 4);
          v35 = *(v9 + 5);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_103;
          }

          v50 = &v9[16 * v30];
          v52 = *v50;
          v51 = *(v50 + 1);
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = &v9[16 * v33 + 32];
          v58 = *v56;
          v57 = *(v56 + 1);
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_110;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v33 = v30 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v60 = &v9[16 * v30];
        v62 = *v60;
        v61 = *(v60 + 1);
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_71:
        if (v55)
        {
          goto LABEL_105;
        }

        v63 = &v9[16 * v33];
        v65 = *(v63 + 4);
        v64 = *(v63 + 5);
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_108;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_78:
        v71 = v33 - 1;
        if (v33 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v72 = *&v9[16 * v71 + 32];
        v73 = *&v9[16 * v33 + 40];
        sub_619544((*a3 + v72), (*a3 + *&v9[16 * v33 + 32]), (*a3 + v73), v32);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v73 < v72)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_735B34(v9);
        }

        if (v71 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v74 = &v9[16 * v71];
        *(v74 + 4) = v72;
        *(v74 + 5) = v73;
        sub_735AA8(v33);
        v30 = *(v9 + 2);
        if (v30 <= 1)
        {
          goto LABEL_3;
        }
      }

      v38 = &v9[16 * v30 + 32];
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_101;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_102;
      }

      v45 = &v9[16 * v30];
      v47 = *v45;
      v46 = *(v45 + 1);
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_104;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = &v9[16 * v33 + 32];
        v69 = *v67;
        v68 = *(v67 + 1);
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_111;
        }

        if (v36 < v70)
        {
          v33 = v30 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + v8 - 1;
  v23 = v10 - v8;
LABEL_30:
  v24 = *(v21 + v8);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    if ((*v26 & (v24 ^ 1)) != 1)
    {
LABEL_29:
      ++v8;
      ++v22;
      --v23;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    v26[1] = *v26;
    *v26-- = v24;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
}

uint64_t sub_619544(_BYTE *__dst, _BYTE *__src, _BYTE *a3, _BYTE *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= a3 - __src)
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v15 = v6 - 1;
        --v5;
        while (1)
        {
          v16 = v5 + 1;
          if (*v15 == 1 && *(v10 - 1) == 0)
          {
            break;
          }

          v18 = v10 - 1;
          if (v16 < v10 || v5 >= v10)
          {
            *v5 = *v18;
          }

          --v5;
          --v10;
          if (v18 <= v4)
          {
            v10 = v18;
            goto LABEL_46;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = *v15;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v15 > v7);
      v6 = v15;
      if (v15 == v4)
      {
        goto LABEL_47;
      }

      goto LABEL_48;
    }

LABEL_46:
    if (v6 != v4)
    {
LABEL_48:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        if (*v4 == 1 && *v6 == 0)
        {
          v14 = v6 + 1;
          v13 = v6;
          if (v7 >= v6 && v7 < v14)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v12 = v4 + 1;
          v13 = v4;
          v14 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v12)
            {
              goto LABEL_19;
            }
          }
        }

        *v7 = *v13;
LABEL_19:
        ++v7;
        if (v4 < v10)
        {
          v6 = v14;
          if (v14 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_48;
    }
  }

LABEL_47:
  if (v6 >= v10)
  {
    goto LABEL_48;
  }

  return 1;
}

uint64_t sub_619768(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_6197B0()
{
  result = qword_E11218;
  if (!qword_E11218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E11210, &qword_B1DCA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11218);
  }

  return result;
}

unint64_t sub_619854()
{
  result = qword_E12D10;
  if (!qword_E12D10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E12D10);
  }

  return result;
}

void DefaultStringInterpolation.appendInterpolation(describing:default:)(uint64_t a1, uint64_t a2, void *a3)
{
  sub_61993C(a1, &v5);
  if (v6)
  {
    sub_9ACFC(&v5, v7);
    sub_ABAF70();
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
    sub_607768(&v5);
    v8._countAndFlagsBits = a2;
    v8._object = a3;
    sub_AB94A0(v8);
  }
}

uint64_t sub_61993C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11F60, &unk_B1BC70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_6199AC()
{
  if (qword_E0CD98 != -1)
  {
    swift_once();
  }

  static BackgroundMaterial.defaultValue = static BackgroundMaterial.supportedMaterials;

  return result;
}

uint64_t *BackgroundMaterial.supportedMaterials.unsafeMutableAddressor()
{
  if (qword_E0CD98 != -1)
  {
    swift_once();
  }

  return &static BackgroundMaterial.supportedMaterials;
}

uint64_t *BackgroundMaterial.defaultValue.unsafeMutableAddressor()
{
  if (qword_E0CD90 != -1)
  {
    swift_once();
  }

  return &static BackgroundMaterial.defaultValue;
}

void sub_619AD4()
{
  sub_503998(0, 1, 1);
  v1 = _swiftEmptyArrayStorage[2];
  v0 = _swiftEmptyArrayStorage[3];
  v2 = v0 >> 1;
  v3 = v1 + 1;
  if (v0 >> 1 <= v1)
  {
    sub_503998((v0 > 1), v1 + 1, 1);
    v0 = _swiftEmptyArrayStorage[3];
    v2 = v0 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v3;
  *(&_swiftEmptyArrayStorage[4] + v1) = 0;
  v4 = v1 + 2;
  if (v2 < v4)
  {
    sub_503998((v0 > 1), v4, 1);
  }

  _swiftEmptyArrayStorage[2] = v4;
  *(&_swiftEmptyArrayStorage[4] + v3) = 1;
  v5 = sub_6153A0(_swiftEmptyArrayStorage);

  static BackgroundMaterial.supportedMaterials = v5;
}

double sub_619BF4(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }

  return result;
}

double sub_619C54@<D0>(void *a1@<X8>)
{
  if (qword_E0CD90 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static BackgroundMaterial.defaultValue;

  return result;
}

uint64_t UITraitCollection.supportedMaterials.getter()
{
  sub_619D24();
  sub_ABA1B0();
  return v1;
}

unint64_t sub_619D24()
{
  result = qword_E11220;
  if (!qword_E11220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11220);
  }

  return result;
}

uint64_t UIMutableTraits.supportedMaterials.getter(uint64_t a1, uint64_t a2)
{
  sub_619D24();
  sub_AB4CE0();
  return v3;
}

void (*UIMutableTraits.supportedMaterials.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
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
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  sub_619D24();
  sub_AB4CE0();
  return sub_619ED8;
}

void sub_619ED8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  if (a2)
  {

    sub_619D24();
    sub_AB4CF0();
  }

  else
  {
    *v2 = v3;
    sub_619D24();
    sub_AB4CF0();
  }

  free(v2);
}

unint64_t sub_619F8C()
{
  result = qword_E11228;
  if (!qword_E11228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11228);
  }

  return result;
}

unint64_t sub_619FE4()
{
  result = qword_E11230;
  if (!qword_E11230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E11238, &qword_B1DD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11230);
  }

  return result;
}

unint64_t sub_61A058(uint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v7 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v8 = sub_ABB060();
  }

  else
  {
    v8 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  }

  v9 = 0;
  while (1)
  {
    if (v8 == v9)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v10 = sub_ABAE20();
    }

    else
    {
      if (v9 >= *(v7 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v10 = *(a2 + 8 * v9 + 32);
    }

    v11 = v10;
    sub_13C80(0, a3, a4);
    v12 = sub_ABA790();

    if (v12)
    {
      return v9;
    }

    if (__OFADD__(v9++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_61A160(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = a2 + 32;
  while (1)
  {
    v6 = 0xD000000000000029;
    v7 = "LibraryView.Playlists";
    switch(*(v5 + v4))
    {
      case 1:
        v6 = 0xD000000000000025;
        v7 = "LibraryView.Artists";
        break;
      case 2:
        v6 = 0xD000000000000023;
        v7 = "LibraryView.Albums";
        break;
      case 3:
        v6 = 0xD000000000000022;
        v7 = "LibraryView.Songs";
        break;
      case 4:
        v6 = 0xD000000000000021;
        v7 = "LibraryView.MadeForYou";
        break;
      case 5:
        v6 = 0xD000000000000026;
        v7 = "LibraryView.MusicVideos";
        break;
      case 6:
        v6 = 0xD000000000000027;
        v7 = "LibraryView.Genres";
        break;
      case 7:
        v6 = 0xD000000000000022;
        v7 = "LibraryView.Compilations";
        break;
      case 8:
        v6 = 0xD000000000000028;
        v7 = "LibraryView.Composers";
        break;
      case 9:
        v6 = 0xD000000000000025;
        v7 = "LibraryView.Shows";
        break;
      case 0xA:
        v6 = 0xD000000000000021;
        v7 = "LibraryView.Downloaded";
        break;
      case 0xB:
        v6 = 0xD000000000000026;
        v7 = "LibraryView.Downloading";
        break;
      case 0xC:
        v6 = 0xD000000000000027;
        v7 = "ByPlaylistOrderAscending";
        break;
      default:
        break;
    }

    v8 = v7 | 0x8000000000000000;
    v9 = 0xD000000000000029;
    v10 = "LibraryView.Playlists";
    switch(a1)
    {
      case 1:
        v9 = 0xD000000000000025;
        v10 = "LibraryView.Artists";
        break;
      case 2:
        v9 = 0xD000000000000023;
        v10 = "LibraryView.Albums";
        break;
      case 3:
        v9 = 0xD000000000000022;
        v10 = "LibraryView.Songs";
        break;
      case 4:
        v9 = 0xD000000000000021;
        v10 = "LibraryView.MadeForYou";
        break;
      case 5:
        v9 = 0xD000000000000026;
        v10 = "LibraryView.MusicVideos";
        break;
      case 6:
        v9 = 0xD000000000000027;
        v10 = "LibraryView.Genres";
        break;
      case 7:
        v9 = 0xD000000000000022;
        v10 = "LibraryView.Compilations";
        break;
      case 8:
        v9 = 0xD000000000000028;
        v10 = "LibraryView.Composers";
        break;
      case 9:
        v9 = 0xD000000000000025;
        v10 = "LibraryView.Shows";
        break;
      case 10:
        v9 = 0xD000000000000021;
        v10 = "LibraryView.Downloaded";
        break;
      case 11:
        v9 = 0xD000000000000026;
        v10 = "LibraryView.Downloading";
        break;
      case 12:
        v9 = 0xD000000000000027;
        v10 = "ByPlaylistOrderAscending";
        break;
      default:
        break;
    }

    if (v6 == v9 && v8 == (v10 | 0x8000000000000000))
    {
      break;
    }

    v11 = sub_ABB3C0();

    if (v11)
    {
      return v4;
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_61A4DC()
{
  result = swift_slowAlloc();
  qword_E11240 = result;
  return result;
}

uint64_t sub_61A504()
{
  result = swift_slowAlloc();
  qword_E11248 = result;
  return result;
}

uint64_t sub_61A52C()
{
  result = swift_slowAlloc();
  qword_E11250 = result;
  return result;
}

uint64_t sub_61A554()
{
  result = swift_slowAlloc();
  qword_E11258 = result;
  return result;
}

id sub_61A5AC()
{
  v2.receiver = v0;
  v2.super_class = _s27WeakViewControllerReferenceCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void UIViewController.playActivityFeatureNameSourceViewController.setter(void *a1)
{
  sub_61C994(a1, &qword_E0CDA8, &qword_E11248, sub_61A504);
}

id sub_61A778(void *a1, const void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  if (objc_getAssociatedObject(v3, *a2))
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {
    sub_607768(v10);
    return [v3 parentViewController];
  }

  _s27WeakViewControllerReferenceCMa();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return [v3 parentViewController];
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  result = Strong;
  if (!Strong)
  {
    return [v3 parentViewController];
  }

  return result;
}

void UIViewController.playActivityRecommendationDataSourceViewController.setter(void *a1)
{
  sub_61C994(a1, &qword_E0CDB0, &qword_E11250, sub_61A52C);
}

void (*UIViewController.playActivityRecommendationDataSourceViewController.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = UIViewController.playActivityRecommendationDataSourceViewController.getter();
  return sub_61A920;
}

void sub_61A920(id *a1, char a2)
{
  value = *a1;
  if (a2)
  {
    v2 = value;
    sub_61C994(value, &qword_E0CDB0, &qword_E11250, sub_61A52C);

    v3 = v2;
  }

  else
  {
    sub_61C994(*a1, &qword_E0CDB0, &qword_E11250, sub_61A52C);
    v3 = value;
  }
}

uint64_t UIViewController.playActivityForwardedRecommendationData.getter()
{
  if (qword_E0CDB8 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_E11258))
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_607768(v5);
    return 0;
  }
}

uint64_t UIViewController.playActivityForwardedRecommendationData.setter(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_E0CDB8 != -1)
  {
    swift_once();
  }

  v6 = qword_E11258;
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    sub_90090(a1, a2);
    isa = sub_AB3250().super.isa;
    sub_466A4(a1, a2);
  }

  objc_setAssociatedObject(v3, v6, isa, &dword_0 + 3);

  return sub_466A4(a1, a2);
}

uint64_t UIViewController.inheritedPlayActivityRecommendationData(shouldIncludeForwardedRecommendationData:)(uint64_t a1)
{
  v2 = a1;
  v3 = [v1 playActivityRecommendationData];
  if (!v3 && ((v2 & 1) == 0 || (v3 = [v1 playActivityForwardedRecommendationData]) == 0))
  {
    v9 = UIViewController.playActivityRecommendationDataSourceViewController.getter();
    v5 = 0;
    if (v9)
    {
      goto LABEL_8;
    }

    return v5;
  }

  v4 = v3;
  v5 = sub_AB3260();
  v7 = v6;

  v8 = UIViewController.playActivityRecommendationDataSourceViewController.getter();
  v9 = v8;
  if (v7 >> 60 != 15)
  {
    goto LABEL_28;
  }

  if (v8)
  {
    while (1)
    {
LABEL_8:
      v10 = [v9 playActivityRecommendationData];
      if (v10 || (v2 & 1) != 0 && (v10 = [v9 playActivityForwardedRecommendationData]) != 0)
      {
        v11 = v10;
        v5 = sub_AB3260();
        v13 = v12;
      }

      else
      {
        v5 = 0;
        v13 = 0xF000000000000000;
      }

      if (qword_E0CDB0 != -1)
      {
        swift_once();
      }

      if (objc_getAssociatedObject(v9, qword_E11250))
      {
        sub_ABAB50();
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0u;
        v19 = 0u;
      }

      v20[0] = v18;
      v20[1] = v19;
      if (!*(&v19 + 1))
      {
        break;
      }

      _s27WeakViewControllerReferenceCMa();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_23;
      }

      v16 = v13;
      Strong = swift_unknownObjectWeakLoadStrong();

      if (!Strong)
      {
        goto LABEL_23;
      }

LABEL_24:

      if (v13 >> 60 != 15)
      {
        v9 = Strong;
LABEL_28:

        return v5;
      }

      v9 = Strong;
      if (!Strong)
      {
        return v5;
      }
    }

    sub_607768(v20);
LABEL_23:
    Strong = [v9 parentViewController];
    goto LABEL_24;
  }

  return v5;
}

unint64_t UIViewController.playActivityFeatureIdentifier.getter()
{
  v1 = [v0 playActivityFeatureName];
  v2 = sub_AB92A0();
  v4 = v3;

  return _s9MusicCore29PlayActivityFeatureIdentifierO8rawValueACSgSS_tcfC_0(v2, v4);
}

void UIViewController.playActivityFeatureIdentifier.setter(char a1)
{
  if (a1 != 20)
  {
    PlayActivityFeatureIdentifier.rawValue.getter(a1);
  }

  v2 = sub_AB9260();

  [v1 setPlayActivityFeatureName:v2];
}

void (*UIViewController.playActivityFeatureIdentifier.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = [v1 playActivityFeatureName];
  v4 = sub_AB92A0();
  v6 = v5;

  *(a1 + 8) = _s9MusicCore29PlayActivityFeatureIdentifierO8rawValueACSgSS_tcfC_0(v4, v6);
  return sub_61B138;
}

void sub_61B138(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 != 20)
  {
    PlayActivityFeatureIdentifier.rawValue.getter(v2);
  }

  v3 = *a1;
  v4 = sub_AB9260();

  [v3 setPlayActivityFeatureName:v4];
}

uint64_t UIViewController.playActivityFeatureNames(sourceChildViewController:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0, &unk_B1DCB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_AF4EC0;
  v2 = [v0 playActivityFeatureName];
  v3 = sub_AB92A0();
  v5 = v4;

  *(v1 + 32) = v3;
  *(v1 + 40) = v5;
  return v1;
}

uint64_t UIViewController.completePlayActivityFeatureNames.getter()
{
  result = v0;
  v2 = 0;
  do
  {
    v3 = result;
    v4 = [result playActivityFeatureNamesWithSourceChildViewController:v2];
    v5 = sub_AB9760();

    sub_511310(v5);
    result = [v3 playActivityFeatureNameSourceViewController];
    v2 = v3;
  }

  while (result);
  v6 = 0;
  v7 = _swiftEmptyArrayStorage[2];
LABEL_4:
  v8 = &_swiftEmptyArrayStorage[2 * v6 + 5];
  while (1)
  {
    if (v7 == v6)
    {

      sub_61B518(_swiftEmptyArrayStorage);
      v16 = v15;

      return v16;
    }

    if (v6 >= _swiftEmptyArrayStorage[2])
    {
      break;
    }

    ++v6;
    v10 = *(v8 - 1);
    v9 = *v8;
    v8 += 2;
    v11 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v11 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_503918(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        result = sub_503918((v12 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[2 * v13];
      v14[4] = v10;
      v14[5] = v9;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

void sub_61B518(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2 < 2)
  {
    return;
  }

  v3 = 0;
  v4 = 0;
  v5 = v2 >> 1;
  v6 = v2 - 1;
  for (i = 16 * v2 + 24; ; i -= 16)
  {
    if (v4 == v6)
    {
      goto LABEL_5;
    }

    v9 = *(v1 + 2);
    if (v4 >= v9)
    {
      break;
    }

    if (v6 >= v9)
    {
      goto LABEL_14;
    }

    v11 = *&v1[v3 + 32];
    v10 = *&v1[v3 + 40];
    v13 = *&v1[i - 8];
    v12 = *&v1[i];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_5285D0(v1);
    }

    v14 = &v1[v3];
    *(v14 + 4) = v13;
    *(v14 + 5) = v12;

    if (v6 >= *(v1 + 2))
    {
      goto LABEL_15;
    }

    v8 = &v1[i];
    *(v8 - 1) = v11;
    *v8 = v10;

LABEL_5:
    ++v4;
    --v6;
    v3 += 16;
    if (v5 == v4)
    {
      return;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t UIViewController.combinedPlayActivityFeatureName.getter()
{
  v1 = [v0 completePlayActivityFeatureNames];
  sub_AB9760();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E103E0, &unk_B16BD0);
  sub_61CA70();
  sub_4FD6CC();
  v2 = sub_AB96C0();

  return v2;
}

uint64_t Collection<>.playActivityFeatureJoined()(uint64_t a1, uint64_t a2)
{
  sub_4FD6CC();

  return sub_AB96C0();
}

uint64_t UIViewController.playActivityInformation.getter()
{
  v1 = [v0 combinedPlayActivityFeatureName];
  v2 = sub_AB92A0();

  v3 = UIViewController.inheritedPlayActivityRecommendationData(shouldIncludeForwardedRecommendationData:)(1);
  v5 = v4;
  sub_466A4(0, 0xF000000000000000);

  sub_9007C(v3, v5);

  sub_466A4(v3, v5);
  return v2;
}

uint64_t UINavigationController.playActivityFeatureNames(sourceChildViewController:)(void *a1)
{
  v5 = [i viewControllers];
  v6 = sub_13C80(0, &qword_E11270, UIViewController_ptr);
  v7 = sub_AB9760();

  if (!a1)
  {
    goto LABEL_25;
  }

  v8 = a1;
  v9 = sub_61A058(v8, v7, &qword_E11270, UIViewController_ptr);
  if ((v11 & 1) == 0)
  {
    v12 = v9;
    if (v9 < 0)
    {
      goto LABEL_53;
    }

    v10 = v7 & 0xFFFFFFFFFFFFFF8;
    v3 = v7 >> 62;
    if (v7 >> 62)
    {
LABEL_54:
      if ((v7 & 0x8000000000000000) != 0)
      {
        v2 = v7;
      }

      else
      {
        v2 = v10;
      }

      result = sub_ABB060();
      if (result < 0)
      {
        __break(1u);
        return result;
      }

      if (sub_ABB060() >= v12)
      {
LABEL_6:
        if ((v7 & 0xC000000000000001) != 0)
        {

          if (v12)
          {
            v13 = 0;
            do
            {
              v14 = v13 + 1;
              sub_ABAE00(v13);
              v13 = v14;
            }

            while (v12 != v14);
          }
        }

        else
        {
        }

        if (v3)
        {
          v6 = sub_ABB070();
          v3 = v15;
          v2 = v16;
          v12 = v17;

          if (v12)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v2 = 0;
          v6 = v7 & 0xFFFFFFFFFFFFFF8;
          v3 = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
          v12 = (2 * v12) | 1;
          if (v12)
          {
LABEL_18:
            sub_ABB3F0();
            swift_unknownObjectRetain_n();
            v19 = swift_dynamicCastClass();
            if (!v19)
            {
              swift_unknownObjectRelease();
              v19 = _swiftEmptyArrayStorage;
            }

            v20 = v19[2];

            if (!__OFSUB__(v12 >> 1, v2))
            {
              if (v20 == (v12 >> 1) - v2)
              {
                v7 = swift_dynamicCastClass();

                swift_unknownObjectRelease();
                if (!v7)
                {
                  swift_unknownObjectRelease();
                  v7 = _swiftEmptyArrayStorage;
                }

                swift_unknownObjectRelease();
                goto LABEL_25;
              }

              goto LABEL_61;
            }

LABEL_60:
            __break(1u);
LABEL_61:
            swift_unknownObjectRelease_n();
          }
        }

        sub_61C4A8(v6, v3, v2, v12);
        v7 = v18;
        swift_unknownObjectRelease();
        goto LABEL_17;
      }
    }

    else if (*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)) >= v9)
    {
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_60;
  }

LABEL_17:

LABEL_25:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0, &unk_B1DCB0);
  v8 = swift_allocObject();
  *(v8 + 1) = xmmword_AF4EC0;
  v21 = [i playActivityFeatureName];
  v6 = sub_AB92A0();
  v12 = v22;

  v8[4] = v6;
  v8[5] = v12;
  if (v7 >> 62)
  {
    goto LABEL_50;
  }

  v10 = v7 & 0xFFFFFFFFFFFFFF8;
  for (i = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    if (i < 1)
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v6 = 0;
    v12 = &type metadata for String;
    while (1)
    {
      v23 = (v7 & 0xC000000000000001) != 0 ? sub_ABAE20() : *(v7 + 8 * v6 + 32);
      v24 = v23;
      v25 = [v23 playActivityFeatureNamesWithSourceChildViewController:0];
      v26 = sub_AB9760();

      v3 = *(v26 + 16);
      v27 = v8[2];
      v28 = v27 + v3;
      if (__OFADD__(v27, v3))
      {
        break;
      }

      v29 = v8[3] >> 1;
      if (v29 < v28)
      {
        if (v27 <= v28)
        {
          v33 = v27 + v3;
        }

        else
        {
          v33 = v8[2];
        }

        v8 = sub_506314(&dword_0 + 1, v33, 1, v8);
        v27 = v8[2];
        v29 = v8[3] >> 1;
        if (*(v26 + 16))
        {
LABEL_37:
          if ((v29 - v27) < v3)
          {
            goto LABEL_48;
          }

          swift_arrayInitWithCopy();

          if (v3)
          {
            v30 = v8[2];
            v31 = __OFADD__(v30, v3);
            v32 = v30 + v3;
            if (v31)
            {
              goto LABEL_49;
            }

            v8[2] = v32;
          }

          goto LABEL_30;
        }
      }

      else if (v3)
      {
        goto LABEL_37;
      }

      if (v3)
      {
        goto LABEL_47;
      }

LABEL_30:
      ++v6;

      if (i == v6)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    ;
  }

LABEL_51:

  return v8;
}

uint64_t UITab.path.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0, &unk_B19F90);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_AF82B0;
  *(v1 + 32) = v0;
  v2 = v0;
  for (i = [v2 parent]; ; i = objc_msgSend(v2, "parent"))
  {
    v4 = i;

    if (!v4)
    {
      return v1;
    }

    v5 = v1 >> 62;
    if (!(v1 >> 62))
    {
      v6 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_18;
      }

      goto LABEL_8;
    }

    result = sub_ABB060();
    if (result < 0)
    {
      break;
    }

    result = sub_ABB060();
    if (result < 0)
    {
      goto LABEL_21;
    }

    v9 = sub_ABB060();
    v7 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
LABEL_18:
      __break(1u);
      return v1;
    }

LABEL_8:
    v2 = v4;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v5)
      {
LABEL_2:
        sub_ABB060();
      }

LABEL_3:
      v1 = sub_ABAE30();
      goto LABEL_4;
    }

    if (v5)
    {
      goto LABEL_2;
    }

    if (v7 > *(&dword_18 + (v1 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      goto LABEL_3;
    }

LABEL_4:
    sub_61CAD4(0, 0, 1, v2);
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

id sub_61BFB4(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_AB9260();

  return v5;
}

uint64_t _sSo16UIViewControllerC9MusicCoreE23playActivityFeatureNameSSvg_0()
{
  if (qword_E0CDA0 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_E11240))
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_607768(v5);
  }

  return 0;
}

void sub_61C104(void *a1, uint64_t a2, void *a3)
{
  v4 = qword_E0CDA0;
  v5 = a3;
  v6 = a1;
  v7 = v6;
  if (v4 != -1)
  {
    swift_once();
    v6 = v7;
  }

  objc_setAssociatedObject(v6, qword_E11240, v5, &dword_0 + 3);
}

void _sSo16UIViewControllerC9MusicCoreE23playActivityFeatureNameSSvs_0(uint64_t a1, uint64_t a2)
{
  if (qword_E0CDA0 != -1)
  {
    swift_once();
  }

  v3 = qword_E11240;
  value = sub_AB9260();

  objc_setAssociatedObject(v2, v3, value, &dword_0 + 3);
}

uint64_t UITab.combinedPlayActivityFeatureName.getter()
{
  UITab.playActivityFeatureNames.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E103E0, &unk_B16BD0);
  sub_61CA70();
  sub_4FD6CC();
  v0 = sub_AB96C0();

  return v0;
}

char *UITab.playActivityFeatureNames.getter()
{
  v0 = UITab.path.getter();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (!(v0 >> 62))
  {
    v3 = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8));
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_24:
    v5 = _swiftEmptyArrayStorage;
    goto LABEL_25;
  }

LABEL_23:
  v3 = sub_ABB060();
  if (!v3)
  {
    goto LABEL_24;
  }

LABEL_3:
  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
  do
  {
    v20 = v5;
    v6 = v4;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = sub_ABAE20();
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_22;
        }

        v7 = *(v1 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v9 = [v7 playActivityFeatureName];
      v10 = sub_AB92A0();
      v12 = v11;

      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        v5 = v20;
        goto LABEL_25;
      }
    }

    v14 = v20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_506314(0, *(v20 + 2) + 1, 1, v20);
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    v17 = v14;
    if (v16 >= v15 >> 1)
    {
      v17 = sub_506314((v15 > 1), v16 + 1, 1, v14);
    }

    *(v17 + 2) = v16 + 1;
    v5 = v17;
    v18 = &v17[16 * v16];
    *(v18 + 4) = v10;
    *(v18 + 5) = v12;
  }

  while (v4 != v3);
LABEL_25:

  return v5;
}

void sub_61C4A8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_13C80(0, &qword_E11270, UIViewController_ptr);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0, &unk_B19F90);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

char *sub_61C5A0(char *result, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = &result[v7 + 32];
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + a2);
      if (&v8[a3] != v12 || result >= &v12[v11])
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

char *sub_61C65C(char *result, uint64_t a2, uint64_t a3)
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

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
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

unint64_t sub_61C700(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  type metadata accessor for ICURLBagKey(0);
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

unint64_t sub_61C7C4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E0A0, &qword_B16AF0);
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

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
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

uint64_t sub_61C894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for BagProvider.Observer();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_ABB060();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_ABB060();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_61C994(id value, void *a2, const void **a3, uint64_t a4)
{
  v7 = value;
  if (value)
  {
    v8 = _s27WeakViewControllerReferenceCMa();
    v9 = objc_allocWithZone(v8);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v10.receiver = v9;
    v10.super_class = v8;
    v7 = objc_msgSendSuper2(&v10, "init");
  }

  if (*a2 != -1)
  {
    swift_once();
  }

  objc_setAssociatedObject(v4, *a3, v7, &dword_0 + 1);
}

unint64_t sub_61CA70()
{
  result = qword_E11268;
  if (!qword_E11268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_E103E0, &unk_B16BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11268);
  }

  return result;
}

char *sub_61CAD4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_13C80(0, &qword_E112A0, UITab_ptr);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_ABB060();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_ABB060();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_61CC00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_13C80(0, &qword_E112A0, UITab_ptr);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_ABB060();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_ABB060();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t _sSo18UITabBarControllerC9MusicCoreE24playActivityFeatureNames015sourceChildViewC0SaySSGSo06UIViewC0CSg_tF_0()
{
  v3 = v0;
  v4 = [v0 selectedTab];
  if (!v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0, &unk_B1DCB0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_AF4EC0;
    v18 = [v0 playActivityFeatureName];
    v19 = sub_AB92A0();
    v21 = v20;

    result = v17;
    *(v17 + 32) = v19;
    *(v17 + 40) = v21;
    return result;
  }

  v5 = v4;
  v6 = [v4 managingTabGroup];
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v6;
  v8 = [v6 managingNavigationController];
  if (!v8)
  {

LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0, &unk_B1DCB0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_AF4EC0;
    v23 = [v3 playActivityFeatureName];
    v24 = sub_AB92A0();
    v26 = v25;

    *(v22 + 32) = v24;
    *(v22 + 40) = v26;

    return v22;
  }

  v9 = v8;
  v10 = UITab.path.getter();
  v48 = v10;
  v11 = [v9 viewControllers];
  sub_13C80(0, &qword_E11270, UIViewController_ptr);
  v12 = sub_AB9760();

  if (v12 >> 62)
  {
    result = sub_ABB060();
    v47 = v9;
    if (result)
    {
LABEL_6:
      if ((v12 & 0xC000000000000001) != 0)
      {
        v14 = sub_ABAE20();
      }

      else
      {
        if (!*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_37;
        }

        v14 = *(v12 + 32);
      }

      v1 = v14;

      v15 = [v1 tab];
      if (!v15)
      {

        goto LABEL_21;
      }

      v2 = v15;
      result = sub_61A058(v15, v10, &qword_E112A0, UITab_ptr);
      if (v16)
      {

        goto LABEL_21;
      }

      if (v10 >> 62)
      {
        goto LABEL_38;
      }

      v27 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
      if (v27 >= result)
      {
        goto LABEL_18;
      }

LABEL_39:
      __break(1u);
      return result;
    }
  }

  else
  {
    result = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
    v47 = v9;
    if (result)
    {
      goto LABEL_6;
    }
  }

  while (1)
  {
LABEL_21:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0, &unk_B1DCB0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_AF4EC0;
    v28 = [v3 playActivityFeatureName];
    v29 = sub_AB92A0();
    v31 = v30;

    *(v1 + 32) = v29;
    *(v1 + 40) = v31;
    v46 = v1;
    if (v10 >> 62)
    {
      v3 = sub_ABB060();
      if (!v3)
      {
LABEL_33:

        goto LABEL_34;
      }
    }

    else
    {
      v3 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
      if (!v3)
      {
        goto LABEL_33;
      }
    }

    v44 = v7;
    v45 = v5;
    result = sub_503918(0, v3 & ~(v3 >> 63), 0);
    if ((v3 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    v42 = v7;
    v43 = result;
    v27 = sub_ABB060();
    result = v43;
    v7 = v42;
    if (v27 < result)
    {
      goto LABEL_39;
    }

LABEL_18:
    sub_52B4DC(result, v27);

    v10 = v48;
  }

  v32 = 0;
  do
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v33 = sub_ABAE20();
    }

    else
    {
      v33 = *(v10 + 8 * v32 + 32);
    }

    v34 = v33;
    v35 = [v33 playActivityFeatureName];
    v36 = sub_AB92A0();
    v38 = v37;

    v40 = _swiftEmptyArrayStorage[2];
    v39 = _swiftEmptyArrayStorage[3];
    if (v40 >= v39 >> 1)
    {
      sub_503918((v39 > 1), v40 + 1, 1);
    }

    ++v32;
    _swiftEmptyArrayStorage[2] = v40 + 1;
    v41 = &_swiftEmptyArrayStorage[2 * v40];
    v41[4] = v36;
    v41[5] = v38;
  }

  while (v3 != v32);

  v7 = v44;
  v5 = v45;
LABEL_34:
  sub_511054(_swiftEmptyArrayStorage);

  return v46;
}

unint64_t sub_61D1B8(unint64_t result, uint64_t a2, uint64_t a3)
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

uint64_t *NSUserDefaults.mobileiPod.unsafeMutableAddressor()
{
  if (qword_E0CDC0 != -1)
  {
    swift_once();
  }

  return &static NSUserDefaults.mobileiPod;
}

Swift::Bool __swiftcall NSUserDefaults.BOOL(forKey:withDefault:)(Swift::String forKey, Swift::Bool withDefault)
{
  countAndFlagsBits = forKey._countAndFlagsBits;
  sub_4FD6CC();

  NSUserDefaults.subscript.getter(&v5);

  if (v6)
  {
    if (swift_dynamicCast())
    {
      return countAndFlagsBits;
    }
  }

  else
  {
    sub_607768(&v5);
  }

  return withDefault;
}

void sub_61D3C0()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_AB9260();
  v2 = [v0 initWithSuiteName:v1];

  static NSUserDefaults.mobileiPod = v2;
}

uint64_t static NSUserDefaults.mobileiPod.getter()
{
  if (qword_E0CDC0 != -1)
  {
    swift_once();
  }

  v0 = static NSUserDefaults.mobileiPod;
  v1 = static NSUserDefaults.mobileiPod;
  return v0;
}

BOOL NSUserDefaults.MobileiPod.init(rawValue:)(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D1BE58;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  return v4 != 0;
}

Swift::Int sub_61D50C()
{
  sub_ABB5C0();
  sub_AB93F0();
  return sub_ABB610();
}

Swift::Int sub_61D580(uint64_t a1)
{
  sub_ABB5C0();
  sub_AB93F0();
  return sub_ABB610();
}

void (*NSUserDefaults.hasUserRequestedSubscriptionHidden.modify(uint64_t *a1))(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_5DE384();
  *(v4 + 48) = sub_4FD6CC();
  NSUserDefaults.subscript.getter(v4);
  if (!*(v4 + 24))
  {
    sub_607768(v4);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v5 = *(v4 + 57);
LABEL_9:
  *(v4 + 56) = v5;
  return sub_61D6E4;
}

uint64_t sub_61D710(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_4FD6CC();
  NSUserDefaults.subscript.getter(&v4);
  if (v5)
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v3;
    }
  }

  else
  {
    sub_607768(&v4);
    return 0;
  }

  return result;
}

unint64_t sub_61D7A8()
{
  result = qword_E112A8;
  if (!qword_E112A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E112A8);
  }

  return result;
}

uint64_t sub_61D81C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v10 = &type metadata for Bool;
  v9[0] = a1;
  v4 = a2(a1);
  v5 = sub_4FD6CC();
  return NSUserDefaults.subscript.setter(v9, v6, a3, v4, v5, v7);
}

void (*NSUserDefaults.hasSeenDownloadPinsAlert.modify(uint64_t *a1))(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_61D7A8();
  *(v4 + 48) = sub_4FD6CC();
  NSUserDefaults.subscript.getter(v4);
  if (!*(v4 + 24))
  {
    sub_607768(v4);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v5 = *(v4 + 57);
LABEL_9:
  *(v4 + 56) = v5;
  return sub_61D964;
}

void sub_61D970(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v4 = *a1;
  v5 = *(*a1 + 56);
  v6 = *(*a1 + 40);
  v7 = *(*a1 + 48);
  v9 = &type metadata for Bool;
  v8[0] = v5;
  NSUserDefaults.subscript.setter(v8, a2, a3, v6, v7, a4);

  free(v4);
}

Swift::Int sub_61D9D0()
{
  sub_ABB5C0();
  sub_AB93F0();
  return sub_ABB610();
}

Swift::Int sub_61DA44(uint64_t a1)
{
  sub_ABB5C0();
  sub_AB93F0();
  return sub_ABB610();
}

void sub_61DAA4(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, BOOL *a3@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v4 = a1[1];
  v7._object = v4;
  v6 = sub_ABB140(a2, v7);

  *a3 = v6 != 0;
}

id MPPlaybackUserDefaults.transitionStyleForCatalogPlayback.getter()
{
  if (qword_E0CC60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v2);

  v3[4] = v2[4];
  v3[5] = v2[5];
  v3[6] = v2[6];
  v3[7] = v2[7];
  v3[0] = v2[0];
  v3[1] = v2[1];
  v3[2] = v2[2];
  v3[3] = v2[3];
  sub_70C54(v3);
  return [v0 transitionStyleForUserWithCatalogPlaybackCapability:BYTE8(v3[0]) & 1];
}

unint64_t sub_61DC0C()
{
  result = qword_E112B0;
  if (!qword_E112B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E112B0);
  }

  return result;
}

unint64_t sub_61DC84()
{
  result = qword_E112B8;
  if (!qword_E112B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E112B8);
  }

  return result;
}

id static ICUserIdentity.active.getter()
{
  v0 = [swift_getObjCClassFromMetadata() activeAccount];

  return v0;
}

id static ICUserIdentityStore.activeAccountDSID.getter()
{
  v0 = [swift_getObjCClassFromMetadata() defaultIdentityStore];
  v1 = [objc_opt_self() activeAccount];
  v6 = 0;
  v2 = [v0 DSIDForUserIdentity:v1 outError:&v6];

  v3 = v6;
  if (!v2)
  {
    v4 = v3;
    sub_AB3050();

    swift_willThrow();

    return 0;
  }

  return v2;
}

uint64_t static ICMusicKitRequestContext.music.getter()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4[4] = sub_61EE64;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_41A314;
  v4[3] = &block_descriptor_184;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithBlock:v1];
  _Block_release(v1);

  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    return v2;
  }

  __break(1u);
  return result;
}

id static ICURLSessionManager.musicSession.getter()
{
  v0 = [objc_opt_self() highPrioritySession];

  return v0;
}

double ICURLBag.subscript.getter@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if ([v2 valueForBagKey:a1])
  {
    sub_ABAB50();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t *ICClientInfo.music.unsafeMutableAddressor()
{
  if (qword_E0CDC8 != -1)
  {
    swift_once();
  }

  return &static ICClientInfo.music;
}

void sub_61E004(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    v5 = sub_AB9260();
    v6 = sub_AB9260();
    v7 = [objc_opt_self() clientInfoForMusicKitRequestWithClientIdentifier:v5 clientVersion:v6];

    [v3 setClientInfo:v7];
    v8 = objc_opt_self();
    v9 = v4;
    v10 = [v8 defaultIdentityStore];
    [v3 setIdentityStore:v10];

    v11 = [objc_opt_self() activeAccount];
    [v3 setIdentity:v11];
  }
}

void static ICStoreRequestContext.default(withConfigurationBlock:)(uint64_t a1, uint64_t a2)
{
  v5[2] = a1;
  v5[3] = a2;
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = swift_allocObject();
  *(v3 + 16) = sub_61EE80;
  *(v3 + 24) = v5;
  aBlock[4] = sub_3F328C;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_41A314;
  aBlock[3] = &block_descriptor_3_5;
  v4 = _Block_copy(aBlock);

  [v2 initWithBlock:v4];
  _Block_release(v4);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }
}

void sub_61E2F4(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = objc_opt_self();
    v8 = a1;
    v5 = [v4 defaultIdentityStore];
    [v3 setIdentityStore:v5];

    v6 = [objc_opt_self() activeAccount];
    [v3 setIdentity:v6];

    [v3 setAllowsExpiredBags:1];
    v7 = [objc_allocWithZone(ICURLResponseAuthenticationProvider) initWithUserInteractionLevel:1];
    [v3 setAuthenticationProvider:v7];

    if (qword_E0CDD0 != -1)
    {
      swift_once();
    }

    [v3 setClientInfo:static ICClientInfo.storeFlow];
  }
}

void sub_61E488(void *a1, void (*a2)(void *))
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = objc_opt_self();
    v9 = a1;
    v7 = [v6 defaultIdentityStore];
    [v5 setIdentityStore:v7];

    v8 = [objc_opt_self() activeAccount];
    [v5 setIdentity:v8];

    a2(v5);
  }
}

id static ICStoreRequestContext.current.getter()
{
  v0 = [objc_opt_self() activeAccount];
  v1 = [objc_allocWithZone(ICStoreRequestContext) initWithIdentity:v0];

  return v1;
}

uint64_t static ICStoreRequestContext.storeFlow.getter()
{
  v0 = objc_allocWithZone(ICStoreRequestContext);
  v4[4] = sub_61EE60;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_41A314;
  v4[3] = &block_descriptor_6_1;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithBlock:v1];
  _Block_release(v1);

  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t *ICClientInfo.storeFlow.unsafeMutableAddressor()
{
  if (qword_E0CDD0 != -1)
  {
    swift_once();
  }

  return &static ICClientInfo.storeFlow;
}

id sub_61E74C()
{
  result = [objc_allocWithZone(ICClientInfo) initWithSystemApplicationType:0];
  static ICClientInfo.music = result;
  return result;
}

void *sub_61E7A8()
{
  result = sub_61E7C8();
  static ICClientInfo.storeFlow = result;
  return result;
}

void *sub_61E7C8()
{
  v0 = [objc_allocWithZone(ICClientInfo) initWithSystemApplicationType:0];
  [v0 mutableCopy];

  sub_ABAB50();
  swift_unknownObjectRelease();
  sub_61EF88();
  swift_dynamicCast();
  v1 = sub_AB9260();
  [v3 setBagProfileVersion:v1];

  return v3;
}

double ICURLBag.subscript.getter@<D0>(_OWORD *a3@<X8>)
{
  v5 = sub_AB9260();
  v6 = [v3 valueForBagKey:v5];

  if (v6)
  {
    sub_ABAB50();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

_OWORD *ICURLBag.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v4;
  v6 = v3;
  v10 = *(sub_ABA9C0() - 8);
  __chkstk_darwin();
  v13 = &v40 - v12;
  v14 = a1[2];
  if (!v14)
  {
    sub_61EE98();
    swift_allocError();
    *v33 = 0u;
    *(v33 + 16) = 0u;
    *(v33 + 32) = 0;
    *(v33 + 40) = 2;
    return swift_willThrow();
  }

  v46 = v11;
  v15 = a1[4];

  v16 = v15;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52 = a1;
  if (!isUniquelyReferenced_nonNull_native || (v14 - 1) > a1[3] >> 1)
  {
    a1 = sub_5068D4(isUniquelyReferenced_nonNull_native, v14, 1, a1);
    v52 = a1;
  }

  sub_61C700(0, 1, 0);
  if (![v6 valueForBagKey:v16])
  {

    sub_61EE98();
    swift_allocError();
    *v34 = v16;
    *(v34 + 40) = 0;
    return swift_willThrow();
  }

  v41 = v10;
  v42 = a3;
  v44 = v13;
  v45 = a2;
  v43 = v5;
  sub_ABAB50();
  swift_unknownObjectRelease();
  sub_9ACFC(v50, v51);
  sub_808B0(v51, v50);
  v18 = a1[2];
  result = v16;
  v20 = result;
  v47 = result;
  if (v18)
  {
    v21 = 0;
    v22 = v47;
    while (v21 < a1[2])
    {
      v23 = a1[v21 + 4];
      sub_808B0(v50, v49);
      v20 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E13070, &unk_B1C590);
      if (!swift_dynamicCast())
      {

        sub_61EE98();
        swift_allocError();
        v38 = v37;
        *v37 = v20;
        sub_808B0(v50, (v37 + 1));
        *(v38 + 40) = 1;
        goto LABEL_22;
      }

      v24 = v48;
      v25 = sub_AB92A0();
      if (!*(v24 + 16))
      {

LABEL_21:

        sub_61EE98();
        swift_allocError();
        *v39 = v20;
        *(v39 + 40) = 0;
LABEL_22:
        swift_willThrow();

        goto LABEL_23;
      }

      v27 = sub_52215C(v25, v26);
      v29 = v28;

      if ((v29 & 1) == 0)
      {
        goto LABEL_21;
      }

      ++v21;
      sub_808B0(*(v24 + 56) + 32 * v27, v49);

      __swift_destroy_boxed_opaque_existential_0(v50);
      result = sub_9ACFC(v49, v50);
      v22 = v20;
      if (v18 == v21)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    sub_808B0(v50, v49);
    v31 = v44;
    v30 = v45;
    if (swift_dynamicCast())
    {

      __swift_destroy_boxed_opaque_existential_0(v50);
      __swift_destroy_boxed_opaque_existential_0(v51);
      v32 = *(v30 - 8);
      (*(v32 + 56))(v31, 0, 1, v30);
      return (*(v32 + 32))(v42, v31, v30);
    }

    else
    {
      (*(*(v30 - 8) + 56))(v31, 1, 1, v30);
      (*(v41 + 8))(v31, v46);
      sub_61EE98();
      swift_allocError();
      v36 = v35;
      *v35 = v20;
      sub_808B0(v50, (v35 + 1));
      *(v36 + 40) = 1;
      swift_willThrow();

LABEL_23:
      __swift_destroy_boxed_opaque_existential_0(v50);
      return __swift_destroy_boxed_opaque_existential_0(v51);
    }
  }

  return result;
}

double block_copy_helper_184(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_61EE98()
{
  result = qword_E161C0;
  if (!qword_E161C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E161C0);
  }

  return result;
}

unint64_t sub_61EEF0()
{
  result = qword_E112C0;
  if (!qword_E112C0)
  {
    type metadata accessor for ICEnvironmentMonitorThermalPressureLevel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E112C0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So8ICURLBagC9MusicCoreE5ErrorO(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

__n128 __swift_memcpy41_8_0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t sub_61EF88()
{
  result = qword_E112C8;
  if (!qword_E112C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E112C8);
  }

  return result;
}

uint64_t Gliss.Direction.init(playerDirection:layoutDirection:)(uint64_t a1, char a2, uint64_t a3)
{
  if ((a1 - 1) <= 1)
  {
    v3 = a3 == 1;
  }

  else
  {
    v3 = 2;
  }

  if ((a1 + 2) < 2)
  {
    v3 = a3 != 1;
  }

  if (a2)
  {
    return 2;
  }

  else
  {
    return v3;
  }
}

unint64_t MPCPlayerDirection.description.getter(uint64_t a1)
{
  if (a1 > 0)
  {
    if (a1 == 1)
    {
      v1 = 0xE700000000000000;
      v2 = 0x64726177726F66;
      goto LABEL_16;
    }

    if (a1 == 5)
    {
      v1 = 0xED0000797261646ELL;
      v2 = 0x756F426575657571;
      goto LABEL_16;
    }

    if (a1 != 2)
    {
LABEL_13:
      v1 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      goto LABEL_16;
    }

    v2 = 0x4A64726177726F66;
LABEL_11:
    v1 = 0xEB00000000706D75;
    goto LABEL_16;
  }

  if (a1 == -2)
  {
    v2 = 0x4A65737265766572;
    goto LABEL_11;
  }

  if (a1 == -1)
  {
    v1 = 0xE700000000000000;
    v2 = 0x65737265766572;
    goto LABEL_16;
  }

  if (a1)
  {
    goto LABEL_13;
  }

  v1 = 0xEA00000000007972;
  v2 = 0x616E6F6974617473;
LABEL_16:
  sub_ABAD90(21);

  v4._countAndFlagsBits = v2;
  v4._object = v1;
  sub_AB94A0(v4);

  return 0xD000000000000013;
}

uint64_t sub_61F1A4()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E71EB0);
  __swift_project_value_buffer(v0, qword_E71EB0);
  return sub_AB4BB0();
}

uint64_t sub_61F224@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v35 = a2;
  v38 = a1;
  v39 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_ABA9C0();
  v33 = *(v10 - 8);
  v34 = v10;
  __chkstk_darwin();
  v36 = &v33 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v13 = sub_ABA9C0();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v33 - v15;
  __chkstk_darwin();
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v12 - 8);
  v20 = __chkstk_darwin();
  v22 = &v33 - v21;
  (*(v23 + 16))(v18, v38, a4, v20);
  v24 = swift_dynamicCast();
  v25 = *(v19 + 56);
  if (v24)
  {
    v26 = v39;
    v25(v16, 0, 1, v12);
    (*(v19 + 32))(v22, v16, v12);
    v27 = v36;
    (*(a5 + 32))(v22, v35, a3, a5);
    v28 = AssociatedTypeWitness;
    v29 = *(AssociatedTypeWitness - 8);
    if ((*(v29 + 48))(v27, 1, AssociatedTypeWitness) == 1)
    {
      (*(v19 + 8))(v22, v12);
      result = (*(v33 + 8))(v27, v34);
      *v26 = 0u;
      v26[1] = 0u;
    }

    else
    {
      *(v26 + 3) = v28;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v26);
      (*(v29 + 32))(boxed_opaque_existential_0, v27, v28);
      return (*(v19 + 8))(v22, v12);
    }
  }

  else
  {
    v25(v16, 1, 1, v12);
    result = (*(v14 + 8))(v16, v13);
    v31 = v39;
    *v39 = 0u;
    v31[1] = 0u;
  }

  return result;
}

double sub_61F644(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for Gliss.Transition(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v11 = v9;
    v12 = *(a3 + 40);

    v12(v11, a2, a3);
  }

  return result;
}

double sub_61F740(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for Gliss.Transition(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v11 = v9;
    v12 = *(a3 + 48);

    v12(v11, a2, a3);
  }

  return result;
}

uint64_t sub_61F83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v30 = a3;
  v29 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_ABA9C0();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v28 - v12;
  __chkstk_darwin();
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(AssociatedTypeWitness - 8);
  v17 = __chkstk_darwin();
  v19 = &v28 - v18;
  (*(v20 + 16))(v15, a1, a4, v17);
  v21 = swift_dynamicCast();
  v22 = *(v16 + 56);
  if (v21)
  {
    v22(v13, 0, 1, AssociatedTypeWitness);
    (*(v16 + 32))(v19, v13, AssociatedTypeWitness);
    if (v29)
    {
      v23 = v30;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      type metadata accessor for Gliss.Transition(0, AssociatedTypeWitness, AssociatedConformanceWitness, v25);
      v26 = swift_dynamicCastClass();
    }

    else
    {
      v26 = 0;
      v23 = v30;
    }

    (*(a5 + 56))(v19, v26, v23, a5);
    return (*(v16 + 8))(v19, AssociatedTypeWitness);
  }

  else
  {
    v22(v13, 1, 1, AssociatedTypeWitness);
    return (*(v11 + 8))(v13, v10);
  }
}

void sub_61FB48(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    for (i = (a3 + 32); ; ++i)
    {
      v8 = *i;
      v7 = v8;
      a1(&v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return;
      }
    }
  }
}

void sub_61FBDC(uint64_t a1, void (*a2)(uint64_t *, __int128 *), uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 32); ; ++i)
    {
      v9 = *i;
      v8 = v9;
      a2(&v10, &v9);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return;
      }
    }
  }
}

id Gliss.Coordinator.__allocating_init(item:dataSource:gestureConfiguration:coordinatedViews:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  v11 = sub_629800(a1, a2, a3, a4);

  sub_17654(*(a3 + 8), *(a3 + 16));
  sub_17654(*(a3 + 24), *(a3 + 32));
  sub_17654(*(a3 + 40), *(a3 + 48));
  swift_unknownObjectRelease();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v11;
}

id Gliss.Coordinator.init(item:dataSource:gestureConfiguration:coordinatedViews:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_629800(a1, a2, a3, a4);

  sub_17654(*(a3 + 8), *(a3 + 16));
  sub_17654(*(a3 + 24), *(a3 + 32));
  sub_17654(*(a3 + 40), *(a3 + 48));
  swift_unknownObjectRelease();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v6;
}

uint64_t sub_61FE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_61F83C(a2, 0, ObjectType, AssociatedTypeWitness, v5, v8);
}

double Gliss.Coordinator.dataSource.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*Gliss.Coordinator.dataSource.modify(uint64_t *a1))(void **a1, char a2, __n128 a3)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = *(&stru_20.nsects + (swift_isaMask & *v1));
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_6200B4;
}

void sub_6200B4(void **a1, char a2, __n128 a3)
{
  v4 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v4);
}

uint64_t Gliss.Coordinator.gestureConfiguration.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + *&stru_68.sectname[swift_isaMask & *v1];
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v8 = *(v3 + 4);
  v9 = *(v3 + 5);
  v10 = *(v3 + 6);
  v11 = v4;
  sub_307CC(v5, v6);
  sub_307CC(v7, v8);
  result = sub_307CC(v9, v10);
  *a1 = v11;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;
  return result;
}

uint64_t Gliss.Coordinator.gestureConfiguration.setter(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v20 = *(a1 + 40);
  v18 = *(a1 + 32);
  v19 = *(a1 + 48);
  v7 = v1 + *&stru_68.sectname[swift_isaMask & *v1];
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 1);
  v10 = *(v7 + 2);
  v14 = *(v7 + 4);
  v15 = *(v7 + 3);
  v16 = *(v7 + 6);
  v17 = *(v7 + 5);
  v11 = *(a1 + 16);
  *v7 = *a1;
  *(v7 + 1) = v11;
  *(v7 + 2) = *(a1 + 32);
  *(v7 + 6) = *(a1 + 48);
  v12 = v3;
  sub_307CC(v4, v5);
  sub_307CC(v6, v18);
  sub_307CC(v20, v19);

  sub_17654(v9, v10);
  sub_17654(v15, v14);
  sub_17654(v17, v16);
  sub_625DE0();

  sub_17654(v4, v5);
  sub_17654(v6, v18);
  return sub_17654(v20, v19);
}

void (*Gliss.Coordinator.gestureConfiguration.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_6203CC;
}

void sub_6203CC(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_625DE0();
  }
}

double Gliss.Coordinator.GestureConfiguration.init(hostingView:simultaneousGestureRecognizerAllowance:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  result = 0.0;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.init(hostingView:hitRect:simultaneousGestureRecognizerAllowance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a3;
  *a6 = a1;
  a6[1] = sub_629BD0;
  a6[2] = result;
  a6[3] = 0;
  a6[4] = 0;
  a6[5] = a4;
  a6[6] = a5;
  return result;
}

uint64_t sub_620494(uint64_t a1, double (*a2)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11468, &qword_B1E300);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_AF4EC0;
  *(v4 + 32) = a2(a1);
  *(v4 + 40) = v5;
  *(v4 + 48) = v6;
  *(v4 + 56) = v7;
  return v4;
}

uint64_t Gliss.Coordinator.GestureConfiguration.init(hostingView:hitRects:simultaneousGestureRecognizerAllowance:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = 0;
  a6[4] = 0;
  a6[5] = a4;
  a6[6] = a5;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.init(hostingView:hitTest:simultaneousGestureRecognizerAllowance:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = 0;
  a6[2] = 0;
  a6[3] = a2;
  a6[4] = a3;
  a6[5] = a4;
  a6[6] = a5;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.hitRects.getter()
{
  v1 = *(v0 + 8);
  sub_307CC(v1, *(v0 + 16));
  return v1;
}

uint64_t Gliss.Coordinator.GestureConfiguration.hitRects.setter(uint64_t a1, uint64_t a2)
{
  result = sub_17654(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.hitTest.getter()
{
  v1 = *(v0 + 24);
  sub_307CC(v1, *(v0 + 32));
  return v1;
}

uint64_t Gliss.Coordinator.GestureConfiguration.hitTest.setter(uint64_t a1, uint64_t a2)
{
  result = sub_17654(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.simultaneousGestureRecognizerAllowance.getter()
{
  v1 = *(v0 + 40);
  sub_307CC(v1, *(v0 + 48));
  return v1;
}

uint64_t Gliss.Coordinator.GestureConfiguration.simultaneousGestureRecognizerAllowance.setter(uint64_t a1, uint64_t a2)
{
  result = sub_17654(*(v2 + 40), *(v2 + 48));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

double Gliss.Coordinator.addCoordinatedView<A>(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *&stru_68.segname[(swift_isaMask & *v3) - 8];
  swift_beginAccess();
  v7 = *(v3 + v6);
  v8 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_506D38(0, v7[2] + 1, 1, v7);
    *(v3 + v6) = v7;
  }

  v11 = v7[2];
  v10 = v7[3];
  if (v11 >= v10 >> 1)
  {
    v7 = sub_506D38((v10 > 1), v11 + 1, 1, v7);
  }

  v7[2] = v11 + 1;
  v12 = &v7[2 * v11];
  v12[4] = v8;
  v12[5] = a3;
  *(v3 + v6) = v7;
  swift_endAccess();
  return result;
}

void Gliss.Coordinator.removeCoordinatedView<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *&stru_68.segname[(swift_isaMask & *v2) - 8];
  swift_beginAccess();
  v4 = *(v2 + v3);
  v5 = *(v4 + 16);

  if (v5)
  {
    v6 = 0;
    v7 = 32;
    while (1)
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
        return;
      }

      v8 = *(v4 + v7);
      sub_13C80(0, &qword_E112E0, NSObject_ptr);
      v9 = v8;
      v10 = sub_ABA790();

      if (v10)
      {
        break;
      }

      ++v6;
      v7 += 16;
      if (v5 == v6)
      {
        goto LABEL_6;
      }
    }

    swift_beginAccess();
    v11 = sub_5207C4(v6);
    swift_endAccess();
    if (!swift_dynamicCastUnknownClass())
    {
    }
  }

  else
  {
LABEL_6:
  }
}

uint64_t Gliss.Coordinator.item.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *v2;
  v5 = swift_isaMask;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_ABA9C0();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v16[-v9];
  v11 = *(v2 + *&stru_68.segname[(v5 & v4) + 16]);
  if (v11)
  {
    v12 = *(*v11 + 128);
    swift_beginAccess();
    if (*(v11 + v12) != 6)
    {
      v13 = *(*v11 + 112);
      swift_beginAccess();
      (*(v8 + 16))(v10, v11 + v13, v7);
      v14 = *(AssociatedTypeWitness - 8);
      if ((*(v14 + 48))(v10, 1, AssociatedTypeWitness) != 1)
      {
        return (*(v14 + 32))(a1, v10, AssociatedTypeWitness);
      }

      (*(v8 + 8))(v10, v7);
    }
  }

  return sub_620B34(a1);
}

uint64_t sub_620B34@<X0>(uint64_t a1@<X8>)
{
  v3 = *&stru_68.segname[swift_isaMask & *v1];
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a1, &v1[v3], AssociatedTypeWitness);
}

double sub_620C18(uint64_t a1)
{
  v3 = *&stru_68.segname[swift_isaMask & *v1];
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 40))(&v1[v3], a1, AssociatedTypeWitness);
  swift_endAccess();
  return result;
}

uint64_t sub_620D04@<X0>(uint64_t a1@<X8>)
{
  v3 = *&stru_68.segname[(swift_isaMask & *v1) + 8];
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_ABA9C0();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

double sub_620DF4(uint64_t a1)
{
  v3 = *&stru_68.segname[(swift_isaMask & *v1) + 8];
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_ABA9C0();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  swift_endAccess();
  return result;
}

void Gliss.Coordinator.setItem(_:animationDirection:animated:)(void *a1, uint64_t a2, char a3, __n128 a4)
{
  if (a3)
  {
    v4 = -64;
  }

  else
  {
    v4 = -2;
  }

  Gliss.Coordinator.setItem(_:animationDirection:animation:)(a1, a2, 0, 0, v4, a4);

  sub_629BD8(0, 0, v4);
}

double Gliss.Coordinator.setItem(_:animationDirection:animation:)(void *a1, unsigned int a2, void *a3, uint64_t a4, unsigned int a5, __n128 a6)
{
  v115 = a5;
  v117 = a4;
  v120 = a3;
  v118 = a2;
  v8 = *(&stru_20.maxprot + (swift_isaMask & *v6));
  v9 = *(&stru_20.filesize + (swift_isaMask & *v6));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v13 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v12;
  __chkstk_darwin();
  v15 = &v104 - v14;
  sub_ABA9C0();
  v16 = __chkstk_darwin();
  v18 = &v104 - v17;
  v111 = *(v11 + 56);
  v112 = v11 + 56;
  v111(&v104 - v17, 1, 1, AssociatedTypeWitness, v16);
  v113 = v18;
  sub_620DF4(v18);
  v121 = v6;
  Gliss.Coordinator.item.getter(v15);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = sub_AB91C0();
  v116 = v11;
  v21 = *(v11 + 8);
  v119 = v15;
  v21(v15, AssociatedTypeWitness);
  if ((v20 & 1) == 0)
  {
    v105 = AssociatedConformanceWitness;
    v109 = v9;
    if (qword_E0CDD8 != -1)
    {
      swift_once();
    }

    v23 = sub_AB4BC0();
    v24 = __swift_project_value_buffer(v23, qword_E71EB0);
    v26 = v116 + 16;
    v25 = *(v116 + 16);
    v25(v13, a1, AssociatedTypeWitness);
    v122 = v24;
    v27 = sub_AB4BA0();
    v28 = sub_AB9F50();
    v29 = os_log_type_enabled(v27, v28);
    v110 = v8;
    v108 = a1;
    v107 = v26;
    v106 = v25;
    if (v29)
    {
      v30 = AssociatedTypeWitness;
      v31 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v125[0] = v104;
      *v31 = 136446210;
      v25(v119, v13, v30);
      v32 = sub_AB9350();
      v34 = v33;
      v21(v13, v30);
      v35 = sub_500C84(v32, v34, v125);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_0, v27, v28, "Attempting to set item=%{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v104);

      AssociatedTypeWitness = v30;
    }

    else
    {

      v21(v13, AssociatedTypeWitness);
    }

    v36 = v121;
    v37 = sub_AB4BA0();
    v38 = sub_AB9F50();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v115;
    v41 = v117;
    if (v39)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v125[0] = v43;
      *v42 = 136446210;
      Gliss.Coordinator.item.getter(v119);
      v44 = sub_AB9350();
      v46 = sub_500C84(v44, v45, v125);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_0, v37, v38, "  Current Item=%{public}s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
    }

    v47 = sub_AB4BA0();
    v48 = sub_AB9F50();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v125[0] = v50;
      *v49 = 136446210;
      LOBYTE(v124[0]) = v118;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E112D8, &qword_B1E188);
      v51 = sub_AB9350();
      v53 = sub_500C84(v51, v52, v125);

      *(v49 + 4) = v53;
      _os_log_impl(&dword_0, v47, v48, "  Direction=%{public}s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
    }

    v54 = v120;
    sub_629C00(v120, v41, v40);
    v55 = sub_AB4BA0();
    v56 = sub_AB9F50();
    sub_629BD8(v54, v41, v40);
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v124[0] = v58;
      *v57 = 136446210;
      v125[0] = v54;
      v125[1] = v41;
      v126 = v40;
      sub_629C00(v54, v41, v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E112D0, &qword_B1E180);
      v59 = sub_AB9350();
      v61 = sub_500C84(v59, v60, v124);

      *(v57 + 4) = v61;
      _os_log_impl(&dword_0, v55, v56, "  Animation=%{public}s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
    }

    v63 = v108;
    v64 = *(v36 + *&stru_68.segname[(swift_isaMask & *v36) + 16]);
    if (v64 && (v65 = *(*v64 + 128), swift_beginAccess(), *(v64 + v65)))
    {

      v66 = sub_AB4BA0();
      v67 = sub_AB9F50();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        v125[0] = v121;
        *v68 = 136446210;
        v123 = v64;
        type metadata accessor for Gliss.Transition(0, AssociatedTypeWitness, v105, v69);
        swift_getWitnessTable();
        v70 = sub_ABB330();
        v72 = sub_500C84(v70, v71, v125);

        *(v68 + 4) = v72;
        _os_log_impl(&dword_0, v66, v67, "  Ongoing Transition=%{public}s", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v121);
      }

      v73 = v106;
      v74 = sub_AB4BA0();
      v75 = sub_AB9F50();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&dword_0, v74, v75, "  ⏳ Queueing item until ongoing transition completes", v76, 2u);
      }

      v77 = v113;
      v73(v113, v63, AssociatedTypeWitness);
      (v111)(v77, 0, 1, AssociatedTypeWitness);
      v78 = sub_620DF4(v77);
      v79 = v119;
      (v73)(v119, v63, AssociatedTypeWitness, v78);
      v80 = v116;
      v81 = (*(v116 + 80) + 32) & ~*(v116 + 80);
      v82 = (v81 + v114 + 7) & 0xFFFFFFFFFFFFFFF8;
      v83 = (v81 + v114 + 23) & 0xFFFFFFFFFFFFFFF8;
      v84 = swift_allocObject();
      v85 = v110;
      *(v84 + 16) = v109;
      *(v84 + 24) = v85;
      (*(v80 + 32))(v84 + v81, v79, AssociatedTypeWitness);
      v86 = v84 + v82;
      *v86 = v36;
      *(v86 + 8) = v118;
      v87 = v84 + v83;
      v88 = v120;
      v89 = v117;
      *v87 = v120;
      *(v87 + 8) = v89;
      *(v87 + 16) = v40;
      v90 = v36;
      sub_629C00(v88, v89, v40);
      Gliss.Transition.addCompletion(_:)(sub_629CF8, v84);
    }

    else
    {
      v91 = sub_622B70(v63, v118, v62);
      v92 = v120;
      if (v40 >= 0xFEu)
      {
        v93 = 0;
      }

      else
      {
        v93 = v120;
      }

      if (v40 >= 0xFEu)
      {
        v94 = 0;
      }

      else
      {
        v94 = v41;
      }

      if (v40 >= 0xFEu)
      {
        v95 = -64;
      }

      else
      {
        v95 = v40;
      }

      v96 = v91 + *(*v91 + 136);
      v97 = *v96;
      v98 = *(v96 + 1);
      *v96 = v93;
      *(v96 + 1) = v94;
      v99 = v96[16];
      v96[16] = v95;
      sub_629C00(v92, v41, v40);
      sub_629BEC(v97, v98, v99);
      sub_62388C(v91);
      v100 = v119;
      v106(v119, v63, AssociatedTypeWitness);
      sub_620C18(v100);
      v101 = *&stru_68.segname[(swift_isaMask & *v36) - 8];
      swift_beginAccess();
      v102 = *(v36 + v101);
      __chkstk_darwin();
      v103 = v110;
      *(&v104 - 4) = v109;
      *(&v104 - 3) = v103;
      *(&v104 - 2) = v63;
      *(&v104 - 1) = v91;

      sub_61FB48(sub_62A998, (&v104 - 6), v102);

      sub_624B3C(v91, v40 < 0xFEu);
    }
  }

  return result;
}

double sub_621AE8(uint64_t *a1, uint64_t a2, char *a3, void *a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v67 = a8;
  v68 = a5;
  v69 = a6;
  v70 = a7;
  v83 = a4;
  v65 = *a1;
  v9 = *(v65 + 80);
  v10 = sub_ABA9C0();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v73 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin();
  v12 = &v64 - v11;
  v84 = v10;
  v76 = *(v10 - 8);
  __chkstk_darwin();
  v66 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v64 - v14;
  __chkstk_darwin();
  v17 = &v64 - v16;
  __chkstk_darwin();
  v81 = &v64 - v18;
  v19 = *(v9 - 8);
  __chkstk_darwin();
  v75 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v64 - v21;
  if (qword_E0CDD8 != -1)
  {
    swift_once();
  }

  v78 = v12;
  v23 = sub_AB4BC0();
  v24 = __swift_project_value_buffer(v23, qword_E71EB0);
  v25 = *(v19 + 16);
  v79 = a3;
  v25(v22, a3, v9);
  v74 = v24;
  v26 = sub_AB4BA0();
  v27 = sub_AB9F50();
  v28 = os_log_type_enabled(v26, v27);
  v80 = v19;
  v72 = v15;
  v77 = v17;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v85[0] = v30;
    *v29 = 136446210;
    v25(v75, v22, v9);
    v31 = sub_AB9350();
    v33 = v32;
    v71 = *(v80 + 8);
    v71(v22, v9);
    v34 = sub_500C84(v31, v33, v85);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_0, v26, v27, "⌛️ Dequeuing item=%{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    v19 = v80;

    v17 = v77;
  }

  else
  {

    v71 = *(v19 + 8);
    v71(v22, v9);
  }

  v35 = v81;
  sub_620D04(v81);
  v25(v17, v79, v9);
  (*(v19 + 56))(v17, 0, 1, v9);
  v36 = *(TupleTypeMetadata2 + 48);
  v37 = *(v76 + 16);
  v38 = v19;
  v39 = v76;
  v40 = v78;
  v41 = v84;
  v37(v78, v35, v84);
  v37(&v40[v36], v17, v41);
  v42 = *(v38 + 48);
  if (v42(v40, 1, v9) == 1)
  {
    v43 = *(v39 + 8);
    v44 = v17;
    v45 = v84;
    v43(v44, v84);
    v43(v35, v45);
    if (v42(&v40[v36], 1, v9) == 1)
    {
      v43(v40, v84);
      return Gliss.Coordinator.setItem(_:animationDirection:animation:)(v79, v68, v69, v70, v67, v46);
    }

    goto LABEL_11;
  }

  v47 = v72;
  v37(v72, v40, v84);
  if (v42(&v40[v36], 1, v9) == 1)
  {
    v48 = *(v39 + 8);
    v49 = v84;
    v48(v77, v84);
    v48(v81, v49);
    v71(v47, v9);
LABEL_11:
    (*(v73 + 8))(v40, TupleTypeMetadata2);
    goto LABEL_12;
  }

  v59 = v75;
  (*(v80 + 32))(v75, &v40[v36], v9);
  v60 = sub_AB91C0();
  v61 = v71;
  v71(v59, v9);
  v62 = *(v39 + 8);
  v63 = v84;
  v62(v77, v84);
  v62(v81, v63);
  v61(v47, v9);
  v62(v40, v63);
  if (v60)
  {
    return Gliss.Coordinator.setItem(_:animationDirection:animation:)(v79, v68, v69, v70, v67, v46);
  }

LABEL_12:
  v50 = v83;
  v51 = sub_AB4BA0();
  v52 = sub_AB9F50();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v85[0] = v54;
    *v53 = 136446210;
    sub_620D04(v66);
    v55 = sub_AB9350();
    v57 = sub_500C84(v55, v56, v85);

    *(v53 + 4) = v57;
    _os_log_impl(&dword_0, v51, v52, "  ⌛️❌ Item no longer matches queued item=%{public}s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
  }

  return result;
}

void sub_6222E8(SEL *a1)
{
  v3 = *&stru_68.segname[(swift_isaMask & *v1) - 8];
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);

  if (v5)
  {
    v6 = 0;
    v7 = (v4 + 32);
    while (v6 < *(v4 + 16))
    {
      ++v6;
      v8 = *v7;
      v7 += 2;
      [v8 *a1];
      if (v5 == v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

double sub_6223A4(uint64_t a1)
{
  v2 = sub_AB3470();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11450, &qword_B1E2E8);
  __chkstk_darwin();
  v8 = &v30[-v7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11458, &unk_B1E2F0);
  __chkstk_darwin();
  v35 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v11 = &v30[-v10];
  v13 = __chkstk_darwin();
  v14 = &v30[-v12];
  if (a1)
  {
    v32 = v5;
    v15 = v3;
    v16 = *(v3 + 16);
    v34 = a1;
    v16(&v30[-v12], a1 + direct field offset for Gliss.Transition.id, v2, v13);
    v33 = v15;
    v17 = *(v15 + 56);
    v18 = 1;
    v17(v14, 0, 1, v2);
    v19 = *(v36 + *&stru_68.segname[(swift_isaMask & *v36) + 16]);
    if (v19)
    {
      (v16)(v11, v19 + direct field offset for Gliss.Transition.id, v2);
      v18 = 0;
    }

    v17(v11, v18, 1, v2);
    v20 = *(v6 + 48);
    sub_62A594(v14, v8);
    sub_62A594(v11, &v8[v20]);
    v21 = v33;
    v22 = *(v33 + 48);
    if (v22(v8, 1, v2) == 1)
    {
      v23 = v34;

      sub_12E1C(v11, &qword_E11458, &unk_B1E2F0);
      sub_12E1C(v14, &qword_E11458, &unk_B1E2F0);
      v24 = v23;
      if (v22(&v8[v20], 1, v2) == 1)
      {
        sub_12E1C(v8, &qword_E11458, &unk_B1E2F0);
LABEL_13:

        return v13.n128_f64[0];
      }
    }

    else
    {
      v25 = v35;
      sub_62A594(v8, v35);
      if (v22(&v8[v20], 1, v2) != 1)
      {
        v27 = v32;
        (*(v21 + 32))(v32, &v8[v20], v2);
        sub_62A604();
        v24 = v34;

        v31 = sub_AB91C0();
        v28 = *(v21 + 8);
        v28(v27, v2);
        sub_12E1C(v11, &qword_E11458, &unk_B1E2F0);
        sub_12E1C(v14, &qword_E11458, &unk_B1E2F0);
        v28(v35, v2);
        sub_12E1C(v8, &qword_E11458, &unk_B1E2F0);
        if (v31)
        {
          goto LABEL_13;
        }

LABEL_10:
        v26 = *(*v24 + 16);
        swift_beginAccess();
        if (*(v24 + v26) <= 2u)
        {
          sub_623B94(v24, 0);
        }

        goto LABEL_13;
      }

      v24 = v34;

      sub_12E1C(v11, &qword_E11458, &unk_B1E2F0);
      sub_12E1C(v14, &qword_E11458, &unk_B1E2F0);
      (*(v21 + 8))(v25, v2);
    }

    sub_12E1C(v8, &qword_E11450, &qword_B1E2E8);
    goto LABEL_10;
  }

  return v13.n128_f64[0];
}

double sub_6228A8(uint64_t a1)
{
  sub_629E20(a1);

  return result;
}

id sub_6228E0()
{
  v1 = *(&stru_68.offset + (swift_isaMask & *v0));
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    Gliss.Coordinator.gestureConfiguration.getter(v9);
    v4 = v9[0];
    sub_17654(v9[1], v9[2]);
    sub_17654(v9[3], v9[4]);
    sub_17654(v9[5], v9[6]);
    v5 = [objc_opt_self() feedbackGeneratorWithStyle:1 forView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_6229BC()
{
  v1 = *(&stru_68.reloff + (swift_isaMask & *v0));
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    Gliss.Coordinator.gestureConfiguration.getter(v9);
    v4 = v9[0];
    sub_17654(v9[1], v9[2]);
    sub_17654(v9[3], v9[4]);
    sub_17654(v9[5], v9[6]);
    v5 = [objc_opt_self() feedbackGeneratorWithStyle:3 forView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_622A98()
{
  v1 = *(&stru_68.flags + (swift_isaMask & *v0));
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    Gliss.Coordinator.gestureConfiguration.getter(v9);
    v4 = v9[0];
    sub_17654(v9[1], v9[2]);
    sub_17654(v9[3], v9[4]);
    sub_17654(v9[5], v9[6]);
    v5 = [objc_opt_self() feedbackGeneratorForView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_622B70(uint64_t a1, unsigned int a2, __n128 a3)
{
  v4 = v3;
  v97 = a1;
  v6 = *v3;
  v7 = swift_isaMask;
  v8 = *(&stru_20.maxprot + (swift_isaMask & *v3));
  v95 = *(&stru_20.filesize + (swift_isaMask & *v3));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v94 = sub_ABA9C0();
  v90 = *(v94 - 8);
  __chkstk_darwin();
  v87 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v86 = &v81 - v11;
  __chkstk_darwin();
  v13 = &v81 - v12;
  __chkstk_darwin();
  v15 = &v81 - v14;
  v96 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v93 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v89 = &v81 - v17;
  __chkstk_darwin();
  v92 = &v81 - v18;
  __chkstk_darwin();
  v91 = &v81 - v19;
  __chkstk_darwin();
  v21 = &v81 - v20;
  v22 = *(v4 + *&stru_68.segname[(v7 & v6) + 16]);
  v88 = a2;
  if (v22)
  {
    v23 = *(*v22 + 128);
    swift_beginAccess();
    if (*(v22 + v23) <= 2u)
    {
      v82 = v8;
      v24 = *(*v22 + 112);
      swift_beginAccess();
      v25 = v90;
      v26 = *(v90 + 16);
      v85 = v24;
      v84 = v26;
      v26(v15, v22 + v24, v94);
      v27 = v96;
      v83 = *(v96 + 48);
      if (v83(v15, 1, AssociatedTypeWitness) == 1)
      {
        v28 = *(v25 + 8);

        v28(v15, v94);
      }

      else
      {
        (*(v27 + 32))(v21, v15, AssociatedTypeWitness);
        swift_getAssociatedConformanceWitness();

        v29 = sub_AB91C0();
        (*(v27 + 8))(v21, AssociatedTypeWitness);
        if (v29)
        {
          return v22;
        }
      }

      v84(v13, v22 + v85, v94);
      if (v83(v13, 1, AssociatedTypeWitness) == 1)
      {
        (*(v90 + 8))(v13, v94);
        v30 = *(*v22 + 104);
        swift_beginAccess();
        v31 = v96;
        v32 = v91;
        (*(v96 + 16))(v91, v22 + v30, AssociatedTypeWitness);
        v8 = v82;
        swift_getAssociatedConformanceWitness();
        LOBYTE(v30) = sub_AB91C0();
        (*(v31 + 8))(v32, AssociatedTypeWitness);
        if (v30)
        {
          return v22;
        }
      }

      else
      {

        (*(v90 + 8))(v13, v94);
        v8 = v82;
      }
    }
  }

  v83 = v4;
  if (qword_E0CDD8 != -1)
  {
    swift_once();
  }

  v33 = sub_AB4BC0();
  v34 = __swift_project_value_buffer(v33, qword_E71EB0);
  v35 = v96;
  v36 = *(v96 + 16);
  v37 = v92;
  v36(v92, v97, AssociatedTypeWitness);
  v85 = v34;
  v38 = sub_AB4BA0();
  v39 = sub_AB9F50();
  v40 = os_log_type_enabled(v38, v39);
  v84 = v36;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v82 = v8;
    v42 = v41;
    v43 = swift_slowAlloc();
    v100 = v43;
    *v42 = 136446210;
    v36(v91, v37, AssociatedTypeWitness);
    v44 = sub_AB9350();
    v46 = v45;
    v92 = *(v96 + 8);
    (v92)(v37, AssociatedTypeWitness);
    v47 = sub_500C84(v44, v46, &v100);
    v48 = v82;

    *(v42 + 4) = v47;
    v35 = v96;
    _os_log_impl(&dword_0, v38, v39, "Creating transition for item=%{public}s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
  }

  else
  {
    v48 = v8;

    v92 = *(v35 + 8);
    (v92)(v37, AssociatedTypeWitness);
  }

  v49 = v89;
  v50 = v90;
  v51 = v83;
  v52 = *(v83 + *&stru_68.segname[(swift_isaMask & *v83) + 16]);
  if (!v52)
  {
    v55 = v86;
    (*(v35 + 56))(v86, 1, 1, AssociatedTypeWitness);
    v56 = v48;
    goto LABEL_19;
  }

  v53 = *(*v52 + 112);
  swift_beginAccess();
  v54 = v52 + v53;
  v55 = v86;
  (*(v50 + 16))(v86, v54, v94);
  v56 = v48;
  if ((*(v35 + 48))(v55, 1, AssociatedTypeWitness) == 1)
  {
LABEL_19:
    Gliss.Coordinator.item.getter(v49);
    v58 = (*(v35 + 48))(v55, 1, AssociatedTypeWitness);
    v57 = v84;
    if (v58 != 1)
    {
      (*(v50 + 8))(v55, v94);
    }

    v57(v93, v49, AssociatedTypeWitness);
    goto LABEL_22;
  }

  (*(v35 + 32))(v49, v55, AssociatedTypeWitness);
  v57 = v84;
  v84(v93, v49, AssociatedTypeWitness);
LABEL_22:
  v59 = v91;
  Gliss.Coordinator.item.getter(v91);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v61 = sub_AB91C0();
  v96 = v35 + 8;
  (v92)(v59, AssociatedTypeWitness);
  if (v61)
  {
    v62 = 1;
    v63 = v87;
  }

  else
  {
    v63 = v87;
    v57(v87, v97, AssociatedTypeWitness);
    v62 = 0;
  }

  (*(v35 + 56))(v63, v62, 1, AssociatedTypeWitness);
  type metadata accessor for Gliss.Transition(0, AssociatedTypeWitness, AssociatedConformanceWitness, v64);
  v65 = v63;
  v66 = *&stru_68.segname[(swift_isaMask & *v51) - 8];
  swift_beginAccess();
  v67 = *(v51 + v66);
  __chkstk_darwin();
  *(&v81 - 4) = v95;
  *(&v81 - 3) = v56;
  *(&v81 - 2) = v97;
  v68 = v88;
  *(&v81 - 8) = v88;

  sub_61FBDC(_swiftEmptyDictionarySingleton, sub_62A914, (&v81 - 6), v67);
  v70 = v69;

  v22 = sub_62AA08(v93, v65, v68, v70, 0.0);

  v71 = sub_AB4BA0();
  v72 = sub_AB9F50();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = v49;
    v75 = swift_slowAlloc();
    v98 = v22;
    v99 = v75;
    *v73 = 136446210;
    swift_getWitnessTable();
    v76 = sub_ABB330();
    v78 = sub_500C84(v76, v77, &v99);

    *(v73 + 4) = v78;
    _os_log_impl(&dword_0, v71, v72, "   Created Transition=%{public}s", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v75);

    v79 = v74;
  }

  else
  {

    v79 = v49;
  }

  (v92)(v79, AssociatedTypeWitness);
  return v22;
}

void sub_6237A4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v8 = *a2;
  v9 = *(a2 + 8);
  ObjectType = swift_getObjectType();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = v8;
  sub_61F224(a3, a4, ObjectType, AssociatedTypeWitness, v9, v13);
  sub_6A972C(v13, v12);
}

void sub_62388C(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  if (qword_E0CDD8 != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v5 = sub_AB4BC0();
    __swift_project_value_buffer(v5, qword_E71EB0);

    v6 = sub_AB4BA0();
    v7 = sub_AB9F50();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v26[0] = v9;
      *v8 = 136446210;
      type metadata accessor for Gliss.Transition(0, *(v4 + 80), *(v4 + 88), v10);
      swift_getWitnessTable();
      v11 = sub_ABB330();
      v13 = sub_500C84(v11, v12, v26);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_0, v6, v7, "Begin or Enqueue Transition=%{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
    }

    sub_62B720(2);

    sub_629E20(v14);

    v15 = *&stru_68.segname[(swift_isaMask & *v2) - 8];
    swift_beginAccess();
    v16 = *(v2 + v15);
    v4 = *(v16 + 16);

    if (!v4)
    {
      break;
    }

    v17 = 0;
    v18 = (v16 + 40);
    while (v17 < *(v16 + 16))
    {
      ++v17;
      v19 = *v18;
      v20 = *(v18 - 1);
      ObjectType = swift_getObjectType();
      sub_61F644(a1, ObjectType, v19, v22);

      v18 += 2;
      if (v4 == v17)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_12:
    swift_once();
  }

LABEL_8:

  sub_6222DC();
  v23 = sub_AB4BA0();
  v24 = sub_AB9F50();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_0, v23, v24, "   Transition Started!", v25, 2u);
  }
}

void sub_623B94(void **a1, char a2)
{
  v3 = v2;
  v6 = *a1;
  if (qword_E0CDD8 != -1)
  {
    swift_once();
  }

  v7 = sub_AB4BC0();
  __swift_project_value_buffer(v7, qword_E71EB0);

  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v58[0] = swift_slowAlloc();
    *v10 = 136446466;
    aBlock = a1;
    type metadata accessor for Gliss.Transition(0, v6[10], v6[11], v11);
    swift_getWitnessTable();
    v12 = sub_ABB330();
    v14 = sub_500C84(v12, v13, v58);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    if (a2)
    {
      v15 = 0x6574616D696E6128;
    }

    else
    {
      v15 = 0;
    }

    if (a2)
    {
      v16 = 0xEA00000000002964;
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    v17 = sub_500C84(v15, v16, v58);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_0, v8, v9, "Attempting to cancel transition=%{public}s %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v18 = *(*a1 + 16);
  swift_beginAccess();
  if (*(a1 + v18) == 2)
  {
    sub_62B720(4);
    sub_6222D0();
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = a2 & 1;
    *(v19 + 32) = v3;
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = v3;
    if (a2)
    {
      v21 = direct field offset for Gliss.Transition.id;
      v22 = *(&stru_68.size + (swift_isaMask & *v3));
      swift_beginAccess();
      v23 = *(v3 + v22);
      v24 = *(v23 + 16);
      swift_retain_n();
      v25 = v3;
      if (v24)
      {

        v26 = sub_522264(a1 + v21);
        if (v27)
        {
          v28 = *(*(v23 + 56) + 8 * v26);

          [v28 stopAnimation:0];
        }

        else
        {
        }
      }

      v33 = a1 + *(*a1 + 17);
      v50 = v21;
      v34 = *v33;
      v35 = *(v33 + 1);
      v36 = v33[16];
      Gliss.Coordinator.gestureConfiguration.getter(v58);
      v49 = v25;
      v38 = v58[0];
      v37 = v58[1];
      v39 = v58[2];
      sub_629C14(v34, v35, v36);
      sub_17654(v37, v39);
      sub_17654(v58[3], v58[4]);
      sub_17654(v58[5], v58[6]);
      v40 = sub_62AA80(a1, v38, v34, v35, v36);

      sub_629BEC(v34, v35, v36);
      v41 = swift_allocObject();
      *(v41 + 16) = sub_62A700;
      *(v41 + 24) = v19;
      v56 = sub_710F8;
      v57 = v41;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_1B5EB4;
      v55 = &block_descriptor_185;
      v42 = _Block_copy(&aBlock);

      [v40 addAnimations:v42];
      _Block_release(v42);
      v43 = swift_allocObject();
      v43[2] = sub_62A740;
      v43[3] = v20;
      v43[4] = v49;
      v43[5] = a1;
      v56 = sub_62A964;
      v57 = v43;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_624AE8;
      v55 = &block_descriptor_30_4;
      v44 = _Block_copy(&aBlock);

      v45 = v49;

      [v40 addCompletion:v44];
      _Block_release(v44);
      [v40 startAnimation];
      v46 = *(&stru_68.size + (swift_isaMask & *v45));
      swift_beginAccess();
      v47 = v40;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = *(v45 + v46);
      *(v45 + v46) = 0x8000000000000000;
      sub_525C78(v47, a1 + v50, isUniquelyReferenced_nonNull_native);
      *(v45 + v46) = v51;
      swift_endAccess();
    }

    else
    {
      swift_retain_n();
      v32 = v3;
      sub_625238(a1, 0, v32, sub_62A9C8, 0.0);
      sub_624290(a1, v32);
    }
  }

  else
  {
    v29 = sub_AB4BA0();
    v30 = sub_AB9F50();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v29, v30, "   🫷Ignored (Transition Not Active)", v31, 2u);
    }
  }
}

double sub_624290(char *a1, void *a2)
{
  v59 = *a1;
  v3 = &swift_isaMask;
  v4 = swift_isaMask & *a2;
  v61 = a2;
  v58 = v4;
  v5 = sub_AB3470();
  v6 = *(v5 - 8);
  v56 = v5;
  v57 = v6;
  __chkstk_darwin();
  v53 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11450, &qword_B1E2E8);
  __chkstk_darwin();
  v60 = &v53 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11458, &unk_B1E2F0);
  __chkstk_darwin();
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v53 - v12;
  __chkstk_darwin();
  v15 = (&v53 - v14);
  sub_62B720(6);
  if (qword_E0CDD8 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v16 = sub_AB4BC0();
    __swift_project_value_buffer(v16, qword_E71EB0);

    v17 = sub_AB4BA0();
    v18 = sub_AB9F50();

    v19 = os_log_type_enabled(v17, v18);
    v54 = v11;
    v55 = v8;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v63[0] = v21;
      *v20 = 136446210;
      v62[0] = a1;
      type metadata accessor for Gliss.Transition(0, *(v59 + 80), *(v59 + 88), v22);
      swift_getWitnessTable();
      v23 = sub_ABB330();
      v25 = sub_500C84(v23, v24, v63);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_0, v17, v18, "❎ Cancelled transition=%{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);

      v3 = &swift_isaMask;
    }

    v26 = *(v61 + *&stru_68.segname[(*v3 & *v61) + 16]);
    v28 = v56;
    v27 = v57;
    if (v26)
    {
      v29 = *(v57 + 2);
      v29(v15, v26 + direct field offset for Gliss.Transition.id, v56);
      v30 = *(v27 + 56);
      v30(v15, 0, 1, v28);
    }

    else
    {
      v30 = *(v57 + 7);
      v30(v15, 1, 1, v56);
      v29 = *(v27 + 16);
    }

    v29(v13, &a1[direct field offset for Gliss.Transition.id], v28);
    v30(v13, 0, 1, v28);
    v31 = v55[12];
    v32 = v60;
    sub_62A594(v15, v60);
    sub_62A594(v13, v32 + v31);
    v33 = *(v27 + 48);
    if (v33(v32, 1, v28) == 1)
    {
      sub_12E1C(v13, &qword_E11458, &unk_B1E2F0);
      v34 = v60;
      sub_12E1C(v15, &qword_E11458, &unk_B1E2F0);
      v8 = &swift_isaMask;
      if (v33(v34 + v31, 1, v28) != 1)
      {
        goto LABEL_12;
      }

      sub_12E1C(v34, &qword_E11458, &unk_B1E2F0);
      v35 = v58;
LABEL_14:
      sub_629E20(0);
      goto LABEL_15;
    }

    v57 = v13;
    v36 = v54;
    sub_62A594(v32, v54);
    if (v33(v32 + v31, 1, v28) == 1)
    {
      v37 = v27;
      sub_12E1C(v57, &qword_E11458, &unk_B1E2F0);
      v34 = v60;
      sub_12E1C(v15, &qword_E11458, &unk_B1E2F0);
      (*(v37 + 8))(v36, v28);
      v8 = &swift_isaMask;
LABEL_12:
      sub_12E1C(v34, &qword_E11450, &qword_B1E2E8);
      v35 = v58;
      goto LABEL_15;
    }

    v38 = v32 + v31;
    v39 = v32;
    v40 = v53;
    (*(v27 + 32))(v53, v38, v28);
    sub_62A604();
    v41 = v27;
    v42 = sub_AB91C0();
    v43 = *(v41 + 8);
    v43(v40, v28);
    sub_12E1C(v57, &qword_E11458, &unk_B1E2F0);
    sub_12E1C(v15, &qword_E11458, &unk_B1E2F0);
    v43(v36, v28);
    sub_12E1C(v39, &qword_E11458, &unk_B1E2F0);
    v8 = &swift_isaMask;
    v35 = v58;
    if (v42)
    {
      goto LABEL_14;
    }

LABEL_15:
    v44 = *(*a1 + 152);
    swift_beginAccess();
    v63[0] = *&a1[v44];
    __chkstk_darwin();
    *(&v53 - 2) = *(v35 + 80);
    *(&v53 - 2) = a1;
    type metadata accessor for Gliss.Transition(255, *(v59 + 80), *(v59 + 88), v45);
    swift_getFunctionTypeMetadata2();
    v3 = sub_AB9870();

    swift_getWitnessTable();
    sub_AB9680();

    v46 = v61;
    v47 = *&stru_68.segname[(swift_isaMask & *v61) - 8];
    swift_beginAccess();
    v48 = *(v46 + v47);
    v11 = *(v48 + 16);

    if (!v11)
    {
      break;
    }

    v13 = 0;
    v15 = (v48 + 40);
    while (v13 < *(v48 + 16))
    {
      ++v13;
      v49 = *v15;
      v3 = *(v15 - 1);
      ObjectType = swift_getObjectType();
      sub_61F740(a1, ObjectType, v49, v51);

      v15 += 2;
      if (v11 == v13)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }

LABEL_19:

  return result;
}