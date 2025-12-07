uint64_t AlbumPropertyProvider.hashValue.getter()
{
  sub_2177531E8();
  AlbumPropertyProvider.hash(into:)();
  return sub_217753238();
}

void (*sub_217584BD4(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  AlbumPropertyProvider.subscript.getter();
  return sub_21757E740;
}

uint64_t sub_217584C50(uint64_t a1)
{
  sub_2177531E8();
  AlbumPropertyProvider.hash(into:)();
  return sub_217753238();
}

uint64_t sub_217584D1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_217584D8C(uint64_t a1)
{
  sub_2172E2E58(319, &qword_280BE7698, &type metadata for Artwork);
  v2 = v1;
  if (v3 > 0x3F)
  {
    return v2;
  }

  sub_2172E2E58(319, &qword_280BE7598, MEMORY[0x277D837D0]);
  if (v5 > 0x3F)
  {
    return v4;
  }

  sub_2175854A8(319, qword_280BE99F8, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v7 = v6;
  if (v8 > 0x3F)
  {
    return v7;
  }

  sub_217351B44(319, &qword_280BE7570, &qword_27CB24C70, &unk_217759670);
  if (v10 > 0x3F)
  {
    return v9;
  }

  sub_2172E2E58(319, &qword_280BE7528, MEMORY[0x277D83B88]);
  if (v12 > 0x3F)
  {
    return v11;
  }

  sub_2172E2E58(319, &qword_280BE7E08, &type metadata for ContentRating);
  if (v13 > 0x3F)
  {
    return v9;
  }

  sub_2175854A8(319, &qword_280BE99F0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v15 > 0x3F)
  {
    return v14;
  }

  sub_217351B44(319, &qword_280BE75A8, &qword_27CB24BE8, &qword_2177595F0);
  if (v16 > 0x3F)
  {
    return v9;
  }

  sub_2172E2E58(319, &qword_280BE7DE8, &type metadata for EditorialNotes);
  if (v17 > 0x3F)
  {
    return v9;
  }

  sub_217351B44(319, &qword_280BE75B0, &qword_27CB24BE0, &unk_2177657E0);
  if (v18 > 0x3F)
  {
    return v9;
  }

  sub_2172E2E58(319, qword_280BE7948, &type metadata for LegacyModelFavoriteStatus);
  if (v19 > 0x3F)
  {
    return v9;
  }

  sub_217351B44(319, &qword_280BE7548, &qword_27CB24C58, &unk_2177677B0);
  if (v20 > 0x3F)
  {
    return v9;
  }

  sub_2172E2E58(319, &qword_280BE7540, MEMORY[0x277D839B0]);
  if (v21 > 0x3F)
  {
    return v9;
  }

  sub_2172E2E58(319, &qword_280BE77E0, &type metadata for LegacyModelKeepLocalEnabledStatus);
  if (v22 > 0x3F)
  {
    return v9;
  }

  sub_2172E2E58(319, &qword_280BE77D8, &type metadata for LegacyModelKeepLocalManagedStatus);
  if (v23 > 0x3F)
  {
    return v9;
  }

  sub_2172E2E58(319, &qword_280BE77C0, &type metadata for LegacyModelKeepLocalManagedStatusReasons);
  if (v24 > 0x3F)
  {
    return v9;
  }

  sub_217351B44(319, &qword_280BE7558, &qword_27CB24C50, &unk_217759650);
  v2 = v25;
  if (v26 > 0x3F)
  {
    return v2;
  }

  sub_2172E2E58(319, &qword_280BE7DD0, &type metadata for PlayParameters);
  v2 = v27;
  if (v28 > 0x3F)
  {
    return v2;
  }

  sub_217351B44(319, &qword_280BE7FA0, &qword_27CB25398, &unk_21776C4F0);
  v2 = v29;
  if (v30 > 0x3F)
  {
    return v2;
  }

  sub_217351B44(319, &qword_280BE7FB8, &qword_27CB25388, &unk_21775D410);
  v2 = v31;
  if (v32 > 0x3F)
  {
    return v2;
  }

  sub_217351B44(319, &qword_280BE7FB0, &qword_27CB27C80, &unk_21775D420);
  if (v33 > 0x3F)
  {
    return v9;
  }

  sub_217351B44(319, &qword_280BE7FA8, &qword_27CB240D0, &unk_21775D400);
  v7 = v34;
  if (v35 > 0x3F)
  {
    return v7;
  }

  sub_217351B44(319, &qword_280BE7FC8, &qword_27CB25390, &qword_217771CA0);
  if (v36 > 0x3F)
  {
    return v9;
  }

  sub_217351B44(319, &qword_280BE7F80, &unk_27CB28230, &unk_21775CD50);
  if (v37 > 0x3F)
  {
    return v9;
  }

  sub_217351B44(319, &qword_280BE7FD0, &qword_27CB25380, &unk_21775DAA0);
  v2 = v38;
  if (v39 <= 0x3F)
  {
    sub_2175854A8(319, qword_280BE76E8, type metadata accessor for Album.TracksPopularityProvider, MEMORY[0x277D83D88]);
    v2 = v40;
    if (v41 <= 0x3F)
    {
      sub_2172E2E58(319, qword_280BE7C10, &type metadata for CloudPivotMetadata);
      v2 = v42;
      if (v43 <= 0x3F)
      {
        sub_217351B44(319, &qword_280BE7550, &qword_27CB24BD8, &unk_2177595E0);
        v2 = v44;
        if (v45 <= 0x3F)
        {
          sub_217351B44(319, &qword_280BE7AB8, &qword_27CB24238, &unk_21775EA00);
          v2 = v46;
          if (v47 <= 0x3F)
          {
            sub_2175854A8(319, &qword_280BE7590, type metadata accessor for AnyMusicProperty, MEMORY[0x277D83940]);
            v2 = v48;
            if (v49 <= 0x3F)
            {
              sub_217351BFC();
              v2 = v50;
              if (v51 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_2175854A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t OUTLINED_FUNCTION_18_41@<X0>(uint64_t a1@<X8>)
{

  return sub_21726A630(a1 + v4, v1 + 6104, v2, v3);
}

uint64_t OUTLINED_FUNCTION_20_34(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_21_36(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_39(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_26_30(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_29_33(uint64_t a1)
{

  return swift_once();
}

void *OUTLINED_FUNCTION_65_21()
{

  return memcpy((v0 + 152), (v0 + 24), 0x68uLL);
}

void *OUTLINED_FUNCTION_68_18()
{

  return memcpy((v0 + 2640), (v1 + 104), 0x68uLL);
}

uint64_t OUTLINED_FUNCTION_69_16()
{
  v7 = *(v0 + 16) + v4;

  return sub_21726A630(v7, v5 + v3, v1, v2);
}

void *OUTLINED_FUNCTION_70_16()
{

  return memcpy((v0 + 752), (v0 + 1304), 0x68uLL);
}

uint64_t OUTLINED_FUNCTION_71_16(uint64_t a1)
{

  return sub_217751EB8();
}

uint64_t OUTLINED_FUNCTION_77_13@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 8) + a3;

  return sub_21726A630(v5, v3 + 152, a1, a2);
}

uint64_t OUTLINED_FUNCTION_83_15()
{

  return sub_217751FF8();
}

uint64_t OUTLINED_FUNCTION_86_14@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 16) + a3;

  return sub_21726A630(v5, v3 + 24, a1, a2);
}

uint64_t OUTLINED_FUNCTION_87_16(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_88_13(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_90_13@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 8) + a3;

  return sub_21726A630(v5, v3 + 152, a1, a2);
}

uint64_t OUTLINED_FUNCTION_91_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_94_11(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_96_13(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_97_11(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_99_14(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_102_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_103_13(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_104_11(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_105_14(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_106_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_107_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_108_11(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_109_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_112_13(uint64_t a1)
{

  return sub_21726A630(a1, v1 + 736, v2, v3);
}

uint64_t OUTLINED_FUNCTION_113_12()
{

  return sub_217753208();
}

uint64_t OUTLINED_FUNCTION_115_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_116_13(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_117_14(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_118_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_120_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_121_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_122_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_123_11(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_124_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_125_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_126_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_127_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_128_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_129_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_130_11(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_131_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_132_11(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_133_11(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_134_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_135_9()
{

  return type metadata accessor for AlbumPropertyProvider(0);
}

uint64_t OUTLINED_FUNCTION_142_9()
{

  return type metadata accessor for AlbumPropertyProvider(0);
}

uint64_t OUTLINED_FUNCTION_150_7(uint64_t a1)
{

  return sub_217752D08();
}

uint64_t OUTLINED_FUNCTION_151_8@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_21726A630(v4 + a3, v3 + 1304, a1, a2);
}

uint64_t OUTLINED_FUNCTION_171_8(uint64_t a1, uint64_t a2)
{

  return sub_21726A630(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_172_8(uint64_t a1)
{

  return sub_21726A630(a1, v1 + 3888, v2, v3);
}

uint64_t OUTLINED_FUNCTION_173_9@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_21726A630(v4 + a3, v3 + 24, a1, a2);
}

void *OUTLINED_FUNCTION_175_7()
{

  return memcpy((v0 + 6120), (v1 + 16), 0x68uLL);
}

double OUTLINED_FUNCTION_186_5()
{
  result = 0.0;
  *(v0 + 1712) = 0u;
  *(v0 + 1728) = 0u;
  return result;
}

void OUTLINED_FUNCTION_195_7()
{

  sub_2172838F8(v2, 1, v1, v0);
}

uint64_t OUTLINED_FUNCTION_196_7()
{

  return sub_217751F08();
}

void *OUTLINED_FUNCTION_197_5()
{

  return memcpy((v0 + 608), (v0 + 1160), 0x221uLL);
}

uint64_t OUTLINED_FUNCTION_199_4()
{

  return sub_217751DE8();
}

double OUTLINED_FUNCTION_200_5()
{
}

uint64_t OUTLINED_FUNCTION_201_5()
{
}

uint64_t OUTLINED_FUNCTION_202_5()
{

  return type metadata accessor for AlbumPropertyProvider(0);
}

MusicKit::FileAsset_optional __swiftcall FileAsset.init(rawStorageDictionary:)(Swift::OpaquePointer rawStorageDictionary)
{
  v2 = v1;
  sub_21729ED6C();

  v7 = sub_2173ACB3C();
  if (v29)
  {
    v8 = OUTLINED_FUNCTION_0_96(v3, v4, v5, MEMORY[0x277D839B0], v6, v7) & v27;
  }

  else
  {
    sub_217380914(v28);
    v8 = 0;
  }

  v13 = sub_2173ACB3C();
  if (!v29)
  {
    sub_217380914(v28);
    goto LABEL_10;
  }

  if ((OUTLINED_FUNCTION_0_96(v9, v10, v11, MEMORY[0x277D83B88], v12, v13) & 1) == 0)
  {
LABEL_10:
    v15 = 0;
    goto LABEL_11;
  }

  v14 = [objc_opt_self() protectionTypeForRawValue_];
  if (v14 >= 3)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14 << 8;
  }

LABEL_11:
  sub_2173ACB3C();

  if (!v29)
  {
    sub_217380914(v28);
    goto LABEL_15;
  }

  if ((OUTLINED_FUNCTION_0_96(v16, v17, v18, MEMORY[0x277D83B88], v19, v20) & 1) == 0)
  {
LABEL_15:
    v25 = 0;
    v26 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v24 = [objc_opt_self() audioTraitsForRawValue_];
  v25 = v24 & 1;
  sub_2175863C8();
  v26 = sub_217659CB4(v24);
LABEL_16:
  *v2 = v15 | v8;
  *(v2 + 8) = v26;
  *(v2 + 16) = v25;
  result.value.audioVariants._rawValue = v21;
  *&result.value.isNonPurgeable = v26;
  result.is_nil = v23;
  result.value.isAppleDigitalMaster = v22;
  return result;
}

MusicKit::FileAsset::ProtectionType_optional __swiftcall FileAsset.ProtectionType.init(legacyModelRawValue:)(Swift::Int legacyModelRawValue)
{
  v2 = v1;
  v3 = [objc_opt_self() protectionTypeForRawValue_];
  v4 = 3;
  if (v3 < 3)
  {
    v4 = v3;
  }

  *v2 = v4;
  return v3;
}

uint64_t FileAsset.convertToLegacyModelStorageDictionary(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 1);
  v7 = v3[16];
  sub_2172A5188(a1, a2, a3);
  v8 = sub_217751DC8();
  LOBYTE(v35) = v4;
  sub_21729D5AC(&v35, 0, v9, v10, v11, v12, v13, v14, v32, v35, v36, v37, MEMORY[0x277D839B0], v8, v39, v40, v41, v42, v43, v44, vars0, vars8);
  v15 = [objc_opt_self() rawValueForProtectionType_];
  sub_21729D5AC(&v35, 1, v16, v17, v18, v19, v20, v21, v33, v15, v36, v37, MEMORY[0x277D83B88], v38, v39, v40, v41, v42, v43, v44, vars0, vars8);
  sub_2175863C8();
  v22 = sub_217659BD4(v6, v7);
  if (v29)
  {
    v22 = 0;
    v30 = 0;
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v30 = MEMORY[0x277D83B88];
  }

  sub_21729D5AC(&v35, 2, v23, v24, v25, v26, v27, v28, v34, v22, v36, v37, v30, v38, v39, v40, v41, v42, v43, v44, vars0, vars8);
  return v38;
}

Swift::Int __swiftcall FileAsset.ProtectionType.convertToLegacyModelRawValue()()
{
  v1 = *v0;
  v2 = objc_opt_self();

  return [v2 rawValueForProtectionType_];
}

void FileAsset.LegacyModelFileAssetPropertyKey.init(rawValue:)(char *a2@<X8>)
{
  v3 = sub_217752DC8();

  v4 = 3;
  if (v3 < 3)
  {
    v4 = v3;
  }

  *a2 = v4;
}

unint64_t FileAsset.LegacyModelFileAssetPropertyKey.rawValue.getter()
{
  v1 = 0xD00000000000001ELL;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000026;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000024;
  }
}

unint64_t sub_217586344@<X0>(unint64_t *a1@<X8>)
{
  result = FileAsset.LegacyModelFileAssetPropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Int sub_2175863A0@<X0>(Swift::Int *a1@<X8>)
{
  result = FileAsset.ProtectionType.convertToLegacyModelRawValue()();
  *a1 = result;
  return result;
}

unint64_t sub_2175863C8()
{
  result = qword_280BE74C8;
  if (!qword_280BE74C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BE74C8);
  }

  return result;
}

unint64_t sub_217586410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE84C0;
  if (!qword_280BE84C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE84C0);
  }

  return result;
}

unint64_t sub_217586464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2172A5188(a1, a2, a3);
  *(a1 + 8) = v4;
  result = sub_217586494(v4, v5, v6);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_217586494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29D08;
  if (!qword_27CB29D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29D08);
  }

  return result;
}

unint64_t sub_2175864EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29D10;
  if (!qword_27CB29D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29D10);
  }

  return result;
}

_BYTE *_s31LegacyModelFileAssetPropertyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t UnfairLock.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t sub_217586664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a7@<X8>)
{
  os_unfair_lock_lock(*(a1 + 16));
  swift_beginAccess();
  v10 = *(a2 + 16);
  if (!*(v10 + 16))
  {
    goto LABEL_5;
  }

  sub_217751DE8();
  v11 = sub_217632668();
  if ((v12 & 1) == 0)
  {

LABEL_5:
    a7[1] = 0u;
    a7[2] = 0u;
    *a7 = 0u;
    goto LABEL_6;
  }

  sub_21733B548(*(v10 + 56) + 48 * v11, a7);

LABEL_6:
  os_unfair_lock_unlock(*(a1 + 16));
}

uint64_t sub_217586768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock(*(a1 + 16));
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  *(a2 + 24) = a3;
  *(a2 + 32) = a4;
  sub_2172B3A88(a3, a4);
  sub_2172202A4(v8, v9);
  os_unfair_lock_unlock(*(a1 + 16));

  return sub_2172202A4(a3, a4);
}

uint64_t sub_2175867F8(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(*(a1 + 16));
  OUTLINED_FUNCTION_0_97(a2 + 40, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB29D18, &qword_2177A07E0);
  sub_217751E18();
  swift_endAccess();
  os_unfair_lock_unlock(*(a1 + 16));
}

BOOL sub_217586880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock(*(a1 + 16));
  v8 = *(a2 + 32);
  v9 = v8 != 0;
  if (v8 && (*(a2 + 24) == a3 ? (v10 = v8 == a4) : (v10 = 0), v10 || (sub_217753058() & 1) != 0))
  {
    v9 = 0;
  }

  else
  {
    *(a2 + 24) = a3;
    *(a2 + 32) = a4;
    sub_217751DE8();
  }

  os_unfair_lock_unlock(*(a1 + 16));

  return v9;
}

uint64_t sub_217586944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  os_unfair_lock_lock(*(a1 + 16));
  OUTLINED_FUNCTION_0_97(a2 + 56, v6);
  sub_217586B6C(a3);
  swift_endAccess();
  os_unfair_lock_unlock(*(a1 + 16));
}

uint64_t sub_217586AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t (*a6)(uint64_t)@<X5>, uint64_t a7@<X8>)
{
  os_unfair_lock_lock(*(a1 + 16));
  OUTLINED_FUNCTION_0_97(a2 + 56, v14);
  sub_217586C00(a4, a5, a6, a7, a3);
  swift_endAccess();
  os_unfair_lock_unlock(*(a1 + 16));
}

void sub_217586B6C(_OWORD *a1@<X8>)
{
  if (*(*v1 + 16))
  {
    sub_217586D70(v4);
    if (v5[24] == 254)
    {
      sub_2171F06D8(v4, &unk_27CB27E60, &qword_21776BD18);
      sub_2176D198C(*(*v1 + 16) - 1, a1);
    }

    else
    {
      v3 = v4[1];
      *a1 = v4[0];
      a1[1] = v3;
      a1[2] = *v5;
      *(a1 + 41) = *&v5[9];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*sub_217586C00@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t (*a3)(uint64_t)@<X3>, uint64_t a4@<X8>, uint64_t (*result)(uint64_t)@<X0>))(uint64_t)
{
  if (*(*v5 + 16))
  {
    result = sub_217586DEC(result, v11);
    if (*(&v11[0] + 1) == 1)
    {
      sub_2171F06D8(v11, a1, a2);
      return a3(*(*v5 + 16) - 1);
    }

    else
    {
      v10 = v11[1];
      *a4 = v11[0];
      *(a4 + 16) = v10;
      *(a4 + 32) = v11[2];
      *(a4 + 48) = v12;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t UnfairLock.init()()
{
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t UnfairLock.__deallocating_deinit()
{
  MEMORY[0x21CEA4360](*(v0 + 16), -1, -1);

  return MEMORY[0x2821FE8D8](v0);
}

void sub_217586D70(_OWORD *a1@<X8>)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_217503580();
    v3 = v8;
  }

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v4 - 1;
    v6 = (v3 + (v5 << 6));
    v7 = v6[3];
    *a1 = v6[2];
    a1[1] = v7;
    a1[2] = v6[4];
    *(a1 + 41) = *(v6 + 73);
    *(v3 + 16) = v5;
    *v1 = v3;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_217586DEC@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a1(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = v7 - 1;
    v9 = v5 + 56 * v7;
    v10 = *(v9 - 8);
    *a2 = *(v9 - 24);
    *(a2 + 16) = v10;
    *(a2 + 32) = *(v9 + 8);
    *(a2 + 48) = *(v9 + 24);
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_217586E78(uint64_t a1)
{
  sub_217215924(255, &qword_27CB29DA0, 0x277CCA9B8);
  sub_217587E2C();
  sub_217753278();
  result = sub_2177528F8();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_217586F94(uint64_t a1, uint64_t a2)
{
  v3 = sub_2177513E8();
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = *(a1 + 32);
  sub_2177513B8();

  v10(v9);

  return (*(v5 + 8))(v9, v3);
}

uint64_t sub_217587074(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = -1;
  type metadata accessor for UnfairLock();
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *(v11 + 16) = v12;
  *v12 = 0;
  *(v4 + 64) = v11;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  if (qword_280BE3398 != -1)
  {
    swift_once();
  }

  v13 = MEMORY[0x277D84F90];
  *(v4 + 88) = qword_280BE33A0;
  *(v4 + 96) = 0;
  *(v4 + 104) = v13;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3 & 1;
  if (a3)
  {
    v14 = sub_217752538();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v4;

    sub_21765A6D8(0, 0, v10, &unk_21777BCA8, v15);
  }

  else
  {
  }

  type metadata accessor for NetworkConnectivityMonitor(0);
  sub_2171FC2D8(&qword_27CB29DB8, type metadata accessor for NetworkConnectivityMonitor, &protocol conformance descriptor for NetworkConnectivityMonitor);
  v18[1] = sub_217751B88();
  swift_allocObject();
  swift_weakInit();
  sub_217751BA8();
  v16 = sub_217751C48();

  *(v4 + 96) = v16;

  return v4;
}

uint64_t sub_2175872F8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  *(v4 + 56) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 72) = -256;
  type metadata accessor for UnfairLock();
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *(v11 + 16) = v12;
  *v12 = 0;
  *(v4 + 80) = v11;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  if (qword_280BE3398 != -1)
  {
    swift_once();
  }

  v13 = MEMORY[0x277D84F90];
  *(v4 + 104) = qword_280BE33A0;
  *(v4 + 112) = 0;
  *(v4 + 120) = v13;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3 & 1;
  if (a3)
  {
    v14 = sub_217752538();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v4;

    sub_21765A6D8(0, 0, v10, &unk_21777BC68, v15);
  }

  else
  {
  }

  type metadata accessor for NetworkConnectivityMonitor(0);
  sub_2171FC2D8(&qword_27CB29DB8, type metadata accessor for NetworkConnectivityMonitor, &protocol conformance descriptor for NetworkConnectivityMonitor);
  v18[1] = sub_217751B88();
  swift_allocObject();
  swift_weakInit();
  sub_217751BA8();
  v16 = sub_217751C48();

  *(v4 + 112) = v16;

  return v4;
}

uint64_t sub_217587584()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21758A7BC;

  return sub_217587E94();
}

uint64_t sub_217587614()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2175876A4;

  return sub_21758867C();
}

uint64_t sub_2175876A4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();

  OUTLINED_FUNCTION_20_0();

  return v0();
}

uint64_t sub_21758778C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_217751C58();
  OUTLINED_FUNCTION_0_0();
  v23 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v22 = sub_217751C88();
  OUTLINED_FUNCTION_0_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  sub_217215924(0, &qword_280BE8490, 0x277D85C78);
  v18 = sub_217752838();
  OUTLINED_FUNCTION_37_3();
  v19 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  aBlock[4] = a3;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2172B5448;
  aBlock[3] = a4;
  v20 = _Block_copy(aBlock);

  sub_217751C78();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2171FC2D8(&qword_280BE99E8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24DA8, &qword_217768C60);
  sub_2172B3934();
  sub_217752A08();
  MEMORY[0x21CEA2BA0](0, v17, v11, v20);
  _Block_release(v20);

  (*(v23 + 8))(v11, v6);
  return (*(v13 + 8))(v17, v22);
}

uint64_t sub_217587A44(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t *sub_217587AA4()
{

  sub_21720BA7C();

  OUTLINED_FUNCTION_20_8();
  v2 = *(v1 + 104);
  sub_217215924(255, &qword_27CB29DA0, 0x277CCA9B8);
  sub_217587E2C();
  sub_217753278();
  v3 = sub_2177528F8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  OUTLINED_FUNCTION_20_8();

  OUTLINED_FUNCTION_20_8();

  OUTLINED_FUNCTION_20_8();

  return v0;
}

void sub_217587C18(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  v3 = *(a1 + *(*a1 + 152));
  v4 = sub_217204DD0(v3);
  sub_217751DE8();
  for (i = 0; v4 != i; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x21CEA2E30](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v6 = *(v3 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    [v2 removeObserver_];
    swift_unknownObjectRelease();
  }

  if (*(a1 + *(*a1 + 128)) == 1)
  {
    v7 = sub_217587DE0();
    [v7 endObservingCloudServiceStatus];
  }
}

uint64_t sub_217587D70()
{
  sub_217587AA4();

  return MEMORY[0x2821FE8D8](v0);
}

id sub_217587DE0()
{
  if (qword_280BEAE60 != -1)
  {
    OUTLINED_FUNCTION_3_3(&qword_280BEAE60);
  }

  v1 = qword_280C029A0;

  return v1;
}

unint64_t sub_217587E2C()
{
  result = qword_27CB29DA8;
  if (!qword_27CB29DA8)
  {
    sub_217215924(255, &qword_27CB29DA0, 0x277CCA9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29DA8);
  }

  return result;
}

uint64_t sub_217587EB4()
{
  OUTLINED_FUNCTION_30_0();
  if (qword_280BEAE60 != -1)
  {
    OUTLINED_FUNCTION_3_3(&qword_280BEAE60);
  }

  OUTLINED_FUNCTION_38_25();
  v1[20] = qword_280C029A0;
  v1[2] = v2;
  v1[7] = v1 + 18;
  OUTLINED_FUNCTION_30_32();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29DC0, &qword_21777BC78);
  OUTLINED_FUNCTION_1047(v3);
  OUTLINED_FUNCTION_1300(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_1_88();
  OUTLINED_FUNCTION_50_22(v4, sel_requestCapabilitiesWithCompletionHandler_);

  return MEMORY[0x282200938](v0);
}

uint64_t sub_217587FAC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 168) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2175880A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_25_41();
  a23 = v28;
  a24 = v29;
  OUTLINED_FUNCTION_904();
  a22 = v26;
  OUTLINED_FUNCTION_43_21();
  [v24 beginObservingCloudServiceStatus];
  v30 = *(v25 + 64);
  v31 = *(v30 + 16);

  os_unfair_lock_lock(v31);
  *(v25 + 72) = v27;
  *(v25 + 80) = 1;
  os_unfair_lock_unlock(*(v30 + 16));

  a11 = MEMORY[0x277D84F90];
  v32 = [objc_opt_self() defaultCenter];
  v33 = *MEMORY[0x277D7F8F0];
  OUTLINED_FUNCTION_37_3();
  v34 = swift_allocObject();
  OUTLINED_FUNCTION_31_31(v34);
  OUTLINED_FUNCTION_10_46();
  v26[10] = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_0_98();
  v26[12] = v35;
  v26[13] = &block_descriptor_39;
  _Block_copy(v26 + 10);
  v36 = OUTLINED_FUNCTION_57_18();
  v37 = OUTLINED_FUNCTION_6_63(v36, sel_addObserverForName_object_queue_usingBlock_);
  OUTLINED_FUNCTION_56_17();
  v38 = swift_unknownObjectRetain();
  MEMORY[0x21CEA25D0](v38);
  OUTLINED_FUNCTION_1351();
  if (v40)
  {
    v62 = OUTLINED_FUNCTION_16_50(v39);
    OUTLINED_FUNCTION_51_19(v62, v63);
  }

  OUTLINED_FUNCTION_48_19();
  OUTLINED_FUNCTION_37_3();
  v41 = swift_allocObject();
  OUTLINED_FUNCTION_34_30(v41);
  OUTLINED_FUNCTION_8_55();
  OUTLINED_FUNCTION_49_25(block_descriptor_43);
  v42 = OUTLINED_FUNCTION_55_20();
  v43 = OUTLINED_FUNCTION_7_56(v42, sel_addObserverForName_object_queue_usingBlock_);
  OUTLINED_FUNCTION_52_22();
  v44 = swift_unknownObjectRetain();
  MEMORY[0x21CEA25D0](v44);
  OUTLINED_FUNCTION_860();
  if (v40)
  {
    v64 = OUTLINED_FUNCTION_17_40(v45);
    OUTLINED_FUNCTION_51_19(v64, v65);
  }

  OUTLINED_FUNCTION_46_24();
  v46 = a11;
  OUTLINED_FUNCTION_62_18();
  os_unfair_lock_lock(&a11);
  *(v30 + 104) = v46;
  sub_217751DE8();

  os_unfair_lock_unlock(*(v30 + 16));

  if (qword_280BE73E0 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_280BE73E0);
  }

  v47 = OUTLINED_FUNCTION_60_23();
  OUTLINED_FUNCTION_42_27(v47, qword_280C023A8);
  v48 = sub_217751AD8();
  sub_217752828();
  OUTLINED_FUNCTION_59_17();
  if (OUTLINED_FUNCTION_58_18())
  {
    OUTLINED_FUNCTION_32_32();
    a12 = OUTLINED_FUNCTION_33_31();
    v49 = OUTLINED_FUNCTION_41_26(4.8751e-34);
    *(v33 + 4) = sub_21729C0E8(v49, v50, &a12);
    OUTLINED_FUNCTION_14_44(&dword_2171EE000, v51, v52, "Began observing subscription changes for %{public}s cache.");
    OUTLINED_FUNCTION_18_42();
    OUTLINED_FUNCTION_29_2();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_26_31();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, v30, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_217588388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_25_41();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_904();
  a22 = v24;
  v28 = *(v24 + 168);
  swift_willThrow();

  v29 = *(v24 + 152);
  [*(v24 + 160) beginObservingCloudServiceStatus];
  v30 = *(v29 + 64);
  v31 = *(v30 + 16);

  os_unfair_lock_lock(v31);
  *(v29 + 72) = 0;
  *(v29 + 80) = 1;
  v66 = v30;
  os_unfair_lock_unlock(*(v30 + 16));

  a10 = MEMORY[0x277D84F90];
  v32 = [objc_opt_self() defaultCenter];
  v33 = *MEMORY[0x277D7F8F0];
  OUTLINED_FUNCTION_37_3();
  v34 = swift_allocObject();
  OUTLINED_FUNCTION_31_31(v34);
  OUTLINED_FUNCTION_10_46();
  *(v24 + 80) = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_0_98();
  *(v24 + 96) = v35;
  *(v24 + 104) = &block_descriptor_39;
  _Block_copy((v24 + 80));
  v36 = OUTLINED_FUNCTION_57_18();
  v37 = OUTLINED_FUNCTION_6_63(v36, sel_addObserverForName_object_queue_usingBlock_);
  OUTLINED_FUNCTION_56_17();
  v38 = swift_unknownObjectRetain();
  MEMORY[0x21CEA25D0](v38);
  OUTLINED_FUNCTION_1351();
  if (v40)
  {
    v62 = OUTLINED_FUNCTION_16_50(v39);
    OUTLINED_FUNCTION_61_15(v62, v63);
  }

  OUTLINED_FUNCTION_47_22();
  OUTLINED_FUNCTION_37_3();
  v41 = swift_allocObject();
  OUTLINED_FUNCTION_34_30(v41);
  OUTLINED_FUNCTION_8_55();
  OUTLINED_FUNCTION_49_25(block_descriptor_43);
  v42 = OUTLINED_FUNCTION_55_20();
  v43 = OUTLINED_FUNCTION_7_56(v42, sel_addObserverForName_object_queue_usingBlock_);
  OUTLINED_FUNCTION_52_22();
  v44 = swift_unknownObjectRetain();
  MEMORY[0x21CEA25D0](v44);
  OUTLINED_FUNCTION_860();
  if (v40)
  {
    v64 = OUTLINED_FUNCTION_17_40(v45);
    OUTLINED_FUNCTION_61_15(v64, v65);
  }

  OUTLINED_FUNCTION_45_28();
  v46 = a10;
  OUTLINED_FUNCTION_62_18();
  os_unfair_lock_lock(&a10);
  *(v25 + 104) = v46;
  sub_217751DE8();

  os_unfair_lock_unlock(*(v66 + 16));

  if (qword_280BE73E0 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_280BE73E0);
  }

  v47 = OUTLINED_FUNCTION_60_23();
  OUTLINED_FUNCTION_42_27(v47, qword_280C023A8);
  v48 = sub_217751AD8();
  sub_217752828();
  OUTLINED_FUNCTION_59_17();
  if (OUTLINED_FUNCTION_58_18())
  {
    OUTLINED_FUNCTION_32_32();
    a11 = OUTLINED_FUNCTION_33_31();
    v49 = OUTLINED_FUNCTION_41_26(4.8751e-34);
    *(v33 + 4) = sub_21729C0E8(v49, v50, &a11);
    OUTLINED_FUNCTION_14_44(&dword_2171EE000, v51, v52, "Began observing subscription changes for %{public}s cache.");
    OUTLINED_FUNCTION_18_42();
    OUTLINED_FUNCTION_29_2();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_26_31();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, v66, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_21758869C()
{
  OUTLINED_FUNCTION_30_0();
  if (qword_280BEAE60 != -1)
  {
    OUTLINED_FUNCTION_3_3(&qword_280BEAE60);
  }

  OUTLINED_FUNCTION_38_25();
  v1[20] = qword_280C029A0;
  v1[2] = v2;
  v1[7] = v1 + 18;
  OUTLINED_FUNCTION_30_32();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29DC0, &qword_21777BC78);
  OUTLINED_FUNCTION_1047(v3);
  OUTLINED_FUNCTION_1300(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_1_88();
  OUTLINED_FUNCTION_50_22(v4, sel_requestCapabilitiesWithCompletionHandler_);

  return MEMORY[0x282200938](v0);
}

uint64_t sub_217588794()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 168) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_217588890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_25_41();
  a23 = v28;
  a24 = v29;
  OUTLINED_FUNCTION_904();
  a22 = v26;
  OUTLINED_FUNCTION_43_21();
  [v24 beginObservingCloudServiceStatus];
  v30 = *(v25 + 80);
  v31 = *(v30 + 16);

  os_unfair_lock_lock(v31);
  *(v25 + 88) = v27;
  *(v25 + 96) = 1;
  os_unfair_lock_unlock(*(v30 + 16));

  a11 = MEMORY[0x277D84F90];
  v32 = [objc_opt_self() defaultCenter];
  v33 = *MEMORY[0x277D7F8F0];
  OUTLINED_FUNCTION_37_3();
  v34 = swift_allocObject();
  OUTLINED_FUNCTION_31_31(v34);
  OUTLINED_FUNCTION_11_53();
  v26[10] = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_0_98();
  v26[12] = v35;
  v26[13] = &block_descriptor_9;
  _Block_copy(v26 + 10);
  v36 = OUTLINED_FUNCTION_57_18();
  v37 = OUTLINED_FUNCTION_6_63(v36, sel_addObserverForName_object_queue_usingBlock_);
  OUTLINED_FUNCTION_56_17();
  v38 = swift_unknownObjectRetain();
  MEMORY[0x21CEA25D0](v38);
  OUTLINED_FUNCTION_1351();
  if (v40)
  {
    v62 = OUTLINED_FUNCTION_16_50(v39);
    OUTLINED_FUNCTION_51_19(v62, v63);
  }

  OUTLINED_FUNCTION_48_19();
  OUTLINED_FUNCTION_37_3();
  v41 = swift_allocObject();
  OUTLINED_FUNCTION_34_30(v41);
  OUTLINED_FUNCTION_9_49();
  OUTLINED_FUNCTION_49_25(block_descriptor_13);
  v42 = OUTLINED_FUNCTION_55_20();
  v43 = OUTLINED_FUNCTION_7_56(v42, sel_addObserverForName_object_queue_usingBlock_);
  OUTLINED_FUNCTION_52_22();
  v44 = swift_unknownObjectRetain();
  MEMORY[0x21CEA25D0](v44);
  OUTLINED_FUNCTION_860();
  if (v40)
  {
    v64 = OUTLINED_FUNCTION_17_40(v45);
    OUTLINED_FUNCTION_51_19(v64, v65);
  }

  OUTLINED_FUNCTION_46_24();
  v46 = a11;
  OUTLINED_FUNCTION_62_18();
  os_unfair_lock_lock(&a11);
  *(v30 + 120) = v46;
  sub_217751DE8();

  os_unfair_lock_unlock(*(v30 + 16));

  if (qword_280BE73E0 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_280BE73E0);
  }

  v47 = OUTLINED_FUNCTION_60_23();
  OUTLINED_FUNCTION_42_27(v47, qword_280C023A8);
  v48 = sub_217751AD8();
  sub_217752828();
  OUTLINED_FUNCTION_59_17();
  if (OUTLINED_FUNCTION_58_18())
  {
    OUTLINED_FUNCTION_32_32();
    a12 = OUTLINED_FUNCTION_33_31();
    v49 = OUTLINED_FUNCTION_41_26(4.8751e-34);
    *(v33 + 4) = sub_21729C0E8(v49, v50, &a12);
    OUTLINED_FUNCTION_14_44(&dword_2171EE000, v51, v52, "Began observing subscription changes for %{public}s cache.");
    OUTLINED_FUNCTION_18_42();
    OUTLINED_FUNCTION_29_2();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_26_31();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, v30, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_217588B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_25_41();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_904();
  a22 = v24;
  v28 = *(v24 + 168);
  swift_willThrow();

  v29 = *(v24 + 152);
  [*(v24 + 160) beginObservingCloudServiceStatus];
  v30 = *(v29 + 80);
  v31 = *(v30 + 16);

  os_unfair_lock_lock(v31);
  *(v29 + 88) = 0;
  *(v29 + 96) = 1;
  v66 = v30;
  os_unfair_lock_unlock(*(v30 + 16));

  a10 = MEMORY[0x277D84F90];
  v32 = [objc_opt_self() defaultCenter];
  v33 = *MEMORY[0x277D7F8F0];
  OUTLINED_FUNCTION_37_3();
  v34 = swift_allocObject();
  OUTLINED_FUNCTION_31_31(v34);
  OUTLINED_FUNCTION_11_53();
  *(v24 + 80) = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_0_98();
  *(v24 + 96) = v35;
  *(v24 + 104) = &block_descriptor_9;
  _Block_copy((v24 + 80));
  v36 = OUTLINED_FUNCTION_57_18();
  v37 = OUTLINED_FUNCTION_6_63(v36, sel_addObserverForName_object_queue_usingBlock_);
  OUTLINED_FUNCTION_56_17();
  v38 = swift_unknownObjectRetain();
  MEMORY[0x21CEA25D0](v38);
  OUTLINED_FUNCTION_1351();
  if (v40)
  {
    v62 = OUTLINED_FUNCTION_16_50(v39);
    OUTLINED_FUNCTION_61_15(v62, v63);
  }

  OUTLINED_FUNCTION_47_22();
  OUTLINED_FUNCTION_37_3();
  v41 = swift_allocObject();
  OUTLINED_FUNCTION_34_30(v41);
  OUTLINED_FUNCTION_9_49();
  OUTLINED_FUNCTION_49_25(block_descriptor_13);
  v42 = OUTLINED_FUNCTION_55_20();
  v43 = OUTLINED_FUNCTION_7_56(v42, sel_addObserverForName_object_queue_usingBlock_);
  OUTLINED_FUNCTION_52_22();
  v44 = swift_unknownObjectRetain();
  MEMORY[0x21CEA25D0](v44);
  OUTLINED_FUNCTION_860();
  if (v40)
  {
    v64 = OUTLINED_FUNCTION_17_40(v45);
    OUTLINED_FUNCTION_61_15(v64, v65);
  }

  OUTLINED_FUNCTION_45_28();
  v46 = a10;
  OUTLINED_FUNCTION_62_18();
  os_unfair_lock_lock(&a10);
  *(v25 + 120) = v46;
  sub_217751DE8();

  os_unfair_lock_unlock(*(v66 + 16));

  if (qword_280BE73E0 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_280BE73E0);
  }

  v47 = OUTLINED_FUNCTION_60_23();
  OUTLINED_FUNCTION_42_27(v47, qword_280C023A8);
  v48 = sub_217751AD8();
  sub_217752828();
  OUTLINED_FUNCTION_59_17();
  if (OUTLINED_FUNCTION_58_18())
  {
    OUTLINED_FUNCTION_32_32();
    a11 = OUTLINED_FUNCTION_33_31();
    v49 = OUTLINED_FUNCTION_41_26(4.8751e-34);
    *(v33 + 4) = sub_21729C0E8(v49, v50, &a11);
    OUTLINED_FUNCTION_14_44(&dword_2171EE000, v51, v52, "Began observing subscription changes for %{public}s cache.");
    OUTLINED_FUNCTION_18_42();
    OUTLINED_FUNCTION_29_2();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_26_31();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, v66, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_217588E64(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_217718250();
  }

  else
  {
    v8 = *v5;

    return sub_21722F860(v8, a2);
  }
}

uint64_t sub_217588EE8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

uint64_t sub_217588F48()
{
  v1 = v0;
  v2 = *(v0 + 64);
  os_unfair_lock_assert_not_owner(*(v2 + 16));
  result = sub_217513F64();
  if (result)
  {
    v4 = *(v2 + 16);

    os_unfair_lock_lock(v4);
    sub_217589078(v1);
    os_unfair_lock_unlock(*(v2 + 16));
  }

  return result;
}

uint64_t sub_217588FE0()
{
  v1 = v0;
  v2 = *(v0 + 80);
  os_unfair_lock_assert_not_owner(*(v2 + 16));
  result = sub_217513F64();
  if (result)
  {
    v4 = *(v2 + 16);

    os_unfair_lock_lock(v4);
    sub_2175891D8(v1);
    os_unfair_lock_unlock(*(v2 + 16));
  }

  return result;
}

void sub_217589078(uint64_t result)
{
  v1 = *(result + 56);
  if (v1 != 255 && (v1 & 1) != 0)
  {
    if (qword_280BE73E0 != -1)
    {
      swift_once();
    }

    v3 = sub_217751AF8();
    __swift_project_value_buffer(v3, qword_280C023A8);

    v4 = sub_217751AD8();
    v5 = sub_217752828();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_21729C0E8(*(result + 16), *(result + 24), &v8);
      _os_log_impl(&dword_2171EE000, v4, v5, "Invalidating %{public}s cache with cached failure state due to recovered network connectivity.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x21CEA4360](v7, -1, -1);
      MEMORY[0x21CEA4360](v6, -1, -1);
    }

    sub_217589CA8();
  }
}

void sub_2175891D8(uint64_t result)
{
  v1 = *(result + 72);
  if (v1 >> 8 <= 0xFE && (v1 & 0x100) != 0)
  {
    if (qword_280BE73E0 != -1)
    {
      swift_once();
    }

    v4 = sub_217751AF8();
    __swift_project_value_buffer(v4, qword_280C023A8);

    v5 = sub_217751AD8();
    v6 = sub_217752828();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_21729C0E8(*(result + 16), *(result + 24), &v9);
      _os_log_impl(&dword_2171EE000, v5, v6, "Invalidating %{public}s cache with cached failure state due to recovered network connectivity.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x21CEA4360](v8, -1, -1);
      MEMORY[0x21CEA4360](v7, -1, -1);
    }

    sub_217589F04();
  }
}

uint64_t sub_217589340()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  os_unfair_lock_assert_not_owner(*(*(v0 + 64) + 16));
  v4 = sub_217752538();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  sub_21765A6D8(0, 0, v3, &unk_21777BCC0, v5);
}

uint64_t sub_217589430()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  os_unfair_lock_assert_not_owner(*(*(v0 + 80) + 16));
  v4 = sub_217752538();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  sub_21765A6D8(0, 0, v3, &unk_21777BC88, v5);
}

uint64_t sub_217589540()
{
  OUTLINED_FUNCTION_30_0();
  if (qword_280BEAE60 != -1)
  {
    OUTLINED_FUNCTION_3_3(&qword_280BEAE60);
  }

  OUTLINED_FUNCTION_38_25();
  *(v1 + 16) = v2;
  *(v1 + 56) = v1 + 144;
  OUTLINED_FUNCTION_30_32();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29DC0, &qword_21777BC78);
  OUTLINED_FUNCTION_1047(v3);
  OUTLINED_FUNCTION_1300(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_1_88();
  OUTLINED_FUNCTION_50_22(v4, sel_requestCapabilitiesWithCompletionHandler_);

  return MEMORY[0x282200938](v0);
}

uint64_t sub_217589634()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 160) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_217589730()
{
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_43_21();
  OUTLINED_FUNCTION_54_20();
  os_unfair_lock_lock(v0);
  if (v1)
  {
    v3 = 0;
  }

  else if (*(v2 + 72) == v3)
  {
    goto LABEL_5;
  }

  *(v2 + 72) = v3;
  sub_217589CA8();
LABEL_5:
  OUTLINED_FUNCTION_53_21();

  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_2175897D4()
{
  OUTLINED_FUNCTION_209();
  v2 = *(v1 + 160);
  swift_willThrow();

  v4 = *(v1 + 152);
  v3 = *(v1 + 160);
  OUTLINED_FUNCTION_54_20();
  os_unfair_lock_lock(v0);
  if (v3 || *(v4 + 72))
  {
    *(v4 + 72) = 0;
    sub_217589CA8();
  }

  OUTLINED_FUNCTION_53_21();

  OUTLINED_FUNCTION_20_0();

  return v5();
}

uint64_t sub_2175898A0()
{
  OUTLINED_FUNCTION_30_0();
  if (qword_280BEAE60 != -1)
  {
    OUTLINED_FUNCTION_3_3(&qword_280BEAE60);
  }

  OUTLINED_FUNCTION_38_25();
  *(v1 + 16) = v2;
  *(v1 + 56) = v1 + 144;
  OUTLINED_FUNCTION_30_32();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29DC0, &qword_21777BC78);
  OUTLINED_FUNCTION_1047(v3);
  OUTLINED_FUNCTION_1300(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_1_88();
  OUTLINED_FUNCTION_50_22(v4, sel_requestCapabilitiesWithCompletionHandler_);

  return MEMORY[0x282200938](v0);
}

uint64_t sub_217589994()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 160) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_217589A90()
{
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_43_21();
  OUTLINED_FUNCTION_54_20();
  os_unfair_lock_lock(v0);
  if (v1)
  {
    v3 = 0;
  }

  else if (*(v2 + 88) == v3)
  {
    goto LABEL_5;
  }

  *(v2 + 88) = v3;
  sub_217589F04();
LABEL_5:
  OUTLINED_FUNCTION_53_21();

  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_217589B34()
{
  OUTLINED_FUNCTION_209();
  v2 = *(v1 + 160);
  swift_willThrow();

  v4 = *(v1 + 152);
  v3 = *(v1 + 160);
  OUTLINED_FUNCTION_54_20();
  os_unfair_lock_lock(v0);
  if (v3 || *(v4 + 88))
  {
    *(v4 + 88) = 0;
    sub_217589F04();
  }

  OUTLINED_FUNCTION_53_21();

  OUTLINED_FUNCTION_20_0();

  return v5();
}

uint64_t sub_217589BE0()
{
  v1 = *(v0 + 64);
  os_unfair_lock_assert_not_owner(*(v1 + 16));
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  sub_217589CA8();
  os_unfair_lock_unlock(*(v1 + 16));
}

uint64_t sub_217589C44()
{
  v1 = *(v0 + 80);
  os_unfair_lock_assert_not_owner(*(v1 + 16));
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  sub_217589F04();
  os_unfair_lock_unlock(*(v1 + 16));
}

void sub_217589CA8()
{
  v1 = v0;
  os_unfair_lock_assert_owner(*(*(v0 + 64) + 16));
  v2 = *(v0 + 56);
  if (v2 == 255)
  {
    if (qword_280BE73E0 != -1)
    {
      swift_once();
    }

    v10 = sub_217751AF8();
    __swift_project_value_buffer(v10, qword_280C023A8);

    oslog = sub_217751AD8();
    v6 = sub_217752828();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_21729C0E8(*(v1 + 16), *(v1 + 24), &v12);
      v9 = "Nothing to invalidate for %{public}s cache.";
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    *(v0 + 40) = 0;
    *(v0 + 48) = 0;
    *(v0 + 56) = -1;
    sub_21758A670(v3, v4, v2);
    if (qword_280BE73E0 != -1)
    {
      swift_once();
    }

    v5 = sub_217751AF8();
    __swift_project_value_buffer(v5, qword_280C023A8);

    oslog = sub_217751AD8();
    v6 = sub_217752828();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_21729C0E8(*(v1 + 16), *(v1 + 24), &v12);
      v9 = "Invalidated %{public}s cache.";
LABEL_10:
      _os_log_impl(&dword_2171EE000, oslog, v6, v9, v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x21CEA4360](v8, -1, -1);
      MEMORY[0x21CEA4360](v7, -1, -1);

      return;
    }
  }
}

void sub_217589F04()
{
  v1 = v0;
  os_unfair_lock_assert_owner(*(*(v0 + 80) + 16));
  v2 = *(v0 + 72);
  if (v2 >> 8 <= 0xFE)
  {
    v8 = *(v0 + 40);
    v9 = *(v0 + 48);
    v10 = *(v0 + 56);
    v11 = *(v0 + 64);
    *(v0 + 40) = 0u;
    *(v0 + 56) = 0u;
    *(v0 + 72) = -256;
    sub_21758A3F4(v8, v9, v10, v11, v2);
    if (qword_280BE73E0 != -1)
    {
      swift_once();
    }

    v12 = sub_217751AF8();
    __swift_project_value_buffer(v12, qword_280C023A8);

    oslog = sub_217751AD8();
    v4 = sub_217752828();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v14 = v6;
      *v5 = 136446210;
      *(v5 + 4) = sub_21729C0E8(*(v1 + 16), *(v1 + 24), &v14);
      v7 = "Invalidated %{public}s cache.";
      goto LABEL_10;
    }
  }

  else
  {
    if (qword_280BE73E0 != -1)
    {
      swift_once();
    }

    v3 = sub_217751AF8();
    __swift_project_value_buffer(v3, qword_280C023A8);

    oslog = sub_217751AD8();
    v4 = sub_217752828();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v14 = v6;
      *v5 = 136446210;
      *(v5 + 4) = sub_21729C0E8(*(v1 + 16), *(v1 + 24), &v14);
      v7 = "Nothing to invalidate for %{public}s cache.";
LABEL_10:
      _os_log_impl(&dword_2171EE000, oslog, v4, v7, v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x21CEA4360](v6, -1, -1);
      MEMORY[0x21CEA4360](v5, -1, -1);

      return;
    }
  }
}

uint64_t sub_21758A1C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29DC8, &qword_21777BC98);
  swift_allocObject();
  result = sub_217587074(a2, a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_21758A238()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29DB0, &unk_21777BC50);
  swift_allocObject();
  result = sub_2175872F8(0x74694B636973754DLL, 0xEF736E656B6F7420, 1);
  qword_27CB8A2C8 = result;
  return result;
}

uint64_t sub_21758A2E8()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_22_40();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_66(v1);

  return sub_217587614();
}

uint64_t block_destroy_helper_12()
{
}

{
}

void sub_21758A3F4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE1(a5) != 255)
  {
    sub_21758A40C(result, a2, a3, a4, a5, BYTE1(a5) & 1);
  }
}

void sub_21758A40C(id a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a6)
  {
  }

  else
  {
    sub_21758A41C(a1, a2, a3, a4, a5 & 1);
  }
}

double sub_21758A41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_21758A46C()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_22_40();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_66(v1);

  return sub_217589880(v3, v4, v5, v6);
}

uint64_t sub_21758A584()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_22_40();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_66(v1);

  return sub_217587584();
}

double sub_21758A670(void *result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_21758A688(result, a2, a3 & 1);
  }

  return v3;
}

double sub_21758A688(void *a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21758A6D8()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_22_40();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_66(v1);

  return sub_217589520(v3, v4, v5, v6);
}

void OUTLINED_FUNCTION_14_44(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_18_42()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x21CEA4360);
}

uint64_t OUTLINED_FUNCTION_34_30(uint64_t a1)
{

  return swift_weakInit();
}

uint64_t OUTLINED_FUNCTION_42_27(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);
}

uint64_t OUTLINED_FUNCTION_45_28()
{

  return sub_217752378();
}

uint64_t OUTLINED_FUNCTION_46_24()
{

  return sub_217752378();
}

uint64_t OUTLINED_FUNCTION_47_22()
{

  return sub_217752378();
}

uint64_t OUTLINED_FUNCTION_48_19()
{

  return sub_217752378();
}

void *OUTLINED_FUNCTION_49_25@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 96) = v3;
  *(v1 + 104) = a1;

  return _Block_copy(v2);
}

id OUTLINED_FUNCTION_50_22(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_51_19(uint64_t a1, uint64_t a2)
{

  return sub_2177522F8();
}

void OUTLINED_FUNCTION_52_22()
{

  _Block_release(v0);
}

void OUTLINED_FUNCTION_53_21()
{
  v2 = *(v0 + 16);

  os_unfair_lock_unlock(v2);
}

uint64_t OUTLINED_FUNCTION_54_20()
{
}

uint64_t OUTLINED_FUNCTION_55_20()
{
}

void OUTLINED_FUNCTION_56_17()
{

  _Block_release(v0);
}

uint64_t OUTLINED_FUNCTION_57_18()
{
}

BOOL OUTLINED_FUNCTION_58_18()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_59_17()
{
}

uint64_t OUTLINED_FUNCTION_60_23()
{

  return sub_217751AF8();
}

uint64_t OUTLINED_FUNCTION_61_15(uint64_t a1, uint64_t a2)
{

  return sub_2177522F8();
}

uint64_t OUTLINED_FUNCTION_62_18()
{
}

unint64_t sub_21758AAC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29DD0;
  if (!qword_27CB29DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29DD0);
  }

  return result;
}

unint64_t sub_21758ABC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29DD8;
  if (!qword_27CB29DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29DD8);
  }

  return result;
}

void sub_21758AC1C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x49676F6C61746163 && a2 == 0xE900000000000044;
  if (v6 || (OUTLINED_FUNCTION_0_99(0x49676F6C61746163, 0xE900000000000044) & 1) != 0)
  {

    v7 = 0;
  }

  else
  {
    v8 = a1 == 0x6F4C656369766564 && a2 == 0xED000044496C6163;
    if (v8 || (OUTLINED_FUNCTION_0_99(0x6F4C656369766564, 0xED000044496C6163) & 1) != 0)
    {

      v7 = 1;
    }

    else
    {
      v9 = a1 == 0x497972617262696CLL && a2 == 0xE900000000000044;
      if (v9 || (OUTLINED_FUNCTION_0_99(0x497972617262696CLL, 0xE900000000000044) & 1) != 0)
      {

        v7 = 2;
      }

      else if (a1 == 0x6E6572727563636FLL && a2 == 0xEC00000044496563)
      {

        v7 = 3;
      }

      else
      {
        v11 = OUTLINED_FUNCTION_0_99(0x6E6572727563636FLL, 0xEC00000044496563);

        if (v11)
        {
          v7 = 3;
        }

        else
        {
          v7 = 4;
        }
      }
    }
  }

  *a3 = v7;
}

uint64_t RecordLabel.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(const void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v63 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29DE0, &qword_21777BE00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v55 - v8;
  v10 = type metadata accessor for RecordLabelPropertyProvider(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - v14;

  memcpy(v74, a1, 0x161uLL);
  if (([a2 respondsToSelector_] & 1) != 0 && (v16 = objc_msgSend(a2, sel_musicKit_modelObjectStorageDictionary)) != 0)
  {
    v17 = v16;
    v18 = sub_217751D98();
  }

  else
  {
    v18 = sub_217751DC8();
  }

  v62 = sub_21729F25C(v18);

  memcpy(v70, a1, 0x161uLL);
  if (qword_280BE4C38 != -1)
  {
    swift_once();
  }

  v68[0] = qword_280BE4C40;
  v68[1] = *algn_280BE4C48;
  LOBYTE(v68[2]) = byte_280BE4C50;
  memset(v67, 0, 17);
  sub_217751DE8();
  v75.value.rawValue._countAndFlagsBits = v68;
  v75.value.rawValue._object = v67;
  MusicIdentifierSet.cloudResourceIdentifier(catalogType:libraryType:)(&v69, v75, v76);

  countAndFlagsBits = v69.type.rawValue._countAndFlagsBits;
  object = v69.id.rawValue._object;
  v65 = v69.type.rawValue._object;
  isLibraryType = v69.type.isLibraryType;
  v61 = v69.href.value._countAndFlagsBits;
  v19 = v69.href.value._object;
  sub_21736C814(a3, &v69);
  v58 = a3;
  if (!v69.type.rawValue._object)
  {
    sub_2171F06D8(&v69, &qword_27CB27590, &qword_21776ADF0);
    memset(v70, 0, 40);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24408, &qword_21775A390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD60, &unk_217759470);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v70, 0, 40);
    goto LABEL_14;
  }

  if (!*(&v70[1] + 1))
  {
LABEL_14:
    v27 = a2;
    sub_2171F06D8(v70, &qword_27CB24B68, &qword_217759430);
    goto LABEL_15;
  }

  sub_2171F3F0C(v70, v71);
  v20 = v72;
  v21 = v73;
  __swift_project_boxed_opaque_existential_1(v71, v72);
  PropertyProviderBackedItem.staticPropertyProvider.getter(v20, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
    sub_21758BAF8(v9, v12);
    sub_21758BA38(v12, v15);
    memcpy(v70, v74, 0x161uLL);
    v22 = v10[16];
    memcpy(v67, &v12[v22], sizeof(v67));
    memcpy(v66, &v12[v22], 0x161uLL);
    sub_217269EF4(v67, &v69);
    MusicIdentifierSet.union(_:)();
    memcpy(v68, v66, 0x161uLL);
    sub_217269F50(v68);
    sub_21758BA9C(v12);
    sub_217269F50(v74);
    v23 = v10[16];
    memcpy(v70, &v15[v23], 0x161uLL);
    sub_217269F50(v70);
    memcpy(&v15[v23], &v69, 0x161uLL);
    v24 = &v15[v10[17]];
    v25 = v65;
    sub_217751DE8();

    *v24 = countAndFlagsBits;
    *(v24 + 1) = v25;
    v24[16] = isLibraryType;
    v26 = &v15[v10[18]];

    *v26 = v61;
    *(v26 + 1) = v19;
    __swift_destroy_boxed_opaque_existential_1(v71);
    goto LABEL_20;
  }

  v27 = a2;
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  sub_2171F06D8(v9, &qword_27CB29DE0, &qword_21777BE00);
  __swift_destroy_boxed_opaque_existential_1(v71);
LABEL_15:
  v28 = v19;
  sub_217751DE8();
  sub_217751DE8();
  v57 = OUTLINED_FUNCTION_0_100();
  v56 = OUTLINED_FUNCTION_0_100();
  v29 = OUTLINED_FUNCTION_0_100();
  v30 = OUTLINED_FUNCTION_0_100();
  sub_2172A497C(v70);
  memcpy(v15, v70, 0x221uLL);
  *(v15 + 552) = 0u;
  *(v15 + 568) = 0u;
  *(v15 + 584) = 0u;
  memcpy(v15 + 600, v70, 0x221uLL);
  *(v15 + 72) = 0u;
  v31 = v10[11];
  v32 = sub_2177516D8();
  __swift_storeEnumTagSinglePayload(&v15[v31], 1, 1, v32);
  v33 = &v15[v10[12]];
  *(v33 + 12) = 0;
  *(v33 + 4) = 0u;
  *(v33 + 5) = 0u;
  *(v33 + 2) = 0u;
  *(v33 + 3) = 0u;
  *v33 = 0u;
  *(v33 + 1) = 0u;
  v34 = &v15[v10[13]];
  *(v34 + 12) = 0;
  *(v34 + 4) = 0u;
  *(v34 + 5) = 0u;
  *(v34 + 2) = 0u;
  *(v34 + 3) = 0u;
  *v34 = 0u;
  *(v34 + 1) = 0u;
  *&v15[v10[14]] = 0;
  if (qword_27CB23D38 != -1)
  {
    swift_once();
  }

  v35 = qword_27CB8A2E0;
  a2 = v27;
  if (qword_27CB8A2E0 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    v55 = v27;
    sub_217751DE8();
    v54 = sub_217752D28();
    v36 = v28;

    v37 = v65;
    object = v35;
    v35 = v54;
    a2 = v55;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
    v36 = v28;
    v37 = v65;
  }

  *&v15[v10[15]] = v35;
  v38 = &v15[v10[18]];
  memcpy(&v15[v10[16]], v74, 0x161uLL);
  v39 = &v15[v10[17]];
  a3 = v58;
  *v39 = countAndFlagsBits;
  *(v39 + 1) = v37;
  v39[16] = isLibraryType;
  *v38 = v61;
  *(v38 + 1) = v36;
  v40 = v56;
  *&v15[v10[19]] = v57;
  *&v15[v10[20]] = v40;
  *&v15[v10[21]] = v29;
  *&v15[v10[22]] = v30;
LABEL_20:
  v41 = v62;
  v42 = sub_217751F18();
  v43 = [a2 musicKit:v42 artworkCatalogForProperty:?];

  if (v43)
  {
    swift_getObjectType();
    v44 = sub_217717634();
    *&v67[24] = &type metadata for SoftLinking_ArtworkCatalog;
    *&v67[32] = &off_28297F3C8;
    swift_unknownObjectRelease();
    *v67 = v44;
    sub_2171F3F0C(v67, v68);
    sub_2171FF30C(v68, v70);
    v66[0] = 1;
    memset(&v66[1], 0, 24);
    Artwork.init(_:alternateText:existingColorAnalysis:)(v70, 0, 0, v66, &v69);
    nullsub_1();
    memcpy(v70, v15, 0x221uLL);
    sub_2171F06D8(v70, &qword_27CB24400, &unk_21775E9A0);
    memcpy(v15, &v69, 0x221uLL);
    __swift_destroy_boxed_opaque_existential_1(v68);
  }

  if (!*(v15 + 145))
  {
    v45 = sub_2172A3A30(1, v41);
    if (v46)
    {
      *(v15 + 144) = v45;
      *(v15 + 145) = v46;
    }
  }

  if (!*(v15 + 72))
  {
    v47 = sub_2172A3A30(2, v41);
    if (v48)
    {
      *(v15 + 71) = v47;
      *(v15 + 72) = v48;
    }
  }

  if (*(v15 + 74))
  {
  }

  else
  {
    v49 = sub_2172A3A30(3, v41);
    v51 = v50;

    if (v51)
    {
      *(v15 + 73) = v49;
      *(v15 + 74) = v51;
    }
  }

  *(&v70[1] + 1) = v10;
  *&v70[2] = &protocol witness table for RecordLabelPropertyProvider;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v70);
  sub_21758BA38(v15, boxed_opaque_existential_0);
  RecordLabel.init(propertyProvider:)(v70, v63);
  swift_unknownObjectRelease();
  sub_2171F06D8(a3, &qword_27CB27590, &qword_21776ADF0);
  return sub_21758BA9C(v15);
}

uint64_t RecordLabel.convertToLegacyModelStorageDictionary(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2172A5134(a1, a2, a3);
  v50 = sub_217751DC8();
  if (qword_27CB23B10 != -1)
  {
    swift_once();
  }

  sub_2176CA854(qword_27CB8A248, v3, v4, v5, v6, v7, v8, v9, v43, v48[0], v48[1], v48[2], v48[3], v48[4], v48[5], v48[6], v48[7], v48[8], v48[9], v48[10], v48[11], v48[12], v48[13], v48[14], v48[15], v48[16]);
  memcpy(__dst, __src, 0x221uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(__dst) == 1)
  {
    memset(v49, 0, 32);
  }

  else
  {
    memcpy(v48, __dst, 0x221uLL);
    Artwork._convertToLegacyModelArtworkCatalog(rawCropStyle:)(0, 0, v49);
    sub_2171F06D8(__src, &qword_27CB24400, &unk_21775E9A0);
  }

  sub_21729CEA0(v49, 0, v10, v11, v12, v13, v14, v15, v44, v48[0], v48[1], v48[2], v48[3], v48[4], v48[5], v48[6], v48[7], v48[8], v48[9], v48[10], v48[11], v48[12]);
  if (qword_27CB23B30 != -1)
  {
    swift_once();
  }

  v16 = sub_2172A4004();
  if (v17)
  {
    v24 = v16;
  }

  else
  {
    v24 = 0;
  }

  v25 = 0;
  v48[3] = MEMORY[0x277D837D0];
  if (v17)
  {
    v25 = v17;
  }

  sub_21729CEA0(v48, 1, v18, v19, v20, v21, v22, v23, v45, v24, v25, v48[2], v48[3], v48[4], v48[5], v48[6], v48[7], v48[8], v48[9], v48[10], v48[11], v48[12]);
  if (qword_27CB23B38 != -1)
  {
    swift_once();
  }

  sub_2172A4004();
  if (!v26)
  {
    v48[2] = 0;
  }

  OUTLINED_FUNCTION_2_87();
  sub_21729CEA0(v27, 2, v28, v29, v30, v31, v32, v33, v46, v48[0], v48[1], v48[2], v48[3], v48[4], v48[5], v48[6], v48[7], v48[8], v48[9], v48[10], v48[11], v48[12]);
  if (qword_27CB23B40 != -1)
  {
    swift_once();
  }

  sub_2172A4004();
  if (!v34)
  {
    v48[2] = 0;
  }

  OUTLINED_FUNCTION_2_87();
  sub_21729CEA0(v35, 3, v36, v37, v38, v39, v40, v41, v47, v48[0], v48[1], v48[2], v48[3], v48[4], v48[5], v48[6], v48[7], v48[8], v48[9], v48[10], v48[11], v48[12]);
  return v50;
}

void RecordLabel.LegacyModelRecordLabelPropertyKey.init(rawValue:)(char *a2@<X8>)
{
  v3 = sub_217752DC8();

  v4 = 4;
  if (v3 < 4)
  {
    v4 = v3;
  }

  *a2 = v4;
}

unint64_t RecordLabel.LegacyModelRecordLabelPropertyKey.rawValue.getter()
{
  result = 0xD000000000000021;
  switch(*v0)
  {
    case 1:
      result = 0xD00000000000001ELL;
      break;
    case 2:
      result = 0xD00000000000002ELL;
      break;
    case 3:
      result = 0xD000000000000029;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_21758B9EC@<X0>(unint64_t *a1@<X8>)
{
  result = RecordLabel.LegacyModelRecordLabelPropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21758BA38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordLabelPropertyProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21758BA9C(uint64_t a1)
{
  v2 = type metadata accessor for RecordLabelPropertyProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21758BAF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordLabelPropertyProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21758BB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29DE8;
  if (!qword_27CB29DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29DE8);
  }

  return result;
}

unint64_t sub_21758BBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2172A5134(a1, a2, a3);
  *(a1 + 8) = v4;
  result = sub_21758BBE4(v4, v5, v6);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21758BBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29DF0;
  if (!qword_27CB29DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29DF0);
  }

  return result;
}

unint64_t sub_21758BC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29DF8;
  if (!qword_27CB29DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29DF8);
  }

  return result;
}

_BYTE *_s33LegacyModelRecordLabelPropertyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

void sub_21758BD6C(void *a1@<X0>, char *a2@<X8>)
{
  v21 = a1;
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
  type metadata accessor for ICError(0);
  if (swift_dynamicCast())
  {
    v5 = v20;
    v21 = v20;
    sub_21756DF1C();
    sub_2177515E8();
    if (!(!v7 & v6))
    {
      switch(v20)
      {
        case 0xFFFFFFFFFFFFE49DLL:
        case 0xFFFFFFFFFFFFE4A0:
          goto LABEL_17;
        case 0xFFFFFFFFFFFFE49ELL:
          goto LABEL_21;
        case 0xFFFFFFFFFFFFE49FLL:

LABEL_28:
          v9 = 1;
          goto LABEL_20;
        case 0xFFFFFFFFFFFFE4A1:

          v9 = 4;
          goto LABEL_20;
        default:
          JUMPOUT(0);
      }
    }

    if (v20 == -8200)
    {

      v9 = 5;
      goto LABEL_20;
    }

    if (v20 == -8102)
    {
      v10 = sub_217751628();
      v11 = [v10 underlyingErrors];
      v12 = sub_217752298();

      if (*(v12 + 16))
      {
        v13 = *(v12 + 32);
        v14 = v13;

        v15 = sub_217751628();

        v16 = v15;
        sub_21758BD6C(v16, &v19);
        v9 = v19;
        if (v19 == 7)
        {

          goto LABEL_20;
        }

        v18 = sub_217708CE0();

        if ((v18 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
      }

LABEL_32:
      v9 = 6;
      goto LABEL_20;
    }

    if (v20 == -8101)
    {

      goto LABEL_32;
    }

    if (v20 == -8100)
    {

      v9 = 2;
      goto LABEL_20;
    }

    if (v20 == -7401)
    {

      v9 = 3;
      goto LABEL_20;
    }

    if (v20 == -7101)
    {
LABEL_21:
      static MusicAuthorization.currentStatus.getter(&v21);
      switch(v8)
      {
        case 3:

          goto LABEL_18;
        default:
          v17 = sub_217753058();

          if ((v17 & 1) == 0)
          {
            goto LABEL_28;
          }

          goto LABEL_19;
      }
    }

LABEL_17:
  }

LABEL_18:

LABEL_19:
  v9 = 0;
LABEL_20:
  *a2 = v9;
}

void *sub_21758C0EC()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = *(v0 + 40);
  v4 = *(v1 + 16);
  sub_21758E37C(v3, *(v0 + 48), *(v0 + 56));
  os_unfair_lock_unlock(v4);

  return v3;
}

uint64_t sub_21758C168@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  v9 = *(v1 + 72);
  *(a1 + 32) = v9;
  sub_21758E2E0(v5, v6, v7, v8, v9);
  sub_21758A3F4(0, 0, 0, 0, 65280);
  os_unfair_lock_unlock(*(v3 + 16));
}

void sub_21758C1F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v11[2] = a1;
  v11[3] = a2;
  sub_21720BA7C();
  if (qword_280BE73E0 != -1)
  {
    swift_once();
  }

  v4 = sub_217751AF8();
  __swift_project_value_buffer(v4, qword_280C023A8);

  v5 = sub_217751AD8();
  v6 = sub_217752828();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11[0] = v8;
    *v7 = 136446466;
    v10 = *(v3 + 16);
    v9 = *(v3 + 24);
    *(v7 + 4) = sub_21729C0E8(v10, v9, v11);
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_21729C0E8(v10, v9, v11);
    _os_log_impl(&dword_2171EE000, v5, v6, "Updated %{public}s cache with new %{public}s.", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA4360](v8, -1, -1);
    MEMORY[0x21CEA4360](v7, -1, -1);
  }
}

void sub_21758C39C(__int128 *a1)
{
  v2 = v1;
  v3 = a1[1];
  v12 = *a1;
  v13 = v3;
  v14 = *(a1 + 32);
  sub_21720BA7C();
  if (qword_280BE73E0 != -1)
  {
    swift_once();
  }

  v4 = sub_217751AF8();
  __swift_project_value_buffer(v4, qword_280C023A8);

  v5 = sub_217751AD8();
  v6 = sub_217752828();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11[0] = v8;
    *v7 = 136446466;
    v10 = *(v2 + 16);
    v9 = *(v2 + 24);
    *(v7 + 4) = sub_21729C0E8(v10, v9, v11);
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_21729C0E8(v10, v9, v11);
    _os_log_impl(&dword_2171EE000, v5, v6, "Updated %{public}s cache with new %{public}s.", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA4360](v8, -1, -1);
    MEMORY[0x21CEA4360](v7, -1, -1);
  }
}

void sub_21758C54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
  v5 = *(a1 + 56);
  *(a1 + 56) = 0;
  sub_217751DE8();
  sub_21758A670(v4, v3, v5);
}

void sub_21758C5A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a2 + 16);
  *(a1 + 40) = *a2;
  v5 = *(a2 + 32) & 1;
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  *(a1 + 56) = v4;
  v8 = *(a1 + 72);
  *(a1 + 72) = v5;
  sub_21758E284(a2, v9);
  sub_21758A3F4(v2, v3, v6, v7, v8);
}

void sub_21758C628(void *a1)
{
  v2 = v1;
  v4 = v2[8];
  v5 = *(v4 + 16);

  v6 = a1;
  os_unfair_lock_lock(v5);
  sub_21758C950(v2, a1);
  os_unfair_lock_unlock(*(v4 + 16));

  if (qword_280BE73E0 != -1)
  {
    swift_once();
  }

  v7 = sub_217751AF8();
  __swift_project_value_buffer(v7, qword_280C023A8);

  oslog = sub_217751AD8();
  v8 = sub_217752808();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_21729C0E8(v2[2], v2[3], &v12);
    _os_log_impl(&dword_2171EE000, oslog, v8, "Updated %{public}s cache with new error.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x21CEA4360](v10, -1, -1);
    MEMORY[0x21CEA4360](v9, -1, -1);
  }
}

void sub_21758C7BC(void *a1)
{
  v2 = v1;
  v4 = v2[10];
  v5 = *(v4 + 16);

  v6 = a1;
  os_unfair_lock_lock(v5);
  sub_21758C9A8(v2, a1);
  os_unfair_lock_unlock(*(v4 + 16));

  if (qword_280BE73E0 != -1)
  {
    swift_once();
  }

  v7 = sub_217751AF8();
  __swift_project_value_buffer(v7, qword_280C023A8);

  oslog = sub_217751AD8();
  v8 = sub_217752808();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_21729C0E8(v2[2], v2[3], &v12);
    _os_log_impl(&dword_2171EE000, oslog, v8, "Updated %{public}s cache with new error.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x21CEA4360](v10, -1, -1);
    MEMORY[0x21CEA4360](v9, -1, -1);
  }
}

double sub_21758C950(uint64_t a1, uint64_t a2)
{
  v3 = sub_217751628();
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  *(a1 + 40) = v3;
  v6 = *(a1 + 56);
  *(a1 + 56) = 1;
  return sub_21758A670(v5, v4, v6);
}

void sub_21758C9A8(uint64_t a1, uint64_t a2)
{
  v3 = sub_217751628();
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  *(a1 + 40) = v3;
  v8 = *(a1 + 72);
  *(a1 + 73) = 1;
  sub_21758A3F4(v5, v4, v6, v7, v8);
}

uint64_t sub_21758CA08(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4[20] = a1;
  v4[21] = a2;
  v5 = *a3;
  v4[22] = v3;
  v4[23] = v5;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21758CA24()
{
  v1 = v0[23];
  if (v1)
  {
    goto LABEL_9;
  }

  if (qword_27CB23CB0 != -1)
  {
    OUTLINED_FUNCTION_4_80(&qword_27CB23CB0);
  }

  v2 = sub_21758C0EC();
  if (v4 == 0xFF)
  {
LABEL_9:
    if (qword_280BEAE60 != -1)
    {
      OUTLINED_FUNCTION_3_3(&qword_280BEAE60);
    }

    v13 = qword_280C029A0;
    v14 = sub_217751F18();
    v0[24] = v14;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v15 = OUTLINED_FUNCTION_30_32();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25C90, &qword_21775F170);
    OUTLINED_FUNCTION_1047(v16);
    v0[11] = 1107296256;
    OUTLINED_FUNCTION_8_56();
    v0[13] = v17;
    v0[14] = v15;
    [v13 requestUserTokenForDeveloperToken:v14 options:v1 & 1 completionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v5 = v2;
    v6 = v3;
    v7 = v4;
    if (v4)
    {
      v8 = sub_217354318(v2, v3, v4);
      OUTLINED_FUNCTION_15_4(&type metadata for MusicTokenRequestError, v8);
      OUTLINED_FUNCTION_6_64();
      sub_21758CEF8(v9, 0xEA00000000006E65, v10);
      swift_willThrow();
      sub_21758A670(v5, v6, v7);
      OUTLINED_FUNCTION_20_0();

      return v11();
    }

    else
    {
      v18 = OUTLINED_FUNCTION_9_50();

      return v19(v18, v6);
    }
  }
}

uint64_t sub_21758CC74()
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 200) = v4;
  if (v4)
  {
    v5 = sub_21758CE18;
  }

  else
  {
    v5 = sub_21758CD78;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21758CD78()
{
  OUTLINED_FUNCTION_30_0();
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  if (qword_27CB23CB0 != -1)
  {
    OUTLINED_FUNCTION_4_80(&qword_27CB23CB0);
  }

  sub_21758C1F8(v1, v2);
  v3 = OUTLINED_FUNCTION_9_50();

  return v4(v3, v2);
}

uint64_t sub_21758CE18()
{
  OUTLINED_FUNCTION_30_0();
  v1 = *(v0 + 192);
  swift_willThrow();

  if (qword_27CB23CB0 != -1)
  {
    OUTLINED_FUNCTION_4_80(&qword_27CB23CB0);
  }

  v2 = *(v0 + 200);
  sub_21758C628(v2);
  v6 = sub_217354318(v3, v4, v5);
  OUTLINED_FUNCTION_15_4(&type metadata for MusicTokenRequestError, v6);
  OUTLINED_FUNCTION_6_64();
  sub_21758CEF8(v7, 0xEA00000000006E65, v8);
  swift_willThrow();

  OUTLINED_FUNCTION_20_0();

  return v9();
}

void sub_21758CEF8(uint64_t a2@<X1>, unint64_t a3@<X2>, char *a4@<X8>)
{
  v7 = sub_217751628();
  v8 = [v7 description];
  v9 = sub_217751F48();
  v11 = v10;

  v12 = v7;
  sub_21758BD6C(v12, &v32);
  v13 = v32;
  if (qword_280BE73E0 != -1)
  {
    swift_once();
  }

  v14 = sub_217751AF8();
  __swift_project_value_buffer(v14, qword_280C023A8);
  sub_217751DE8();
  sub_217751DE8();
  v15 = sub_217751AD8();
  v16 = sub_217752808();

  if (os_log_type_enabled(v15, v16))
  {
    v30 = a4;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = a2;
    v21 = v19;
    v31 = v19;
    *v17 = 136446722;
    *(v17 + 4) = sub_21729C0E8(v20, a3, &v31);
    *(v17 + 12) = 2082;
    v22 = sub_21729C0E8(v9, v11, &v31);

    *(v17 + 14) = v22;
    *(v17 + 22) = 2114;
    v26 = sub_217354318(v23, v24, v25);
    OUTLINED_FUNCTION_15_4(&type metadata for MusicTokenRequestError, v26);
    *v27 = v13;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 24) = v28;
    *v18 = v28;
    _os_log_impl(&dword_2171EE000, v15, v16, "Failed retrieving %{public}s: %{public}s. Throwing %{public}@.", v17, 0x20u);
    sub_21758E314(v18);
    MEMORY[0x21CEA4360](v18, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CEA4360](v21, -1, -1);
    v29 = v17;
    a4 = v30;
    MEMORY[0x21CEA4360](v29, -1, -1);
  }

  else
  {
  }

  *a4 = v13;
}

uint64_t sub_21758D158(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 160) = v1;
  *(v2 + 168) = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21758D170()
{
  v1 = v0[21];
  if (v1)
  {
    goto LABEL_9;
  }

  if (qword_27CB23CA8 != -1)
  {
    OUTLINED_FUNCTION_2_88(&qword_27CB23CA8);
  }

  v2 = sub_21758C0EC();
  if (v4 == 0xFF)
  {
LABEL_9:
    if (qword_280BEAE60 != -1)
    {
      OUTLINED_FUNCTION_3_3(&qword_280BEAE60);
    }

    v14 = qword_280C029A0;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v15 = OUTLINED_FUNCTION_30_32();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25C90, &qword_21775F170);
    OUTLINED_FUNCTION_1047(v16);
    v0[11] = 1107296256;
    OUTLINED_FUNCTION_8_56();
    v0[13] = v17;
    v0[14] = v15;
    [v14 requestDeveloperTokenWithOptions:v1 & 1 completionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v5 = v2;
    v6 = v3;
    v7 = v4;
    if (v4)
    {
      v8 = sub_217354318(v2, v3, v4);
      OUTLINED_FUNCTION_15_4(&type metadata for MusicTokenRequestError, v8);
      OUTLINED_FUNCTION_6_64();
      sub_21758CEF8(v9, v10, v11);
      swift_willThrow();
      sub_21758A670(v5, v6, v7);
      OUTLINED_FUNCTION_20_0();

      return v12();
    }

    else
    {
      v18 = OUTLINED_FUNCTION_9_50();

      return v19(v18, v6);
    }
  }
}

uint64_t sub_21758D3A4()
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 176) = v4;
  if (v4)
  {
    v5 = sub_21758D540;
  }

  else
  {
    v5 = sub_21758D4A8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21758D4A8()
{
  OUTLINED_FUNCTION_30_0();
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  if (qword_27CB23CA8 != -1)
  {
    OUTLINED_FUNCTION_2_88(&qword_27CB23CA8);
  }

  sub_21758C1F8(v1, v2);
  v3 = OUTLINED_FUNCTION_9_50();

  return v4(v3, v2);
}

uint64_t sub_21758D540()
{
  OUTLINED_FUNCTION_30_0();
  swift_willThrow();
  if (qword_27CB23CA8 != -1)
  {
    OUTLINED_FUNCTION_2_88(&qword_27CB23CA8);
  }

  v1 = *(v0 + 176);
  sub_21758C628(v1);
  v5 = sub_217354318(v2, v3, v4);
  OUTLINED_FUNCTION_15_4(&type metadata for MusicTokenRequestError, v5);
  OUTLINED_FUNCTION_6_64();
  sub_21758CEF8(v6, v7, v8);
  swift_willThrow();

  OUTLINED_FUNCTION_20_0();

  return v9();
}

uint64_t sub_21758D624(uint64_t a1, void *a2)
{
  v3[24] = a1;
  v3[25] = v2;
  v3[26] = *a2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21758D640()
{
  v36 = v0;
  v1 = v0[26];
  if (v1)
  {
    goto LABEL_5;
  }

  if (qword_27CB23CB8 != -1)
  {
    OUTLINED_FUNCTION_3_81(&qword_27CB23CB8);
  }

  v2 = sub_21758C168(v34);
  v4 = v35;
  if (HIBYTE(v35) > 0xFEu)
  {
LABEL_5:
    if (qword_280BEAE60 != -1)
    {
      OUTLINED_FUNCTION_3_3(&qword_280BEAE60);
    }

    v5 = qword_280C029A0;
    v0[2] = v0;
    v0[7] = v0 + 23;
    v6 = OUTLINED_FUNCTION_30_32();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29E00, &qword_21777BFF0);
    OUTLINED_FUNCTION_1047(v7);
    v0[11] = 1107296256;
    v0[12] = sub_2172AB494;
    v0[13] = &block_descriptor_21;
    v0[14] = v6;
    [v5 requestMusicKitTokensWithOptions:v1 & 1 completionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v8 = v34[1];
    v10 = v34[2];
    v9 = v34[3];
    if ((v35 & 0x100) != 0)
    {
      v13 = sub_217354318(v2, (v0 + 1), v3);
      OUTLINED_FUNCTION_15_4(&type metadata for MusicTokenRequestError, v13);
      v15 = v14;
      v16 = OUTLINED_FUNCTION_7_57();
      sub_21758E1C4(v16, v17, v18, v19, v20, 1);
      OUTLINED_FUNCTION_17_41();
      sub_21758CEF8(v21, v22, v15);
      swift_willThrow();
      v23 = OUTLINED_FUNCTION_7_57();
      sub_21758A3F4(v23, v24, v25, v26, v27);
      v28 = OUTLINED_FUNCTION_7_57();
      sub_21758A3F4(v28, v29, v30, v31, v32);
    }

    else
    {
      v11 = v0[24];
      *v11 = v34[0];
      *(v11 + 8) = v8;
      *(v11 + 16) = v10;
      *(v11 + 24) = v9;
      *(v11 + 32) = v4 & 1;
    }

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_21758D888()
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 216) = v4;
  if (v4)
  {
    v5 = sub_21758DAE4;
  }

  else
  {
    v5 = sub_21758D98C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21758D98C()
{
  v15 = v0;
  v1 = *(v0 + 184);
  v2 = [v1 developerToken];
  v3 = sub_217751F48();
  v5 = v4;

  v6 = sub_21758E160(v1);
  v8 = v7;
  if (v7)
  {
    v9 = v6;
  }

  else
  {
    v10 = [v1 userTokenFetchingError];
    if (v10)
    {
      sub_21758BD6C(v10, &v14);

      v9 = v14;
    }

    else
    {

      v9 = 7;
    }
  }

  *(v0 + 144) = v3;
  *(v0 + 152) = v5;
  *(v0 + 160) = v9;
  *(v0 + 168) = v8;
  *(v0 + 176) = v8 == 0;
  if (qword_27CB23CB8 != -1)
  {
    OUTLINED_FUNCTION_3_81(&qword_27CB23CB8);
  }

  sub_21758C39C((v0 + 144));

  v11 = *(v0 + 192);
  *v11 = v3;
  *(v11 + 8) = v5;
  *(v11 + 16) = v9;
  *(v11 + 24) = v8;
  *(v11 + 32) = v8 == 0;
  OUTLINED_FUNCTION_20_0();

  return v12();
}

uint64_t sub_21758DAE4()
{
  OUTLINED_FUNCTION_30_0();
  swift_willThrow();
  if (qword_27CB23CB8 != -1)
  {
    OUTLINED_FUNCTION_3_81(&qword_27CB23CB8);
  }

  v1 = *(v0 + 216);
  sub_21758C7BC(v1);
  v5 = sub_217354318(v2, v3, v4);
  OUTLINED_FUNCTION_15_4(&type metadata for MusicTokenRequestError, v5);
  OUTLINED_FUNCTION_17_41();
  OUTLINED_FUNCTION_6_64();
  sub_21758CEF8(v6, v7, v8);
  swift_willThrow();

  OUTLINED_FUNCTION_20_0();

  return v9();
}

uint64_t sub_21758DBD4(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21758DC6C;

  return sub_21758D158(a1);
}

uint64_t sub_21758DC6C()
{
  OUTLINED_FUNCTION_30_0();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_155();
  v10 = *v1;

  v8 = *(v10 + 8);
  if (!v0)
  {
    v6 = v5;
    v7 = v3;
  }

  return v8(v6, v7);
}

uint64_t dispatch thunk of MusicUserTokenProvider.userToken(for:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 96) + **(*v3 + 96));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_21758E3BC;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of DefaultMusicTokenProvider.developerToken(options:)()
{
  OUTLINED_FUNCTION_30_0();
  v3 = v2;
  v6 = (*(*v0 + 128) + **(*v0 + 128));
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21758E05C;

  return v6(v3);
}

uint64_t sub_21758E05C()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_155();
  v7 = *v0;

  v5 = *(v7 + 8);

  return v5(v4, v2);
}

uint64_t sub_21758E160(void *a1)
{
  v1 = [a1 userToken];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_217751F48();

  return v3;
}

id sub_21758E1C4(id a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a6)
  {
    return a1;
  }

  else
  {
    return sub_21758E1D4(a1, a2, a3, a4, a5 & 1);
  }
}

uint64_t sub_21758E1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_217751DE8();
    v5 = vars8;
  }

  return sub_217751DE8();
}

void sub_21758E234(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3[0] = *a2;
  v3[1] = v2;
  v4 = *(a2 + 32);
  sub_21758C5A0(a1, v3);
}

id sub_21758E2E0(id result, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  if (HIBYTE(a5) != 255)
  {
    return sub_21758E1C4(result, a2, a3, a4, a5, HIBYTE(a5) & 1);
  }

  return result;
}

uint64_t sub_21758E314(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29E08, &qword_21777BFF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_21758E37C(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_21758E394(result, a2, a3 & 1);
  }

  return result;
}

id sub_21758E394(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_217751DE8();
  }
}

MusicKit::CloudGeoLocation __swiftcall CloudGeoLocation.init(name:countryCode:)(Swift::String_optional name, Swift::String_optional countryCode)
{
  *v2 = name;
  v2[1] = countryCode;
  result.countryCode = countryCode;
  result.name = name;
  return result;
}

uint64_t CloudGeoLocation.name.getter()
{
  v1 = *v0;
  sub_217751DE8();
  return v1;
}

uint64_t CloudGeoLocation.countryCode.getter()
{
  v1 = *(v0 + 16);
  sub_217751DE8();
  return v1;
}

uint64_t static CloudGeoLocation.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8)
    {
      v10 = v4 == v7 && v5 == v8;
      if (v10 || (sub_217753058() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_21758E4D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_217753058();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_21758E5A0(char a1)
{
  if (a1)
  {
    return 0x437972746E756F63;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_21758E5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21758E4D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21758E608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21758E7F0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21758E644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21758E7F0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CloudGeoLocation.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29E10, &qword_21777C000);
  OUTLINED_FUNCTION_0_0();
  v15 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = v14 - v7;
  v9 = *(v1 + 16);
  v14[1] = *(v1 + 24);
  v14[2] = v9;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21758E7F0(v10, v11, v12);
  sub_2177532F8();
  v17 = 0;
  sub_217752EF8();
  if (!v2)
  {
    v16 = 1;
    sub_217752EF8();
  }

  return (*(v15 + 8))(v8, v4);
}

unint64_t sub_21758E7F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29E18;
  if (!qword_27CB29E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29E18);
  }

  return result;
}

uint64_t CloudGeoLocation.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (!*(v1 + 8))
  {
    sub_217753208();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_217753208();
  }

  sub_217753208();
  sub_217751FF8();
  if (!v2)
  {
    return sub_217753208();
  }

LABEL_3:
  sub_217753208();

  return sub_217751FF8();
}

uint64_t CloudGeoLocation.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_2177531E8();
  sub_217753208();
  if (v1)
  {
    sub_217751FF8();
  }

  sub_217753208();
  if (v2)
  {
    sub_217751FF8();
  }

  return sub_217753238();
}

void CloudGeoLocation.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29E20, &qword_21777C008);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21758E7F0(v11, v12, v13);
  sub_2177532C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v24 = 0;
    v14 = sub_217752E18();
    v16 = v15;
    v23 = 1;
    v17 = sub_217752E18();
    v19 = v18;
    v20 = *(v7 + 8);
    v22 = v17;
    v20(v10, v5);
    *a2 = v14;
    a2[1] = v16;
    a2[2] = v22;
    a2[3] = v19;
    sub_217751DE8();
    sub_217751DE8();
    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_21758EBD4(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  sub_2177531E8();
  CloudGeoLocation.hash(into:)(v4);
  return sub_217753238();
}

unint64_t sub_21758EC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29E28;
  if (!qword_27CB29E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29E28);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudGeoLocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21758ED64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29E30;
  if (!qword_27CB29E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29E30);
  }

  return result;
}

unint64_t sub_21758EDBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29E38;
  if (!qword_27CB29E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29E38);
  }

  return result;
}

unint64_t sub_21758EE14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29E40;
  if (!qword_27CB29E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29E40);
  }

  return result;
}

void sub_21758EE68()
{
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD00000000000005DLL, 0x80000002177B10D0);
  type metadata accessor for AnyMusicPredicate();
  sub_217752C78();
  MEMORY[0x21CEA23B0](46, 0xE100000000000000);
  OUTLINED_FUNCTION_3_82("Fatal error");
  __break(1u);
}

void sub_21758EF1C()
{
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000057, 0x80000002177B1130);
  type metadata accessor for AnyMusicPredicate();
  sub_217752C78();
  MEMORY[0x21CEA23B0](46, 0xE100000000000000);
  OUTLINED_FUNCTION_3_82("Fatal error");
  __break(1u);
}

uint64_t MusicPredicate.value.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(*v3 + 144);
  type metadata accessor for MusicPredicateValue(0, *(*v3 + 120), a1, a2);
  OUTLINED_FUNCTION_41_0();
  v8 = *(v7 + 16);

  return v8(a3, v3 + v5, v6);
}

uint64_t MusicPredicateValue.value<A>(ofType:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v68 = a3;
  sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v65 = v6;
  v66 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_1();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v64 = &v63 - v11;
  v12 = *(a1 + 16);
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_1();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v63 - v20;
  OUTLINED_FUNCTION_0();
  v63 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6_1();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v63 - v28;
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1();
  v33 = v32 - v31;
  (*(v34 + 16))(v32 - v31, v67, a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v36 = sub_217752DB8();

      if (v36)
      {
        *v68 = v36;
        v41 = OUTLINED_FUNCTION_11_54(v37, v38, v39, v40);
LABEL_9:
        swift_storeEnumTagMultiPayload();
        goto LABEL_10;
      }

LABEL_12:
      v61 = OUTLINED_FUNCTION_11_54(v37, v38, v39, v40);
      v58 = v68;
      v59 = 1;
      v60 = 1;
      return __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
    }

    (*(v14 + 32))(v18, v33, v12);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_4_14();
      __swift_storeEnumTagSinglePayload(v50, v51, v52, a2);
      v53 = *(v63 + 32);
      v53(v26, v9, a2);
      v54 = (v53)(v68, v26, a2);
      v41 = OUTLINED_FUNCTION_11_54(v54, v55, v56, v57);
      goto LABEL_9;
    }

LABEL_11:
    __swift_storeEnumTagSinglePayload(v9, 1, 1, a2);
    v37 = (*(v65 + 8))(v9, v66);
    goto LABEL_12;
  }

  (*(v14 + 32))(v21, v33, v12);
  v9 = v64;
  if (!swift_dynamicCast())
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_4_14();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, a2);
  v45 = *(v63 + 32);
  v45(v29, v9, a2);
  v46 = (v45)(v68, v29, a2);
  v41 = OUTLINED_FUNCTION_11_54(v46, v47, v48, v49);
  swift_storeEnumTagMultiPayload();
LABEL_10:
  OUTLINED_FUNCTION_4_14();
  v61 = v41;
  return __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
}

uint64_t sub_21758F538()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = dynamic_cast_existential_1_conditional(v2, v2, &protocol descriptor for CatalogFilterIdentifyingItem);
  if (v3)
  {
    return (*(v4 + 16))(v0[2], v3, v4);
  }

  v9 = 0;
  *&v10 = 0xE000000000000000;
  sub_217752AA8();
  v13 = 0;
  v14 = 0xE000000000000000;
  MEMORY[0x21CEA23B0](0xD00000000000001FLL, 0x80000002177B1190);
  v6 = *(v1 + 128);
  v9 = v2;
  v10 = *(v1 + 112);
  v11 = v6;
  v12 = v0;
  type metadata accessor for MusicPredicate(0, &v9);
  sub_217753018();
  MEMORY[0x21CEA23B0](0xD000000000000014, 0x80000002177B11B0);
  v7 = sub_217753348();
  MEMORY[0x21CEA23B0](v7);

  MEMORY[0x21CEA23B0](0xD000000000000041, 0x80000002177B11D0, v8);
  result = OUTLINED_FUNCTION_3_82("Fatal error");
  __break(1u);
  return result;
}

uint64_t sub_21758F6F0()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v2 + 120);
  v4 = OUTLINED_FUNCTION_57_0();
  v8 = type metadata accessor for MusicPredicateValue(v4, v5, v6, v7);
  OUTLINED_FUNCTION_0();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v44 - v11);
  (*(v13 + 16))(&v44 - v11, &v1[*(v2 + 144)], v8, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29E50, &unk_21777C240);
    if (swift_dynamicCast())
    {
      sub_2171F3F0C(&v48, &v45);
      v15 = v46;
      v16 = v47;
      __swift_project_boxed_opaque_existential_1(&v45, v46);
      v17 = (*(v16 + 8))(v15, v16);
      __swift_destroy_boxed_opaque_existential_1(&v45);
      OUTLINED_FUNCTION_41_0();
      (*(v18 + 8))(v12, v3);
      return v17;
    }

    OUTLINED_FUNCTION_41_0();
    (*(v40 + 8))(v12, v3);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 1)
  {
    *&v45 = *v12;
    OUTLINED_FUNCTION_57_0();
    sub_217752418();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29E48, &unk_21777C230);
    if (swift_dynamicCast())
    {
      v23 = v52;
      v24 = *(v52 + 16);
      if (v24)
      {
        v51 = MEMORY[0x277D84F90];
        sub_217275C90(0, v24, 0, v19, v20, v21, v22);
        v25 = v51;
        v26 = v23 + 32;
        do
        {
          sub_2171FF30C(v26, &v48);
          v27 = v49;
          v28 = v50;
          __swift_project_boxed_opaque_existential_1(&v48, v49);
          v29 = (*(v28 + 8))(v27, v28);
          v31 = v30;
          __swift_destroy_boxed_opaque_existential_1(&v48);
          v51 = v25;
          v37 = *(v25 + 16);
          v36 = *(v25 + 24);
          if (v37 >= v36 >> 1)
          {
            sub_217275C90(v36 > 1, v37 + 1, 1, v32, v33, v34, v35);
            v25 = v51;
          }

          *(v25 + 16) = v37 + 1;
          v38 = v25 + 16 * v37;
          *(v38 + 32) = v29;
          *(v38 + 40) = v31;
          v26 += 40;
          --v24;
        }

        while (v24);

        *&v48 = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
        sub_2173C2F20();
        v17 = sub_217751ED8();

        return v17;
      }

      *&v48 = 0;
      *(&v48 + 1) = 0xE000000000000000;
      sub_217752AA8();
      v45 = v48;
      MEMORY[0x21CEA23B0](0xD00000000000003CLL, 0x80000002177B12F0);
      OUTLINED_FUNCTION_6_65();
      MEMORY[0x21CEA23B0](46, 0xE100000000000000);
      OUTLINED_FUNCTION_169_0();
      v43 = 87;
      goto LABEL_18;
    }

LABEL_16:
    *&v48 = 0;
    *(&v48 + 1) = 0xE000000000000000;
    sub_217752AA8();
    v45 = v48;
    MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177B1270);
    OUTLINED_FUNCTION_6_65();
    MEMORY[0x21CEA23B0](0xD000000000000014, 0x80000002177B11B0);
    v41 = sub_217753348();
    MEMORY[0x21CEA23B0](v41);

    MEMORY[0x21CEA23B0](0xD000000000000044, 0x80000002177B12A0, v42);
    OUTLINED_FUNCTION_169_0();
    v43 = 82;
LABEL_18:
    v44 = v43;
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_169_0();
  v44 = 84;
LABEL_19:
  result = OUTLINED_FUNCTION_3_82("Fatal error");
  __break(1u);
  return result;
}

uint64_t sub_21758FBF4()
{
  v1 = *v0;

  v2 = *(*v0 + 144);
  type metadata accessor for MusicPredicateValue(0, *(v1 + 120), v3, v4);
  OUTLINED_FUNCTION_6_0();
  v6 = *(v5 + 8);

  return v6(&v0[v2]);
}

uint64_t *MusicPredicate.deinit()
{
  v1 = *v0;

  v2 = *(*v0 + 144);
  type metadata accessor for MusicPredicateValue(0, *(v1 + 120), v3, v4);
  OUTLINED_FUNCTION_6_0();
  (*(v5 + 8))(v0 + v2);
  return v0;
}

uint64_t MusicPredicate.__deallocating_deinit()
{
  MusicPredicate.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

void MusicPredicateValue.map<A>(_:)(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v50 = a1;
  v48 = a5;
  v49 = a2;
  v45 = a4;
  type metadata accessor for MusicPredicateValue(0, a4, a3, a4);
  OUTLINED_FUNCTION_0();
  v46 = v8;
  v47 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_1();
  v11 = (v9 - v10);
  MEMORY[0x28223BE20](v12);
  v44 = (&v43 - v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - v15;
  v17 = *(a3 + 16);
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_1();
  v23 = (v21 - v22);
  MEMORY[0x28223BE20](v24);
  v26 = &v43 - v25;
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1();
  v30 = (v29 - v28);
  (*(v31 + 16))(v29 - v28, v5, a3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(v19 + 32))(v26, v30, v17);
    v40 = v51;
    v50(v26);
    (*(v19 + 8))(v26, v17);
    if (v40)
    {
      return;
    }

    v41 = v47;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    (*(v19 + 32))(v23, v30, v17);
    v42 = v51;
    v50(v23);
    (*(v19 + 8))(v23, v17);
    if (v42)
    {
      return;
    }

    v41 = v47;
    swift_storeEnumTagMultiPayload();
    v16 = v11;
    goto LABEL_11;
  }

  v52[2] = *v30;
  MEMORY[0x28223BE20](EnumCaseMultiPayload);
  v33 = v45;
  *(&v43 - 4) = v17;
  *(&v43 - 3) = v33;
  v34 = v49;
  *(&v43 - 2) = v50;
  *(&v43 - 1) = v34;
  v35 = sub_217752418();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
  OUTLINED_FUNCTION_33();
  WitnessTable = swift_getWitnessTable();
  v38 = v51;
  v39 = sub_2175FA70C(sub_217590A88, (&v43 - 6), v35, v33, v36, WitnessTable, MEMORY[0x277D84950], v52);

  if (!v38)
  {
    v16 = v44;
    *v44 = v39;
    v41 = v47;
LABEL_10:
    swift_storeEnumTagMultiPayload();
LABEL_11:
    (*(v46 + 32))(v48, v16, v41);
  }
}

void MusicPredicateValue.compactMap<A>(_:)(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v82 = a1;
  v81 = a2;
  sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v72 = v9;
  v73 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_1();
  v76 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  v75 = &v70 - v13;
  OUTLINED_FUNCTION_0();
  v74 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_1();
  v71 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v70 - v19;
  v80 = *(a3 + 16);
  OUTLINED_FUNCTION_0();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6_1();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v70 - v28;
  OUTLINED_FUNCTION_0();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1();
  v35 = (v34 - v33);
  v77 = a4;
  v38 = type metadata accessor for MusicPredicateValue(0, a4, v36, v37);
  v78 = a5;
  v39 = a5;
  v40 = v38;
  __swift_storeEnumTagSinglePayload(v39, 1, 1, v38);
  (*(v31 + 16))(v35, v79, a3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v42 = v40;
      v84 = *v35;
      sub_217752418();
      swift_getWitnessTable();
      v43 = v83;
      v44 = sub_217752148();
      if (v43)
      {
        sub_2177528F8();
        OUTLINED_FUNCTION_6_0();
        (*(v45 + 8))(v78);
LABEL_11:

        return;
      }

      v53 = v44;

      v84 = v53;
      sub_217752418();
      OUTLINED_FUNCTION_33();
      swift_getWitnessTable();
      if (sub_217752738())
      {
        goto LABEL_11;
      }

      sub_2177528F8();
      OUTLINED_FUNCTION_6_0();
      v61 = v78;
      (*(v60 + 8))(v78);
      *v61 = v53;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_4_14();
      v65 = v42;
      goto LABEL_19;
    }

    v49 = v80;
    (*(v22 + 32))(v26, v35, v80);
    v47 = v76;
    v50 = v83;
    v82(v26);
    if (v50)
    {
      (*(v22 + 8))(v26, v49);
      goto LABEL_9;
    }

    (*(v22 + 8))(v26, v49);
    v59 = v77;
    if (__swift_getEnumTagSinglePayload(v47, 1, v77) == 1)
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_57_0();
    sub_2177528F8();
    OUTLINED_FUNCTION_6_0();
    v67 = v78;
    (*(v66 + 8))(v78);
    v56 = v40;
    v68 = *(v74 + 32);
    v69 = v71;
    v68(v71, v47, v59);
    v68(v67, v69, v59);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v46 = v80;
    (*(v22 + 32))(v29, v35, v80);
    v47 = v75;
    v48 = v83;
    v82(v29);
    if (v48)
    {
      (*(v22 + 8))(v29, v46);
LABEL_9:
      OUTLINED_FUNCTION_57_0();
      sub_2177528F8();
      OUTLINED_FUNCTION_6_0();
      (*(v51 + 8))(v78, v52);
      return;
    }

    (*(v22 + 8))(v29, v46);
    v54 = v77;
    if (__swift_getEnumTagSinglePayload(v47, 1, v77) == 1)
    {
LABEL_15:
      (*(v72 + 8))(v47, v73);
      return;
    }

    OUTLINED_FUNCTION_57_0();
    sub_2177528F8();
    OUTLINED_FUNCTION_6_0();
    v56 = v40;
    v57 = v78;
    (*(v55 + 8))(v78);
    v58 = *(v74 + 32);
    v58(v20, v47, v54);
    v58(v57, v20, v54);
    swift_storeEnumTagMultiPayload();
  }

  OUTLINED_FUNCTION_4_14();
  v65 = v56;
LABEL_19:
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
}

uint64_t Optional<A>.catalogFilterValue.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v13, a1, v10);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    (*(v4 + 8))(v6, a1);
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD00000000000005DLL, 0x80000002177B1330);
    v16 = sub_217753348();
    MEMORY[0x21CEA23B0](v16);

    MEMORY[0x21CEA23B0](11838, 0xE200000000000000, v17);
    OUTLINED_FUNCTION_169_0();
    v18[0] = 171;
    result = OUTLINED_FUNCTION_3_82("Fatal error");
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v12, v6, v8);
    v14 = (*(a2 + 8))(v8, a2);
    (*(v9 + 8))(v12, v8);
    return v14;
  }

  return result;
}

uint64_t sub_217590A88(uint64_t a1, void *a2)
{
  result = (*(v2 + 32))(a1);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_217590AC0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 254;
}

void sub_217590BE4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t OUTLINED_FUNCTION_11_54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return type metadata accessor for MusicPredicateValue(0, v4, a3, a4);
}

uint64_t static MusicPlayer.Transition.crossfade(duration:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2 & 1;
  *(a3 + 9) = 0;
  return result;
}

uint64_t static MusicPlayer.Transition.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 9);
  if (*(a1 + 9))
  {
    goto LABEL_2;
  }

  if (*(a2 + 9))
  {
    return 0;
  }

  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
LABEL_2:
    if (v2)
    {
      return 1;
    }
  }

  else if ((*(a2 + 8) & 1) == 0 && *a1 == *a2)
  {
    return 1;
  }

  return 0;
}

uint64_t MusicPlayer.Transition.hash(into:)()
{
  if (*(v0 + 9))
  {
    return MEMORY[0x21CEA3550](0);
  }

  v2 = *v0;
  v3 = *(v0 + 8);
  MEMORY[0x21CEA3550](1);
  if (v3)
  {
    return sub_217753208();
  }

  sub_217753208();
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  return MEMORY[0x21CEA3580](v4);
}

uint64_t MusicPlayer.Transition.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  sub_2177531E8();
  if (v3)
  {
    MEMORY[0x21CEA3550](0);
  }

  else
  {
    MEMORY[0x21CEA3550](1);
    if (v2)
    {
      sub_217753208();
    }

    else
    {
      sub_217753208();
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v4 = v1;
      }

      else
      {
        v4 = 0;
      }

      MEMORY[0x21CEA3580](v4);
    }
  }

  return sub_217753238();
}

uint64_t sub_217591018(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  sub_2177531E8();
  if (v4)
  {
    MEMORY[0x21CEA3550](0);
  }

  else
  {
    MEMORY[0x21CEA3550](1);
    if (v3)
    {
      sub_217753208();
    }

    else
    {
      sub_217753208();
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v5 = v2;
      }

      else
      {
        v5 = 0;
      }

      MEMORY[0x21CEA3580](v5);
    }
  }

  return sub_217753238();
}

uint64_t sub_2175910B0()
{
  if (*(v0 + 9))
  {
    return 0x656E6F6E2ELL;
  }

  if (*(v0 + 8))
  {
    return 0x616673736F72632ELL;
  }

  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000015, 0x80000002177B13C0);
  sub_2177525E8();
  MEMORY[0x21CEA23B0](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_217591190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29E58;
  if (!qword_27CB29E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29E58);
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t _s10TransitionOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s10TransitionOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 10) = v3;
  return result;
}

uint64_t sub_217591248(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217591264(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 9) = v2;
  return result;
}

void MusicAuthorization.Status.init(rawValue:)(char *a2@<X8>)
{
  v3 = sub_217752DC8();

  v4 = 4;
  if (v3 < 4)
  {
    v4 = v3;
  }

  *a2 = v4;
}

uint64_t MusicAuthorization.Status.rawValue.getter()
{
  result = 0x7265746544746F6ELL;
  switch(*v0)
  {
    case 1:
      result = 0x6465696E6564;
      break;
    case 2:
      result = 0x7463697274736572;
      break;
    case 3:
      result = 0x7A69726F68747561;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2175913B4@<X0>(uint64_t *a1@<X8>)
{
  result = MusicAuthorization.Status.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MusicAuthorization.Status.description.getter()
{
  v1 = 0xED000064656E696DLL;
  v2 = 0x7265746544746F6ELL;
  switch(*v0)
  {
    case 1:
      v1 = 0xE600000000000000;
      v2 = 0x6465696E6564;
      break;
    case 2:
      v2 = 0x7463697274736572;
      goto LABEL_5;
    case 3:
      v2 = 0x7A69726F68747561;
LABEL_5:
      v1 = 0xEA00000000006465;
      break;
    default:
      break;
  }

  MEMORY[0x21CEA23B0](v2, v1);

  return 46;
}

unint64_t sub_2175914AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29E60;
  if (!qword_27CB29E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29E60);
  }

  return result;
}

_BYTE *_s6StatusOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

void CloudResourceIdentifier.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29E68, &qword_21777C4F0);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217591848(v11, v12, v13);
  v14 = sub_2177532C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v35 = 0;
    sub_2172E1C68(v14, v15, v16);
    v17 = OUTLINED_FUNCTION_1_90(&type metadata for MusicItemID);
    v18 = v31;
    v30 = v32;
    v35 = 1;
    sub_21733BE84(v17, v19, v20);
    OUTLINED_FUNCTION_1_90(&type metadata for ResourceType);
    v28 = v18;
    v21 = v31;
    v29 = v32;
    v34 = v33;
    LOBYTE(v31) = 2;
    v22 = sub_217752E18();
    v24 = v23;
    v25 = v22;
    (*(v7 + 8))(v10, v5);
    v26 = v29;
    v27 = v30;
    *a2 = v28;
    *(a2 + 8) = v27;
    *(a2 + 16) = v21;
    *(a2 + 24) = v26;
    *(a2 + 32) = v34;
    *(a2 + 40) = v25;
    *(a2 + 48) = v24;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

unint64_t sub_217591848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29E70;
  if (!qword_27CB29E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29E70);
  }

  return result;
}

uint64_t CloudResourceIdentifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29E78, &qword_21777C4F8);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[3];
  v26 = v1[2];
  v27 = v11;
  v32 = *(v1 + 32);
  v12 = v1[5];
  v25[0] = v1[6];
  v25[1] = v12;
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217591848(v13, v14, v15);
  sub_217751DE8();
  v16 = sub_2177532F8();
  v29 = v9;
  v30 = v10;
  v33 = 0;
  sub_2172E1B18(v16, v17, v18);
  v19 = v28;
  sub_217752F88();

  if (!v19)
  {
    v29 = v26;
    v30 = v27;
    v31 = v32;
    v33 = 1;
    sub_21733ABF0(v20, v21, v22);
    sub_217751DE8();
    sub_217752F88();

    LOBYTE(v29) = 2;
    sub_217752EF8();
  }

  return (*(v5 + 8))(v8, v3, v23);
}

uint64_t static CloudResourceIdentifier.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[5];
  v8 = a2[6];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  if (v10 || (sub_217753058() & 1) != 0)
  {
    v11 = v2 == v6 && v3 == v7;
    if (v11 || (sub_217753058() & 1) != 0)
    {
      if (v5)
      {
        if (v8)
        {
          v12 = v4 == v9 && v5 == v8;
          if (v12 || (sub_217753058() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v8)
      {
        return 1;
      }
    }
  }

  return 0;
}

void __swiftcall CloudResourceIdentifier.init(id:type:href:)(MusicKit::CloudResourceIdentifier *__return_ptr retstr, MusicKit::MusicItemID id, MusicKit::ResourceType type, Swift::String_optional href)
{
  v4 = *type.rawValue._countAndFlagsBits;
  v5 = *(type.rawValue._countAndFlagsBits + 8);
  v6 = *(type.rawValue._countAndFlagsBits + 16);
  retstr->id = id;
  retstr->type.rawValue._countAndFlagsBits = v4;
  retstr->type.rawValue._object = v5;
  retstr->type.isLibraryType = v6;
  retstr->href.value._countAndFlagsBits = type.rawValue._object;
  retstr->href.value._object = *&type.isLibraryType;
}

uint64_t CloudResourceIdentifier.id.getter()
{
  v1 = *v0;
  sub_217751DE8();
  return v1;
}

uint64_t CloudResourceIdentifier.type.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return sub_217751DE8();
}

uint64_t CloudResourceIdentifier.href.getter()
{
  v1 = *(v0 + 40);
  sub_217751DE8();
  return v1;
}

uint64_t sub_217591C08(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1717924456 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_217753058();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_217591D18(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 1701869940;
  }

  return 1717924456;
}

uint64_t sub_217591D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217591C08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217591D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217591848(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217591DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217591848(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CloudResourceIdentifier.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 48);
  sub_217751FF8();
  sub_217751FF8();
  if (!v2)
  {
    return sub_217753208();
  }

  sub_217753208();

  return sub_217751FF8();
}

uint64_t CloudResourceIdentifier.hashValue.getter()
{
  v1 = *(v0 + 48);
  sub_2177531E8();
  sub_217751FF8();
  sub_217751FF8();
  sub_217753208();
  if (v1)
  {
    sub_217751FF8();
  }

  return sub_217753238();
}

uint64_t sub_217591F7C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *&v6[72] = *v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  v10 = *(v1 + 40);
  sub_2177531E8();
  CloudResourceIdentifier.hash(into:)(v6);
  return sub_217753238();
}

unint64_t sub_217591FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29E80;
  if (!qword_27CB29E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29E80);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudResourceIdentifier.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_217592124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29E88;
  if (!qword_27CB29E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29E88);
  }

  return result;
}

unint64_t sub_21759217C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29E90;
  if (!qword_27CB29E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29E90);
  }

  return result;
}

unint64_t sub_2175921D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29E98;
  if (!qword_27CB29E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29E98);
  }

  return result;
}

uint64_t static CloudResourceRequestKind.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if (!v3)
  {
    if (v6)
    {
      goto LABEL_10;
    }

    sub_2172CB1C4(*a1, v2, 0);
    v8 = v4;
    v9 = v5;
    v10 = 0;
LABEL_7:
    sub_2172CB1C4(v8, v9, v10);
    return 1;
  }

  if (v3 == 1)
  {
    if (v6 == 1)
    {
      v7 = 1;
      sub_2172CB1C4(*a1, v2, 1uLL);
      sub_2172CB1C4(v4, v5, 1uLL);
      return v7;
    }

LABEL_10:
    v11 = OUTLINED_FUNCTION_1_91();
    sub_2172CB1B0(v11, v12, v13);
    v14 = OUTLINED_FUNCTION_0_101();
    sub_2172CB1B0(v14, v15, v16);
    v17 = OUTLINED_FUNCTION_0_101();
    sub_2172CB1C4(v17, v18, v19);
    v20 = OUTLINED_FUNCTION_1_91();
    sub_2172CB1C4(v20, v21, v22);
    return 0;
  }

  if (v6 < 2 || v4 != *a1)
  {
    goto LABEL_10;
  }

  if (v2 == v5 && v3 == v6)
  {
    sub_2172CB1B0(*a2, v2, v3);
    v38 = OUTLINED_FUNCTION_0_101();
    sub_2172CB1B0(v38, v39, v40);
    v41 = OUTLINED_FUNCTION_0_101();
    sub_2172CB1C4(v41, v42, v43);
    v8 = v4;
    v9 = v2;
    v10 = v3;
    goto LABEL_7;
  }

  v25 = sub_217753058();
  v26 = OUTLINED_FUNCTION_1_91();
  sub_2172CB1B0(v26, v27, v28);
  v29 = OUTLINED_FUNCTION_0_101();
  sub_2172CB1B0(v29, v30, v31);
  v32 = OUTLINED_FUNCTION_0_101();
  sub_2172CB1C4(v32, v33, v34);
  v35 = OUTLINED_FUNCTION_1_91();
  sub_2172CB1C4(v35, v36, v37);
  return v25 & 1;
}

uint64_t CloudResourceRequestKind.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 2);
  if (!v2)
  {
    v3 = 0;
    return MEMORY[0x21CEA3550](v3);
  }

  if (v2 == 1)
  {
    v3 = 2;
    return MEMORY[0x21CEA3550](v3);
  }

  v5 = *v1;
  MEMORY[0x21CEA3550](1);
  MEMORY[0x21CEA3550](v5);

  return sub_217751FF8();
}

uint64_t CloudResourceRequestKind.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  sub_2177531E8();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x21CEA3550](1);
      MEMORY[0x21CEA3550](v1);
      sub_217751FF8();
      return sub_217753238();
    }

    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x21CEA3550](v3);
  return sub_217753238();
}

uint64_t sub_2175924F0(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 24);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  sub_2177531E8();
  CloudResourceRequestKind.hash(into:)(v5);
  return sub_217753238();
}

unint64_t sub_21759254C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29EA0;
  if (!qword_27CB29EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29EA0);
  }

  return result;
}

uint64_t sub_2175925A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 25))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2175925F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_217592658(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(result + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_217592720(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_217592778()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21777C810;
  KeyPath = swift_getKeyPath(asc_21777C958);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29EB8, &qword_21777C980);
  swift_allocObject();
  *(v0 + 32) = sub_2173836F4(KeyPath);
  v2 = swift_getKeyPath(a8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29EC0, &qword_21777C9B0);
  swift_allocObject();
  *(v0 + 40) = sub_2173836F4(v2);
  v3 = swift_getKeyPath(byte_21777C9B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29EC8, &qword_21777C9E0);
  swift_allocObject();
  *(v0 + 48) = sub_217383700(v3);
  v4 = swift_getKeyPath(byte_21777C9E8);
  v5 = sub_21738277C(v4, 11);

  *(v0 + 56) = v5;
  qword_280C01F98 = v0;
  return result;
}

uint64_t sub_2175928C8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_217592920(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_217592978@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_2175929D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 32))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

void *sub_217592A28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217770410;
  KeyPath = swift_getKeyPath("Ȏ=e");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29EB0, &qword_21777C900);
  swift_allocObject();
  *(v0 + 32) = sub_2173834B0(KeyPath, 1);
  v2 = swift_getKeyPath(byte_21777C908);
  swift_allocObject();
  *(v0 + 40) = sub_2173834B0(v2, 10);
  v3 = swift_getKeyPath(byte_21777C930);
  swift_allocObject();
  result = sub_2173834B0(v3, 11);
  *(v0 + 48) = result;
  qword_27CB8A2D0 = v0;
  return result;
}

uint64_t sub_217592B40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_217592BA0(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_217592BF8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 24))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

id sub_217592C50()
{
  v0 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelAlbumKind) initWithVariants:3 options:2];
  v1 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelArtistKind) initWithAlbumKind_];

  return v1;
}

unint64_t sub_217592CB8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27B48, &qword_21776B800);
  v1 = swift_dynamicCastClass();
  if (!v1)
  {
    OUTLINED_FUNCTION_1_1();
    sub_217752AA8();
    OUTLINED_FUNCTION_23_4();
    OUTLINED_FUNCTION_22_1();
    MEMORY[0x21CEA23B0]();
    v12 = OUTLINED_FUNCTION_29_4();
    OUTLINED_FUNCTION_28(v12, v13, v12, MEMORY[0x277D84698], MEMORY[0x277D846A8], v14, v15, v16);
    OUTLINED_FUNCTION_17_1();
    OUTLINED_FUNCTION_21_0();
    goto LABEL_14;
  }

  v2 = v1;
  v3 = qword_280BE6A00;
  swift_retain_n();
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_280C021C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29EA8, &unk_217794FE0);
  if (static AnyMusicProperty.== infix(_:_:)(v4, v2))
  {
  }

  else
  {
    v5 = qword_280BE69F8;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = qword_280C021C0;

    v7 = static AnyMusicProperty.== infix(_:_:)(v6, v2);

    if ((v7 & 1) == 0)
    {
      v8 = qword_280BE6870;

      if (v8 != -1)
      {
        OUTLINED_FUNCTION_11_0(&qword_280BE6870);
      }

      v9 = static AnyMusicProperty.== infix(_:_:)(qword_280BE6878, v2);

      if ((v9 & 1) == 0)
      {
        while (1)
        {
          OUTLINED_FUNCTION_1_1();
          sub_217752AA8();
          OUTLINED_FUNCTION_23_4();
          OUTLINED_FUNCTION_22_1();
          MEMORY[0x21CEA23B0](0xD000000000000022);
          v17 = OUTLINED_FUNCTION_29_4();
          OUTLINED_FUNCTION_28(v17, v18, v17, MEMORY[0x277D84698], MEMORY[0x277D846A8], v19, v20, v21);
          OUTLINED_FUNCTION_17_1();
          OUTLINED_FUNCTION_21_0();
LABEL_14:
          OUTLINED_FUNCTION_4_81("Fatal error");
          __break(1u);
        }
      }
    }
  }

  v10 = Artist.LegacyModelArtistPropertyKey.rawValue.getter();

  return v10;
}

uint64_t sub_217592F58@<X0>(char *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27B48, &qword_21776B800);
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    OUTLINED_FUNCTION_1_1();
    sub_217752AA8();
    OUTLINED_FUNCTION_23_4();
    v12 = OUTLINED_FUNCTION_25_3();
    MEMORY[0x21CEA23B0](v12, 0xE900000000000020);
    v13 = OUTLINED_FUNCTION_29_4();
    OUTLINED_FUNCTION_28(v13, v14, v13, MEMORY[0x277D84698], MEMORY[0x277D846A8], v15, v16, v17);
    OUTLINED_FUNCTION_22_1();
    MEMORY[0x21CEA23B0](0xD00000000000001BLL);
    OUTLINED_FUNCTION_21_0();
    goto LABEL_15;
  }

  v4 = v3;
  v5 = qword_280BE6880;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_3_12(&qword_280BE6880);
  }

  if (static AnyMusicProperty.== infix(_:_:)(qword_280BE6888, v4))
  {
    goto LABEL_12;
  }

  v6 = qword_280BE6870;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_11_0(&qword_280BE6870);
  }

  v7 = static AnyMusicProperty.== infix(_:_:)(qword_280BE6878, v4);

  if ((v7 & 1) == 0)
  {
    v9 = qword_280BE69E8;

    if (v9 != -1)
    {
      OUTLINED_FUNCTION_2_7(&qword_280BE69E8);
    }

    v10 = static AnyMusicProperty.== infix(_:_:)(qword_280BE69F0, v4);

    if ((v10 & 1) == 0)
    {
      while (1)
      {
        OUTLINED_FUNCTION_1_1();
        sub_217752AA8();
        OUTLINED_FUNCTION_23_4();
        OUTLINED_FUNCTION_22_1();
        MEMORY[0x21CEA23B0](v18);
        v19 = OUTLINED_FUNCTION_29_4();
        OUTLINED_FUNCTION_28(v19, v20, v19, MEMORY[0x277D84698], MEMORY[0x277D846A8], v21, v22, v23);
        OUTLINED_FUNCTION_17_1();
        OUTLINED_FUNCTION_21_0();
LABEL_15:
        OUTLINED_FUNCTION_4_81("Fatal error");
        __break(1u);
      }
    }

LABEL_12:
    v8 = 34;
    goto LABEL_13;
  }

  v8 = 8;
LABEL_13:

  *a2 = v8;
  return result;
}

uint64_t sub_217593180(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  *(v5 + 936) = v4;
  *(v5 + 928) = a4;
  *(v5 + 920) = a2;
  *(v5 + 912) = a1;
  *(v5 + 297) = *a3;
  return MEMORY[0x2822009F8](sub_2175931B4, 0, 0);
}

uint64_t sub_2175931B4()
{
  v1 = *(v0 + 920);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27B48, &qword_21776B800);
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    OUTLINED_FUNCTION_1_1();
    sub_217752AA8();
    *(v0 + 864) = v23;
    *(v0 + 872) = v24;
    v12 = OUTLINED_FUNCTION_25_3();
    MEMORY[0x21CEA23B0](v12, 0xE900000000000020);
    *(v0 + 896) = v1;
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    MEMORY[0x21CEA23B0](0xD00000000000001BLL, 0x80000002177B1420);
    return OUTLINED_FUNCTION_4_81("Fatal error");
  }

  v3 = v2;
  v4 = *(v0 + 912);
  *(v4 + 32) = 0;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  v5 = qword_280BE6880;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_3_12(&qword_280BE6880);
  }

  if ((static AnyMusicProperty.== infix(_:_:)(qword_280BE6888, v3) & 1) == 0)
  {
    v13 = qword_280BE69E8;

    if (v13 != -1)
    {
      OUTLINED_FUNCTION_2_7(&qword_280BE69E8);
    }

    v14 = static AnyMusicProperty.== infix(_:_:)(qword_280BE69F0, v3);

    if (v14)
    {
      v15 = *(v0 + 297);
      v16 = *(v0 + 936);
      v17 = *(v0 + 928);
      sub_21749A834();
      *(v0 + 408) = v15;
      KeyPath = swift_getKeyPath(asc_21777C888);
      sub_21725B4DC(KeyPath, v16);

      *(v0 + 384) = v17;
      memcpy((v0 + 224), (v0 + 384), 0x49uLL);
      v19 = OUTLINED_FUNCTION_13_45();
      *(v0 + 960) = v19;
      *v19 = v0;
      v19[1] = sub_217593790;
      v11 = v0 + 16;
      goto LABEL_11;
    }

    v21 = *(v0 + 920);
    OUTLINED_FUNCTION_1_1();
    sub_217752AA8();
    *(v0 + 880) = v23;
    *(v0 + 888) = v24;
    MEMORY[0x21CEA23B0](0xD000000000000029, 0x80000002177B1440);
    *(v0 + 904) = v21;
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
    return OUTLINED_FUNCTION_4_81("Fatal error");
  }

  v6 = *(v0 + 297);
  v7 = *(v0 + 936);
  v8 = *(v0 + 928);
  sub_21749A834();
  *(v0 + 648) = v6;
  v9 = swift_getKeyPath(byte_21777C8B0);
  sub_21725B4C8(v9, v7);

  *(v0 + 624) = v8;
  memcpy((v0 + 304), (v0 + 624), 0x49uLL);
  v10 = OUTLINED_FUNCTION_13_45();
  *(v0 + 944) = v10;
  *v10 = v0;
  v10[1] = sub_217593588;
  v11 = v0 + 120;
LABEL_11:

  return v22(v11);
}

uint64_t sub_217593588()
{
  OUTLINED_FUNCTION_10();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  *(v4 + 952) = v0;

  if (v0)
  {
    v5 = sub_217593998;
  }

  else
  {
    v5 = sub_217593690;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_217593690()
{
  v1 = v0[114];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25388, &unk_21775D410);
  v3 = swift_allocObject();
  memcpy((v3 + 16), v0 + 15, 0x68uLL);

  sub_2171F06D8(v1, &unk_27CB28A10, &qword_21776B0A0);
  *v1 = v3;
  v1[3] = v2;
  v1[4] = &protocol witness table for MusicItemCollection<A>;
  memcpy(v0 + 98, v0 + 78, 0x49uLL);
  sub_2171F06D8((v0 + 98), &qword_27CB27B58, &qword_21776B828);
  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_217593790()
{
  OUTLINED_FUNCTION_10();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  *(v4 + 968) = v0;

  if (v0)
  {
    v5 = sub_217593A38;
  }

  else
  {
    v5 = sub_217593898;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_217593898()
{
  v1 = v0[114];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25380, &unk_21775DAA0);
  v3 = swift_allocObject();
  memcpy((v3 + 16), v0 + 2, 0x68uLL);

  sub_2171F06D8(v1, &unk_27CB28A10, &qword_21776B0A0);
  *v1 = v3;
  v1[3] = v2;
  v1[4] = &protocol witness table for MusicItemCollection<A>;
  memcpy(v0 + 68, v0 + 48, 0x49uLL);
  sub_2171F06D8((v0 + 68), &qword_27CB27B90, &qword_21776B860);
  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_217593998()
{
  OUTLINED_FUNCTION_10();
  v1 = v0[114];

  sub_2171F06D8(v1, &unk_27CB28A10, &qword_21776B0A0);
  memcpy(v0 + 88, v0 + 78, 0x49uLL);
  sub_2171F06D8((v0 + 88), &qword_27CB27B58, &qword_21776B828);
  OUTLINED_FUNCTION_20_0();

  return v2();
}

uint64_t sub_217593A38()
{
  OUTLINED_FUNCTION_10();
  v1 = v0[114];

  sub_2171F06D8(v1, &unk_27CB28A10, &qword_21776B0A0);
  memcpy(v0 + 58, v0 + 48, 0x49uLL);
  sub_2171F06D8((v0 + 58), &qword_27CB27B90, &qword_21776B860);
  OUTLINED_FUNCTION_20_0();

  return v2();
}

uint64_t sub_217593B2C(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21725B86C;

  return sub_217593180(a1, a2, a3, a4);
}

uint64_t AnyMusicLibrarySearchExtendedResults.appendExtendedDescription(for:forDebugging:to:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v9 = v3[3];
  v10 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v9);
  v12 = *a1;
  v13 = v7;
  v14 = v8;
  return (*(v10 + 16))(&v12, a2, a3, v9, v10);
}

Swift::Void __swiftcall AnyMusicLibrarySearchExtendedResults.appendExtendedDescription(forDebugging:to:)(Swift::Bool forDebugging, Swift::String *to)
{
  v4 = forDebugging;
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  (*(v6 + 24))(v4, to, v5, v6);
}

uint64_t MusicLibrarySearchExtendedResults<>.isEqual<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26[1] = a5;
  v8 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = v26 - v12;
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v14);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0();
  v18 = v17;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v16, a1, a3, v20);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v13, 0, 1, a2);
    (*(v18 + 32))(v22, v13, a2);
    v24 = sub_217751F08();
    (*(v18 + 8))(v22, a2);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, a2);
    (*(v10 + 8))(v13, v8);
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t static AnyMusicLibrarySearchExtendedResults.== infix(_:_:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = *(v4 + 40);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25AB0, &qword_21775DAD0);
  return v5(a2, v6, v3, v4) & 1;
}

uint64_t sub_217593FE0(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 48))(a1, v3, v4);
}

uint64_t AnyMusicLibrarySearchExtendedResults.hashValue.getter()
{
  sub_2177531E8();
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 48))(v4, v1, v2);
  return sub_217753238();
}

uint64_t sub_217594174(uint64_t a1)
{
  sub_2177531E8();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 48))(v5, v2, v3);
  return sub_217753238();
}

uint64_t sub_21759420C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_217594294(a1, a2, a3);

  return MusicLibrarySearchExtendedResults<>.isEqual<A>(to:)(a1, a3, a2, v6, v7);
}

MusicKit::MusicLibrarySearchLegacyModelExtendedResults __swiftcall MusicLibrarySearchLegacyModelExtendedResults.init(items:topResults:)(Swift::OpaquePointer items, Swift::OpaquePointer topResults)
{
  v2->_rawValue = items._rawValue;
  v2[1]._rawValue = topResults._rawValue;
  result.topResults = topResults;
  result.items = items;
  return result;
}

unint64_t sub_217594294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29ED0;
  if (!qword_27CB29ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29ED0);
  }

  return result;
}

MusicKit::MusicDeviceLocalID __swiftcall MusicDeviceLocalID.init(value:databaseID:)(MusicKit::MusicItemID value, MusicKit::MusicItemID databaseID)
{
  *v2 = value;
  v2[1] = databaseID;
  result.databaseID = databaseID;
  result.value = value;
  return result;
}

uint64_t static MusicDeviceLocalID.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_217753058(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_217753058();
    }
  }

  return result;
}

uint64_t MusicDeviceLocalID.value.getter()
{
  v1 = *v0;
  sub_217751DE8();
  return v1;
}

uint64_t MusicDeviceLocalID.databaseID.getter()
{
  v1 = *(v0 + 16);
  sub_217751DE8();
  return v1;
}

uint64_t MusicDeviceLocalID.hash(into:)(uint64_t a1)
{
  sub_217751FF8();

  return sub_217751FF8();
}

uint64_t MusicDeviceLocalID.hashValue.getter()
{
  sub_2177531E8();
  sub_217751FF8();
  sub_217751FF8();
  return sub_217753238();
}

uint64_t sub_217594554(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  sub_2177531E8();
  MusicDeviceLocalID.hash(into:)(v5);
  return sub_217753238();
}

uint64_t MusicDeviceLocalID.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2171FF30C(a1, v14);
  v5 = sub_217722F3C(v14);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v10;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v13;
  return result;
}

double MusicDeviceLocalID.encode(to:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  sub_217751DE8();
  sub_217751DE8();
  sub_2177230F0(a1, v3, v4, v6, v5);
}

unint64_t sub_2175946E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29ED8;
  if (!qword_27CB29ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29ED8);
  }

  return result;
}

uint64_t _MusicAsyncPropertyOptions.hashValue.getter()
{
  sub_2177531E8();
  sub_217753208();
  return sub_217753238();
}

uint64_t sub_217594820(uint64_t a1)
{
  sub_2177531E8();
  sub_217753208();
  return sub_217753238();
}

unint64_t sub_217594868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29EE0;
  if (!qword_27CB29EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29EE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _MusicAsyncPropertyOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for _MusicAsyncPropertyOptions(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t MusicCatalogSearchExtendedResults<>.isEqual<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26[1] = a5;
  v8 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = v26 - v12;
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v14);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0();
  v18 = v17;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v16, a1, a3, v20);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v13, 0, 1, a2);
    (*(v18 + 32))(v22, v13, a2);
    v24 = sub_217751F08();
    (*(v18 + 8))(v22, a2);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, a2);
    (*(v10 + 8))(v13, v8);
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t static AnyMusicCatalogSearchExtendedResults.== infix(_:_:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = *(v4 + 48);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29EE8, &qword_21777CD50);
  return v5(a2, v6, v3, v4) & 1;
}

uint64_t sub_217594D38(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 56))(a1, v3, v4);
}

uint64_t AnyMusicCatalogSearchExtendedResults.convertToCatalogSearchRawExtendedResults<A>(for:requestedTypeValues:configuration:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  v11 = v5[3];
  v12 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v11);
  v14 = v10;
  return (*(v12 + 16))(a1, &v14, a3, a4, a5, v11, v12);
}

uint64_t AnyMusicCatalogSearchExtendedResults.appendExtendedDescription(requestedTypeValues:forDebugging:to:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  v10 = v6;
  return (*(v8 + 24))(&v10, a2, a3, v7, v8);
}

uint64_t AnyMusicCatalogSearchExtendedResults.libraryMapped(policy:scope:)(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  *(v4 + 50) = *a2;
  *(v4 + 51) = *a3;
  return MEMORY[0x2822009F8](sub_217594F4C, 0, 0);
}

uint64_t sub_217594F4C()
{
  v1 = *(v0 + 51);
  v2 = *(v0 + 50);
  v3 = *(v0 + 24);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  *(v0 + 48) = v2;
  *(v0 + 49) = v1;
  OUTLINED_FUNCTION_2_89(v5);
  v10 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  *v7 = v0;
  v7[1] = sub_21759509C;
  v8 = *(v0 + 16);

  return v10(v8, v0 + 48, v0 + 49, v4, v5);
}

uint64_t sub_21759509C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  *(v4 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2175951C8, 0, 0);
  }

  else
  {
    v5 = *(v2 + 8);

    return v5();
  }
}

uint64_t AnyMusicCatalogSearchExtendedResults.hashValue.getter()
{
  sub_2177531E8();
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 56))(v4, v1, v2);
  return sub_217753238();
}

uint64_t sub_2175952BC(uint64_t a1)
{
  sub_2177531E8();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 56))(v5, v2, v3);
  return sub_217753238();
}

uint64_t sub_217595358(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2172AC7B0;

  return AnyMusicCatalogSearchExtendedResults.libraryMapped(policy:scope:)(a1, a2, a3);
}

uint64_t sub_217595418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_217595818(a1, a2, a3);

  return MusicCatalogSearchExtendedResults<>.isEqual<A>(to:)(a1, a3, a2, v6, v7);
}

uint64_t sub_2175954A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24290, &unk_21775D550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL static MusicCatalogSearchRawExtendedResults.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_2175954A0(a1, v7);
  sub_2175954A0(a2, v9);
  if (v8)
  {
    sub_2175954A0(v7, v6);
    if (v9[2])
    {
      memcpy(v5, v9, sizeof(v5));
      v3 = sub_2172DE0E8(v6, v5);
      sub_2171F06D8(v5, &qword_27CB24298, &qword_21777CD60);
      sub_2171F06D8(v6, &qword_27CB24298, &qword_21777CD60);
      sub_2171F06D8(v7, &qword_27CB24290, &unk_21775D550);
      return (v3 & 1) != 0;
    }

    sub_2171F06D8(v6, &qword_27CB24298, &qword_21777CD60);
  }

  else if (!v9[2])
  {
    sub_2171F06D8(v7, &qword_27CB24290, &unk_21775D550);
    return 1;
  }

  sub_2171F06D8(v7, &qword_27CB26208, &qword_21777EF20);
  return 0;
}

uint64_t MusicCatalogSearchRawExtendedResults.hash(into:)(uint64_t a1)
{
  sub_2175954A0(v1, __src);
  if (!__src[2])
  {
    return sub_217753208();
  }

  memcpy(v4, __src, sizeof(v4));
  sub_217753208();
  sub_2172DE7FC(a1);
  return sub_2171F06D8(v4, &qword_27CB24298, &qword_21777CD60);
}

uint64_t MusicCatalogSearchRawExtendedResults.hashValue.getter()
{
  sub_2177531E8();
  sub_2175954A0(v0, __src);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE7FC(v4);
    sub_2171F06D8(__dst, &qword_27CB24298, &qword_21777CD60);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

uint64_t sub_21759577C(uint64_t a1)
{
  sub_2177531E8();
  sub_2175954A0(v1, __src);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE7FC(v5);
    sub_2171F06D8(__dst, &qword_27CB24298, &qword_21777CD60);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

unint64_t sub_217595818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29EF0;
  if (!qword_27CB29EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29EF0);
  }

  return result;
}

unint64_t sub_217595870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29EF8;
  if (!qword_27CB29EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29EF8);
  }

  return result;
}

uint64_t dispatch thunk of MusicCatalogSearchExtendedResults.libraryMapped(policy:scope:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_2_89(a5);
  v14 = (v11 + *v11);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_2172AC7B0;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t get_enum_tag_for_layout_string_8MusicKit23CloudResourceCollectionVyAA0cD0VyAA0C10RawCuratorOGGSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t CloudAttribute<A>.convertToArtworkGradient()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 1);
  v7 = v1[4];
  v6 = v1[5];
  v8 = *(v1 + 48);
  v9 = v1[7];
  v10 = *(v1 + 64);
  v11 = v1[9];
  if (v7)
  {
    v18 = v1[7];
    v19 = v1[5];
    v20 = *(v1 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D00, &qword_2177597B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217758490;
    *(inited + 32) = v3;
    v13 = (inited + 32);
    *(inited + 40) = v4;
    *(inited + 48) = v20;
    *(inited + 56) = 0x3FF0000000000000;
    v14 = qword_280BE76A0;
    sub_217751DE8();
    if (v14 != -1)
    {
      swift_once();
    }

    if (qword_280C023C0)
    {
      v15 = CGColorCreate(qword_280C023C0, v13);
    }

    else
    {

      v15 = 0;
    }

    v16 = 0;
    v5 = v20;
    v9 = v18;
    v6 = v19;
  }

  else
  {
    v15 = 0;
    v16 = v8 & v10;
  }

  *a1 = v15;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  *(a1 + 33) = v16;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 72) = v7;
  *(a1 + 80) = v11;
  sub_217751DE8();
  return sub_217751DE8();
}

__n128 CloudArtwork.Gradient.init(color:y1:y2:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = *(a1 + 32);
  result = *a1;
  v8 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v8;
  *(a6 + 32) = v6;
  *(a6 + 40) = a2;
  *(a6 + 48) = a3 & 1;
  *(a6 + 56) = a4;
  *(a6 + 64) = a5 & 1;
  return result;
}

uint64_t static CloudArtwork.Gradient.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  if (v2)
  {
    if (v7)
    {
      if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
      {
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRelease_n();
        return 0;
      }

      v15 = *(a1 + 24) == *(a2 + 24) && v2 == v7;
      if (!v15 && (sub_217753058() & 1) == 0)
      {
        return 0;
      }

      if (v4)
      {
        goto LABEL_20;
      }

LABEL_23:
      if (v3 == v8)
      {
        v16 = v9;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        return 0;
      }

      goto LABEL_27;
    }

LABEL_12:
    sub_217751DE8();

    return 0;
  }

  if (v7)
  {
    goto LABEL_12;
  }

  if ((v4 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  if (!v9)
  {
    return 0;
  }

LABEL_27:
  if (v6)
  {
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == v10)
    {
      v17 = v11;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_217595DB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 12665 && a2 == 0xE200000000000000;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 12921 && a2 == 0xE200000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_217753058();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_217595EB4(char a1)
{
  if (!a1)
  {
    return 0x726F6C6F63;
  }

  if (a1 == 1)
  {
    return 12665;
  }

  return 12921;
}

uint64_t sub_217595EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217595DB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217595F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21759617C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217595F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21759617C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CloudArtwork.Gradient.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29F00, &qword_21777CFB8);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v22 - v9;
  v12 = *(v3 + 4);
  v11 = *(v3 + 5);
  v28 = *(v3 + 48);
  v23 = *(v3 + 7);
  v24 = v11;
  v22[1] = *(v3 + 64);
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21759617C(v13, v14, v15);
  sub_217751DE8();
  v16 = sub_2177532F8();
  v17 = *v3;
  v26 = v3[1];
  v25 = v17;
  v27 = v12;
  v29 = 0;
  sub_2172A9724(v16, v18, v19);
  sub_217752F38();

  if (!v2)
  {
    LOBYTE(v25) = 1;
    sub_217752F18();
    LOBYTE(v25) = 2;
    sub_217752F18();
  }

  return (*(v7 + 8))(v10, v5, v20);
}

unint64_t sub_21759617C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE50E0;
  if (!qword_280BE50E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE50E0);
  }

  return result;
}

uint64_t CloudArtwork.Gradient.hash(into:)()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  sub_21726519C();
  if (v2 != 1)
  {
    sub_217753208();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v1;
    }

    else
    {
      v7 = 0;
    }

    MEMORY[0x21CEA3580](v7);
    if (!v4)
    {
      goto LABEL_3;
    }

    return sub_217753208();
  }

  sub_217753208();
  if (v4)
  {
    return sub_217753208();
  }

LABEL_3:
  sub_217753208();
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  return MEMORY[0x21CEA3580](v5);
}

uint64_t CloudArtwork.Gradient.hashValue.getter()
{
  sub_2177531E8();
  CloudArtwork.Gradient.hash(into:)();
  return sub_217753238();
}

uint64_t CloudArtwork.Gradient.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29F08, &qword_21777CFC0);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21759617C(v11, v12, v13);
  v14 = sub_2177532C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(__src[0]) = 0;
  sub_2172A9B6C(v14, v15, v16);
  sub_217752E58();
  v34 = v38;
  v18 = v40;
  v17 = v41;
  v35 = v39;
  v36 = v42;
  LOBYTE(v38) = 1;
  v33 = sub_217752E38();
  v31 = v17;
  v32 = v18;
  v48 = v19 & 1;
  v49 = 2;
  v20 = sub_217752E38();
  v22 = v21;
  v23 = v20;
  (*(v7 + 8))(v10, v5);
  v22 &= 1u;
  v47 = v22;
  v24 = v34;
  v25 = v36;
  __src[0] = v34;
  __src[1] = v35;
  v26 = v32;
  v27 = v31;
  __src[2] = v32;
  __src[3] = v31;
  __src[4] = v36;
  __src[5] = v33;
  v30 = v48;
  LOBYTE(__src[6]) = v48;
  __src[7] = v23;
  LOBYTE(__src[8]) = v22;
  memcpy(a2, __src, 0x41uLL);
  sub_217596694(__src, &v38);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v38 = v24;
  v39 = v35;
  v40 = v26;
  v41 = v27;
  v42 = v25;
  v43 = v33;
  v44 = v30;
  v45 = v23;
  v46 = v22;
  return sub_2175966CC(&v38);
}

uint64_t sub_2175965B0(uint64_t a1)
{
  sub_2177531E8();
  CloudArtwork.Gradient.hash(into:)();
  return sub_217753238();
}

uint64_t Artwork._Gradient.convertToCloudArtworkGradientAttribute()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 24);
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v3 = *(v1 + 16);
  v9 = *(v1 + 32);
  v7 = *(v1 + 56);
  *a1 = *(v1 + 40);
  *(a1 + 16) = v7;
  *(a1 + 32) = v5;
  *(a1 + 40) = v2;
  *(a1 + 48) = v3;
  *(a1 + 56) = v4;
  *(a1 + 64) = v9;
  *(a1 + 72) = v6;
  sub_217751DE8();

  return sub_217751DE8();
}

unint64_t sub_217596700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29F10;
  if (!qword_27CB29F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29F10);
  }

  return result;
}

uint64_t sub_21759675C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 65))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2175967B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

_BYTE *_s8GradientV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_217596908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29F18;
  if (!qword_27CB29F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29F18);
  }

  return result;
}

unint64_t sub_217596960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE50D0;
  if (!qword_280BE50D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE50D0);
  }

  return result;
}

unint64_t sub_2175969B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE50D8;
  if (!qword_280BE50D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE50D8);
  }

  return result;
}

uint64_t CloudArtwork.TextGradient.convertToArtworkTextGradient()@<X0>(CGColorRef *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v7 = v1[3];
  v6 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v12 = v1[8];
  v11 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D00, &qword_2177597B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217758490;
  *(inited + 32) = v3;
  v14 = (inited + 32);
  *(inited + 40) = v4;
  *(inited + 48) = v5;
  *(inited + 56) = 0x3FF0000000000000;
  v15 = qword_280BE76A0;
  sub_217751DE8();
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_280C023C0;
  if (qword_280C023C0)
  {
    v17 = CGColorCreate(qword_280C023C0, v14);
  }

  else
  {

    v17 = 0;
  }

  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_217758490;
  *(v18 + 32) = v8;
  v19 = (v18 + 32);
  *(v18 + 40) = v9;
  *(v18 + 48) = v10;
  *(v18 + 56) = 0x3FF0000000000000;
  sub_217751DE8();
  if (v16)
  {
    v16 = CGColorCreate(v16, v19);
  }

  *a1 = v17;
  a1[1] = v16;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v7;
  a1[6] = v6;
  a1[7] = v8;
  a1[8] = v9;
  a1[9] = v10;
  a1[10] = v12;
  a1[11] = v11;
  sub_217751DE8();
  return sub_217751DE8();
}

BOOL static CloudArtwork.TextGradient.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v12 = *(a2 + 56);
  v13 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  v14 = *(a2 + 64);
  v15 = *(a2 + 72);
  result = 0;
  if (v13 || (sub_217753058() & 1) != 0)
  {
    v16 = v5 == v10 && v6 == v11;
    if (v16 && v7 == v12)
    {
      v18 = v8 == v14 && v9 == v15;
      if (v18 || (sub_217753058() & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t CloudArtwork.TextGradient.hashValue.getter()
{
  sub_2177531E8();
  Artwork.Color.hash(into:)(v1);
  Artwork.Color.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_217596DEC(uint64_t a1)
{
  sub_2177531E8();
  CloudArtwork.TextGradient.hash(into:)(v2);
  return sub_217753238();
}

uint64_t CloudArtwork.TextGradient.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2177532A8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29F20, &qword_21777D1C8);
    sub_2175972A4(&qword_280BE2340, sub_2172A9B6C, MEMORY[0x277D83978]);
    sub_217753098();
    v5 = *(v17 + 16);
    if (v5 == 2)
    {
      v6 = *(v17 + 48);
      v8 = *(v17 + 56);
      v7 = *(v17 + 64);
      v15 = *(v17 + 72);
      v16 = *(v17 + 32);
      v9 = *(v17 + 88);
      v11 = *(v17 + 96);
      v10 = *(v17 + 104);
      sub_217751DE8();
      sub_217751DE8();

      __swift_destroy_boxed_opaque_existential_1(v18);
      *a2 = v16;
      *(a2 + 16) = v6;
      *(a2 + 24) = v8;
      *(a2 + 32) = v7;
      *(a2 + 40) = v15;
      *(a2 + 56) = v9;
      *(a2 + 64) = v11;
      *(a2 + 72) = v10;
    }

    else
    {

      sub_217752AA8();
      MEMORY[0x21CEA23B0](0xD000000000000059, 0x80000002177B1710);
      v18[8] = v5;
      v12 = sub_217752FC8();
      MEMORY[0x21CEA23B0](v12);

      MEMORY[0x21CEA23B0](0xD000000000000010, 0x80000002177B1770, v13);
      sub_217752B48();
      swift_allocError();
      sub_217752AF8();

      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v18);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CloudArtwork.TextGradient.encode(to:)(void *a1)
{
  v3 = *(v1 + 2);
  v5 = *(v1 + 3);
  v4 = *(v1 + 4);
  v11 = *(v1 + 40);
  v12 = *v1;
  v6 = *(v1 + 7);
  v8 = *(v1 + 8);
  v7 = *(v1 + 9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29F28, &qword_21777D1D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_217759200;
  *(v9 + 32) = v12;
  *(v9 + 48) = v3;
  *(v9 + 56) = v5;
  *(v9 + 64) = v4;
  *(v9 + 72) = v11;
  *(v9 + 88) = v6;
  *(v9 + 96) = v8;
  *(v9 + 104) = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217751DE8();
  sub_217751DE8();
  sub_2177532E8();
  v13[8] = v9;
  __swift_mutable_project_boxed_opaque_existential_1(v13, v13[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29F20, &qword_21777D1C8);
  sub_2175972A4(&qword_27CB29F30, sub_2172A9724, MEMORY[0x277D83948]);
  sub_2177530F8();

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t Artwork._TextGradient.convertToCloudArtworkTextGradient()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
  *(a1 + 40) = *(v1 + 56);
  *(a1 + 56) = v5;
  *(a1 + 64) = v6;
  *(a1 + 72) = v7;
  sub_217751DE8();

  return sub_217751DE8();
}

uint64_t sub_2175972A4(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB29F20, &qword_21777D1C8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217597320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29F38;
  if (!qword_27CB29F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29F38);
  }

  return result;
}

uint64_t sub_21759737C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2175973BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_217597488@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = a1(0);
  a4[4] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
  return sub_2175978D0(v4, boxed_opaque_existential_0, a3);
}

BOOL MusicVideoPropertyProvider.catalogAssetRequiresSubscription.getter()
{
  type metadata accessor for MusicVideoPropertyProvider(0);
  OUTLINED_FUNCTION_0_102();
  v1 = *&v0 & 0x100FFLL;
  return !v2 && v1 == 65539;
}

uint64_t MusicVideoPropertyProvider.catalogAssetRequiresUserUpload.getter()
{
  type metadata accessor for MusicVideoPropertyProvider(0);
  OUTLINED_FUNCTION_0_102();
  v1 = (v0 >> 24) & 1;
  if (v2)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

BOOL MusicVideoPropertyProvider.containsDownloadedOrPurchasedContent.getter()
{
  v1 = type metadata accessor for MusicVideoPropertyProvider(0);
  v2 = *(v0 + *(v1 + 164));
  v3 = v0 + *(v1 + 244);
  if (*(v3 + 80))
  {
    return 1;
  }

  result = *(v3 + 112) != 0;
  if (v2 == 2)
  {
    return 1;
  }

  return result;
}

BOOL MusicVideoPropertyProvider.hasNonPurgeableSubscriptionProtectedLocalAsset.getter()
{
  v1 = (v0 + *(type metadata accessor for MusicVideoPropertyProvider(0) + 92));
  result = 0;
  if (v1[1])
  {
    v2 = *v1;
    if (v2 & 0xFF00) == 0x200 && (v2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_2175978D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_217597944(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 16);
  if (v6)
  {
    v62 = 0;
    v63 = 0xE000000000000000;
    v7 = a5 + 72;
    do
    {
      OUTLINED_FUNCTION_107_10();
      sub_217751DE8();
      sub_217751DE8();
      v8 = sub_217751DE8();
      if (v5)
      {
        v11 = OUTLINED_FUNCTION_181_0();
        v8 = MEMORY[0x21CEA23B0](v11);
      }

      v60 = &type metadata for MusicCatalogSearchSuggestionsResponse.Suggestion;
      if (a3)
      {
        v61 = sub_21759D6B8(v8, v9, v10);
        v12 = swift_allocObject();
        v13 = OUTLINED_FUNCTION_92_14(v12);
        v14 = v13[3];
        v52 = v13[2];
        v56 = 0;
        v57 = 0xE000000000000000;
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_217752AA8();
        OUTLINED_FUNCTION_102();
        MEMORY[0x21CEA23B0]();
        OUTLINED_FUNCTION_95_15();
        OUTLINED_FUNCTION_102();
        MEMORY[0x21CEA23B0]();
        MEMORY[0x21CEA23B0](v52, v14);
        v15 = 2689570;
        v16 = 0xE300000000000000;
      }

      else
      {
        v61 = sub_21759D664(v8, v9, v10);
        v17 = swift_allocObject();
        v18 = OUTLINED_FUNCTION_92_14(v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        v22 = v18[3];
        v56 = 0;
        v57 = 0xE000000000000000;
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_217752AA8();
        OUTLINED_FUNCTION_102();
        MEMORY[0x21CEA23B0]();
        MEMORY[0x21CEA23B0](v19, v20);
        OUTLINED_FUNCTION_102();
        MEMORY[0x21CEA23B0](0xD000000000000010);
        MEMORY[0x21CEA23B0](v21, v22);
        v15 = 10530;
        v16 = 0xE200000000000000;
      }

      MEMORY[0x21CEA23B0](v15, v16);
      __swift_destroy_boxed_opaque_existential_1(&v58);
      v58 = 10;
      v59 = 0xE100000000000000;
      MEMORY[0x21CEA23B0](v56, v57);

      v5 = &v62;
      MEMORY[0x21CEA23B0](v58, v59, v23);

      v7 += 48;
      --v6;
    }

    while (v6);
    v24 = v62;
    v25 = v63;
    v26 = HIBYTE(v63) & 0xF;
    if ((v63 & 0x2000000000000000) == 0)
    {
      v26 = v62 & 0xFFFFFFFFFFFFLL;
    }

    if (v26)
    {
      OUTLINED_FUNCTION_4_6();
      if (v27)
      {
        v28 = OUTLINED_FUNCTION_181_0();
        MEMORY[0x21CEA23B0](v28);
      }

      OUTLINED_FUNCTION_20_35();
      v58 = v29;
      v59 = v30;
      MEMORY[0x21CEA23B0](a1, a2);
      OUTLINED_FUNCTION_45_29();
      v56 = v24;
      v57 = v25;
      OUTLINED_FUNCTION_50_23();
      v55[0] = v31;
      v55[1] = v32;
      OUTLINED_FUNCTION_8_57();
      v54[0] = v33;
      v54[1] = v34;
      sub_21733A5C8(v35, v36, v37);
      OUTLINED_FUNCTION_57_19();
      v44 = OUTLINED_FUNCTION_14_0(v55, v54, v38, v39, v40, v41, v42, v43, v49);
      v46 = v45;

      MEMORY[0x21CEA23B0](v44, v46, v47);

      OUTLINED_FUNCTION_43_22();
      MEMORY[0x21CEA23B0](v58, v59);
    }
  }

  return result;
}

void sub_217597CE0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_92();
  if (v4)
  {
    OUTLINED_FUNCTION_31_32();
    v0 = *(v0 + 56);
  }

  if (!*(v0 + 16))
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_16_51();
  OUTLINED_FUNCTION_52_23(v5, v189);
  OUTLINED_FUNCTION_51_20(v189);
  LOBYTE(v6) = v189[0];
  v7 = BYTE8(v189[0]);
  v8 = OUTLINED_FUNCTION_154();
  v10 = sub_217283C5C(v8, v9);
  OUTLINED_FUNCTION_66_16(v10, v11, v12, v13, v14, v15, v16, v17, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v150, v155, v159, v164, v168, v169, v170, v171, *v172, *&v172[8], *&v172[16], *&v172[24], v173, v174, v175, v176, *v177, *&v177[8], *&v177[16], *&v177[24], v178, v179, v180, v181, v182, *(&v182 + 1), v183, v184, v185, v186, v187, v188);
  OUTLINED_FUNCTION_7_58();
  v18 = v193;
  v19 = &qword_27CB248B8;
  if (!v193)
  {
    goto LABEL_8;
  }

LABEL_6:
  OUTLINED_FUNCTION_6();
  swift_beginAccess();
  OUTLINED_FUNCTION_29_34();
  if (v4)
  {
LABEL_26:
    sub_2171F0738(&v192, &qword_27CB29F60, &qword_21777D6B8);
    OUTLINED_FUNCTION_9_51();
    if (v85)
    {
      OUTLINED_FUNCTION_0_103();
      if (v86)
      {
        v87 = OUTLINED_FUNCTION_181_0();
        MEMORY[0x21CEA23B0](v87);
      }

      OUTLINED_FUNCTION_5_67();
      MEMORY[0x21CEA23B0](v127, v132);
      OUTLINED_FUNCTION_45_29();
      *&v189[0] = &qword_27CB248B8;
      *(&v189[0] + 1) = &qword_217771D80;
      OUTLINED_FUNCTION_2_90();
      v178 = v88;
      v179 = v89;
      sub_21733A5C8(v90, v91, v92);
      OUTLINED_FUNCTION_27_38();
      OUTLINED_FUNCTION_14_0(v93, v94, v95, v96, v97, v98, v99, v100, v102);
      OUTLINED_FUNCTION_46_25();

      OUTLINED_FUNCTION_59_18();

      OUTLINED_FUNCTION_43_22();
      OUTLINED_FUNCTION_58_19();
    }

LABEL_31:
    OUTLINED_FUNCTION_13();
    return;
  }

  OUTLINED_FUNCTION_37_28();
  v20 = sub_217294390();
  while (1)
  {
    OUTLINED_FUNCTION_19_30(v20, v21, v22, v23, v24, v25, v26, v27, v102, v107, v112, v117, v122, v127, v132, v137, v142, *(&v142 + 1), v151, *(&v151 + 1), v160, *(&v160 + 1), v168, v169, v170, v171, *v172, *&v172[8], *&v172[16], *&v172[24], v173, v174, v175, v176, *v177, *&v177[8], *&v177[16], *&v177[24], v178, v179, v180, v181, v182);
    v75 = OUTLINED_FUNCTION_71_17();
    if (v18)
    {
      sub_21725CF00(v75, 1);
      if (v3)
      {
        goto LABEL_34;
      }
    }

    else
    {
      sub_21725CF00(v75, 0);
      if (v3)
      {
        goto LABEL_33;
      }
    }

    v194 = v7;
    v189[0] = v160;
    v189[1] = v151;
    v189[2] = v142;
    v190 = v19;
    v191 = v6;
    OUTLINED_FUNCTION_4_6();
    if (v79)
    {
      v6 = &v195;
      v80 = OUTLINED_FUNCTION_181_0();
      v76 = MEMORY[0x21CEA23B0](v80);
    }

    v171 = &type metadata for MusicCatalogSearchResponse.TopResult;
    if (v1)
    {
      *v172 = sub_21759CD54(v76, v77, v78);
      OUTLINED_FUNCTION_203_0();
      swift_allocObject();
      OUTLINED_FUNCTION_26_32();
      sub_217283E1C(v81, v82);
      OUTLINED_FUNCTION_160(&v168, v171);
      MusicCatalogSearchResponse.TopResult.debugDescription.getter();
    }

    else
    {
      *v172 = sub_21759CD00(v76, v77, v78);
      OUTLINED_FUNCTION_203_0();
      swift_allocObject();
      OUTLINED_FUNCTION_26_32();
      sub_217283E1C(v83, v84);
      OUTLINED_FUNCTION_160(&v168, v171);
      MusicCatalogSearchResponse.TopResult.description.getter();
    }

    OUTLINED_FUNCTION_46_25();
    __swift_destroy_boxed_opaque_existential_1(&v168);
    OUTLINED_FUNCTION_15_48();

    OUTLINED_FUNCTION_60_24();

    sub_217283E78(v189);
    OUTLINED_FUNCTION_68_19();
    v19 = &qword_27CB248B8;
    if (v18)
    {
      goto LABEL_6;
    }

LABEL_8:
    OUTLINED_FUNCTION_64_21();
    if (v4)
    {
      goto LABEL_26;
    }

    if ((v2 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v2 >= v36)
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_78_14(v28, v29, v30, v31, v32, v33, v34, v35, v102, v107, v112, v117, v122, v127, v132, v137, v142, *(&v142 + 1), v151, *(&v151 + 1), v160, *(&v160 + 1), v168, v169, v170, v171, *v172, *&v172[8], *&v172[16], *&v172[24], v173, v174, v175, v176, *v177, *&v177[8], *&v177[16], *&v177[24], v178, v179, v180, v181, v182, *(&v182 + 1), v183, v184, v185, v186, v187, v188);
    OUTLINED_FUNCTION_70_17();
    sub_2171F5110(v37, v38, v39, &qword_217771D80);
    if (v172[25])
    {
      v19 = v168;
      v6 = v168[2];
      v7 = v168[3];
      v3 = v168[4];
      OUTLINED_FUNCTION_38_26();
      v40 = OUTLINED_FUNCTION_55_21();
      sub_2172921E8(v42, v40, v41);

      v43 = sub_2171F0738(v189, &qword_27CB248B8, &qword_217771D80);
    }

    else
    {
      v51 = sub_217751DE8();
      v59 = OUTLINED_FUNCTION_66_16(v51, v52, v53, v54, v55, v56, v57, v58, v103, v108, v113, v118, v123, v128, v133, v138, v143, v147, v152, v156, v161, v165, v168, v169, v170, v171, *v172, *&v172[8], *&v172[16], *&v172[24], v173, v174, v175, v176, *v177, *&v177[8], *&v177[16], *&v177[24], v178, v179, v180, v181, v182, *(&v182 + 1), v183, v184, v185, v186, v187, v188);
      OUTLINED_FUNCTION_18_43(v59, v60, v61, v62, v63, v64, v65, v66, v104, v109, v114, v119, v124, v129, v134, v139, v144, v148, v153, v157, v162, v166, v168, v169, v170, v171, *v172);
      *&v177[9] = *&v172[9];
    }

    OUTLINED_FUNCTION_28_38(v43, v44, v45, v46, v47, v48, v49, v50, v103, v108, v113, v118, v123, v128, v133, v138, v143, v147, v152, v156, v161, v165, v168, v169, v170, v171, *v172, *&v172[8], *&v172[16], *&v172[24], v173, v174, v175, v176, *v177);
    OUTLINED_FUNCTION_89_16(v67, v68, v69, v70, v71, v72, v73, v74, v105, v110, v115, v120, v125, v130, v135, v140, v145, v149, v154, v158, v163, v167, v168, v169, v170, v171, *v172, *&v172[8], *&v172[16], *&v172[24], v173, v174, v175, v176, *v177, *&v177[8], *&v177[16], v177[24]);
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_217597FF4()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v77 = v3;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24978, &qword_21776DBA0);
  v74 = *(v8 - 8);
  v75 = v8;
  MEMORY[0x28223BE20](v8);
  v73 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v76 = &v69 - v11;
  v80 = type metadata accessor for MusicPersonalRecommendation(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v12);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v69 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B58, &unk_21775A2A0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v69 - v19;
  v21 = *v0;
  if (*(v0 + 8) == 1)
  {
    OUTLINED_FUNCTION_6();
    swift_beginAccess();
    v21 = *(v21 + 56);
  }

  if (!*(v21 + 16))
  {
    goto LABEL_35;
  }

  v70 = v7;
  v71 = v5;
  v72 = v2;
  v90 = 0;
  v91 = 0xE000000000000000;
  sub_2171F5110(v0, &v83, &qword_27CB28678, &qword_21776DEA0);
  sub_2171F5110(&v83, &v87, &qword_27CB28678, &qword_21776DEA0);
  v22 = v83;
  v23 = v84;
  sub_217283C5C(v83, v84);
  sub_2171F0738(&v83, &qword_27CB28678, &qword_21776DEA0);
  sub_21725CF00(v22, v23);
  v24 = 0;
  v89 = 0;
  v25 = v87;
  v79 = v88;
  v26 = v73;
  for (i = v17; ; v17 = i)
  {
    if (v79)
    {
      OUTLINED_FUNCTION_6();
      swift_beginAccess();
      if (v24 == *(*(v25 + 56) + 16))
      {
        break;
      }

      sub_2172943A8(v24, v17);
      goto LABEL_15;
    }

    v27 = *(v25 + 16);
    if (v24 == v27)
    {
      break;
    }

    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      return;
    }

    if (v24 >= v27)
    {
      goto LABEL_39;
    }

    v28 = v76;
    sub_2171F5110(v25 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v24, v76, &qword_27CB24978, &qword_21776DBA0);
    sub_2171F5110(v28, v26, &qword_27CB24978, &qword_21776DBA0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v29 = OUTLINED_FUNCTION_84_11();
      sub_217283C5C(v29, v30);
      sub_217751DE8();

      v26 = v73;
      sub_217292370(i);

      v17 = i;
    }

    else
    {
      sub_21729C84C(v26, v17);
      v31 = OUTLINED_FUNCTION_84_11();
      sub_217283C5C(v31, v32);
    }

    sub_2171F0738(v76, &qword_27CB24978, &qword_21776DBA0);
LABEL_15:
    sub_21729C84C(v17, v20);
    v33 = __OFADD__(v24, 1);
    if (v79)
    {
      sub_21725CF00(v25, 1);
      if (v33)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v34 = OUTLINED_FUNCTION_84_11();
      sub_21725CF00(v34, v35);
      if (v33)
      {
        goto LABEL_37;
      }
    }

    v89 = v24 + 1;
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v80);
    sub_21729C84C(v20, v14);
    OUTLINED_FUNCTION_4_6();
    if (v36)
    {
      v37 = OUTLINED_FUNCTION_181_0();
      MEMORY[0x21CEA23B0](v37);
    }

    v85 = v80;
    if (v77)
    {
      v86 = sub_21759D620(&qword_27CB2A068, &protocol conformance descriptor for MusicPersonalRecommendation);
      v38 = __swift_allocate_boxed_opaque_existential_0(&v83);
      sub_21759D560(v14, v38);
      OUTLINED_FUNCTION_160(&v83, v85);
      v39 = 1;
    }

    else
    {
      v86 = sub_21759D620(&qword_27CB2A060, &protocol conformance descriptor for MusicPersonalRecommendation);
      v40 = __swift_allocate_boxed_opaque_existential_0(&v83);
      sub_21759D560(v14, v40);
      OUTLINED_FUNCTION_160(&v83, v85);
      v39 = 0;
    }

    sub_21756F5BC(v39);
    v42 = v41;
    v44 = v43;
    __swift_destroy_boxed_opaque_existential_1(&v83);
    v83 = 10;
    v84 = 0xE100000000000000;
    MEMORY[0x21CEA23B0](v42, v44);

    MEMORY[0x21CEA23B0](v83, v84, v45);

    sub_21759D5C4(v14);
    ++v24;
  }

  sub_2171F0738(&v87, &qword_27CB29710, &qword_21777D6E0);
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v80);
  v47 = v90;
  v46 = v91;
  v48 = HIBYTE(v91) & 0xF;
  if ((v91 & 0x2000000000000000) == 0)
  {
    v48 = v90 & 0xFFFFFFFFFFFFLL;
  }

  if (v48)
  {
    OUTLINED_FUNCTION_4_6();
    if (v49)
    {
      v50 = OUTLINED_FUNCTION_181_0();
      MEMORY[0x21CEA23B0](v50);
    }

    OUTLINED_FUNCTION_5_67();
    MEMORY[0x21CEA23B0](v70, v71);
    OUTLINED_FUNCTION_45_29();
    v83 = v47;
    v84 = v46;
    OUTLINED_FUNCTION_50_23();
    v82[0] = v51;
    v82[1] = v52;
    OUTLINED_FUNCTION_8_57();
    v81[0] = v53;
    v81[1] = v54;
    sub_21733A5C8(v55, v56, v57);
    OUTLINED_FUNCTION_57_19();
    v64 = OUTLINED_FUNCTION_14_0(v82, v81, v58, v59, v60, v61, v62, v63, v68);
    v66 = v65;

    MEMORY[0x21CEA23B0](v64, v66, v67);

    OUTLINED_FUNCTION_43_22();
    MEMORY[0x21CEA23B0](v87, v88);
  }

LABEL_35:
  OUTLINED_FUNCTION_13();
}

double sub_217598628(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, double result)
{
  v6 = *(a5 + 16);
  if (v6)
  {
    v49 = 0;
    v50 = 0xE000000000000000;
    v7 = (a5 + 56);
    do
    {
      v9 = *(v7 - 3);
      v8 = *(v7 - 2);
      v10 = *(v7 - 1);
      v11 = *v7;
      if ((v50 & 0x2000000000000000) != 0)
      {
        v12 = HIBYTE(v50) & 0xF;
      }

      else
      {
        v12 = v49 & 0xFFFFFFFFFFFFLL;
      }

      v13 = sub_217751DE8();
      if (v12)
      {
        v13 = MEMORY[0x21CEA23B0](44, 0xE100000000000000);
      }

      v47 = &type metadata for MusicItemTypeValue;
      if (a3)
      {
        v48 = sub_21759D464(v13, v14, v15);
        v16 = swift_allocObject();
        v45 = v16;
        v16[2] = v9;
        v16[3] = v8;
        v16[4] = v10;
        v16[5] = v11;
        __swift_project_boxed_opaque_existential_1(&v45, &type metadata for MusicItemTypeValue);
        sub_217751DE8();
        v17 = MusicItemTypeValue.debugDescription.getter();
        v19 = v18;
      }

      else
      {
        v48 = sub_21759D410(v13, v14, v15);
        v20 = swift_allocObject();
        v45 = v20;
        v20[2] = v9;
        v20[3] = v8;
        v20[4] = v10;
        v20[5] = v11;
        __swift_project_boxed_opaque_existential_1(&v45, &type metadata for MusicItemTypeValue);
        sub_217751DE8();
        sub_217751DE8();
        sub_217285954(1);
        v21 = sub_217752918();
        v23 = v22;

        MEMORY[0x21CEA23B0](v21, v23, v24);

        sub_217751DE8();
        v44 = sub_2172857F8(1uLL);
        sub_217285A70(v44, v25, v26);
        sub_217752048();

        v17 = 46;
        v19 = 0xE100000000000000;
      }

      __swift_destroy_boxed_opaque_existential_1(&v45);
      v45 = 10;
      v46 = 0xE100000000000000;
      MEMORY[0x21CEA23B0](v17, v19);

      MEMORY[0x21CEA23B0](v45, v46, v27);

      v7 += 4;
      --v6;
    }

    while (v6);
    v29 = HIBYTE(v50) & 0xF;
    if ((v50 & 0x2000000000000000) == 0)
    {
      v29 = v49 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {
      v30 = a4[1];
      v31 = *a4 & 0xFFFFFFFFFFFFLL;
      if ((v30 & 0x2000000000000000) != 0)
      {
        v31 = HIBYTE(v30) & 0xF;
      }

      if (v31)
      {
        MEMORY[0x21CEA23B0](44, 0xE100000000000000, v28);
      }

      v45 = 2105354;
      v46 = 0xE300000000000000;
      MEMORY[0x21CEA23B0](a1, a2, v28);
      v32 = MEMORY[0x21CEA23B0](5972026, 0xE300000000000000);
      sub_21733A5C8(v32, v33, v34);
      v35 = sub_217752998();
      v37 = v36;

      MEMORY[0x21CEA23B0](v35, v37, v38);

      MEMORY[0x21CEA23B0](1562386442, 0xE400000000000000, v39);
      MEMORY[0x21CEA23B0](v45, v46);
    }
  }

  return result;
}

void sub_21759899C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_92();
  if (v4)
  {
    OUTLINED_FUNCTION_31_32();
    v0 = *(v0 + 56);
  }

  if (!*(v0 + 16))
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_16_51();
  v5 = &qword_27CB25388;
  OUTLINED_FUNCTION_52_23(v6, v120);
  OUTLINED_FUNCTION_51_20(v120);
  v7 = BYTE8(v120[0]);
  v8 = OUTLINED_FUNCTION_154();
  sub_217283C5C(v8, v9);
  OUTLINED_FUNCTION_79_17(v120);
  OUTLINED_FUNCTION_7_58();
  v10 = v123;
  if (!v123)
  {
    goto LABEL_8;
  }

LABEL_6:
  OUTLINED_FUNCTION_6();
  swift_beginAccess();
  OUTLINED_FUNCTION_29_34();
  if (v4)
  {
LABEL_26:
    sub_2171F0738(&v122, &qword_27CB276B0, &unk_21777D6C0);
    OUTLINED_FUNCTION_9_51();
    if (v60)
    {
      OUTLINED_FUNCTION_0_103();
      if (v61)
      {
        v62 = OUTLINED_FUNCTION_181_0();
        MEMORY[0x21CEA23B0](v62);
      }

      OUTLINED_FUNCTION_5_67();
      MEMORY[0x21CEA23B0](v86, v88);
      OUTLINED_FUNCTION_45_29();
      *&v120[0] = v5;
      *(&v120[0] + 1) = &unk_282970F70;
      OUTLINED_FUNCTION_2_90();
      v115 = v63;
      v116 = v64;
      sub_21733A5C8(v65, v66, v67);
      OUTLINED_FUNCTION_27_38();
      OUTLINED_FUNCTION_14_0(v68, v69, v70, v71, v72, v73, v74, v75, v76);
      OUTLINED_FUNCTION_46_25();

      OUTLINED_FUNCTION_59_18();

      OUTLINED_FUNCTION_43_22();
      OUTLINED_FUNCTION_58_19();
    }

LABEL_31:
    OUTLINED_FUNCTION_13();
    return;
  }

  OUTLINED_FUNCTION_37_28();
  for (i = sub_217294574(); ; i = sub_2171F0738(v39, &unk_27CB276C0, &qword_217758A00))
  {
    OUTLINED_FUNCTION_19_30(i, v12, v13, v14, v15, v16, v17, v18, v76, v78, v80, v82, v84, v86, v88, v90, v92, *(&v92 + 1), v95, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, *(&v112 + 1), v113, v114, v115, v116, v117, v118, v119);
    v40 = OUTLINED_FUNCTION_41_27();
    if (v10)
    {
      sub_21725CF00(v40, 1);
      if (v7)
      {
        goto LABEL_34;
      }
    }

    else
    {
      sub_21725CF00(v40, 0);
      if (v7)
      {
        goto LABEL_33;
      }
    }

    v49 = OUTLINED_FUNCTION_73_16(v41, v42, v43, v44, v45, v46, v47, v48, v77, v79, v81, v83, v85, v87, v89, v91, v93, v94, v96);
    v120[0] = v50;
    v120[1] = v49;
    v120[2] = v92;
    v121 = v5;
    OUTLINED_FUNCTION_4_6();
    if (v54)
    {
      v55 = OUTLINED_FUNCTION_181_0();
      v51 = MEMORY[0x21CEA23B0](v55);
    }

    v103 = &type metadata for Album;
    if (v1)
    {
      sub_21759CDFC(v51, v52, v53);
      OUTLINED_FUNCTION_32_33();
      OUTLINED_FUNCTION_25_42();
      sub_21725CF0C(v56, v57);
      OUTLINED_FUNCTION_160(&v100, v103);
      Album.debugDescription.getter();
    }

    else
    {
      sub_21759CDA8(v51, v52, v53);
      OUTLINED_FUNCTION_32_33();
      OUTLINED_FUNCTION_25_42();
      sub_21725CF0C(v58, v59);
      OUTLINED_FUNCTION_160(&v100, v103);
      Album.description.getter();
    }

    OUTLINED_FUNCTION_46_25();
    __swift_destroy_boxed_opaque_existential_1(&v100);
    OUTLINED_FUNCTION_15_48();

    OUTLINED_FUNCTION_60_24();

    sub_21725CE44(v120);
    OUTLINED_FUNCTION_68_19();
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_8:
    OUTLINED_FUNCTION_64_21();
    if (v4)
    {
      goto LABEL_26;
    }

    if ((v2 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v2 >= v19)
    {
      goto LABEL_35;
    }

    v5 = &unk_27CB276C0;
    sub_2171F5110(v3, v120, &unk_27CB276C0, &qword_217758A00);
    OUTLINED_FUNCTION_70_17();
    sub_2171F5110(v20, v21, v22, &qword_217758A00);
    if (v107)
    {
      OUTLINED_FUNCTION_11_55();

      v23 = OUTLINED_FUNCTION_6_66();
      sub_217292A88(v23, v24, v25, v26, v27, v28, v29, v30, v76, v78, v80, v82, v84, v86, v88, v90, v92, *(&v92 + 1), v95, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, *(&v112 + 1), v113, v114);
    }

    else
    {
      OUTLINED_FUNCTION_10_47();
      v31 = sub_217751DE8();
    }

    OUTLINED_FUNCTION_28_38(v31, v32, v33, v34, v35, v36, v37, v38, v76, v78, v80, v82, v84, v86, v88, v90, v92, *(&v92 + 1), v95, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112);
    OUTLINED_FUNCTION_90_14();
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}