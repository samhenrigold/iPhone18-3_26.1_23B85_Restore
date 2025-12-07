unint64_t Playlist.Entry.Kind.init(from:)@<X0>(_BYTE *a1@<X8>)
{
  v6 = sub_2173ACB6C();
  if (v16)
  {
    if (OUTLINED_FUNCTION_18_61(v2, v3, v4, MEMORY[0x277D83B88], v5, v6))
    {

      goto LABEL_7;
    }
  }

  else
  {
    sub_2171F0738(v15, &qword_27CB2AD40, &qword_2177583F0);
  }

  sub_2173ACB6C();

  if (!v16)
  {
    result = sub_2171F0738(v15, &qword_27CB2AD40, &qword_2177583F0);
    goto LABEL_10;
  }

  result = OUTLINED_FUNCTION_18_61(v7, v8, v9, MEMORY[0x277D83B88], v10, v11);
  if ((result & 1) == 0)
  {
LABEL_10:
    LOBYTE(v13) = 3;
    goto LABEL_11;
  }

LABEL_7:
  result = [objc_opt_self() typeForRawValue_];
  if (result >= 4)
  {
    goto LABEL_10;
  }

  v13 = 0x20103u >> (8 * result);
LABEL_11:
  *a1 = v13;
  return result;
}

uint64_t sub_21770DA64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistEntryPropertyProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Playlist.Entry.convertToLegacyModelStorageDictionary(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2172A4FE4(a1, a2, a3);
  v102 = sub_217751DC8();
  if (qword_280BE66F8 != -1)
  {
    swift_once();
  }

  v3 = sub_2172A46D8();
  if (v4)
  {
    v5 = MEMORY[0x277D837D0];
  }

  else
  {
    v3 = 0;
    v5 = 0;
    v99 = 0;
  }

  v6 = OUTLINED_FUNCTION_13_76(v3, v4, v5);
  sub_21729D67C(v6, 0, v7, v8, v9, v10, v11, v12, v77, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95);
  if (qword_280BE6720 != -1)
  {
    swift_once();
  }

  v13 = sub_2172A46D8();
  if (v14)
  {
    v15 = MEMORY[0x277D837D0];
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v99 = 0;
  }

  v16 = OUTLINED_FUNCTION_13_76(v13, v14, v15);
  sub_21729D67C(v16, 1, v17, v18, v19, v20, v21, v22, v78, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95);
  if (qword_280BE66A8 != -1)
  {
    swift_once();
  }

  v23 = sub_2172A3FC8(qword_280C02030);
  if (v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = v23;
  }

  v100 = MEMORY[0x277D83B88];
  v97 = v31;
  sub_21729D67C(&v97, 2, v24, v25, v26, v27, v28, v29, v79, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95);
  if (qword_280BE66D8 != -1)
  {
    swift_once();
  }

  sub_2176CA244(qword_280BE66E0, v32, v33, v34, v35, v36, v37, v38, v80, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99);
  if (v101 == 255)
  {
    if (qword_280BE66F0 != -1)
    {
      swift_once();
    }

    sub_2176CB120(qword_280C02058, v39, v40, v41, v42, v43, v44, v45, v81, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99);
    if (v91)
    {
      if (sub_2177065AC(v90, 29))
      {
        swift_getObjectType();
        OUTLINED_FUNCTION_3_126();
        v64 = 25;
      }

      else if (sub_2177065AC(v90, 11))
      {
        swift_getObjectType();
        OUTLINED_FUNCTION_3_126();
        v64 = 22;
      }

      else
      {
        swift_getObjectType();
        OUTLINED_FUNCTION_3_126();
        v64 = 24;
      }

      sub_21729D67C(v57, v64, v58, v59, v60, v61, v62, v63, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95);
    }
  }

  else if (v101)
  {
    OUTLINED_FUNCTION_4_134();
    sub_217283AFC(v46, v47);
    sub_2176FDB20();
    v49 = v48;
    v50 = [v48 underlyingObject];

    sub_2177529C8();
    swift_unknownObjectRelease();
    sub_21729D67C(&v83, 24, v51, v52, v53, v54, v55, v56, v81, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95);
    sub_217283B58(&v90);
  }

  else
  {
    OUTLINED_FUNCTION_4_134();
    sub_217283BAC(v65, v66);
    sub_2176FDC3C();
    v68 = v67;
    v69 = [v67 underlyingObject];

    sub_2177529C8();
    swift_unknownObjectRelease();
    sub_21729D67C(&v83, 24, v70, v71, v72, v73, v74, v75, v81, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95);
    sub_217283C08(&v90);
  }

  return v102;
}

void Playlist.Entry.LegacyModelPlaylistEntryItemPropertyKey.init(rawValue:)(char *a3@<X8>)
{
  v4 = sub_217753158();

  v5 = 0;
  v6 = 9;
  switch(v4)
  {
    case 0:
      goto LABEL_23;
    case 1:
      v5 = 1;
      goto LABEL_23;
    case 2:
      v5 = 2;
      goto LABEL_23;
    case 3:
      v5 = 3;
      goto LABEL_23;
    case 4:
      v5 = 4;
      goto LABEL_23;
    case 5:
      v5 = 5;
      goto LABEL_23;
    case 6:
      v5 = 6;
      goto LABEL_23;
    case 7:
      v5 = 7;
      goto LABEL_23;
    case 8:
      v5 = 8;
LABEL_23:
      v6 = v5;
      break;
    case 9:
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    default:
      v6 = 27;
      break;
  }

  *a3 = v6;
}

unint64_t Playlist.Entry.LegacyModelPlaylistEntryItemPropertyKey.rawValue.getter()
{
  result = 0xD000000000000037;
  switch(*v0)
  {
    case 1:
      result = 0xD00000000000002FLL;
      break;
    case 2:
    case 0xE:
    case 0x18:
      result = 0xD000000000000024;
      break;
    case 3:
    case 0x16:
      result = 0xD000000000000025;
      break;
    case 4:
    case 0x14:
    case 0x17:
      result = 0xD000000000000028;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    case 7:
    case 0xA:
      result = 0xD00000000000001BLL;
      break;
    case 8:
    case 0x19:
      result = 0xD000000000000029;
      break;
    case 9:
    case 0x15:
      result = 0xD000000000000023;
      break;
    case 0xB:
      result = 0xD000000000000019;
      break;
    case 0xC:
      result = 0xD00000000000001CLL;
      break;
    case 0xD:
      result = 0xD00000000000002ALL;
      break;
    case 0xF:
    case 0x10:
      result = 0xD00000000000001FLL;
      break;
    case 0x11:
      result = 0xD00000000000001DLL;
      break;
    case 0x12:
      result = 0xD000000000000020;
      break;
    case 0x13:
      result = 0xD00000000000002ELL;
      break;
    case 0x1A:
      result = 0xD000000000000031;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_21770E21C@<X0>(unint64_t *a1@<X8>)
{
  result = Playlist.Entry.LegacyModelPlaylistEntryItemPropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t Playlist.Entry.Kind.init(legacyModelRawValue:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = [objc_opt_self() typeForRawValue_];
  v4 = 0x20103u >> (8 * result);
  if (result >= 4)
  {
    LOBYTE(v4) = 3;
  }

  *a2 = v4;
  return result;
}

Swift::Int __swiftcall Playlist.Entry.Kind.convertToLegacyModelRawValue()()
{
  v1 = qword_21779CA60[*v0];
  v2 = objc_opt_self();

  return [v2 rawValueForType_];
}

uint64_t Playlist.Entry.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

Swift::Int sub_21770E3B8@<X0>(Swift::Int *a1@<X8>)
{
  result = Playlist.Entry.Kind.convertToLegacyModelRawValue()();
  *a1 = result;
  return result;
}

unint64_t sub_21770E3E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE2678;
  if (!qword_280BE2678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2678);
  }

  return result;
}

unint64_t sub_21770E438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2172A4FE4(a1, a2, a3);
  *(a1 + 8) = v4;
  result = sub_21770E468(v4, v5, v6);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21770E468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE2670;
  if (!qword_280BE2670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2670);
  }

  return result;
}

unint64_t sub_21770E4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D770;
  if (!qword_27CB2D770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D770);
  }

  return result;
}

unint64_t sub_21770E518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D778;
  if (!qword_27CB2D778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D778);
  }

  return result;
}

_BYTE *_s39LegacyModelPlaylistEntryItemPropertyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE5)
  {
    v6 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
          *result = a2 + 26;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s4KindOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

double OUTLINED_FUNCTION_14_70()
{
  *(v0 + 2304) = 0;
  result = 0.0;
  *(v0 + 2288) = 0u;
  *(v0 + 2272) = 0u;
  return result;
}

void OUTLINED_FUNCTION_15_69()
{
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 128) = 0;
  *(v0 + 64) = 0;
}

double OUTLINED_FUNCTION_16_74()
{
  result = 0.0;
  *(v0 + 2272) = 0u;
  *(v0 + 2288) = 0u;
  *(v0 + 2304) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_61(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

uint64_t MusicCatalogRequest._response<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[18] = a6;
  v7[19] = v6;
  v7[16] = a4;
  v7[17] = a5;
  v7[14] = a2;
  v7[15] = a3;
  v7[13] = a1;
  v7[20] = *(a3 - 8);
  v7[21] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[22] = AssociatedTypeWitness;
  v7[23] = *(AssociatedTypeWitness - 8);
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  OUTLINED_FUNCTION_9_4();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v7[27] = v9;
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_4_135(v9);

  return v12(v11);
}

uint64_t sub_21770E98C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 224) = v0;

  if (v0)
  {
    v7 = sub_21770F110;
  }

  else
  {
    v7 = sub_21770EA88;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_21770EA88()
{
  v1 = *(v0 + 176);
  (*(*(v0 + 160) + 16))(*(v0 + 168), *(v0 + 152), *(v0 + 120));
  *(v0 + 96) = v1;
  swift_getExtendedExistentialTypeMetadata();
  if (swift_dynamicCast())
  {
    sub_2171F3F0C((v0 + 56), v0 + 16);
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    OUTLINED_FUNCTION_9_4();
    v16 = (v4 + *v4);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v0 + 232) = v5;
    *v5 = v6;
    v5[1] = sub_21770ED1C;
    v7 = *(v0 + 200);
    v8 = *(v0 + 208);

    return v16(v7, v8, v2, v3);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_9_95();
    if (v11(v10))
    {
      v12 = swift_task_alloc();
      *(v0 + 248) = v12;
      OUTLINED_FUNCTION_14_71();
      *v12 = v0;
      OUTLINED_FUNCTION_0_156();

      return _MusicLibraryMappable.libraryMapped()();
    }

    else
    {
      v13 = OUTLINED_FUNCTION_1_141();
      v14(v13, v0 + 56);

      OUTLINED_FUNCTION_20_0();

      return v15();
    }
  }
}

uint64_t sub_21770ED1C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 240) = v0;

  if (v0)
  {
    v7 = sub_21770F188;
  }

  else
  {
    v7 = sub_21770EE18;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_21770EE18()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[22];
  v4 = v0[23];
  (*(v4 + 8))(v2, v3);
  (*(v4 + 32))(v2, v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5 = OUTLINED_FUNCTION_9_95();
  if (v6(v5))
  {
    v7 = swift_task_alloc();
    v0[31] = v7;
    OUTLINED_FUNCTION_14_71();
    *v7 = v0;
    OUTLINED_FUNCTION_0_156();

    return _MusicLibraryMappable.libraryMapped()();
  }

  else
  {
    v9 = OUTLINED_FUNCTION_1_141();
    v10(v9, v2);

    OUTLINED_FUNCTION_20_0();

    return v11();
  }
}

uint64_t sub_21770EF74()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 256) = v0;

  if (v0)
  {
    v7 = sub_21770F218;
  }

  else
  {
    v7 = sub_21770F070;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_21770F070()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_6_110();
  v2(v1);
  v3 = OUTLINED_FUNCTION_1_141();
  v4(v3, v0);

  OUTLINED_FUNCTION_20_0();

  return v5();
}

uint64_t sub_21770F110()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_10_77();

  OUTLINED_FUNCTION_20_0();

  return v0();
}

uint64_t sub_21770F188()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_6_110();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_10_77();

  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_21770F218()
{
  OUTLINED_FUNCTION_30_0();
  v0 = OUTLINED_FUNCTION_6_110();
  v1(v0);
  OUTLINED_FUNCTION_10_77();

  OUTLINED_FUNCTION_20_0();

  return v2();
}

uint64_t dispatch thunk of MusicCatalogRequest.catalogResponse()()
{
  OUTLINED_FUNCTION_9_4();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_135(v1);

  return v4(v3);
}

uint64_t dispatch thunk of MusicCatalogExtendedRequest.extendedCatalogResponse(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(a4 + 16) + **(a4 + 16));
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v4 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_2172849C8;

  return v12(a1, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_14_71()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t static MusicItemTypeValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_217753058();
  }
}

unint64_t MusicItemTypeValue.debugDescription.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_217753348();
  MEMORY[0x21CEA23B0](v3);

  MEMORY[0x21CEA23B0](0x203A65707974, 0xE600000000000000, v4);

  sub_217752AA8();

  strcpy(v8, ", rawValue: ");
  HIWORD(v8[1]) = -4864;
  MEMORY[0x21CEA23B0](v1, v2, v5);
  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  MEMORY[0x21CEA23B0](v8[0], v8[1]);

  MEMORY[0x21CEA23B0](41, 0xE100000000000000, v6);
  return 0xD000000000000013;
}

double static MusicItemTypeValue.register(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_217753348();
  v6 = v5;
  if (qword_280BEB7A0 != -1)
  {
    OUTLINED_FUNCTION_0_157();
    swift_once();
  }

  v7 = off_280BEB7A8;
  v8 = *(off_280BEB7A8 + 2);
  sub_217751DE8();
  os_unfair_lock_lock(v8);
  sub_21770FA7C(v4, v6, a1, a2, v22);
  os_unfair_lock_unlock(v7[2]);
  v9 = swift_bridgeObjectRelease_n();
  *&result = OUTLINED_FUNCTION_3_127(v9, v10, v11, v12, v13, v14, v15, v16, v17, v20, v21, v18, v22[0], v22[1]).n128_u64[0];
  return result;
}

double static MusicItemTypeValue.register(_:rawValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_280BEB7A0 != -1)
  {
    OUTLINED_FUNCTION_0_157();
    swift_once();
  }

  v8 = off_280BEB7A8;
  v9 = *(off_280BEB7A8 + 2);
  sub_217751DE8();
  os_unfair_lock_lock(v9);
  sub_21770FA7C(a3, a4, a1, a2, v23);
  os_unfair_lock_unlock(v8[2]);

  *&result = OUTLINED_FUNCTION_3_127(v11, v12, v13, v14, v15, v16, v17, v18, v10, v21, v22, v19, v23[0], v23[1]).n128_u64[0];
  return result;
}

uint64_t MusicItemTypeValue.publicDescription.getter()
{
  v2 = *(v0 + 16);
  sub_217751DE8();
  MEMORY[0x21CEA23B0](0x666C65732ELL, 0xE500000000000000);
  return v2;
}

uint64_t MusicItemTypeValue.description.getter()
{
  sub_217751DE8();
  sub_217285954(1);
  v0 = sub_217752918();
  v2 = v1;

  MEMORY[0x21CEA23B0](v0, v2, v3);

  sub_217751DE8();
  v7 = sub_2172857F8(1uLL);
  sub_217285A70(v7, v4, v5);
  sub_217751DE8();
  sub_217752048();

  return 46;
}

double sub_21770F91C(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))(v5);

  if (dynamic_cast_existential_1_conditional(a1, a1, &protocol descriptor for SupportedMusicItemTypeValuesVending))
  {
    (*(v3 + 8))();
  }

  return result;
}

uint64_t MusicItemTypeValue.rawValue.getter()
{
  v1 = *(v0 + 16);
  sub_217751DE8();
  return v1;
}

_DWORD *sub_21770F9EC()
{
  type metadata accessor for UnfairLock();
  v0 = swift_allocObject();
  result = swift_slowAlloc();
  *(v0 + 16) = result;
  *result = 0;
  off_280BEB7A8 = v0;
  return result;
}

void *sub_21770FA3C()
{
  result = sub_217751DC8();
  off_280BEB7C0 = result;
  return result;
}

uint64_t sub_21770FA7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if (qword_280BEB7B8 != -1)
  {
    OUTLINED_FUNCTION_1_142(&qword_280BEB7B8);
  }

  swift_beginAccess();
  v10 = off_280BEB7C0;
  if (!*(off_280BEB7C0 + 2) || (v11 = sub_21763246C(a1, a2), (v12 & 1) == 0))
  {
    swift_endAccess();
    swift_beginAccess();
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = off_280BEB7C0;
    sub_2172C8B68(a3, a4, a1, a2, a1, a2, isUniquelyReferenced_nonNull_native);
    off_280BEB7C0 = v30;

    result = swift_endAccess();
    goto LABEL_8;
  }

  v13 = (v10[7] + 32 * v11);
  v14 = *v13;
  a4 = v13[1];
  v15 = v13[2];
  v16 = v13[3];
  swift_endAccess();
  if (v14 == a3)
  {
    result = sub_217751DE8();
    a3 = v14;
    a1 = v15;
    a2 = v16;
LABEL_8:
    *a5 = a3;
    a5[1] = a4;
    a5[2] = a1;
    a5[3] = a2;
    return result;
  }

  sub_217751DE8();
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD00000000000002BLL, 0x80000002177B5EF0);
  v19 = sub_217753348();
  MEMORY[0x21CEA23B0](v19);

  MEMORY[0x21CEA23B0](0xD000000000000011, 0x80000002177B5F20, v20);
  MEMORY[0x21CEA23B0](a1, a2);
  MEMORY[0x21CEA23B0](0xD000000000000062, 0x80000002177B5F40);
  sub_217751DE8();
  sub_217285954(1);
  v21 = sub_217752918();
  v23 = v22;

  MEMORY[0x21CEA23B0](v21, v23, v24);

  sub_217751DE8();
  v29 = sub_2172857F8(1uLL);
  sub_217285A70(v29, v25, v26);
  sub_217751DE8();
  sub_217752048();

  MEMORY[0x21CEA23B0](46, 0xE100000000000000, v27);

  MEMORY[0x21CEA23B0](46, 0xE100000000000000, v28);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t MusicItemTypeValue.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_217752B38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_2_6();
  sub_2177532A8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v34, v34[3]);
    OUTLINED_FUNCTION_2_6();
    v9 = sub_217753078();
    v11 = v10;
    if (qword_280BEB7A0 != -1)
    {
      OUTLINED_FUNCTION_0_157();
      swift_once();
    }

    v35 = off_280BEB7A8;
    v12 = *(off_280BEB7A8 + 2);
    sub_217751DE8();
    os_unfair_lock_lock(v12);
    if (qword_280BEB7B8 != -1)
    {
      OUTLINED_FUNCTION_1_142(&qword_280BEB7B8);
    }

    swift_beginAccess();
    v13 = off_280BEB7C0;
    v14 = *(off_280BEB7C0 + 2);
    v29 = v9;
    if (v14 && (v15 = sub_21763246C(v9, v11), (v16 & 1) != 0))
    {
      v17 = (v13[7] + 32 * v15);
      v19 = *v17;
      v18 = v17[1];
      v20 = v17[3];
      v30 = v17[2];
      v31 = v18;
      sub_217751DE8();
    }

    else
    {
      v19 = 0;
      v30 = 0;
      v31 = 0;
      v20 = 0;
    }

    swift_endAccess();
    os_unfair_lock_unlock(v35[2]);

    if (v19)
    {

      __swift_destroy_boxed_opaque_existential_1(v34);
      v21 = v30;
      v22 = v31;
      *a2 = v19;
      a2[1] = v22;
      a2[2] = v21;
      a2[3] = v20;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_217753298();
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0xD000000000000035, 0x80000002177B5E50);
      MEMORY[0x21CEA23B0](v29, v11);

      MEMORY[0x21CEA23B0](0xD00000000000002DLL, 0x80000002177B5E90, v24);
      sub_217752B08();
      v25 = sub_217752B48();
      swift_allocError();
      v27 = v26;
      (*(v6 + 16))(v26, v8, v5);
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84168], v25);
      swift_willThrow();
      (*(v6 + 8))(v8, v5);
      __swift_destroy_boxed_opaque_existential_1(v34);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicItemTypeValue.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2177532E8();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2177530B8();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t MusicItemTypeValue.hashValue.getter()
{
  sub_2177531E8();
  sub_217751FF8();
  return sub_217753238();
}

uint64_t sub_21771025C(uint64_t a1)
{
  sub_2177531E8();
  sub_217751FF8();
  return sub_217753238();
}

unint64_t sub_2177102B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE61E8;
  if (!qword_280BE61E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE61E8);
  }

  return result;
}

void MusicPersonalRecommendation.Item.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(void *__src@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  memcpy(__dst, __src, 0x161uLL);
  if (([a2 respondsToSelector_] & 1) != 0 && (v7 = objc_msgSend(a2, sel_musicKit_modelObjectStorageDictionary)) != 0)
  {
    v8 = v7;
    v9 = sub_217751D98();
  }

  else
  {
    v9 = sub_217751DC8();
  }

  v10 = sub_21729FC8C(v9);
  v11 = sub_217638214(v10);
  if (v12)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11;
  }

  v14 = static LegacyModel.innerModelObject(for:)(a2);
  if (!v14)
  {
    goto LABEL_24;
  }

  v15 = v14;
  if (v13 == 13)
  {

    if (qword_280BE6248 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_5_84();
    v129 = *v49;
    v50 = objc_opt_self();
    sub_217751DE8();
    v51 = [v50 identifierSetFromLegacyModelObject_];
    OUTLINED_FUNCTION_2_105();
    v52 = sub_217751DE8();
    OUTLINED_FUNCTION_4_100(v52, v53, v54, v55, v56, v57, v58, v59, v112, v119, v129, *(&v129 + 1), v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, *&v191[0]);
    sub_217269F50(__dst);

    v60 = sub_21736C814(a3, &v141);
    v68 = OUTLINED_FUNCTION_3_97(v60, v61, v62, v63, v64, v65, v66, v67, v115, v122, v130, v137, v141, v142, v143, v144, v145, v146);
    Station.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v68, v69, v70, v71);
    swift_unknownObjectRelease();
    v72 = sub_217638634(a3);
    OUTLINED_FUNCTION_1_112(v72, v73, v74, v75, v76, v77, v78, v79, v116, v123, v131, v138, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191[0]);
    v48 = 2;
    goto LABEL_17;
  }

  if (v13 == 4)
  {

    if (qword_280BE6220 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_5_84();
    v126 = *v16;
    v17 = objc_opt_self();
    sub_217751DE8();
    v18 = [v17 identifierSetFromLegacyModelObject_];
    OUTLINED_FUNCTION_2_105();
    v19 = sub_217751DE8();
    OUTLINED_FUNCTION_4_100(v19, v20, v21, v22, v23, v24, v25, v26, v112, v119, v126, *(&v126 + 1), v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, *&v191[0]);
    sub_217269F50(__dst);

    v27 = sub_21736C814(a3, &v141);
    v35 = OUTLINED_FUNCTION_3_97(v27, v28, v29, v30, v31, v32, v33, v34, v113, v120, v127, v135, v141, v142, v143, v144, v145, v146);
    Playlist.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v35, v36, v37, v38, v39);
    swift_unknownObjectRelease();
    v40 = sub_217638634(a3);
    OUTLINED_FUNCTION_1_112(v40, v41, v42, v43, v44, v45, v46, v47, v114, v121, v128, v136, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191[0]);
    v48 = 1;
LABEL_17:
    *(a4 + 56) = v48;
    return;
  }

  if (v13 != 2)
  {
    v146 = 0;
    v147 = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD00000000000003FLL, 0x80000002177B6070);
    *&v191[0] = v13;
    type metadata accessor for MusicKit_SoftLinking_MPModelGenericObjectType(0);
    sub_217752C78();
    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
LABEL_24:
    sub_217752D08();
    __break(1u);
    return;
  }

  if (qword_280BE62F0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_84();
  v132 = *v80;
  v81 = objc_opt_self();
  sub_217751DE8();
  v82 = [v81 identifierSetFromLegacyModelObject_];
  OUTLINED_FUNCTION_2_105();
  v83 = sub_217751DE8();
  OUTLINED_FUNCTION_4_100(v83, v84, v85, v86, v87, v88, v89, v90, v112, v119, v132, *(&v132 + 1), v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, *&v191[0]);
  sub_217269F50(__dst);

  v91 = sub_21736C814(a3, &v141);
  v99 = OUTLINED_FUNCTION_3_97(v91, v92, v93, v94, v95, v96, v97, v98, v117, v124, v133, v139, v141, v142, v143, v144, v145, v146);
  Album.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v99, v100, v101, v102, v103);
  swift_unknownObjectRelease();
  v104 = sub_217638634(a3);
  OUTLINED_FUNCTION_1_112(v104, v105, v106, v107, v108, v109, v110, v111, v118, v125, v134, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191[0]);
  *(a4 + 56) = 0;
}

uint64_t MusicPersonalRecommendation.Item.convertToRawDictionary(for:)(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = sub_217283ECC(v1, &v27);
  if (v32)
  {
    if (v32 == 1)
    {
      OUTLINED_FUNCTION_0_83(v3, v4, v5, v6, v7, v8, v9, v10, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
      v14 = sub_21753D3A4(v2, v11, v12, v13);
      sub_21726B8C4(&v19);
    }

    else
    {
      OUTLINED_FUNCTION_0_83(v3, v4, v5, v6, v7, v8, v9, v10, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
      v14 = sub_21753D618(v2);
      sub_217283DC8(&v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v3, v4, v5, v6, v7, v8, v9, v10, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
    v14 = sub_21753D86C(v2, v15, v16, v17);
    sub_21725CE44(&v19);
  }

  return v14;
}

uint64_t MusicPersonalRecommendation.Item.underlyingLegacyModelObjectType.getter@<X0>(_BYTE *a1@<X8>)
{
  sub_217283ECC(v1, v4);
  *a1 = 0x1A0F00u >> (8 * v4[56]);
  return sub_217283F28(v4);
}

BOOL sub_2177108CC(uint64_t a1)
{
  v1 = sub_217752DC8();

  return v1 != 0;
}

BOOL sub_217710914@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2177108CC(*a1);
  *a2 = result;
  return result;
}

uint64_t MusicPersonalRecommendation.Item.propertyProvider.getter()
{
  v1 = sub_217283ECC(v0, &v33);
  if (v38)
  {
    if (v38 == 1)
    {
      *&v9 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37).n128_u64[0];
      OUTLINED_FUNCTION_6_84(v10, v11, v12, v13, v9);
      return sub_21726B8C4(&v25);
    }

    else
    {
      *&v20 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37).n128_u64[0];
      OUTLINED_FUNCTION_6_84(v21, v22, v23, v24, v20);
      return sub_217283DC8(&v25);
    }
  }

  else
  {
    *&v15 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37).n128_u64[0];
    OUTLINED_FUNCTION_6_84(v16, v17, v18, v19, v15);
    return sub_21725CE44(&v25);
  }
}

_BYTE *_s48LegacyModelPersonalRecommendationItemPropertyKeyOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_217710A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2172A4F90(a1, a2, a3);
  *(a1 + 8) = v4;
  result = sub_217710AB0(v4, v5, v6);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_217710AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D780;
  if (!qword_27CB2D780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D780);
  }

  return result;
}

unint64_t sub_217710B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D788;
  if (!qword_27CB2D788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D788);
  }

  return result;
}

uint64_t MusicItemDataSourceCollection.append(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2173DDA80();
  if ((result & 1) == 0)
  {
    sub_21726B87C(v2, v3);
    sub_21770B7D4();
    v5 = *(*v1 + 16);
    result = sub_21770BB04(v5);
    v6 = *v1;
    *(v6 + 16) = v5 + 1;
    v7 = v6 + 16 * v5;
    *(v7 + 32) = v2;
    *(v7 + 40) = v3;
    *v1 = v6;
  }

  return result;
}

MusicKit::MusicItemDataSourceCollection __swiftcall MusicItemDataSourceCollection.union(_:)(MusicKit::MusicItemDataSourceCollection a1)
{
  v17 = v1;
  v3 = *v2;
  v4 = *(*a1.dataSources._rawValue + 16);
  if (v4)
  {
    v5 = *a1.dataSources._rawValue + 32;
    sub_217751DE8();
    isUniquelyReferenced_nonNull_native = sub_217751DE8();
    do
    {
      v7 = MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
      v9 = v8;
      sub_21726B87C(v7, v8);
      if (sub_2173DDA80())
      {
        sub_21726B8A0(v7, v9);
      }

      else
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v13 = OUTLINED_FUNCTION_39_7();
          sub_2172B1F4C(v13, v14, v15, v3);
          v3 = isUniquelyReferenced_nonNull_native;
        }

        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_2172B1F4C(v10 > 1, v11 + 1, 1, v3);
          v3 = isUniquelyReferenced_nonNull_native;
        }

        *(v3 + 16) = v11 + 1;
        v12 = v3 + 16 * v11;
        *(v12 + 32) = v7;
        *(v12 + 40) = v9;
      }

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  else
  {
    sub_217751DE8();
    sub_217751DE8();
  }

  *v17 = v3;
  return result;
}

uint64_t static MusicItemDataSourceCollection.== infix(_:_:)(uint64_t a1)
{
  sub_217710EFC();
  v2 = v1;
  sub_217710EFC();
  sub_217275068(v2, v3, v4, v5, v6, v7, v8);
  v10 = v9;

  return v10 & 1;
}

unint64_t sub_217710DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result > *(a3 + 16))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

unint64_t sub_217710E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2173C2FA0();
  if (a2 < 1)
  {
    if (v7 <= 0 && v7 > a2)
    {
      return 0;
    }
  }

  else if ((v7 & 0x8000000000000000) == 0 && v7 < a2)
  {
    return 0;
  }

  result = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (result > *(a4 + 16))
  {
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t sub_217710EA4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0 || *(a3 + 16) < a2)
  {
    __break(1u);
  }

  else
  {
    a4[1] = a2;
    a4[2] = a3;
    *a4 = result;
    return sub_217751DE8();
  }

  return result;
}

uint64_t sub_217710ED4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a2)
  {
    v4 = __OFSUB__(result, a3);
    v3 = result - a3 < 0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  if (v3 == v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_217710EE8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < a3 || a4 < a2)
  {
    __break(1u);
  }

  return result;
}

void sub_217710EFC()
{
  OUTLINED_FUNCTION_2_138();
  v4 = MEMORY[0x277D84F90];
  while (v2 != v0)
  {
    if (v0 >= *(v1 + 16))
    {
      __break(1u);
      return;
    }

    v5 = *(v3 + 16 * v0);
    v6 = *(v3 + 16 * v0 + 8);
    if (v6 > 8)
    {
      v13 = *(v3 + 16 * v0);
      sub_21726B87C(*(v3 + 16 * v0), *(v3 + 16 * v0 + 8));
      sub_217751DE8();
      v5 = v13;
LABEL_8:
      v14 = v5;
      OUTLINED_FUNCTION_0_158(v5, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = OUTLINED_FUNCTION_39_7();
        sub_217275C44(v7, v8, v9);
      }

      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      v12 = v14;
      if (v11 >= v10 >> 1)
      {
        OUTLINED_FUNCTION_1_143(v10);
        v12 = v14;
      }

      ++v0;
      *(v4 + 16) = v11 + 1;
      *(v4 + 16 * v11 + 32) = v12;
    }

    else
    {
      if (v6 != 2)
      {
        goto LABEL_8;
      }

      OUTLINED_FUNCTION_0_158(*(v3 + 16 * v0++), 2uLL);
    }
  }
}

uint64_t MusicItemDataSourceCollection.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2171FF30C(a1, v10);
  sub_21771187C(v5, v6, v7);
  v8 = sub_217752458();
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

void MusicItemDataSourceCollection.hash(into:)()
{
  OUTLINED_FUNCTION_2_138();
  v4 = MEMORY[0x277D84F90];
  while (v2 != v0)
  {
    if (v0 >= *(v1 + 16))
    {
      __break(1u);
      return;
    }

    v5 = *(v3 + 16 * v0);
    v6 = *(v3 + 16 * v0 + 8);
    if (v6 > 8)
    {
      v13 = *(v3 + 16 * v0);
      sub_21726B87C(*(v3 + 16 * v0), *(v3 + 16 * v0 + 8));
      sub_217751DE8();
      v5 = v13;
LABEL_8:
      v14 = v5;
      OUTLINED_FUNCTION_0_158(v5, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = OUTLINED_FUNCTION_39_7();
        sub_217275C44(v7, v8, v9);
      }

      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      v12 = v14;
      if (v11 >= v10 >> 1)
      {
        OUTLINED_FUNCTION_1_143(v10);
        v12 = v14;
      }

      ++v0;
      *(v4 + 16) = v11 + 1;
      *(v4 + 16 * v11 + 32) = v12;
    }

    else
    {
      if (v6 != 2)
      {
        goto LABEL_8;
      }

      OUTLINED_FUNCTION_0_158(*(v3 + 16 * v0++), 2uLL);
    }
  }

  sub_21728015C();
}

void MusicItemDataSourceCollection.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  v2 = 0;
  v3 = *(v1 + 16);
  v4 = v1 + 32;
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v3 == v2)
    {
      sub_21728015C();

      sub_217753238();
      return;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v6 = *(v4 + 16 * v2);
    v7 = *(v4 + 16 * v2 + 8);
    if (v7 > 8)
    {
      v14 = *(v4 + 16 * v2);
      sub_21726B87C(*(v4 + 16 * v2), *(v4 + 16 * v2 + 8));
      sub_217751DE8();
      v6 = v14;
LABEL_8:
      v15 = v6;
      OUTLINED_FUNCTION_0_158(v6, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = OUTLINED_FUNCTION_39_7();
        sub_217275C44(v8, v9, v10);
      }

      v12 = *(v5 + 16);
      v11 = *(v5 + 24);
      v13 = v15;
      if (v12 >= v11 >> 1)
      {
        sub_217275C44(v11 > 1, v12 + 1, 1);
        v13 = v15;
      }

      ++v2;
      *(v5 + 16) = v12 + 1;
      *(v5 + 16 * v12 + 32) = v13;
    }

    else
    {
      if (v7 != 2)
      {
        goto LABEL_8;
      }

      OUTLINED_FUNCTION_0_158(*(v4 + 16 * v2++), 2uLL);
    }
  }

  __break(1u);
}

uint64_t sub_2177113B8(uint64_t a1)
{
  v2 = *v1;
  sub_2177531E8();
  v11 = sub_217381158();
  v3 = sub_2172AFE18(v2);
  v4 = 0;
  for (i = (v2 + 40); ; i += 2)
  {
    if (v3 == v4)
    {
      sub_21728015C();

      return sub_217753238();
    }

    v6 = OUTLINED_FUNCTION_140_0();
    result = sub_217504044();
    if ((v6 & 1) == 0)
    {
      break;
    }

    if (__OFADD__(v4, 1))
    {
      goto LABEL_13;
    }

    v8 = *(i - 1);
    v9 = *i;
    if (*i > 8)
    {
      sub_21726B87C(*(i - 1), *i);
      sub_217751DE8();
LABEL_7:
      sub_21726B8A0(v8, v9);
      sub_21726B8A0(0, 2uLL);
      sub_2177117E0();
      v10 = *(v11 + 16);
      sub_21771183C(v10);
      sub_217711864(v10, v8, v9);
      nullsub_1();
      goto LABEL_8;
    }

    if (v9 != 2)
    {
      goto LABEL_7;
    }

    sub_21726B8A0(*(i - 1), 2uLL);
    sub_21726B8A0(0, 2uLL);
LABEL_8:
    ++v4;
  }

  result = sub_217659108(v4, v2);
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

Swift::Int __swiftcall MusicItemDataSourceCollection.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall MusicItemDataSourceCollection.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

unint64_t MusicItemDataSourceCollection.subscript.getter@<X0>(unint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 16) > result)
  {
    v3 = *(*v2 + 16 * result + 32);
    *a2 = v3;
    return sub_21726B87C(v3, *(&v3 + 1));
  }

  __break(1u);
  return result;
}

Swift::Int sub_21771158C@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = MusicItemDataSourceCollection.index(before:)(*a1);
  *a2 = result;
  return result;
}

void *sub_2177115B8(void *result)
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

uint64_t sub_2177115D0@<X0>(uint64_t *a1@<X8>)
{
  result = MusicItemDataSourceCollection.endIndex.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21771165C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_217710EC8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_217711698(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_4_136(a1);
  result = sub_217710E1C(v3, v5, *v4, *v2);
  *v1 = result;
  *(v1 + 8) = v7 & 1;
  return result;
}

Swift::Int sub_217711710(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_4_136(a1);
  result = MusicItemDataSourceCollection.index(after:)(v2);
  *v1 = result;
  return result;
}

void *sub_217711738(void *result)
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

void static MusicItemDataSourceCollection.+ infix(_:_:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_4_136(a1);
  sub_217751DE8();
  v2 = sub_217751DE8();
  sub_21754451C(v2);
  *v1 = v3;
}

void sub_2177117E0()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = *(v1 + 16) + 1;

    sub_217275C44(0, v3, 1);
  }
}

void sub_21771183C(uint64_t result)
{
  v2 = *(*v1 + 24);
  if (result + 1 > (v2 >> 1))
  {
    sub_217275C44(v2 > 1, result + 1, 1);
  }
}

uint64_t sub_217711864(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  *(v4 + 16) = result + 1;
  v5 = v4 + 16 * result;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  return result;
}

unint64_t sub_21771187C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D790;
  if (!qword_27CB2D790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D790);
  }

  return result;
}

unint64_t sub_2177118D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D798;
  if (!qword_27CB2D798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D798);
  }

  return result;
}

unint64_t sub_217711928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D7A0;
  if (!qword_27CB2D7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D7A0);
  }

  return result;
}

unint64_t sub_217711980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D7A8;
  if (!qword_27CB2D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D7A8);
  }

  return result;
}

unint64_t sub_217711A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D7C0;
  if (!qword_27CB2D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D7C0);
  }

  return result;
}

unint64_t sub_217711A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D7C8;
  if (!qword_27CB2D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D7C8);
  }

  return result;
}

uint64_t sub_217711B10(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2D7B8, &qword_21779CE50);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217711B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE8D38[0];
  if (!qword_280BE8D38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BE8D38);
  }

  return result;
}

void *CloudResourceCustomMetadata.init(identifierSet:additionalQueryParameters:referencingItemID:)@<X0>(void *__src@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = *a2;
  result = memcpy(a5, __src, 0x161uLL);
  a5[45] = v8;
  a5[46] = a3;
  a5[47] = a4;
  return result;
}

void CloudResourceCustomMetadata.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D7F0, &unk_21779D120);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v5);
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21738C068(v6, v7, v8);
  v9 = sub_2177532C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v28[383] = 0;
    sub_217711FA4(v9, v10, v11);
    OUTLINED_FUNCTION_1_144();
    sub_217752E58();
    v12 = memcpy(v28, v27, 0x161uLL);
    LOBYTE(v23[0]) = 1;
    sub_217711FF8(v12, v13, v14);
    OUTLINED_FUNCTION_1_144();
    v15 = sub_217752E58();
    v22 = v24[0];
    v28[382] = 2;
    sub_2172E1C68(v15, v16, v17);
    OUTLINED_FUNCTION_1_144();
    sub_217752E58();
    v18 = OUTLINED_FUNCTION_0_159();
    v19(v18);
    v20 = v25;
    v21 = v26;
    memcpy(v23, v28, 0x168uLL);
    v23[45] = v24[0];
    v23[46] = v25;
    v23[47] = v26;
    memcpy(a2, v23, 0x180uLL);
    sub_21771204C(v23, v24);
    __swift_destroy_boxed_opaque_existential_1(a1);
    memcpy(v24, v28, 0x168uLL);
    v24[45] = v22;
    v24[46] = v20;
    v24[47] = v21;
    sub_21733BED8(v24);
  }
}

unint64_t sub_217711FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE63A0;
  if (!qword_280BE63A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE63A0);
  }

  return result;
}

unint64_t sub_217711FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE3B20;
  if (!qword_280BE3B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3B20);
  }

  return result;
}

uint64_t CloudResourceCustomMetadata.identifierSet.getter()
{
  OUTLINED_FUNCTION_4_137();
  memcpy(v0, v1, v2);
  OUTLINED_FUNCTION_4_137();
  memcpy(v3, v4, v5);
  return sub_217696DA0(v8, v7);
}

uint64_t CloudResourceCustomMetadata.referencingItemID.getter()
{
  v1 = *(v0 + 368);
  sub_217751DE8();
  return v1;
}

BOOL static CloudResourceCustomMetadata.== infix(_:_:)(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_2_139(v24);
  v6 = v4[45];
  v5 = v4[46];
  v7 = v4[47];
  OUTLINED_FUNCTION_3_128(v25);
  v9 = v2[45];
  v8 = v2[46];
  v10 = v2[47];
  OUTLINED_FUNCTION_2_139(__src);
  OUTLINED_FUNCTION_3_128(&__src[360]);
  OUTLINED_FUNCTION_2_139(v26);
  if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v26) == 1)
  {
    OUTLINED_FUNCTION_3_128(__dst);
    if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(__dst) == 1)
    {
      OUTLINED_FUNCTION_2_139(v22);
      sub_217696DA0(v24, v20);
      sub_217696DA0(v25, v20);
      sub_2171F06D8(v22, &qword_27CB25468, &qword_21775CD00);
      goto LABEL_9;
    }

    sub_217696DA0(v24, v22);
    sub_217696DA0(v25, v22);
LABEL_7:
    memcpy(__dst, __src, 0x2C9uLL);
    sub_2171F06D8(__dst, &qword_27CB26A58, &qword_21779D130);
    return 0;
  }

  OUTLINED_FUNCTION_2_139(v22);
  OUTLINED_FUNCTION_2_139(v20);
  OUTLINED_FUNCTION_3_128(__dst);
  if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(__dst) == 1)
  {
    OUTLINED_FUNCTION_2_139(v19);
    sub_217696DA0(v24, v18);
    sub_217696DA0(v25, v18);
    sub_217696DA0(v22, v18);
    sub_217269F50(v19);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_128(v19);
  sub_217696DA0(v24, v18);
  sub_217696DA0(v25, v18);
  sub_217696DA0(v22, v18);
  static MusicIdentifierSet.== infix(_:_:)();
  v12 = v11;
  memcpy(v17, v19, 0x161uLL);
  sub_217269F50(v17);
  memcpy(v18, v20, 0x161uLL);
  sub_217269F50(v18);
  OUTLINED_FUNCTION_2_139(v19);
  sub_2171F06D8(v19, &qword_27CB25468, &qword_21775CD00);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  if (v6)
  {
    if (v9)
    {
      swift_bridgeObjectRetain_n();
      sub_217751DE8();
      sub_217270404();
      v14 = v13;
      swift_bridgeObjectRelease_n();

      if ((v14 & 1) == 0)
      {
        return 0;
      }

      if (v7)
      {
        goto LABEL_13;
      }

      return !v10;
    }

LABEL_21:
    sub_217751DE8();

    return 0;
  }

  if (v9)
  {
    goto LABEL_21;
  }

  if (v7)
  {
LABEL_13:
    if (v10)
    {
      v15 = v5 == v8 && v7 == v10;
      if (v15 || (sub_217753058() & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v10;
}

uint64_t CloudResourceCustomMetadata.hash(into:)(void *a1)
{
  v3 = v1[45];
  v4 = v1[47];
  OUTLINED_FUNCTION_4_137();
  memcpy(v5, v6, v7);
  if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v12) == 1)
  {
    sub_217753208();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_217753208();
    if (v4)
    {
      goto LABEL_4;
    }

    return sub_217753208();
  }

  memcpy(v9, v1, sizeof(v9));
  sub_217753208();
  memcpy(__dst, v1, 0x161uLL);
  sub_217269EF4(__dst, v11);
  MusicIdentifierSet.hash(into:)(a1);
  memcpy(v11, v9, 0x161uLL);
  sub_217269F50(v11);
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_217753208();
  sub_21727D208(a1, v3);
  if (v4)
  {
LABEL_4:
    sub_217753208();
    return sub_217751FF8();
  }

  return sub_217753208();
}

uint64_t CloudResourceCustomMetadata.hashValue.getter()
{
  sub_2177531E8();
  CloudResourceCustomMetadata.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_217712590(uint64_t a1)
{
  sub_2177531E8();
  CloudResourceCustomMetadata.hash(into:)(v2);
  return sub_217753238();
}

MusicKit::CloudResourceCustomMetadata::CodingKeys_optional __swiftcall CloudResourceCustomMetadata.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  v3 = sub_217752DC8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t CloudResourceCustomMetadata.CodingKeys.stringValue.getter()
{
  v1 = 0xD000000000000022;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000016;
  }
}

unint64_t sub_2177126C8@<X0>(unint64_t *a1@<X8>)
{
  result = CloudResourceCustomMetadata.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21771270C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21738C068(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217712748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21738C068(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CloudResourceCustomMetadata.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D7F8, &qword_21779D138);
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  OUTLINED_FUNCTION_4_137();
  memcpy(v10, v11, v12);
  v13 = v1[45];
  v31 = v1[46];
  v32 = v13;
  v30 = v1[47];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_217696DA0(v37, v36);
  sub_21738C068(v14, v15, v16);
  sub_2177532F8();
  v17 = memcpy(v36, v37, 0x161uLL);
  v39 = 0;
  sub_217712A1C(v17, v18, v19);
  sub_217752F38();
  if (v2)
  {
    memcpy(v35, v36, 0x161uLL);
    sub_2171F06D8(v35, &qword_27CB25468, &qword_21775CD00);
  }

  else
  {
    v21 = v30;
    v20 = v31;
    memcpy(v35, v36, 0x161uLL);
    v22 = sub_2171F06D8(v35, &qword_27CB25468, &qword_21775CD00);
    v33 = v32;
    v38 = 1;
    sub_217712A70(v22, v23, v24);
    sub_217751DE8();
    sub_217752F38();

    v33 = v20;
    v34 = v21;
    v38 = 2;
    sub_2172E1B18(v25, v26, v27);
    sub_217752F38();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_217712A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D800;
  if (!qword_27CB2D800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D800);
  }

  return result;
}

unint64_t sub_217712A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D808;
  if (!qword_27CB2D808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D808);
  }

  return result;
}

unint64_t sub_217712AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D810;
  if (!qword_27CB2D810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D810);
  }

  return result;
}

unint64_t sub_217712B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D818;
  if (!qword_27CB2D818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D818);
  }

  return result;
}

unint64_t sub_217712B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE31F8;
  if (!qword_280BE31F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE31F8);
  }

  return result;
}

unint64_t sub_217712BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE3200;
  if (!qword_280BE3200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3200);
  }

  return result;
}

unint64_t sub_217712C28()
{
  result = qword_27CB2D820;
  if (!qword_27CB2D820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2D828, &qword_21779D298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D820);
  }

  return result;
}

uint64_t sub_217712C8C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 384))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_217712CE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 376) = 0;
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 384) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 384) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudResourceCustomMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

MusicKit::CloudDescriptionContainer __swiftcall CloudDescriptionContainer.init(_:_:)(Swift::String_optional a1, Swift::String_optional a2)
{
  *v2 = a1;
  v2[1] = a2;
  result.standard = a2;
  result.short = a1;
  return result;
}

uint64_t CloudDescriptionContainer.convertToCloudDescriptionContainerAttribute()@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  sub_217751DE8();
  sub_217751DE8();
  result = sub_217751DC8();
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v6;
  a1[3] = v5;
  a1[4] = result;
  return result;
}

uint64_t CloudDescriptionContainer.short.getter()
{
  v1 = *v0;
  sub_217751DE8();
  return v1;
}

uint64_t CloudDescriptionContainer.standard.getter()
{
  v1 = *(v0 + 16);
  sub_217751DE8();
  return v1;
}

uint64_t static CloudDescriptionContainer.== infix(_:_:)(uint64_t *a1, void *a2)
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

uint64_t sub_21771301C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74726F6873 && a2 == 0xE500000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x647261646E617473 && a2 == 0xE800000000000000)
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

uint64_t sub_2177130E0(char a1)
{
  if (a1)
  {
    return 0x647261646E617473;
  }

  else
  {
    return 0x74726F6873;
  }
}

uint64_t sub_21771311C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21771301C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217713144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21771332C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217713180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21771332C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CloudDescriptionContainer.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D830, &qword_21779D510);
  OUTLINED_FUNCTION_0_0();
  v15 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = v14 - v7;
  v9 = *(v1 + 16);
  v14[1] = *(v1 + 24);
  v14[2] = v9;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21771332C(v10, v11, v12);
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

unint64_t sub_21771332C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE35B0;
  if (!qword_280BE35B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE35B0);
  }

  return result;
}

uint64_t CloudDescriptionContainer.hash(into:)(uint64_t a1)
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

uint64_t CloudDescriptionContainer.hashValue.getter()
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

void CloudDescriptionContainer.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D838, &qword_21779D518);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21771332C(v11, v12, v13);
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

uint64_t sub_217713710(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  sub_2177531E8();
  CloudDescriptionContainer.hash(into:)(v4);
  return sub_217753238();
}

unint64_t sub_21771375C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D840;
  if (!qword_27CB2D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D840);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudDescriptionContainer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2177138A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D848;
  if (!qword_27CB2D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D848);
  }

  return result;
}

unint64_t sub_2177138F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE35A0;
  if (!qword_280BE35A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE35A0);
  }

  return result;
}

unint64_t sub_217713950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE35A8;
  if (!qword_280BE35A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE35A8);
  }

  return result;
}

uint64_t sub_2177139B4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D868, &qword_21779D8C8);
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2177143EC(v8, v9, v10);
  v11 = sub_2177532C8();
  v20 = 0;
  sub_2172E1C68(v11, v12, v13);
  v14 = OUTLINED_FUNCTION_1_145(&type metadata for MusicItemID);
  v16 = v21;
  v20 = 1;
  sub_21759F764(v14, v17, v18);
  OUTLINED_FUNCTION_1_145(&type metadata for CodableMusicCatalogID.Kind);
  (*(v4 + 8))(v7, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v16;
}

uint64_t sub_217713B68()
{
  v1 = *v0;
  switch(*(v0 + 16))
  {
    case 3:
    case 6:
      OUTLINED_FUNCTION_7_93();
      break;
    default:
      break;
  }

  sub_217751DE8();
  return v1;
}

uint64_t sub_217713CB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a4;
  v32 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D858, &qword_21779D8C0);
  OUTLINED_FUNCTION_0_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2177143EC(v15, v16, v17);
  v18 = sub_2177532F8();
  v33 = a2;
  v34 = a3;
  v35 = 0;
  v21 = sub_2172E1B18(v18, v19, v20);
  v24 = OUTLINED_FUNCTION_4_138(v21, v22, v23, &type metadata for MusicItemID, v21);
  if (!v5)
  {
    v33 = v31;
    v34 = v32;
    v35 = 1;
    v27 = sub_21759F80C(v24, v25, v26);
    OUTLINED_FUNCTION_4_138(v27, v28, v29, &type metadata for CodableMusicCatalogID.Kind, v27);
  }

  return (*(v11 + 8))(v14, v9);
}

void sub_217713E24(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x44496D616461 && a2 == 0xE600000000000000;
  if (v6 || (OUTLINED_FUNCTION_0_99(0x44496D616461, 0xE600000000000000) & 1) != 0)
  {

    v7 = 0;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_110();
    v10 = a1 == v8 && a2 == v9;
    if (v10 || (OUTLINED_FUNCTION_0_99(v8, v9) & 1) != 0)
    {

      v7 = 1;
    }

    else
    {
      v11 = a1 == 0xD000000000000010 && 0x80000002177B6110 == a2;
      if (v11 || (OUTLINED_FUNCTION_0_99(0xD000000000000010, 0x80000002177B6110) & 1) != 0)
      {

        v7 = 2;
      }

      else
      {
        v12 = a1 == 0xD000000000000014 && 0x80000002177B60F0 == a2;
        if (v12 || (OUTLINED_FUNCTION_0_99(0xD000000000000014, 0x80000002177B60F0) & 1) != 0)
        {

          v7 = 3;
        }

        else
        {
          v13 = a1 == 0xD000000000000010 && 0x80000002177B60D0 == a2;
          if (v13 || (OUTLINED_FUNCTION_0_99(0xD000000000000010, 0x80000002177B60D0) & 1) != 0)
          {

            v7 = 4;
          }

          else
          {
            v14 = OUTLINED_FUNCTION_3_129();
            v16 = a1 == v14 && a2 == v15;
            if (v16 || (OUTLINED_FUNCTION_0_99(v14, v15) & 1) != 0)
            {

              v7 = 5;
            }

            else
            {
              v17 = a1 == 0xD000000000000012 && 0x80000002177B60B0 == a2;
              if (v17 || (OUTLINED_FUNCTION_0_99(0xD000000000000012, 0x80000002177B60B0) & 1) != 0)
              {

                v7 = 6;
              }

              else
              {
                v18 = OUTLINED_FUNCTION_2_140();
                v20 = a1 == v18 && a2 == v19;
                if (v20 || (OUTLINED_FUNCTION_0_99(v18, v19) & 1) != 0)
                {

                  v7 = 7;
                }

                else
                {
                  if (a1 != 0x4449726568746FLL || a2 != 0xE700000000000000)
                  {
                    OUTLINED_FUNCTION_0_99(0x4449726568746FLL, 0xE700000000000000);
                  }

                  v7 = 8;
                }
              }
            }
          }
        }
      }
    }
  }

  *a3 = v7;
}

uint64_t sub_21771402C()
{
  result = 0x44496D616461;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_5_110();
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = OUTLINED_FUNCTION_3_129();
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = OUTLINED_FUNCTION_2_140();
      break;
    case 8:
      result = 0x4449726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217714130(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
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

unint64_t sub_2177142A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D850;
  if (!qword_27CB2D850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D850);
  }

  return result;
}

uint64_t sub_2177142FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217714130(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217714324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2177143EC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217714360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2177143EC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_21771439C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2177139B4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_2177143EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D860;
  if (!qword_27CB2D860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D860);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CodableMusicCatalogID.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_217714530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D870;
  if (!qword_27CB2D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D870);
  }

  return result;
}

unint64_t sub_217714588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D878;
  if (!qword_27CB2D878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D878);
  }

  return result;
}

unint64_t sub_2177145E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D880;
  if (!qword_27CB2D880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D880);
  }

  return result;
}

unint64_t sub_217714638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D888;
  if (!qword_27CB2D888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D888);
  }

  return result;
}

uint64_t static CloudAudioTrait.variants<A>(in:for:and:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_2177158A8(a1, a2, a3);
  if (!v3)
  {
    return 0;
  }

  v6 = Array<A>.extractAudioVariants()(v3, v4, v5);

  return v6;
}

uint64_t static CloudAudioTrait.isAppleDigitalMaster<A>(in:for:and:with:and:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {

    swift_getAtKeyPath();

    v9 = v24;
    if (a3)
    {
LABEL_3:

      swift_getAtKeyPath();

      v10 = v25;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 2;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v10 = 2;
LABEL_6:
  if (v9 == 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = sub_2177158A8(a1, a4, a5);
  if (v12)
  {
    v22 = v11;
    v13 = *(v12 + 16);
    v23 = v12;
    v14 = (v12 + 32);
    v15 = (v12 + 32);
    while (v13)
    {
      switch(*v15)
      {
        case 1:
        case 8:
          break;
        case 2:
          OUTLINED_FUNCTION_120_1();
          break;
        case 3:
          OUTLINED_FUNCTION_117();
          break;
        case 4:
          OUTLINED_FUNCTION_116();
          break;
        case 5:
          OUTLINED_FUNCTION_118();
          break;
        case 6:
        case 7:
          OUTLINED_FUNCTION_65();
          break;
        case 9:
          OUTLINED_FUNCTION_175();
          break;
        case 0xA:
          OUTLINED_FUNCTION_119_3();
          break;
        default:
          goto LABEL_42;
      }

      v16 = sub_217753058();

      ++v15;
      --v13;
      if (v16)
      {
        LODWORD(v11) = 1;
        goto LABEL_37;
      }
    }

    v17 = *(v23 + 16);
    while (2)
    {
      v18 = v17-- != 0;
      LODWORD(v11) = v18;
      if (v18)
      {
        switch(*v14)
        {
          case 2:
            OUTLINED_FUNCTION_120_1();
            goto LABEL_36;
          case 3:
            OUTLINED_FUNCTION_117();
            goto LABEL_36;
          case 4:
            OUTLINED_FUNCTION_116();
            goto LABEL_36;
          case 5:
            OUTLINED_FUNCTION_118();
            goto LABEL_36;
          case 6:
          case 7:
            OUTLINED_FUNCTION_65();
            goto LABEL_36;
          case 8:
LABEL_42:
            v20 = v22;

            LODWORD(v11) = 1;
            goto LABEL_38;
          case 9:
            OUTLINED_FUNCTION_175();
            goto LABEL_36;
          case 0xA:
            OUTLINED_FUNCTION_119_3();
            goto LABEL_36;
          default:
LABEL_36:
            v19 = sub_217753058();

            ++v14;
            if (v19)
            {
              break;
            }

            continue;
        }
      }

      break;
    }

LABEL_37:
    v20 = v22;
LABEL_38:

    if (v20 == 2)
    {
      return v11;
    }

    else
    {
      return (v11 | v20) & 1;
    }
  }

  return v11;
}

uint64_t static CloudAudioTrait.traits(for:isAppleDigitalMaster:forPublicRealm:)(uint64_t a1, char a2, char a3)
{
  swift_beginAccess();
  v4 = off_280BEBCD0;

  (v4)(v39, v5);

  v6 = v40;
  v7 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v6, v7, v42);
  __swift_destroy_boxed_opaque_existential_1(v39);
  v8 = v43;
  v9 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  (*(v9 + 8))(v39, v8, v9);
  v10 = v39[0];
  v11 = v39[1];
  v13 = v39[2];
  v12 = v40;
  if (qword_27CB23EE8 != -1)
  {
    OUTLINED_FUNCTION_0_160(&qword_27CB23EE8);
  }

  v14 = qword_27CB2E3B8;
  v15 = unk_27CB2E3C0;
  v16 = v10 == qword_27CB2E3A8 && v11 == unk_27CB2E3B0;
  if (!v16 && (sub_217753058() & 1) == 0 || (v13 == v14 ? (v17 = v12 == v15) : (v17 = 0), !v17 && (sub_217753058() & 1) == 0))
  {

    goto LABEL_17;
  }

  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217270404();
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_17:
    if (a3)
    {
      goto LABEL_30;
    }

    v20 = 0;
    goto LABEL_19;
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_30;
  }

  v20 = 1;
LABEL_19:
  if (!a1)
  {
    if (a2 != 2)
    {
      if (a2 & 1) == 0 || (v20)
      {
        sub_21733AB9C(v42);
        return MEMORY[0x277D84F90];
      }

      sub_2172B1EFC(0, 1, 1, MEMORY[0x277D84F90]);
      v22 = v31;
      v30 = *(v31 + 16);
      v29 = *(v31 + 24);
      goto LABEL_39;
    }

LABEL_30:
    sub_21733AB9C(v42);
    return 0;
  }

  v21 = *(a1 + 16);
  v22 = MEMORY[0x277D84F90];
  if (v21)
  {
    v39[0] = MEMORY[0x277D84F90];
    sub_217276D60(0, v21, 0);
    v22 = v39[0];
    v23 = (a1 + 32);
    do
    {
      v25 = *v23++;
      v24 = v25;
      v39[0] = v22;
      v27 = *(v22 + 16);
      v26 = *(v22 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_217276D60(v26 > 1, v27 + 1, 1);
        v22 = v39[0];
      }

      *(v22 + 16) = v27 + 1;
      *(v22 + v27 + 32) = v24 + 1;
      --v21;
    }

    while (v21);
  }

  if (a2 == 2 || (a2 & 1) == 0 || (v20 & 1) != 0)
  {
    sub_21733AB9C(v42);
    return v22;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v33 = OUTLINED_FUNCTION_17();
    sub_2172B1EFC(v33, v34, v35, v22);
    v22 = v36;
  }

  v30 = *(v22 + 16);
  v29 = *(v22 + 24);
LABEL_39:
  if (v30 >= v29 >> 1)
  {
    sub_2172B1EFC(v29 > 1, v30 + 1, 1, v22);
    v22 = v32;
  }

  sub_21733AB9C(v42);
  *(v22 + 16) = v30 + 1;
  *(v22 + v30 + 32) = 0;
  return v22;
}

uint64_t static CloudAudioTrait.isAppleDigitalMaster(value:forPublicRealm:)(unsigned int a1, unsigned __int8 a2)
{
  swift_beginAccess();
  v3 = off_280BEBCD0;

  (v3)(v21, v4);

  v5 = v22;
  v6 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v5, v6, v24);
  __swift_destroy_boxed_opaque_existential_1(v21);
  v7 = v25;
  v8 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  (*(v8 + 8))(v21, v7, v8);
  v10 = v21[0];
  v9 = v21[1];
  v12 = v21[2];
  v11 = v22;
  if (qword_27CB23EE8 != -1)
  {
    OUTLINED_FUNCTION_0_160(&qword_27CB23EE8);
  }

  v13 = qword_27CB2E3B8;
  v14 = unk_27CB2E3C0;
  v15 = v10 == qword_27CB2E3A8 && v9 == unk_27CB2E3B0;
  if (v15 || (sub_217753058()) && (v12 == v13 ? (v16 = v11 == v14) : (v16 = 0), v16 || (sub_217753058()))
  {
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217270404();
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  sub_21733AB9C(v24);
  if ((v18 ^ a2))
  {
    return 2;
  }

  else
  {
    return a1;
  }
}

MusicKit::CloudAudioTrait_optional __swiftcall CloudAudioTrait.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217752DC8();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CloudAudioTrait.rawValue.getter()
{
  result = 0x74612D79626C6F64;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = OUTLINED_FUNCTION_120_1();
      break;
    case 3:
      result = OUTLINED_FUNCTION_117();
      break;
    case 4:
      result = OUTLINED_FUNCTION_116();
      break;
    case 5:
      result = OUTLINED_FUNCTION_118();
      break;
    case 6:
      result = OUTLINED_FUNCTION_65() & 0xFFFFFFFFFFFFLL | 0x2D6C000000000000;
      break;
    case 7:
      result = OUTLINED_FUNCTION_65() & 0xFFFFFFFFFFFFLL | 0x6C000000000000;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = OUTLINED_FUNCTION_175();
      break;
    case 0xA:
      result = OUTLINED_FUNCTION_119_3();
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_2177151D0@<X0>(uint64_t *a1@<X8>)
{
  result = CloudAudioTrait.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static CloudAudioTrait.< infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 0xEB00000000736F6DLL;
  v3 = 0x74612D79626C6F64;
  v4 = *a1;
  v5 = *a2;
  v6 = "isMasteredForItunes";
  v7 = 0x74612D79626C6F64;
  v8 = 0xEB00000000736F6DLL;
  v9 = "apple-digital-master";
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v7 = OUTLINED_FUNCTION_120_1();
      v8 = 0xEB000000006F6964;
      break;
    case 3:
      v8 = 0xE800000000000000;
      v7 = OUTLINED_FUNCTION_117();
      break;
    case 4:
      v7 = OUTLINED_FUNCTION_116();
      v8 = 0xEF7373656C73736FLL;
      break;
    case 5:
      v7 = OUTLINED_FUNCTION_118();
      v8 = 0xEC0000006F657265;
      break;
    case 6:
      v7 = OUTLINED_FUNCTION_65() & 0xFFFFFFFFFFFFLL | 0x2D6C000000000000;
      v8 = 0xED00006F69647561;
      break;
    case 7:
      v8 = 0xE700000000000000;
      v7 = OUTLINED_FUNCTION_65() & 0xFFFFFFFFFFFFLL | 0x6C000000000000;
      break;
    case 8:
      v7 = 0xD000000000000013;
      v8 = 0x80000002177AA7E0;
      break;
    case 9:
      v8 = 0xE500000000000000;
      v7 = OUTLINED_FUNCTION_175();
      break;
    case 10:
      v8 = 0xE800000000000000;
      v7 = OUTLINED_FUNCTION_119_3();
      break;
    default:
      v8 = 0x80000002177AA770;
      v7 = 0xD000000000000014;
      break;
  }

  switch(v5)
  {
    case 1:
      break;
    case 2:
      v3 = 0x75612D79626C6F64;
      v2 = 0xEB000000006F6964;
      break;
    case 3:
      v2 = 0xE800000000000000;
      v3 = 0x7373656C73736F6CLL;
      break;
    case 4:
      v3 = 0x6C2D7365722D6968;
      v2 = 0xEF7373656C73736FLL;
      break;
    case 5:
      v3 = 0x74732D7973736F6CLL;
      v2 = 0xEC0000006F657265;
      break;
    case 6:
      v3 = 0x2D6C616974617073;
      v2 = 0xED00006F69647561;
      break;
    case 7:
      v2 = 0xE700000000000000;
      v3 = 0x6C616974617073;
      break;
    case 8:
      v3 = 0xD000000000000013;
      v2 = (v6 - 32) | 0x8000000000000000;
      break;
    case 9:
      v2 = 0xE500000000000000;
      v3 = 0x736F6D7461;
      break;
    case 10:
      v2 = 0xE800000000000000;
      v3 = 0x646E756F72727573;
      break;
    default:
      v2 = (v9 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000014;
      break;
  }

  if (v7 == v3 && v8 == v2)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_217753058();
  }

  return v11 & 1;
}

BOOL sub_217715590(unsigned __int8 a1, unsigned __int8 a2)
{
  v4 = a1;
  v3 = a2;
  return (static CloudAudioTrait.< infix(_:_:)(&v3, &v4) & 1) == 0;
}

BOOL sub_2177155D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v4 = a1;
  v3 = a2;
  return (static CloudAudioTrait.< infix(_:_:)(&v4, &v3) & 1) == 0;
}

uint64_t sub_217715618(unsigned __int8 a1, unsigned __int8 a2)
{
  v4 = a1;
  v3 = a2;
  return static CloudAudioTrait.< infix(_:_:)(&v3, &v4) & 1;
}

uint64_t sub_21771564C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    v5 = MEMORY[0x277D84F90];
    while (2)
    {
      v6 = *v4++;
      v7 = 0;
      switch(v6)
      {
        case 7:
          goto LABEL_11;
        case 9:
          v7 = 1;
          goto LABEL_6;
        case 10:
          v7 = 2;
          goto LABEL_6;
        default:
LABEL_6:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = OUTLINED_FUNCTION_17();
            sub_2172B1EFC(v10, v11, v12, v5);
            v5 = v13;
          }

          v9 = *(v5 + 16);
          v8 = *(v5 + 24);
          if (v9 >= v8 >> 1)
          {
            sub_2172B1EFC(v8 > 1, v9 + 1, 1, v5);
            v5 = v14;
          }

          *(v5 + 16) = v9 + 1;
          *(v5 + v9 + 32) = v7;
LABEL_11:
          if (!--v3)
          {
            goto LABEL_14;
          }

          continue;
      }
    }
  }

  v5 = MEMORY[0x277D84F90];
LABEL_14:
  v15 = sub_2173B1CDC(v5, a2, a3);
  v16 = sub_2173B1970(v15);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_21750366C();
    v16 = v19;
  }

  v17 = *(v16 + 16);
  v20[0] = v16 + 32;
  v20[1] = v17;
  sub_217715ED4(v20);
  return v16;
}

uint64_t Array<A>.extractAudioVariants()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_21771564C(a1, a2, a3);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 32);
    v6 = MEMORY[0x277D84F90];
    do
    {
      v7 = *v5++;
      v8 = 0;
      switch(v7)
      {
        case 1:
        case 9:
          goto LABEL_9;
        case 2:
        case 10:
          v8 = 1;
          goto LABEL_9;
        case 3:
          v8 = 2;
          goto LABEL_9;
        case 4:
          v8 = 3;
          goto LABEL_9;
        case 5:
          v8 = 4;
          goto LABEL_9;
        case 6:
          v8 = 5;
LABEL_9:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = OUTLINED_FUNCTION_17();
            sub_2172B1F24(v11, v12, v13, v6);
            v6 = v14;
          }

          v10 = *(v6 + 16);
          v9 = *(v6 + 24);
          if (v10 >= v9 >> 1)
          {
            sub_2172B1F24(v9 > 1, v10 + 1, 1, v6);
            v6 = v15;
          }

          *(v6 + 16) = v10 + 1;
          *(v6 + v10 + 32) = v8;
          break;
        default:
          break;
      }

      --v4;
    }

    while (v4);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  return v6;
}

uint64_t sub_2177158A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAtKeyPath();
  v4 = v22;
  if (a3)
  {

    swift_getAtKeyPath();

    if (v22)
    {
      v5 = sub_217751DE8();
      sub_2175436F4(v5);
      v21 = *(v22 + 16);
      if (v21)
      {
        v6 = 0;
        v4 = MEMORY[0x277D84F90];
        do
        {
          v7 = *(v22 + 32 + v6++);
          v8 = *(v4 + 16);
          v9 = (v4 + 32);
          while (v8)
          {
            v10 = 0xEB00000000736F6DLL;
            v11 = 0x74612D79626C6F64;
            switch(*v9)
            {
              case 1:
                break;
              case 2:
                v11 = 0x75612D79626C6F64;
                v10 = 0xEB000000006F6964;
                break;
              case 3:
                v10 = 0xE800000000000000;
                v11 = 0x7373656C73736F6CLL;
                break;
              case 4:
                v11 = 0x6C2D7365722D6968;
                v10 = 0xEF7373656C73736FLL;
                break;
              case 5:
                v11 = 0x74732D7973736F6CLL;
                v10 = 0xEC0000006F657265;
                break;
              case 6:
                v11 = 0x2D6C616974617073;
                v10 = 0xED00006F69647561;
                break;
              case 7:
                v10 = 0xE700000000000000;
                v11 = 0x6C616974617073;
                break;
              case 8:
                v11 = 0xD000000000000013;
                v10 = 0x80000002177AA7E0;
                break;
              case 9:
                v10 = 0xE500000000000000;
                v11 = 0x736F6D7461;
                break;
              case 0xA:
                v10 = 0xE800000000000000;
                v11 = 0x646E756F72727573;
                break;
              default:
                v11 = 0xD000000000000014;
                v10 = 0x80000002177AA770;
                break;
            }

            v12 = 0x74612D79626C6F64;
            v13 = 0xEB00000000736F6DLL;
            switch(v7)
            {
              case 1:
                break;
              case 2:
                v12 = 0x75612D79626C6F64;
                v13 = 0xEB000000006F6964;
                break;
              case 3:
                v13 = 0xE800000000000000;
                v12 = 0x7373656C73736F6CLL;
                break;
              case 4:
                v12 = 0x6C2D7365722D6968;
                v13 = 0xEF7373656C73736FLL;
                break;
              case 5:
                v12 = 0x74732D7973736F6CLL;
                v13 = 0xEC0000006F657265;
                break;
              case 6:
                v12 = 0x2D6C616974617073;
                v13 = 0xED00006F69647561;
                break;
              case 7:
                v13 = 0xE700000000000000;
                v12 = 0x6C616974617073;
                break;
              case 8:
                v12 = 0xD000000000000013;
                v13 = 0x80000002177AA7E0;
                break;
              case 9:
                v13 = 0xE500000000000000;
                v12 = 0x736F6D7461;
                break;
              case 10:
                v13 = 0xE800000000000000;
                v12 = 0x646E756F72727573;
                break;
              default:
                v12 = 0xD000000000000014;
                v13 = 0x80000002177AA770;
                break;
            }

            if (v11 == v12 && v10 == v13)
            {

              goto LABEL_41;
            }

            v15 = sub_217753058();

            ++v9;
            --v8;
            if (v15)
            {
              goto LABEL_41;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2172B1EFC(0, *(v4 + 16) + 1, 1, v4);
            v4 = v18;
          }

          v17 = *(v4 + 16);
          v16 = *(v4 + 24);
          if (v17 >= v16 >> 1)
          {
            sub_2172B1EFC(v16 > 1, v17 + 1, 1, v4);
            v4 = v19;
          }

          *(v4 + 16) = v17 + 1;
          *(v4 + v17 + 32) = v7;
LABEL_41:
          ;
        }

        while (v6 != v21);
      }

      else
      {

        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

unint64_t sub_217715D40()
{
  result = qword_27CB2D890;
  if (!qword_27CB2D890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25028, &qword_21775B510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D890);
  }

  return result;
}

unint64_t sub_217715DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE4100;
  if (!qword_280BE4100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE4100);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudAudioTrait(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

void sub_217715ED4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_217752FB8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_217752348();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_217716368(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_217715FC8(0, v2, 1, a1);
  }
}

void sub_217715FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + a3);
    v6 = a1 - a3;
    while (2)
    {
      v17 = v5;
      v18 = a3;
      v7 = *(v4 + a3);
      v8 = v6;
      while (1)
      {
        v9 = 0xEB00000000736F6DLL;
        v10 = 0x74612D79626C6F64;
        switch(v7)
        {
          case 1:
            break;
          case 2:
            v10 = 0x75612D79626C6F64;
            v9 = 0xEB000000006F6964;
            break;
          case 3:
            v9 = 0xE800000000000000;
            v10 = 0x7373656C73736F6CLL;
            break;
          case 4:
            v10 = 0x6C2D7365722D6968;
            v9 = 0xEF7373656C73736FLL;
            break;
          case 5:
            v10 = 0x74732D7973736F6CLL;
            v9 = 0xEC0000006F657265;
            break;
          case 6:
            v10 = 0x2D6C616974617073;
            v9 = 0xED00006F69647561;
            break;
          case 7:
            v9 = 0xE700000000000000;
            v10 = 0x6C616974617073;
            break;
          case 8:
            v10 = 0xD000000000000013;
            v9 = 0x80000002177AA7E0;
            break;
          case 9:
            v9 = 0xE500000000000000;
            v10 = 0x736F6D7461;
            break;
          case 10:
            v9 = 0xE800000000000000;
            v10 = 0x646E756F72727573;
            break;
          default:
            v10 = 0xD000000000000014;
            v9 = 0x80000002177AA770;
            break;
        }

        v11 = 0x74612D79626C6F64;
        v12 = 0xEB00000000736F6DLL;
        switch(*(v5 - 1))
        {
          case 1:
            break;
          case 2:
            v11 = 0x75612D79626C6F64;
            v12 = 0xEB000000006F6964;
            break;
          case 3:
            v12 = 0xE800000000000000;
            v11 = 0x7373656C73736F6CLL;
            break;
          case 4:
            v11 = 0x6C2D7365722D6968;
            v12 = 0xEF7373656C73736FLL;
            break;
          case 5:
            v11 = 0x74732D7973736F6CLL;
            v12 = 0xEC0000006F657265;
            break;
          case 6:
            v11 = 0x2D6C616974617073;
            v12 = 0xED00006F69647561;
            break;
          case 7:
            v12 = 0xE700000000000000;
            v11 = 0x6C616974617073;
            break;
          case 8:
            v11 = 0xD000000000000013;
            v12 = 0x80000002177AA7E0;
            break;
          case 9:
            v12 = 0xE500000000000000;
            v11 = 0x736F6D7461;
            break;
          case 0xA:
            v12 = 0xE800000000000000;
            v11 = 0x646E756F72727573;
            break;
          default:
            v11 = 0xD000000000000014;
            v12 = 0x80000002177AA770;
            break;
        }

        if (v10 == v11 && v9 == v12)
        {
          break;
        }

        v14 = sub_217753058();

        if (v14)
        {
          if (!v4)
          {
            __break(1u);
            return;
          }

          v7 = *v5;
          *v5 = *(v5 - 1);
          *--v5 = v7;
          if (!__CFADD__(v8++, 1))
          {
            continue;
          }
        }

        goto LABEL_36;
      }

LABEL_36:
      a3 = v18 + 1;
      v5 = v17 + 1;
      --v6;
      if (v18 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_217716368(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_146:
    v98 = *a1;
    if (!*a1)
    {
      goto LABEL_187;
    }

    v7 = v100;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_148:
      v84 = v6 + 16;
      v85 = *(v6 + 2);
      while (v85 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_184;
        }

        v86 = v6;
        v87 = &v6[16 * v85];
        v88 = *v87;
        v6 = &v84[2 * v85];
        v89 = *(v6 + 1);
        sub_217716EB0((*a3 + *v87), (*a3 + *v6), (*a3 + v89), v98);
        if (v7)
        {
          break;
        }

        if (v89 < v88)
        {
          goto LABEL_172;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_173;
        }

        *v87 = v88;
        *(v87 + 1) = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_174;
        }

        v85 = *v84 - 1;
        memmove(v6, v6 + 16, 16 * v90);
        *v84 = v85;
        v6 = v86;
      }

LABEL_156:

      return;
    }

LABEL_181:
    v6 = sub_217717044(v6);
    goto LABEL_148;
  }

  v5 = 0;
  v98 = 0x80000002177AA7E0;
  v6 = MEMORY[0x277D84F90];
  while (2)
  {
    v7 = v5;
    v8 = v5 + 1;
    if (v5 + 1 >= v4)
    {
      goto LABEL_49;
    }

    v9 = *a3;
    v10 = *(*a3 + v5);
    v102 = *(*a3 + v8);
    v101 = v10;
    v11 = static CloudAudioTrait.< infix(_:_:)(&v102, &v101);
    for (i = v7; ; ++i)
    {
      if (i + 2 >= v4)
      {
        v19 = v4 - 1;
        if ((v11 & 1) == 0)
        {
          goto LABEL_48;
        }

        goto LABEL_41;
      }

      v13 = 0xEB00000000736F6DLL;
      v14 = 0x74612D79626C6F64;
      switch(*(v9 + i + 2))
      {
        case 1:
          break;
        case 2:
          v14 = 0x75612D79626C6F64;
          v13 = 0xEB000000006F6964;
          break;
        case 3:
          v13 = 0xE800000000000000;
          v14 = 0x7373656C73736F6CLL;
          break;
        case 4:
          v14 = 0x6C2D7365722D6968;
          v13 = 0xEF7373656C73736FLL;
          break;
        case 5:
          v14 = 0x74732D7973736F6CLL;
          v13 = 0xEC0000006F657265;
          break;
        case 6:
          v14 = 0x2D6C616974617073;
          v13 = 0xED00006F69647561;
          break;
        case 7:
          v13 = 0xE700000000000000;
          v14 = 0x6C616974617073;
          break;
        case 8:
          v14 = 0xD000000000000013;
          v13 = 0x80000002177AA7E0;
          break;
        case 9:
          v13 = 0xE500000000000000;
          v14 = 0x736F6D7461;
          break;
        case 0xA:
          v13 = 0xE800000000000000;
          v14 = 0x646E756F72727573;
          break;
        default:
          v14 = 0xD000000000000014;
          v13 = 0x80000002177AA770;
          break;
      }

      v15 = 0x74612D79626C6F64;
      v16 = 0xEB00000000736F6DLL;
      switch(*(v9 + i + 1))
      {
        case 1:
          break;
        case 2:
          v15 = 0x75612D79626C6F64;
          v16 = 0xEB000000006F6964;
          break;
        case 3:
          v16 = 0xE800000000000000;
          v15 = 0x7373656C73736F6CLL;
          break;
        case 4:
          v15 = 0x6C2D7365722D6968;
          v16 = 0xEF7373656C73736FLL;
          break;
        case 5:
          v15 = 0x74732D7973736F6CLL;
          v16 = 0xEC0000006F657265;
          break;
        case 6:
          v15 = 0x2D6C616974617073;
          v16 = 0xED00006F69647561;
          break;
        case 7:
          v16 = 0xE700000000000000;
          v15 = 0x6C616974617073;
          break;
        case 8:
          v15 = 0xD000000000000013;
          v16 = 0x80000002177AA7E0;
          break;
        case 9:
          v16 = 0xE500000000000000;
          v15 = 0x736F6D7461;
          break;
        case 0xA:
          v16 = 0xE800000000000000;
          v15 = 0x646E756F72727573;
          break;
        default:
          v15 = 0xD000000000000014;
          v16 = 0x80000002177AA770;
          break;
      }

      if (v14 != v15 || v13 != v16)
      {
        break;
      }

      if (v11)
      {
        v19 = i + 1;
        v4 = i + 2;
        goto LABEL_41;
      }

LABEL_35:
      ;
    }

    v18 = sub_217753058();

    if (((v11 ^ v18) & 1) == 0)
    {
      goto LABEL_35;
    }

    v19 = i + 1;
    v4 = i + 2;
    if ((v11 & 1) == 0)
    {
      goto LABEL_48;
    }

LABEL_41:
    if (v4 < v7)
    {
      goto LABEL_178;
    }

    if (v7 <= v19)
    {
      v20 = v4 - 1;
      v21 = v7;
      do
      {
        if (v21 != v20)
        {
          v22 = *a3;
          if (!*a3)
          {
            goto LABEL_185;
          }

          v23 = *(v22 + v21);
          *(v22 + v21) = *(v22 + v20);
          *(v22 + v20) = v23;
        }
      }

      while (++v21 < v20--);
    }

LABEL_48:
    v8 = v4;
LABEL_49:
    v25 = a3[1];
    if (v8 >= v25)
    {
      goto LABEL_93;
    }

    if (__OFSUB__(v8, v7))
    {
      goto LABEL_177;
    }

    if (v8 - v7 >= a4)
    {
LABEL_93:
      if (v8 < v7)
      {
        goto LABEL_176;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2172B2310(0, *(v6 + 2) + 1, 1, v6);
        v6 = v82;
      }

      v42 = *(v6 + 2);
      v41 = *(v6 + 3);
      v43 = v42 + 1;
      v95 = v8;
      if (v42 >= v41 >> 1)
      {
        sub_2172B2310(v41 > 1, v42 + 1, 1, v6);
        v6 = v83;
      }

      *(v6 + 2) = v43;
      v44 = v6 + 32;
      v45 = &v6[16 * v42 + 32];
      *v45 = v7;
      *(v45 + 1) = v95;
      v97 = *a1;
      if (!*a1)
      {
        goto LABEL_186;
      }

      if (!v42)
      {
LABEL_142:
        v4 = a3[1];
        v5 = v95;
        if (v95 >= v4)
        {
          goto LABEL_146;
        }

        continue;
      }

      while (1)
      {
        v46 = v43 - 1;
        v47 = &v44[16 * v43 - 16];
        v48 = &v6[16 * v43];
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v49 = *(v6 + 4);
          v50 = *(v6 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_113:
          if (v52)
          {
            goto LABEL_163;
          }

          v64 = *v48;
          v63 = *(v48 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_166;
          }

          v68 = *(v47 + 1);
          v69 = v68 - *v47;
          if (__OFSUB__(v68, *v47))
          {
            goto LABEL_169;
          }

          if (__OFADD__(v66, v69))
          {
            goto LABEL_171;
          }

          if (v66 + v69 >= v51)
          {
            if (v51 < v69)
            {
              v46 = v43 - 2;
            }

            goto LABEL_135;
          }

          goto LABEL_128;
        }

        if (v43 < 2)
        {
          goto LABEL_165;
        }

        v71 = *v48;
        v70 = *(v48 + 1);
        v59 = __OFSUB__(v70, v71);
        v66 = v70 - v71;
        v67 = v59;
LABEL_128:
        if (v67)
        {
          goto LABEL_168;
        }

        v73 = *v47;
        v72 = *(v47 + 1);
        v59 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v59)
        {
          goto LABEL_170;
        }

        if (v74 < v66)
        {
          goto LABEL_142;
        }

LABEL_135:
        if (v46 - 1 >= v43)
        {
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
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
          goto LABEL_180;
        }

        if (!*a3)
        {
          goto LABEL_183;
        }

        v78 = v6;
        v79 = &v44[16 * v46 - 16];
        v7 = *v79;
        v80 = &v44[16 * v46];
        v6 = *(v80 + 1);
        sub_217716EB0((*a3 + *v79), (*a3 + *v80), &v6[*a3], v97);
        if (v100)
        {
          goto LABEL_156;
        }

        if (v6 < v7)
        {
          goto LABEL_158;
        }

        v81 = *(v78 + 2);
        if (v46 > v81)
        {
          goto LABEL_159;
        }

        *v79 = v7;
        v79[1] = v6;
        if (v46 >= v81)
        {
          goto LABEL_160;
        }

        v43 = v81 - 1;
        memmove(&v44[16 * v46], v80 + 16, 16 * (v81 - 1 - v46));
        v6 = v78;
        *(v78 + 2) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_142;
        }
      }

      v53 = &v44[16 * v43];
      v54 = *(v53 - 8);
      v55 = *(v53 - 7);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_161;
      }

      v58 = *(v53 - 6);
      v57 = *(v53 - 5);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_162;
      }

      v60 = *(v48 + 1);
      v61 = v60 - *v48;
      if (__OFSUB__(v60, *v48))
      {
        goto LABEL_164;
      }

      v59 = __OFADD__(v51, v61);
      v62 = v51 + v61;
      if (v59)
      {
        goto LABEL_167;
      }

      if (v62 >= v56)
      {
        v76 = *v47;
        v75 = *(v47 + 1);
        v59 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v59)
        {
          goto LABEL_175;
        }

        if (v51 < v77)
        {
          v46 = v43 - 2;
        }

        goto LABEL_135;
      }

      goto LABEL_113;
    }

    break;
  }

  v26 = v7 + a4;
  if (__OFADD__(v7, a4))
  {
    goto LABEL_179;
  }

  if (v26 >= v25)
  {
    v26 = a3[1];
  }

  if (v26 < v7)
  {
LABEL_180:
    __break(1u);
    goto LABEL_181;
  }

  if (v8 == v26)
  {
    goto LABEL_93;
  }

  v94 = v6;
  v96 = v26;
  v27 = *a3;
  v28 = (*a3 + v8);
  v91 = v7;
  v29 = v7 - v8;
LABEL_58:
  v30 = v8;
  v31 = *(v27 + v8);
  v32 = v29;
  v33 = v28;
  while (1)
  {
    v34 = 0xEB00000000736F6DLL;
    v35 = 0x74612D79626C6F64;
    switch(v31)
    {
      case 1:
        break;
      case 2:
        v35 = 0x75612D79626C6F64;
        v34 = 0xEB000000006F6964;
        break;
      case 3:
        v34 = 0xE800000000000000;
        v35 = 0x7373656C73736F6CLL;
        break;
      case 4:
        v35 = 0x6C2D7365722D6968;
        v34 = 0xEF7373656C73736FLL;
        break;
      case 5:
        v35 = 0x74732D7973736F6CLL;
        v34 = 0xEC0000006F657265;
        break;
      case 6:
        v35 = 0x2D6C616974617073;
        v34 = 0xED00006F69647561;
        break;
      case 7:
        v34 = 0xE700000000000000;
        v35 = 0x6C616974617073;
        break;
      case 8:
        v35 = 0xD000000000000013;
        v34 = 0x80000002177AA7E0;
        break;
      case 9:
        v34 = 0xE500000000000000;
        v35 = 0x736F6D7461;
        break;
      case 10:
        v34 = 0xE800000000000000;
        v35 = 0x646E756F72727573;
        break;
      default:
        v35 = 0xD000000000000014;
        v34 = 0x80000002177AA770;
        break;
    }

    v36 = 0x74612D79626C6F64;
    v37 = 0xEB00000000736F6DLL;
    switch(*(v33 - 1))
    {
      case 1:
        break;
      case 2:
        v36 = 0x75612D79626C6F64;
        v37 = 0xEB000000006F6964;
        break;
      case 3:
        v37 = 0xE800000000000000;
        v36 = 0x7373656C73736F6CLL;
        break;
      case 4:
        v36 = 0x6C2D7365722D6968;
        v37 = 0xEF7373656C73736FLL;
        break;
      case 5:
        v36 = 0x74732D7973736F6CLL;
        v37 = 0xEC0000006F657265;
        break;
      case 6:
        v36 = 0x2D6C616974617073;
        v37 = 0xED00006F69647561;
        break;
      case 7:
        v37 = 0xE700000000000000;
        v36 = 0x6C616974617073;
        break;
      case 8:
        v36 = 0xD000000000000013;
        v37 = 0x80000002177AA7E0;
        break;
      case 9:
        v37 = 0xE500000000000000;
        v36 = 0x736F6D7461;
        break;
      case 10:
        v37 = 0xE800000000000000;
        v36 = 0x646E756F72727573;
        break;
      default:
        v36 = 0xD000000000000014;
        v37 = 0x80000002177AA770;
        break;
    }

    if (v35 == v36 && v34 == v37)
    {

LABEL_91:
      v8 = v30 + 1;
      ++v28;
      --v29;
      if (v30 + 1 == v96)
      {
        v8 = v96;
        v6 = v94;
        v7 = v91;
        goto LABEL_93;
      }

      goto LABEL_58;
    }

    v39 = sub_217753058();

    if ((v39 & 1) == 0)
    {
      goto LABEL_91;
    }

    if (!v27)
    {
      break;
    }

    v31 = *v33;
    *v33 = *(v33 - 1);
    *--v33 = v31;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_91;
    }
  }

  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
}

uint64_t sub_217716EB0(char *a1, char *a2, unsigned __int8 *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (a2 - a1 < a3 - a2)
  {
    sub_217504024(a1, a2 - a1, a4);
    v10 = &v4[v8];
    while (1)
    {
      v11 = v4 >= v10 || v6 >= v5;
      if (v11)
      {
        v6 = v7;
        goto LABEL_42;
      }

      v12 = *v4;
      v26 = *v6;
      v25 = v12;
      if (static CloudAudioTrait.< infix(_:_:)(&v26, &v25))
      {
        v11 = v7 >= v6;
        v13 = v6++;
        if (!v11 || v7 >= v6)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v11 = v7 >= v4;
        v13 = v4++;
        if (!v11 || v7 >= v4)
        {
LABEL_18:
          *v7 = *v13;
        }
      }

      ++v7;
    }
  }

  sub_217504024(a2, a3 - a2, a4);
  v10 = &v4[v9];
LABEL_21:
  v16 = v6 - 1;
  --v5;
  while (v10 > v4 && v6 > v7)
  {
    v18 = *v16;
    v28 = *(v10 - 1);
    v27 = v18;
    v19 = static CloudAudioTrait.< infix(_:_:)(&v28, &v27);
    v20 = v5 + 1;
    if (v19)
    {
      v22 = v20 < v6 || v5 >= v6;
      --v6;
      if (v22)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_21;
    }

    if (v20 < v10 || v5 >= v10)
    {
      *v5 = *(v10 - 1);
    }

    --v5;
    --v10;
  }

LABEL_42:
  if (v6 != v4 || v6 >= v10)
  {
    memmove(v6, v4, v10 - v4);
  }

  return 1;
}

char *sub_217717058(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24EB8, &unk_21775A1D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t dispatch thunk of LegacyModelExtendedLibraryRequestable.extendedAugmentedItem<A>(for:propertyProviderBasedInitializableType:attributeProperties:relationshipProperties:metadataProperties:options:library:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_7_94();
  v17 = (*(a13 + 24) + **(a13 + 24));
  v14 = swift_task_alloc();
  *(v13 + 16) = v14;
  *v14 = v13;
  v14[1] = sub_217514FAC;
  v15 = OUTLINED_FUNCTION_2_141();

  return v17(v15);
}

uint64_t dispatch thunk of LegacyModelExtendedLibraryRequestable.extendedAugmentedItemWithInternalRelationships<A>(for:propertyProviderBasedInitializableType:relationshipProperties:library:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_7_94();
  v14 = (*(a10 + 32) + **(a10 + 32));
  v11 = swift_task_alloc();
  *(v10 + 16) = v11;
  *v11 = v10;
  v11[1] = sub_21769BDC0;
  v12 = OUTLINED_FUNCTION_2_141();

  return v14(v12);
}

uint64_t sub_217717458(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_2177174CC(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 64) + 40);
  v3 = *(a2 + 16);
  *v2 = *a2;
  *(v2 + 16) = v3;
  *(v2 + 32) = *(a2 + 32);
  return swift_continuation_throwingResume();
}

uint64_t sub_2177174F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return swift_continuation_throwingResume();
}

id sub_217717554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_217751F18();

  if (a4)
  {
    v7 = sub_217751F18();
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_opt_self();
  v9 = sub_217751D88();
  v10 = [v8 artworkCatalogWithDataSourceShortDescription:v6 dataSourceIdentifier:v7 tokenParameters:{v9, }];

  return v10;
}

uint64_t sub_21771763C(void *a1, SEL *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = [a1 *a2];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = sub_217751D98();

  return v7;
}

id sub_2177176A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = [a1 musicKit_existingColorAnalysis];
  if (result)
  {
    v4 = result;
    v5 = [result musicKit_backgroundColor];
    v6 = [v4 musicKit_primaryTextColor];
    v7 = [v4 musicKit_secondaryTextColor];
    v8 = [v4 musicKit_tertiaryTextColor];
    result = swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v5 = 1;
  }

  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  return result;
}

uint64_t sub_2177177B4()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2177178B4;
  v2 = swift_continuation_init();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D908, &qword_21779DD28);
  OUTLINED_FUNCTION_0_162(v3);
  v0[11] = 1107296256;
  v0[12] = sub_217717A2C;
  v0[13] = &block_descriptor_6_1;
  v0[14] = v2;
  [v1 musicKit:v0 + 10 requestImageDataWithCompletion:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2177178B4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_2177179C4;
  }

  else
  {
    v2 = sub_217353800;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2177179C4()
{
  OUTLINED_FUNCTION_30_0();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_217717A2C(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_217717458(v5, a3);
  }

  v7 = a2;
  v8 = sub_217751768();
  v10 = v9;

  return sub_2177174F8(v5, v8, v10);
}

uint64_t sub_217717AAC(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217717AC0()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_217717BC0;
  v2 = swift_continuation_init();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D900, &qword_21779DD18);
  OUTLINED_FUNCTION_0_162(v3);
  v0[11] = 1107296256;
  v0[12] = sub_217717DA0;
  v0[13] = &block_descriptor_19;
  v0[14] = v2;
  [v1 musicKit:v0 + 10 requestColorAnalysisWithCompletionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_217717BC0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_217717C98, 0, 0);
}

uint64_t sub_217717C98()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = [*(v0 + 144) musicKit_backgroundColor];
    v3 = [v1 musicKit_primaryTextColor];
    v4 = [v1 musicKit_secondaryTextColor];
    v5 = [v1 musicKit_tertiaryTextColor];
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v3 = 0;
    v2 = 0;
  }

  v6 = *(v0 + 152);
  *v6 = v2;
  v6[1] = v3;
  v6[2] = v4;
  v6[3] = v5;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_217717DA0(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  swift_unknownObjectRetain();
  return sub_217717530(v3, a2, MEMORY[0x277D85A80]);
}

id sub_217717DF8(void *a1)
{
  v1 = [a1 musicKit_artworkCatalogWithFittingSize_];

  return v1;
}

uint64_t sub_217717E2C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = swift_getObjectType();
  *a2 = a1;

  return swift_unknownObjectRetain();
}

id (*sub_217717F68(void *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[2] = *v1;
  [v3 musicKit_fittingSize];
  *a1 = v4;
  a1[1] = v5;
  return sub_217717FBC;
}

id sub_217717FD4@<X0>(void *a1@<X8>)
{
  result = sub_217717DF8(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_217718000()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_217718094;

  return sub_2177177A0(v2);
}

uint64_t sub_217718094()
{
  OUTLINED_FUNCTION_30_0();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;

  v10 = *(v6 + 8);
  if (!v0)
  {
    v8 = v5;
    v9 = v3;
  }

  return v10(v8, v9);
}

uint64_t sub_217718198(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2172AC7B0;

  return sub_217717AAC(a1, v4);
}

uint64_t MusicCatalogResourceResponse.items.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for MusicItemCollection(0, *(a1 + 16), *(a1 + 24), a2);
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, v3, v5);
}

void MusicCatalogResourceResponse<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for MusicItemCollection(0, *(a2 + 16), *(a2 + 24), a4);

  MusicItemCollection<>.hash(into:)(a1, v5);
}

uint64_t MusicCatalogResourceResponse<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_2177531E8();
  MusicCatalogResourceResponse<>.hash(into:)(v6, a1, a2, v4);
  return sub_217753238();
}

uint64_t sub_217718398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_2177531E8();
  MusicCatalogResourceResponse<>.hash(into:)(v7, a2, v4, v5);
  return sub_217753238();
}

uint64_t MusicCatalogResourceResponse<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_2171FF30C(a1, v26);
  CloudResourceCollection<A>.init(from:)(v26, a2, a4, v11, v12, v13, v14, v15, v25[0], v25[1], v25[2], v25[3], v25[4], v26[0], v26[1], v26[2], v26[3], v26[4], v26[5], v26[6]);
  if (!v5)
  {
    v18 = type metadata accessor for CloudResourceCollection(0, a2, v16, v17);
    v19 = *(v18 - 8);
    v28 = a3;
    v20 = v19;
    (*(v19 + 16))(v26, v27, v18);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v21 = Decoder.sharedRelatedItemStore.getter();
    v22 = a1[3];
    v23 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v22);
    Decoder.dataRequestConfiguration.getter(v22, v23);
    sub_2175AFAC0(v26, v21, v25, &type metadata for AnyMusicDataRequestConfiguration, &protocol witness table for AnyMusicDataRequestConfiguration, a5);
    (*(v20 + 8))(v27, v18);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicCatalogResourceResponse<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  Encoder.dataRequestConfiguration.getter(v7, v8);
  sub_2175AFC7C(a2, &protocol witness table for AnyMusicDataRequestConfiguration, v20);
  result = sub_21733AB9C(v19);
  if (!v3)
  {
    v12 = type metadata accessor for CloudResourceCollection(0, *(a2 + 16), v10, v11);
    CloudResourceCollection<A>.encode(to:)(a1, v12, a3, v13, v14, v15, v16, v17, v18, v19[0], v19[1], v19[2], v19[3], v19[4], v20[0], v20[1], v20[2], v20[3], v20[4], v20[5]);
    return (*(*(v12 - 8) + 8))(v20, v12);
  }

  return result;
}

unint64_t sub_2177186D0(Swift::Bool a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  to._countAndFlagsBits = 0;
  to._object = 0xE000000000000000;
  type metadata accessor for MusicItemCollection(0, *(a2 + 16), *(a2 + 24), a4);
  swift_getWitnessTable();
  v5._countAndFlagsBits = 0x736D657469;
  v5._object = 0xE500000000000000;
  RandomAccessCollection.musicKit_appendDescription(label:forDebugging:to:)(v5, a1, &to);
  sub_217752AA8();

  v6 = sub_217753348();
  MEMORY[0x21CEA23B0](v6);

  MEMORY[0x21CEA23B0](10302, 0xE200000000000000, v7);
  v8 = (to._object >> 56) & 0xF;
  if ((to._object & 0x2000000000000000) == 0)
  {
    v8 = to._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    MEMORY[0x21CEA23B0]();

    MEMORY[0x21CEA23B0](10, 0xE100000000000000, v9);
  }

  else
  {
  }

  MEMORY[0x21CEA23B0](41, 0xE100000000000000, v10);
  return 0xD00000000000001DLL;
}

uint64_t sub_217718894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2177188E8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  sub_217751DE8();
  result = sub_217586880(v5, v2, a1, a2);
  if (result)
  {
    if (qword_27CB23EE0 != -1)
    {
      swift_once();
    }

    return sub_21773157C();
  }

  return result;
}

uint64_t sub_217718988()
{

  return v0;
}

uint64_t sub_2177189B0()
{
  sub_217718988();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_217718A08()
{
  *(v0 + 16) = 0;
  type metadata accessor for UnfairLock();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  *(v0 + 40) = v1;
  return v0;
}

uint64_t sub_217718A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217718B20(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217718AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217718B20(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

unint64_t sub_217718B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D918;
  if (!qword_27CB2D918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D918);
  }

  return result;
}

uint64_t sub_217718BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217718CB0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217718C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217718CB0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

unint64_t sub_217718CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D928;
  if (!qword_27CB2D928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D928);
  }

  return result;
}

uint64_t sub_217718D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217718DE0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217718D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217718DE0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

unint64_t sub_217718DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D938;
  if (!qword_27CB2D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D938);
  }

  return result;
}

uint64_t sub_217718E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21771900C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217718E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21771900C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void sub_217718F10()
{
  OUTLINED_FUNCTION_171();
  v1 = v0;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_161_3();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v1();
  sub_2177532F8();
  v7 = OUTLINED_FUNCTION_5_3();
  v8(v7);
  OUTLINED_FUNCTION_170();
}

unint64_t sub_21771900C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D948;
  if (!qword_27CB2D948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D948);
  }

  return result;
}

uint64_t CloudPersonalRecommendation.Content.id.getter()
{
  v1 = type metadata accessor for CloudPersonalRecommendation.Item(0);
  v2 = OUTLINED_FUNCTION_45_0(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25_52();
  v3 = type metadata accessor for CloudPersonalRecommendation.Content(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v7 = (v6 - v5);
  sub_217269C38(v0, v6 - v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_3_131();
    sub_21771A720(v7, v0);
    v8 = CloudPersonalRecommendation.Item.id.getter();
    sub_217719560(v0, v3);
  }

  else
  {
    memcpy(v10, v7, sizeof(v10));
    v8 = v10[0];
    sub_217751DE8();
    sub_217269D5C(v10);
  }

  return v8;
}

uint64_t type metadata accessor for CloudPersonalRecommendation.Content(uint64_t a1)
{
  result = qword_27CB2D9D0;
  if (!qword_27CB2D9D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL static CloudPersonalRecommendation.Content.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CloudPersonalRecommendation.Item(0);
  v6 = OUTLINED_FUNCTION_45_0(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  type metadata accessor for CloudPersonalRecommendation.Content(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v10);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v13);
  v15 = &v25[-v14 - 8];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D950, &qword_21779DFC8);
  v17 = OUTLINED_FUNCTION_45_0(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_25_52();
  v19 = *(v18 + 56);
  sub_217269C38(a1, v2);
  sub_217269C38(a2, v2 + v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217269C38(v2, v12);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_3_131();
      sub_21771A720(v2 + v19, v9);
      static CloudPersonalRecommendation.Item.== infix(_:_:)();
      v21 = v20;
      sub_217719560(v9, v15);
      sub_217719560(v12, v15);
LABEL_9:
      OUTLINED_FUNCTION_0_163();
      sub_217719560(v2, v22);
      return v21;
    }

    sub_217719560(v12, type metadata accessor for CloudPersonalRecommendation.Item);
  }

  else
  {
    sub_217269C38(v2, v15);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      memcpy(v25, (v2 + v19), sizeof(v25));
      v21 = static CloudPersonalRecommendation.== infix(_:_:)();
      sub_217269D5C(v25);
      sub_217269D5C(v15);
      goto LABEL_9;
    }

    sub_217269D5C(v15);
  }

  sub_2171F0738(v2, &qword_27CB2D950, &qword_21779DFC8);
  return 0;
}

uint64_t sub_217719560(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_43();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t CloudPersonalRecommendation.Content.hash(into:)(const void *a1)
{
  v3 = type metadata accessor for CloudPersonalRecommendation.Item(0);
  v4 = OUTLINED_FUNCTION_45_0(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  type metadata accessor for CloudPersonalRecommendation.Content(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25_52();
  sub_217269C38(v1, v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_3_131();
    sub_21771A720(v1, v7);
    MEMORY[0x21CEA3550](1);
    CloudPersonalRecommendation.Item.hash(into:)();
    return sub_217719560(v7, v1);
  }

  else
  {
    memcpy(v10, v1, sizeof(v10));
    MEMORY[0x21CEA3550](0);
    CloudPersonalRecommendation.hash(into:)(a1);
    return sub_217269D5C(v10);
  }
}

uint64_t CloudPersonalRecommendation.Content.hashValue.getter()
{
  sub_2177531E8();
  CloudPersonalRecommendation.Content.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_217719790(uint64_t a1)
{
  sub_2177531E8();
  CloudPersonalRecommendation.Content.hash(into:)(v2);
  return sub_217753238();
}

uint64_t CloudPersonalRecommendation.Content.decodeRawAttributes(from:)()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_101();
  type metadata accessor for CloudPersonalRecommendation.Content(v3);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v7 = (v6 - v5);
  sub_217269C38(v0, v6 - v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_0_163();
    sub_217719560(v7, v8);
    sub_2171FF30C(v0, v14);
    sub_217385D80();
    if (!v1)
    {
      return v9;
    }
  }

  else
  {
    memcpy(v14, v7, sizeof(v14));
    sub_2171FF30C(v0, &v13);
    memcpy(__dst, &v14[16], sizeof(__dst));
    sub_21733C64C(__dst, &v12);
    sub_217385C20();
    v2 = v10;
    sub_217269D5C(v14);
  }

  return v2;
}

uint64_t CloudPersonalRecommendation.Content.decodeRawRelationships(from:)()
{
  v2 = OUTLINED_FUNCTION_5_112();
  type metadata accessor for CloudPersonalRecommendation.Content(v2);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  sub_217751DC8();
  v4 = OUTLINED_FUNCTION_5_3();
  sub_217269C38(v4, v5);
  if (OUTLINED_FUNCTION_27_54() == 1)
  {
    OUTLINED_FUNCTION_0_163();
    sub_217719560(v1, v6);
  }

  else
  {
    OUTLINED_FUNCTION_24_54(v17);
    sub_217719A94(&v18, v16);
    if (v16[2] == 1)
    {
      sub_217269D5C(v17);
      sub_2171F0738(v16, &qword_27CB244B0, &unk_21776DB80);
    }

    else
    {

      sub_2171F0738(v16, &qword_27CB244B0, &unk_21776DB80);
      sub_2171FF30C(v0, v16);
      swift_beginAccess();
      v7 = sub_217751DE8();
      sub_2173838E4(v7);
      OUTLINED_FUNCTION_787();

      OUTLINED_FUNCTION_17_53();
      Dictionary<>.init(from:skippingValuesFor:)(v8, v9, v10, v11, v12, v13, v14);
      OUTLINED_FUNCTION_98();
      sub_217269D5C(v17);
    }
  }

  return OUTLINED_FUNCTION_9_97();
}

uint64_t sub_217719A94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244B0, &unk_21776DB80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CloudPersonalRecommendation.Content.decodeRawAssociations(from:)()
{
  v2 = OUTLINED_FUNCTION_5_112();
  type metadata accessor for CloudPersonalRecommendation.Content(v2);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  sub_217751DC8();
  v4 = OUTLINED_FUNCTION_5_3();
  sub_217269C38(v4, v5);
  if (OUTLINED_FUNCTION_27_54() == 1)
  {
    OUTLINED_FUNCTION_0_163();
    sub_217719560(v1, v6);
  }

  else
  {
    OUTLINED_FUNCTION_24_54(v25);
    if (v26)
    {
      sub_217269D5C(v25);
    }

    else
    {

      sub_2171FF30C(v0, &v21);
      if (qword_27CB23E60 != -1)
      {
        swift_once();
      }

      sub_217383748(qword_27CB2CDC8, v7, v8, v9, v10, v11, v12, v13, v21, v22, v23, v24, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v25[9], v25[10], v25[11], v25[12]);
      Dictionary<>.init(from:skippingValuesFor:)(&v21, v14, v15, v16, v17, v18, v19);
      OUTLINED_FUNCTION_98();
      sub_217269D5C(v25);
    }
  }

  return OUTLINED_FUNCTION_9_97();
}

void CloudPersonalRecommendation.Content.decodeRawMetadata(from:skippingValuesFor:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  type metadata accessor for CloudPersonalRecommendation.Content(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_161_3();
  sub_217751DC8();
  OUTLINED_FUNCTION_26_48();
  if (OUTLINED_FUNCTION_25_63() == 1)
  {
    OUTLINED_FUNCTION_0_163();
    sub_217719560(v0, v4);
  }

  else
  {
    OUTLINED_FUNCTION_21_54();
    if (v7 != 1)
    {

      sub_2171FF30C(v2, &v5);
      sub_21733C6A8(v6[36], v6[37], v7);
      sub_217751DE8();
      sub_217387F34();
    }

    sub_217269D5C(v6);
  }

  OUTLINED_FUNCTION_8_93();
  OUTLINED_FUNCTION_170();
}

uint64_t CloudPersonalRecommendation.Content.mergeAttributes(with:for:)(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_101();
  type metadata accessor for CloudPersonalRecommendation.Content(v5);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  v7 = OUTLINED_FUNCTION_5_3();
  sub_217269C38(v7, v8);
  if (OUTLINED_FUNCTION_27_54() == 1)
  {
    OUTLINED_FUNCTION_0_163();
    sub_217719560(v3, v9);
    sub_2171FF30C(a2, v17);
    sub_2174D4624(v17);
    if (!v2)
    {
      OUTLINED_FUNCTION_787();
      sub_217751DE8();
      OUTLINED_FUNCTION_17_53();
      sub_2174D37FC(v10, v11);
      OUTLINED_FUNCTION_98();
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_54(v17);
    memcpy(__dst, (v3 + 16), sizeof(__dst));
    sub_2171FF30C(a2, &v16);
    sub_21733C64C(__dst, &v15);
    sub_2174D4658();
    if (v2)
    {
      sub_217269D5C(v17);
    }

    else
    {
      OUTLINED_FUNCTION_787();
      sub_217751DE8();
      OUTLINED_FUNCTION_17_53();
      sub_2174D37FC(v12, v13);
      OUTLINED_FUNCTION_98();
      sub_217269D5C(v17);
    }
  }

  return OUTLINED_FUNCTION_9_97();
}

void CloudPersonalRecommendation.Content.mergeRelationships(with:for:)()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_10_78();
  v2 = v1;
  type metadata accessor for CloudPersonalRecommendation.Content(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_161_3();
  if (*(v2 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_26_48();
  if (OUTLINED_FUNCTION_25_63() == 1)
  {
    OUTLINED_FUNCTION_0_163();
    sub_217719560(v0, v4);
  }

  else
  {
    memcpy(v7, v0, sizeof(v7));
    sub_217719A94(&v7[152], v5);
    if (v5[2] == 1)
    {
      sub_217269D5C(v7);
      sub_2171F0738(v5, &qword_27CB244B0, &unk_21776DB80);
    }

    else
    {

      memcpy(v6, v5, sizeof(v6));
      sub_217388B28();
      OUTLINED_FUNCTION_98();
      sub_21728373C(v6);
      sub_217269D5C(v7);
    }
  }

  OUTLINED_FUNCTION_170();
}

void CloudPersonalRecommendation.Content.mergeAssociations(with:for:)()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_10_78();
  v4 = OUTLINED_FUNCTION_101();
  type metadata accessor for CloudPersonalRecommendation.Content(v4);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_161_3();
  if (*(v0 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_26_48();
  if (OUTLINED_FUNCTION_25_63() == 1)
  {
    OUTLINED_FUNCTION_0_163();
    sub_217719560(v3, v6);
  }

  else
  {
    OUTLINED_FUNCTION_21_54();
    if ((v10[280] & 1) == 0)
    {

      sub_2171FF30C(v2, v9);
      sub_2174D5898(v9);
      if (!v1)
      {
        OUTLINED_FUNCTION_787();
        sub_217751DE8();
        OUTLINED_FUNCTION_17_53();
        sub_2174D37FC(v7, v8);
      }
    }

    sub_217269D5C(v10);
  }

  OUTLINED_FUNCTION_8_93();
  OUTLINED_FUNCTION_170();
}

void CloudPersonalRecommendation.Content.mergeMetadata(with:for:)()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_10_78();
  v4 = OUTLINED_FUNCTION_101();
  type metadata accessor for CloudPersonalRecommendation.Content(v4);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_161_3();
  if (*(v0 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_26_48();
  if (OUTLINED_FUNCTION_25_63() == 1)
  {
    OUTLINED_FUNCTION_0_163();
    sub_217719560(v3, v6);
  }

  else
  {
    OUTLINED_FUNCTION_21_54();
    v7 = v16;
    if (v16 != 1)
    {
      v9 = v14;
      v8 = v15;
      sub_2172E1074(v14, v15, v16);

      sub_2171FF30C(v2, v12);
      sub_2174D6200(v9, v8, v7, v12);
      if (!v1)
      {
        OUTLINED_FUNCTION_787();
        sub_217751DE8();
        OUTLINED_FUNCTION_17_53();
        sub_2174D37FC(v10, v11);
      }
    }

    sub_217269D5C(&v13);
  }

  OUTLINED_FUNCTION_8_93();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_21771A33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21771A6CC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21771A378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21771A6CC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudPersonalRecommendation.Content.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v25 = v4;
  v5 = type metadata accessor for CloudPersonalRecommendation.Item(0);
  v6 = OUTLINED_FUNCTION_45_0(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D958, &qword_21779DFD0);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v7);
  type metadata accessor for CloudPersonalRecommendation.Content(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v11 = (v10 - v9);
  v28 = v3;
  v12 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_21771A6CC(v12, v13, v14);
  v15 = sub_2177532C8();
  if (!v0)
  {
    sub_21733BE84(v15, v16, v17);
    sub_217752EA8();
    if (qword_27CB23E68 != -1)
    {
      swift_once();
    }

    v18 = static Array<A>.~= infix(_:_:)(off_27CB2CDD0, v27);

    if (v18)
    {
      sub_2171FF30C(v28, &v26);
      CloudPersonalRecommendation.init(from:)();
      v19 = OUTLINED_FUNCTION_4_139();
      v20(v19);
      v21 = v25;
      v22 = v11;
      memcpy(v11, v27, 0x138uLL);
    }

    else
    {
      sub_2171FF30C(v28, v27);
      CloudPersonalRecommendation.Item.init(from:)();
      v23 = OUTLINED_FUNCTION_4_139();
      v24(v23);
      v21 = v25;
      v22 = v11;
      sub_21771A720(v1, v11);
    }

    swift_storeEnumTagMultiPayload();
    sub_21771A720(v22, v21);
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  OUTLINED_FUNCTION_170();
}

unint64_t sub_21771A6CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D960;
  if (!qword_27CB2D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D960);
  }

  return result;
}

uint64_t sub_21771A720(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_101();
  v5(v4);
  OUTLINED_FUNCTION_43();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t CloudPersonalRecommendation.Content.encode(to:)()
{
  v3 = OUTLINED_FUNCTION_5_112();
  v4 = type metadata accessor for CloudPersonalRecommendation.Item(v3);
  v5 = OUTLINED_FUNCTION_45_0(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25_52();
  type metadata accessor for CloudPersonalRecommendation.Content(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  v7 = OUTLINED_FUNCTION_5_3();
  sub_217269C38(v7, v8);
  if (OUTLINED_FUNCTION_27_54() == 1)
  {
    sub_21771A720(v2, v0);
    CloudPersonalRecommendation.Item.encode(to:)();
    return sub_217719560(v0, type metadata accessor for CloudPersonalRecommendation.Item);
  }

  else
  {
    OUTLINED_FUNCTION_24_54(&v18);
    CloudPersonalRecommendation.encode(to:)(v1, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
    return sub_217269D5C(&v18);
  }
}

unint64_t sub_21771A8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D968;
  if (!qword_27CB2D968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D968);
  }

  return result;
}

unint64_t sub_21771A904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D970;
  if (!qword_27CB2D970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D970);
  }

  return result;
}

unint64_t sub_21771A95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D978;
  if (!qword_27CB2D978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D978);
  }

  return result;
}

unint64_t sub_21771A9B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D980;
  if (!qword_27CB2D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D980);
  }

  return result;
}

unint64_t sub_21771AA0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D988;
  if (!qword_27CB2D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D988);
  }

  return result;
}

unint64_t sub_21771AA64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D990;
  if (!qword_27CB2D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D990);
  }

  return result;
}

unint64_t sub_21771AABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D998;
  if (!qword_27CB2D998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D998);
  }

  return result;
}

unint64_t sub_21771AB14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D9A0;
  if (!qword_27CB2D9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D9A0);
  }

  return result;
}

unint64_t sub_21771AB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D9A8;
  if (!qword_27CB2D9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D9A8);
  }

  return result;
}

unint64_t sub_21771ABC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D9B0;
  if (!qword_27CB2D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D9B0);
  }

  return result;
}

unint64_t sub_21771AC1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D9B8;
  if (!qword_27CB2D9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D9B8);
  }

  return result;
}

unint64_t sub_21771AC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D9C0;
  if (!qword_27CB2D9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D9C0);
  }

  return result;
}

unint64_t sub_21771ACCC()
{
  result = qword_27CB2D9C8;
  if (!qword_27CB2D9C8)
  {
    type metadata accessor for CloudPersonalRecommendation.Content(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D9C8);
  }

  return result;
}

uint64_t sub_21771AD54(uint64_t a1)
{
  result = type metadata accessor for CloudPersonalRecommendation.Item(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *sub_21771AE00(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_21771AEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D9E0;
  if (!qword_27CB2D9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D9E0);
  }

  return result;
}

unint64_t sub_21771AF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D9E8;
  if (!qword_27CB2D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D9E8);
  }

  return result;
}

unint64_t sub_21771AFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D9F0;
  if (!qword_27CB2D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D9F0);
  }

  return result;
}

unint64_t sub_21771AFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D9F8;
  if (!qword_27CB2D9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D9F8);
  }

  return result;
}

unint64_t sub_21771B050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DA00;
  if (!qword_27CB2DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DA00);
  }

  return result;
}

unint64_t sub_21771B0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DA08;
  if (!qword_27CB2DA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DA08);
  }

  return result;
}

unint64_t sub_21771B100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DA10;
  if (!qword_27CB2DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DA10);
  }

  return result;
}

unint64_t sub_21771B158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DA18;
  if (!qword_27CB2DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DA18);
  }

  return result;
}

unint64_t sub_21771B1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DA20;
  if (!qword_27CB2DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DA20);
  }

  return result;
}

unint64_t sub_21771B208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DA28;
  if (!qword_27CB2DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DA28);
  }

  return result;
}

unint64_t sub_21771B260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DA30;
  if (!qword_27CB2DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DA30);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_56(uint64_t a1)
{

  return sub_217752D08();
}

void *OUTLINED_FUNCTION_21_54()
{

  return memcpy((v0 + 40), v1, 0x138uLL);
}

uint64_t OUTLINED_FUNCTION_26_48()
{

  return sub_217269C38(v1, v0);
}

uint64_t sub_21771B384(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_21771B3DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21779E780;
  swift_getKeyPath("8]>e");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DA40, &qword_21779E930);
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_14_7();
  *(v0 + 32) = sub_2173836F4(v1);
  swift_getKeyPath(byte_21779E938);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DA48, &qword_21779E960);
  swift_allocObject();
  v2 = OUTLINED_FUNCTION_14_7();
  *(v0 + 40) = sub_2173836F4(v2);
  swift_getKeyPath(byte_21779E968);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DA50, &qword_21779E990);
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_14_7();
  *(v0 + 48) = sub_2173836F4(v3);
  swift_getKeyPath(byte_21779E998);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DA58, &qword_21779E9C0);
  swift_allocObject();
  v4 = OUTLINED_FUNCTION_14_7();
  *(v0 + 56) = sub_217383700(v4);
  KeyPath = swift_getKeyPath(byte_21779E9C8);
  v6 = sub_21738291C(KeyPath, 33, 25);

  *(v0 + 64) = v6;
  v7 = swift_getKeyPath("x\\>e");
  v8 = sub_217382E10(v7, 33, 29, 11);

  *(v0 + 72) = v8;
  swift_getKeyPath("X\\>e");
  v9 = sub_21738272C();

  *(v0 + 80) = v9;
  qword_27CB8A310 = v0;
  return result;
}

uint64_t sub_21771B5AC(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_21771B604(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t sub_21771B65C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_21771B6B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 40))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_21771B70C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 48))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_21771B764@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 56))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_21771B7BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177643B0;
  KeyPath = swift_getKeyPath("@^>e");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DA38, &qword_21779E7E8);
  swift_allocObject();
  *(v0 + 32) = sub_2173836F8(KeyPath, 33, 25);
  swift_getKeyPath(byte_21779E7F0);
  OUTLINED_FUNCTION_2();
  *(v0 + 40) = sub_2173836FC();
  swift_getKeyPath(byte_21779E818);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_12_5();
  *(v0 + 48) = sub_217383704(v2, 7);
  swift_getKeyPath(byte_21779E840);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_12_5();
  *(v0 + 56) = sub_217383704(v3, 23);
  swift_getKeyPath(byte_21779E868);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_12_5();
  *(v0 + 64) = sub_217383704(v4, 24);
  swift_getKeyPath(byte_21779E890);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_12_5();
  *(v0 + 72) = sub_217383704(v5, 25);
  swift_getKeyPath("x]>e");
  OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_12_5();
  *(v0 + 80) = sub_217383704(v6, 28);
  swift_getKeyPath("X]>e");
  OUTLINED_FUNCTION_2();
  v7 = OUTLINED_FUNCTION_12_5();
  result = sub_217383704(v7, 29);
  *(v0 + 88) = result;
  qword_27CB8A318 = v0;
  return result;
}

uint64_t sub_21771B970@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_21771B9C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_21771BA20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 24))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_21771BA80(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t sub_21771BAD8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 40))(v1, v2);
}

uint64_t sub_21771BB30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 48))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_21771BB90@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 56))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_21771BBE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 64))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

unint64_t sub_21771BC48(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26A50, qword_217765A40);
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = v1;
    v3 = qword_280BE6BB0;

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_17_0(&qword_280BE6BB0);
    }

    if (static AnyMusicProperty.== infix(_:_:)(qword_280BE6BB8, v2))
    {
      goto LABEL_8;
    }

    v4 = qword_280BE6B98;

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_14_4(&qword_280BE6B98);
    }

    v5 = static AnyMusicProperty.== infix(_:_:)(qword_280BE6BA0, v2);

    if (v5)
    {
LABEL_8:
      v6 = Song.LegacyModelSongPropertyKey.rawValue.getter();
    }

    else
    {

      return 0;
    }

    return v6;
  }

  else
  {
    OUTLINED_FUNCTION_1_1();
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000030, 0x80000002177AC560);
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
    result = OUTLINED_FUNCTION_7_95("Fatal error");
    __break(1u);
  }

  return result;
}

uint64_t sub_21771BE04@<X0>(char *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26A50, qword_217765A40);
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = qword_280BE6BB0;

    if (v5 != -1)
    {
      OUTLINED_FUNCTION_17_0(&qword_280BE6BB0);
    }

    if (static AnyMusicProperty.== infix(_:_:)(qword_280BE6BB8, v4))
    {

      v7 = 0;
    }

    else
    {
      v8 = qword_280BE6B58;

      if (v8 != -1)
      {
        OUTLINED_FUNCTION_15_7(&qword_280BE6B58);
      }

      v9 = static AnyMusicProperty.== infix(_:_:)(qword_280BE6B60, v4);

      if (v9)
      {

        v7 = 34;
      }

      else
      {
        if (qword_280BE6B98 != -1)
        {
          OUTLINED_FUNCTION_14_4(&qword_280BE6B98);
        }

        v10 = static AnyMusicProperty.== infix(_:_:)(qword_280BE6BA0, v4);

        if (v10)
        {
          v7 = 8;
        }

        else
        {
          v7 = 34;
        }
      }
    }

    *a2 = v7;
  }

  else
  {
    OUTLINED_FUNCTION_1_1();
    sub_217752AA8();
    v11 = OUTLINED_FUNCTION_25_3();
    MEMORY[0x21CEA23B0](v11, 0xE900000000000020);
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    MEMORY[0x21CEA23B0](0xD00000000000001FLL, 0x80000002177AE550);
    result = OUTLINED_FUNCTION_7_95("Fatal error");
    __break(1u);
  }

  return result;
}

uint64_t sub_21771BFFC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 2216) = v3;
  *(v4 + 2208) = a2;
  *(v4 + 2200) = a1;
  *(v4 + 369) = *a3;
  return MEMORY[0x2822009F8](sub_21771C02C, 0, 0);
}

uint64_t sub_21771C02C()
{
  v1 = *(v0 + 2208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26A50, qword_217765A40);
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    OUTLINED_FUNCTION_1_1();
    sub_217752AA8();
    *(v0 + 2168) = v21;
    *(v0 + 2176) = v22;
    v15 = OUTLINED_FUNCTION_25_3();
    MEMORY[0x21CEA23B0](v15, 0xE900000000000020);
    *(v0 + 2192) = v1;
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    MEMORY[0x21CEA23B0](0xD00000000000001FLL, 0x80000002177AE550);
    return OUTLINED_FUNCTION_7_95("Fatal error");
  }

  v3 = v2;
  v4 = qword_280BE6B58;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_15_7(&qword_280BE6B58);
  }

  if ((static AnyMusicProperty.== infix(_:_:)(qword_280BE6B60, v3) & 1) == 0)
  {
    v16 = *(v0 + 2208);
    OUTLINED_FUNCTION_1_1();
    sub_217752AA8();
    *(v0 + 2152) = v21;
    *(v0 + 2160) = v22;
    MEMORY[0x21CEA23B0](0xD00000000000002ELL, 0x80000002177B6440);
    *(v0 + 2184) = v16;
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
    return OUTLINED_FUNCTION_7_95("Fatal error");
  }

  *(v0 + 1040) = 0;
  *(v0 + 1008) = 0u;
  *(v0 + 1024) = 0u;
  *(v0 + 976) = 0u;
  *(v0 + 992) = 0u;
  *(v0 + 944) = 0u;
  *(v0 + 960) = 0u;
  *(v0 + 2224) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_217759C00;
  if (qword_280BE6BB0 != -1)
  {
    OUTLINED_FUNCTION_17_0(&qword_280BE6BB0);
  }

  v6 = *(v0 + 369);
  v7 = *(v0 + 2216);
  v8 = qword_280BE6BB8;
  *(v0 + 2232) = qword_280BE6BB8;
  *(v5 + 32) = v8;

  sub_217283BAC(v7, v0 + 1656);
  sub_217444BD0(v0 + 1656, v5, 1, v6, v9, v10, v11, v12, v17, v18, v19, v20, v21);
  v13 = swift_task_alloc();
  *(v0 + 2240) = v13;
  *v13 = v0;
  v13[1] = sub_21771C344;

  return sub_217445060(v0 + 1712);
}

uint64_t sub_21771C344()
{
  OUTLINED_FUNCTION_10();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  *(v4 + 2248) = v0;

  if (v0)
  {
    v5 = sub_21771C9DC;
  }

  else
  {
    v5 = sub_21771C44C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21771C44C()
{
  v41 = v0;
  v1 = (v0 + 1488);
  v2 = *(v0 + 2232);
  sub_2171F06D8(v0 + 1344, &qword_27CB27D10, &qword_21776BAC8);
  sub_2176CA620(v2, v3, v4, v5, v6, v7, v8, v9, v36, v38, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19]);
  sub_217283C08(v0 + 1712);
  sub_217202078(v0 + 1048, v0 + 736, &qword_27CB25318, &qword_2177657C0);
  if (*(v0 + 824))
  {
    sub_2172CE9F8();
    sub_2171F06D8(v0 + 736, &qword_27CB25388, &unk_21775D410);
    if (*(v0 + 1496))
    {
      v10 = *(v0 + 1504);
      *(v0 + 1544) = *v1;
      *(v0 + 1560) = v10;
      *(v0 + 1576) = *(v0 + 1520);
      *(v0 + 1592) = *(v0 + 1536);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_217759C00;
      if (qword_280BE9430 != -1)
      {
        swift_once();
      }

      v12 = *(v0 + 369);
      v13 = qword_280BE9438;
      *(v0 + 2256) = qword_280BE9438;
      *(v11 + 32) = v13;

      sub_21725CF0C(v0 + 1544, v0 + 1824);
      sub_217444C50(v0 + 1824, v11, 1, v12, v14, v15, v16, v17, v37, v39, __src[0], __src[1], __src[2]);
      v18 = swift_task_alloc();
      *(v0 + 2264) = v18;
      *v18 = v0;
      v18[1] = sub_21771CA6C;

      return sub_2174473A4(v0 + 1768);
    }
  }

  else
  {
    sub_2171F06D8(v0 + 736, &qword_27CB25318, &qword_2177657C0);
    *v1 = 0u;
    *(v0 + 1504) = 0u;
    *(v0 + 1520) = 0u;
    *(v0 + 1536) = 0;
  }

  v20 = v0 + 1152;
  sub_2171F06D8(v0 + 1488, &unk_27CB275E0, &qword_2177589D0);
  if (qword_280BE8358 != -1)
  {
    OUTLINED_FUNCTION_3(&qword_280BE8358);
  }

  v21 = *(v0 + 2216);
  v22 = sub_217751AF8();
  __swift_project_value_buffer(v22, qword_280C02570);
  sub_217283BAC(v21, v0 + 1600);
  sub_217283BAC(v21, v0 + 1432);
  v23 = sub_217751AD8();
  v24 = sub_217752808();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    __src[45] = swift_slowAlloc();
    *v25 = 136446466;
    MusicVideo.description.getter();
    OUTLINED_FUNCTION_12_17();
    sub_217283C08(v0 + 1600);
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_6_23();

    *(v25 + 4) = v0 + 1600;
    *(v25 + 12) = 2082;
    *(v0 + 2016) = &type metadata for MusicVideo;
    *(v0 + 2024) = &protocol witness table for MusicVideo;
    v26 = swift_allocObject();
    *(v0 + 1992) = v26;
    sub_217283BAC(v0 + 1432, v26 + 16);
    v27 = __swift_project_boxed_opaque_existential_1((v0 + 1992), &type metadata for MusicVideo);
    sub_21729C5E8((v27 + 2), v0 + 2032);
    v28 = *(v0 + 2064);
    __swift_project_boxed_opaque_existential_1((v0 + 2032), *(v0 + 2056));
    v29 = OUTLINED_FUNCTION_6_23();
    v30(v29, v28);
    sub_21729C644(v0 + 2032);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1992));
    memcpy((v0 + 16), __src, 0x161uLL);
    sub_217751FA8();
    OUTLINED_FUNCTION_12_17();
    sub_217283C08(v0 + 1432);
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_6_23();

    *(v25 + 14) = &type metadata for MusicVideo;
    OUTLINED_FUNCTION_13_18(&dword_2171EE000, v31, v32, "Unable to resolve <MusicVideo, Artist> relationship because no albums were found for %{public}s [%{public}s]");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_28_4();
    OUTLINED_FUNCTION_28_4();
  }

  else
  {

    sub_217283C08(v0 + 1432);
    sub_217283C08(v0 + 1600);
  }

  v33 = *(v0 + 2200);
  sub_217202078(v0 + 944, v0 + 1152, &qword_27CB25310, &unk_21775D3D0);
  v33[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25398, &unk_21776C4F0);
  v33[4] = &protocol witness table for MusicItemCollection<A>;
  v34 = swift_allocObject();
  *v33 = v34;
  if (*(v0 + 1240))
  {
    memcpy((v34 + 16), (v0 + 1152), 0x68uLL);

    sub_2171F06D8(v0 + 1048, &qword_27CB25318, &qword_2177657C0);
    v20 = v0 + 944;
LABEL_17:
    sub_2171F06D8(v20, &qword_27CB25310, &unk_21775D3D0);
    goto LABEL_18;
  }

  sub_2174AA180(MEMORY[0x277D84F90]);

  sub_2171F06D8(v0 + 1048, &qword_27CB25318, &qword_2177657C0);
  sub_2171F06D8(v0 + 944, &qword_27CB25310, &unk_21775D3D0);
  if (*(v0 + 1240))
  {
    goto LABEL_17;
  }

LABEL_18:
  OUTLINED_FUNCTION_20_0();

  return v35();
}

uint64_t sub_21771C9DC()
{
  OUTLINED_FUNCTION_10();
  sub_2171F06D8(v0 + 1344, &qword_27CB27D10, &qword_21776BAC8);

  sub_2171F06D8(v0 + 944, &qword_27CB25310, &unk_21775D3D0);
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_21771CA6C()
{
  OUTLINED_FUNCTION_10();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  *(v4 + 2272) = v0;

  if (v0)
  {
    v5 = sub_217393E68;
  }

  else
  {
    v5 = sub_21771CB74;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21771CB74()
{
  v26 = v0;
  v1 = (v0 + 144);
  v2 = v0[282];
  sub_2171F06D8((v0 + 157), &qword_27CB26A10, &qword_21776B000);
  sub_2176CA7B4(v2, v3, v4, v5, v6, v7, v8, v9, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v25[9], v25[10], v25[11], v25[12], v25[13], v25[14], v25[15], v25[16], v25[17], v25[18], v25[19], v25[20], v25[21]);
  sub_21725CE44((v0 + 221));
  if (v0[116])
  {
    sub_21725CE44((v0 + 193));
    sub_2171F06D8((v0 + 118), &qword_27CB25310, &unk_21775D3D0);
    memcpy(v0 + 118, v0 + 105, 0x68uLL);
  }

  else
  {
    sub_2171F06D8((v0 + 105), &qword_27CB25310, &unk_21775D3D0);
    if (qword_280BE8358 != -1)
    {
      OUTLINED_FUNCTION_3(&qword_280BE8358);
    }

    v10 = sub_217751AF8();
    __swift_project_value_buffer(v10, qword_280C02570);
    sub_21725CF0C((v0 + 193), (v0 + 235));
    sub_21725CF0C((v0 + 193), (v0 + 242));
    v11 = sub_217751AD8();
    v12 = sub_217752808();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v25[45] = swift_slowAlloc();
      *v13 = 136446466;
      Album.description.getter();
      OUTLINED_FUNCTION_12_17();
      sub_21725CE44((v0 + 235));
      OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_6_23();

      *(v13 + 4) = v0 + 235;
      *(v13 + 12) = 2082;
      v0[262] = &type metadata for Album;
      v0[263] = &protocol witness table for Album;
      v14 = swift_allocObject();
      v0[259] = v14;
      sub_21725CF0C((v0 + 242), v14 + 16);
      v15 = __swift_project_boxed_opaque_existential_1(v0 + 259, &type metadata for Album);
      sub_21729C5E8((v15 + 2), (v0 + 264));
      v16 = v0[268];
      __swift_project_boxed_opaque_existential_1(v0 + 264, v0[267]);
      v17 = OUTLINED_FUNCTION_6_23();
      v18(v17, v16);
      sub_21729C644((v0 + 264));
      __swift_destroy_boxed_opaque_existential_1(v0 + 259);
      memcpy(v0 + 47, v25, 0x161uLL);
      sub_217751FA8();
      OUTLINED_FUNCTION_12_17();
      sub_21725CE44((v0 + 242));
      OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_6_23();

      *(v13 + 14) = &type metadata for Album;
      OUTLINED_FUNCTION_13_18(&dword_2171EE000, v19, v20, "Unable to resolve <MusicVideo, Artist> relationship because no artists were found for %{public}s [%{public}s]");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_28_4();
      OUTLINED_FUNCTION_28_4();
    }

    else
    {

      sub_21725CE44((v0 + 242));
      sub_21725CE44((v0 + 235));
    }

    sub_21725CE44((v0 + 193));
  }

  v21 = v0[275];
  sub_217202078((v0 + 118), (v0 + 144), &qword_27CB25310, &unk_21775D3D0);
  v21[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25398, &unk_21776C4F0);
  v21[4] = &protocol witness table for MusicItemCollection<A>;
  v22 = swift_allocObject();
  *v21 = v22;
  if (v0[155])
  {
    memcpy((v22 + 16), v0 + 144, 0x68uLL);

    sub_2171F06D8((v0 + 131), &qword_27CB25318, &qword_2177657C0);
    v1 = (v0 + 118);
  }

  else
  {
    sub_2174AA180(MEMORY[0x277D84F90]);

    sub_2171F06D8((v0 + 131), &qword_27CB25318, &qword_2177657C0);
    sub_2171F06D8((v0 + 118), &qword_27CB25310, &unk_21775D3D0);
    if (!v0[155])
    {
      goto LABEL_13;
    }
  }

  sub_2171F06D8(v1, &qword_27CB25310, &unk_21775D3D0);
LABEL_13:
  OUTLINED_FUNCTION_20_0();

  return v23();
}

uint64_t sub_21771CFE0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21725B86C;

  return sub_21771BFFC(a1, a2, a3);
}

uint64_t MusicPredicateValue<A>.libraryFilterValue.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = *v0;
  }

  if (*(v0 + 8))
  {
    LOBYTE(v1) = v2;
  }

  return v1 & 1;
}

{
  sub_217202078(v0, v4, qword_27CB26CB8, &unk_217766C20);
  if (v5 && v5 == 1)
  {
    return *&v4[0];
  }

  sub_21726B918(v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24EC8, &unk_21775A1F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2177586E0;
  sub_21726B918(v3, v1 + 32);
  return v1;
}

{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (*(v0 + 16) && v3 == 1)
  {
    v4 = *v0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244C8, &unk_2177589A0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_2177586E0;
    *(v4 + 32) = v2;
    *(v4 + 40) = v1;
  }

  sub_21722F9A0(v2, v1, v3);
  return v4;
}

{
  memcpy(__dst, v0, 0x162uLL);
  memcpy(v8, v0, 0x162uLL);
  if (sub_2173A8AC0(v8) == 1)
  {
    nullsub_1();
    v2 = *v1;
  }

  else
  {
    nullsub_1();
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24EA8, &unk_217766C00);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_2177586E0;
    memcpy((v2 + 32), v4, 0x161uLL);
  }

  sub_217202078(__dst, v6, &qword_27CB2DA60, &qword_21779EA40);
  return v2;
}

uint64_t MusicPredicateValue<A>.libraryFilterValue.getter(char *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 16);
  if (!v5)
  {
    goto LABEL_4;
  }

  if (v4 == 2)
  {
    v5 = 1;
LABEL_4:
    *a1 = v5;
    sub_21722F9A0(v2, v3, v4);
    return v2;
  }

  result = sub_217752D08();
  __break(1u);
  return result;
}

void MusicPredicateValue.rawLibraryFilterValue.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](a1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v10 = *(v2 + 32);
    v10(v4, v8, v1);
    sub_217275A34(v1, v1);
    swift_allocObject();
    v11 = sub_2177522C8();
    v10(v12, v4, v1);
    sub_21726B91C(v11, v1);
  }
}

uint64_t ForgivingInt.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217752B38();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_2_6();
  sub_2177532A8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    OUTLINED_FUNCTION_2_6();
    v6 = sub_217753088();
    __swift_destroy_boxed_opaque_existential_1(v8);
    *a2 = v6;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ForgivingInt.encode(to:)(void *a1)
{
  v1 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_11_84(v1);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2177530E8();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t ForgivingInt.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

uint64_t sub_21771DB74(uint64_t a1)
{
  v2 = *v1;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v2);
  return sub_217753238();
}

uint64_t ForgivingURL.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2177516D8();
  OUTLINED_FUNCTION_43();
  (*(v5 + 32))(a2, a1, v4);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

uint64_t ForgivingURL.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v5 = OUTLINED_FUNCTION_45_0(v4);
  MEMORY[0x28223BE20](v5);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v26 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v26 - v12;
  v14 = type metadata accessor for ForgivingURL(0);
  v15 = OUTLINED_FUNCTION_45_0(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2177532A8();
  if (!v2)
  {
    v26[2] = v7;
    v27 = v18;
    v28 = v13;
    __swift_project_boxed_opaque_existential_1(v30, v30[3]);
    v19 = sub_2177516D8();
    OUTLINED_FUNCTION_0_164();
    sub_21771EC14(v20, v21, MEMORY[0x277CC9280]);
    sub_217753098();
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v19);
    v22 = v28;
    sub_21751AF10(v10, v28);
    v23 = v29;
    v24 = v27;
    sub_21751AF10(v22, v27);
    __swift_destroy_boxed_opaque_existential_1(v30);
    sub_21771EA5C(v24, v23);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ForgivingURL.encode(to:)(void *a1)
{
  v1 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_11_84(v1);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  sub_21771EAC0();
  sub_2177530F8();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

BOOL static ForgivingURL.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v11);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  OUTLINED_FUNCTION_45_0(v15);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v20 = *(v19 + 56);
  sub_2175CD0A0(a1, &v27 - v17);
  sub_2175CD0A0(a2, &v18[v20]);
  OUTLINED_FUNCTION_73(v18);
  if (!v21)
  {
    sub_2175CD0A0(v18, v14);
    OUTLINED_FUNCTION_73(&v18[v20]);
    if (!v21)
    {
      (*(v6 + 32))(v10, &v18[v20], v4);
      OUTLINED_FUNCTION_0_164();
      sub_21771EC14(v23, v24, MEMORY[0x277CC9278]);
      v25 = sub_217751F08();
      v26 = *(v6 + 8);
      v26(v10, v4);
      v26(v14, v4);
      sub_2171F0738(v18, &unk_27CB277C0, &qword_217758DC0);
      return (v25 & 1) != 0;
    }

    (*(v6 + 8))(v14, v4);
LABEL_9:
    sub_2171F0738(v18, &qword_27CB24840, &unk_217758DD0);
    return 0;
  }

  OUTLINED_FUNCTION_73(&v18[v20]);
  if (!v21)
  {
    goto LABEL_9;
  }

  sub_2171F0738(v18, &unk_27CB277C0, &qword_217758DC0);
  return 1;
}

uint64_t ForgivingURL.hash(into:)(uint64_t a1)
{
  v2 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v9);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  sub_2175CD0A0(v1, &v16 - v11);
  if (__swift_getEnumTagSinglePayload(v12, 1, v2) == 1)
  {
    return sub_217753208();
  }

  (*(v4 + 32))(v8, v12, v2);
  sub_217753208();
  OUTLINED_FUNCTION_0_164();
  sub_21771EC14(v14, v15, MEMORY[0x277CC9270]);
  sub_217751EB8();
  return (*(v4 + 8))(v8, v2);
}

uint64_t ForgivingURL.hashValue.getter()
{
  v1 = v0;
  v2 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v9);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  sub_2177531E8();
  sub_2175CD0A0(v1, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v2) == 1)
  {
    sub_217753208();
  }

  else
  {
    (*(v4 + 32))(v8, v12, v2);
    sub_217753208();
    OUTLINED_FUNCTION_0_164();
    sub_21771EC14(v13, v14, MEMORY[0x277CC9270]);
    sub_217751EB8();
    (*(v4 + 8))(v8, v2);
  }

  return sub_217753238();
}

uint64_t sub_21771E7BC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_2177516D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - v8;
  sub_2177531E8();
  sub_2175CD0A0(v2, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
  {
    sub_217753208();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_217753208();
    sub_21771EC14(&qword_27CB24320, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_217751EB8();
    (*(v4 + 8))(v6, v3);
  }

  return sub_217753238();
}

uint64_t URL.convertToForgivingURL()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2177516D8();
  OUTLINED_FUNCTION_43();
  (*(v4 + 16))(a1, v1, v3);

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
}

uint64_t type metadata accessor for ForgivingURL(uint64_t a1)
{
  result = qword_27CB2DA80;
  if (!qword_27CB2DA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21771EA5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForgivingURL(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21771EAC0()
{
  result = qword_27CB2DA68;
  if (!qword_27CB2DA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CB277C0, &qword_217758DC0);
    sub_21771EC14(&unk_280BE7410, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DA68);
  }

  return result;
}

unint64_t sub_21771EB78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DA70;
  if (!qword_27CB2DA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DA70);
  }

  return result;
}

uint64_t sub_21771EC14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21771EC94(uint64_t a1)
{
  sub_2172E2DB0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void *OUTLINED_FUNCTION_11_84(uint64_t a1, ...)
{

  return sub_2177532E8();
}

uint64_t sub_21771ED20(uint64_t a1, uint64_t a2)
{
  v9 = MEMORY[0x277D84F90];
  v3 = sub_217204DD0(a2);
  v4 = sub_217204DD0(a1);
  v5 = __OFADD__(v3, v4);
  result = v3 + v4;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    sub_21721524C(result, 0);
    v7 = sub_217751DE8();
    sub_217543868(v7);
    v8 = sub_217751DE8();
    sub_217543868(v8);
    return v9;
  }

  return result;
}

uint64_t sub_21771EDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_217752008();
  v7 = sub_217752948();
  v8 = __OFADD__(v6, v7);
  result = v6 + v7;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v10 = MEMORY[0x21CEA2330](result);
    sub_217285A70(v10, v11, v12);
    sub_217752048();
    sub_217752048();
    return 0;
  }

  return result;
}

unint64_t sub_21771EE94(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    result = sub_217752038();
    if (v4)
    {
      result = 15;
    }

    if (4 * v3 >= result >> 14)
    {
      v5 = sub_217752118();

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t static MusicEncryption.AESEncrypt(payload:clientKey:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v66 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DA90, &qword_21779EC08);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v58 - v5;
  sub_217751D58();
  OUTLINED_FUNCTION_0_0();
  v59 = v8;
  v60 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  sub_217751CF8();
  OUTLINED_FUNCTION_0_0();
  v62 = v13;
  v63 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v14 = sub_217751F98();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1();
  sub_217751F88();
  v16 = sub_217751F58();
  v18 = v17;
  v19 = OUTLINED_FUNCTION_93();
  v21 = v20(v19);
  if (v18 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v24 = sub_217751728();
  if (v25 >> 60 == 15)
  {
    v26 = OUTLINED_FUNCTION_86();
    v21 = sub_217275680(v26, v27);
LABEL_4:
    v28 = sub_21771F34C(v21, v22, v23);
    OUTLINED_FUNCTION_15_4(&type metadata for MusicEncryption.Error, v28);
    *v29 = 0;
    swift_willThrow();
    return v14;
  }

  v64 = v24;
  v65 = v25;
  sub_21727591C(v24, v25);
  sub_217751CE8();
  v64 = v16;
  v65 = v18;
  v31 = sub_217751D28();
  v32 = __swift_storeEnumTagSinglePayload(v6, 1, 1, v31);
  sub_21771F3A0(v32, v33, v34);
  v35 = v61;
  sub_217751D18();
  if (v35)
  {
    v36 = OUTLINED_FUNCTION_140_1();
    sub_217275680(v36, v37);
    sub_21771F3F4(v6);
    v38 = OUTLINED_FUNCTION_6_112();
    v39(v38);
    v40 = OUTLINED_FUNCTION_86();
    sub_217275680(v40, v41);
  }

  else
  {
    sub_21771F3F4(v6);
    v14 = sub_217751D38();
    v43 = v42;
    v44 = (*(v59 + 8))(v11, v60);
    if (v43 >> 60 == 15)
    {
      v47 = sub_21771F34C(v44, v45, v46);
      OUTLINED_FUNCTION_15_4(&type metadata for MusicEncryption.Error, v47);
      *v48 = 1;
      swift_willThrow();
      v49 = OUTLINED_FUNCTION_86();
      sub_217275680(v49, v50);
    }

    else
    {
      v55 = v14;
      v14 = sub_217751748();
      v66 = v43;
      v56 = OUTLINED_FUNCTION_86();
      sub_217275680(v56, v57);
      sub_217275680(v55, v66);
    }

    v51 = OUTLINED_FUNCTION_140_1();
    sub_217275680(v51, v52);
    v53 = OUTLINED_FUNCTION_6_112();
    v54(v53);
  }

  return v14;
}

unint64_t sub_21771F34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DA98;
  if (!qword_27CB2DA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DA98);
  }

  return result;
}

unint64_t sub_21771F3A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DAA0;
  if (!qword_27CB2DAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DAA0);
  }

  return result;
}

uint64_t sub_21771F3F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DA90, &qword_21779EC08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static MusicEncryption.AESDecrypt(encryptedPayload:clientKey:)()
{
  v0 = sub_217751F98();
  MEMORY[0x28223BE20](v0 - 8);
  OUTLINED_FUNCTION_1();
  v3 = v2 - v1;
  sub_217751D58();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v5 = sub_217751CF8();
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_86();
  v12 = sub_217751728();
  if (v13 >> 60 == 15)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_140_1();
  v15 = sub_217751728();
  if (v16 >> 60 == 15)
  {
    v17 = OUTLINED_FUNCTION_86();
    v12 = sub_217275680(v17, v18);
LABEL_4:
    v19 = sub_21771F34C(v12, v13, v14);
    OUTLINED_FUNCTION_15_4(&type metadata for MusicEncryption.Error, v19);
    *v20 = 0;
    swift_willThrow();
    return v3;
  }

  v22 = v16;
  v43 = v5;
  v23 = v15;
  sub_21727591C(v15, v16);
  sub_217751CE8();
  v24 = OUTLINED_FUNCTION_86();
  sub_21727591C(v24, v25);
  v26 = OUTLINED_FUNCTION_86();
  sub_21771F7A4(v26, v27);
  if (v44)
  {
    (*(v7 + 8))(v11, v43);
    v28 = OUTLINED_FUNCTION_86();
    sub_217275680(v28, v29);
    sub_217275680(v23, v22);
  }

  else
  {
    v30 = sub_217751D08();
    v32 = v31;
    v33 = v30;
    sub_217751F88();
    v34 = sub_217751F68();
    if (v36)
    {
      v3 = v34;
    }

    else
    {
      v41 = sub_21771F34C(v34, 0, v35);
      OUTLINED_FUNCTION_15_4(&type metadata for MusicEncryption.Error, v41);
      *v42 = 2;
      swift_willThrow();
    }

    sub_217275694(v33, v32);
    v37 = OUTLINED_FUNCTION_3_132();
    v38(v37);
    v39 = OUTLINED_FUNCTION_10_79();
    v40(v39);
  }

  return v3;
}

uint64_t sub_21771F7A4(uint64_t result, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v2) = HIDWORD(result) - result;
      if (!__OFSUB__(HIDWORD(result), result))
      {
        v2 = v2;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_10;
    case 2uLL:
      v4 = *(result + 16);
      v3 = *(result + 24);
      v5 = __OFSUB__(v3, v4);
      v2 = v3 - v4;
      if (!v5)
      {
        goto LABEL_6;
      }

LABEL_10:
      __break(1u);
      break;
    case 3uLL:
      goto LABEL_7;
    default:
      v2 = BYTE6(a2);
LABEL_6:
      if (v2 > 27)
      {
        sub_21771FEF0(result, a2);
        result = sub_217751D48();
      }

      else
      {
LABEL_7:
        sub_217275694(result, a2);
        v6 = sub_217751C98();
        sub_217721060(&qword_27CB2DAD8, MEMORY[0x277CC51E8], MEMORY[0x277CC51F0]);
        swift_allocError();
        (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277CC51E0], v6);
        result = swift_willThrow();
      }

      break;
  }

  return result;
}

uint64_t static MusicEncryption.sha256(from:)(char *a1, uint64_t a2)
{
  v63 = sub_217751788();
  OUTLINED_FUNCTION_0_0();
  v59 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v64 = v7 - v6;
  v8 = sub_217751D68();
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  sub_217751CD8();
  OUTLINED_FUNCTION_0_0();
  v60 = v16;
  v61 = v15;
  MEMORY[0x28223BE20](v15);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v54 - v20;
  v22 = sub_217751F98();
  OUTLINED_FUNCTION_0_0();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1();
  v28 = v27 - v26;
  sub_217751F88();
  v58 = a1;
  *&v62 = a2;
  v29 = sub_217751F58();
  v31 = v30;
  (*(v24 + 8))(v28, v22);
  if (v31 >> 60 == 15)
  {
    v65 = 0;
    v66 = 0xE000000000000000;
    sub_217752AA8();

    v65 = 0xD00000000000001BLL;
    v66 = 0x80000002177B6500;
    MEMORY[0x21CEA23B0](v58, v62, v53);
    MEMORY[0x21CEA23B0](0x61746144206F7420, 0xE90000000000002ELL);
    result = sub_217752D08();
    __break(1u);
  }

  else
  {
    v32 = v31;
    sub_217721060(&qword_27CB2DAA8, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    sub_217751CC8();
    sub_21727591C(v29, v31);
    sub_217720A54(v29, v31, v14);
    sub_217275680(v29, v31);
    sub_217751CB8();
    (*(v10 + 8))(v14, v8);
    (*(v60 + 16))(v18, v21, v61);
    v33 = sub_217720074(v18);
    v35 = v34;
    v56 = v32;
    v57 = v29;
    v58 = v21;
    sub_21727591C(v33, v34);
    v54 = v35;
    v55 = v33;
    sub_217751798();
    sub_217721060(&qword_27CB2DAB0, MEMORY[0x277CC92E0], MEMORY[0x277CC92E8]);
    v36 = MEMORY[0x277D84F90];
    v62 = xmmword_2177586E0;
    v37 = MEMORY[0x277D84B78];
    v38 = MEMORY[0x277D84BC0];
    while (1)
    {
      sub_217752968();
      if ((v65 & 0x100) != 0)
      {
        break;
      }

      v39 = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28DA0, &qword_217772590);
      v40 = swift_allocObject();
      *(v40 + 16) = v62;
      *(v40 + 56) = v37;
      *(v40 + 64) = v38;
      *(v40 + 32) = v39;
      v41 = sub_217751F78();
      v43 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2172AFF2C(0, *(v36 + 16) + 1, 1, v36);
        v36 = v47;
      }

      v45 = *(v36 + 16);
      v44 = *(v36 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_2172AFF2C(v44 > 1, v45 + 1, 1, v36);
        v36 = v48;
      }

      *(v36 + 16) = v45 + 1;
      v46 = v36 + 16 * v45;
      *(v46 + 32) = v41;
      *(v46 + 40) = v43;
    }

    (*(v59 + 8))(v64, v63);
    v65 = v36;
    v49 = OUTLINED_FUNCTION_93();
    __swift_instantiateConcreteTypeFromMangledNameV2(v49, v50);
    sub_217283840(&qword_280BE2320, &qword_27CB24C58, &unk_2177677B0, MEMORY[0x277D83958]);
    sub_217751ED8();
    sub_217275680(v57, v56);
    sub_217275694(v55, v54);

    (*(v60 + 8))(v58, v61, v51);
    return OUTLINED_FUNCTION_93();
  }

  return result;
}

uint64_t sub_21771FEF0(uint64_t a1, uint64_t a2)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v12[3] = MEMORY[0x277CC9318];
  v12[4] = MEMORY[0x277CC9300];
  v12[0] = a1;
  v12[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v12, MEMORY[0x277CC9318]);
  v3 = *v2;
  v4 = v2[1];
  switch(v4 >> 62)
  {
    case 1uLL:
      v7 = v3 >> 32;
      if (v3 >> 32 < v3)
      {
        __break(1u);
      }

      v6 = v3;
      goto LABEL_8;
    case 2uLL:
      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
LABEL_8:
      sub_217720CC8(v6, v7, &v11);
      goto LABEL_9;
    case 3uLL:
      memset(v10, 0, 14);
      v5 = v10;
      goto LABEL_5;
    default:
      v10[0] = *v2;
      LOWORD(v10[1]) = v4;
      BYTE2(v10[1]) = BYTE2(v4);
      BYTE3(v10[1]) = BYTE3(v4);
      BYTE4(v10[1]) = BYTE4(v4);
      BYTE5(v10[1]) = BYTE5(v4);
      v5 = v10 + BYTE6(v4);
LABEL_5:
      sub_2177209DC(v10, v5, &v11);
LABEL_9:
      v8 = v11;
      __swift_destroy_boxed_opaque_existential_1(v12);
      return v8;
  }
}

uint64_t sub_217720074(uint64_t a1)
{
  v2 = sub_217751CD8();
  v8 = v2;
  v9 = sub_217721060(&qword_27CB2DAD0, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v7);
  v4 = *(v2 - 8);
  (*(v4 + 16))(boxed_opaque_existential_0, a1, v2);
  __swift_project_boxed_opaque_existential_1(v7, v8);
  sub_217751578();
  __swift_destroy_boxed_opaque_existential_1(v7);
  (*(v4 + 8))(a1, v2);
  return v6;
}

uint64_t static MusicEncryption.obfuscate(emailAddress:)(uint64_t a1, unint64_t a2)
{
  OUTLINED_FUNCTION_11_85();
  sub_2174FF994();
  if (v5)
  {
    goto LABEL_16;
  }

  v6 = v4;
  OUTLINED_FUNCTION_11_85();
  v7 = sub_217752118();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_217752948();
  if (v14 < 3)
  {
    v23 = MEMORY[0x21CEA2320](v7, v9, v11, v13);
    v22 = v23;
  }

  else
  {
    v15 = sub_2177520E8();
    v17 = v16;
    sub_217751DE8();
    v18 = sub_217285954(2);
    v22 = sub_21771EDB0(v18, v19, v20, v21, v15, v17);
  }

  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_11_85();
  v28 = sub_217720AF0(v24, v25, v26, v27);
  if (v29)
  {
    goto LABEL_16;
  }

  v30 = v28;

  if (v30 >> 14 < v6 >> 14)
  {
    __break(1u);
    goto LABEL_14;
  }

  v58 = v22;
  OUTLINED_FUNCTION_11_85();
  v31 = sub_217752118();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = sub_217752948();
  sub_217751DE8();
  v39 = sub_217752008();
  v40 = v14 + v38;
  if (__OFADD__(v14, v38))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v41 = __OFSUB__(v39, v40);
  v42 = v39 - v40;
  if (v41)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    result = sub_217752D08();
    __break(1u);
    return result;
  }

  sub_21771EE94(v42, a1, a2);
  if (v38 < 4)
  {
    v50 = MEMORY[0x21CEA2320](v31, v33, v35, v37);
    v52 = v53;
  }

  else
  {
    v43 = sub_2177520E8();
    v45 = v44;
    v46 = sub_2172859D8(3uLL, v31, v33, v35, v37);
    v50 = sub_21771EDB0(v46, v47, v48, v49, v43, v45);
    v52 = v51;
  }

  sub_217751DE8();
  MEMORY[0x21CEA23B0](v50, v52);

  sub_217285A70(v54, v55, v56);
  sub_217752048();

  return v58;
}

unint64_t static MusicEncryption.obfuscate(phoneNumber:)(unint64_t a1, unint64_t a2)
{
  sub_217751DE8();
  while (1)
  {
    result = sub_217752068();
    if (!v3)
    {
      break;
    }

    v4 = v3;
    v5 = HIBYTE(v3) & 0xF;
    v6 = result & 0xFFFFFFFFFFFFLL;
    if ((v4 & 0x2000000000000000) != 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = result & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      if ((v4 & 0x1000000000000000) != 0)
      {
        sub_2175B1ECC();
        v25 = v27;
        goto LABEL_70;
      }

      if ((v4 & 0x2000000000000000) != 0)
      {
        if (result == 43)
        {
          if (!v5)
          {
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
            return result;
          }

          if (v5 != 1)
          {
            while (1)
            {
              OUTLINED_FUNCTION_4_140();
              if (!v10 & v9)
              {
                break;
              }

              OUTLINED_FUNCTION_2_142();
              if (!v10 || __OFADD__(v19, v18))
              {
                break;
              }

              OUTLINED_FUNCTION_2_5();
              if (v10)
              {
                goto LABEL_69;
              }
            }
          }
        }

        else if (result == 45)
        {
          if (!v5)
          {
            goto LABEL_81;
          }

          if (v5 != 1)
          {
            while (1)
            {
              OUTLINED_FUNCTION_4_140();
              if (!v10 & v9)
              {
                break;
              }

              OUTLINED_FUNCTION_2_142();
              if (!v10 || __OFSUB__(v15, v14))
              {
                break;
              }

              OUTLINED_FUNCTION_2_5();
              if (v10)
              {
                goto LABEL_69;
              }
            }
          }
        }

        else if (v5)
        {
          while (1)
          {
            OUTLINED_FUNCTION_4_140();
            if (!v10 & v9)
            {
              break;
            }

            OUTLINED_FUNCTION_2_142();
            if (!v10 || __OFADD__(v24, v23))
            {
              break;
            }

            OUTLINED_FUNCTION_2_5();
            if (v10)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_68;
      }

      if ((result & 0x1000000000000000) != 0)
      {
        result = (v4 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_217752B88();
      }

      v8 = *result;
      if (v8 == 43)
      {
        if (v6 < 1)
        {
          goto LABEL_80;
        }

        if (v6 == 1)
        {
          goto LABEL_68;
        }

        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_4_140();
            if (!v10 & v9)
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_2_142();
            if (!v10 || __OFADD__(v17, v16))
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_2_5();
            if (v10)
            {
              goto LABEL_69;
            }
          }
        }
      }

      else if (v8 == 45)
      {
        if (v6 < 1)
        {
          goto LABEL_79;
        }

        if (v6 == 1)
        {
          goto LABEL_68;
        }

        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_4_140();
            if (!v10 & v9)
            {
              break;
            }

            OUTLINED_FUNCTION_2_142();
            if (!v10 || __OFSUB__(v12, v11))
            {
              break;
            }

            OUTLINED_FUNCTION_2_5();
            if (v10)
            {
              goto LABEL_69;
            }
          }

LABEL_68:
          v13 = 1;
          goto LABEL_69;
        }
      }

      else
      {
        if (!v6)
        {
          goto LABEL_68;
        }

        v20 = 0;
        if (result)
        {
          do
          {
            v21 = *result - 48;
            if (v21 > 9)
            {
              goto LABEL_68;
            }

            v22 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              goto LABEL_68;
            }

            v20 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              goto LABEL_68;
            }

            ++result;
          }

          while (--v6);
        }
      }

      v13 = 0;
LABEL_69:
      v25 = v13;
LABEL_70:

      if ((v25 & 1) == 0)
      {
        v26 = sub_217752FC8();
        MEMORY[0x21CEA23B0](v26);
      }
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_93();
  if (sub_217752008() >= 4)
  {
    v28 = sub_2177520E8();
    v30 = v29;
    swift_bridgeObjectRetain_n();
    v31 = sub_217285954(1);
    sub_21771EDB0(v31, v32, v33, v34, v28, v30);

    v37 = sub_21771EE94(2uLL, 0, 0xE000000000000000);
    sub_217285A70(v37, v35, v36);
    sub_217751DE8();
    sub_217752048();
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t MusicEncryption.Error.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

uint64_t sub_2177209DC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_2177516E8();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x21CEA1A50]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x21CEA1A60]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

void sub_217720A54(uint64_t a1, unint64_t a2, uint64_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v7 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_11;
      }

      a1 = a1;
      v6 = v7;
      goto LABEL_9;
    case 2uLL:
      v5 = *(a1 + 24);
      a1 = *(a1 + 16);
      v6 = v5;
LABEL_9:
      sub_217720D5C(a1, v6);
      if (v3)
      {
        goto LABEL_10;
      }

      return;
    case 3uLL:
      a1 = 0;
      v4 = 0;
      goto LABEL_5;
    default:
      v4 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      sub_217720BF4(a1, v4);
      if (v3)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
      }

      return;
  }
}

unint64_t sub_217720AF0(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_217752028();
    v13[0] = sub_2177520F8();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t sub_217720BF4(uint64_t a1, uint64_t a2)
{
  sub_217751D68();
  sub_217721060(&qword_27CB2DAA8, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_217751CA8();
}

uint64_t sub_217720CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_217751528();
  v7 = result;
  if (result)
  {
    result = sub_217751548();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_217751538();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_2177209DC(v7, v13, a3);
}

uint64_t sub_217720D5C(uint64_t a1, uint64_t a2)
{
  result = sub_217751528();
  if (!result || (result = sub_217751548(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_217751538();
      sub_217751D68();
      sub_217721060(&qword_27CB2DAA8, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_217751CA8();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_217720E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DAC8;
  if (!qword_27CB2DAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DAC8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicEncryption(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicEncryption.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_217721060(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double Playlist.Entry.Item.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<D0>(void *__src@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  memcpy(__dst, __src, 0x161uLL);
  sub_21736C814(a3, v10);
  Track.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(__dst, a2, v10, v12);
  sub_217638634(a3);
  v7 = v15;
  v8 = v12[1];
  *a4 = v12[0];
  *(a4 + 16) = v8;
  result = *&v13;
  *(a4 + 32) = v13;
  *(a4 + 48) = v14;
  *(a4 + 56) = (v7 & 1) == 0;
  return result;
}

uint64_t Playlist.Entry.Item.convertToRawDictionary(for:)()
{
  sub_21729C79C(v0, v12);
  if (v12[56] == 1)
  {
    v1 = OUTLINED_FUNCTION_0_165();
    v5 = sub_21753D588(v1, v2, v3, v4);
    sub_217283B58(v11);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_0_165();
    v5 = sub_21753D5D0(v6, v7, v8, v9);
    sub_217283C08(v11);
  }

  return v5;
}

uint64_t Playlist.Entry.Item.underlyingLegacyModelObjectType.getter@<X0>(char *a1@<X8>)
{
  sub_21729C79C(v1, v5);
  if (v5[56])
  {
    v3 = 25;
  }

  else
  {
    v3 = 12;
  }

  *a1 = v3;
  return sub_21729C7F8(v5);
}

uint64_t sub_217721240()
{
  if (qword_280BEAE60 != -1)
  {
    OUTLINED_FUNCTION_3_3(&qword_280BEAE60);
  }

  v1 = qword_280C029A0;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_217721358;
  swift_continuation_init();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29DC0, &qword_21777BC78);
  OUTLINED_FUNCTION_1047(v2);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_1_88();
  [v1 requestCapabilitiesWithPrivacyPromptPolicy:1 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_217721358()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_21772233C;
  }

  else
  {
    v2 = sub_217722340;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21772147C()
{
  if (qword_280BEAE60 != -1)
  {
    OUTLINED_FUNCTION_3_3(&qword_280BEAE60);
  }

  v1 = qword_280C029A0;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_217721594;
  swift_continuation_init();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29DC0, &qword_21777BC78);
  OUTLINED_FUNCTION_1047(v2);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_1_88();
  [v1 requestCapabilitiesWithPrivacyPromptPolicy:0 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_217721594()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_2177216E0;
  }

  else
  {
    v2 = sub_2177216A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2177216A4()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  *v1 = v2 & 1;
  v1[1] = (v2 & 3) == 2;
  v1[2] = BYTE1(v2) & 1;
  return (*(v0 + 8))();
}

uint64_t sub_2177216E0(uint64_t a1)
{
  v12 = v1;
  v2 = *(v1 + 160);
  swift_willThrow();
  v3 = v2;
  sub_21756DBF8(v2, v11);
  v4 = v11[0];
  sub_2173DA3F4(v5, v6, v7);
  swift_allocError();
  *v8 = v4;
  swift_willThrow();

  v9 = *(v1 + 8);

  return v9();
}

MusicKit::MusicSubscription __swiftcall MusicSubscription.init(canPlayCatalogContent:canBecomeSubscriber:hasCloudLibraryEnabled:)(Swift::Bool canPlayCatalogContent, Swift::Bool canBecomeSubscriber, Swift::Bool hasCloudLibraryEnabled)
{
  *v3 = canPlayCatalogContent;
  v3[1] = canBecomeSubscriber;
  v3[2] = hasCloudLibraryEnabled;
  result.canPlayCatalogContent = canPlayCatalogContent;
  return result;
}

unint64_t MusicSubscription.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  OUTLINED_FUNCTION_2_4();
  sub_217752AA8();

  OUTLINED_FUNCTION_2_4();
  if (v1)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x21CEA23B0](v4, v5);

  OUTLINED_FUNCTION_5_113();

  sub_217752AA8();

  OUTLINED_FUNCTION_2_4();
  if (v2)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x21CEA23B0](v6, v7);

  OUTLINED_FUNCTION_5_113();

  sub_217752AA8();

  OUTLINED_FUNCTION_2_4();
  if (v3)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v3)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x21CEA23B0](v8, v9);

  OUTLINED_FUNCTION_5_113();

  MEMORY[0x21CEA23B0](41, 0xE100000000000000, v10);
  return 0xD000000000000012;
}

uint64_t sub_2177219CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000015 && 0x80000002177B6620 == a2;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000002177B6640 == a2;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000016 && 0x80000002177B6660 == a2)
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

unint64_t sub_217721AE4(char a1)
{
  if (!a1)
  {
    return 0xD000000000000015;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0xD000000000000016;
}

uint64_t sub_217721B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2177219CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217721B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21772206C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217721BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21772206C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t MusicSubscription.hash(into:)()
{
  sub_217753208();
  sub_217753208();
  return sub_217753208();
}

uint64_t MusicSubscription.hashValue.getter()
{
  sub_2177531E8();
  sub_217753208();
  sub_217753208();
  sub_217753208();
  return sub_217753238();
}

uint64_t sub_217721CA8(uint64_t a1)
{
  sub_2177531E8();
  sub_217753208();
  sub_217753208();
  sub_217753208();
  return sub_217753238();
}

uint64_t MusicSubscription.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DAE0, &qword_21779ED58);
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  v10 = *v1;
  v18 = v1[1];
  v17 = v1[2];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21772206C(v11, v12, v13);
  sub_2177532F8();
  v21 = 0;
  OUTLINED_FUNCTION_6_113(v10, &v21);
  if (!v2)
  {
    v14 = v17;
    v20 = 1;
    OUTLINED_FUNCTION_6_113(v18, &v20);
    v19 = 2;
    OUTLINED_FUNCTION_6_113(v14, &v19);
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t MusicSubscription.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DAE8, &qword_21779ED60);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21772206C(v11, v12, v13);
  sub_2177532C8();
  if (!v2)
  {
    v21 = 0;
    v14 = OUTLINED_FUNCTION_4_141(&v21);
    v20 = 1;
    v15 = OUTLINED_FUNCTION_4_141(&v20);
    v19 = 2;
    v17 = OUTLINED_FUNCTION_4_141(&v19);
    (*(v7 + 8))(v10, v5);
    *a2 = v14 & 1;
    a2[1] = v15 & 1;
    a2[2] = v17 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_21772206C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE8030;
  if (!qword_280BE8030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8030);
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MusicSubscription(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
        return (v3 + 1);
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v3 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

_BYTE *storeEnumTagSinglePayload for MusicSubscription.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_217722230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DAF0;
  if (!qword_27CB2DAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DAF0);
  }

  return result;
}

unint64_t sub_217722288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE8020;
  if (!qword_280BE8020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8020);
  }

  return result;
}

unint64_t sub_2177222E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE8028;
  if (!qword_280BE8028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8028);
  }

  return result;
}

uint64_t sub_217722344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_activeRetryContext;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0;
  *(v7 + 40) = -1;
  v8 = OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_currentRetryCounts;
  sub_217722E8C(a1, a2, a3);
  *(v3 + v8) = OUTLINED_FUNCTION_4_142();
  v23 = a1;
  sub_2175C85D0(a1, v3 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_request);
  v24 = v3;
  v9 = (v3 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_tokenProvider);
  *v9 = a2;
  v9[1] = a3;

  v10 = OUTLINED_FUNCTION_4_142();
  for (i = 0; ; ++i)
  {
    if (i == 3)
    {
      sub_217722EE0(v23);

      result = v24;
      *(v24 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_maximumRetryCounts) = v10;
      return result;
    }

    v12 = byte_28295BA58[i + 32];
    swift_isUniquelyReferenced_nonNull_native();
    v13 = sub_2176325CC();
    if (__OFADD__(v10[2], (v14 & 1) == 0))
    {
      break;
    }

    v15 = v13;
    v16 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24F60, &qword_21775A9A8);
    if (sub_217752CB8())
    {
      v17 = sub_2176325CC();
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_15;
      }

      v15 = v17;
    }

    if (v16)
    {
      *(v10[7] + 8 * v15) = 1;
    }

    else
    {
      v10[(v15 >> 6) + 8] |= 1 << v15;
      *(v10[6] + v15) = v12;
      *(v10[7] + 8 * v15) = 1;
      v19 = v10[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_14;
      }

      v10[2] = v21;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  result = sub_217753178();
  __break(1u);
  return result;
}

uint64_t sub_217722554(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 2);
  v36 = *(a1 + 1);
  v5 = *(a1 + 3);
  v6 = *(a1 + 4);
  v7 = a1[40];
  v8 = OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_currentRetryCounts;
  swift_beginAccess();
  v9 = *(v2 + v8);
  sub_217751DE8();
  v10 = sub_2173AC840(v3, v9);
  v12 = v11;

  if (v12)
  {
    v10 = 0;
  }

  v13 = sub_2173AC840(v3, *(v2 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_maximumRetryCounts));
  if (v14)
  {
    if (v10 >= 1)
    {
LABEL_5:
      v15 = v2 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_activeRetryContext;
      v16 = *(v2 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_activeRetryContext);
      v17 = *(v2 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_activeRetryContext + 8);
      v18 = *(v2 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_activeRetryContext + 16);
      v19 = *(v2 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_activeRetryContext + 24);
      v20 = *(v2 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_activeRetryContext + 32);
      *v15 = 0u;
      *(v15 + 16) = 0u;
      *(v15 + 32) = 0;
      v21 = *(v15 + 40);
      *(v15 + 40) = -1;
      sub_2175CB7AC(v16, v17, v18, v19, v20, v21);
      return 0;
    }
  }

  else if (v10 >= v13)
  {
    goto LABEL_5;
  }

  v23 = v3;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2172C7E14(v10 + 1, v3, isUniquelyReferenced_nonNull_native, v25, v26, v27, v28, v29, v36, *(v2 + v8));
  *(v2 + v8) = v38;
  swift_endAccess();
  v30 = v2 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_activeRetryContext;
  v31 = *(v2 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_activeRetryContext);
  v32 = *(v2 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_activeRetryContext + 8);
  v33 = *(v30 + 16);
  v34 = *(v30 + 24);
  v35 = *(v30 + 32);
  *v30 = v23;
  *(v30 + 8) = v37;
  *(v30 + 16) = v4;
  *(v30 + 24) = v5;
  *(v30 + 32) = v6;
  LOBYTE(v23) = *(v30 + 40);
  *(v30 + 40) = v7;
  sub_21758E1D4(v37, v4, v5, v6, v7);
  sub_2175CB7AC(v31, v32, v33, v34, v35, v23);
  return 1;
}

uint64_t sub_217722710()
{
  sub_217722EE0(v0 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_request);

  sub_2175CB7AC(*(v0 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_activeRetryContext), *(v0 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_activeRetryContext + 8), *(v0 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_activeRetryContext + 16), *(v0 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_activeRetryContext + 24), *(v0 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_activeRetryContext + 32), *(v0 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_activeRetryContext + 40));

  return v0;
}

uint64_t sub_217722788()
{
  sub_217722710();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t _s7ContextCMa(uint64_t a1)
{
  result = qword_27CB2DB08;
  if (!qword_27CB2DB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_217722834(uint64_t a1)
{
  result = type metadata accessor for MusicDataRequest(319);
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

unint64_t sub_2177228E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v58 - v2;
  v66 = 0;
  v67 = 0xE000000000000000;
  v4 = OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_currentRetryCounts;
  swift_beginAccess();
  if (*(*(v0 + v4) + 16))
  {
    v63 = 0;
    v64 = 0xE000000000000000;
    sub_217752AA8();

    OUTLINED_FUNCTION_2_4();
    v63 = 0xD000000000000018;
    v64 = v5;
    sub_217722E8C(v6, v7, v8);
    sub_217751DE8();
    v9 = sub_217751DA8();
    v11 = v10;

    MEMORY[0x21CEA23B0](v9, v11, v12);

    MEMORY[0x21CEA23B0](v63, v64, v13);
  }

  if (*(v0 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_activeRetryContext + 40) != 255)
  {
    v14 = *(v0 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_activeRetryContext);
    strcpy(v65, "RetryContext(");
    HIWORD(v65[1]) = -4864;
    v63 = 0x6F7361657220200ALL;
    v64 = 0xEB00000000203A6ELL;
    v15 = sub_2175FA42C(v14);
    MEMORY[0x21CEA23B0](v15);

    MEMORY[0x21CEA23B0](44, 0xE100000000000000, v16);
    OUTLINED_FUNCTION_2_143();

    OUTLINED_FUNCTION_1_147();
    v17 = sub_2176510AC();
    v19 = v18;
    v63 = 0;
    v64 = 0xE000000000000000;
    sub_217752AA8();

    OUTLINED_FUNCTION_2_4();
    v63 = 0xD000000000000013;
    v64 = v20;
    v61 = v17;
    v62 = v19;
    v59 = 10;
    v60 = 0xE100000000000000;
    v58[0] = 2105354;
    v58[1] = 0xE300000000000000;
    sub_21733A5C8(v21, v22, v23);
    v24 = OUTLINED_FUNCTION_0_166(&v59, v58);
    v26 = v25;

    MEMORY[0x21CEA23B0](v24, v26, v27);

    OUTLINED_FUNCTION_2_143();

    MEMORY[0x21CEA23B0](10506, 0xE200000000000000, v28);
    v30 = v65[0];
    v29 = v65[1];
    v63 = 0;
    v64 = 0xE000000000000000;
    sub_217752AA8();

    OUTLINED_FUNCTION_2_4();
    v63 = 0xD000000000000018;
    v64 = v31;
    v65[0] = v30;
    v65[1] = v29;
    v61 = 10;
    v62 = 0xE100000000000000;
    v59 = 2105354;
    v60 = 0xE300000000000000;
    sub_21733A5C8(v32, v33, v34);
    v35 = OUTLINED_FUNCTION_0_166(&v61, &v59);
    v37 = v36;

    MEMORY[0x21CEA23B0](v35, v37, v38);

    MEMORY[0x21CEA23B0](v63, v64, v39);
  }

  v63 = 0x22203A6C7275;
  v64 = 0xE600000000000000;
  sub_2177512C8();
  v40 = sub_2177516D8();
  if (__swift_getEnumTagSinglePayload(v3, 1, v40) == 1)
  {
    sub_21735436C(v3);
    v41 = 0;
    v42 = 0xE000000000000000;
  }

  else
  {
    v41 = sub_217751668();
    v42 = v43;
    (*(*(v40 - 8) + 8))(v3, v40);
  }

  MEMORY[0x21CEA23B0](v41, v42);

  MEMORY[0x21CEA23B0](34, 0xE100000000000000, v44);
  v46 = v63;
  v45 = v64;
  OUTLINED_FUNCTION_2_4();
  v63 = 0xD000000000000019;
  v64 = v47;
  v49 = v66;
  v48 = v67;
  v50 = HIBYTE(v67) & 0xF;
  if ((v67 & 0x2000000000000000) == 0)
  {
    v50 = v66 & 0xFFFFFFFFFFFFLL;
  }

  if (v50)
  {
    v65[0] = 2105354;
    v65[1] = 0xE300000000000000;
    MEMORY[0x21CEA23B0](v46, v45);

    MEMORY[0x21CEA23B0](v65[0], v65[1], v51);

    MEMORY[0x21CEA23B0](v49, v48, v52);

    v54 = 10506;
    v55 = 0xE200000000000000;
  }

  else
  {

    MEMORY[0x21CEA23B0](v46, v45, v56);

    v54 = 41;
    v55 = 0xE100000000000000;
  }

  MEMORY[0x21CEA23B0](v54, v55, v53);
  return v63;
}

unint64_t sub_217722E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DB18;
  if (!qword_27CB2DB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DB18);
  }

  return result;
}

uint64_t sub_217722EE0(uint64_t a1)
{
  v2 = type metadata accessor for MusicDataRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217722F3C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB28, &qword_21779F028);
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217723450(v8, v9, v10);
  v11 = sub_2177532C8();
  v17 = 0;
  sub_2172E1C68(v11, v12, v13);
  OUTLINED_FUNCTION_0_167(&type metadata for MusicItemID);
  v15 = v16;
  v17 = 1;
  OUTLINED_FUNCTION_0_167(&type metadata for MusicItemID);
  (*(v4 + 8))(v7, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v15;
}

uint64_t sub_2177230F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB20, &qword_21779F020);
  OUTLINED_FUNCTION_0_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217723450(v15, v16, v17);
  v18 = sub_2177532F8();
  v30 = a2;
  v31 = a3;
  v32 = 0;
  v21 = sub_2172E1B18(v18, v19, v20);
  v24 = OUTLINED_FUNCTION_1_148(v21, v22, v23, &type metadata for MusicItemID);
  if (!v5)
  {
    v30 = v28;
    v31 = v29;
    v32 = 1;
    OUTLINED_FUNCTION_1_148(v24, v25, v26, &type metadata for MusicItemID);
  }

  return (*(v11 + 8))(v14, v9);
}

uint64_t sub_217723254(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6573616261746164 && a2 == 0xEA00000000004449)
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

uint64_t sub_217723320(char a1)
{
  if (a1)
  {
    return 0x6573616261746164;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_217723360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217723254(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217723388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217723450(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2177233C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217723450(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_217723400@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_217722F3C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_217723450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE8348;
  if (!qword_280BE8348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8348);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CodableMusicDeviceLocalID.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_217723594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DB30;
  if (!qword_27CB2DB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DB30);
  }

  return result;
}

unint64_t sub_2177235EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DB38;
  if (!qword_27CB2DB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DB38);
  }

  return result;
}

unint64_t sub_217723644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE8338;
  if (!qword_280BE8338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8338);
  }

  return result;
}

unint64_t sub_21772369C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE8340;
  if (!qword_280BE8340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8340);
  }

  return result;
}

uint64_t sub_217723770()
{
  OUTLINED_FUNCTION_17_67();
  if (!v0)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_61_22();
  v1 = sub_2172A41AC();
  return OUTLINED_FUNCTION_41_35(v1, v2);
}

uint64_t Song.init(propertyProvider:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 24))(v11, v4, v5);
  v7 = v11[0];
  v6 = v11[1];
  sub_217751DE8();
  sub_217269F50(v11);
  *a2 = v7;
  a2[1] = v6;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  PropertyProvider.eraseToAnyPropertyProvider()(v8, v9, a2 + 2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static Song.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[5];
  v6 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v5);
  v7 = *(v6 + 104);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
  return v7(a2 + 2, v8, v5, v6) & 1;
}

uint64_t Song.debugDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_6_1();
  v348 = v3 - v4;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v5);
  v349 = &v345 - v6;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v7);
  v352 = &v345 - v8;
  v353 = sub_2177517D8();
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_1();
  v347 = v12 - v13;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v14);
  *&v357 = &v345 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  MEMORY[0x28223BE20](v16 - 8);
  OUTLINED_FUNCTION_6_1();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = (&v345 - v21);
  v23 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_1();
  v351 = v27 - v28;
  OUTLINED_FUNCTION_79_2();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v345 - v31;
  v393 = 0x28676E6F53;
  v394 = 0xE500000000000000;
  *&v378 = 0x22203A646920200ALL;
  *(&v378 + 1) = 0xE800000000000000;
  MEMORY[0x21CEA23B0](*v0, v0[1], v30);
  OUTLINED_FUNCTION_18_53();
  OUTLINED_FUNCTION_47();

  OUTLINED_FUNCTION_24_0();
  *&v378 = v33 | 0x6C74697400000000;
  *(&v378 + 1) = 0xEC00000022203A65;
  if (qword_280BE9750 == -1)
  {
    goto LABEL_2;
  }

LABEL_217:
  OUTLINED_FUNCTION_18_2(&qword_280BE9750);
LABEL_2:
  v350 = v10;
  *&v355 = v19;
  v34 = sub_2172A41AC();
  v36 = OUTLINED_FUNCTION_41_35(v34, v35);
  if (v115)
  {
    v38 = 0xE000000000000000;
  }

  else
  {
    v38 = v37;
  }

  MEMORY[0x21CEA23B0](v36, v38);

  OUTLINED_FUNCTION_18_53();
  OUTLINED_FUNCTION_47();

  if (qword_280BE9960 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_58_24();
  sub_2172A41AC();
  if (v39)
  {
    OUTLINED_FUNCTION_2_4();
    *&v378 = v10;
    *(&v378 + 1) = v40;
    MEMORY[0x21CEA23B0]();

    OUTLINED_FUNCTION_18_53();
    OUTLINED_FUNCTION_47();
  }

  OUTLINED_FUNCTION_2_4();
  *&v378 = v10;
  *(&v378 + 1) = v41;
  if (qword_280BE9958 != -1)
  {
    OUTLINED_FUNCTION_17_18(&qword_280BE9958);
  }

  v42 = sub_2172A41AC();
  v44 = OUTLINED_FUNCTION_41_35(v42, v43);
  if (v115)
  {
    v46 = 0xE000000000000000;
  }

  else
  {
    v46 = v45;
  }

  MEMORY[0x21CEA23B0](v44, v46);

  OUTLINED_FUNCTION_18_53();
  OUTLINED_FUNCTION_47();

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255C8, &qword_21775D4A0);
  OUTLINED_FUNCTION_31_11(v47);
  OUTLINED_FUNCTION_30_3();
  v48 = sub_2172E3DC0();
  sub_2176CA560(v48, v49, v50, v51, v52, v53, v54, v55, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, *(&v355 + 1), v356, *(&v356 + 1), v357, *(&v357 + 1), v358, v359, v360, v361, v362, v363);

  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    sub_2171F06D8(v22, &unk_27CB277C0, &qword_217758DC0);
  }

  else
  {
    (v25[4])(v32, v22, v23);
    OUTLINED_FUNCTION_2_4();
    *&v378 = v10 - 1;
    *(&v378 + 1) = v56;
    sub_21736C310();
    sub_217752FC8();
    OUTLINED_FUNCTION_70_21();

    OUTLINED_FUNCTION_18_53();
    OUTLINED_FUNCTION_15_70();

    (v25[1])(v32, v23, v57);
  }

  v32 = v357;
  if (qword_280BE9920 != -1)
  {
    swift_once();
  }

  sub_2172A41AC();
  if (v58)
  {
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_53_31(v59);
    MEMORY[0x21CEA23B0]();

    OUTLINED_FUNCTION_18_53();
    OUTLINED_FUNCTION_15_70();
  }

  if (qword_280BE98B0 != -1)
  {
    swift_once();
  }

  sub_2172A41AC();
  if (v60)
  {
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_53_31(v61);
    MEMORY[0x21CEA23B0]();

    OUTLINED_FUNCTION_18_53();
    OUTLINED_FUNCTION_15_70();
  }

  if (qword_280BE9878 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_53_25();
  sub_2176CA5B8(v62, v63, v64, v65, v66, v67, v68, v69, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, *(&v355 + 1), v356, *(&v356 + 1), v357, *(&v357 + 1), v358, v359, v360, v361);
  v70 = v378;
  if (v378 != 2)
  {
    *&v378 = 0;
    *(&v378 + 1) = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](v10 + 3, 0x80000002177AC060);
    LOBYTE(v385) = v70 & 1;
    sub_217752C78();
    OUTLINED_FUNCTION_15_70();
  }

  if (qword_280BE9950 != -1)
  {
    swift_once();
  }

  sub_2172A41C0();
  if ((v71 & 1) == 0)
  {
    OUTLINED_FUNCTION_2_4();
    *&v378 = v10 - 1;
    *(&v378 + 1) = v72;
    v385 = v73;
    sub_217752FC8();
    OUTLINED_FUNCTION_70_21();

    OUTLINED_FUNCTION_15_70();
  }

  if (qword_280BE96D8 != -1)
  {
    swift_once();
  }

  sub_2172A41F0();
  if ((v74 & 1) == 0)
  {
    *&v378 = 0;
    *(&v378 + 1) = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0x6172756420200A2CLL, 0xEE00203A6E6F6974);
    sub_2177525E8();
    OUTLINED_FUNCTION_15_70();
  }

  if (qword_280BE9838 != -1)
  {
    OUTLINED_FUNCTION_125(&qword_280BE9838);
  }

  OUTLINED_FUNCTION_53_25();
  sub_2176CA5AC(v75, v76, v77, v78, v79, v80, v81, v82, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, *(&v355 + 1), v356, *(&v356 + 1), v357, *(&v357 + 1), v358, v359);
  v389[0] = v378;
  v389[1] = v379;
  v389[2] = v380;
  v389[3] = v381;
  v390 = v379;
  v391 = v380;
  v392 = v381;
  if (*(&v378 + 1) != 1)
  {
    v385 = v10 + 3;
    v386 = 0x80000002177AB940;
    v378 = v389[0];
    v379 = v390;
    v380 = v391;
    v381 = v392;
    v83 = EditorialNotes.debugDescription.getter();
    v85 = v84;
    v86 = sub_2171F06D8(v389, &qword_27CB24B70, &unk_217759460);
    *&v377[0] = v83;
    *(&v377[0] + 1) = v85;
    *&v364 = 10;
    *(&v364 + 1) = 0xE100000000000000;
    *&v369 = 2105354;
    *(&v369 + 1) = 0xE300000000000000;
    sub_21733A5C8(v86, v87, v88);
    OUTLINED_FUNCTION_6_93();
    OUTLINED_FUNCTION_43_28();
    v345 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    v97 = OUTLINED_FUNCTION_49_30(v89, v90, v91, v92, v93, v94, v95, v96, v345);
    v99 = v98;

    v101 = v97;
    v32 = v357;
    MEMORY[0x21CEA23B0](v101, v99, v100);

    MEMORY[0x21CEA23B0](v385, v386, v102);
  }

  v387 = 0;
  v388 = 0xE000000000000000;
  if (qword_280BE9948 != -1)
  {
    OUTLINED_FUNCTION_124(&qword_280BE9948);
  }

  v103 = sub_2172A41D4(qword_280C02980);
  if (v103)
  {
    v104 = v103;
  }

  else
  {
    v104 = MEMORY[0x277D84F90];
  }

  v19 = *(v104 + 16);
  v354 = v1;
  *&v356 = v23;
  if (v19)
  {
    v105 = (v104 + 40);
    v10 = 0x22202020200ALL;
    do
    {
      v107 = *(v105 - 1);
      v106 = *v105;
      if ((v388 & 0x2000000000000000) != 0)
      {
        v108 = HIBYTE(v388) & 0xF;
      }

      else
      {
        v108 = v387 & 0xFFFFFFFFFFFFLL;
      }

      sub_217751DE8();
      if (v108)
      {
        OUTLINED_FUNCTION_48_1();
      }

      *&v378 = 0x22202020200ALL;
      *(&v378 + 1) = 0xE600000000000000;
      MEMORY[0x21CEA23B0](v107, v106);

      OUTLINED_FUNCTION_18_53();
      MEMORY[0x21CEA23B0](v378, *(&v378 + 1));

      v105 += 2;
      --v19;
    }

    while (v19);

    v109 = v388;
    OUTLINED_FUNCTION_58_24();
    v23 = v356;
    v32 = v357;
  }

  else
  {

    v110 = 0;
    v109 = 0xE000000000000000;
  }

  v111 = HIBYTE(v109) & 0xF;
  if ((v109 & 0x2000000000000000) == 0)
  {
    v111 = v110 & 0xFFFFFFFFFFFFLL;
  }

  if (v111)
  {
    OUTLINED_FUNCTION_2_4();
    *&v378 = v10;
    *(&v378 + 1) = v112;
    MEMORY[0x21CEA23B0]();

    OUTLINED_FUNCTION_17_55();
    OUTLINED_FUNCTION_15_70();
  }

  OUTLINED_FUNCTION_24_0();
  *&v378 = v113 | 0x4C73616800000000;
  *(&v378 + 1) = 0xEF203A7363697279;
  v114 = Song.hasLyrics.getter();
  v115 = (v114 & 1) == 0;
  if (v114)
  {
    v116 = 1702195828;
  }

  else
  {
    v116 = 0x65736C6166;
  }

  if (v115)
  {
    v117 = 0xE500000000000000;
  }

  else
  {
    v117 = 0xE400000000000000;
  }

  MEMORY[0x21CEA23B0](v116, v117);

  OUTLINED_FUNCTION_15_70();

  if (qword_280BE9760 != -1)
  {
    swift_once();
  }

  sub_2172A41AC();
  if (v118)
  {
    OUTLINED_FUNCTION_24_0();
    *&v378 = v119 | 0x6372736900000000;
    *(&v378 + 1) = 0xEB0000000022203ALL;
    MEMORY[0x21CEA23B0]();

    OUTLINED_FUNCTION_18_53();
    OUTLINED_FUNCTION_15_70();
  }

  if (qword_280BE9868 != -1)
  {
    swift_once();
  }

  sub_2172A41C0();
  if ((v120 & 1) == 0)
  {
    OUTLINED_FUNCTION_2_4();
    *&v378 = v10 + 2;
    *(&v378 + 1) = v121;
    v385 = v122;
    sub_217752FC8();
    OUTLINED_FUNCTION_70_21();

    OUTLINED_FUNCTION_15_70();
  }

  if (qword_280BE98A0 != -1)
  {
    swift_once();
  }

  sub_2172A41AC();
  if (v123)
  {
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_53_31(v124);
    MEMORY[0x21CEA23B0]();

    OUTLINED_FUNCTION_18_53();
    OUTLINED_FUNCTION_15_70();
  }

  if (qword_280BE9808 != -1)
  {
    swift_once();
  }

  sub_2172A41C0();
  if ((v125 & 1) == 0)
  {
    OUTLINED_FUNCTION_2_4();
    *&v378 = v10 + 3;
    *(&v378 + 1) = v132;
    v385 = v133;
    sub_217752FC8();
    OUTLINED_FUNCTION_70_21();

    OUTLINED_FUNCTION_15_70();
  }

  v134 = v352;
  if (qword_280BE98F0 != -1)
  {
    swift_once();
  }

  sub_2176CA580(qword_280C02950, v125, v126, v127, v128, v129, v130, v131, v349, v350, v351, v352, v353, v354, v355, *(&v355 + 1), v356, *(&v356 + 1), v357, *(&v357 + 1), v358, v359, v360, v361, v362, v363, v364, *(&v364 + 1), v365, *(&v365 + 1));
  v135 = v353;
  if (__swift_getEnumTagSinglePayload(v134, 1, v353) == 1)
  {
    sub_2171F06D8(v134, &qword_27CB241C0, &qword_217759480);
  }

  else
  {
    v346 = v25;
    v136 = v350;
    v19 = v350 + 32;
    v137 = *(v350 + 32);
    v137(v32, v134, v135);
    if (qword_280BE8910 != -1)
    {
      swift_once();
    }

    v138 = type metadata accessor for CloudFormatter(0);
    v352 = __swift_project_value_buffer(v138, qword_280BE8918);
    v139 = v349;
    (*(v136 + 16))(v349, v32, v135);
    v140 = OUTLINED_FUNCTION_45_3();
    __swift_storeEnumTagSinglePayload(v140, v141, 1, v135);
    v142 = v32;
    v32 = v348;
    sub_217202078(v139, v348, &qword_27CB241C0, &qword_217759480);
    if (__swift_getEnumTagSinglePayload(v32, 1, v135) == 1)
    {
      v10 = &qword_217759480;
      sub_2171F06D8(v139, &qword_27CB241C0, &qword_217759480);
      sub_2171F06D8(v32, &qword_27CB241C0, &qword_217759480);
      (*(v136 + 8))(v142, v135);
      OUTLINED_FUNCTION_58_24();
    }

    else
    {
      v143 = v347;
      v137(v347, v32, v135);
      v144 = *(v352 + *(v138 + 20));
      v145 = sub_2177517A8();
      v10 = [v144 stringFromDate_];

      v19 = sub_217751F48();
      v32 = v146;

      v147 = *(v136 + 8);
      v147(v143, v135);
      sub_2171F06D8(v139, &qword_27CB241C0, &qword_217759480);
      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_53_31(v148);
      MEMORY[0x21CEA23B0](v19, v32);

      OUTLINED_FUNCTION_18_53();
      OUTLINED_FUNCTION_15_5();
      OUTLINED_FUNCTION_58_24();

      (v147)(v357, v135, v149);
    }

    v25 = v346;
    v23 = v356;
  }

  if (qword_280BE98E8 != -1)
  {
    swift_once();
  }

  sub_2172A41C0();
  if ((v150 & 1) == 0)
  {
    OUTLINED_FUNCTION_2_4();
    *&v378 = v10;
    *(&v378 + 1) = v151;
    v385 = v152;
    v153 = sub_217752FC8();
    MEMORY[0x21CEA23B0](v153);

    OUTLINED_FUNCTION_15_5();
  }

  if (qword_280BE96C8 != -1)
  {
    swift_once();
  }

  sub_2172A41AC();
  if (v154)
  {
    OUTLINED_FUNCTION_24_0();
    *&v378 = v161 | 0x6B726F7700000000;
    *(&v378 + 1) = 0xEF22203A656D614ELL;
    MEMORY[0x21CEA23B0]();

    OUTLINED_FUNCTION_18_53();
    OUTLINED_FUNCTION_15_5();
  }

  if (qword_280BE9770 != -1)
  {
    swift_once();
  }

  v162 = v355;
  sub_2176CA560(qword_280C02858, v154, v155, v156, v157, v158, v159, v160, v349, v350, v351, v352, v353, v354, v355, *(&v355 + 1), v356, *(&v356 + 1), v357, *(&v357 + 1), v358, v359, v360, v361, v362, v363, v364, *(&v364 + 1), v365, *(&v365 + 1));
  if (__swift_getEnumTagSinglePayload(v162, 1, v23) == 1)
  {
    sub_2171F06D8(v162, &unk_27CB277C0, &qword_217758DC0);
  }

  else
  {
    v19 = v351;
    (v25[4])(v351, v162, v23);
    OUTLINED_FUNCTION_24_0();
    *&v378 = v163 | 0x3A6C727500000000;
    *(&v378 + 1) = 0xEA00000000002220;
    sub_21736C310();
    v164 = sub_217752FC8();
    MEMORY[0x21CEA23B0](v164);

    OUTLINED_FUNCTION_18_53();
    OUTLINED_FUNCTION_15_5();

    v166 = v25[1];
    ++v25;
    v166(v19, v23, v165);
  }

  if (qword_280BE9738 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_53_25();
  sub_2176CA544(v167, v168, v169, v170, v171, v172, v173, v174, v349, v350, v351, v352, v353, v354, v355, *(&v355 + 1), v356, *(&v356 + 1), v357, *(&v357 + 1), v358, v359, v360, v361, v362, v363, v364, *(&v364 + 1), v365, *(&v365 + 1));
  if (v382)
  {
    OUTLINED_FUNCTION_36_0();
    *&v369 = 0;
    *(&v369 + 1) = 0xE000000000000000;
    v10 = &unk_21775D410;
    v175 = OUTLINED_FUNCTION_29_0();
    sub_217202078(v175, v176, v177, &unk_21775D410);
    v178 = OUTLINED_FUNCTION_33_42();
    sub_217202078(v178, v179, v180, &unk_21775D410);
    OUTLINED_FUNCTION_19_42();
    OUTLINED_FUNCTION_35_36();
    v19 = BYTE8(v378);
    v22 = (v23 + 32);
    v1 = &unk_27CB276C0;
    v25 = &qword_217758A00;
    if (BYTE8(v378))
    {
LABEL_109:
      OUTLINED_FUNCTION_6();
      swift_beginAccess();
      OUTLINED_FUNCTION_38_34();
      if (!v115)
      {

        sub_217294574();
        goto LABEL_115;
      }
    }

    else
    {
      while (1)
      {
        v181 = *(v23 + 16);
        if (v10 == v181)
        {
          break;
        }

        if ((v10 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
          goto LABEL_217;
        }

        if (v10 >= v181)
        {
          goto LABEL_204;
        }

        OUTLINED_FUNCTION_56();
        v182 = OUTLINED_FUNCTION_45_3();
        v184 = sub_217283C5C(v182, v183);
        sub_2172940A0(v184, v185, v186, v187, v188, v189, v190, v191);
        sub_2171F06D8(v377, &unk_27CB276C0, &qword_217758A00);
LABEL_115:
        OUTLINED_FUNCTION_16_64();
        v32 = __OFADD__(v10, 1);
        if (v19)
        {
          sub_21725CF00(v23, 1);
          if (v32)
          {
            goto LABEL_203;
          }
        }

        else
        {
          sub_21725CF00(v23, 0);
          if (v32)
          {
            goto LABEL_202;
          }
        }

        OUTLINED_FUNCTION_4_110();
        OUTLINED_FUNCTION_4_6();
        if (v192)
        {
          OUTLINED_FUNCTION_48_1();
        }

        OUTLINED_FUNCTION_40_4();
        v193 = Album.debugDescription.getter();
        MEMORY[0x21CEA23B0](v193);

        v32 = *(&v364 + 1);
        MEMORY[0x21CEA23B0](v364, *(&v364 + 1), v194);

        sub_21725CE44(v377);
        ++v10;
        v22 += 8;
        if (v19)
        {
          goto LABEL_109;
        }
      }
    }

    v383 = v10;
    sub_2171F06D8(&v378, &qword_27CB276B0, &unk_21777D6C0);
    OUTLINED_FUNCTION_24_0();
    *&v378 = v195 | 0x75626C6100000000;
    *(&v378 + 1) = 0xED00005B203A736DLL;
    v377[0] = v369;
    OUTLINED_FUNCTION_2_118();
    v373 = v197;
    v374 = v196;
    sub_21733A5C8(v198, v199, v200);
    OUTLINED_FUNCTION_6_93();
    OUTLINED_FUNCTION_43_28();
    v349 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    OUTLINED_FUNCTION_49_30(v201, v202, v203, v204, v205, v206, v207, v208, v349);
    v209 = OUTLINED_FUNCTION_57_23();
    MEMORY[0x21CEA23B0](v23, v22, v209);

    OUTLINED_FUNCTION_17_55();
    OUTLINED_FUNCTION_15_5();

    sub_2171F06D8(&v385, &qword_27CB25388, &unk_21775D410);
  }

  else
  {
    sub_2171F06D8(&v378, &qword_27CB25318, &qword_2177657C0);
  }

  if (qword_280BE9710 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_53_25();
  sub_2176CA50C(v210, v211, v212, v213, v214, v215, v216, v217, v349, v350, v351, v352, v353, v354, v355, *(&v355 + 1), v356, *(&v356 + 1), v357, *(&v357 + 1), v358, v359, v360, v361, v362, v363, v364, *(&v364 + 1), v365, *(&v365 + 1));
  if (v382)
  {
    OUTLINED_FUNCTION_36_0();
    *&v369 = 0;
    *(&v369 + 1) = 0xE000000000000000;
    v10 = &unk_21776C4F0;
    v218 = OUTLINED_FUNCTION_29_0();
    sub_217202078(v218, v219, v220, &unk_21776C4F0);
    v221 = OUTLINED_FUNCTION_33_42();
    sub_217202078(v221, v222, v223, &unk_21776C4F0);
    OUTLINED_FUNCTION_19_42();
    OUTLINED_FUNCTION_35_36();
    v19 = BYTE8(v378);
    v22 = (v23 + 32);
    v1 = &qword_27CB27BD0;
    v25 = &qword_21776B8C0;
    if (BYTE8(v378))
    {
LABEL_132:
      OUTLINED_FUNCTION_6();
      swift_beginAccess();
      OUTLINED_FUNCTION_38_34();
      if (!v115)
      {

        sub_2172945D4();
        goto LABEL_138;
      }
    }

    else
    {
      while (1)
      {
        v224 = *(v23 + 16);
        if (v10 == v224)
        {
          break;
        }

        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_205;
        }

        if (v10 >= v224)
        {
          goto LABEL_208;
        }

        OUTLINED_FUNCTION_56();
        v225 = OUTLINED_FUNCTION_45_3();
        v227 = sub_217283C5C(v225, v226);
        sub_217294118(v227, v228, v229, v230, v231, v232, v233, v234);
        sub_2171F06D8(v377, &qword_27CB27BD0, &qword_21776B8C0);
LABEL_138:
        OUTLINED_FUNCTION_16_64();
        v32 = __OFADD__(v10, 1);
        if (v19)
        {
          sub_21725CF00(v23, 1);
          if (v32)
          {
            goto LABEL_207;
          }
        }

        else
        {
          sub_21725CF00(v23, 0);
          if (v32)
          {
            goto LABEL_206;
          }
        }

        OUTLINED_FUNCTION_4_110();
        OUTLINED_FUNCTION_4_6();
        if (v235)
        {
          OUTLINED_FUNCTION_48_1();
        }

        OUTLINED_FUNCTION_40_4();
        v236 = Artist.debugDescription.getter();
        MEMORY[0x21CEA23B0](v236);

        v32 = *(&v364 + 1);
        MEMORY[0x21CEA23B0](v364, *(&v364 + 1), v237);

        sub_217284498(v377);
        ++v10;
        v22 += 8;
        if (v19)
        {
          goto LABEL_132;
        }
      }
    }

    v383 = v10;
    sub_2171F06D8(&v378, &qword_27CB27BC0, &qword_21776B8B0);
    OUTLINED_FUNCTION_24_0();
    *&v378 = v238 | 0x6974726100000000;
    *(&v378 + 1) = 0xEE005B203A737473;
    v377[0] = v369;
    OUTLINED_FUNCTION_2_118();
    v373 = v240;
    v374 = v239;
    sub_21733A5C8(v241, v242, v243);
    OUTLINED_FUNCTION_6_93();
    OUTLINED_FUNCTION_43_28();
    v349 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    OUTLINED_FUNCTION_49_30(v244, v245, v246, v247, v248, v249, v250, v251, v349);
    v252 = OUTLINED_FUNCTION_57_23();
    MEMORY[0x21CEA23B0](v23, v22, v252);

    OUTLINED_FUNCTION_17_55();
    OUTLINED_FUNCTION_15_5();

    sub_2171F06D8(&v385, &qword_27CB25398, &unk_21776C4F0);
  }

  else
  {
    sub_2171F06D8(&v378, &qword_27CB25310, &unk_21775D3D0);
  }

  if (qword_280BE9720 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_53_25();
  sub_2176CA528(v253, v254, v255, v256, v257, v258, v259, v260, v349, v350, v351, v352, v353, v354, v355, *(&v355 + 1), v356, *(&v356 + 1), v357, *(&v357 + 1), v358, v359, v360, v361, v362, v363, v364, *(&v364 + 1), v365, *(&v365 + 1));
  if (v382)
  {
    OUTLINED_FUNCTION_36_0();
    *&v384 = 0;
    *(&v384 + 1) = 0xE000000000000000;
    v10 = &unk_21775D420;
    v261 = OUTLINED_FUNCTION_29_0();
    sub_217202078(v261, v262, v263, &unk_21775D420);
    v264 = OUTLINED_FUNCTION_33_42();
    sub_217202078(v264, v265, v266, &unk_21775D420);
    OUTLINED_FUNCTION_19_42();
    OUTLINED_FUNCTION_35_36();
    v1 = BYTE8(v378);
    v22 = (v23 + 32);
    v32 = 10;
    v25 = &qword_217778790;
    if (BYTE8(v378))
    {
LABEL_155:
      OUTLINED_FUNCTION_6();
      swift_beginAccess();
      OUTLINED_FUNCTION_38_34();
      if (!v115)
      {

        sub_21729464C();
        goto LABEL_164;
      }
    }

    else
    {
      while (1)
      {
        v267 = *(v23 + 16);
        if (v10 == v267)
        {
          break;
        }

        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_209;
        }

        if (v10 >= v267)
        {
          goto LABEL_212;
        }

        sub_217202078(v22, v377, &qword_27CB24618, &qword_217778790);
        sub_217202078(v377, &v364, &qword_27CB24618, &qword_217778790);
        if (v368)
        {
          v268 = *(v364 + 16);
          v269 = *(v364 + 24);
          v270 = OUTLINED_FUNCTION_45_3();
          sub_217283C5C(v270, v271);
          sub_217751DE8();

          sub_2172937E4(v268, v269, v272, v273, v274, v275, v276, v277, v349, v350, v351, v352, v353, v354, v355, *(&v355 + 1), v356, *(&v356 + 1), v357, *(&v357 + 1), v358, v359, v360, v361, v362, v363, v364, *(&v364 + 1), v365, *(&v365 + 1), v366, *(&v366 + 1), v367, v368, v369, *(&v369 + 1), v370, *(&v370 + 1));
          v32 = 10;
        }

        else
        {
          v369 = v364;
          v370 = v365;
          v371 = v366;
          v372 = v367;
          v278 = OUTLINED_FUNCTION_45_3();
          sub_217283C5C(v278, v279);
        }

        sub_2171F06D8(v377, &qword_27CB24618, &qword_217778790);
LABEL_164:
        v356 = v370;
        v357 = v369;
        v355 = v371;
        v19 = __OFADD__(v10, 1);
        if (v1)
        {
          sub_21725CF00(v23, 1);
          if (v19)
          {
            goto LABEL_211;
          }
        }

        else
        {
          sub_21725CF00(v23, 0);
          if (v19)
          {
            goto LABEL_210;
          }
        }

        OUTLINED_FUNCTION_4_110();
        OUTLINED_FUNCTION_4_6();
        if (v280)
        {
          OUTLINED_FUNCTION_48_1();
        }

        *&v364 = 10;
        *(&v364 + 1) = 0xE100000000000000;
        v281 = Genre.debugDescription.getter();
        MEMORY[0x21CEA23B0](v281);

        v19 = *(&v364 + 1);
        MEMORY[0x21CEA23B0](v364, *(&v364 + 1), v282);

        sub_21728418C(v377);
        ++v10;
        v22 += 8;
        if (v1)
        {
          goto LABEL_155;
        }
      }
    }

    v383 = v10;
    sub_2171F06D8(&v378, &qword_27CB27C88, &qword_21779F250);
    OUTLINED_FUNCTION_24_0();
    *&v378 = v283 | 0x726E656700000000;
    *(&v378 + 1) = 0xED00005B203A7365;
    v377[0] = v384;
    OUTLINED_FUNCTION_2_118();
    *&v369 = v285;
    *(&v369 + 1) = v284;
    sub_21733A5C8(v286, v287, v288);
    OUTLINED_FUNCTION_6_93();
    OUTLINED_FUNCTION_43_28();
    v349 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    OUTLINED_FUNCTION_49_30(v289, v290, v291, v292, v293, v294, v295, v296, v349);
    v297 = OUTLINED_FUNCTION_58_0();
    MEMORY[0x21CEA23B0](v10, v23, v297);

    OUTLINED_FUNCTION_17_55();
    MEMORY[0x21CEA23B0](v378, *(&v378 + 1));

    sub_2171F06D8(&v385, &qword_27CB27C80, &unk_21775D420);
  }

  else
  {
    sub_2171F06D8(&v378, &qword_27CB25320, &unk_21776E020);
  }

  if (qword_280BE96B0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_53_25();
  sub_2176CA50C(v298, v299, v300, v301, v302, v303, v304, v305, v349, v350, v351, v352, v353, v354, v355, *(&v355 + 1), v356, *(&v356 + 1), v357, *(&v357 + 1), v358, v359, v360, v361, v362, v363, v364, *(&v364 + 1), v365, *(&v365 + 1));
  if (v382)
  {
    OUTLINED_FUNCTION_36_0();
    *&v384 = 0;
    *(&v384 + 1) = 0xE000000000000000;
    v306 = OUTLINED_FUNCTION_29_0();
    sub_217202078(v306, v307, v308, &unk_21776C4F0);
    v309 = OUTLINED_FUNCTION_33_42();
    sub_217202078(v309, v310, v311, &unk_21776C4F0);
    v312 = *&v377[0];
    v313 = BYTE8(v377[0]);
    sub_217283C5C(*&v377[0], SBYTE8(v377[0]));
    sub_2171F06D8(v377, &qword_27CB25398, &unk_21776C4F0);
    sub_21725CF00(v312, v313);
    v19 = 0;
    v383 = 0;
    v10 = v378;
    v32 = BYTE8(v378);
    v23 = v378 + 32;
    v22 = &qword_27CB27BD0;
    v1 = &qword_21776B8C0;
    if (BYTE8(v378))
    {
LABEL_181:
      OUTLINED_FUNCTION_6();
      swift_beginAccess();
      if (v19 != *(*(v10 + 56) + 16))
      {

        sub_2172945D4();
        goto LABEL_187;
      }
    }

    else
    {
      while (1)
      {
        v314 = *(v10 + 16);
        if (v19 == v314)
        {
          break;
        }

        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_213;
        }

        if (v19 >= v314)
        {
          goto LABEL_216;
        }

        sub_217202078(v23, v377, &qword_27CB27BD0, &qword_21776B8C0);
        v315 = sub_217283C5C(v10, 0);
        sub_217294118(v315, v316, v317, v318, v319, v320, v321, v322);
        sub_2171F06D8(v377, &qword_27CB27BD0, &qword_21776B8C0);
LABEL_187:
        OUTLINED_FUNCTION_16_64();
        v25 = __OFADD__(v19, 1);
        if (v32)
        {
          sub_21725CF00(v10, 1);
          if (v25)
          {
            goto LABEL_215;
          }
        }

        else
        {
          sub_21725CF00(v10, 0);
          if (v25)
          {
            goto LABEL_214;
          }
        }

        OUTLINED_FUNCTION_4_110();
        OUTLINED_FUNCTION_4_6();
        if (v323)
        {
          OUTLINED_FUNCTION_48_1();
        }

        OUTLINED_FUNCTION_40_4();
        v324 = Artist.debugDescription.getter();
        MEMORY[0x21CEA23B0](v324);

        v25 = *(&v364 + 1);
        MEMORY[0x21CEA23B0](v364, *(&v364 + 1), v325);

        sub_217284498(v377);
        ++v19;
        v23 += 64;
        if (v32)
        {
          goto LABEL_181;
        }
      }
    }

    v383 = v19;
    sub_2171F06D8(&v378, &qword_27CB27BC0, &qword_21776B8B0);
    OUTLINED_FUNCTION_2_4();
    *&v378 = 0xD000000000000010;
    *(&v378 + 1) = v326;
    v377[0] = v384;
    OUTLINED_FUNCTION_2_118();
    v375 = v328;
    v376 = v327;
    sub_21733A5C8(v329, v330, v331);
    OUTLINED_FUNCTION_6_93();
    OUTLINED_FUNCTION_43_28();
    v349 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    OUTLINED_FUNCTION_49_30(v332, v333, v334, v335, v336, v337, v338, v339, v349);
    v340 = OUTLINED_FUNCTION_58_0();
    MEMORY[0x21CEA23B0](v10, v23, v340);

    OUTLINED_FUNCTION_17_55();
    MEMORY[0x21CEA23B0](v378, *(&v378 + 1));

    v341 = &qword_27CB25398;
    v342 = &unk_21776C4F0;
    v343 = &v385;
  }

  else
  {
    v341 = &qword_27CB25310;
    v342 = &unk_21775D3D0;
    v343 = &v378;
  }

  sub_2171F06D8(v343, v341, v342);
  MEMORY[0x21CEA23B0](10506, 0xE200000000000000);
  return v393;
}

uint64_t Song.albumIdentifierSet.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE82A8 != -1)
  {
    swift_once();
  }

  v26 = qword_280C02548;

  return sub_2176CB598(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t Song.editorialNotes.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE9838 != -1)
  {
    OUTLINED_FUNCTION_125(&qword_280BE9838);
  }

  v26 = qword_280C028E8;

  return sub_2176CA5AC(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t Song.genreNames.getter()
{
  if (qword_280BE9948 != -1)
  {
    OUTLINED_FUNCTION_124(&qword_280BE9948);
  }

  result = sub_2172A41D4(qword_280C02980);
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t Song.keepLocalManagedStatusReasons.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (qword_280BE9780 != -1)
  {
    swift_once();
  }

  v28 = qword_280C02860;

  return sub_2176CA960(v28, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t Song.playParameters.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE9800 != -1)
  {
    swift_once();
  }

  v26 = qword_280C028C0;

  return sub_2176CAA38(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_217725CB8()
{
  OUTLINED_FUNCTION_16_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_71_21(v0, v1, v2, v3);
  }

  v5 = OUTLINED_FUNCTION_50_29();

  return v6(v5);
}

uint64_t Song.subscript.getter()
{
  OUTLINED_FUNCTION_62_0();
  sub_2173626DC(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_62_0();
  sub_2173626DC(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_62_0();
  v3 = type metadata accessor for MusicItemCollection(0, *(v1 + 264), *(v0 + 272), v2);
  sub_2173626DC(v3, v4, v5);
  swift_getWitnessTable();
  v6 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v6, v7, v8);
}

uint64_t Song.lyrics.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE8260 != -1)
  {
    OUTLINED_FUNCTION_24_4(&qword_280BE8260);
  }

  v26 = qword_280C02510;

  return sub_2176CA5A0(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_2177261F4()
{
  OUTLINED_FUNCTION_17_67();
  if (!v0)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_61_22();
  return sub_2172A41AC();
}

uint64_t sub_21772629C()
{
  OUTLINED_FUNCTION_34_10();
  if (!v2)
  {
    swift_once();
  }

  return v0(*v1);
}

uint64_t Song._spatialTimingInformation.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (qword_280BE8288 != -1)
  {
    swift_once();
  }

  v28 = qword_280C02530;

  return sub_2176CAA44(v28, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_21772648C()
{
  OUTLINED_FUNCTION_16_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_71_21(v0, v1, v2, v3);
  }

  v5 = OUTLINED_FUNCTION_50_29();

  return v6(v5);
}

uint64_t sub_217726554()
{
  OUTLINED_FUNCTION_16_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_71_21(v0, v1, v2, v3);
  }

  v5 = OUTLINED_FUNCTION_50_29();

  return v6(v5);
}

uint64_t Song.catalogAsset.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE98C8 != -1)
  {
    swift_once();
  }

  v26 = qword_280C02938;

  return sub_2176CA86C(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_217726764()
{
  OUTLINED_FUNCTION_16_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_71_21(v0, v1, v2, v3);
  }

  v5 = OUTLINED_FUNCTION_50_29();

  return v6(v5);
}

uint64_t Song.localFileAsset.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (qword_280BE9818 != -1)
  {
    swift_once();
  }

  v28 = qword_280C028D0;

  return sub_2176CA974(v28, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_2177268C0()
{
  OUTLINED_FUNCTION_34_10();
  if (!v2)
  {
    swift_once();
  }

  return v0(*v1);
}

uint64_t Song.id.getter()
{
  v1 = *v0;
  sub_217751DE8();
  return v1;
}

void *sub_217726B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_16_4();
  if (!v26)
  {
    swift_once();
  }

  v27 = OUTLINED_FUNCTION_50_29();

  return sub_2176CA860(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t Song.hash(into:)(uint64_t a1)
{
  sub_217751FF8();
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 112))(a1, v3, v4);
}

uint64_t Song.hashValue.getter()
{
  sub_2177531E8();
  sub_217751FF8();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 112))(v4, v1, v2);
  return sub_217753238();
}

uint64_t sub_217726DD8@<X0>(uint64_t *a1@<X8>)
{
  result = Song.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_217726E00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB48, &qword_21779F5F8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6B726F77747261, 0xE700000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02840 = result;
  return result;
}

uint64_t sub_217726E74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBB8, &qword_21779F688);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6D614E6D75626C61, 0xE900000000000065, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02998 = result;
  return result;
}

uint64_t sub_217726EEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBB8, &qword_21779F688);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  v1 = OUTLINED_FUNCTION_30_3();
  result = OUTLINED_FUNCTION_26(v1 & 0xFFFFFFFFFFFFLL | 0x614E000000000000, 0xEA0000000000656DLL, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02990 = result;
  return result;
}

uint64_t sub_217726F5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBB8, &qword_21779F688);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x7475626972747461, 0xEB000000006E6F69, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02968 = result;
  return result;
}

uint64_t sub_217726FD8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DC30, &qword_21779F710);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x676F6C617461635FLL, 0xED00007465737341, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02938 = result;
  return result;
}

uint64_t sub_217727058()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBB8, &qword_21779F688);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  v1 = OUTLINED_FUNCTION_62_25();
  result = OUTLINED_FUNCTION_26(v1, 0xEC000000656D614ELL, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02928 = result;
  return result;
}

uint64_t sub_2177270C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DC40, &unk_21779F720);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x52746E65746E6F63, 0xED0000676E697461, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02910 = result;
  return result;
}

uint64_t sub_217727148()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBE0, &qword_21779F6B8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x626D754E63736964, 0xEA00000000007265, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02988 = result;
  return result;
}

uint64_t sub_2177271C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBE8, &qword_21779F6C0);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  v1 = OUTLINED_FUNCTION_44_29();
  result = OUTLINED_FUNCTION_26(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12);
  qword_280C02838 = result;
  return result;
}

uint64_t sub_217727230()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBD8, &qword_21779F6B0);
  OUTLINED_FUNCTION_31_11(v0);
  v1 = OUTLINED_FUNCTION_44_29();
  result = sub_21722FB54(v1, v2, v3, 0xE700000000000000, v4);
  qword_280C02898 = result;
  return result;
}

uint64_t sub_2177272A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBD0, &qword_21779F6A8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  v1 = OUTLINED_FUNCTION_212();
  result = OUTLINED_FUNCTION_26(v1, 0xEE007365746F4E6CLL, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C028E8 = result;
  return result;
}

uint64_t sub_217727318()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBC8, &qword_21779F6A0);
  OUTLINED_FUNCTION_31_11(v0);
  v1 = OUTLINED_FUNCTION_212();
  result = sub_21722FB54(v1, 0xEE006F656469566CLL, 0xD000000000000035, 0x80000002177ABB30, v2);
  qword_280C02868 = result;
  return result;
}

uint64_t sub_217727390()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBC0, &unk_21779F690);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6D614E65726E6567, 0xEA00000000007365, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02980 = result;
  return result;
}

uint64_t sub_217727408()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB50, &unk_21779F600);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x636972794C736168, 0xE900000000000073, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02828 = result;
  return result;
}

uint64_t sub_217727480()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DC20, &qword_21779F700);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000011, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C028A8 = result;
  return result;
}

uint64_t sub_2177274F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBB8, &qword_21779F688);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(1668445033, 0xE400000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02850 = result;
  return result;
}

uint64_t sub_217727560()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBF8, &qword_21779F6D8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x69466C61636F6C5FLL, 0xEF7465737341656CLL, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C028D0 = result;
  return result;
}

uint64_t sub_2177275E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB48, &qword_21779F5F8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x73616D2E72656275, 0xEE00747241726574, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C028B0 = result;
  return result;
}

uint64_t sub_217727660()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBE0, &qword_21779F6B8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  v1 = OUTLINED_FUNCTION_33_49();
  result = OUTLINED_FUNCTION_26(v1, 0xED0000746E756F43, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02908 = result;
  return result;
}

uint64_t sub_2177276D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBB8, &qword_21779F688);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  v1 = OUTLINED_FUNCTION_33_49();
  result = OUTLINED_FUNCTION_26(v1, 0xEC000000656D614ELL, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02920 = result;
  return result;
}

uint64_t sub_217727744()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBE0, &qword_21779F6B8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  v1 = OUTLINED_FUNCTION_33_49();
  result = OUTLINED_FUNCTION_26(v1, 0xEE007265626D754ELL, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C028C8 = result;
  return result;
}

uint64_t sub_2177277B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBA8, &qword_21779F678);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6172615079616C70, 0xEA0000000000736DLL, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C028C0 = result;
  return result;
}

uint64_t sub_217727830()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBA0, &qword_21779F670);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x7377656976657270, 0xE800000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02900 = result;
  return result;
}

uint64_t sub_2177278A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBF0, &unk_21779F6C8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x44657361656C6572, 0xEB00000000657461, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02950 = result;
  return result;
}

uint64_t sub_217727920()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBE0, &qword_21779F6B8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x657361656C65725FLL, 0xEC00000072616559, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02940 = result;
  return result;
}

uint64_t sub_21772799C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBB8, &qword_21779F688);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(1701667182, 0xE400000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02848 = result;
  return result;
}

uint64_t sub_217727A08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBE0, &qword_21779F6B8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6D754E6B63617274, 0xEB00000000726562, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02948 = result;
  return result;
}

uint64_t sub_217727A84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB98, &unk_21779F660);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(7107189, 0xE300000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02858 = result;
  return result;
}

uint64_t sub_217727AF0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBB8, &qword_21779F688);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x656D614E6B726F77, 0xE800000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02830 = result;
  return result;
}

uint64_t sub_217727B64()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBF0, &unk_21779F6C8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  v1 = OUTLINED_FUNCTION_54_22();
  result = OUTLINED_FUNCTION_26(v1, 0xEE00657461446465, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C028F0 = result;
  return result;
}

uint64_t sub_217727BD8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DC18, &qword_21779F6F8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  v1 = OUTLINED_FUNCTION_54_22();
  result = OUTLINED_FUNCTION_26(v1, 0xEF73757461745365, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C028B8 = result;
  return result;
}

uint64_t sub_217727C4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB50, &unk_21779F600);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x617262694C73695FLL, 0xEF64656464417972, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C028E0 = result;
  return result;
}

uint64_t sub_217727CCC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB50, &unk_21779F600);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000015, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02880 = result;
  return result;
}

uint64_t sub_217727D40()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DC10, &qword_21779F6F0);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000016, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02878 = result;
  return result;
}

uint64_t sub_217727DB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DC08, &qword_21779F6E8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000017, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02870 = result;
  return result;
}

uint64_t sub_217727E28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DC00, &qword_21779F6E0);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD00000000000001ELL, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02860 = result;
  return result;
}

uint64_t sub_217727E9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB50, &unk_21779F600);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000013, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02890 = result;
  return result;
}

uint64_t sub_217727F10()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DC28, &qword_21779F708);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x745364756F6C635FLL, 0xEC00000073757461, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02958 = result;
  return result;
}

uint64_t sub_217727F8C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBE8, &qword_21779F6C0);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x746152726573755FLL, 0xEB00000000676E69, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02970 = result;
  return result;
}

uint64_t sub_217728008()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27810, qword_217775A50);
  v1 = OUTLINED_FUNCTION_31_11(v0);
  OUTLINED_FUNCTION_26_49(v1);
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_6();
  result = sub_2173C381C(v2, v3, v4, v5, v6, v7, 1, 0, v9, v10, v11);
  qword_280C02918 = result;
  return result;
}

uint64_t sub_2177280B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27810, qword_217775A50);
  v1 = OUTLINED_FUNCTION_31_11(v0);
  OUTLINED_FUNCTION_26_49(v1);
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_6();
  result = sub_2173C381C(v2, v3, v4, v5, v6, v7, 1, 0, v9, v10, v11);
  qword_280C028F8 = result;
  return result;
}

uint64_t sub_21772815C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27810, qword_217775A50);
  v1 = OUTLINED_FUNCTION_31_11(v0);
  OUTLINED_FUNCTION_26_49(v1);
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_6();
  result = sub_2173C381C(v2, v3, v4, v5, 0xD000000000000013, v6, 1, 0, v8, v9, v10);
  qword_280C02500 = result;
  return result;
}

uint64_t sub_2177281F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DC38, &qword_21779F718);
  OUTLINED_FUNCTION_60(v0);
  result = sub_21769A070();
  qword_280BE9740 = result;
  return result;
}

uint64_t sub_217728278()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB88, &qword_21779F648);
  OUTLINED_FUNCTION_60(v0);
  OUTLINED_FUNCTION_30_3();
  OUTLINED_FUNCTION_54_28();
  result = sub_21769A074();
  qword_280BE9718 = result;
  return result;
}

uint64_t sub_2177282F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB80, &unk_21779F638);
  OUTLINED_FUNCTION_60(v0);
  OUTLINED_FUNCTION_54_28();
  result = sub_21769A078();
  qword_280C02930 = result;
  return result;
}

uint64_t sub_217728354()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB90, &unk_21779F650);
  OUTLINED_FUNCTION_60(v0);
  result = sub_21769A06C();
  qword_280BE9728 = result;
  return result;
}

uint64_t sub_2177283D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB70, &qword_21779F628);
  OUTLINED_FUNCTION_60(v0);
  OUTLINED_FUNCTION_54_28();
  result = sub_21769A080();
  qword_280BE96F0 = result;
  return result;
}

uint64_t sub_21772845C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB88, &qword_21779F648);
  OUTLINED_FUNCTION_60(v0);
  OUTLINED_FUNCTION_62_25();
  result = sub_21769A074();
  qword_280BE96B8 = result;
  return result;
}

uint64_t sub_2177284DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB80, &unk_21779F638);
  OUTLINED_FUNCTION_60(v0);
  OUTLINED_FUNCTION_54_28();
  result = sub_21769A078();
  qword_280BE9700 = result;
  return result;
}

uint64_t sub_217728560()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB78, &qword_21779F630);
  OUTLINED_FUNCTION_60(v0);
  result = sub_21769A07C();
  qword_280BE9908 = result;
  return result;
}

uint64_t sub_217728644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C348, &qword_217791BE0);
  OUTLINED_FUNCTION_31_11(v7);
  result = sub_217697BF0(a2, a3, 0, 0xD000000000000013, 0x80000002177B4C90, qword_282959AD0);
  *a4 = result;
  return result;
}

uint64_t static PartialMusicProperty<A>.audioVariants.getter()
{
  return sub_2177286EC();
}

{
  return sub_2177286EC();
}

uint64_t sub_2177286EC()
{
  OUTLINED_FUNCTION_17_67();
  if (!v0)
  {
    swift_once();
  }
}

uint64_t sub_217728730()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB50, &unk_21779F600);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000014, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02888 = result;
  return result;
}

uint64_t sub_2177287A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBF0, &unk_21779F6C8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x616C507473616C5FLL, 0xEF65746144646579, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C028D8 = result;
  return result;
}

uint64_t sub_217728824()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBF0, &unk_21779F6C8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000011, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C028A0 = result;
  return result;
}

uint64_t sub_217728898()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBE0, &qword_21779F6B8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x756F4379616C705FLL, 0xEA0000000000746ELL, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02820 = result;
  return result;
}

uint64_t sub_217728910()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB60, &qword_21779F618);
  OUTLINED_FUNCTION_31_11(v0);
  result = sub_2172E3DC4();
  qword_280C02978 = result;
  return result;
}

uint64_t sub_21772896C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C360, &qword_217791BF8);
  OUTLINED_FUNCTION_31_11(v0);
  result = sub_217697C34(0xD000000000000011, 0x80000002177B4B20, 0, 0xD000000000000017, 0x80000002177B4CE0, qword_282959AF8);
  qword_280C02560 = result;
  return result;
}

uint64_t sub_2177289F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C340, &qword_21779F5F0);
  OUTLINED_FUNCTION_31_11(v0);
  result = sub_217697AE0(0x4C6D6F747375635FLL, 0xED00007363697279, 0, 0x676E69727453, 0xE600000000000000, qword_28295A918);
  qword_280C02558 = result;
  return result;
}

uint64_t sub_217728A78()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB50, &unk_21779F600);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  v1 = OUTLINED_FUNCTION_44_29();
  result = OUTLINED_FUNCTION_26(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12);
  qword_280C02550 = result;
  return result;
}

uint64_t sub_217728AE8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB50, &unk_21779F600);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000013, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02538 = result;
  return result;
}

uint64_t sub_217728B5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C378, &unk_217791C10);
  OUTLINED_FUNCTION_31_11(v0);
  result = sub_217697BAC(0x73636972796C5FLL, 0xE700000000000000, 0, 0x72794C636973754DLL, 0xEB00000000736369, qword_28295A918);
  qword_280C02510 = result;
  return result;
}

uint64_t sub_217728BDC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBB0, &qword_21779F680);
  OUTLINED_FUNCTION_31_11(v0);
  result = sub_21722FB54(0x73726566666FLL, 0xE600000000000000, 0xD000000000000011, 0x80000002177B68C0, qword_282959AF8);
  qword_280C02508 = result;
  return result;
}

uint64_t sub_217728C50()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C350, &qword_217791BE8);
  OUTLINED_FUNCTION_31_11(v0);
  result = sub_217697B24(0xD000000000000018, 0x80000002177B4B60, 0, 1819242306, 0xE400000000000000, qword_282959AF8);
  qword_280C02528 = result;
  return result;
}

uint64_t sub_217728CC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB68, &qword_21779F620);
  OUTLINED_FUNCTION_31_11(v0);
  result = sub_2172E3DC4();
  qword_280C02518 = result;
  return result;
}

uint64_t sub_217728D28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB50, &unk_21779F600);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000013, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02540 = result;
  return result;
}

uint64_t sub_217728D9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB50, &unk_21779F600);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x656E6E695073695FLL, 0xE900000000000064, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C024F8 = result;
  return result;
}

uint64_t sub_217728E14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB90, &unk_21779F650);
  OUTLINED_FUNCTION_60(v0);
  result = sub_21769A06C();
  qword_280C02568 = result;
  return result;
}

uint64_t sub_217728E7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C358, &qword_217791BF0);
  OUTLINED_FUNCTION_31_11(v0);
  result = sub_217697B68(0x4F6C616974617073, 0xEE00737465736666, 0, 0xD00000000000002DLL, 0x80000002177B4CB0, qword_282959AF8);
  qword_280C02530 = result;
  return result;
}

uint64_t sub_217728F04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB50, &unk_21779F600);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000019, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02520 = result;
  return result;
}

uint64_t sub_217728F78()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB58, &qword_21779F610);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000012, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02548 = result;
  return result;
}

uint64_t static Song.catalogFilterID(for:)@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath(byte_21779F258);
  v3 = sub_2177529D8();
  v6 = OUTLINED_FUNCTION_59_22(v3, v4, v5, MEMORY[0x277D83F90]);

  if (v6)
  {
    v7 = 0xE200000000000000;
    v8 = 25705;
LABEL_5:
    *a2 = v8;
    a2[1] = v7;
    return sub_217751DE8();
  }

  KeyPath = swift_getKeyPath(byte_21779F280);
  v11 = OUTLINED_FUNCTION_59_22(KeyPath, v9, v10, MEMORY[0x277D83F90]);

  if (v11)
  {
    v7 = 0xE400000000000000;
    v8 = 1668445033;
    goto LABEL_5;
  }

  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000021, 0x80000002177AB8F0);
  sub_217752C78();
  MEMORY[0x21CEA23B0](46, 0xE100000000000000);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217729168@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_2177291C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t Song.init(from:)(void *a1)
{
  sub_2171FF30C(a1, v3);
  sub_2172EE688();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Song.description.getter()
{
  v1 = 0xE000000000000000;
  sub_217752AA8();

  MEMORY[0x21CEA23B0](*v0, v0[1], v2);
  MEMORY[0x21CEA23B0](0x656C746974202C22, 0xEB0000000022203ALL);
  if (qword_280BE9750 != -1)
  {
    OUTLINED_FUNCTION_18_2(&qword_280BE9750);
  }

  v3 = sub_2172A41AC();
  v5 = OUTLINED_FUNCTION_41_35(v3, v4);
  if (!v7)
  {
    v1 = v6;
  }

  MEMORY[0x21CEA23B0](v5, v1);

  v8 = OUTLINED_FUNCTION_44_29();
  MEMORY[0x21CEA23B0](v8);
  if (qword_280BE9958 != -1)
  {
    OUTLINED_FUNCTION_17_18(&qword_280BE9958);
  }

  v9 = sub_2172A41AC();
  v11 = OUTLINED_FUNCTION_41_35(v9, v10);
  if (v7)
  {
    v13 = 0xE000000000000000;
  }

  else
  {
    v13 = v12;
  }

  MEMORY[0x21CEA23B0](v11, v13);

  MEMORY[0x21CEA23B0](10530, 0xE200000000000000, v14);
  return 0x3A646928676E6F53;
}

uint64_t static Song.typeValue.getter()
{
  if (qword_280BEB230 != -1)
  {
    OUTLINED_FUNCTION_42_11(&qword_280BEB230);
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BEB238);

  return sub_217751DE8();
}

uint64_t sub_2177294F8()
{
  if (qword_280BEB230 != -1)
  {
    OUTLINED_FUNCTION_42_11(&qword_280BEB230);
  }

  xmmword_280BEB140 = xmmword_280BEB238;
  xmmword_280BEB150 = xmmword_280BEB248;

  return sub_217751DE8();
}

uint64_t static MusicItemTypeValue.song.getter()
{
  if (qword_280BEB138 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BEB140);

  return sub_217751DE8();
}

unint64_t sub_2177295CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DB40;
  if (!qword_27CB2DB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DB40);
  }

  return result;
}

void OUTLINED_FUNCTION_15_70()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_26_49(uint64_t result)
{
  *(result + 104) = 0;
  *(result + 112) = 1;
  return result;
}

void OUTLINED_FUNCTION_70_21()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_71_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_once();
}

uint64_t get_enum_tag_for_layout_string_8MusicKit07CodableA9CatalogIDVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_217729958(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 360))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_217729998(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 328) = 0u;
    *(result + 344) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 360) = 1;
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

    *(result + 360) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217729A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DC48;
  if (!qword_27CB2DC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DC48);
  }

  return result;
}

void sub_217729A9C(void *a1@<X0>, void *a2@<X8>)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DC68, &qword_21779F978);
  OUTLINED_FUNCTION_41();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v85 - v10;
  v12 = a1[3];
  v13 = a1[4];
  v119 = a1;
  v14 = __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_21772D294(v14, v15, v16);
  v17 = sub_2177532C8();
  if (v2)
  {
    v181 = v2;
    LOBYTE(v11) = 0;
    v22 = 0;
    v8 = 0;
    v3 = 0;
    v23 = 0;
    LODWORD(v120) = 0;
    LODWORD(v121) = 0;
    OUTLINED_FUNCTION_5_115();
  }

  else
  {
    v20 = a2;
    LOBYTE(v130[0]) = 0;
    v22 = sub_2172E1C68(v17, v18, v19);
    OUTLINED_FUNCTION_0_168();
    v21 = sub_217752EA8();
    v25 = v131;
    v118 = v132;
    LOBYTE(v130[0]) = 1;
    sub_21772D44C(v21, v26, v27);
    OUTLINED_FUNCTION_6_114();
    sub_217752E58();
    OUTLINED_FUNCTION_24_55();
    v114 = v29;
    v115 = v28;
    OUTLINED_FUNCTION_29_49();
    v116 = v31;
    v117 = v30;
    LOBYTE(v130[0]) = 2;
    OUTLINED_FUNCTION_0_168();
    sub_217752E58();
    OUTLINED_FUNCTION_28_56();
    v113 = v32;
    LOBYTE(v130[0]) = 3;
    OUTLINED_FUNCTION_0_168();
    sub_217752E58();
    v129 = 0;
    OUTLINED_FUNCTION_28_56();
    v112 = v33;
    LOBYTE(v130[0]) = 4;
    OUTLINED_FUNCTION_0_168();
    sub_217752E58();
    v128 = 0;
    OUTLINED_FUNCTION_28_56();
    v111 = v34;
    LOBYTE(v130[0]) = 5;
    OUTLINED_FUNCTION_0_168();
    sub_217752E58();
    v127 = v131;
    v110 = v132;
    LOBYTE(v130[0]) = 6;
    OUTLINED_FUNCTION_0_168();
    sub_217752E58();
    v124 = v131;
    v125 = 0;
    v109 = v132;
    LOBYTE(v130[0]) = 7;
    OUTLINED_FUNCTION_0_168();
    v35 = sub_217752E58();
    v123 = v131;
    v108 = v132;
    LOBYTE(v130[0]) = 8;
    sub_21772D4A0(v35, v36, v37);
    OUTLINED_FUNCTION_6_114();
    v126 = v38;
    v23 = v11;
    sub_217752E58();
    v181 = 0;
    OUTLINED_FUNCTION_24_55();
    v104 = v40;
    v105 = v39;
    OUTLINED_FUNCTION_29_49();
    v106 = v42;
    v107 = v41;
    LOBYTE(v130[0]) = 9;
    OUTLINED_FUNCTION_0_168();
    v43 = v181;
    sub_217752E58();
    v181 = v43;
    if (v43)
    {
      v44 = OUTLINED_FUNCTION_7_96();
      v45(v44);
      LODWORD(v127) = 0;
      LODWORD(v128) = 0;
      LODWORD(v129) = 0;
      LODWORD(v13) = 0;
      OUTLINED_FUNCTION_1_149();
      LODWORD(v121) = v46;
      LODWORD(v122) = v46;
      LODWORD(v123) = v46;
    }

    else
    {
      OUTLINED_FUNCTION_28_56();
      v103 = v47;
      LOBYTE(v130[0]) = 10;
      OUTLINED_FUNCTION_6_114();
      OUTLINED_FUNCTION_16_75();
      sub_217752E58();
      v181 = 0;
      OUTLINED_FUNCTION_24_55();
      v99 = v49;
      v100 = v48;
      OUTLINED_FUNCTION_29_49();
      v101 = v51;
      v102 = v50;
      LOBYTE(v130[0]) = 11;
      OUTLINED_FUNCTION_0_168();
      v52 = v181;
      sub_217752E58();
      v181 = v52;
      if (v52)
      {
        v53 = OUTLINED_FUNCTION_7_96();
        v54(v53);
        LODWORD(v129) = 0;
        LODWORD(v13) = 0;
        OUTLINED_FUNCTION_1_149();
        OUTLINED_FUNCTION_10_80(v55);
      }

      else
      {
        v122 = v131;
        v98 = v132;
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C268, &qword_2177905C8);
        LOBYTE(v130[0]) = 12;
        sub_21772D4F4(&qword_280BE84A8, sub_2172E1C68);
        OUTLINED_FUNCTION_16_75();
        sub_217752E58();
        v181 = 0;
        v97 = v131;
        LOBYTE(v130[0]) = 13;
        OUTLINED_FUNCTION_0_168();
        v56 = v181;
        sub_217752E58();
        v181 = v56;
        if (!v56)
        {
          v121 = v131;
          v96 = v132;
          LOBYTE(v131) = 14;
          OUTLINED_FUNCTION_16_75();
          v61 = sub_217752E78();
          LODWORD(v120) = v61;
          v181 = 0;
          LOBYTE(v130[0]) = 15;
          LOBYTE(v22) = sub_21759C8F8(v61, v62, v63);
          OUTLINED_FUNCTION_0_168();
          v64 = v181;
          sub_217752EA8();
          LODWORD(v126) = v64 == 0;
          v181 = v64;
          if (!v64)
          {
            OUTLINED_FUNCTION_24_55();
            v88 = v65;
            v89 = v66;
            v87 = v133;
            v95 = v134;
            LOBYTE(v130[0]) = 16;
            OUTLINED_FUNCTION_0_168();
            v67 = v181;
            sub_217752E58();
            v181 = v67;
            if (!v67)
            {
              OUTLINED_FUNCTION_24_55();
              v93 = v71;
              v94 = v72;
              OUTLINED_FUNCTION_29_49();
              v91 = v73;
              v92 = v74;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DC60, &qword_21779F970);
              LOBYTE(v130[0]) = 17;
              sub_21772D390(&qword_280BE7580, sub_21772D55C);
              OUTLINED_FUNCTION_16_75();
              v75 = sub_217752EA8();
              v181 = 0;
              v90 = v131;
              v177 = 18;
              sub_2176A0A9C(v75, v76, v77);
              OUTLINED_FUNCTION_16_75();
              sub_217752E58();
              v181 = 0;
              LODWORD(v126) = v120 & 1;
              v78 = OUTLINED_FUNCTION_7_96();
              v79(v78);
              *(&v130[33] + 1) = v180[0];
              HIDWORD(v130[33]) = *(v180 + 3);
              v120 = v178;
              v86 = v179;
              v130[0] = v25;
              v130[1] = v118;
              v130[2] = v114;
              v130[3] = v115;
              v130[4] = v116;
              v130[5] = v117;
              v130[6] = v129;
              v130[7] = v113;
              v130[8] = v128;
              v130[9] = v112;
              v130[10] = v125;
              v130[11] = v111;
              v130[12] = v127;
              v130[13] = v110;
              v130[14] = v124;
              v130[15] = v109;
              v130[16] = v123;
              v130[17] = v108;
              v130[18] = v104;
              v130[19] = v105;
              v130[20] = v106;
              v130[21] = v107;
              v130[22] = 0;
              v80 = v102;
              v130[23] = v103;
              v81 = v100;
              v130[24] = v99;
              v130[25] = v100;
              v82 = v101;
              v130[26] = v101;
              v130[27] = v102;
              v130[28] = v122;
              v84 = v97;
              v83 = v98;
              v130[29] = v98;
              v130[30] = v97;
              v130[31] = v121;
              v130[32] = v96;
              LOBYTE(v130[33]) = v126;
              v130[34] = v89;
              v130[35] = v88;
              v130[36] = v87;
              v130[37] = v95;
              v130[38] = v94;
              v130[39] = v93;
              v130[40] = v92;
              v130[41] = v91;
              v130[42] = v90;
              v130[43] = v178;
              v130[44] = v179;
              memcpy(v20, v130, 0x168uLL);
              sub_21772D5B0(v130, &v131);
              __swift_destroy_boxed_opaque_existential_1(v119);
              v131 = v25;
              v132 = v118;
              v133 = v114;
              v134 = v115;
              v135 = v116;
              v136 = v117;
              v137 = v129;
              v138 = v113;
              v139 = v128;
              v140 = v112;
              v141 = v125;
              v142 = v111;
              v143 = v127;
              v144 = v110;
              v145 = v124;
              v146 = v109;
              v147 = v123;
              v148 = v108;
              v149 = v104;
              v150 = v105;
              v151 = v106;
              v152 = v107;
              v153 = 0;
              v154 = v103;
              v155 = v99;
              v156 = v81;
              v157 = v82;
              v158 = v80;
              v159 = v122;
              v160 = v83;
              v161 = v84;
              v162 = v121;
              v163 = v96;
              v164 = v126;
              *v165 = v180[0];
              *&v165[3] = *(v180 + 3);
              v166 = v89;
              v167 = v88;
              v168 = v87;
              v169 = v95;
              v170 = v94;
              v171 = v93;
              v172 = v92;
              v173 = v91;
              v174 = v90;
              v175 = v120;
              v176 = v86;
              sub_217503D9C(&v131);
              return;
            }
          }

          v68 = OUTLINED_FUNCTION_7_96();
          v69(v68);
          LODWORD(v124) = 0;
          LODWORD(v125) = 0;
          __swift_destroy_boxed_opaque_existential_1(v119);
          OUTLINED_FUNCTION_2_144();
          OUTLINED_FUNCTION_13_77(v70);
          LODWORD(v13) = 1;
          v24 = 1;
LABEL_6:

          if (v22)
          {
            goto LABEL_7;
          }

          goto LABEL_24;
        }

        v57 = OUTLINED_FUNCTION_7_96();
        v58(v57);
        OUTLINED_FUNCTION_1_149();
        OUTLINED_FUNCTION_10_80(v59);
        LODWORD(v129) = v60;
        LODWORD(v13) = 1;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v119);
  if (v11)
  {
    LODWORD(v126) = 0;
    LODWORD(v124) = 0;
    LODWORD(v125) = 0;
    v24 = v4;
    goto LABEL_6;
  }

  LODWORD(v125) = 0;
  LODWORD(v124) = 0;
  LODWORD(v126) = 0;
  v24 = v4;
  if (v22)
  {
LABEL_7:
    sub_2172B8404(v114, v115);
    if ((v8 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  if (!v8)
  {
LABEL_8:
    if (v3)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:

  if (v3)
  {
LABEL_9:

    if ((v23 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  if (!v23)
  {
LABEL_10:
    if (v120)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:

  if (v120)
  {
LABEL_11:

    if ((v121 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  if (!v121)
  {
LABEL_12:
    if (v122)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:

  if (v122)
  {
LABEL_13:

    if ((v123 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  if (!v123)
  {
LABEL_14:
    if (v127)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  sub_2172B8404(v104, v105);
  if (v127)
  {
LABEL_15:

    if ((v128 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  if (!v128)
  {
LABEL_16:
    if (v129)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  sub_2172B8404(v99, v100);
  if (v129)
  {
LABEL_17:

    if ((v13 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_34:
  if (!v13)
  {
LABEL_18:
    if (v24)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

LABEL_35:

  if (v24)
  {
LABEL_19:

    if ((v126 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_37;
  }

LABEL_36:
  if (!v126)
  {
LABEL_20:
    if (v124)
    {
      goto LABEL_21;
    }

LABEL_38:
    if (!v125)
    {
      return;
    }

    goto LABEL_39;
  }

LABEL_37:

  if ((v124 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_21:
  sub_2172AC65C(v94);
  if ((v125 & 1) == 0)
  {
    return;
  }

LABEL_39:
}

double sub_21772A7F4@<D0>(uint64_t *__return_ptr a1@<X8>, void *__src@<X0>)
{
  memcpy(v95, __src, 0x168uLL);
  v87 = *(&v95[1] + 1);
  if (*(&v95[1] + 1))
  {
    v3 = v95[2];
    v86 = *&v95[1];
    sub_217751DE8();
    sub_217751DE8();
    sub_217713E24(v3, *(&v3 + 1), &v94);
    v85 = v94;
  }

  else
  {
    v86 = 0;
    v85 = 0;
  }

  v4 = *(&v95[10] + 1);
  v5 = *&v95[10];
  v6 = *(&v95[12] + 1);
  v7 = *&v95[12];
  v8 = *&v95[13];
  v9 = *&v95[22];
  v89 = *(&v95[9] + 1);
  v93 = *&v95[9];
  v82 = *(&v95[13] + 1);
  if (*&v95[22])
  {
    v10 = *(&v95[21] + 1);
    OUTLINED_FUNCTION_23_33();
    sub_2172A5428(v11, v12, v13, v14);
    OUTLINED_FUNCTION_31_47();
    sub_217751DE8();
    sub_21758AC1C(v10, v9, &v94);
    v15 = v94;
  }

  else
  {
    OUTLINED_FUNCTION_23_33();
    sub_2172A5428(v16, v17, v18, v19);
    OUTLINED_FUNCTION_31_47();
    v15 = 4;
  }

  v84 = v15;
  v90 = v8;
  v88 = v6;
  v20 = *&v95[21];
  v21 = *(*&v95[21] + 16);
  if (v21)
  {
    v78 = v4;
    v80 = v5;
    v22 = (sub_217751DE8() + 40);
    v23 = MEMORY[0x277D84F90];
    do
    {
      v24 = *(v22 - 1);
      v25 = *v22;
      sub_217751DE8();
      sub_2175DA0F4(v24, v25, &v94);
      v26 = v94;
      MEMORY[0x28223BE20](v27);
      if (sub_2173DDA80())
      {
        sub_21726B8A0(v26, *(&v26 + 1));
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_26_50();
          v23 = v30;
        }

        v29 = *(v23 + 16);
        v28 = *(v23 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_2172B1F4C(v28 > 1, v29 + 1, 1, v23);
          v23 = v31;
        }

        *(v23 + 16) = v29 + 1;
        *(v23 + 16 * v29 + 32) = v26;
      }

      v22 += 2;
      --v21;
    }

    while (v21);

    v4 = v78;
    v5 = v80;
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

  v94 = xmmword_21779F730;
  MEMORY[0x28223BE20](v20);
  if (!sub_2173DDA80())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_26_50();
      v23 = v52;
    }

    v33 = *(v23 + 16);
    v32 = *(v23 + 24);
    if (v33 >= v32 >> 1)
    {
      sub_2172B1F4C(v32 > 1, v33 + 1, 1, v23);
      v23 = v53;
    }

    *(v23 + 16) = v33 + 1;
    *(v23 + 16 * v33 + 32) = xmmword_21779F730;
  }

  v34 = v82;
  v35 = MEMORY[0x277D84FA0];
  if (!v88)
  {
    v34 = 0;
  }

  v83 = v34;
  if (v88)
  {
    v36 = v90;
  }

  else
  {
    v36 = 0;
  }

  if (v88)
  {
    v37 = v7;
  }

  else
  {
    v37 = 0;
  }

  v79 = v37;
  v81 = v36;
  v59 = *(&v95[0] + 1);
  if (v89)
  {
    v38 = v4;
  }

  else
  {
    v38 = 0;
  }

  if (v89)
  {
    v39 = v5;
  }

  else
  {
    v39 = 0;
  }

  v76 = v39;
  v77 = v38;
  v40 = v93;
  if (!v89)
  {
    v40 = 0;
  }

  v75 = v40;
  if (*&v95[15])
  {
    v35 = *&v95[15];
  }

  v73 = *&v95[0];
  v74 = v35;
  v69 = *&v95[4];
  v70 = *&v95[3];
  v63 = *(&v95[4] + 1);
  v64 = *(&v95[3] + 1);
  v62 = *(&v95[5] + 1);
  v67 = *&v95[6];
  v68 = *&v95[5];
  v60 = *(&v95[6] + 1);
  v66 = *&v95[8];
  v41 = v95[7];
  v54 = *(&v95[8] + 1);
  v42 = v95[11];
  v71 = *(&v95[15] + 1);
  v72 = BYTE8(v95[16]);
  v43 = v95[18];
  v65 = *&v95[16];
  v57 = *(&v95[19] + 1);
  v58 = *&v95[19];
  v91 = *&v95[14];
  v55 = *(&v95[20] + 1);
  v56 = *&v95[20];
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  v44 = sub_217751DE8();
  *&v45 = v91;
  *(&v45 + 1) = v44;
  v92 = v45;
  v61 = v95[17];
  sub_2172AC64C(v58, v57, v56, v55);

  v46 = OUTLINED_FUNCTION_4_4();
  sub_2172B8404(v46, v47);
  v48 = OUTLINED_FUNCTION_4_4();
  sub_2172B8404(v48, v49);
  sub_217503D9C(v95);
  v50 = OUTLINED_FUNCTION_4_4();
  sub_2172AC65C(v50);
  *a1 = v73;
  a1[1] = v59;
  a1[2] = v86;
  a1[3] = v87;
  *(a1 + 32) = v85;
  a1[5] = v70;
  a1[6] = v64;
  a1[7] = v69;
  a1[8] = v63;
  a1[9] = v68;
  a1[10] = v62;
  a1[11] = v67;
  a1[12] = v60;
  *(a1 + 13) = v41;
  a1[15] = v66;
  a1[16] = v54;
  a1[17] = v75;
  a1[18] = v89;
  a1[19] = v76;
  a1[20] = v77;
  a1[21] = v79;
  a1[22] = v88;
  a1[23] = v81;
  a1[24] = v83;
  *(a1 + 27) = v92;
  *(a1 + 25) = v42;
  a1[29] = 0;
  a1[30] = 0;
  a1[31] = v71;
  a1[32] = v65;
  a1[33] = v74;
  *(a1 + 272) = v72;
  a1[35] = v23;
  result = *&v61;
  *(a1 + 18) = v61;
  *(a1 + 19) = v43;
  a1[40] = v58;
  a1[41] = v57;
  a1[42] = v56;
  a1[43] = v55;
  *(a1 + 352) = v84;
  return result;
}

void sub_21772AD94(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v44 = *v1;
  v4 = v1[5];
  v69 = *(v1 + 4);
  v70 = *(v1 + 3);
  v67 = *(v1 + 6);
  v68 = *(v1 + 5);
  v66 = *(v1 + 7);
  v65 = v1[16];
  v56 = v1[17];
  v64 = v1[18];
  v54 = v1[20];
  v55 = v1[19];
  v5 = v1[22];
  v52 = v1[23];
  v53 = v1[21];
  v51 = v1[24];
  v46 = v1[25];
  v57 = v1[26];
  v50 = v1[27];
  v63 = v1[28];
  v6 = v1[31];
  v7 = v1[32];
  v8 = v1[33];
  v49 = *(v1 + 272);
  v9 = v1[35];
  v48 = *(v1 + 18);
  v47 = v1[38];
  v61 = v1[40];
  v62 = v1[39];
  v59 = v1[42];
  v60 = v1[41];
  v58 = v1[43];
  v39 = *(v1 + 352);
  if (v1[3])
  {
    v10 = sub_217713B68();
    v40 = v11;
    v41 = v10;
    v42 = v13;
    v43 = v12;
    sub_217751DE8();
    sub_217751DE8();
  }

  else
  {
    sub_217751DE8();
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
  }

  if (*(v8 + 16))
  {
    sub_217751DE8();
  }

  else
  {
    v8 = 0;
  }

  v45 = v8;
  v14 = sub_2173C2FA0();
  if (v14)
  {
    v15 = v14;
    v35 = v4;
    v36 = v6;
    v37 = v7;
    v38 = v5;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2172A5428(v56, v64, v55, v54);
    sub_217751DE8();
    sub_2172A5428(v53, v5, v52, v51);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2172AC64C(v61, v60, v59, v58);
    v71 = MEMORY[0x277D84F90];
    sub_217276EF4(0, v15 & ~(v15 >> 63), 0);
    if ((v15 & 0x8000000000000000) == 0)
    {
      v16 = 0;
      v17 = v71;
      v18 = (v9 + 40);
      while (v16 < *(v9 + 16))
      {
        v19 = 0xE700000000000000;
        v20 = 0x676F6C61746163;
        switch(*v18)
        {
          case 0uLL:
            break;
          case 1uLL:
            v21 = 0x4C64756F6C63;
            goto LABEL_19;
          case 2uLL:
            v20 = 0x656C6261646F63;
            break;
          case 3uLL:
            v20 = 0x616C5065726F7473;
            v19 = 0xED00006D726F6674;
            break;
          case 4uLL:
            v20 = 0xD000000000000010;
            v19 = 0x80000002177B2610;
            break;
          case 5uLL:
            v20 = 0x6F4D79636167656CLL;
            v19 = 0xEB000000006C6564;
            break;
          case 6uLL:
            v21 = 0x4C6C61636F6CLL;
LABEL_19:
            v20 = v21 & 0xFFFFFFFFFFFFLL | 0x6269000000000000;
            v19 = 0xEC00000079726172;
            break;
          case 7uLL:
            v20 = 0xD000000000000012;
            v19 = 0x80000002177B25F0;
            break;
          case 8uLL:
            v20 = 0xD000000000000013;
            v19 = 0x80000002177B25D0;
            break;
          default:
            v20 = *(v18 - 1);
            v19 = *v18;
            break;
        }

        sub_21726B87C(*(v18 - 1), *v18);
        v23 = *(v71 + 16);
        v22 = *(v71 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_217276EF4(v22 > 1, v23 + 1, 1);
        }

        ++v16;
        *(v71 + 16) = v23 + 1;
        v24 = v71 + 16 * v23;
        *(v24 + 32) = v20;
        *(v24 + 40) = v19;
        v18 += 2;
        if (v15 == v16)
        {
          v7 = v37;
          v5 = v38;
          v4 = v35;
          v6 = v36;
          goto LABEL_27;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2172A5428(v56, v64, v55, v54);
    sub_217751DE8();
    sub_2172A5428(v53, v5, v52, v51);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2172AC64C(v61, v60, v59, v58);
    v17 = MEMORY[0x277D84F90];
LABEL_27:
    v25 = 0xE900000000000044;
    v26 = 0x49676F6C61746163;
    v27 = 0;
    v28 = 0;
    switch(v39)
    {
      case 1:
        v25 = 0xED000044496C6163;
        v26 = 0x6F4C656369766564;
        goto LABEL_31;
      case 2:
        v26 = 0x497972617262696CLL;
        goto LABEL_31;
      case 3:
        v25 = 0xEC00000044496563;
        v26 = 0x6E6572727563636FLL;
        goto LABEL_31;
      case 4:
        goto LABEL_32;
      default:
LABEL_31:
        v27 = v26;
        v28 = v25;
LABEL_32:
        *a1 = v44;
        *(a1 + 8) = v3;
        *(a1 + 16) = v41;
        *(a1 + 24) = v40;
        v29 = v51;
        v30 = v52;
        if (!v5)
        {
          v29 = 0;
          v30 = 0;
        }

        v31 = v53;
        v32 = v54;
        if (!v5)
        {
          v31 = 0;
        }

        if (!v64)
        {
          v32 = 0;
        }

        v33 = v55;
        v34 = v56;
        if (!v64)
        {
          v33 = 0;
          v34 = 0;
        }

        *(a1 + 32) = v43;
        *(a1 + 40) = v42;
        *(a1 + 48) = v4;
        *(a1 + 56) = v70;
        *(a1 + 72) = v69;
        *(a1 + 88) = v68;
        *(a1 + 104) = v67;
        *(a1 + 120) = v66;
        *(a1 + 136) = v65;
        *(a1 + 144) = v34;
        *(a1 + 152) = v64;
        *(a1 + 160) = v33;
        *(a1 + 168) = v32;
        *(a1 + 176) = v46;
        *(a1 + 184) = v57;
        *(a1 + 192) = v31;
        *(a1 + 200) = v5;
        *(a1 + 208) = v30;
        *(a1 + 216) = v29;
        *(a1 + 224) = v50;
        *(a1 + 232) = v63;
        *(a1 + 240) = v45;
        *(a1 + 248) = v6;
        *(a1 + 256) = v7;
        *(a1 + 264) = v49;
        *(a1 + 272) = v48;
        *(a1 + 288) = v47;
        *(a1 + 296) = v62;
        *(a1 + 304) = v61;
        *(a1 + 312) = v60;
        *(a1 + 320) = v59;
        *(a1 + 328) = v58;
        *(a1 + 336) = v17;
        *(a1 + 344) = v27;
        *(a1 + 352) = v28;
        break;
    }
  }
}

uint64_t sub_21772B3EC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DC58, &unk_21779F960);
  OUTLINED_FUNCTION_41();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v73 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = *(v1 + 1);
  v102 = *(v1 + 2);
  v103 = v11;
  v12 = v1[6];
  v100 = v1[7];
  v101 = v12;
  v13 = v1[9];
  *&v99 = v1[8];
  *(&v99 + 1) = v13;
  v14 = v1[11];
  *&v98 = v1[10];
  *(&v98 + 1) = v14;
  v15 = v1[13];
  *&v97 = v1[12];
  *(&v97 + 1) = v15;
  v16 = v1[15];
  *&v96 = v1[14];
  *(&v96 + 1) = v16;
  v17 = v1[17];
  v94 = v1[16];
  v95 = v17;
  v18 = *(v1 + 9);
  v92 = *(v1 + 10);
  v93 = v18;
  v19 = v1[23];
  v90 = v1[22];
  v91 = v19;
  v20 = *(v1 + 12);
  v88 = *(v1 + 13);
  v89 = v20;
  v21 = v1[29];
  v86 = v1[28];
  v87 = v21;
  v22 = v1[31];
  v85 = v1[30];
  v83 = v22;
  v84 = v1[32];
  v107 = *(v1 + 264);
  v82 = *(v1 + 17);
  v23 = v1[37];
  *&v81 = v1[36];
  *(&v81 + 1) = v23;
  v24 = v1[39];
  v77 = v1[38];
  v80 = v24;
  v25 = v1[41];
  v79 = v1[40];
  v78 = v25;
  v26 = v1[43];
  v74 = v1[42];
  v75 = v26;
  v76 = v1[44];
  v27 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21772D294(v27, v28, v29);
  sub_217751DE8();
  v30 = sub_2177532F8();
  *&v105 = v9;
  *(&v105 + 1) = v10;
  v108 = 0;
  sub_2172E1B18(v30, v31, v32);
  OUTLINED_FUNCTION_15_71();
  v33 = v104;
  sub_217752F88();
  if (v33)
  {

    return (*(v5 + 8))(v8, v2, v34);
  }

  else
  {
    v35 = v100;
    v36 = v101;

    v105 = v103;
    v106 = v102;
    v108 = 1;
    sub_21772D2E8(v37, v38, v39);
    OUTLINED_FUNCTION_15_71();
    v40 = sub_217752F38();
    *&v105 = v36;
    *(&v105 + 1) = v35;
    v108 = 2;
    v43 = OUTLINED_FUNCTION_9_99(v40, v41, v42, &type metadata for MusicItemID);
    v105 = v99;
    v108 = 3;
    v47 = OUTLINED_FUNCTION_9_99(v43, v45, v46, &type metadata for MusicItemID);
    v105 = v98;
    v108 = 4;
    v50 = OUTLINED_FUNCTION_9_99(v47, v48, v49, &type metadata for MusicItemID);
    v105 = v97;
    v108 = 5;
    v53 = OUTLINED_FUNCTION_9_99(v50, v51, v52, &type metadata for MusicItemID);
    v105 = v96;
    v108 = 6;
    OUTLINED_FUNCTION_9_99(v53, v54, v55, &type metadata for MusicItemID);
    OUTLINED_FUNCTION_22_64(&v110);
    v108 = 7;
    v59 = OUTLINED_FUNCTION_9_99(v56, v57, v58, &type metadata for MusicItemID);
    v105 = v93;
    v106 = v92;
    v108 = 8;
    sub_21772D33C(v59, v60, v61);
    OUTLINED_FUNCTION_15_71();
    sub_217752F38();
    OUTLINED_FUNCTION_22_64(&v109);
    v108 = 9;
    OUTLINED_FUNCTION_9_99(v62, v63, v64, &type metadata for MusicItemID);
    v105 = v89;
    v106 = v88;
    v108 = 10;
    OUTLINED_FUNCTION_15_71();
    v104 = v2;
    sub_217752F38();
    OUTLINED_FUNCTION_22_64(&v106 + 8);
    v108 = 11;
    OUTLINED_FUNCTION_12_72();
    sub_217752F38();
    *&v105 = v85;
    v108 = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C268, &qword_2177905C8);
    sub_21772D4F4(&qword_280BE7530, sub_2172E1B18);
    OUTLINED_FUNCTION_15_71();
    OUTLINED_FUNCTION_8_1();
    sub_217752F38();
    OUTLINED_FUNCTION_22_64(&v105);
    v108 = 13;
    OUTLINED_FUNCTION_12_72();
    sub_217752F38();
    LOBYTE(v105) = 14;
    OUTLINED_FUNCTION_8_1();
    v65 = sub_217752F58();
    v105 = v82;
    v106 = v81;
    v108 = 15;
    sub_21759C94C(v65, v66, v67);
    sub_217751DE8();
    OUTLINED_FUNCTION_12_72();
    sub_217752F88();

    *&v105 = v77;
    *(&v105 + 1) = v80;
    *&v106 = v79;
    *(&v106 + 1) = v78;
    v108 = 16;
    sub_2172AC64C(v77, v80, v79, v78);
    OUTLINED_FUNCTION_12_72();
    sub_217752F38();
    sub_2172AC65C(v105);
    *&v105 = v74;
    v108 = 17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DC60, &qword_21779F970);
    sub_21772D390(&qword_280BE7588, sub_21772D3F8);
    OUTLINED_FUNCTION_15_71();
    OUTLINED_FUNCTION_8_1();
    sub_217752F88();
    OUTLINED_FUNCTION_22_64(&v98 + 8);
    v108 = 18;
    sub_2176A0C2C(v68, v69, v70);
    OUTLINED_FUNCTION_15_71();
    v71 = v104;
    OUTLINED_FUNCTION_8_1();
    sub_217752F38();
    return (*(v5 + 8))(v8, v71, v72);
  }
}

uint64_t sub_21772BB20(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v198 = a1[6];
  v204 = a1[7];
  v196 = a1[8];
  v202 = a1[9];
  v191 = a1[10];
  v203 = a1[11];
  v187 = a1[12];
  v192 = a1[13];
  v184 = a1[14];
  v189 = a1[15];
  v181 = a1[16];
  v186 = a1[17];
  v178 = a1[18];
  v183 = a1[19];
  v179 = a1[20];
  v180 = a1[21];
  v170 = a1[22];
  v174 = a1[23];
  v166 = a1[24];
  v172 = a1[25];
  v167 = a1[26];
  v168 = a1[27];
  v158 = a1[28];
  v162 = a1[29];
  v160 = a1[30];
  v148 = a1[31];
  v156 = a1[32];
  v151 = *(a1 + 264);
  v145 = a1[37];
  v146 = a1[36];
  v142 = a1[39];
  v152 = a1[40];
  v153 = a1[41];
  v154 = a1[38];
  v137 = a1[43];
  v139 = a1[44];
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v12 = *(a2 + 56);
  v195 = *(a2 + 64);
  v199 = *(a2 + 72);
  v190 = *(a2 + 80);
  v197 = *(a2 + 88);
  v193 = *(a2 + 104);
  v200 = *(a2 + 96);
  v201 = *(a2 + 112);
  v188 = *(a2 + 120);
  v194 = *(a2 + 128);
  v185 = *(a2 + 136);
  v182 = *(a2 + 152);
  v175 = *(a2 + 144);
  v176 = *(a2 + 160);
  v177 = *(a2 + 168);
  v169 = *(a2 + 176);
  v173 = *(a2 + 184);
  v171 = *(a2 + 200);
  v163 = *(a2 + 192);
  v164 = *(a2 + 208);
  v165 = *(a2 + 216);
  v157 = *(a2 + 224);
  v161 = *(a2 + 232);
  v159 = *(a2 + 240);
  v147 = *(a2 + 248);
  v155 = *(a2 + 256);
  v150 = *(a2 + 264);
  v143 = *(a2 + 296);
  v144 = *(a2 + 288);
  v149 = *(a2 + 304);
  v140 = *(a2 + 320);
  v141 = *(a2 + 328);
  v136 = *(a2 + 344);
  v138 = *(a2 + 352);
  if (!v6 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  if (!v3)
  {
    if (!v7)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  if (!v7)
  {
LABEL_20:
    v25 = OUTLINED_FUNCTION_14_72();
    sub_2172A5428(v25, v26, v27, v28);
    v29 = OUTLINED_FUNCTION_8_94();
    sub_2172A5428(v29, v30, v31, v32);
    v33 = OUTLINED_FUNCTION_8_94();
    sub_2172B8404(v33, v34);
    v35 = OUTLINED_FUNCTION_14_72();
LABEL_21:
    sub_2172B8404(v35, v36);
    return 0;
  }

  v13 = v2 == v8 && v3 == v7;
  if (!v13 && (sub_217753058() & 1) == 0)
  {
    v49 = OUTLINED_FUNCTION_14_72();
    sub_2172A5428(v49, v50, v51, v52);
    v53 = OUTLINED_FUNCTION_8_94();
    sub_2172A5428(v53, v54, v55, v56);

    v35 = OUTLINED_FUNCTION_8_94();
    goto LABEL_21;
  }

  if (v4 == v9 && v5 == v10)
  {
    sub_2172A5428(v8, v7, v4, v5);
    v38 = OUTLINED_FUNCTION_8_94();
    sub_2172A5428(v38, v39, v40, v41);

    v42 = OUTLINED_FUNCTION_8_94();
    sub_2172B8404(v42, v43);
  }

  else
  {
    v135 = sub_217753058();
    v15 = OUTLINED_FUNCTION_14_72();
    sub_2172A5428(v15, v16, v17, v18);
    v19 = OUTLINED_FUNCTION_8_94();
    sub_2172A5428(v19, v20, v21, v22);

    v23 = OUTLINED_FUNCTION_8_94();
    sub_2172B8404(v23, v24);
    if ((v135 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_25:
  if (v204)
  {
    if (!v12)
    {
      return 0;
    }

    v44 = v198 == v11 && v204 == v12;
    if (!v44 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (v202)
  {
    v45 = v203;
    v47 = v200;
    v46 = v201;
    if (!v199)
    {
      return 0;
    }

    v48 = v196 == v195 && v202 == v199;
    if (!v48 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v45 = v203;
    v47 = v200;
    v46 = v201;
    if (v199)
    {
      return 0;
    }
  }

  if (v45)
  {
    if (!v197)
    {
      return 0;
    }

    v57 = v191 == v190 && v45 == v197;
    if (!v57 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v197)
  {
    return 0;
  }

  if (v192)
  {
    v58 = v194;
    if (!v193)
    {
      return 0;
    }

    v59 = v187 == v47 && v192 == v193;
    if (!v59 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v58 = v194;
    if (v193)
    {
      return 0;
    }
  }

  if (v189)
  {
    if (!v188)
    {
      return 0;
    }

    v60 = v184 == v46 && v189 == v188;
    if (!v60 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v188)
  {
    return 0;
  }

  if (v186)
  {
    if (!v185)
    {
      return 0;
    }

    v61 = v181 == v58 && v186 == v185;
    if (!v61 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v185)
  {
    return 0;
  }

  if (!v183)
  {
    v62 = v182;
    if (!v182)
    {
      goto LABEL_87;
    }

LABEL_85:
    v205 = v178;
    v206 = v183;
    v207 = v179;
    v208 = v180;
    v69 = v175;
    v70 = v176;
    v209 = v175;
    v210 = v62;
    v211 = v176;
    v71 = v177;
LABEL_86:
    v212 = v71;
    sub_2172A5428(v69, v62, v70, v71);
    v72 = OUTLINED_FUNCTION_18_62();
    sub_2172A5428(v72, v73, v74, v75);
    sub_21772D22C(&v205);
    return 0;
  }

  v62 = v182;
  if (!v182)
  {
    goto LABEL_85;
  }

  sub_2174E42B8(v178, v183, v179, v180, v175, v182, v176, v177);
  OUTLINED_FUNCTION_25_64();
  v63 = OUTLINED_FUNCTION_11_87();
  sub_2172A5428(v63, v64, v65, v66);

  v67 = OUTLINED_FUNCTION_11_87();
  sub_2172B8404(v67, v68);
  if ((v58 & 1) == 0)
  {
    return 0;
  }

LABEL_87:
  if (v174)
  {
    if (!v173)
    {
      return 0;
    }

    v76 = v170 == v169 && v174 == v173;
    if (!v76 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v173)
  {
    return 0;
  }

  if (!v172)
  {
    v62 = v171;
    if (!v171)
    {
      goto LABEL_102;
    }

    goto LABEL_101;
  }

  v62 = v171;
  if (!v171)
  {
LABEL_101:
    v205 = v166;
    v206 = v172;
    v207 = v167;
    v208 = v168;
    v69 = v163;
    v70 = v164;
    v209 = v163;
    v210 = v62;
    v211 = v164;
    v71 = v165;
    goto LABEL_86;
  }

  sub_2174E42B8(v166, v172, v167, v168, v163, v171, v164, v165);
  OUTLINED_FUNCTION_25_64();
  v77 = OUTLINED_FUNCTION_11_87();
  sub_2172A5428(v77, v78, v79, v80);

  v81 = OUTLINED_FUNCTION_11_87();
  sub_2172B8404(v81, v82);
  if ((v58 & 1) == 0)
  {
    return 0;
  }

LABEL_102:
  if (v162)
  {
    if (!v161)
    {
      return 0;
    }

    v83 = v158 == v157 && v162 == v161;
    if (!v83 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v161)
  {
    return 0;
  }

  if (v160)
  {
    if (!v159)
    {
      return 0;
    }

    sub_217751DE8();
    v84 = sub_2172A9110(v160, v159);

    if ((v84 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v159)
  {
    return 0;
  }

  if (v156)
  {
    if (!v155)
    {
      return 0;
    }

    if (v148 == v147 && v156 == v155)
    {
      if (v151 != v150)
      {
        return 0;
      }

LABEL_128:
      v87 = v146 == v144 && v145 == v143;
      if (!v87 && (sub_217753058() & 1) == 0)
      {
        return 0;
      }

      if (v154)
      {
        if (v149)
        {
          if (v152 != v140 || v153 != v141)
          {
            OUTLINED_FUNCTION_23_33();
            v89 = sub_217753058();
            sub_2172AC64C(v154, v142, v152, v153);
            OUTLINED_FUNCTION_23_33();
            sub_2172AC64C(v90, v91, v92, v93);
            v94 = OUTLINED_FUNCTION_11_87();
            sub_2172AC64C(v94, v95, v96, v97);
            OUTLINED_FUNCTION_23_33();
            sub_2172AC65C(v98);

            v99 = OUTLINED_FUNCTION_11_87();
            sub_2172AC65C(v99);
            if ((v89 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_148;
          }

          OUTLINED_FUNCTION_742();
          sub_2172AC64C(v117, v118, v119, v120);
          OUTLINED_FUNCTION_742();
          sub_2172AC64C(v121, v122, v123, v124);
          v125 = OUTLINED_FUNCTION_18_62();
          sub_2172AC64C(v125, v126, v127, v128);
          OUTLINED_FUNCTION_742();
          sub_2172AC65C(v129);

LABEL_147:
          sub_2172AC65C(v154);
LABEL_148:
          if (sub_2172849CC())
          {
            if (v139)
            {
              if (v138)
              {
                v134 = v137 == v136 && v139 == v138;
                if (v134 || (sub_217753058() & 1) != 0)
                {
                  return 1;
                }
              }
            }

            else if (!v138)
            {
              return 1;
            }
          }

          return 0;
        }

        OUTLINED_FUNCTION_742();
        sub_2172AC64C(v104, v105, v106, v107);
        OUTLINED_FUNCTION_27_55();
        sub_2172AC64C(v108, v109, v110, v111);
        v112 = OUTLINED_FUNCTION_18_62();
        sub_2172AC64C(v112, v113, v114, v115);
      }

      else
      {
        sub_2172AC64C(0, v142, v152, v153);
        if (!v149)
        {
          OUTLINED_FUNCTION_27_55();
          sub_2172AC64C(v130, v131, v132, v133);
          v154 = 0;
          goto LABEL_147;
        }

        OUTLINED_FUNCTION_27_55();
        sub_2172AC64C(v100, v101, v102, v103);
      }

      sub_2172AC65C(v154);
      OUTLINED_FUNCTION_27_55();
      sub_2172AC65C(v116);
      return 0;
    }

    v86 = sub_217753058();
    result = 0;
    if ((v86 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (v155)
    {
      return result;
    }
  }

  if (((v151 ^ v150) & 1) == 0)
  {
    goto LABEL_128;
  }

  return result;
}

uint64_t sub_21772C470(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x49676F6C61746163 && a2 == 0xE900000000000044;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x497972617262696CLL && a2 == 0xE900000000000044;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x80000002177B6900 == a2;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x444964756F6C63 && a2 == 0xE700000000000000;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6974726F706572 && a2 == 0xEF44496D61644167;
            if (v10 || (sub_217753058() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6573616863727570 && a2 == 0xEF44496D61644164;
              if (v11 || (sub_217753058() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6164417465737361 && a2 == 0xEB0000000044496DLL;
                if (v12 || (sub_217753058() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6F4C656369766564 && a2 == 0xED000044496C6163;
                  if (v13 || (sub_217753058() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6E6572727563636FLL && a2 == 0xEC00000044496563;
                    if (v14 || (sub_217753058() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000016 && 0x80000002177B6920 == a2;
                      if (v15 || (sub_217753058() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x4449636E7973 && a2 == 0xE600000000000000;
                        if (v16 || (sub_217753058() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x444972656D726F66 && a2 == 0xE900000000000073;
                          if (v17 || (sub_217753058() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x444972657375 && a2 == 0xE600000000000000;
                            if (v18 || (sub_217753058() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x72617262694C7369 && a2 == 0xE900000000000079;
                              if (v19 || (sub_217753058() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 1701869940 && a2 == 0xE400000000000000;
                                if (v20 || (sub_217753058() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x70795472656E6E69 && a2 == 0xE900000000000065;
                                  if (v21 || (sub_217753058() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x72756F5361746164 && a2 == 0xEB00000000736563;
                                    if (v22 || (sub_217753058() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else if (a1 == 0xD000000000000017 && 0x80000002177B6940 == a2)
                                    {

                                      return 18;
                                    }

                                    else
                                    {
                                      v24 = sub_217753058();

                                      if (v24)
                                      {
                                        return 18;
                                      }

                                      else
                                      {
                                        return 19;
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_21772CA24(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x49676F6C61746163;
      break;
    case 2:
      result = 0x497972617262696CLL;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x444964756F6C63;
      break;
    case 5:
      result = 0x6E6974726F706572;
      break;
    case 6:
      result = 0x6573616863727570;
      break;
    case 7:
      result = 0x6164417465737361;
      break;
    case 8:
      result = 0x6F4C656369766564;
      break;
    case 9:
      result = 0x6E6572727563636FLL;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      v3 = 1668184435;
      goto LABEL_17;
    case 12:
      result = 0x444972656D726F66;
      break;
    case 13:
      v3 = 1919251317;
LABEL_17:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x444900000000;
      break;
    case 14:
      result = 0x72617262694C7369;
      break;
    case 15:
      result = 1701869940;
      break;
    case 16:
      result = 0x70795472656E6E69;
      break;
    case 17:
      result = 0x72756F5361746164;
      break;
    case 18:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21772CC60(void *a1)
{
  v2 = v1;
  v4 = v2[3];
  v5 = v2[7];
  v6 = v2[9];
  v14 = v2[11];
  v15 = v2[13];
  v16 = v2[15];
  v17 = v2[17];
  v18 = v2[19];
  v7 = v2[23];
  v19 = v2[25];
  v8 = v2[29];
  v9 = v2[30];
  v10 = v2[32];
  v11 = v2[38];
  v12 = v2[44];
  sub_217751FF8();
  sub_217753208();
  if (v4)
  {
    sub_217751FF8();
    sub_217751FF8();
  }

  sub_217753208();
  if (v5)
  {
    sub_217751FF8();
  }

  sub_217753208();
  if (v6)
  {
    sub_217751FF8();
  }

  sub_217753208();
  if (v14)
  {
    sub_217751FF8();
  }

  sub_217753208();
  if (v15)
  {
    sub_217751FF8();
  }

  sub_217753208();
  if (v16)
  {
    sub_217751FF8();
  }

  sub_217753208();
  if (v17)
  {
    sub_217751FF8();
  }

  sub_217753208();
  if (v18)
  {
    sub_217751FF8();
    sub_217751FF8();
  }

  if (v7)
  {
    sub_217753208();
    sub_217751FF8();
    if (v19)
    {
      goto LABEL_19;
    }
  }

  else
  {
    sub_217753208();
    if (v19)
    {
LABEL_19:
      sub_217753208();
      sub_217751FF8();
      sub_217751FF8();
      if (v8)
      {
        goto LABEL_20;
      }

      goto LABEL_25;
    }
  }

  sub_217753208();
  if (v8)
  {
LABEL_20:
    sub_217753208();
    sub_217751FF8();
    if (v9)
    {
      goto LABEL_21;
    }

LABEL_26:
    sub_217753208();
    if (v10)
    {
      goto LABEL_22;
    }

    goto LABEL_27;
  }

LABEL_25:
  sub_217753208();
  if (!v9)
  {
    goto LABEL_26;
  }

LABEL_21:
  sub_217753208();
  sub_2172A98C8(a1, v9);
  if (v10)
  {
LABEL_22:
    sub_217753208();
    sub_217751FF8();
    goto LABEL_28;
  }

LABEL_27:
  sub_217753208();
LABEL_28:
  sub_217753208();
  sub_217751FF8();
  sub_217753208();
  if (v11)
  {
    sub_217751DE8();
    sub_217751FF8();
    sub_2172AC65C(v11);
  }

  sub_2172849D8();
  if (!v12)
  {
    return sub_217753208();
  }

  sub_217753208();

  return sub_217751FF8();
}

uint64_t sub_21772D0A4()
{
  sub_2177531E8();
  sub_21772CC60(v1);
  return sub_217753238();
}

uint64_t sub_21772D0EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21772C470(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21772D114@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21772CA1C();
  *a1 = result;
  return result;
}

uint64_t sub_21772D13C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21772D294(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21772D178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21772D294(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_21772D1F0(uint64_t a1)
{
  sub_2177531E8();
  sub_21772CC60(v2);
  return sub_217753238();
}

uint64_t sub_21772D22C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DC50, &qword_21779F958);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21772D294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE8320;
  if (!qword_280BE8320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8320);
  }

  return result;
}

unint64_t sub_21772D2E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE82E0;
  if (!qword_280BE82E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE82E0);
  }

  return result;
}

unint64_t sub_21772D33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE8330;
  if (!qword_280BE8330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8330);
  }

  return result;
}

uint64_t sub_21772D390(unint64_t *a1, uint64_t (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2DC60, &qword_21779F970);
    v5 = a2();
    result = OUTLINED_FUNCTION_30_48(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21772D3F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE82F8;
  if (!qword_280BE82F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE82F8);
  }

  return result;
}

unint64_t sub_21772D44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE82D8;
  if (!qword_280BE82D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE82D8);
  }

  return result;
}

unint64_t sub_21772D4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE8328;
  if (!qword_280BE8328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8328);
  }

  return result;
}

uint64_t sub_21772D4F4(unint64_t *a1, uint64_t (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2C268, &qword_2177905C8);
    v5 = a2();
    result = OUTLINED_FUNCTION_30_48(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21772D55C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE82E8;
  if (!qword_280BE82E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE82E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CodableMusicIdentifierSet.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 19;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v5 = v6 - 19;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CodableMusicIdentifierSet.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xEE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xED)
  {
    v6 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
          *result = a2 + 18;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21772D750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DC70;
  if (!qword_27CB2DC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DC70);
  }

  return result;
}

unint64_t sub_21772D7A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE8310;
  if (!qword_280BE8310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8310);
  }

  return result;
}

unint64_t sub_21772D800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE8318;
  if (!qword_280BE8318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8318);
  }

  return result;
}

void OUTLINED_FUNCTION_22_64(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *(v2 - 128) = v1;
  *(v2 - 120) = v3;
}

void OUTLINED_FUNCTION_26_50()
{
  v2 = *(v0 + 16) + 1;

  sub_2172B1F4C(0, v2, 1, v0);
}

uint64_t CloudAttribute<A>.convertToEditorialNotes()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = *(v1 + 40);
  *(a1 + 56) = v2;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();

  return sub_217751DE8();
}

uint64_t EditorialNotes.convertToCloudEditorialNotesAttribute()@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v10 = v1[6];
  v9 = v1[7];
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  result = sub_217751DC8();
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v6;
  a1[3] = v5;
  a1[4] = v8;
  a1[5] = v7;
  a1[6] = v10;
  a1[7] = v9;
  a1[8] = result;
  return result;
}

uint64_t static CloudEditorialNotes.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v10 = a2[1];
  v11 = a2[2];
  v13 = a2[3];
  v12 = a2[4];
  v15 = a2[5];
  v14 = a2[6];
  v16 = a2[7];
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v10)
    {
      v34 = a1[5];
      v35 = a2[5];
      v18 = a1[4];
      v19 = a2[6];
      v20 = a2[7];
      v21 = a1[7];
      v22 = a1[6];
      v23 = a2[4];
      v24 = sub_217753058();
      v12 = v23;
      v7 = v22;
      v9 = v21;
      v16 = v20;
      v14 = v19;
      v5 = v18;
      v8 = v34;
      v15 = v35;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v6)
  {
    if (!v13)
    {
      return 0;
    }

    if (v4 != v11 || v6 != v13)
    {
      v26 = v7;
      v27 = v12;
      v28 = sub_217753058();
      v12 = v27;
      v7 = v26;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v8)
  {
    if (!v15)
    {
      return 0;
    }

    if (v5 != v12 || v8 != v15)
    {
      v30 = v7;
      v31 = sub_217753058();
      v7 = v30;
      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v9)
  {
    if (v16)
    {
      v32 = v7 == v14 && v9 == v16;
      if (v32 || (sub_217753058() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v16)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_21772DC54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74726F6873 && a2 == 0xE500000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x647261646E617473 && a2 == 0xE800000000000000;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701667182 && a2 == 0xE400000000000000;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x656E696C676174 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_217753058();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_21772DDA8(char a1)
{
  result = 0x74726F6873;
  switch(a1)
  {
    case 1:
      result = 0x647261646E617473;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 0x656E696C676174;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21772DE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21772DC54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21772DE50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21772E084(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21772DE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21772E084(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CloudEditorialNotes.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DC78, &qword_21779FAA0);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = v1[2];
  v26 = v1[3];
  v27 = v9;
  v10 = v1[4];
  v24 = v1[5];
  v25 = v10;
  v11 = v1[6];
  v22 = v1[7];
  v23 = v11;
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21772E084(v12, v13, v14);
  sub_2177532F8();
  v31[1] = 0;
  v15 = v28;
  sub_217752EF8();
  if (!v15)
  {
    v17 = v24;
    v16 = v25;
    v19 = v22;
    v18 = v23;
    v31[0] = 1;
    OUTLINED_FUNCTION_2_145(v27, v26, v31);
    v30 = 2;
    OUTLINED_FUNCTION_2_145(v16, v17, &v30);
    v29 = 3;
    OUTLINED_FUNCTION_2_145(v18, v19, &v29);
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_21772E084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE3B68;
  if (!qword_280BE3B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3B68);
  }

  return result;
}

uint64_t CloudEditorialNotes.hash(into:)(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[5];
  v4 = v1[7];
  if (v1[1])
  {
    sub_217753208();
    sub_217751FF8();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_217753208();
    if (v2)
    {
LABEL_3:
      sub_217753208();
      sub_217751FF8();
      if (v3)
      {
        goto LABEL_4;
      }

LABEL_10:
      sub_217753208();
      if (v4)
      {
        goto LABEL_5;
      }

      return sub_217753208();
    }
  }

  sub_217753208();
  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_4:
  sub_217753208();
  sub_217751FF8();
  if (!v4)
  {
    return sub_217753208();
  }

LABEL_5:
  sub_217753208();

  return sub_217751FF8();
}

uint64_t CloudEditorialNotes.hashValue.getter()
{
  sub_2177531E8();
  CloudEditorialNotes.hash(into:)(v1);
  return sub_217753238();
}

void CloudEditorialNotes.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DC80, &qword_21779FAA8);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21772E084(v11, v12, v13);
  sub_2177532C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v36[0]) = 0;
    OUTLINED_FUNCTION_1_150();
    v14 = sub_217752E18();
    v31 = v15;
    LOBYTE(v36[0]) = 1;
    OUTLINED_FUNCTION_1_150();
    v16 = sub_217752E18();
    v30 = v17;
    v28 = v16;
    LOBYTE(v36[0]) = 2;
    OUTLINED_FUNCTION_1_150();
    v27 = sub_217752E18();
    v29 = v18;
    v37 = 3;
    v19 = sub_217752E18();
    v21 = v20;
    (*(v7 + 8))(v10, v5);
    v22 = v31;
    *&v32 = v14;
    *(&v32 + 1) = v31;
    v24 = v28;
    v23 = v29;
    *&v33 = v28;
    *(&v33 + 1) = v30;
    *&v34 = v27;
    *(&v34 + 1) = v29;
    *&v35 = v19;
    *(&v35 + 1) = v21;
    v25 = v33;
    *a2 = v32;
    a2[1] = v25;
    v26 = v35;
    a2[2] = v34;
    a2[3] = v26;
    sub_2175B7B74(&v32, v36);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v36[0] = v14;
    v36[1] = v22;
    v36[2] = v24;
    v36[3] = v30;
    v36[4] = v27;
    v36[5] = v23;
    v36[6] = v19;
    v36[7] = v21;
    sub_2174D7974(v36);
  }
}

uint64_t sub_21772E520(uint64_t a1)
{
  sub_2177531E8();
  CloudEditorialNotes.hash(into:)(v2);
  return sub_217753238();
}

unint64_t sub_21772E560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DC88;
  if (!qword_27CB2DC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DC88);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudEditorialNotes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21772E6A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DC90;
  if (!qword_27CB2DC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DC90);
  }

  return result;
}

unint64_t sub_21772E6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE3B58;
  if (!qword_280BE3B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3B58);
  }

  return result;
}

unint64_t sub_21772E754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE3B60;
  if (!qword_280BE3B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3B60);
  }

  return result;
}

Swift::Int __swiftcall CloudStatus.convertToLegacyModelRawValue()()
{
  v1 = *v0;
  v2 = objc_opt_self();

  return [v2 rawValueForCloudStatus_];
}

uint64_t sub_21772E804(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6573616863727570 && a2 == 0xE900000000000064;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6465686374616DLL && a2 == 0xE700000000000000;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x646564616F6C7075 && a2 == 0xE800000000000000;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x64657463656A6572 && a2 == 0xE800000000000000;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6C6E4F6C61636F6CLL && a2 == 0xE900000000000079;
            if (v10 || (sub_217753058() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
              if (v11 || (sub_217753058() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x746163696C707564 && a2 == 0xE900000000000065;
                if (v12 || (sub_217753058() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7069726373627573 && a2 == 0xEC0000006E6F6974;
                  if (v13 || (sub_217753058() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x64656B6F766572 && a2 == 0xE700000000000000)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_217753058();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_21772EB14(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x6573616863727570;
      break;
    case 2:
      result = 0x6465686374616DLL;
      break;
    case 3:
      v3 = 0x64616F6C7075;
      goto LABEL_7;
    case 4:
      v3 = 0x7463656A6572;
LABEL_7:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
      break;
    case 5:
      result = 0x6C6E4F6C61636F6CLL;
      break;
    case 6:
      result = 0x726F727265;
      break;
    case 7:
      result = 0x746163696C707564;
      break;
    case 8:
      result = 0x7069726373627573;
      break;
    case 9:
      result = 0x64656B6F766572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21772EC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21772E804(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21772EC64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21772F97C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21772ECA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21772F97C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_21772ECDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21772FA78(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21772ED18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21772FA78(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_21772ED54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21772FACC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21772ED90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21772FACC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_21772EDCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21772FB20(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21772EE08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21772FB20(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_21772EE44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21772FC1C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21772EE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21772FC1C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_21772EEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21772FC70(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21772EEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21772FC70(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_21772EF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21772FB74(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21772EF70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21772FB74(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_21772EFAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21772F9D0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21772EFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21772F9D0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_21772F024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21772FA24(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21772F060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21772FA24(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_21772F09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21772FCC4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21772F0D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21772FCC4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_21772F114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21772FBC8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21772F150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21772FBC8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CloudStatus.encode(to:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DC98, &qword_21779FCF0);
  OUTLINED_FUNCTION_0_0();
  v89 = v5;
  v90 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_150();
  v88 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DCA0, &qword_21779FCF8);
  OUTLINED_FUNCTION_0_0();
  v86 = v9;
  v87 = v8;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_150();
  v85 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DCA8, &qword_21779FD00);
  OUTLINED_FUNCTION_0_0();
  v83 = v13;
  v84 = v12;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_150();
  v82 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DCB0, &qword_21779FD08);
  OUTLINED_FUNCTION_0_0();
  v80 = v17;
  v81 = v16;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_150();
  v79 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DCB8, &qword_21779FD10);
  OUTLINED_FUNCTION_0_0();
  v77 = v21;
  v78 = v20;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_150();
  v76 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DCC0, &qword_21779FD18);
  OUTLINED_FUNCTION_0_0();
  v74 = v25;
  v75 = v24;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_150();
  v73 = v27;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DCC8, &qword_21779FD20);
  OUTLINED_FUNCTION_0_0();
  v71 = v28;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_150();
  v70 = v30;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DCD0, &qword_21779FD28);
  OUTLINED_FUNCTION_0_0();
  v68 = v31;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_150();
  v67 = v33;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DCD8, &qword_21779FD30);
  OUTLINED_FUNCTION_0_0();
  v65[2] = v34;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v35);
  v37 = v65 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DCE0, &qword_21779FD38);
  OUTLINED_FUNCTION_0_0();
  v65[1] = v39;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v40);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DCE8, &qword_21779FD40);
  OUTLINED_FUNCTION_0_0();
  v42 = v41;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v43);
  v45 = v65 - v44;
  v46 = *v2;
  v47 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21772F97C(v47, v48, v49);
  v50 = sub_2177532F8();
  v53 = (v42 + 8);
  switch(v46)
  {
    case 1:
      v93[0] = 1;
      sub_21772FC70(v50, v51, v52);
      v62 = v91;
      sub_217752EE8();
      OUTLINED_FUNCTION_12_1();
      v63(v37, v66);
      return (*v53)(v45, v62);
    case 2:
      v94 = 2;
      sub_21772FC1C(v50, v51, v52);
      v59 = v67;
      OUTLINED_FUNCTION_1_85(&type metadata for CloudStatus.MatchedCodingKeys, &v94);
      OUTLINED_FUNCTION_12_1();
      v54 = v59;
      v60 = &v102;
      goto LABEL_7;
    case 3:
      v95 = 3;
      sub_21772FBC8(v50, v51, v52);
      v61 = v70;
      OUTLINED_FUNCTION_1_85(&type metadata for CloudStatus.UploadedCodingKeys, &v95);
      OUTLINED_FUNCTION_12_1();
      v54 = v61;
      v60 = &v103;
LABEL_7:
      v56 = *(v60 - 32);
      break;
    case 4:
      v96 = 4;
      sub_21772FB74(v50, v51, v52);
      v57 = v73;
      OUTLINED_FUNCTION_1_85(&type metadata for CloudStatus.RejectedCodingKeys, &v96);
      v58 = v74;
      v56 = v75;
      goto LABEL_13;
    case 5:
      v97 = 5;
      sub_21772FB20(v50, v51, v52);
      v57 = v76;
      OUTLINED_FUNCTION_1_85(&type metadata for CloudStatus.LocalOnlyCodingKeys, &v97);
      v58 = v77;
      v56 = v78;
      goto LABEL_13;
    case 6:
      v98 = 6;
      sub_21772FACC(v50, v51, v52);
      v57 = v79;
      OUTLINED_FUNCTION_1_85(&type metadata for CloudStatus.ErrorCodingKeys, &v98);
      v58 = v80;
      v56 = v81;
      goto LABEL_13;
    case 7:
      v99 = 7;
      sub_21772FA78(v50, v51, v52);
      v57 = v82;
      OUTLINED_FUNCTION_1_85(&type metadata for CloudStatus.DuplicateCodingKeys, &v99);
      v58 = v83;
      v56 = v84;
      goto LABEL_13;
    case 8:
      v100 = 8;
      sub_21772FA24(v50, v51, v52);
      v57 = v85;
      OUTLINED_FUNCTION_1_85(&type metadata for CloudStatus.SubscriptionCodingKeys, &v100);
      v58 = v86;
      v56 = v87;
      goto LABEL_13;
    case 9:
      v101 = 9;
      sub_21772F9D0(v50, v51, v52);
      v57 = v88;
      OUTLINED_FUNCTION_1_85(&type metadata for CloudStatus.RevokedCodingKeys, &v101);
      v58 = v89;
      v56 = v90;
LABEL_13:
      v55 = *(v58 + 8);
      v54 = v57;
      break;
    default:
      v92 = 0;
      sub_21772FCC4(v50, v51, v52);
      v37 = v91;
      sub_217752EE8();
      v54 = OUTLINED_FUNCTION_4_77();
      v56 = v38;
      break;
  }

  v55(v54, v56);
  return (*v53)(v45, v37);
}

unint64_t sub_21772F97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DCF0;
  if (!qword_27CB2DCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DCF0);
  }

  return result;
}

unint64_t sub_21772F9D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DCF8;
  if (!qword_27CB2DCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DCF8);
  }

  return result;
}

unint64_t sub_21772FA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DD00;
  if (!qword_27CB2DD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DD00);
  }

  return result;
}

unint64_t sub_21772FA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DD08;
  if (!qword_27CB2DD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DD08);
  }

  return result;
}

unint64_t sub_21772FACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DD10;
  if (!qword_27CB2DD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DD10);
  }

  return result;
}

unint64_t sub_21772FB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DD18;
  if (!qword_27CB2DD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DD18);
  }

  return result;
}

unint64_t sub_21772FB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DD20;
  if (!qword_27CB2DD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DD20);
  }

  return result;
}

unint64_t sub_21772FBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DD28;
  if (!qword_27CB2DD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DD28);
  }

  return result;
}

unint64_t sub_21772FC1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DD30;
  if (!qword_27CB2DD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DD30);
  }

  return result;
}

unint64_t sub_21772FC70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DD38;
  if (!qword_27CB2DD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DD38);
  }

  return result;
}

unint64_t sub_21772FCC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DD40;
  if (!qword_27CB2DD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DD40);
  }

  return result;
}

uint64_t CloudStatus.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

uint64_t CloudStatus.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v121 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DD48, &qword_21779FD48);
  OUTLINED_FUNCTION_0_0();
  v114 = v4;
  v115 = v3;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_150();
  v120 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DD50, &qword_21779FD50);
  OUTLINED_FUNCTION_0_0();
  v112 = v8;
  v113 = v7;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_150();
  v119 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DD58, &qword_21779FD58);
  OUTLINED_FUNCTION_0_0();
  v110 = v12;
  v111 = v11;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_150();
  v124 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DD60, &qword_21779FD60);
  OUTLINED_FUNCTION_0_0();
  v108 = v16;
  v109 = v15;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_150();
  v123 = v18;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DD68, &qword_21779FD68);
  OUTLINED_FUNCTION_0_0();
  v106 = v19;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_150();
  v122 = v21;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DD70, &qword_21779FD70);
  OUTLINED_FUNCTION_0_0();
  v104 = v22;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_150();
  v118 = v24;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DD78, &qword_21779FD78);
  OUTLINED_FUNCTION_0_0();
  v102 = v25;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_150();
  v117 = v27;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DD80, &qword_21779FD80);
  OUTLINED_FUNCTION_0_0();
  v100 = v28;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_150();
  v116 = v30;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DD88, &qword_21779FD88);
  OUTLINED_FUNCTION_0_0();
  v98 = v31;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32);
  v34 = &v91 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DD90, &qword_21779FD90);
  OUTLINED_FUNCTION_0_0();
  v97 = v36;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v37);
  v39 = &v91 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DD98, &unk_21779FD98);
  OUTLINED_FUNCTION_0_0();
  v42 = v41;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v43);
  v45 = &v91 - v44;
  v46 = a1[3];
  v125 = a1;
  v47 = __swift_project_boxed_opaque_existential_1(a1, v46);
  sub_21772F97C(v47, v48, v49);
  v50 = v126;
  sub_2177532C8();
  if (v50)
  {
    goto LABEL_11;
  }

  v94 = v39;
  v93 = v35;
  v95 = v34;
  v51 = v122;
  v52 = v123;
  v53 = v124;
  v126 = v42;
  v54 = v45;
  sub_217752EB8();
  result = sub_21733CF68();
  if (v57 == v58 >> 1)
  {
    v96 = result;
    v59 = v126;
    v60 = v45;
LABEL_10:
    v76 = sub_217752B48();
    swift_allocError();
    v78 = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0);
    *v78 = &type metadata for CloudStatus;
    sub_217752DF8();
    sub_217752B08();
    (*(*(v76 - 8) + 104))(v78, *MEMORY[0x277D84160], v76);
    swift_willThrow();
    OUTLINED_FUNCTION_20_7();
    (*(v59 + 8))(v60, v40);
LABEL_11:
    v79 = v125;
    return __swift_destroy_boxed_opaque_existential_1(v79);
  }

  v92 = 0;
  if (v57 < (v58 >> 1))
  {
    v61 = v40;
    v62 = *(v56 + v57);
    v63 = sub_21733CF64();
    v65 = v64;
    v67 = v66;
    v68 = swift_unknownObjectRelease();
    v96 = v63;
    v60 = v54;
    if (v65 == v67 >> 1)
    {
      v71 = v62;
      v72 = v121;
      v73 = v92;
      switch(v62)
      {
        case 1:
          v128 = 1;
          sub_21772FC70(v68, v69, v70);
          OUTLINED_FUNCTION_2_86(&type metadata for CloudStatus.PurchasedCodingKeys, &v128);
          OUTLINED_FUNCTION_20_7();
          v80 = OUTLINED_FUNCTION_4_77();
          v82 = &v137;
          goto LABEL_19;
        case 2:
          v129 = 2;
          sub_21772FC1C(v68, v69, v70);
          OUTLINED_FUNCTION_2_86(&type metadata for CloudStatus.MatchedCodingKeys, &v129);
          OUTLINED_FUNCTION_20_7();
          v80 = OUTLINED_FUNCTION_4_77();
          v82 = &v138;
          goto LABEL_19;
        case 3:
          v130 = 3;
          sub_21772FBC8(v68, v69, v70);
          OUTLINED_FUNCTION_2_86(&type metadata for CloudStatus.UploadedCodingKeys, &v130);
          OUTLINED_FUNCTION_20_7();
          v80 = OUTLINED_FUNCTION_4_77();
          v82 = &v139;
          goto LABEL_19;
        case 4:
          v131 = 4;
          sub_21772FB74(v68, v69, v70);
          OUTLINED_FUNCTION_2_86(&type metadata for CloudStatus.RejectedCodingKeys, &v131);
          OUTLINED_FUNCTION_20_7();
          v80 = OUTLINED_FUNCTION_4_77();
          v82 = &v140;
LABEL_19:
          v83 = *(v82 - 32);
          goto LABEL_25;
        case 5:
          v132 = 5;
          sub_21772FB20(v68, v69, v70);
          OUTLINED_FUNCTION_3_77(&type metadata for CloudStatus.LocalOnlyCodingKeys, &v132);
          OUTLINED_FUNCTION_20_7();
          v80 = OUTLINED_FUNCTION_4_77();
          v83 = v107;
          goto LABEL_25;
        case 6:
          v133 = 6;
          sub_21772FACC(v68, v69, v70);
          v53 = v52;
          OUTLINED_FUNCTION_3_77(&type metadata for CloudStatus.ErrorCodingKeys, &v133);
          OUTLINED_FUNCTION_20_7();
          v84 = v108;
          v83 = v109;
          goto LABEL_24;
        case 7:
          v134 = 7;
          sub_21772FA78(v68, v69, v70);
          OUTLINED_FUNCTION_2_86(&type metadata for CloudStatus.DuplicateCodingKeys, &v134);
          OUTLINED_FUNCTION_20_7();
          v84 = v110;
          v83 = v111;
          goto LABEL_24;
        case 8:
          v135 = 8;
          sub_21772FA24(v68, v69, v70);
          v53 = v119;
          OUTLINED_FUNCTION_2_86(&type metadata for CloudStatus.SubscriptionCodingKeys, &v135);
          OUTLINED_FUNCTION_20_7();
          v84 = v112;
          v83 = v113;
          goto LABEL_24;
        case 9:
          v136 = 9;
          sub_21772F9D0(v68, v69, v70);
          v53 = v120;
          OUTLINED_FUNCTION_2_86(&type metadata for CloudStatus.RevokedCodingKeys, &v136);
          OUTLINED_FUNCTION_20_7();
          v84 = v114;
          v83 = v115;
LABEL_24:
          v81 = *(v84 + 8);
          v80 = v53;
LABEL_25:
          v81(v80, v83);
          v89 = OUTLINED_FUNCTION_12_38();
          v90(v89, v51);
          v79 = v125;
          goto LABEL_26;
        default:
          v127 = 0;
          sub_21772FCC4(v68, v69, v70);
          v74 = v94;
          sub_217752DE8();
          if (v73)
          {
            v75 = OUTLINED_FUNCTION_12_38();
            v85(v75, v61);
            OUTLINED_FUNCTION_20_7();
            goto LABEL_11;
          }

          OUTLINED_FUNCTION_20_7();
          OUTLINED_FUNCTION_12_1();
          v86(v74, v93);
          v87 = OUTLINED_FUNCTION_12_38();
          v88(v87, v61);
          v79 = v125;
          v71 = v62;
LABEL_26:
          *v72 = v71;
          break;
      }

      return __swift_destroy_boxed_opaque_existential_1(v79);
    }

    v59 = v126;
    v40 = v61;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_217730844(uint64_t a1)
{
  sub_2177531E8();
  CloudStatus.hash(into:)();
  return sub_217753238();
}

MusicKit::CloudStatus_optional __swiftcall CloudStatus.init(legacyModelRawValue:)(Swift::Int legacyModelRawValue)
{
  v2 = v1;
  v3 = [objc_opt_self() cloudStatusForRawValue_];
  if ((v3 - 1) < 9)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *v2 = v4;
  return v3;
}

Swift::Int sub_2177308E4@<X0>(Swift::Int *a1@<X8>)
{
  result = CloudStatus.convertToLegacyModelRawValue()();
  *a1 = result;
  return result;
}

unint64_t sub_217730910()
{
  result = qword_27CB2DDA0;
  if (!qword_27CB2DDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2DDA8, &qword_21779FDA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DDA0);
  }

  return result;
}

unint64_t sub_217730978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DDB0;
  if (!qword_27CB2DDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DDB0);
  }

  return result;
}

_BYTE *sub_2177309DC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_217730B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DDB8;
  if (!qword_27CB2DDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DDB8);
  }

  return result;
}

unint64_t sub_217730BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DDC0;
  if (!qword_27CB2DDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DDC0);
  }

  return result;
}

unint64_t sub_217730C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DDC8;
  if (!qword_27CB2DDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DDC8);
  }

  return result;
}

unint64_t sub_217730C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DDD0;
  if (!qword_27CB2DDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DDD0);
  }

  return result;
}

unint64_t sub_217730CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DDD8;
  if (!qword_27CB2DDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DDD8);
  }

  return result;
}

unint64_t sub_217730D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DDE0;
  if (!qword_27CB2DDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DDE0);
  }

  return result;
}

unint64_t sub_217730D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DDE8;
  if (!qword_27CB2DDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DDE8);
  }

  return result;
}

unint64_t sub_217730DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DDF0;
  if (!qword_27CB2DDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DDF0);
  }

  return result;
}

unint64_t sub_217730E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DDF8;
  if (!qword_27CB2DDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DDF8);
  }

  return result;
}

unint64_t sub_217730E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DE00;
  if (!qword_27CB2DE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DE00);
  }

  return result;
}

unint64_t sub_217730ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DE08;
  if (!qword_27CB2DE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DE08);
  }

  return result;
}

unint64_t sub_217730F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DE10;
  if (!qword_27CB2DE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DE10);
  }

  return result;
}

unint64_t sub_217730F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DE18;
  if (!qword_27CB2DE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DE18);
  }

  return result;
}

unint64_t sub_217730FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DE20;
  if (!qword_27CB2DE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DE20);
  }

  return result;
}

unint64_t sub_21773102C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DE28;
  if (!qword_27CB2DE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DE28);
  }

  return result;
}

unint64_t sub_217731084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DE30;
  if (!qword_27CB2DE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DE30);
  }

  return result;
}

unint64_t sub_2177310DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DE38;
  if (!qword_27CB2DE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DE38);
  }

  return result;
}

unint64_t sub_217731134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DE40;
  if (!qword_27CB2DE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DE40);
  }

  return result;
}

unint64_t sub_21773118C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DE48;
  if (!qword_27CB2DE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DE48);
  }

  return result;
}

unint64_t sub_2177311E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DE50;
  if (!qword_27CB2DE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DE50);
  }

  return result;
}

unint64_t sub_21773123C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DE58;
  if (!qword_27CB2DE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DE58);
  }

  return result;
}

unint64_t sub_217731294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DE60;
  if (!qword_27CB2DE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DE60);
  }

  return result;
}

unint64_t sub_2177312EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DE68;
  if (!qword_27CB2DE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DE68);
  }

  return result;
}

uint64_t sub_217731344(uint64_t a1)
{
  type metadata accessor for GenreCache();
  v1 = swift_allocObject();
  result = sub_217731380(v1, v2, v3);
  qword_27CB8A338 = result;
  return result;
}

uint64_t sub_217731380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_280BE4A88 != -1)
  {
    a1 = swift_once();
  }

  v5 = *algn_280BE4A98;
  v6 = byte_280BE4AA0;
  *(v4 + 16) = qword_280BE4A90;
  *(v4 + 24) = v5;
  *(v4 + 32) = v6;
  sub_2172CAE0C(a1, a2, a3);
  sub_217751DE8();
  *(v4 + 40) = sub_217751DC8();
  *(v4 + 48) = 0;
  type metadata accessor for UnfairLock();
  v7 = swift_allocObject();
  v8 = swift_slowAlloc();
  *(v7 + 16) = v8;
  *v8 = 0;
  *(v4 + 56) = v7;
  if (qword_280BEAE60 != -1)
  {
    swift_once();
  }

  v9 = qword_280C029A0;
  v10 = *MEMORY[0x277D7F8F8];
  v11 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v12 = v10;
  v13 = v9;
  *(v4 + 48) = NotificationObserver.init(name:object:handler:)(v12, v9, sub_217733C14, v11);

  return v4;
}

uint64_t sub_217731524(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21773157C();
  }

  return result;
}

uint64_t sub_21773157C()
{

  v0 = OUTLINED_FUNCTION_93();
  return sub_2175867F8(v0, v1);
}

uint64_t sub_2177315C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  v7 = sub_2177516D8();
  v4[22] = v7;
  OUTLINED_FUNCTION_15_3(v7);
  v4[23] = v8;
  v4[24] = OUTLINED_FUNCTION_28_7();
  v9 = sub_2177512F8();
  v4[25] = v9;
  OUTLINED_FUNCTION_15_3(v9);
  v4[26] = v10;
  v4[27] = OUTLINED_FUNCTION_28_7();
  v4[28] = type metadata accessor for MusicDataRequest(0);
  v4[29] = OUTLINED_FUNCTION_28_7();
  type metadata accessor for MusicAPI.Endpoint(0);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v13 = (*(a4 + 16) + **(a4 + 16));
  v11 = swift_task_alloc();
  v4[33] = v11;
  *v11 = v4;
  v11[1] = sub_2177317F0;

  return v13(a3, a4);
}

uint64_t sub_2177317F0()
{
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_42_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 272) = v5;
  *(v3 + 280) = v6;

  if (v0)
  {

    OUTLINED_FUNCTION_20_0();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_35_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_217731968()
{
  if (qword_280BE4A88 != -1)
  {
    OUTLINED_FUNCTION_11();
    swift_once();
  }

  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = v0[27];
  v21 = v0[29];
  v22 = v0[28];
  v5 = v0[26];
  v7 = v0[23];
  v6 = v0[24];
  v19 = v0[22];
  v20 = v0[25];
  v23 = v0[20];
  v24 = v0[21];
  static MusicAPI.Endpoint.catalogEndpoint<A>(countryCode:pathSuffix:queryItems:configuration:)();

  sub_2172CB230(v1, v2);
  sub_2172CB230(v2, v3);
  (*(v7 + 16))(v6, v3, v19);
  sub_2177512B8();
  sub_2176F88E0(v3, type metadata accessor for MusicAPI.Endpoint);
  sub_217751268();
  (*(v5 + 16))(v21, v4, v20);
  v8 = (v21 + *(v22 + 20));
  swift_beginAccess();
  v9 = off_280BEBCD0;

  (v9)(v10);

  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v11 = OUTLINED_FUNCTION_56_0();
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v11, v12, v13);
  (*(v5 + 8))(v4, v20);
  sub_2176F88E0(v2, type metadata accessor for MusicAPI.Endpoint);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v23, v24, (v0 + 7));
  sub_2172CA894((v0 + 7), v8);
  v14 = v8[3];
  v15 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v14);
  v25 = (*(v15 + 104) + **(v15 + 104));
  v16 = swift_task_alloc();
  v0[36] = v16;
  *v16 = v0;
  v16[1] = sub_217731C90;
  v17 = v0[29];

  return v25(v0 + 15, v17, v14, v15);
}

uint64_t sub_217731C90()
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_42_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_42_0();
  *v5 = v4;
  *(v6 + 296) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217731D94()
{
  v21 = v0;
  v1 = v0[37];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[15];
  v5 = v0[16];
  v19 = v0[17];
  sub_217751348();
  swift_allocObject();
  sub_217751338();
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v3, v2, v20);
  JSONDecoder.dataRequestConfiguration.setter(v20);
  type metadata accessor for SharedRelatedItemStore();
  v6 = swift_allocObject();
  SharedRelatedItemStore.init()(v6, v7, v8);

  JSONDecoder.sharedRelatedItemStore.setter(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27748, &qword_21776B1B0);
  sub_217733B90();
  OUTLINED_FUNCTION_56_0();
  sub_217751308();
  v10 = v0[32];
  if (v1)
  {
    v11 = v0[29];

    sub_217275694(v4, v5);

    OUTLINED_FUNCTION_1_17();
    sub_2176F88E0(v10, v12);
    OUTLINED_FUNCTION_21();
    sub_2176F88E0(v11, v13);
  }

  else
  {
    v15 = v0[29];

    sub_217275694(v4, v5);

    OUTLINED_FUNCTION_1_17();
    sub_2176F88E0(v10, v16);
    OUTLINED_FUNCTION_21();
    sub_2176F88E0(v15, v17);
  }

  OUTLINED_FUNCTION_20_0();

  return v14();
}

uint64_t sub_217731FD8()
{
  v1 = *(v0 + 232);
  OUTLINED_FUNCTION_1_17();
  sub_2176F88E0(v2, v3);
  OUTLINED_FUNCTION_21();
  sub_2176F88E0(v1, v4);

  OUTLINED_FUNCTION_20_0();

  return v5();
}

uint64_t sub_217732098(uint64_t a1)
{
  v2 = v1;
  os_unfair_lock_assert_owner(*(*(v1 + 56) + 16));
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB29D18, &qword_2177A07E0);
  sub_217751E18();
  result = swift_endAccess();
  v23 = *(a1 + 16);
  v22 = *(v23 + 16);
  if (v22)
  {
    v5 = 0;
    v6 = v23 + 32;
    while (v5 < *(v23 + 16))
    {
      sub_217284130(v6, v28);
      v7 = v28[0];
      v24 = v28[0];
      v25 = v28[1];
      v26 = v28[2];
      v27 = v29;
      swift_beginAccess();
      sub_217751DE8();
      swift_isUniquelyReferenced_nonNull_native();
      v8 = *(v2 + 40);
      *(v2 + 40) = 0x8000000000000000;
      v9 = sub_21763246C(v7, *(&v7 + 1));
      if (__OFADD__(v8[2], (v10 & 1) == 0))
      {
        goto LABEL_15;
      }

      v11 = v9;
      v12 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DE78, &qword_2177A07E8);
      if (sub_217752CB8())
      {
        v13 = sub_21763246C(v7, *(&v7 + 1));
        if ((v12 & 1) != (v14 & 1))
        {
          goto LABEL_17;
        }

        v11 = v13;
      }

      if (v12)
      {

        sub_217733B34(&v24, v8[7] + 56 * v11);
      }

      else
      {
        v8[(v11 >> 6) + 8] |= 1 << v11;
        *(v8[6] + 16 * v11) = v7;
        v15 = v8[7] + 56 * v11;
        v16 = v27;
        v18 = v25;
        v17 = v26;
        *v15 = v24;
        *(v15 + 16) = v18;
        *(v15 + 32) = v17;
        *(v15 + 48) = v16;
        v19 = v8[2];
        v20 = __OFADD__(v19, 1);
        v21 = v19 + 1;
        if (v20)
        {
          goto LABEL_16;
        }

        v8[2] = v21;
      }

      ++v5;
      *(v2 + 40) = v8;
      result = swift_endAccess();
      v6 += 56;
      if (v22 == v5)
      {
        return result;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_217753178();
    __break(1u);
  }

  return result;
}

uint64_t sub_2177322FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_assert_owner(*(*(v4 + 56) + 16));
  v5 = swift_beginAccess();
  if (!*(*(v4 + 40) + 16))
  {
    return 0;
  }

  MEMORY[0x28223BE20](v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244F8, &qword_2177589E0);
  sub_217733AD0();
  return sub_217752148();
}

uint64_t sub_2177323F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  v9 = *(a2 + 40);
  sub_217751DE8();
  sub_2173AC9DC(v7, v8, v9, &v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27760, &unk_21775A2D0);
  v10 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a4, v10 ^ 1u, 1, a3);
}

uint64_t sub_2177324D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[29] = a6;
  v7[30] = v6;
  v7[27] = a4;
  v7[28] = a5;
  v7[25] = a2;
  v7[26] = a3;
  v9 = type metadata accessor for MusicItemCacheResult(255, a5, a6, a4);
  v7[31] = v9;
  v10 = sub_2177528F8();
  v7[32] = v10;
  OUTLINED_FUNCTION_15_3(v10);
  v7[33] = v11;
  v7[34] = OUTLINED_FUNCTION_28_7();
  v7[35] = *(a5 - 8);
  v7[36] = OUTLINED_FUNCTION_28_7();
  v7[37] = *(v9 - 8);
  v7[38] = OUTLINED_FUNCTION_28_7();
  v12 = sub_2177528F8();
  v7[39] = v12;
  OUTLINED_FUNCTION_15_3(v12);
  v7[40] = v13;
  v7[41] = swift_task_alloc();
  v7[42] = swift_task_alloc();
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2177326AC()
{
  v154 = v0;
  v3 = *(v0 + 200);
  v4 = *(v3 + 16);
  if (v4)
  {
    v152[0] = MEMORY[0x277D84F90];
    sub_217276568(0, v4, 0);
    v5 = v152[0];
    v1 = *(v152[0] + 16);
    v6 = 16 * v1;
    v7 = (v3 + 40);
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      v152[0] = v5;
      v2 = *(v5 + 24);
      sub_217751DE8();
      if (v1 >= v2 >> 1)
      {
        sub_217276568(v2 > 1, v1 + 1, 1);
        v5 = v152[0];
      }

      *(v5 + 16) = v1 + 1;
      v10 = v5 + v6;
      *(v10 + 32) = v9;
      *(v10 + 40) = v8;
      v6 += 16;
      v7 += 2;
      ++v1;
      --v4;
    }

    while (v4);
  }

  v11 = *(v0 + 240);
  v151 = *(v0 + 224);
  sub_2172C3638();
  v13 = v12;
  v15 = v14;
  *(v0 + 344) = v12;
  *(v0 + 352) = v14;
  v16 = sub_217752338();
  *(v0 + 360) = v16;
  *(v0 + 176) = v16;
  *(v0 + 368) = *(v11 + 56);
  v17 = swift_task_alloc();
  *(v17 + 16) = v151;
  *(v17 + 32) = v11;
  *(v17 + 40) = v13;
  *(v17 + 48) = v15;
  *(v0 + 376) = sub_217752418();
  sub_2177528F8();
  v18 = 0;
  UnfairLock.locked<A>(_:)(sub_2177338F4);

  v19 = *(v0 + 184);
  if (v19)
  {

    *(v0 + 176) = v19;
    v20 = *(v0 + 352);
    v21 = *(v0 + 248);
    OUTLINED_FUNCTION_28_57();
    v22 = sub_217752338();
    sub_2172CAE0C(v22, v23, v24);
    v152[0] = OUTLINED_FUNCTION_24_56();
    v152[1] = v25;
    v152[2] = v26;
    v129 = *(v20 + 16);
    if (v129)
    {
      OUTLINED_FUNCTION_9_100();
      OUTLINED_FUNCTION_18_63();
      v110 = v27;
      v115 = v28;
      v105 = v20;
      while (1)
      {
        v29 = OUTLINED_FUNCTION_12_73();
        v37 = OUTLINED_FUNCTION_26_51(v29, v30, v31, v32, v33, v34, v35, v36, v100, v105, v110, v115, v120);
        v45 = OUTLINED_FUNCTION_17_68(v37, v38, v39, v40, v41, v42, v43, v44, v101, v106, v111, v116, v121, v125, v129, v133, v137, v141, v145, v148, v150);
        v48 = OUTLINED_FUNCTION_10_81(v45, v46, v47);
        OUTLINED_FUNCTION_6_115(v48);

        v57 = OUTLINED_FUNCTION_21_56(v49, v50, v51, v52, v53, v54, v55, v56, v102, v107, v112, v117, v122, v126, v130, v134, v138, v142, v146);
        v59 = v58(v57);
        OUTLINED_FUNCTION_36_40(v59, v60, v61, v62, v63, v64, v65, v66, v103, v108, v113, v118, v123, v127, v131, v135, v139, v143, v147, v149, v150);
        if (v68)
        {
          v145 = v18;
          v69 = v109;
          (*v109)(v67, *(v0 + 312));
          OUTLINED_FUNCTION_56_0();
          v70 = swift_storeEnumTagMultiPayload();
          goto LABEL_33;
        }

        v78 = OUTLINED_FUNCTION_15_72();
        MEMORY[0](v78);
        v79 = sub_217204DD0(v21);
        if (!v79)
        {
          v145 = v18;
          v89 = OUTLINED_FUNCTION_22_65();
          MEMORY[0](v89);
          goto LABEL_31;
        }

        v2 = v79;
        v80 = 0;
        v153 = MEMORY[0x277D84F90];
        while (v2 != v80)
        {
          OUTLINED_FUNCTION_34_43();
          if (v22)
          {
            result = MEMORY[0x21CEA2E30](v80, *(v0 + 208));
          }

          else
          {
          }

          if (__OFADD__(v80, 1))
          {
            __break(1u);
            return result;
          }

          sub_2173C3C48();
          if (*(v82 + 16))
          {
            if (qword_280BE4A88 != -1)
            {
              OUTLINED_FUNCTION_11();
              swift_once();
            }

            v83 = *algn_280BE4A98;
            *(v0 + 160) = qword_280BE4A90;
            *(v0 + 168) = v83;
            v84 = swift_task_alloc();
            v1 = OUTLINED_FUNCTION_7_97(v84, v0 + 160);

            if ((v1 & 1) == 0)
            {

              goto LABEL_25;
            }
          }

          else
          {
          }

          sub_217752BC8();
          sub_217752C08();
          sub_217752C18();
          sub_217752BD8();
LABEL_25:
          ++v80;
        }

        v85 = v153;
        v86 = sub_217204DD0(v153);

        OUTLINED_FUNCTION_33_50();
        v145 = v18;
        if (v86)
        {
          v87 = *(v0 + 208);
          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24520, &unk_217758A10);
          v1 = *(swift_getTupleTypeMetadata2() + 48);
          v88 = OUTLINED_FUNCTION_4_144();
          MEMORY[0](v88);
          *(v85 + v1) = v87;
          OUTLINED_FUNCTION_56_0();
          swift_storeEnumTagMultiPayload();
          v70 = sub_217751DE8();
          goto LABEL_32;
        }

        v90 = OUTLINED_FUNCTION_4_144();
        MEMORY[0](v90);
LABEL_31:
        OUTLINED_FUNCTION_56_0();
        v70 = swift_storeEnumTagMultiPayload();
LABEL_32:
        v69 = v109;
LABEL_33:
        v148 = *(v0 + 312);
        *&v150 = *(v0 + 336);
        OUTLINED_FUNCTION_20_57(v70, v71, v72, v73, v74, v75, v76, v77, v104, v109, v114, v119, v124, v128, v132, v136, v140, v144);
        sub_217751AC8();
        v21 = v152;
        sub_217751A78();
        (*v115)(v1, v2);
        v91 = OUTLINED_FUNCTION_32_52();
        v92(v91);
        (*v69)(v150, v148);

        v18 = v145;
        if (v129 == 1)
        {

          goto LABEL_39;
        }
      }
    }

    OUTLINED_FUNCTION_35_41();
LABEL_39:
    OUTLINED_FUNCTION_25_65();

    v98 = OUTLINED_FUNCTION_56_0();

    return v99(v98);
  }

  else
  {
    v93 = *(v0 + 216);
    v95 = v93[3];
    v94 = v93[4];
    v96 = __swift_project_boxed_opaque_existential_1(v93, v95);
    v97 = swift_task_alloc();
    *(v0 + 384) = v97;
    *v97 = v0;
    v97[1] = sub_217732CD8;

    return sub_2177315C0(v0 + 16, v96, v95, v94);
  }
}

uint64_t sub_217732CD8()
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_42_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_42_0();
  *v5 = v4;
  *(v6 + 392) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217732DDC()
{
  v135 = v0;
  v2 = *(v0 + 392);
  v4 = *(v0 + 344);
  v3 = *(v0 + 352);
  v5 = *(v0 + 240);
  v6 = swift_task_alloc();
  *(v6 + 16) = *(v0 + 224);
  *(v6 + 32) = v5;
  *(v6 + 40) = v0 + 16;
  *(v6 + 48) = v0 + 176;
  *(v6 + 56) = v4;
  *(v6 + 64) = v3;
  sub_21720BA7C();

  sub_217733964(v0 + 16);
  v7 = *(v0 + 352);
  v8 = *(v0 + 248);
  OUTLINED_FUNCTION_28_57();
  v9 = sub_217752338();
  sub_2172CAE0C(v9, v10, v11);
  v133[0] = OUTLINED_FUNCTION_24_56();
  v133[1] = v12;
  v133[2] = v13;
  v111 = *(v7 + 16);
  if (!v111)
  {
    OUTLINED_FUNCTION_35_41();
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_9_100();
  OUTLINED_FUNCTION_18_63();
  v87 = v14;
  v92 = v15;
  v97 = v7;
  do
  {
    v16 = OUTLINED_FUNCTION_12_73();
    v24 = OUTLINED_FUNCTION_26_51(v16, v17, v18, v19, v20, v21, v22, v23, v82, v87, v92, v97, v102);
    v32 = OUTLINED_FUNCTION_17_68(v24, v25, v26, v27, v28, v29, v30, v31, v83, v88, v93, v98, v103, v107, v111, v115, v119, v123, v127, v130, v132);
    v35 = OUTLINED_FUNCTION_10_81(v32, v33, v34);
    OUTLINED_FUNCTION_6_115(v35);

    v44 = OUTLINED_FUNCTION_21_56(v36, v37, v38, v39, v40, v41, v42, v43, v84, v89, v94, v99, v104, v108, v112, v116, v120, v124, v128);
    v46 = v45(v44);
    OUTLINED_FUNCTION_36_40(v46, v47, v48, v49, v50, v51, v52, v53, v85, v90, v95, v100, v105, v109, v113, v117, v121, v125, v129, v131, v132);
    if (v55)
    {
      *&v132 = v2;
      v56 = v101;
      (*v101)(v54, *(v0 + 312));
      OUTLINED_FUNCTION_56_0();
      v57 = swift_storeEnumTagMultiPayload();
      goto LABEL_27;
    }

    v65 = OUTLINED_FUNCTION_15_72();
    MEMORY[0](v65);
    v66 = sub_217204DD0(v8);
    if (!v66)
    {
      *&v132 = v2;
      v76 = OUTLINED_FUNCTION_22_65();
      MEMORY[0](v76);
      goto LABEL_25;
    }

    v1 = v66;
    v67 = 0;
    v134 = MEMORY[0x277D84F90];
    while (v1 != v67)
    {
      OUTLINED_FUNCTION_34_43();
      if (v9)
      {
        result = MEMORY[0x21CEA2E30](v67, *(v0 + 208));
      }

      else
      {
      }

      if (__OFADD__(v67, 1))
      {
        __break(1u);
        return result;
      }

      sub_2173C3C48();
      if (*(v69 + 16))
      {
        if (qword_280BE4A88 != -1)
        {
          OUTLINED_FUNCTION_11();
          swift_once();
        }

        v70 = *algn_280BE4A98;
        *(v0 + 160) = qword_280BE4A90;
        *(v0 + 168) = v70;
        v71 = swift_task_alloc();
        v5 = OUTLINED_FUNCTION_7_97(v71, v0 + 160);

        if ((v5 & 1) == 0)
        {

          goto LABEL_19;
        }
      }

      else
      {
      }

      sub_217752BC8();
      sub_217752C08();
      sub_217752C18();
      sub_217752BD8();
LABEL_19:
      ++v67;
    }

    v72 = v134;
    v73 = sub_217204DD0(v134);

    OUTLINED_FUNCTION_33_50();
    *&v132 = v2;
    if (v73)
    {
      v74 = *(v0 + 208);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24520, &unk_217758A10);
      v5 = *(swift_getTupleTypeMetadata2() + 48);
      v75 = OUTLINED_FUNCTION_4_144();
      MEMORY[0](v75);
      *(v72 + v5) = v74;
      OUTLINED_FUNCTION_56_0();
      swift_storeEnumTagMultiPayload();
      v57 = sub_217751DE8();
      goto LABEL_26;
    }

    v77 = OUTLINED_FUNCTION_4_144();
    MEMORY[0](v77);
LABEL_25:
    OUTLINED_FUNCTION_56_0();
    v57 = swift_storeEnumTagMultiPayload();
LABEL_26:
    v56 = v101;
LABEL_27:
    v127 = *(v0 + 312);
    v130 = *(v0 + 336);
    OUTLINED_FUNCTION_20_57(v57, v58, v59, v60, v61, v62, v63, v64, v86, v91, v96, v101, v106, v110, v114, v118, v122, v126);
    sub_217751AC8();
    v8 = v133;
    sub_217751A78();
    (*v92)(v5, v1);
    v78 = OUTLINED_FUNCTION_32_52();
    v79(v78);
    (*v56)(v130, v127);

    v2 = v132;
  }

  while (v111 != 1);

LABEL_30:
  OUTLINED_FUNCTION_25_65();

  v80 = OUTLINED_FUNCTION_56_0();

  return v81(v80);
}

uint64_t sub_21773326C()
{

  OUTLINED_FUNCTION_20_0();

  return v0();
}

double sub_217733330(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_217732098(a2);
  v12 = sub_2177322FC(a4, a5, a6, a7);
  if (!v12)
  {
    v12 = sub_217752338();
  }

  *a3 = v12;
}

uint64_t sub_2177333BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(a5 + 8))(a4, a5) == a2 && v6 == a3)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_217753058();
  }

  return v8 & 1;
}

uint64_t sub_21773344C()
{

  return v0;
}

uint64_t sub_217733484()
{
  sub_21773344C();

  return MEMORY[0x2821FE8D8](v0);
}

unint64_t sub_2177334DC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    sub_217751DE8();
    return OUTLINED_FUNCTION_93();
  }

  __break(1u);
  return result;
}

unint64_t sub_217733524(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {

    return OUTLINED_FUNCTION_93();
  }

  __break(1u);
  return result;
}

unint64_t sub_2177335D8@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    return OUTLINED_FUNCTION_23_60(result, a2, a3, a4, a5);
  }

  __break(1u);
  return result;
}

unint64_t sub_217733620@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    return OUTLINED_FUNCTION_23_60(result, a2, a3, a4, a5);
  }

  __break(1u);
  return result;
}

unint64_t sub_2177336E0@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    return sub_2174A87A0(a2 + (result << 6) + 32, a5, a3, a4);
  }

  __break(1u);
  return result;
}

unint64_t sub_217733730@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    return OUTLINED_FUNCTION_23_60(result, a2, a3, a4, a5);
  }

  __break(1u);
  return result;
}

uint64_t sub_21773387C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_170(a1, a2, a3);
  sub_217504048();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_14_73();
  }

  else
  {
    OUTLINED_FUNCTION_13_78();
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_5_116();
}

uint64_t sub_2177338F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2177322FC(v1[5], v1[6], v1[2], v1[3]);
  *a1 = result;
  return result;
}

uint64_t sub_217733964(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27748, &qword_21776B1B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2177339F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_170(a1, a2, a3);
  sub_217504048();
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    OUTLINED_FUNCTION_13_78();
  }

  *v3 = v7;
  return OUTLINED_FUNCTION_5_116();
}

uint64_t sub_217733A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_170(a1, a2, a3);
  sub_217504048();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_14_73();
  }

  else
  {
    OUTLINED_FUNCTION_13_78();
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_5_116();
}

unint64_t sub_217733AD0()
{
  result = qword_27CB2DE70;
  if (!qword_27CB2DE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB244F8, &qword_2177589E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DE70);
  }

  return result;
}

unint64_t sub_217733B90()
{
  result = qword_27CB27D00;
  if (!qword_27CB27D00)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB27748, &qword_21776B1B0);
    sub_217499CF8(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27D00);
  }

  return result;
}

uint64_t sub_217733C1C(uint64_t a1)
{
  TupleTypeMetadata2 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24520, &unk_217758A10);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return TupleTypeMetadata2;
}

uint64_t sub_217733CC8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = ((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v4 <= v3)
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
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

void sub_217733DF4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v5)
  {
    v5 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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

uint64_t OUTLINED_FUNCTION_14_73()
{
}

uint64_t OUTLINED_FUNCTION_20_57(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *(v18 + 144) = a17;
  *(v18 + 152) = a18;
  return 0;
}

uint64_t OUTLINED_FUNCTION_26_51(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(v13 + 192) = a13;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_34_43()
{

  return sub_217504048();
}

void Playlist.Entry.Item.init<A>(_:configuration:sharedRelatedItemStore:)()
{
  OUTLINED_FUNCTION_12();
  v103 = v0;
  v104 = v1;
  v3 = v2;
  v105 = v4;
  v6 = v5;
  v107 = v7;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_1();
  v96 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v87 - v12;
  v14 = type metadata accessor for CloudMusicVideo(0);
  v15 = OUTLINED_FUNCTION_45_0(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1();
  v98 = v17 - v16;
  v106 = v3;
  v102 = *(v3 - 8);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1();
  v100 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_1();
  v95 = v23 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v87 - v26;
  v28 = type metadata accessor for CloudSong(0);
  v29 = OUTLINED_FUNCTION_45_0(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1();
  v97 = v31 - v30;
  type metadata accessor for LegacyModelCodablePlaylistEntryItem(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_6_1();
  v35 = v33 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &v87 - v37;
  OUTLINED_FUNCTION_11_88();
  v39 = v6;
  sub_2177375CC(v6, v38);
  v99 = v38;
  sub_2177375CC(v38, v35);
  OUTLINED_FUNCTION_85();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_3_134();
    v64 = v98;
    sub_217737678(v35, v98);
    sub_2177375CC(v64, v13);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
    v66 = v65[10];
    v67 = v6 + v65[9];
    v68 = *v67;
    v93 = *(v67 + 8);
    v69 = v93;
    LODWORD(v88) = *(v67 + 16);
    v70 = v6 + v66;
    v71 = *(v6 + v66);
    v72 = *(v70 + 8);
    v89 = v68;
    v90 = v71;
    v73 = v94;
    v91 = v72;
    v87 = v65[11];
    memcpy(v110, (v6 + v87), 0x180uLL);
    v74 = v65[13];
    v92 = *(v6 + v65[12]);
    v75 = v92;
    v76 = *(v6 + v74);
    v77 = v65[15];
    v95 = *(v6 + v65[14]);
    v78 = v95;
    v97 = *(v6 + v77);
    v79 = v97;
    v80 = &v13[*(v94 + 36)];
    *v80 = v89;
    *(v80 + 1) = v69;
    v80[16] = v88;
    v81 = &v13[v73[10]];
    *v81 = v90;
    *(v81 + 1) = v72;
    memcpy(&v13[v73[11]], (v6 + v87), 0x180uLL);
    *&v13[v73[12]] = v75;
    *&v13[v73[13]] = v76;
    *&v13[v73[14]] = v78;
    *&v13[v73[15]] = v79;
    sub_21738C4B0(v13, v96, &qword_27CB24808, &qword_217758D90);
    (*(v102 + 16))(v100, v105, v106);
    sub_217751DE8();
    sub_217751DE8();
    sub_21738C4B0(v110, v108, &qword_27CB25620, &qword_21776A5F0);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    MusicVideo.init<A>(_:configuration:sharedRelatedItemStore:)();
    v82 = OUTLINED_FUNCTION_173();
    v83(v82);
    sub_2171F0738(v6, &qword_27CB25650, &unk_21778F830);
    sub_2171F0738(v13, &qword_27CB24808, &qword_217758D90);
    OUTLINED_FUNCTION_0_171();
    v63 = v98;
  }

  else
  {
    OUTLINED_FUNCTION_2_146();
    sub_217737678(v35, v97);
    v40 = OUTLINED_FUNCTION_204();
    sub_2177375CC(v40, v41);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
    v43 = v42[10];
    v44 = v6;
    v45 = v6 + v42[9];
    v46 = *v45;
    v94 = *(v45 + 8);
    v47 = v94;
    LODWORD(v89) = *(v45 + 16);
    v48 = v6 + v43;
    v49 = *(v6 + v43);
    v50 = *(v48 + 8);
    v90 = v46;
    v91 = v49;
    v92 = v50;
    v88 = v42[11];
    memcpy(v110, (v39 + v88), 0x180uLL);
    v51 = v42[13];
    v52 = *(v39 + v42[12]);
    v93 = v52;
    v53 = *(v44 + v51);
    v54 = v42[15];
    v96 = *(v44 + v42[14]);
    v55 = v96;
    v98 = *(v44 + v54);
    v56 = v98;
    v57 = &v27[v21[9]];
    *v57 = v90;
    *(v57 + 1) = v47;
    v57[16] = v89;
    v58 = &v27[v21[10]];
    *v58 = v91;
    *(v58 + 1) = v50;
    memcpy(&v27[v21[11]], (v44 + v88), 0x180uLL);
    *&v27[v21[12]] = v52;
    *&v27[v21[13]] = v53;
    *&v27[v21[14]] = v55;
    *&v27[v21[15]] = v56;
    sub_21738C4B0(v27, v95, &qword_27CB24748, &unk_217758CD0);
    v59 = v102;
    v61 = v105;
    v60 = v106;
    (*(v102 + 16))(v100, v105, v106);
    sub_217751DE8();
    sub_217751DE8();
    sub_21738C4B0(v110, v108, &qword_27CB25620, &qword_21776A5F0);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    Song.init<A>(_:configuration:sharedRelatedItemStore:)();
    (*(v59 + 8))(v61, v60);
    sub_2171F0738(v44, &qword_27CB25650, &unk_21778F830);
    sub_2171F0738(v27, &qword_27CB24748, &unk_217758CD0);
    OUTLINED_FUNCTION_1_151();
    v63 = v97;
  }

  sub_2177347F0(v63, v62);
  OUTLINED_FUNCTION_12_74();
  sub_2177347F0(v99, v84);
  v85 = v108[1];
  v86 = v107;
  *v107 = v108[0];
  v86[1] = v85;
  v86[2] = v108[2];
  *(v86 + 6) = v109;
  *(v86 + 56) = EnumCaseMultiPayload != 1;
  OUTLINED_FUNCTION_13();
}

uint64_t type metadata accessor for LegacyModelCodablePlaylistEntryItem(uint64_t a1)
{
  result = qword_280BE2E10;
  if (!qword_280BE2E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2177347F0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_43();
  (*(v3 + 8))(a1);
  return a1;
}

void Playlist.Entry.Item.convertToLegacyModelCodableResource<A>(configuration:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  sub_21729C79C(v0, v38);
  if (v38[56] == 1)
  {
    OUTLINED_FUNCTION_8_2();
    Song.convertToCloudResource<A>(configuration:)();
    sub_217283B58(v37);
    OUTLINED_FUNCTION_2_146();
    sub_217737678(v10, v2);
    type metadata accessor for LegacyModelCodablePlaylistEntryItem(0);
    swift_storeEnumTagMultiPayload();
    v11 = &v10[v7[9]];
    v12 = *v11;
    v13 = *(v11 + 1);
    v14 = v11[16];
    v15 = *&v10[v7[12]];
    v35 = v7[11];
    v36 = v15;
    v34 = *&v10[v7[13]];
    v16 = *&v10[v7[15]];
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
    v18 = v2 + *(v17 + 36);
    *v18 = v12;
    *(v18 + 8) = v13;
    *(v18 + 16) = v14;
    v19 = OUTLINED_FUNCTION_23_35(v17);
    memcpy(v19, &v10[v20], 0x180uLL);
    OUTLINED_FUNCTION_18_35();
    *(v2 + v21) = v16;
  }

  else
  {
    OUTLINED_FUNCTION_8_2();
    MusicVideo.convertToCloudResource<A>(configuration:)();
    sub_217283C08(v37);
    OUTLINED_FUNCTION_3_134();
    sub_217737678(v6, v2);
    type metadata accessor for LegacyModelCodablePlaylistEntryItem(0);
    swift_storeEnumTagMultiPayload();
    v22 = &v6[v3[9]];
    v23 = *v22;
    v24 = *(v22 + 1);
    v25 = v22[16];
    v26 = *&v6[v3[12]];
    v35 = v3[11];
    v36 = v26;
    v34 = *&v6[v3[13]];
    v27 = *&v6[v3[15]];
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
    v29 = v2 + *(v28 + 36);
    *v29 = v23;
    *(v29 + 8) = v24;
    *(v29 + 16) = v25;
    v30 = OUTLINED_FUNCTION_23_35(v28);
    memcpy(v30, &v6[v31], 0x180uLL);
    OUTLINED_FUNCTION_18_35();
    *(v2 + v32) = v27;
  }

  OUTLINED_FUNCTION_13();
}

uint64_t sub_217734AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217734B80(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217734B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217734B80(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

unint64_t sub_217734B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DE88;
  if (!qword_27CB2DE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DE88);
  }

  return result;
}

uint64_t sub_217734C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217734D10(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217734C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217734D10(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

unint64_t sub_217734D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DE98;
  if (!qword_27CB2DE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DE98);
  }

  return result;
}

uint64_t sub_217734D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217734E40(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217734DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217734E40(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

unint64_t sub_217734E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DEA8;
  if (!qword_27CB2DEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DEA8);
  }

  return result;
}

uint64_t sub_217734EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217735070(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217734EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217735070(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void sub_217734F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_0_0();
  v30 = v29;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  v23();
  sub_2177532F8();
  (*(v30 + 8))(v33, v28);
  OUTLINED_FUNCTION_170();
}

unint64_t sub_217735070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DEB8;
  if (!qword_27CB2DEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DEB8);
  }

  return result;
}

uint64_t LegacyModelCodablePlaylistEntryItem.id.getter()
{
  v2 = type metadata accessor for CloudMusicVideo(0);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  v6 = (v5 - v4);
  v7 = type metadata accessor for CloudSong(0);
  v8 = OUTLINED_FUNCTION_45_0(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25_52();
  type metadata accessor for LegacyModelCodablePlaylistEntryItem(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_55();
  OUTLINED_FUNCTION_4_145();
  sub_2177375CC(v0, v1);
  OUTLINED_FUNCTION_204();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_3_134();
    sub_217737678(v1, v6);
    v10 = *v6;
    sub_217751DE8();
    OUTLINED_FUNCTION_0_171();
    v12 = v6;
  }

  else
  {
    OUTLINED_FUNCTION_2_146();
    v13 = OUTLINED_FUNCTION_173();
    sub_217737678(v13, v14);
    v10 = *v0;
    sub_217751DE8();
    OUTLINED_FUNCTION_1_151();
    v12 = v0;
  }

  sub_2177347F0(v12, v11);
  return v10;
}

void static LegacyModelCodablePlaylistEntryItem.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_12();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = type metadata accessor for CloudMusicVideo(0);
  v28 = OUTLINED_FUNCTION_45_0(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25_52();
  v29 = type metadata accessor for CloudSong(0);
  v30 = OUTLINED_FUNCTION_45_0(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1();
  v33 = v32 - v31;
  type metadata accessor for LegacyModelCodablePlaylistEntryItem(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6_1();
  v37 = v35 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &a9 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DEC0, &qword_2177A0860);
  OUTLINED_FUNCTION_45_0(v41);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v42);
  v44 = &a9 - v43;
  v46 = *(v45 + 56);
  OUTLINED_FUNCTION_11_88();
  sub_2177375CC(v26, v44);
  sub_2177375CC(v24, &v44[v46]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_4_145();
    sub_2177375CC(v44, v37);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_3_134();
      sub_217737678(&v44[v46], v20);
      OUTLINED_FUNCTION_173();
      static CloudMusicVideo.== infix(_:_:)();
      sub_2177347F0(v20, type metadata accessor for CloudMusicVideo);
      v47 = v37;
      v48 = type metadata accessor for CloudMusicVideo;
LABEL_9:
      sub_2177347F0(v47, v48);
      OUTLINED_FUNCTION_12_74();
      sub_2177347F0(v44, v51);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_0_171();
    v50 = v37;
  }

  else
  {
    OUTLINED_FUNCTION_4_145();
    sub_2177375CC(v44, v40);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_2_146();
      sub_217737678(&v44[v46], v33);
      static CloudSong.== infix(_:_:)();
      sub_2177347F0(v33, type metadata accessor for CloudSong);
      v47 = v40;
      v48 = type metadata accessor for CloudSong;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_151();
    v50 = v40;
  }

  sub_2177347F0(v50, v49);
  sub_2171F0738(v44, &qword_27CB2DEC0, &qword_2177A0860);
LABEL_10:
  OUTLINED_FUNCTION_13();
}

void LegacyModelCodablePlaylistEntryItem.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v4 = v3;
  v5 = type metadata accessor for CloudMusicVideo(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_55();
  v7 = type metadata accessor for CloudSong(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v9 = OUTLINED_FUNCTION_69();
  type metadata accessor for LegacyModelCodablePlaylistEntryItem(v9);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_4_145();
  sub_2177375CC(v0, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_3_134();
    sub_217737678(v13, v1);
    MEMORY[0x21CEA3550](1);
    sub_217751FF8();
    CloudMusicVideo.Attributes.hash(into:)();
    sub_217264574(v4);
    sub_21738C4B0(v1 + *(v5 + 28), v33, &qword_27CB24A90, &unk_21775D5B0);
    if (*&v33[1] == 1)
    {
      sub_217753208();
    }

    else
    {
      memcpy(v32, v33, 0x100uLL);
      sub_217753208();
      sub_217264414(v4, v14, v15, v16, v17, v18, v19, v20);
      sub_217264414(v4, v21, v22, v23, v24, v25, v26, v27);
      sub_2172844EC(v32);
    }

    sub_217264490(v4, *(v1 + *(v5 + 32)), *(v1 + *(v5 + 32) + 8), *(v1 + *(v5 + 32) + 16), *(v1 + *(v5 + 32) + 24));
    OUTLINED_FUNCTION_0_171();
    v29 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_2_146();
    sub_217737678(v13, v2);
    MEMORY[0x21CEA3550](0);
    sub_217751FF8();
    CloudSong.Attributes.hash(into:)();
    sub_21738C4B0(v2 + *(v7 + 24), v33, &qword_27CB24A78, &qword_217759040);
    if (*&v33[1] == 1)
    {
      sub_217753208();
    }

    else
    {
      memcpy(v32, v33, sizeof(v32));
      sub_217753208();
      CloudSong.Relationships.hash(into:)();
      sub_217284234(v32);
    }

    sub_217753208();
    v30 = v2 + *(v7 + 32);
    v31 = *(v30 + 16);
    v33[0] = *v30;
    v33[1] = v31;
    *&v33[2] = *(v30 + 32);
    sub_217263F54();
    OUTLINED_FUNCTION_1_151();
    v29 = v2;
  }

  sub_2177347F0(v29, v28);
  OUTLINED_FUNCTION_13();
}

uint64_t LegacyModelCodablePlaylistEntryItem.hashValue.getter()
{
  sub_2177531E8();
  LegacyModelCodablePlaylistEntryItem.hash(into:)();
  return sub_217753238();
}

uint64_t sub_217735900(uint64_t a1)
{
  sub_2177531E8();
  LegacyModelCodablePlaylistEntryItem.hash(into:)();
  return sub_217753238();
}

void LegacyModelCodablePlaylistEntryItem.decodeRawAttributes(from:)()
{
  OUTLINED_FUNCTION_171();
  v24 = v4;
  v5 = type metadata accessor for CloudMusicVideo.Attributes(0);
  v6 = OUTLINED_FUNCTION_45_0(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_55();
  v7 = type metadata accessor for CloudMusicVideo(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v9 = OUTLINED_FUNCTION_60_0();
  v10 = type metadata accessor for CloudSong.Attributes(v9);
  v11 = OUTLINED_FUNCTION_45_0(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v12 = OUTLINED_FUNCTION_37_10();
  v13 = type metadata accessor for CloudSong(v12);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  type metadata accessor for LegacyModelCodablePlaylistEntryItem(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  OUTLINED_FUNCTION_4_145();
  sub_2177375CC(v0, v21);
  OUTLINED_FUNCTION_93();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_3_134();
    sub_217737678(v21, v2);
    sub_2171FF30C(v24, v25);
    sub_2177375CC(v2 + *(v7 + 20), v1);
    sub_21738598C();
    OUTLINED_FUNCTION_68_2();
    OUTLINED_FUNCTION_0_171();
    v23 = v2;
  }

  else
  {
    OUTLINED_FUNCTION_2_146();
    sub_217737678(v21, v17);
    sub_2171FF30C(v24, v25);
    sub_2177375CC(v17 + *(v13 + 20), v3);
    sub_217385938();
    OUTLINED_FUNCTION_68_2();
    OUTLINED_FUNCTION_1_151();
    v23 = v17;
  }

  sub_2177347F0(v23, v22);
  OUTLINED_FUNCTION_170();
}

void LegacyModelCodablePlaylistEntryItem.decodeRawRelationships(from:)()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_34_0();
  v32 = v4;
  v5 = type metadata accessor for CloudMusicVideo(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v7 = OUTLINED_FUNCTION_69();
  v8 = type metadata accessor for CloudSong(v7);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_13_16();
  type metadata accessor for LegacyModelCodablePlaylistEntryItem(v10);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25_52();
  sub_217751DC8();
  OUTLINED_FUNCTION_4_145();
  sub_2177375CC(v3, v0);
  OUTLINED_FUNCTION_154();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_2_146();
    sub_217737678(v0, v2);
    sub_21738C4B0(v2 + *(v8 + 24), v33, &qword_27CB24A78, &qword_217759040);
    if (v34 == 1)
    {
      OUTLINED_FUNCTION_1_151();
      sub_2177347F0(v2, v15);
      v13 = &qword_27CB24A78;
      v14 = &qword_217759040;
      goto LABEL_6;
    }

    sub_2171F0738(v33, &qword_27CB24A78, &qword_217759040);
    sub_2171FF30C(v32, v33);
    OUTLINED_FUNCTION_84();
    v25 = sub_217751DE8();
    v26 = sub_217383824(v25);

    Dictionary<>.init(from:skippingValuesFor:)(v33, v26, v27, v28, v29, v30, v31);
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_1_151();
    v24 = v2;
LABEL_9:
    sub_2177347F0(v24, v23);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_3_134();
  sub_217737678(v0, v1);
  sub_21738C4B0(v1 + *(v5 + 24), v33, &qword_27CB243A8, &unk_217777720);
  if (v34 != 1)
  {

    sub_2171F0738(v33, &qword_27CB243A8, &unk_217777720);
    sub_2171FF30C(v32, v33);
    OUTLINED_FUNCTION_84();
    v16 = sub_217751DE8();
    v17 = sub_217383844(v16);

    Dictionary<>.init(from:skippingValuesFor:)(v33, v17, v18, v19, v20, v21, v22);
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_0_171();
    v24 = v1;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_171();
  sub_2177347F0(v1, v12);
  v13 = &qword_27CB243A8;
  v14 = &unk_217777720;
LABEL_6:
  sub_2171F0738(v33, v13, v14);
LABEL_10:
  OUTLINED_FUNCTION_170();
}

void LegacyModelCodablePlaylistEntryItem.decodeRawAssociations(from:)()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_34_0();
  *&v35 = v4;
  v5 = type metadata accessor for CloudMusicVideo(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v7 = OUTLINED_FUNCTION_69();
  v8 = type metadata accessor for CloudSong(v7);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_13_16();
  type metadata accessor for LegacyModelCodablePlaylistEntryItem(v10);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25_52();
  sub_217751DC8();
  OUTLINED_FUNCTION_4_145();
  sub_2177375CC(v3, v0);
  OUTLINED_FUNCTION_154();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_2_146();
    sub_217737678(v0, v2);
    if (*(v2 + *(v8 + 28)))
    {
      OUTLINED_FUNCTION_1_151();
      sub_2177347F0(v2, v13);
      goto LABEL_11;
    }

    sub_2171FF30C(v35, &v35 + 8);
    if (qword_27CB23E08 != -1)
    {
      swift_once();
    }

    sub_217383748(qword_27CB2C158, v22, v23, v24, v25, v26, v27, v28, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
    Dictionary<>.init(from:skippingValuesFor:)(&v35 + 1, v29, v30, v31, v32, v33, v34);
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_1_151();
    v21 = v2;
LABEL_10:
    sub_2177347F0(v21, v20);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_3_134();
  sub_217737678(v0, v1);
  sub_21738C4B0(v1 + *(v5 + 28), &v35 + 8, &qword_27CB24A90, &unk_21775D5B0);
  if (v37 != 1)
  {

    sub_2171F0738(&v35 + 8, &qword_27CB24A90, &unk_21775D5B0);
    sub_2171FF30C(v35, &v35 + 8);
    v14 = sub_217383A2C(&unk_28295F000);
    Dictionary<>.init(from:skippingValuesFor:)(&v35 + 1, v14, v15, v16, v17, v18, v19);
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_0_171();
    v21 = v1;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_0_171();
  sub_2177347F0(v1, v12);
  sub_2171F0738(&v35 + 8, &qword_27CB24A90, &unk_21775D5B0);
LABEL_11:
  OUTLINED_FUNCTION_170();
}

void LegacyModelCodablePlaylistEntryItem.decodeRawMetadata(from:skippingValuesFor:)()
{
  OUTLINED_FUNCTION_171();
  v27 = v4;
  v5 = type metadata accessor for CloudMusicVideo(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v7 = OUTLINED_FUNCTION_60_0();
  v8 = type metadata accessor for CloudSong(v7);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_13_16();
  type metadata accessor for LegacyModelCodablePlaylistEntryItem(v10);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_55();
  sub_217751DC8();
  OUTLINED_FUNCTION_4_145();
  sub_2177375CC(v0, v1);
  OUTLINED_FUNCTION_173();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_2_146();
    v17 = OUTLINED_FUNCTION_85();
    sub_217737678(v17, v18);
    v19 = v3 + *(v8 + 32);
    if (*(v19 + 24) == 1)
    {
      OUTLINED_FUNCTION_1_151();
      v16 = v3;
      goto LABEL_6;
    }

    sub_2171FF30C(v27, v29);
    v26 = *(v19 + 16);
    v30[0] = *v19;
    v30[1] = v26;
    v31 = *(v19 + 32);
    sub_21738C4B0(v30, &v28, &qword_27CB25748, &qword_21775D870);
    sub_217751DE8();
    sub_217387700();
    OUTLINED_FUNCTION_1_151();
    v25 = v3;
LABEL_9:
    sub_2177347F0(v25, v24);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_3_134();
  v12 = OUTLINED_FUNCTION_204();
  sub_217737678(v12, v13);
  v14 = v2 + *(v5 + 32);
  if (*(v14 + 24) != 1)
  {

    sub_2171FF30C(v27, v29);
    v20 = *(v14 + 16);
    v21 = *(v14 + 24);
    sub_217751DE8();
    v22 = OUTLINED_FUNCTION_154();
    sub_21733C3CC(v22, v23, v20, v21);
    sub_2173878F0();
    OUTLINED_FUNCTION_0_171();
    v25 = v2;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_171();
  v16 = v2;
LABEL_6:
  sub_2177347F0(v16, v15);
LABEL_10:
  OUTLINED_FUNCTION_170();
}

void LegacyModelCodablePlaylistEntryItem.mergeAttributes(with:for:)()
{
  OUTLINED_FUNCTION_171();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_101();
  v6 = type metadata accessor for CloudMusicVideo(v5);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v8 = OUTLINED_FUNCTION_60_0();
  v9 = type metadata accessor for CloudSong(v8);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_13_16();
  type metadata accessor for LegacyModelCodablePlaylistEntryItem(v11);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_4_145();
  sub_2177375CC(v0, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_3_134();
    sub_217737678(v15, v1);
    sub_2173886A0(v1 + *(v6 + 20), v4, v0);
    OUTLINED_FUNCTION_68_2();
    OUTLINED_FUNCTION_0_171();
    v17 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_2_146();
    sub_217737678(v15, v2);
    sub_21738864C(v2 + *(v9 + 20), v4, v0);
    OUTLINED_FUNCTION_68_2();
    OUTLINED_FUNCTION_1_151();
    v17 = v2;
  }

  sub_2177347F0(v17, v16);
  OUTLINED_FUNCTION_170();
}

void LegacyModelCodablePlaylistEntryItem.mergeRelationships(with:for:)()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_34_0();
  v5 = OUTLINED_FUNCTION_101();
  v6 = type metadata accessor for CloudMusicVideo(v5);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_13_16();
  v9 = type metadata accessor for CloudSong(v8);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v11 = OUTLINED_FUNCTION_37_10();
  type metadata accessor for LegacyModelCodablePlaylistEntryItem(v11);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_55();
  if (*(v0 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_4_145();
  sub_2177375CC(v4, v1);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_2_146();
    sub_217737678(v1, v3);
    sub_21738C4B0(v3 + *(v9 + 24), v24, &qword_27CB24A78, &qword_217759040);
    if (v24[2] == 1)
    {
      OUTLINED_FUNCTION_1_151();
      sub_2177347F0(v3, v18);
      v16 = &qword_27CB24A78;
      v17 = &qword_217759040;
      goto LABEL_8;
    }

    memcpy(v25, v24, 0x600uLL);
    OUTLINED_FUNCTION_27_4();
    sub_2173888E8();
    sub_217284234(v25);
    OUTLINED_FUNCTION_1_151();
    v23 = v3;
LABEL_11:
    sub_2177347F0(v23, v22);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_3_134();
  v13 = OUTLINED_FUNCTION_85();
  sub_217737678(v13, v14);
  sub_21738C4B0(v2 + *(v6 + 24), v24, &qword_27CB243A8, &unk_217777720);
  if (v24[2] != 1)
  {

    memcpy(v25, v24, 0x300uLL);
    OUTLINED_FUNCTION_27_4();
    sub_217388950(v19, v20, v21);
    sub_21726A3FC(v25);
    OUTLINED_FUNCTION_0_171();
    v23 = v2;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_0_171();
  sub_2177347F0(v2, v15);
  v16 = &qword_27CB243A8;
  v17 = &unk_217777720;
LABEL_8:
  sub_2171F0738(v24, v16, v17);
LABEL_12:
  OUTLINED_FUNCTION_170();
}

void LegacyModelCodablePlaylistEntryItem.mergeAssociations(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_34_0();
  v35 = v15;
  v16 = OUTLINED_FUNCTION_101();
  v17 = type metadata accessor for CloudMusicVideo(v16);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v18);
  v19 = OUTLINED_FUNCTION_13_16();
  v20 = type metadata accessor for CloudSong(v19);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1();
  v22 = OUTLINED_FUNCTION_37_10();
  type metadata accessor for LegacyModelCodablePlaylistEntryItem(v22);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5_55();
  if (*(v10 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_4_145();
  sub_2177375CC(v14, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_3_134();
    v24 = OUTLINED_FUNCTION_85();
    sub_217737678(v24, v25);
    sub_21738C4B0(v12 + *(v17 + 28), v36, &qword_27CB24A90, &unk_21775D5B0);
    if (v36[2] == 1)
    {
      OUTLINED_FUNCTION_0_171();
      sub_2177347F0(v12, v26);
      sub_2171F0738(v36, &qword_27CB24A90, &unk_21775D5B0);
    }

    else
    {

      memcpy(v37, v36, 0x100uLL);
      OUTLINED_FUNCTION_27_4();
      sub_217388CF8(v27, v28, v29);
      sub_2172844EC(v37);
      OUTLINED_FUNCTION_0_171();
      sub_2177347F0(v12, v30);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_146();
    sub_217737678(v11, v13);
    if ((*(v13 + *(v20 + 28)) & 1) == 0)
    {

      sub_2171FF30C(v35, v37);
      v31 = sub_2174D5760(v37);
      if (!a10)
      {
        v32 = v31;
        v33 = sub_217751DE8();
        sub_2174D37FC(v33, v32);
      }
    }

    OUTLINED_FUNCTION_1_151();
    sub_2177347F0(v13, v34);
  }

  OUTLINED_FUNCTION_170();
}

void LegacyModelCodablePlaylistEntryItem.mergeMetadata(with:for:)()
{
  OUTLINED_FUNCTION_171();
  v33 = v5;
  v6 = OUTLINED_FUNCTION_101();
  v7 = type metadata accessor for CloudMusicVideo(v6);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v9 = OUTLINED_FUNCTION_60_0();
  v10 = type metadata accessor for CloudSong(v9);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v12 = OUTLINED_FUNCTION_69();
  type metadata accessor for LegacyModelCodablePlaylistEntryItem(v12);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_55();
  if (*(v0 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_4_145();
  sub_2177375CC(v0, v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_3_134();
    v14 = OUTLINED_FUNCTION_204();
    sub_217737678(v14, v15);
    v16 = v3 + *(v7 + 32);
    v17 = *(v16 + 24);
    if (v17 != 1)
    {
      v20 = *(v16 + 16);
      v22 = *v16;
      v21 = *(v16 + 8);
      sub_217221020(*v16);
      sub_217751DE8();

      sub_2171FF30C(v33, v34);
      v23 = sub_2174D5C54(v22, v21, v20 & 1, v17, v34);
      if (!v1)
      {
        v29 = v23;
        v30 = sub_217751DE8();
        sub_2174D37FC(v30, v29);
      }
    }

    OUTLINED_FUNCTION_0_171();
    v25 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_2_146();
    sub_217737678(v2, v4);
    v18 = v4 + *(v10 + 32);
    v19 = *(v18 + 24);
    if (v19 != 1)
    {
      v26 = *(v18 + 32);
      v27 = *(v18 + 16);
      v35 = *v18;
      v36 = v27 & 1;
      v37 = v19;
      v38 = v26;
      sub_217221020(v35);
      sub_217751DE8();
      sub_217751DE8();

      sub_2171FF30C(v33, v34);
      v28 = sub_2174D5DD4(&v35);
      if (!v1)
      {
        v31 = v28;
        v32 = sub_217751DE8();
        sub_2174D37FC(v32, v31);
      }
    }

    OUTLINED_FUNCTION_1_151();
    v25 = v4;
  }

  sub_2177347F0(v25, v24);
  OUTLINED_FUNCTION_170();
}

uint64_t sub_217736D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217737624(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217736D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217737624(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void LegacyModelCodablePlaylistEntryItem.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v64 = v3;
  v60 = sub_217752B38();
  OUTLINED_FUNCTION_0_0();
  v62 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v61 = v7 - v6;
  v8 = type metadata accessor for CloudMusicVideo(0);
  v9 = OUTLINED_FUNCTION_45_0(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v63 = v11 - v10;
  v12 = type metadata accessor for CloudSong(0);
  v13 = OUTLINED_FUNCTION_45_0(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DEC8, &unk_2177A0868);
  OUTLINED_FUNCTION_0_0();
  v65 = v18;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v19);
  v21 = &v57 - v20;
  v22 = type metadata accessor for LegacyModelCodablePlaylistEntryItem(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1();
  v26 = v25 - v24;
  v27 = v2;
  v28 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_217737624(v28, v29, v30);
  v31 = sub_2177532C8();
  if (!v0)
  {
    v58 = v26;
    v59 = v16;
    v71 = v22;
    v34 = v65;
    sub_21733BE84(v31, v32, v33);
    sub_217752EA8();
    v35 = v17;
    v36 = v66;
    v37 = v67;
    v38 = v68;
    if (qword_280BE7620 != -1)
    {
      swift_once();
    }

    v66 = v36;
    v67 = v37;
    v68 = v38;
    if (static Array<A>.~= infix(_:_:)(off_280BE7628, &v66))
    {
      goto LABEL_12;
    }

    if (qword_280BE24E8 != -1)
    {
      swift_once();
    }

    v39 = qword_280BE24F0 == v36 && *algn_280BE24F8 == v37;
    if (v39 || (sub_217753058() & 1) != 0)
    {
LABEL_12:

      sub_2171FF30C(v27, &v66);
      v40 = v59;
      CloudSong.init(from:)();
      (*(v34 + 8))(v21, v17);
      OUTLINED_FUNCTION_2_146();
      sub_217737678(v40, v58);
    }

    else
    {
      if (qword_280BE6EA0 != -1)
      {
        swift_once();
      }

      v66 = v36;
      v67 = v37;
      v68 = v38;
      v43 = static Array<A>.~= infix(_:_:)(off_280BE6EA8, &v66);
      v44 = v63;
      if (!v43)
      {
        if (qword_280BE6EC8 != -1)
        {
          swift_once();
        }

        v45 = qword_280BE6ED0 == v36 && *algn_280BE6ED8 == v37;
        if (!v45 && (sub_217753058() & 1) == 0)
        {
          __swift_project_boxed_opaque_existential_1(v27, v27[3]);
          v46 = v36;
          v47 = v34;
          OUTLINED_FUNCTION_204();
          sub_217753298();
          v66 = 0;
          v67 = 0xE000000000000000;
          sub_217752AA8();
          v64 = v21;
          MEMORY[0x21CEA23B0](0xD000000000000011, 0x80000002177ADC50);
          v69 = 34;
          v70 = 0xE100000000000000;
          MEMORY[0x21CEA23B0](v46, v37);
          MEMORY[0x21CEA23B0](34, 0xE100000000000000);

          MEMORY[0x21CEA23B0](v69, v70, v48);

          MEMORY[0x21CEA23B0](0xD000000000000036, 0x80000002177B6B20, v49);
          v50 = v61;
          sub_217752B08();
          v51 = sub_217752B48();
          swift_allocError();
          v53 = v52;
          v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0) + 48);
          *v53 = v71;
          v55 = v62;
          v56 = v60;
          (*(v62 + 16))(v53 + v54, v50, v60);
          (*(*(v51 - 8) + 104))(v53, *MEMORY[0x277D84160], v51);
          swift_willThrow();
          (*(v55 + 8))(v50, v56);
          (*(v47 + 8))(v64, v35);
          goto LABEL_14;
        }
      }

      sub_2171FF30C(v27, &v66);
      CloudMusicVideo.init(from:)();
      (*(v34 + 8))(v21, v35);
      OUTLINED_FUNCTION_3_134();
      sub_217737678(v44, v58);
    }

    swift_storeEnumTagMultiPayload();
    v41 = OUTLINED_FUNCTION_154();
    sub_217737678(v41, v42);
  }

LABEL_14:
  __swift_destroy_boxed_opaque_existential_1(v27);
  OUTLINED_FUNCTION_170();
}

uint64_t LegacyModelCodablePlaylistEntryItem.encode(to:)()
{
  v3 = OUTLINED_FUNCTION_101();
  v4 = type metadata accessor for CloudMusicVideo(v3);
  v5 = OUTLINED_FUNCTION_45_0(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_55();
  v6 = type metadata accessor for CloudSong(0);
  v7 = OUTLINED_FUNCTION_45_0(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v8 = OUTLINED_FUNCTION_60_0();
  type metadata accessor for LegacyModelCodablePlaylistEntryItem(v8);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_4_145();
  sub_2177375CC(v0, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_3_134();
    sub_217737678(v12, v1);
    CloudMusicVideo.encode(to:)();
    OUTLINED_FUNCTION_0_171();
    v14 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_2_146();
    sub_217737678(v12, v2);
    CloudSong.encode(to:)();
    OUTLINED_FUNCTION_1_151();
    v14 = v2;
  }

  return sub_2177347F0(v14, v13);
}

uint64_t sub_2177375CC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_101();
  v4(v3);
  OUTLINED_FUNCTION_43();
  v5 = OUTLINED_FUNCTION_93();
  v6(v5);
  return a2;
}

unint64_t sub_217737624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DED0;
  if (!qword_27CB2DED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DED0);
  }

  return result;
}

uint64_t sub_217737678(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_101();
  v4(v3);
  OUTLINED_FUNCTION_43();
  v5 = OUTLINED_FUNCTION_93();
  v6(v5);
  return a2;
}

unint64_t sub_2177376D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DED8;
  if (!qword_27CB2DED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DED8);
  }

  return result;
}

unint64_t sub_21773772C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DEE0;
  if (!qword_27CB2DEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DEE0);
  }

  return result;
}

unint64_t sub_217737784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DEE8;
  if (!qword_27CB2DEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DEE8);
  }

  return result;
}

unint64_t sub_2177377DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DEF0;
  if (!qword_27CB2DEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DEF0);
  }

  return result;
}

uint64_t sub_217737830(uint64_t a1)
{
  result = sub_217737B9C(&qword_27CB2DEF8, &protocol conformance descriptor for LegacyModelCodablePlaylistEntryItem);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2177378AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DF08;
  if (!qword_27CB2DF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DF08);
  }

  return result;
}

unint64_t sub_217737904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DF10;
  if (!qword_27CB2DF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DF10);
  }

  return result;
}

unint64_t sub_21773795C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DF18;
  if (!qword_27CB2DF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DF18);
  }

  return result;
}

unint64_t sub_2177379B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DF20;
  if (!qword_27CB2DF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DF20);
  }

  return result;
}

unint64_t sub_217737A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DF28;
  if (!qword_27CB2DF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DF28);
  }

  return result;
}

unint64_t sub_217737A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DF30;
  if (!qword_27CB2DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DF30);
  }

  return result;
}

unint64_t sub_217737ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DF38;
  if (!qword_27CB2DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DF38);
  }

  return result;
}

unint64_t sub_217737B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DF40;
  if (!qword_27CB2DF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DF40);
  }

  return result;
}

uint64_t sub_217737B9C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LegacyModelCodablePlaylistEntryItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_217737C20(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_217737D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DF50;
  if (!qword_27CB2DF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DF50);
  }

  return result;
}

unint64_t sub_217737D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DF58;
  if (!qword_27CB2DF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DF58);
  }

  return result;
}

unint64_t sub_217737DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DF60;
  if (!qword_27CB2DF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DF60);
  }

  return result;
}

unint64_t sub_217737E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DF68;
  if (!qword_27CB2DF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DF68);
  }

  return result;
}

unint64_t sub_217737E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DF70;
  if (!qword_27CB2DF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DF70);
  }

  return result;
}

unint64_t sub_217737EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DF78;
  if (!qword_27CB2DF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DF78);
  }

  return result;
}

unint64_t sub_217737F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DF80;
  if (!qword_27CB2DF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DF80);
  }

  return result;
}

unint64_t sub_217737F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DF88;
  if (!qword_27CB2DF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DF88);
  }

  return result;
}

unint64_t sub_217737FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DF90;
  if (!qword_27CB2DF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DF90);
  }

  return result;
}

unint64_t sub_217738028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DF98;
  if (!qword_27CB2DF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DF98);
  }

  return result;
}

unint64_t sub_217738080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DFA0;
  if (!qword_27CB2DFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DFA0);
  }

  return result;
}

void sub_217738170(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_217751F98();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  if ([v8 statusCode] < 400)
  {
    goto LABEL_2;
  }

  sub_217751348();
  swift_allocObject();
  v11 = OUTLINED_FUNCTION_13_2();
  sub_21727591C(v11, v12);
  v13 = sub_217751338();
  sub_217738C20(v13, v14, v15);
  sub_217751308();
  if (!v40[2])
  {

    v24 = OUTLINED_FUNCTION_13_2();
    sub_217275694(v24, v25);
LABEL_2:
    v9 = OUTLINED_FUNCTION_13_2();
    sub_217275694(v9, v10);

    *(a2 + 96) = 0;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v36 = v40[5];
  v37 = v40[4];
  v35 = v40[6];
  v16 = v40[11];
  v33 = v40[8];
  v34 = v40[10];
  v28 = v40[12];
  v29 = v40[13];
  v18 = v40[14];
  v17 = v40[15];
  v19 = v40[17];
  v38 = v40[16];
  v39 = v40[7];
  v32 = v40[9];
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  v30 = v17;
  sub_2172838F8(v28, v29, v18, v17);
  v31 = v19;
  sub_2171FB568(v38, v19);

  v20 = OUTLINED_FUNCTION_13_2();
  sub_217275694(v20, v21);
  if (v29 >= 2)
  {
    sub_217751DE8();
    v22 = v28;
    v23 = v29;
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  if (v32)
  {
    v26 = v33;
  }

  else
  {
    v26 = 0;
  }

  if (v32)
  {
    v27 = v32;
  }

  else
  {
    v27 = 0xE000000000000000;
  }

  sub_217283940(v28, v29, v18, v30);
  sub_217283988(v38, v31);
  *a2 = v37;
  *(a2 + 8) = v36;
  *(a2 + 16) = v35;
  *(a2 + 24) = v39;
  *(a2 + 32) = v26;
  *(a2 + 40) = v27;
  *(a2 + 48) = v34;
  *(a2 + 56) = v16;
  *(a2 + 64) = v22;
  *(a2 + 72) = v23;
  *(a2 + 80) = v7;
  *(a2 + 88) = v6;
  *(a2 + 96) = v8;
}

uint64_t MusicDataRequest.Error.title.getter()
{
  v1 = *(v0 + 16);
  sub_217751DE8();
  return v1;
}

uint64_t MusicDataRequest.Error.detailText.getter()
{
  v1 = *(v0 + 32);
  sub_217751DE8();
  return v1;
}

uint64_t MusicDataRequest.Error.id.getter()
{
  v1 = *(v0 + 48);
  sub_217751DE8();
  return v1;
}

uint64_t MusicDataRequest.Error.source.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  a1[1] = v2;
  return sub_217751DE8();
}

id MusicDataRequest.Error.originalResponse.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[10];
  v3 = v1[11];
  v5 = v1[12];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v5;
  sub_21727591C(v2, v3);

  return v5;
}

uint64_t static MusicDataRequest.Error.Source.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_217753058();
  }
}

unint64_t MusicDataRequest.Error.description.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v26 = v0[6];
  v25 = v0[7];
  v5 = v0[9];
  v24 = v0[8];
  v6 = sub_217752FC8();
  MEMORY[0x21CEA23B0](v6);

  MEMORY[0x21CEA23B0](44, 0xE100000000000000, v7);
  MEMORY[0x21CEA23B0](0x757461747320200ALL, 0xEB00000000203A73);

  v8 = sub_217752FC8();
  MEMORY[0x21CEA23B0](v8);

  MEMORY[0x21CEA23B0](44, 0xE100000000000000, v9);
  OUTLINED_FUNCTION_1_152();

  MEMORY[0x21CEA23B0](v1, v2, v10);
  OUTLINED_FUNCTION_3_135();
  OUTLINED_FUNCTION_1_152();

  sub_217752AA8();

  MEMORY[0x21CEA23B0](v3, v4, v11);
  OUTLINED_FUNCTION_3_135();
  OUTLINED_FUNCTION_1_152();

  MEMORY[0x21CEA23B0](v26, v25, v12);
  OUTLINED_FUNCTION_3_135();
  OUTLINED_FUNCTION_1_152();

  if (v5)
  {
    sub_217752AA8();

    OUTLINED_FUNCTION_2_147();
    v28 = v13;
    v29 = v14;
    MEMORY[0x21CEA23B0](v24, v5);
    MEMORY[0x21CEA23B0](10530, 0xE200000000000000);
    MEMORY[0x21CEA23B0](v28, v29);

    OUTLINED_FUNCTION_1_152();
  }

  sub_217752AA8();

  v27 = sub_2175AA670(0);
  sub_21733A5C8(v27, v15, v16);
  v17 = sub_217752998();
  v19 = v18;

  MEMORY[0x21CEA23B0](v17, v19, v20);

  MEMORY[0x21CEA23B0](0xD000000000000015, 0x80000002177B6BA0, v21);

  MEMORY[0x21CEA23B0](10506, 0xE200000000000000, v22);
  return 0xD000000000000017;
}

uint64_t MusicDataRequest.Error.Source.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217752AA8();

  OUTLINED_FUNCTION_2_147();
  v5 = v3;
  MEMORY[0x21CEA23B0](v1, v2);
  MEMORY[0x21CEA23B0](10530, 0xE200000000000000);
  return v5;
}

uint64_t sub_217738B68(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_217738BA8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_217738C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DFA8;
  if (!qword_27CB2DFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DFA8);
  }

  return result;
}

uint64_t CloudVideoArtwork.init(previewFrame:video:videoFile:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  memcpy(a4, __src, 0x1B8uLL);
  v7 = type metadata accessor for CloudVideoArtwork(0);
  result = sub_21751AF10(a2, &a4[*(v7 + 20)]);
  *&a4[*(v7 + 24)] = a3;
  return result;
}

uint64_t type metadata accessor for CloudVideoArtwork(uint64_t a1)
{
  result = qword_280BE88D8;
  if (!qword_280BE88D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CloudVideoArtwork.previewFrame.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x1B8uLL);
  memcpy(a1, v1, 0x1B8uLL);
  return sub_2171F5110(__dst, v4, &qword_27CB25000, &unk_21776EA00);
}

uint64_t CloudVideoArtwork.videoFile.getter()
{
  type metadata accessor for CloudVideoArtwork(0);

  return sub_217751DE8();
}

BOOL static CloudVideoArtwork.== infix(_:_:)(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  v5 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  v18 = &v38 - v17;
  memcpy(v48, v4, sizeof(v48));
  memcpy(v49, v2, sizeof(v49));
  memcpy(v46, v4, 0x1B8uLL);
  memcpy(&v46[440], v2, 0x1B8uLL);
  memcpy(v50, v4, 0x1B8uLL);
  if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v50) == 1)
  {
    OUTLINED_FUNCTION_176(v45);
    if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v45) == 1)
    {
      v40 = v11;
      v41 = v7;
      memcpy(v47, v46, sizeof(v47));
      sub_2171F5110(v48, v44, &qword_27CB25000, &unk_21776EA00);
      sub_2171F5110(v49, v44, &qword_27CB25000, &unk_21776EA00);
      sub_2171F0738(v47, &qword_27CB25000, &unk_21776EA00);
      goto LABEL_7;
    }

LABEL_5:
    memcpy(v45, v46, sizeof(v45));
    sub_2171F5110(v48, v47, &qword_27CB25000, &unk_21776EA00);
    sub_2171F5110(v49, v47, &qword_27CB25000, &unk_21776EA00);
    v19 = &unk_27CB25008;
    v20 = &unk_21778F850;
    v21 = v45;
LABEL_16:
    sub_2171F0738(v21, v19, v20);
    return 0;
  }

  OUTLINED_FUNCTION_176(v44);
  if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v44) == 1)
  {
    goto LABEL_5;
  }

  v40 = v11;
  v41 = v7;
  OUTLINED_FUNCTION_176(v42);
  OUTLINED_FUNCTION_176(v45);
  memcpy(v47, v46, sizeof(v47));
  sub_2171F5110(v48, v43, &qword_27CB25000, &unk_21776EA00);
  sub_2171F5110(v49, v43, &qword_27CB25000, &unk_21776EA00);
  sub_2172A92BC();
  v23 = v22;
  sub_2171F0738(v42, &qword_27CB25000, &unk_21776EA00);
  memcpy(v43, v46, sizeof(v43));
  sub_2171F0738(v43, &qword_27CB25000, &unk_21776EA00);
  if ((v23 & 1) == 0)
  {
    return 0;
  }

LABEL_7:
  v39 = type metadata accessor for CloudVideoArtwork(0);
  v24 = *(v39 + 20);
  v25 = *(v15 + 48);
  sub_2171F5110(&v4[v24], v18, &unk_27CB277C0, &qword_217758DC0);
  sub_2171F5110(&v2[v24], &v18[v25], &unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_73(v18);
  if (v26)
  {
    OUTLINED_FUNCTION_73(&v18[v25]);
    if (v26)
    {
      sub_2171F0738(v18, &unk_27CB277C0, &qword_217758DC0);
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  sub_2171F5110(v18, v14, &unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_73(&v18[v25]);
  if (v26)
  {
    (*(v41 + 8))(v14, v5);
LABEL_15:
    v19 = &qword_27CB24840;
    v20 = &unk_217758DD0;
    v21 = v18;
    goto LABEL_16;
  }

  v28 = v41;
  v29 = &v18[v25];
  v30 = v40;
  (*(v41 + 32))(v40, v29, v5);
  OUTLINED_FUNCTION_0_172();
  sub_21773A258(v31);
  v32 = sub_217751F08();
  v33 = *(v28 + 8);
  v33(v30, v5);
  v33(v14, v5);
  sub_2171F0738(v18, &unk_27CB277C0, &qword_217758DC0);
  if ((v32 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  v34 = *(v39 + 24);
  v35 = *&v2[v34];
  if (*&v4[v34])
  {
    if (v35)
    {
      sub_217751DE8();
      sub_217271848();
      v37 = v36;

      if (v37)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v35;
}

uint64_t sub_217739334(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4677656976657270 && a2 == 0xEC000000656D6172;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F65646976 && a2 == 0xE500000000000000;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6C69466F65646976 && a2 == 0xE900000000000065)
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

uint64_t sub_21773944C(char a1)
{
  if (!a1)
  {
    return 0x4677656976657270;
  }

  if (a1 == 1)
  {
    return 0x6F65646976;
  }

  return 0x6C69466F65646976;
}

uint64_t sub_2177394B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217739334(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2177394DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217739820(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217739518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217739820(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CloudVideoArtwork.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DFB0, &unk_2177A1240);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217739820(v11, v12, v13);
  sub_2177532F8();
  memcpy(v31, v3, 0x1B8uLL);
  memcpy(v30, v3, sizeof(v30));
  v33 = 0;
  sub_2171F5110(v31, v29, &qword_27CB25000, &unk_21776EA00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
  v14 = sub_21773A058(&qword_280BE42D8);
  OUTLINED_FUNCTION_11_10(v30, &v33, v15, v16, v14);
  if (v2)
  {
    memcpy(v29, v30, sizeof(v29));
    sub_2171F0738(v29, &qword_27CB25000, &unk_21776EA00);
  }

  else
  {
    memcpy(v29, v30, sizeof(v29));
    sub_2171F0738(v29, &qword_27CB25000, &unk_21776EA00);
    v17 = type metadata accessor for CloudVideoArtwork(0);
    v18 = *(v17 + 20);
    LOBYTE(v28) = 1;
    sub_2177516D8();
    OUTLINED_FUNCTION_0_172();
    v20 = sub_21773A258(v19);
    OUTLINED_FUNCTION_11_10(&v3[v18], &v28, v21, v22, v20);
    v28 = *&v3[*(v17 + 24)];
    v32 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DFB8, &unk_2177A1250);
    v23 = sub_21773A0CC(&unk_27CB2DFC0);
    OUTLINED_FUNCTION_11_10(&v28, &v32, v24, v25, v23);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_217739820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE3CD8[0];
  if (!qword_280BE3CD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BE3CD8);
  }

  return result;
}

unint64_t sub_217739874(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24838, &qword_217758DC8);
    sub_21773A258(&unk_280BE3CB8);
    sub_21773A258(&unk_280BE3CC0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void CloudVideoArtwork.hash(into:)(const void *a1)
{
  v3 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v12 = &v17[-v11 - 8];
  memcpy(v18, v1, sizeof(v18));
  v13 = v1[54];
  memcpy(v19, v1, sizeof(v19));
  v20 = v13;
  if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v19) == 1)
  {
    sub_217753208();
  }

  else
  {
    memcpy(v17, v18, sizeof(v17));
    sub_217753208();
    CloudArtwork.hash(into:)(a1);
    sub_217751DE8();
    sub_217265A08(a1, v13);
  }

  v14 = type metadata accessor for CloudVideoArtwork(0);
  sub_2171F5110(v1 + *(v14 + 20), v12, &unk_27CB277C0, &qword_217758DC0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v3) == 1)
  {
    sub_217753208();
  }

  else
  {
    (*(v5 + 32))(v9, v12, v3);
    sub_217753208();
    OUTLINED_FUNCTION_0_172();
    sub_21773A258(v15);
    sub_217751EB8();
    (*(v5 + 8))(v9, v3);
  }

  if (*(v1 + *(v14 + 24)))
  {
    sub_217753208();
    sub_21728115C();
  }

  else
  {
    sub_217753208();
  }
}

uint64_t CloudVideoArtwork.hashValue.getter()
{
  sub_2177531E8();
  CloudVideoArtwork.hash(into:)(v1);
  return sub_217753238();
}

uint64_t CloudVideoArtwork.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DFD0, &qword_2177A1260);
  OUTLINED_FUNCTION_0_0();
  v25 = v8;
  v26 = v7;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  v10 = type metadata accessor for CloudVideoArtwork(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v14 = (v13 - v12);
  v15 = a1[3];
  v27 = a1;
  v16 = __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_217739820(v16, v17, v18);
  sub_2177532C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
  v29[463] = 0;
  sub_21773A058(&qword_280BE42D0);
  OUTLINED_FUNCTION_6_116();
  sub_217752E58();
  memcpy(v14, v29, 0x1B8uLL);
  sub_2177516D8();
  LOBYTE(v28) = 1;
  OUTLINED_FUNCTION_0_172();
  sub_21773A258(v19);
  OUTLINED_FUNCTION_6_116();
  sub_217752E58();
  sub_21751AF10(v6, &v14[*(v10 + 20)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DFB8, &unk_2177A1250);
  v29[462] = 2;
  sub_21773A0CC(&unk_280BE2368);
  OUTLINED_FUNCTION_6_116();
  v23 = 0;
  sub_217752E58();
  v20 = OUTLINED_FUNCTION_2_148();
  v21(v20);
  *&v14[*(v10 + 24)] = v28;
  sub_21773A150(v14, v24);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return sub_21773A1B4(v14);
}

uint64_t sub_21773A01C(uint64_t a1)
{
  sub_2177531E8();
  CloudVideoArtwork.hash(into:)(v2);
  return sub_217753238();
}

unint64_t sub_21773A058(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB243F0, &qword_21775D690);
    v8 = sub_2172DEF40(v3, v4, v5);
    sub_2172DEF94(v8, v6, v7);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21773A0CC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2DFB8, &unk_2177A1250);
    sub_217739874(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_21773A150(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudVideoArtwork(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21773A1B4(uint64_t a1)
{
  v2 = type metadata accessor for CloudVideoArtwork(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21773A258(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_21773A2C4(uint64_t a1)
{
  sub_217351B44(319, &qword_280BE7DF0, &qword_27CB243F0, &qword_21775D690);
  if (v1 <= 0x3F)
  {
    sub_2172E2DB0(319);
    if (v2 <= 0x3F)
    {
      sub_217351B44(319, &qword_280BE7560, &qword_27CB2DFB8, &unk_2177A1250);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CloudVideoArtwork.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21773A470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DFE0;
  if (!qword_27CB2DFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DFE0);
  }

  return result;
}

unint64_t sub_21773A4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE3CC8;
  if (!qword_280BE3CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3CC8);
  }

  return result;
}

unint64_t sub_21773A520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE3CD0;
  if (!qword_280BE3CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3CD0);
  }

  return result;
}

uint64_t CloudDisplayTextContainer.stringForDisplay.getter()
{
  v1 = *v0;
  sub_217751DE8();
  return v1;
}

uint64_t static CloudDisplayTextContainer.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_217753058() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_21773A600(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000002177B6BC0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_217753058();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_21773A6A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21773A600(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_21773A6CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21773A870(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21773A708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21773A870(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CloudDisplayTextContainer.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DFE8, &qword_2177A1470);
  OUTLINED_FUNCTION_41();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21773A870(v8, v9, v10);
  sub_2177532F8();
  sub_217752EF8();
  return (*(v4 + 8))(v7, v1);
}

unint64_t sub_21773A870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2DFF0;
  if (!qword_27CB2DFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DFF0);
  }

  return result;
}

uint64_t CloudDisplayTextContainer.hash(into:)(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return sub_217753208();
  }

  sub_217753208();

  return sub_217751FF8();
}

uint64_t CloudDisplayTextContainer.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_2177531E8();
  sub_217753208();
  if (v1)
  {
    sub_217751FF8();
  }

  return sub_217753238();
}

uint64_t CloudDisplayTextContainer.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DFF8, &qword_2177A1478);
  OUTLINED_FUNCTION_41();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21773A870(v11, v12, v13);
  sub_2177532C8();
  if (!v2)
  {
    v14 = sub_217752E18();
    v16 = v15;
    (*(v7 + 8))(v10, v3);
    *a2 = v14;
    a2[1] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_21773AB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2E000;
  if (!qword_27CB2E000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E000);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudDisplayTextContainer.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_21773AC64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2E008;
  if (!qword_27CB2E008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E008);
  }

  return result;
}

unint64_t sub_21773ACBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2E010;
  if (!qword_27CB2E010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E010);
  }

  return result;
}

unint64_t sub_21773AD14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2E018;
  if (!qword_27CB2E018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E018);
  }

  return result;
}

uint64_t Album.init(propertyProvider:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 24))(v11, v4, v5);
  v7 = v11[0];
  v6 = v11[1];
  sub_217751DE8();
  sub_217269F50(v11);
  *a2 = v7;
  a2[1] = v6;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  PropertyProvider.eraseToAnyPropertyProvider()(v8, v9, a2 + 2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Album.editorialNotes.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE9580 != -1)
  {
    OUTLINED_FUNCTION_100(&qword_280BE9580);
  }

  v26 = qword_280C027C0;

  return sub_2176CA810(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t Album.genreNames.getter()
{
  if (qword_280BE9670 != -1)
  {
    OUTLINED_FUNCTION_97_11(&qword_280BE9670);
  }

  result = sub_2172A43B4(qword_280C02810);
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_21773B1B0()
{
  OUTLINED_FUNCTION_17_67();
  if (!v0)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_61_22();
  v1 = sub_2172A4380();
  return OUTLINED_FUNCTION_41_35(v1, v2);
}

uint64_t Album.playParameters.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE9568 != -1)
  {
    swift_once();
  }

  v26 = qword_280C027A8;

  return sub_2176CAFA0(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t Album.trackCount.getter()
{
  if (qword_280BE9648 != -1)
  {
    OUTLINED_FUNCTION_117_14(&qword_280BE9648);
  }

  result = sub_2172A4394();
  if (v1)
  {
    return 0;
  }

  return result;
}

void Album._friendsWhoListened.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (qword_280BE9518 != -1)
  {
    swift_once();
  }

  v30 = qword_280C02770;

  sub_2176CB000(v30, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t Album._pivotMetadata.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (qword_280BE8218 != -1)
  {
    swift_once();
  }

  v28 = qword_280C024D8;

  return sub_2176CB01C(v28, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_21773B6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_280BE7F08 != -1)
  {
    swift_once();
  }

  if (*(off_280BE7F10 + 2))
  {
    v14 = *(off_280BE7F10 + 4);
    v15 = *(off_280BE7F10 + 5);
    sub_217751DE8();
    MEMORY[0x21CEA23B0](58, 0xE100000000000000);
    v9 = *(a3 + 16);
    v10 = *(a3 + 24);
    sub_217751DE8();
    MEMORY[0x21CEA23B0](v9, v10);

    *(v4 + 104) = 0;
    *(v4 + 112) = 1;
    *&v13 = MEMORY[0x277D84F90];
    *(&v13 + 1) = MEMORY[0x277D84F90];
    v11 = sub_2173C381C(a1, a2, v14, v15, 2, 0, 2, 0, v13, MEMORY[0x277D84F90], a4);

    return v11;
  }

  else
  {
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000034, 0x80000002177AD6F0);
    MEMORY[0x21CEA23B0](0x6D75626C41, 0xE500000000000000);
    MEMORY[0x21CEA23B0](0xD000000000000016, 0x80000002177AD730);
    result = sub_217752D08();
    __break(1u);
  }

  return result;
}

uint64_t sub_21773BB2C()
{
  OUTLINED_FUNCTION_16_4();
  if (!v0)
  {
    swift_once();
  }

  v1 = OUTLINED_FUNCTION_50_29();

  return v2(v1);
}

uint64_t Album.keepLocalManagedStatusReasons.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (qword_280BE9490 != -1)
  {
    swift_once();
  }

  v28 = qword_280C02720;

  return sub_2176CA9F0(v28, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_21773BC30(void *a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return a3(*a2);
}

uint64_t sub_21773BCA8()
{
  OUTLINED_FUNCTION_17_67();
  if (!v0)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_61_22();
  return sub_2172A4394();
}

uint64_t static Album.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[5];
  v6 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v5);
  v7 = *(v6 + 104);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
  return v7(a2 + 2, v8, v5, v6) & 1;
}

uint64_t Album.debugDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_31();
  v366 = v3;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v4);
  v365 = &v363 - v5;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v6);
  v8 = &v363 - v7;
  *&v371 = sub_2177517D8();
  OUTLINED_FUNCTION_0_0();
  v369 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_31();
  v364 = v11;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v12);
  *&v373 = &v363 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_31();
  *&v372 = v15;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v16);
  v18 = &v363 - v17;
  *&v374 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v368 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_31();
  v367 = v21;
  OUTLINED_FUNCTION_79_2();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v363 - v24;
  v408 = 0x286D75626C41;
  v409 = 0xE600000000000000;
  *&v393 = 0x22203A646920200ALL;
  *(&v393 + 1) = 0xE800000000000000;
  MEMORY[0x21CEA23B0](*v0, v0[1], v23);
  OUTLINED_FUNCTION_17_69();
  OUTLINED_FUNCTION_51_29();

  OUTLINED_FUNCTION_24_0();
  *&v393 = v26 | 0x6C74697400000000;
  *(&v393 + 1) = 0xEC00000022203A65;
  if (qword_280BE9470 == -1)
  {
    goto LABEL_2;
  }

LABEL_197:
  OUTLINED_FUNCTION_118_10(&qword_280BE9470);
LABEL_2:
  v27 = sub_2172A4380();
  v29 = OUTLINED_FUNCTION_41_35(v27, v28);
  if (v31)
  {
    v32 = 0xE000000000000000;
  }

  else
  {
    v32 = v30;
  }

  MEMORY[0x21CEA23B0](v29, v32);

  OUTLINED_FUNCTION_17_69();
  OUTLINED_FUNCTION_51_29();

  *&v393 = 0xD000000000000011;
  *(&v393 + 1) = 0x80000002177B4760;
  if (qword_280BE9680 != -1)
  {
    OUTLINED_FUNCTION_108_11(&qword_280BE9680);
  }

  v33 = sub_2172A4380();
  v35 = OUTLINED_FUNCTION_41_35(v33, v34);
  if (v31)
  {
    v37 = 0xE000000000000000;
  }

  else
  {
    v37 = v36;
  }

  MEMORY[0x21CEA23B0](v35, v37);

  OUTLINED_FUNCTION_17_69();
  OUTLINED_FUNCTION_51_29();

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25370, &unk_21775D3B0);
  OUTLINED_FUNCTION_31_11(v38);
  OUTLINED_FUNCTION_30_3();
  v39 = sub_2172E3DC0();
  sub_2176CA7D0(v39, v40, v41, v42, v43, v44, v45, v46, v363, v364, v365, v366, v367, v368, v369, v370, v371, *(&v371 + 1), v372, *(&v372 + 1), v373, *(&v373 + 1), v374, *(&v374 + 1), v375, v376, v377, v378, v379, v380);

  if (__swift_getEnumTagSinglePayload(v18, 1, v374) == 1)
  {
    sub_2171F06D8(v18, &unk_27CB277C0, &qword_217758DC0);
  }

  else
  {
    v47 = v368;
    v48 = v374;
    (*(v368 + 32))(v25, v18, v374);
    OUTLINED_FUNCTION_207();
    *&v393 = v50;
    *(&v393 + 1) = v49;
    sub_21736C310();
    v51 = sub_217752FC8();
    MEMORY[0x21CEA23B0](v51);

    OUTLINED_FUNCTION_17_69();
    OUTLINED_FUNCTION_14_74();

    (*(v47 + 8))(v25, v48, v52);
  }

  if (qword_280BE95E8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_36_41();
  sub_2176CA81C(v53, v54, v55, v56, v57, v58, v59, v60, v363, v364, v365, v366, v367, v368, v369, v370, v371, *(&v371 + 1), v372, *(&v372 + 1), v373, *(&v373 + 1), v374, *(&v374 + 1), v375, v376, v377, v378);
  v61 = v393;
  if (v393 != 2)
  {
    *&v393 = 0;
    *(&v393 + 1) = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000014, 0x80000002177AC060);
    LOBYTE(v400) = v61 & 1;
    sub_217752C78();
    OUTLINED_FUNCTION_14_74();
  }

  if (qword_280BE93E0 != -1)
  {
    swift_once();
  }

  sub_2172A4380();
  if (v62)
  {
    OUTLINED_FUNCTION_24_0();
    *&v393 = v63 | 0x79706F6300000000;
    *(&v393 + 1) = 0xEF203A7468676972;
    MEMORY[0x21CEA23B0]();

    OUTLINED_FUNCTION_14_74();
  }

  if (qword_280BE9580 != -1)
  {
    OUTLINED_FUNCTION_100(&qword_280BE9580);
  }

  OUTLINED_FUNCTION_36_41();
  sub_2176CA810(v64, v65, v66, v67, v68, v69, v70, v71, v363, v364, v365, v366, v367, v368, v369, v370, v371, *(&v371 + 1), v372, *(&v372 + 1), v373, *(&v373 + 1), v374, *(&v374 + 1), v375, v376);
  v404[0] = v393;
  v404[1] = v394;
  v404[2] = v395;
  v404[3] = v396;
  v405 = v394;
  v406 = v395;
  v407 = v396;
  if (*(&v393 + 1) != 1)
  {
    v400 = 0xD000000000000014;
    v401 = 0x80000002177AB940;
    v393 = v404[0];
    v394 = v405;
    v395 = v406;
    v396 = v407;
    v72 = EditorialNotes.debugDescription.getter();
    v74 = v73;
    v75 = sub_2171F06D8(v404, &qword_27CB24B70, &unk_217759460);
    *&v390[0] = v72;
    *(&v390[0] + 1) = v74;
    *&v381 = 10;
    *(&v381 + 1) = 0xE100000000000000;
    *&v387 = 2105354;
    *(&v387 + 1) = 0xE300000000000000;
    sub_21733A5C8(v75, v76, v77);
    OUTLINED_FUNCTION_4_146();
    v363 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    v86 = OUTLINED_FUNCTION_49_30(v78, v79, v80, v81, v82, v83, v84, v85, v363);
    v88 = v87;

    MEMORY[0x21CEA23B0](v86, v88, v89);

    MEMORY[0x21CEA23B0](v400, v401, v90);
  }

  v402 = 0;
  v403 = 0xE000000000000000;
  if (qword_280BE9670 != -1)
  {
    OUTLINED_FUNCTION_97_11(&qword_280BE9670);
  }

  v370 = v1;
  v91 = sub_2172A43B4(qword_280C02810);
  if (v91)
  {
    v92 = v91;
  }

  else
  {
    v92 = MEMORY[0x277D84F90];
  }

  v93 = *(v92 + 16);
  if (v93)
  {
    v94 = (v92 + 40);
    do
    {
      v96 = *(v94 - 1);
      v95 = *v94;
      if ((v403 & 0x2000000000000000) != 0)
      {
        v97 = HIBYTE(v403) & 0xF;
      }

      else
      {
        v97 = v402 & 0xFFFFFFFFFFFFLL;
      }

      sub_217751DE8();
      if (v97)
      {
        OUTLINED_FUNCTION_48_1();
      }

      *&v393 = 0x22202020200ALL;
      *(&v393 + 1) = 0xE600000000000000;
      MEMORY[0x21CEA23B0](v96, v95);

      OUTLINED_FUNCTION_17_69();
      MEMORY[0x21CEA23B0](v393, *(&v393 + 1));

      v94 += 2;
      --v93;
    }

    while (v93);

    v98 = v402;
    v99 = v403;
  }

  else
  {

    v98 = 0;
    v99 = 0xE000000000000000;
  }

  v100 = HIBYTE(v99) & 0xF;
  if ((v99 & 0x2000000000000000) == 0)
  {
    v100 = v98 & 0xFFFFFFFFFFFFLL;
  }

  if (v100)
  {
    OUTLINED_FUNCTION_207();
    *&v393 = v102 + 1;
    *(&v393 + 1) = v101;
    OUTLINED_FUNCTION_61_23();

    OUTLINED_FUNCTION_16_76();
    OUTLINED_FUNCTION_14_74();
  }

  if (qword_280BE95D8 != -1)
  {
    swift_once();
  }

  sub_2172A43A8(qword_280C027D0, v103, v104, v105, v106, v107, v108, v109, v367, v368, v369, v370, v371, SDWORD2(v371), SWORD6(v371), SBYTE14(v371), HIBYTE(v371), v372, *(&v372 + 1), v373, *(&v373 + 1), v374, *(&v374 + 1), v375, v376);
  if (v117 != 2)
  {
    OUTLINED_FUNCTION_207();
    *&v393 = v119 + 3;
    *(&v393 + 1) = v118;
    OUTLINED_FUNCTION_61_23();

    OUTLINED_FUNCTION_14_74();
  }

  v120 = v373;
  if (qword_280BE9660 != -1)
  {
    swift_once();
  }

  sub_2172A43A8(qword_280C02808, v110, v111, v112, v113, v114, v115, v116, v367, v368, v369, v370, v371, SDWORD2(v371), SWORD6(v371), SBYTE14(v371), HIBYTE(v371), v372, *(&v372 + 1), v373, *(&v373 + 1), v374, *(&v374 + 1), v375, v376);
  if (v128 != 2)
  {
    OUTLINED_FUNCTION_207();
    *&v393 = v130;
    *(&v393 + 1) = v129;
    OUTLINED_FUNCTION_61_23();

    OUTLINED_FUNCTION_14_74();
    v120 = v373;
  }

  if (qword_280BE9400 != -1)
  {
    swift_once();
  }

  sub_2172A43A8(qword_280C026F0, v121, v122, v123, v124, v125, v126, v127, v367, v368, v369, v370, v371, SDWORD2(v371), SWORD6(v371), SBYTE14(v371), HIBYTE(v371), v372, *(&v372 + 1), v373, *(&v373 + 1), v374, *(&v374 + 1), v375, v376);
  if (v138 != 2)
  {
    OUTLINED_FUNCTION_24_0();
    *&v393 = v139 | 0x6953736900000000;
    *(&v393 + 1) = 0xEE00203A656C676ELL;
    OUTLINED_FUNCTION_61_23();

    OUTLINED_FUNCTION_14_74();
    v120 = v373;
  }

  if (qword_280BE9628 != -1)
  {
    swift_once();
  }

  sub_2176CA7F0(qword_280C027E8, v131, v132, v133, v134, v135, v136, v137, v367, v368, v369, v370, v371, *(&v371 + 1), v372, *(&v372 + 1), v373, *(&v373 + 1), v374, *(&v374 + 1), v375, v376, v377, v378, v379, v380, v381, *(&v381 + 1), v382, *(&v382 + 1));
  v140 = v371;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v371);
  v25 = v369;
  if (EnumTagSinglePayload == 1)
  {
    sub_2171F06D8(v8, &qword_27CB241C0, &qword_217759480);
  }

  else
  {
    v363 = *(v369 + 32);
    v363(v120, v8, v140);
    if (qword_280BE8910 != -1)
    {
      swift_once();
    }

    v142 = type metadata accessor for CloudFormatter(0);
    v143 = __swift_project_value_buffer(v142, qword_280BE8918);
    v8 = v365;
    (*(v25 + 16))(v365, v120, v140);
    v144 = OUTLINED_FUNCTION_45_3();
    __swift_storeEnumTagSinglePayload(v144, v145, 1, v140);
    v146 = v366;
    sub_217202078(v8, v366, &qword_27CB241C0, &qword_217759480);
    if (__swift_getEnumTagSinglePayload(v146, 1, v140) == 1)
    {
      sub_2171F06D8(v8, &qword_27CB241C0, &qword_217759480);
      sub_2171F06D8(v146, &qword_27CB241C0, &qword_217759480);
      v147 = *(v25 + 8);
      v25 += 8;
      v147(v120, v140);
    }

    else
    {
      v120 = v364;
      v363(v364, v146, v140);
      v148 = *(v143 + *(v142 + 20));
      v149 = sub_2177517A8();
      v150 = [v148 stringFromDate_];

      v151 = sub_217751F48();
      v153 = v152;

      v154 = *(v25 + 8);
      v25 += 8;
      v154(v120, v140);
      LOBYTE(v120) = v154;
      sub_2171F06D8(v8, &qword_27CB241C0, &qword_217759480);
      OUTLINED_FUNCTION_207();
      *&v393 = v156 + 2;
      *(&v393 + 1) = v155;
      MEMORY[0x21CEA23B0](v151, v153);

      OUTLINED_FUNCTION_17_69();
      OUTLINED_FUNCTION_14_74();

      (v154)(v373, v140, v157);
    }
  }

  OUTLINED_FUNCTION_207();
  *&v393 = v159;
  *(&v393 + 1) = v158;
  if (qword_280BE9648 != -1)
  {
    OUTLINED_FUNCTION_117_14(&qword_280BE9648);
  }

  v160 = sub_2172A4394();
  if (v161)
  {
    v162 = 0;
  }

  else
  {
    v162 = v160;
  }

  v400 = v162;
  v163 = sub_217752FC8();
  MEMORY[0x21CEA23B0](v163);

  OUTLINED_FUNCTION_14_74();

  if (qword_280BE9480 != -1)
  {
    swift_once();
  }

  sub_2172A4380();
  if (v164)
  {
    OUTLINED_FUNCTION_24_0();
    *&v393 = v171 | 0x3A63707500000000;
    *(&v393 + 1) = 0xEA00000000002220;
    MEMORY[0x21CEA23B0]();

    OUTLINED_FUNCTION_17_69();
    OUTLINED_FUNCTION_14_74();
  }

  if (qword_280BE9478 != -1)
  {
    swift_once();
  }

  v18 = v372;
  sub_2176CA7D0(qword_280C02708, v164, v165, v166, v167, v168, v169, v170, v367, v368, v369, v370, v371, *(&v371 + 1), v372, *(&v372 + 1), v373, *(&v373 + 1), v374, *(&v374 + 1), v375, v376, v377, v378, v379, v380, v381, *(&v381 + 1), v382, *(&v382 + 1));
  if (__swift_getEnumTagSinglePayload(v18, 1, v374) == 1)
  {
    sub_2171F06D8(v18, &unk_27CB277C0, &qword_217758DC0);
  }

  else
  {
    v120 = v367;
    v172 = v368;
    v173 = v374;
    (*(v368 + 32))(v367, v18, v374);
    OUTLINED_FUNCTION_24_0();
    *&v393 = v174 | 0x3A6C727500000000;
    *(&v393 + 1) = 0xEA00000000002220;
    sub_21736C310();
    v175 = sub_217752FC8();
    v18 = v176;
    MEMORY[0x21CEA23B0](v175);

    OUTLINED_FUNCTION_17_69();
    OUTLINED_FUNCTION_14_74();

    v178 = *(v172 + 8);
    v8 = (v172 + 8);
    v178(v120, v173, v177);
  }

  if (qword_280BE9430 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_36_41();
  sub_2176CA7B4(v179, v180, v181, v182, v183, v184, v185, v186, v367, v368, v369, v370, v371, *(&v371 + 1), v372, *(&v372 + 1), v373, *(&v373 + 1), v374, *(&v374 + 1), v375, v376, v377, v378, v379, v380, v381, *(&v381 + 1), v382, *(&v382 + 1));
  if (v397)
  {
    OUTLINED_FUNCTION_35_42();
    *&v387 = 0;
    *(&v387 + 1) = 0xE000000000000000;
    v18 = &unk_21776C4F0;
    v187 = OUTLINED_FUNCTION_24_57();
    sub_217202078(v187, v188, v189, &unk_21776C4F0);
    v190 = OUTLINED_FUNCTION_27_57();
    sub_217202078(v190, v191, v192, &unk_21776C4F0);
    OUTLINED_FUNCTION_49_36();
    sub_21725CF00(v8, v120);
    OUTLINED_FUNCTION_41_42();
    v193 = BYTE8(v393);
    v194 = (v8 + 32);
    v1 = &qword_27CB27BD0;
    if (BYTE8(v393))
    {
LABEL_83:
      OUTLINED_FUNCTION_6();
      swift_beginAccess();
      OUTLINED_FUNCTION_38_34();
      if (!v31)
      {

        sub_2172945D4();
        goto LABEL_89;
      }
    }

    else
    {
      while (1)
      {
        v195 = *(v8 + 2);
        if (v18 == v195)
        {
          break;
        }

        if ((v18 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
          goto LABEL_197;
        }

        if (v18 >= v195)
        {
          goto LABEL_184;
        }

        sub_217202078(v194, v390, &qword_27CB27BD0, &qword_21776B8C0);
        v196 = OUTLINED_FUNCTION_45_3();
        v198 = sub_217283C5C(v196, v197);
        sub_217294118(v198, v199, v200, v201, v202, v203, v204, v205);
        sub_2171F06D8(v390, &qword_27CB27BD0, &qword_21776B8C0);
LABEL_89:
        v373 = v382;
        v374 = v381;
        v372 = v383[0];
        v25 = __OFADD__(v18, 1);
        if (v193)
        {
          sub_21725CF00(v8, 1);
          if (v25)
          {
            goto LABEL_183;
          }
        }

        else
        {
          sub_21725CF00(v8, 0);
          if (v25)
          {
            goto LABEL_182;
          }
        }

        OUTLINED_FUNCTION_15_73();
        OUTLINED_FUNCTION_4_6();
        if (v206)
        {
          OUTLINED_FUNCTION_48_1();
        }

        *&v381 = 10;
        *(&v381 + 1) = 0xE100000000000000;
        v207 = Artist.debugDescription.getter();
        MEMORY[0x21CEA23B0](v207);

        v25 = *(&v381 + 1);
        MEMORY[0x21CEA23B0](v381, *(&v381 + 1), v208);

        sub_217284498(v390);
        ++v18;
        v194 += 64;
        if (v193)
        {
          goto LABEL_83;
        }
      }
    }

    v398 = v18;
    sub_2171F06D8(&v393, &qword_27CB27BC0, &qword_21776B8B0);
    OUTLINED_FUNCTION_24_0();
    *&v393 = v209 | 0x6974726100000000;
    *(&v393 + 1) = 0xEE005B203A737473;
    v18 = *(&v387 + 1);
    v390[0] = v387;
    OUTLINED_FUNCTION_2_118();
    *&v384 = v211;
    *(&v384 + 1) = v210;
    v365 = sub_21733A5C8(v212, v213, v214);
    v366 = v365;
    v364 = v365;
    v363 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    v8 = OUTLINED_FUNCTION_49_30(v215, v216, v217, v218, v219, v220, v221, v222, v363);
    v120 = v223;

    MEMORY[0x21CEA23B0](v8, v120, v224);

    OUTLINED_FUNCTION_16_76();
    OUTLINED_FUNCTION_14_74();

    sub_2171F06D8(&v400, &qword_27CB25398, &unk_21776C4F0);
  }

  else
  {
    sub_2171F06D8(&v393, &qword_27CB25310, &unk_21775D3D0);
  }

  if (qword_280BE9460 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_36_41();
  sub_2176CA3F4(v225, v226, v227, v228, v229, v230, v231, v232, v367, v368, v369, v370, v371, *(&v371 + 1), v372, *(&v372 + 1), v373, *(&v373 + 1), v374, *(&v374 + 1), v375, v376, v377, v378, v379, v380, v381, *(&v381 + 1), v382, *(&v382 + 1));
  if (v397)
  {
    OUTLINED_FUNCTION_35_42();
    *&v384 = 0;
    *(&v384 + 1) = 0xE000000000000000;
    v18 = &unk_21775D420;
    v233 = OUTLINED_FUNCTION_24_57();
    sub_217202078(v233, v234, v235, &unk_21775D420);
    v236 = OUTLINED_FUNCTION_27_57();
    sub_217202078(v236, v237, v238, &unk_21775D420);
    OUTLINED_FUNCTION_49_36();
    sub_21725CF00(v8, v120);
    OUTLINED_FUNCTION_41_42();
    v1 = BYTE8(v393);
    v239 = (v8 + 32);
    v25 = 10;
    if (BYTE8(v393))
    {
LABEL_106:
      OUTLINED_FUNCTION_6();
      swift_beginAccess();
      OUTLINED_FUNCTION_38_34();
      if (!v31)
      {

        sub_21729464C();
        goto LABEL_115;
      }
    }

    else
    {
      while (1)
      {
        v240 = *(v8 + 2);
        if (v18 == v240)
        {
          break;
        }

        if ((v18 & 0x8000000000000000) != 0)
        {
          goto LABEL_185;
        }

        if (v18 >= v240)
        {
          goto LABEL_188;
        }

        sub_217202078(v239, v390, &qword_27CB24618, &qword_217778790);
        sub_217202078(v390, &v381, &qword_27CB24618, &qword_217778790);
        if (BYTE8(v383[1]))
        {
          v241 = *(v381 + 16);
          v242 = *(v381 + 24);
          v243 = OUTLINED_FUNCTION_45_3();
          sub_217283C5C(v243, v244);
          sub_217751DE8();

          sub_2172937E4(v241, v242, v245, v246, v247, v248, v249, v250, v367, v368, v369, v370, v371, *(&v371 + 1), v372, *(&v372 + 1), v373, *(&v373 + 1), v374, *(&v374 + 1), v375, v376, v377, v378, v379, v380, v381, *(&v381 + 1), v382, *(&v382 + 1), *&v383[0], *(&v383[0] + 1), *&v383[1], *(&v383[1] + 1), v384, *(&v384 + 1), v385, *(&v385 + 1));
          v25 = 10;
        }

        else
        {
          OUTLINED_FUNCTION_34_44();
          v251 = OUTLINED_FUNCTION_45_3();
          sub_217283C5C(v251, v252);
        }

        sub_2171F06D8(v390, &qword_27CB24618, &qword_217778790);
LABEL_115:
        OUTLINED_FUNCTION_46_36();
        v253 = __OFADD__(v18, 1);
        if (v1)
        {
          sub_21725CF00(v8, 1);
          if (v253)
          {
            goto LABEL_187;
          }
        }

        else
        {
          sub_21725CF00(v8, 0);
          if (v253)
          {
            goto LABEL_186;
          }
        }

        OUTLINED_FUNCTION_15_73();
        OUTLINED_FUNCTION_4_6();
        if (v254)
        {
          OUTLINED_FUNCTION_48_1();
        }

        *&v381 = 10;
        *(&v381 + 1) = 0xE100000000000000;
        v255 = Genre.debugDescription.getter();
        MEMORY[0x21CEA23B0](v255);

        MEMORY[0x21CEA23B0](v381, *(&v381 + 1), v256);

        sub_21728418C(v390);
        ++v18;
        v239 += 64;
        if (v1)
        {
          goto LABEL_106;
        }
      }
    }

    v398 = v18;
    sub_2171F06D8(&v393, &qword_27CB27C88, &qword_21779F250);
    OUTLINED_FUNCTION_24_0();
    *&v393 = v257 | 0x726E656700000000;
    *(&v393 + 1) = 0xED00005B203A7365;
    v390[0] = v384;
    OUTLINED_FUNCTION_2_118();
    *&v387 = v259;
    *(&v387 + 1) = v258;
    sub_21733A5C8(v260, v261, v262);
    OUTLINED_FUNCTION_4_146();
    v367 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    OUTLINED_FUNCTION_49_30(v263, v264, v265, v266, v267, v268, v269, v270, v367);
    OUTLINED_FUNCTION_58_0();
    OUTLINED_FUNCTION_52_32();

    OUTLINED_FUNCTION_16_76();
    OUTLINED_FUNCTION_50_36();

    sub_2171F06D8(&v400, &qword_27CB27C80, &unk_21775D420);
  }

  else
  {
    sub_2171F06D8(&v393, &qword_27CB25320, &unk_21776E020);
  }

  if (qword_280BE9448 != -1)
  {
    OUTLINED_FUNCTION_8_5(&qword_280BE9448);
  }

  OUTLINED_FUNCTION_36_41();
  sub_2176CA3D8(v271, v272, v273, v274, v275, v276, v277, v278, v367, v368, v369, v370, v371, *(&v371 + 1), v372, *(&v372 + 1), v373, *(&v373 + 1), v374, *(&v374 + 1), v375, v376, v377, v378, v379, v380, v381, *(&v381 + 1), v382, *(&v382 + 1));
  if (v397)
  {
    OUTLINED_FUNCTION_35_42();
    *&v399 = 0;
    *(&v399 + 1) = 0xE000000000000000;
    v279 = OUTLINED_FUNCTION_24_57();
    sub_217202078(v279, v280, v281, &unk_21775D400);
    v282 = OUTLINED_FUNCTION_27_57();
    sub_217202078(v282, v283, v284, &unk_21775D400);
    OUTLINED_FUNCTION_48_27();
    sub_21725CF00(v18, v8);
    OUTLINED_FUNCTION_41_42();
    LODWORD(v374) = BYTE8(v393);
    for (i = (v8 + 32); ; i += 64)
    {
      v1 = &unk_2177589C0;
      if (v374)
      {
        OUTLINED_FUNCTION_6();
        swift_beginAccess();
        OUTLINED_FUNCTION_38_34();
        if (v31)
        {
          goto LABEL_152;
        }

        sub_217294634();
      }

      else
      {
        v286 = *(v8 + 2);
        if (v18 == v286)
        {
LABEL_152:
          sub_2171F06D8(&v393, &qword_27CB27E10, &qword_21776BCB0);
          OUTLINED_FUNCTION_24_0();
          *&v393 = v301 | 0x6361727400000000;
          *(&v393 + 1) = 0xED00005B203A736BLL;
          v390[0] = v399;
          OUTLINED_FUNCTION_2_118();
          *&v387 = v303;
          *(&v387 + 1) = v302;
          sub_21733A5C8(v304, v305, v306);
          OUTLINED_FUNCTION_4_146();
          v367 = MEMORY[0x277D837D0];
          OUTLINED_FUNCTION_1_125();
          OUTLINED_FUNCTION_49_30(v307, v308, v309, v310, v311, v312, v313, v314, v367);
          OUTLINED_FUNCTION_58_0();
          OUTLINED_FUNCTION_52_32();

          OUTLINED_FUNCTION_16_76();
          OUTLINED_FUNCTION_50_36();

          sub_2171F06D8(&v400, &qword_27CB240D0, &unk_21775D400);
          goto LABEL_154;
        }

        if ((v18 & 0x8000000000000000) != 0)
        {
          goto LABEL_189;
        }

        if (v18 >= v286)
        {
          goto LABEL_192;
        }

        sub_217202078(i, v390, &dword_27CB27E20, &unk_2177589C0);
        sub_217202078(v390, &v381, &dword_27CB27E20, &unk_2177589C0);
        if (BYTE9(v383[1]))
        {
          v288 = *(v381 + 16);
          v287 = *(v381 + 24);
          v289 = OUTLINED_FUNCTION_45_3();
          sub_217283C5C(v289, v290);
          sub_217751DE8();
          sub_21729366C(v288, v287);

          sub_2171F06D8(v390, &dword_27CB27E20, &unk_2177589C0);
        }

        else
        {
          v291 = OUTLINED_FUNCTION_45_3();
          sub_217283C5C(v291, v292);
          sub_2171F06D8(v390, &dword_27CB27E20, &unk_2177589C0);
          v384 = v381;
          v385 = v382;
          v386[0] = v383[0];
          *(v386 + 9) = *(v383 + 9);
        }

        v387 = v384;
        v388 = v385;
        v389[0] = v386[0];
        *(v389 + 9) = *(v386 + 9);
      }

      v372 = v388;
      v373 = v387;
      v371 = v389[0];
      v293 = *&v389[1];
      v25 = v18 + 1;
      v294 = __OFADD__(v18, 1);
      v295 = BYTE8(v389[1]);
      if (v374)
      {
        sub_21725CF00(v8, 1);
        if (v294)
        {
          goto LABEL_191;
        }
      }

      else
      {
        v296 = OUTLINED_FUNCTION_45_3();
        sub_21725CF00(v296, v297);
        if (v294)
        {
          goto LABEL_190;
        }
      }

      v398 = v18 + 1;
      v390[0] = v373;
      v390[1] = v372;
      v390[2] = v371;
      v391 = v293;
      v392 = v295;
      OUTLINED_FUNCTION_4_6();
      if (v298)
      {
        OUTLINED_FUNCTION_48_1();
      }

      *&v381 = 10;
      *(&v381 + 1) = 0xE100000000000000;
      v299 = Track.debugDescription.getter();
      MEMORY[0x21CEA23B0](v299);

      MEMORY[0x21CEA23B0](v381, *(&v381 + 1), v300);

      sub_21727576C(v390);
      ++v18;
    }
  }

  sub_2171F06D8(&v393, &unk_27CB28A60, &qword_217770B60);
LABEL_154:
  if (qword_280BE9618 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_36_41();
  sub_2176CA3BC(v315, v316, v317, v318, v319, v320, v321, v322, v367, v368, v369, v370, v371, *(&v371 + 1), v372, *(&v372 + 1), v373, *(&v373 + 1), v374, *(&v374 + 1), v375, v376, v377, v378, v379, v380, v381, *(&v381 + 1), v382, *(&v382 + 1));
  if (v397)
  {
    OUTLINED_FUNCTION_35_42();
    *&v399 = 0;
    *(&v399 + 1) = 0xE000000000000000;
    v323 = OUTLINED_FUNCTION_24_57();
    sub_217202078(v323, v324, v325, &qword_217771CA0);
    v326 = OUTLINED_FUNCTION_27_57();
    sub_217202078(v326, v327, v328, &qword_217771CA0);
    OUTLINED_FUNCTION_48_27();
    sub_21725CF00(v18, v8);
    v329 = 0;
    v398 = 0;
    v18 = v393;
    v330 = BYTE8(v393);
    v8 = (v393 + 32);
    v25 = 10;
    v1 = &qword_217758C20;
    if (BYTE8(v393))
    {
LABEL_158:
      OUTLINED_FUNCTION_6();
      swift_beginAccess();
      if (v329 != *(*(v18 + 56) + 16))
      {

        sub_2172945EC();
        goto LABEL_167;
      }
    }

    else
    {
      while (1)
      {
        v331 = *(v18 + 16);
        if (v329 == v331)
        {
          break;
        }

        if ((v329 & 0x8000000000000000) != 0)
        {
          goto LABEL_193;
        }

        if (v329 >= v331)
        {
          goto LABEL_196;
        }

        sub_217202078(v8, v390, &qword_27CB27FD0, &qword_217758C20);
        sub_217202078(v390, &v381, &qword_27CB27FD0, &qword_217758C20);
        if (BYTE8(v383[1]))
        {
          v332 = *(v381 + 16);
          v333 = *(v381 + 24);
          sub_217283C5C(v18, 0);
          sub_217751DE8();

          sub_2172931EC(v332, v333, v334, v335, v336, v337, v338, v339, v367, v368, v369, v370, v371, *(&v371 + 1), v372, *(&v372 + 1), v373, *(&v373 + 1), v374, *(&v374 + 1), v375, v376, v377, v378, v379, v380, v381, *(&v381 + 1), v382, *(&v382 + 1), *&v383[0], *(&v383[0] + 1), *&v383[1], *(&v383[1] + 1), v384, *(&v384 + 1), v385, *(&v385 + 1));

          v25 = 10;
        }

        else
        {
          OUTLINED_FUNCTION_34_44();
          sub_217283C5C(v18, 0);
        }

        sub_2171F06D8(v390, &qword_27CB27FD0, &qword_217758C20);
LABEL_167:
        OUTLINED_FUNCTION_46_36();
        v340 = __OFADD__(v329, 1);
        if (v330)
        {
          sub_21725CF00(v18, 1);
          if (v340)
          {
            goto LABEL_195;
          }
        }

        else
        {
          sub_21725CF00(v18, 0);
          if (v340)
          {
            goto LABEL_194;
          }
        }

        OUTLINED_FUNCTION_15_73();
        OUTLINED_FUNCTION_4_6();
        if (v341)
        {
          OUTLINED_FUNCTION_48_1();
        }

        *&v381 = 10;
        *(&v381 + 1) = 0xE100000000000000;
        v342 = RecordLabel.debugDescription.getter();
        MEMORY[0x21CEA23B0](v342);

        MEMORY[0x21CEA23B0](v381, *(&v381 + 1), v343);

        sub_217283CC4(v390);
        ++v329;
        v8 += 64;
        if (v330)
        {
          goto LABEL_158;
        }
      }
    }

    v398 = v329;
    sub_2171F06D8(&v393, &qword_27CB27FC0, &qword_21776BF30);
    OUTLINED_FUNCTION_207();
    *&v393 = v345 + 3;
    *(&v393 + 1) = v344;
    v390[0] = v399;
    OUTLINED_FUNCTION_2_118();
    *&v387 = v347;
    *(&v387 + 1) = v346;
    sub_21733A5C8(v348, v349, v350);
    OUTLINED_FUNCTION_4_146();
    v367 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    OUTLINED_FUNCTION_49_30(v351, v352, v353, v354, v355, v356, v357, v358, v367);
    OUTLINED_FUNCTION_58_0();
    OUTLINED_FUNCTION_52_32();

    OUTLINED_FUNCTION_16_76();
    OUTLINED_FUNCTION_50_36();

    v359 = &qword_27CB25390;
    v360 = &qword_217771CA0;
    v361 = &v400;
  }

  else
  {
    v359 = &qword_27CB25328;
    v360 = &unk_21775D3F0;
    v361 = &v393;
  }

  sub_2171F06D8(v361, v359, v360);
  MEMORY[0x21CEA23B0](10506, 0xE200000000000000);
  return v408;
}

uint64_t Album.id.getter()
{
  v1 = *v0;
  sub_217751DE8();
  return v1;
}

uint64_t sub_21773D988()
{
  OUTLINED_FUNCTION_16_4();
  if (!v0)
  {
    swift_once();
  }

  v1 = OUTLINED_FUNCTION_50_29();

  return v2(v1);
}

void *sub_21773DA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_16_4();
  if (!v26)
  {
    swift_once();
  }

  v27 = OUTLINED_FUNCTION_50_29();

  return sub_2176CA9A8(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_21773DB00()
{
  OUTLINED_FUNCTION_17_67();
  if (!v0)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_61_22();
  return sub_2172A4380();
}

uint64_t sub_21773DC30()
{
  OUTLINED_FUNCTION_16_4();
  if (!v0)
  {
    swift_once();
  }

  v1 = OUTLINED_FUNCTION_50_29();

  return v2(v1);
}

uint64_t Album.hash(into:)(uint64_t a1)
{
  sub_217751FF8();
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 112))(a1, v3, v4);
}

uint64_t Album.hashValue.getter()
{
  sub_2177531E8();
  sub_217751FF8();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 112))(v4, v1, v2);
  return sub_217753238();
}

uint64_t sub_21773DD84@<X0>(uint64_t *a1@<X8>)
{
  result = Album.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Album.subscript.getter()
{
  OUTLINED_FUNCTION_62_0();
  sub_2172E2038(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_62_0();
  sub_2172E2038(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_62_0();
  v3 = type metadata accessor for MusicItemCollection(0, *(v1 + 264), *(v0 + 272), v2);
  sub_2172E2038(v3, v4, v5);
  swift_getWitnessTable();
  v6 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v6, v7, v8);
}

uint64_t sub_21773DF5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E038, &unk_2177A1A48);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6B726F77747261, 0xE700000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C026F8 = result;
  return result;
}

uint64_t sub_21773DFD0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E028, &qword_2177A1A38);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  v1 = OUTLINED_FUNCTION_30_3();
  result = OUTLINED_FUNCTION_26(v1 & 0xFFFFFFFFFFFFLL | 0x614E000000000000, 0xEA0000000000656DLL, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02818 = result;
  return result;
}

uint64_t sub_21773E040()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E100, &unk_2177A1B20);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x52746E65746E6F63, 0xED0000676E697461, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C027D8 = result;
  return result;
}

uint64_t sub_21773E0C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E028, &qword_2177A1A38);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6867697279706F63, 0xE900000000000074, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C026E8 = result;
  return result;
}

uint64_t sub_21773E138()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E0F8, &qword_2177A1B18);
  OUTLINED_FUNCTION_31_11(v0);
  result = sub_217729830();
  qword_280C02778 = result;
  return result;
}

uint64_t sub_21773E1B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E0F0, &qword_2177A1B10);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  v1 = OUTLINED_FUNCTION_212();
  result = OUTLINED_FUNCTION_26(v1, 0xEE007365746F4E6CLL, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C027C0 = result;
  return result;
}

uint64_t sub_21773E224()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E0E8, &qword_2177A1B08);
  OUTLINED_FUNCTION_31_11(v0);
  OUTLINED_FUNCTION_212();
  result = sub_217729830();
  qword_280C02738 = result;
  return result;
}

uint64_t sub_21773E29C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E0E0, &qword_2177A1B00);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6D614E65726E6567, 0xEA00000000007365, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02810 = result;
  return result;
}

uint64_t sub_21773E314()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E030, &qword_2177A1A40);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6C69706D6F437369, 0xED00006E6F697461, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C027D0 = result;
  return result;
}

uint64_t sub_21773E394()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E030, &qword_2177A1A40);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x656C706D6F437369, 0xEA00000000006574, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02808 = result;
  return result;
}

uint64_t sub_21773E40C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E030, &qword_2177A1A40);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x64726F6572507369, 0xEA00000000007265, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02800 = result;
  return result;
}

uint64_t sub_21773E484()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E030, &qword_2177A1A40);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x656C676E69537369, 0xE800000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C026F0 = result;
  return result;
}

uint64_t sub_21773E4F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E038, &unk_2177A1A48);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x73616D2E72656275, 0xEE00747241726574, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02790 = result;
  return result;
}

uint64_t sub_21773E578()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E0D8, &qword_2177A1AF8);
  OUTLINED_FUNCTION_31_11(v0);
  result = sub_217729830();
  qword_280C02498 = result;
  return result;
}

uint64_t sub_21773E5EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E0D0, &qword_2177A1AF0);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6172615079616C70, 0xEA0000000000736DLL, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C027A8 = result;
  return result;
}

uint64_t sub_21773E664()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E028, &qword_2177A1A38);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x614C64726F636572, 0xEB000000006C6562, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02788 = result;
  return result;
}

uint64_t sub_21773E6E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E050, &qword_2177A1A68);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x44657361656C6572, 0xEB00000000657461, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C027E8 = result;
  return result;
}

uint64_t sub_21773E75C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E028, &qword_2177A1A38);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(1701667182, 0xE400000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02700 = result;
  return result;
}

uint64_t sub_21773E7C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E040, &qword_2177A1A58);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x756F436B63617274, 0xEA0000000000746ELL, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C027F8 = result;
  return result;
}

uint64_t sub_21773E840()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E028, &qword_2177A1A38);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(6516853, 0xE300000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02710 = result;
  return result;
}

uint64_t sub_21773E8AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E0C8, &qword_2177A1AE8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(7107189, 0xE300000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02708 = result;
  return result;
}

uint64_t sub_21773E918()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E040, &qword_2177A1A58);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x657361656C65725FLL, 0xEC00000072616559, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C024F0 = result;
  return result;
}

uint64_t sub_21773E994()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E050, &qword_2177A1A68);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  v1 = OUTLINED_FUNCTION_54_22();
  result = OUTLINED_FUNCTION_26(v1, 0xEE00657461446465, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C027C8 = result;
  return result;
}

uint64_t sub_21773EA08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E070, &qword_2177A1A88);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  v1 = OUTLINED_FUNCTION_54_22();
  result = OUTLINED_FUNCTION_26(v1, 0xEF73757461745365, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02798 = result;
  return result;
}

uint64_t sub_21773EA7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E030, &qword_2177A1A40);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x617262694C73695FLL, 0xEF64656464417972, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C027B8 = result;
  return result;
}

uint64_t sub_21773EAFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E030, &qword_2177A1A40);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000015, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02760 = result;
  return result;
}

uint64_t sub_21773EB70()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E030, &qword_2177A1A40);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000016, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C024B8 = result;
  return result;
}

uint64_t sub_21773EBE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E068, &qword_2177A1A80);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000016, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02748 = result;
  return result;
}

uint64_t sub_21773EC58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E060, &qword_2177A1A78);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000017, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02740 = result;
  return result;
}

uint64_t sub_21773ECCC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E058, &qword_2177A1A70);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD00000000000001ELL, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02720 = result;
  return result;
}

uint64_t sub_21773ED40()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E050, &qword_2177A1A68);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x616F6C6E776F645FLL, 0xEF65746144646564, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C027A0 = result;
  return result;
}

uint64_t sub_21773EDC0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E030, &qword_2177A1A40);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD00000000000001CLL, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02728 = result;
  return result;
}

uint64_t sub_21773EE34()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E030, &qword_2177A1A40);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000025, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02718 = result;
  return result;
}

uint64_t sub_21773EEA8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E028, &qword_2177A1A38);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000019, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02730 = result;
  return result;
}

uint64_t sub_21773EF1C()
{
  if (qword_280BE9448 != -1)
  {
    OUTLINED_FUNCTION_8_5(&qword_280BE9448);
  }

  v0 = qword_280BE9450;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E048, &qword_2177A1A60);
  OUTLINED_FUNCTION_31_11(v1);

  result = sub_21773B6F4(0x6972616C75706F70, 0xEA00000000007974, v0, qword_282959AD0);
  qword_280C024C8 = result;
  return result;
}

uint64_t sub_21773EFB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E0C0, &unk_2177A1AD8);
  OUTLINED_FUNCTION_60(v0);
  OUTLINED_FUNCTION_30_3();
  result = sub_21769A074();
  qword_280BE9438 = result;
  return result;
}

uint64_t sub_21773F034()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E0A0, &qword_2177A1AB8);
  OUTLINED_FUNCTION_60(v0);
  result = sub_21769A070();
  qword_280C027E0 = result;
  return result;
}

uint64_t sub_21773F098()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E0B8, &qword_2177A1AD0);
  OUTLINED_FUNCTION_60(v0);
  result = sub_21769A06C();
  qword_280BE9468 = result;
  return result;
}

uint64_t sub_21773F11C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E020, &qword_2177A1A30);
  OUTLINED_FUNCTION_60(v0);
  result = sub_21769A088();
  qword_280BE9450 = result;
  return result;
}

uint64_t sub_21773F1A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E0A0, &qword_2177A1AB8);
  OUTLINED_FUNCTION_60(v0);
  result = sub_21769A070();
  qword_280BE9418 = result;
  return result;
}

uint64_t sub_21773F228()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E0B0, &qword_2177A1AC8);
  OUTLINED_FUNCTION_60(v0);
  result = sub_217698420(0x6C2D64726F636572, 0xED0000736C656261, 0);
  qword_280BE9620 = result;
  return result;
}

uint64_t sub_21773F2BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E020, &qword_2177A1A30);
  OUTLINED_FUNCTION_60(v0);
  result = sub_21769A088();
  qword_280C02750 = result;
  return result;
}

uint64_t sub_21773F324()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E0A8, &qword_2177A1AC0);
  OUTLINED_FUNCTION_60(v0);
  result = sub_21736C3EC();
  qword_280BE93F0 = result;
  return result;
}

uint64_t sub_21773F3A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E0A0, &qword_2177A1AB8);
  OUTLINED_FUNCTION_60(v0);
  result = sub_21736C3E8();
  qword_280BE95C8 = result;
  return result;
}

uint64_t sub_21773F434()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E0A0, &qword_2177A1AB8);
  OUTLINED_FUNCTION_60(v0);
  OUTLINED_FUNCTION_45_37();
  result = sub_21736C3E8();
  qword_280BE95B0 = result;
  return result;
}

uint64_t sub_21773F4B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E098, &qword_2177A1AB0);
  OUTLINED_FUNCTION_60(v0);
  OUTLINED_FUNCTION_45_37();
  result = sub_21736C3E4();
  qword_280BE9598 = result;
  return result;
}

uint64_t sub_21773F580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C338, &unk_217791BD0);
  OUTLINED_FUNCTION_31_11(v7);
  result = sub_217697A9C(a2, a3, 0, 0xD000000000000013, 0x80000002177B4C90, qword_282959AD0);
  *a4 = result;
  return result;
}

uint64_t sub_21773F628()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E030, &qword_2177A1A40);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000014, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02768 = result;
  return result;
}

uint64_t sub_21773F69C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E050, &qword_2177A1A68);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x616C507473616C5FLL, 0xEF65746144646579, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C027B0 = result;
  return result;
}

uint64_t sub_21773F71C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E050, &qword_2177A1A68);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000011, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02780 = result;
  return result;
}

uint64_t sub_21773F790()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E078, &qword_2177A1A90);
  OUTLINED_FUNCTION_31_11(v0);
  result = sub_2172E3DC4();
  qword_280C02758 = result;
  return result;
}

uint64_t sub_21773F7E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E090, &qword_2177A1AA8);
  OUTLINED_FUNCTION_31_11(v0);
  result = sub_2172E3DC4();
  qword_280C02770 = result;
  return result;
}

uint64_t sub_21773F840()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C398, &qword_217791C30);
  OUTLINED_FUNCTION_31_11(v0);
  result = sub_217697A58(0x486E6F6973726576, 0xEB00000000687361, 0, 0x676E69727453, 0xE600000000000000, qword_282959AF8);
  qword_280C024E8 = result;
  return result;
}

uint64_t sub_21773F8BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E0C8, &qword_2177A1AE8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6163697373616C63, 0xEC0000006C72556CLL, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C024E0 = result;
  return result;
}

uint64_t sub_21773F938()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E030, &qword_2177A1A40);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD00000000000001ELL, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C024A0 = result;
  return result;
}

uint64_t sub_21773F9AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E080, &qword_2177A1A98);
  OUTLINED_FUNCTION_31_11(v0);
  result = sub_2172E3DC4();
  qword_280C024D8 = result;
  return result;
}

uint64_t sub_21773FA00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E088, &qword_2177A1AA0);
  OUTLINED_FUNCTION_31_11(v0);
  result = sub_2172E3DC4();
  qword_280C024B0 = result;
  return result;
}

uint64_t sub_21773FA5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E040, &qword_2177A1A58);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6172546E61656C63, 0xEF746E756F436B63, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C024D0 = result;
  return result;
}

uint64_t sub_21773FADC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E040, &qword_2177A1A58);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000015, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C024C0 = result;
  return result;
}

uint64_t sub_21773FB50()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E040, &qword_2177A1A58);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD00000000000001ALL, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C024A8 = result;
  return result;
}

uint64_t sub_21773FBC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E030, &qword_2177A1A40);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x64656E6E69507369, 0xE800000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02490 = result;
  return result;
}

uint64_t static Album.catalogFilterID(for:)@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath(byte_2177A1698);
  v3 = sub_2177529D8();
  v6 = OUTLINED_FUNCTION_59_22(v3, v4, v5, MEMORY[0x277D83F90]);

  if (v6)
  {
    v7 = 0xE200000000000000;
    v8 = 25705;
LABEL_5:
    *a2 = v8;
    a2[1] = v7;
    return sub_217751DE8();
  }

  KeyPath = swift_getKeyPath(byte_2177A16C0);
  v11 = OUTLINED_FUNCTION_59_22(KeyPath, v9, v10, MEMORY[0x277D83F90]);

  if (v11)
  {
    v7 = 0xE300000000000000;
    v8 = 6516853;
    goto LABEL_5;
  }

  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000021, 0x80000002177AB8F0);
  sub_217752C78();
  MEMORY[0x21CEA23B0](46, 0xE100000000000000);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_21773FDB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_21773FE0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t static Album.validateParametersForLibrarySectionedRequest<A>(with:itemPredicates:itemSortDescriptors:)(uint64_t result, uint64_t a2, uint64_t a3, ValueMetadata *a4)
{
  if (a4 != &type metadata for Track && a4 != &type metadata for MusicVideo && a4 != &type metadata for Song)
  {
    sub_2173546F8(result, a2, a3);
    swift_allocError();
    *v6 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t Album.init(from:)(void *a1)
{
  sub_2171FF30C(a1, v3);
  sub_2172EE540();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Album.description.getter()
{
  sub_217752AA8();

  MEMORY[0x21CEA23B0](*v0, v0[1], v1);
  MEMORY[0x21CEA23B0](0x656C746974202C22, 0xEB0000000022203ALL);
  if (qword_280BE9470 != -1)
  {
    OUTLINED_FUNCTION_118_10(&qword_280BE9470);
  }

  v2 = sub_2172A4380();
  v4 = OUTLINED_FUNCTION_41_35(v2, v3);
  if (v6)
  {
    v7 = 0xE000000000000000;
  }

  else
  {
    v7 = v5;
  }

  MEMORY[0x21CEA23B0](v4, v7);

  MEMORY[0x21CEA23B0](0xD000000000000010, 0x80000002177B4860, v8);
  if (qword_280BE9680 != -1)
  {
    OUTLINED_FUNCTION_108_11(&qword_280BE9680);
  }

  v9 = sub_2172A4380();
  v11 = OUTLINED_FUNCTION_41_35(v9, v10);
  if (v6)
  {
    v13 = 0xE000000000000000;
  }

  else
  {
    v13 = v12;
  }

  MEMORY[0x21CEA23B0](v11, v13);

  MEMORY[0x21CEA23B0](10530, 0xE200000000000000, v14);
  return 0x6469286D75626C41;
}

double sub_217740164()
{
  v0 = sub_217753348();
  v2 = v1;
  if (qword_280BEB7A0 != -1)
  {
    swift_once();
  }

  v3 = off_280BEB7A8;
  v4 = *(off_280BEB7A8 + 2);
  sub_217751DE8();
  os_unfair_lock_lock(v4);
  sub_21770FA7C(v0, v2, &type metadata for Album, &protocol witness table for Album, v6);
  os_unfair_lock_unlock(v3[2]);
  swift_bridgeObjectRelease_n();
  result = *v6;
  xmmword_280BE85C0 = v6[0];
  xmmword_280BE85D0 = v6[1];
  return result;
}

uint64_t static Album.typeValue.getter()
{
  if (qword_280BE85B8 != -1)
  {
    OUTLINED_FUNCTION_41_1(&qword_280BE85B8);
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE85C0);

  return sub_217751DE8();
}

uint64_t sub_2177402A4()
{
  if (qword_280BE85B8 != -1)
  {
    OUTLINED_FUNCTION_41_1(&qword_280BE85B8);
  }

  xmmword_280BE62F8 = xmmword_280BE85C0;
  xmmword_280BE6308 = xmmword_280BE85D0;

  return sub_217751DE8();
}

uint64_t static MusicItemTypeValue.album.getter()
{
  if (qword_280BE62F0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE62F8);

  return sub_217751DE8();
}

unint64_t sub_217740378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE2B28;
  if (!qword_280BE2B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2B28);
  }

  return result;
}

void OUTLINED_FUNCTION_14_74()
{

  JUMPOUT(0x21CEA23B0);
}

__n128 OUTLINED_FUNCTION_15_73()
{
  v2 = *(v0 + 96);
  *(v0 + 400) = *(v0 + 112);
  *(v0 + 416) = v2;
  result = *(v0 + 80);
  *(v0 + 432) = result;
  *(v0 + 448) = v1;
  return result;
}

void OUTLINED_FUNCTION_16_76()
{

  JUMPOUT(0x21CEA23B0);
}

__n128 OUTLINED_FUNCTION_34_44()
{
  v1 = *(v0 + 192);
  *(v0 + 304) = *(v0 + 176);
  *(v0 + 320) = v1;
  result = *(v0 + 208);
  *(v0 + 336) = result;
  *(v0 + 352) = *(v0 + 224);
  return result;
}

__n128 OUTLINED_FUNCTION_46_36()
{
  v1 = *(v0 + 304);
  *(v0 + 96) = *(v0 + 320);
  *(v0 + 112) = v1;
  result = *(v0 + 336);
  *(v0 + 80) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_48_27()
{
  sub_217283C5C(*(v0 + 400), *(v0 + 408));

  return sub_2171F06D8(v0 + 400, v1, v2);
}

uint64_t OUTLINED_FUNCTION_49_36()
{
  sub_217283C5C(*(v0 + 400), *(v0 + 408));

  return sub_2171F06D8(v0 + 400, v1, v2);
}

void OUTLINED_FUNCTION_50_36()
{

  JUMPOUT(0x21CEA23B0);
}

void OUTLINED_FUNCTION_51_29()
{

  JUMPOUT(0x21CEA23B0);
}

void OUTLINED_FUNCTION_52_32()
{

  JUMPOUT(0x21CEA23B0);
}

void OUTLINED_FUNCTION_61_23()
{

  JUMPOUT(0x21CEA23B0);
}

BOOL sub_2177406B0(uint64_t a1)
{
  v1 = sub_217752DC8();

  return v1 != 0;
}

BOOL sub_217740704@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2177406B0(*a1);
  *a2 = result;
  return result;
}

BOOL sub_217740784@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2177406B0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_2177407C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217740A10(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2177407FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217740A10(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t static CloudContributors.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2 && (sub_2172849CC() & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v2)
  {
    return 1;
  }

  return 0;
}

uint64_t CloudContributors.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E108, &unk_2177A1B30);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v15 - v7;
  v9 = *v1;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217740A10(v10, v11, v12);
  sub_217751DE8();
  sub_2177532F8();
  v15[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C40, &qword_217759640);
  sub_217740D78(&qword_27CB2E118, sub_2172E1B18, MEMORY[0x277D83948]);
  sub_217752F38();

  return (*(v5 + 8))(v8, v3, v13);
}

unint64_t sub_217740A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2E110;
  if (!qword_27CB2E110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E110);
  }

  return result;
}

uint64_t CloudContributors.hash(into:)()
{
  if (!*v0)
  {
    return sub_217753208();
  }

  sub_217753208();

  return sub_2172849D8();
}

uint64_t CloudContributors.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  sub_217753208();
  if (v1)
  {
    sub_2172849D8();
  }

  return sub_217753238();
}

uint64_t CloudContributors.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E120, &qword_2177A1B40);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v15 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217740A10(v11, v12, v13);
  sub_2177532C8();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C40, &qword_217759640);
    sub_217740D78(&qword_27CB2E128, sub_2172E1C68, MEMORY[0x277D83978]);
    sub_217752E58();
    (*(v7 + 8))(v10, v5);
    *a2 = v15[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_217740D18(uint64_t a1)
{
  v2 = *v1;
  sub_2177531E8();
  sub_217753208();
  if (v2)
  {
    sub_2172849D8();
  }

  return sub_217753238();
}

uint64_t sub_217740D78(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24C40, &qword_217759640);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217740DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2E130;
  if (!qword_27CB2E130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E130);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudContributors.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_217740F08()
{
  result = qword_27CB2E138;
  if (!qword_27CB2E138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2E140, qword_2177A1CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E138);
  }

  return result;
}

unint64_t sub_217740F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2E148;
  if (!qword_27CB2E148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E148);
  }

  return result;
}

unint64_t sub_217740FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2E150;
  if (!qword_27CB2E150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E150);
  }

  return result;
}

unint64_t sub_217741020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2E158[0];
  if (!qword_27CB2E158[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CB2E158);
  }

  return result;
}

double MusicItemCollection.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  OUTLINED_FUNCTION_171_1();
  v4 = sub_217751DC8();
  OUTLINED_FUNCTION_171_1();
  v5 = sub_217751DC8();

  *a2 = a1;
  *(a2 + 8) = 1;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0;
  *(a2 + 88) = v4;
  *(a2 + 96) = v5;
  return result;
}

double MusicItemCollection.init<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a5;
  v10 = type metadata accessor for RelatedItem(0, a2, a4, a4);
  v12 = sub_21726C3E4(sub_217747F88, v17, a3, v10, MEMORY[0x277D84A98], a5, MEMORY[0x277D84AC0], v11);
  OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_57_29();
  v13 = sub_217751DC8();
  OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_57_29();
  v14 = sub_217751DC8();
  OUTLINED_FUNCTION_41_0();
  (*(v15 + 8))(a1, a3);
  *a6 = v12;
  *(a6 + 8) = 0;
  result = 0.0;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0;
  *(a6 + 88) = v13;
  *(a6 + 96) = v14;
  return result;
}

BOOL MusicItemCollection.hasNextBatch.getter()
{
  sub_217747ECC(v0 + 16, v3, &qword_27CB24188, &dword_217758930);
  v1 = v4 != 0;
  sub_2171F0790(v3, &qword_27CB24188, &dword_217758930);
  return v1;
}

uint64_t sub_2177412C4(uint64_t a1, void (*a2)(uint64_t, _OWORD *), char a3)
{
  v5 = *(a1 + 16);
  v6 = a1 + 32;
  for (i = MEMORY[0x277D84F90]; v5; --v5)
  {
    a2(v6, v20);
    v21[24] = a3;
    v17 = v20[0];
    v18 = v20[1];
    *v19 = *v21;
    *&v19[9] = *&v21[9];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = OUTLINED_FUNCTION_17();
      sub_2172B2B30(v11, v12, v13, i);
      i = v14;
    }

    v9 = *(i + 16);
    v8 = *(i + 24);
    if (v9 >= v8 >> 1)
    {
      sub_2172B2B30(v8 > 1, v9 + 1, 1, i);
      i = v15;
    }

    *(i + 16) = v9 + 1;
    v10 = (i + (v9 << 6));
    *(v10 + 73) = *&v19[9];
    v10[3] = v18;
    v10[4] = *v19;
    v10[2] = v17;
    v6 += 56;
  }

  return i;
}

uint64_t sub_2177413D8(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 32;
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    v5 = ~v1;
    v6 = v3 + (v1 << 6);
    v7 = v2 - v1;
    if (v2 == v1)
    {
      break;
    }

    while (1)
    {
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
      sub_217283ECC(v6, &v17);
      if (v21)
      {
        sub_217283F28(&v17);
      }

      else
      {
        sub_2171F0790(&v22, &unk_27CB275E0, &qword_2177589D0);
        v22 = v17;
        v23 = v18;
        v24 = v19;
        v25 = v20;
      }

      if (*(&v22 + 1))
      {
        break;
      }

      sub_2171F0790(&v22, &unk_27CB275E0, &qword_2177589D0);
      --v5;
      v6 += 64;
      if (!--v7)
      {
        return v4;
      }
    }

    v17 = v22;
    v18 = v23;
    v19 = v24;
    v20 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2172B146C(0, *(v4 + 16) + 1, 1, v4);
      v4 = v14;
    }

    v9 = *(v4 + 16);
    v8 = *(v4 + 24);
    if (v9 >= v8 >> 1)
    {
      sub_2172B146C(v8 > 1, v9 + 1, 1, v4);
      v4 = v15;
    }

    v1 = -v5;
    *(v4 + 16) = v9 + 1;
    v10 = v4 + 56 * v9;
    v11 = v17;
    v12 = v18;
    v13 = v19;
    *(v10 + 80) = v20;
    *(v10 + 48) = v12;
    *(v10 + 64) = v13;
    *(v10 + 32) = v11;
  }

  return v4;
}

uint64_t sub_217741580(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 32;
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    v5 = ~v1;
    v6 = v3 + (v1 << 6);
    v7 = v2 - v1;
    if (v2 == v1)
    {
      break;
    }

    while (1)
    {
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
      sub_217283ECC(v6, &v17);
      if (v21 == 1)
      {
        sub_2171F0790(&v22, &unk_27CB28A90, &qword_217758F90);
        v22 = v17;
        v23 = v18;
        v24 = v19;
        v25 = v20;
      }

      else
      {
        sub_217283F28(&v17);
      }

      if (*(&v22 + 1))
      {
        break;
      }

      sub_2171F0790(&v22, &unk_27CB28A90, &qword_217758F90);
      --v5;
      v6 += 64;
      if (!--v7)
      {
        return v4;
      }
    }

    v17 = v22;
    v18 = v23;
    v19 = v24;
    v20 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2172B10DC(0, *(v4 + 16) + 1, 1, v4);
      v4 = v14;
    }

    v9 = *(v4 + 16);
    v8 = *(v4 + 24);
    if (v9 >= v8 >> 1)
    {
      sub_2172B10DC(v8 > 1, v9 + 1, 1, v4);
      v4 = v15;
    }

    v1 = -v5;
    *(v4 + 16) = v9 + 1;
    v10 = v4 + 56 * v9;
    v11 = v17;
    v12 = v18;
    v13 = v19;
    *(v10 + 80) = v20;
    *(v10 + 48) = v12;
    *(v10 + 64) = v13;
    *(v10 + 32) = v11;
  }

  return v4;
}

uint64_t sub_21774172C(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 32;
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    v5 = ~v1;
    v6 = v3 + (v1 << 6);
    v7 = v2 - v1;
    if (v2 == v1)
    {
      break;
    }

    while (1)
    {
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
      sub_217283ECC(v6, &v17);
      if (v21 == 2)
      {
        sub_2171F0790(&v22, &unk_27CB2AF80, &qword_217758C30);
        v22 = v17;
        v23 = v18;
        v24 = v19;
        v25 = v20;
      }

      else
      {
        sub_217283F28(&v17);
      }

      if (*(&v22 + 1))
      {
        break;
      }

      sub_2171F0790(&v22, &unk_27CB2AF80, &qword_217758C30);
      --v5;
      v6 += 64;
      if (!--v7)
      {
        return v4;
      }
    }

    v17 = v22;
    v18 = v23;
    v19 = v24;
    v20 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2172B2878(0, *(v4 + 16) + 1, 1, v4);
      v4 = v14;
    }

    v9 = *(v4 + 16);
    v8 = *(v4 + 24);
    if (v9 >= v8 >> 1)
    {
      sub_2172B2878(v8 > 1, v9 + 1, 1, v4);
      v4 = v15;
    }

    v1 = -v5;
    *(v4 + 16) = v9 + 1;
    v10 = v4 + 56 * v9;
    v11 = v17;
    v12 = v18;
    v13 = v19;
    *(v10 + 80) = v20;
    *(v10 + 48) = v12;
    *(v10 + 64) = v13;
    *(v10 + 32) = v11;
  }

  return v4;
}

double MusicItemCollection.init<A>(updatedItems:existingCollection:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v14 = type metadata accessor for RelatedItem(0, a3, a5, a4);
  v29 = sub_21726C3E4(sub_217744428, v30, a4, v14, MEMORY[0x277D84A98], a6, MEMORY[0x277D84AC0], v15);
  OUTLINED_FUNCTION_41_0();
  (*(v16 + 8))(a1, a4);
  sub_217747ECC((a2 + 2), v35, &qword_27CB24188, &dword_217758930);
  v18 = a2[7];
  v17 = a2[8];
  v19 = a2[10];
  v28 = a2[9];
  v20 = a2[11];
  v21 = a2[12];
  v23 = type metadata accessor for MusicItemCollection(0, a3, a5, v22);
  OUTLINED_FUNCTION_41_0();
  v25 = *(v24 + 8);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  v25(a2, v23);
  *a7 = v29;
  *(a7 + 8) = 0;
  result = *v35;
  v27 = v35[1];
  *(a7 + 16) = v35[0];
  *(a7 + 32) = v27;
  *(a7 + 48) = v36;
  *(a7 + 56) = v18;
  *(a7 + 64) = v17;
  *(a7 + 72) = v28;
  *(a7 + 80) = v19;
  *(a7 + 88) = v20;
  *(a7 + 96) = v21;
  return result;
}

double MusicItemCollection.init(arrayLiteral:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = a1;
  v7 = sub_217752418();
  WitnessTable = swift_getWitnessTable();
  return MusicItemCollection.init<A>(_:)(&v10, a2, v7, a3, WitnessTable, a4);
}

uint64_t static MusicItemCollection<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 64);
  v9 = *(a2 + 64);
  if (v8)
  {
    if (!v9)
    {
      goto LABEL_17;
    }

    v10 = *(a1 + 56) == *(a2 + 56) && v8 == v9;
    if (!v10 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v9)
  {
    goto LABEL_17;
  }

  sub_217747ECC(a1 + 16, v50, &qword_27CB24188, &dword_217758930);
  sub_217747ECC(a2 + 16, &v52, &qword_27CB24188, &dword_217758930);
  if (v51)
  {
    sub_217747ECC(v50, v49, &qword_27CB24188, &dword_217758930);
    if (*(&v53 + 1))
    {
      v47[0] = v52;
      v47[1] = v53;
      v48 = v54;
      v11 = v49[4];
      __swift_project_boxed_opaque_existential_1(v49, v49[3]);
      v12 = *(v11 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244A0, &qword_21777F1E0);
      OUTLINED_FUNCTION_57_29();
      v18 = v12(v13, v14, v15, v16, v17);
      sub_217283154(v47);
      sub_217283154(v49);
      sub_2171F0790(v50, &qword_27CB24188, &dword_217758930);
      goto LABEL_18;
    }

    sub_217283154(v49);
  }

  else if (!*(&v53 + 1))
  {
    sub_2171F0790(v50, &qword_27CB24188, &dword_217758930);
    v18 = 1;
    goto LABEL_18;
  }

  sub_2171F0790(v50, &qword_27CB24928, &unk_21775E020);
LABEL_17:
  v18 = 0;
LABEL_18:
  v19 = *a1;
  v20 = *a2;
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      v21 = OUTLINED_FUNCTION_91_17();
      type metadata accessor for LegacySectionedCollectionItemLoader(v21, v22, v23, v24);
      v25 = OUTLINED_FUNCTION_965();
      sub_217283C5C(v25, 1);
      v26 = OUTLINED_FUNCTION_188_1();
      sub_217283C5C(v26, v27);
      v28 = static LegacySectionedCollectionItemLoader.== infix(_:_:)(v19, v20);
      sub_21725CF00(v20, 1);
      v29 = OUTLINED_FUNCTION_188_1();
LABEL_25:
      sub_21725CF00(v29, v30);
      return v28 & 1;
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
    if ((v18 & 1) == 0)
    {
      v28 = 0;
      return v28 & 1;
    }

    v36 = OUTLINED_FUNCTION_84_11();
    sub_217283C5C(v36, v37);
    v38 = OUTLINED_FUNCTION_1479();
    sub_217283C5C(v38, v39);
    v40 = OUTLINED_FUNCTION_91_17();
    type metadata accessor for RelatedItem(v40, v41, v42, v43);
    v55 = a5;
    swift_getWitnessTable();
    v28 = sub_217752448();
    v44 = OUTLINED_FUNCTION_1479();
    sub_21725CF00(v44, v45);
    v29 = OUTLINED_FUNCTION_84_11();
    goto LABEL_25;
  }

  v31 = OUTLINED_FUNCTION_91_17();
  v35 = type metadata accessor for MusicItemCollection(v31, v32, v33, v34);
  MusicItemCollection.items.getter(v35);
  MusicItemCollection.items.getter(v35);
  OUTLINED_FUNCTION_55_16();
  v28 = sub_217752448();

  return v28 & 1;
}

__n128 sub_217741DEC@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  result = *a3;
  v11 = *(a3 + 16);
  *(a9 + 16) = *a3;
  *(a9 + 32) = v11;
  *(a9 + 48) = *(a3 + 32);
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 72) = a6;
  *(a9 + 80) = a7;
  *(a9 + 88) = a8;
  *(a9 + 96) = a10;
  return result;
}

uint64_t MusicItemCollection.items.getter(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 8))
  {

    v3 = sub_21774DFE8();
    v4 = v2;
    v5 = 1;
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    OUTLINED_FUNCTION_36_27();
    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    *(v9 - 16) = v8;
    *(v9 - 8) = v7;
    swift_getKeyPath(byte_2177A1DD8);
    type metadata accessor for RelatedItem(255, v8, v7, v10);
    sub_217752418();
    sub_217751DE8();
    OUTLINED_FUNCTION_33();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_171_1();
    v3 = sub_2175FA70C(v11, v12, v13, v8, v14, v15, v16, v17);

    v4 = OUTLINED_FUNCTION_99_17();
  }

  sub_21725CF00(v4, v5);
  return v3;
}

uint64_t sub_217741F40(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_2177473CC(a1, sub_217747ADC, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

void sub_217741FC4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_23_61(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_77_18();
    MEMORY[0x28223BE20](v6);
    OUTLINED_FUNCTION_36_27();
    *(v7 - 16) = &type metadata for Album;
    *(v7 - 8) = &protocol witness table for Album;
    swift_getKeyPath(byte_2177A2548);
    OUTLINED_FUNCTION_84_16();
    v8 = OUTLINED_FUNCTION_93_10();
    OUTLINED_FUNCTION_133_13(v8, v9);
    OUTLINED_FUNCTION_70_22();
    v10 = sub_217554A88();

    v11 = sub_2177412C4(v10, sub_21725CF0C, 0);

    if (*(v11 + 16))
    {
      OUTLINED_FUNCTION_55_29(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_89_21();
      do
      {
        sub_217283ECC(v1, v60);
        OUTLINED_FUNCTION_36_42();
        if (v13)
        {
          OUTLINED_FUNCTION_53_32(v12);
        }

        OUTLINED_FUNCTION_11_89();
      }

      while (!v14);
      OUTLINED_FUNCTION_112_16();
    }

    else
    {

      v39 = OUTLINED_FUNCTION_93_10();
      sub_21725CF00(v39, v40);
    }

LABEL_28:
    sub_217747ECC(v3 + 16, v0 + 16, &qword_27CB24188, &dword_217758930);
    OUTLINED_FUNCTION_15_74();
    OUTLINED_FUNCTION_108_14();
    sub_217751DE8();
    OUTLINED_FUNCTION_13();
  }

  else
  {
    v43 = v3;
    v44 = v0;
    v15 = *(v2 + 16);
    sub_217751DE8();
    v16 = v2 + 32;
    v42 = v2 + 32;
LABEL_10:
    for (i = v16; ; i = OUTLINED_FUNCTION_92_19())
    {
      if (!v15)
      {
        sub_21725CF00(v2, 0);
        v3 = v43;
        v0 = v44;
        goto LABEL_28;
      }

      if (!*(v2 + 16))
      {
        break;
      }

      v46 = i;
      OUTLINED_FUNCTION_57_29();
      sub_217747ECC(v18, v19, v20, v21);
      OUTLINED_FUNCTION_9_101();
      OUTLINED_FUNCTION_40_40();
      if (v49)
      {
        OUTLINED_FUNCTION_18_65();

        v22 = OUTLINED_FUNCTION_49_37();
        sub_217292A88(v22, v23, v24, v25, v26, v27, v28, v29, v41, v42, v43, v44, v45, v46, v47[0], v47[1], v47[2], v47[3], v47[4], v47[5], v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58[0], v58[1], v58[2], v58[3], v58[4], v58[5], v58[6], v59);

        OUTLINED_FUNCTION_24_58();
      }

      else
      {
        OUTLINED_FUNCTION_8_95();
        v56 = v48;
      }

      OUTLINED_FUNCTION_7_98();
      v30 = OUTLINED_FUNCTION_48_28();
      sub_21725CF0C(v30, v31);
      LOBYTE(v59) = 0;
      sub_21725CE44(v47);
      if (v59 == 255)
      {
        sub_2171F0790(v58, &unk_27CB2AEA0, &unk_21775A260);
      }

      else
      {
        OUTLINED_FUNCTION_171_1();
        sub_2171F0790(v32, v33, v34);
        OUTLINED_FUNCTION_6_118();
        OUTLINED_FUNCTION_93_17();
      }

      OUTLINED_FUNCTION_20_58();
      if (v60[57] != 255)
      {
        if ((OUTLINED_FUNCTION_32_53() & 1) == 0)
        {
          OUTLINED_FUNCTION_17();
          sub_2172B2B60();
        }

        v16 = v42;
        OUTLINED_FUNCTION_88_20();
        if (v13)
        {
          OUTLINED_FUNCTION_11_1(v38);
          sub_2172B2B60();
        }

        OUTLINED_FUNCTION_12_75();
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_171_1();
      sub_2171F0790(v35, v36, v37);
    }

    __break(1u);
  }
}

void sub_2177422CC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_23_61(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_77_18();
    MEMORY[0x28223BE20](v6);
    OUTLINED_FUNCTION_36_27();
    *(v7 - 16) = &type metadata for Playlist;
    *(v7 - 8) = &protocol witness table for Playlist;
    swift_getKeyPath(byte_2177A2548);
    OUTLINED_FUNCTION_84_16();
    v8 = OUTLINED_FUNCTION_93_10();
    OUTLINED_FUNCTION_133_13(v8, v9);
    OUTLINED_FUNCTION_70_22();
    v10 = sub_217554ACC();

    v11 = sub_2177412C4(v10, sub_2172757C0, 1);

    if (*(v11 + 16))
    {
      OUTLINED_FUNCTION_55_29(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_89_21();
      do
      {
        sub_217283ECC(v1, v55);
        OUTLINED_FUNCTION_36_42();
        if (v13)
        {
          OUTLINED_FUNCTION_53_32(v12);
        }

        OUTLINED_FUNCTION_11_89();
      }

      while (!v14);
      OUTLINED_FUNCTION_112_16();
    }

    else
    {

      v33 = OUTLINED_FUNCTION_93_10();
      sub_21725CF00(v33, v34);
    }

LABEL_28:
    sub_217747ECC(v3 + 16, v0 + 16, &qword_27CB24188, &dword_217758930);
    OUTLINED_FUNCTION_15_74();
    OUTLINED_FUNCTION_108_14();
    sub_217751DE8();
    OUTLINED_FUNCTION_13();
  }

  else
  {
    v36 = v3;
    v37 = v0;
    v15 = *(v2 + 16);
    sub_217751DE8();
    v16 = v2 + 32;
    v38 = v2 + 32;
LABEL_10:
    for (i = v16; ; i = OUTLINED_FUNCTION_92_19())
    {
      if (!v15)
      {
        sub_21725CF00(v2, 0);
        v3 = v36;
        v0 = v37;
        goto LABEL_28;
      }

      if (!*(v2 + 16))
      {
        break;
      }

      v40 = i;
      OUTLINED_FUNCTION_57_29();
      sub_217747ECC(v18, v19, v20, v21);
      OUTLINED_FUNCTION_9_101();
      OUTLINED_FUNCTION_40_40();
      if (v43)
      {
        OUTLINED_FUNCTION_18_65();

        v22 = OUTLINED_FUNCTION_49_37();
        sub_21729290C(v22, v23, v24, v25, v26, v27, v28, v29, v35, v36, v37, v38, v39, v40, v41[0], v41[1], v41[2], v41[3], v41[4], v41[5], v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52[0], v52[1], v52[2], v52[3], v52[4], v52[5], v52[6], v53);

        OUTLINED_FUNCTION_24_58();
        v16 = v38;
      }

      else
      {
        OUTLINED_FUNCTION_8_95();
        v50 = v42;
      }

      OUTLINED_FUNCTION_7_98();
      v30 = OUTLINED_FUNCTION_48_28();
      sub_2172757C0(v30, v31);
      LOBYTE(v53) = 1;
      sub_21726B8C4(v41);
      if (v53 == 255)
      {
        sub_2171F0790(v52, &unk_27CB2AEA0, &unk_21775A260);
      }

      else
      {
        sub_2171F0790(&v54, &qword_27CB2E268, &qword_2177A2560);
        OUTLINED_FUNCTION_6_118();
        OUTLINED_FUNCTION_93_17();
      }

      OUTLINED_FUNCTION_20_58();
      if (v55[57] != 255)
      {
        if ((OUTLINED_FUNCTION_32_53() & 1) == 0)
        {
          OUTLINED_FUNCTION_17();
          sub_2172B2B60();
        }

        OUTLINED_FUNCTION_88_20();
        if (v13)
        {
          OUTLINED_FUNCTION_11_1(v32);
          sub_2172B2B60();
        }

        OUTLINED_FUNCTION_12_75();
        goto LABEL_10;
      }

      sub_2171F0790(v55, &qword_27CB2E268, &qword_2177A2560);
    }

    __break(1u);
  }
}

void sub_2177425D8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_23_61(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_77_18();
    MEMORY[0x28223BE20](v6);
    OUTLINED_FUNCTION_36_27();
    *(v7 - 16) = &type metadata for Station;
    *(v7 - 8) = &protocol witness table for Station;
    swift_getKeyPath(byte_2177A2548);
    OUTLINED_FUNCTION_84_16();
    v8 = OUTLINED_FUNCTION_93_10();
    OUTLINED_FUNCTION_133_13(v8, v9);
    OUTLINED_FUNCTION_70_22();
    v10 = sub_217554B10();

    v11 = sub_2177412C4(v10, sub_217283D6C, 2);

    if (*(v11 + 16))
    {
      OUTLINED_FUNCTION_55_29(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_89_21();
      do
      {
        sub_217283ECC(v1, v55);
        OUTLINED_FUNCTION_36_42();
        if (v13)
        {
          OUTLINED_FUNCTION_53_32(v12);
        }

        OUTLINED_FUNCTION_11_89();
      }

      while (!v14);
      OUTLINED_FUNCTION_112_16();
    }

    else
    {

      v33 = OUTLINED_FUNCTION_93_10();
      sub_21725CF00(v33, v34);
    }

LABEL_28:
    sub_217747ECC(v3 + 16, v0 + 16, &qword_27CB24188, &dword_217758930);
    OUTLINED_FUNCTION_15_74();
    OUTLINED_FUNCTION_108_14();
    sub_217751DE8();
    OUTLINED_FUNCTION_13();
  }

  else
  {
    v36 = v3;
    v37 = v0;
    v15 = *(v2 + 16);
    sub_217751DE8();
    v16 = v2 + 32;
    v38 = v2 + 32;
LABEL_10:
    for (i = v16; ; i = OUTLINED_FUNCTION_92_19())
    {
      if (!v15)
      {
        sub_21725CF00(v2, 0);
        v3 = v36;
        v0 = v37;
        goto LABEL_28;
      }

      if (!*(v2 + 16))
      {
        break;
      }

      v40 = i;
      OUTLINED_FUNCTION_57_29();
      sub_217747ECC(v18, v19, v20, v21);
      OUTLINED_FUNCTION_9_101();
      OUTLINED_FUNCTION_40_40();
      if (v43)
      {
        OUTLINED_FUNCTION_18_65();

        v22 = OUTLINED_FUNCTION_49_37();
        sub_217292790(v22, v23, v24, v25, v26, v27, v28, v29, v35, v36, v37, v38, v39, v40, v41[0], v41[1], v41[2], v41[3], v41[4], v41[5], v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52[0], v52[1], v52[2], v52[3], v52[4], v52[5], v52[6], v53);

        OUTLINED_FUNCTION_24_58();
        v16 = v38;
      }

      else
      {
        OUTLINED_FUNCTION_8_95();
        v50 = v42;
      }

      OUTLINED_FUNCTION_7_98();
      v30 = OUTLINED_FUNCTION_48_28();
      sub_217283D6C(v30, v31);
      LOBYTE(v53) = 2;
      sub_217283DC8(v41);
      if (v53 == 255)
      {
        sub_2171F0790(v52, &unk_27CB2AEA0, &unk_21775A260);
      }

      else
      {
        sub_2171F0790(&v54, &qword_27CB2E268, &qword_2177A2560);
        OUTLINED_FUNCTION_6_118();
        OUTLINED_FUNCTION_93_17();
      }

      OUTLINED_FUNCTION_20_58();
      if (v55[57] != 255)
      {
        if ((OUTLINED_FUNCTION_32_53() & 1) == 0)
        {
          OUTLINED_FUNCTION_17();
          sub_2172B2B60();
        }

        OUTLINED_FUNCTION_88_20();
        if (v13)
        {
          OUTLINED_FUNCTION_11_1(v32);
          sub_2172B2B60();
        }

        OUTLINED_FUNCTION_12_75();
        goto LABEL_10;
      }

      sub_2171F0790(v55, &qword_27CB2E268, &qword_2177A2560);
    }

    __break(1u);
  }
}

void sub_2177428E4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_22_66(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_77_18();
    MEMORY[0x28223BE20](v6);
    OUTLINED_FUNCTION_36_27();
    *(v7 - 16) = &type metadata for MusicPersonalRecommendation.Item;
    *(v7 - 8) = &protocol witness table for MusicPersonalRecommendation.Item;
    swift_getKeyPath(byte_2177A2548);
    OUTLINED_FUNCTION_84_16();
    v8 = OUTLINED_FUNCTION_78_13();
    OUTLINED_FUNCTION_133_13(v8, v9);
    OUTLINED_FUNCTION_70_22();
    v10 = sub_217554E94();

    v11 = sub_2177413D8(v10);

    if (*(v11 + 16))
    {
      v29 = v2;
      v12 = OUTLINED_FUNCTION_38_38(MEMORY[0x277D84F90]);
      sub_2172762D8(v12, v13, v14);
      do
      {
        sub_21725CF0C(v11 + 32, &v40);
        OUTLINED_FUNCTION_37_41();
        if (v16)
        {
          v18 = OUTLINED_FUNCTION_35_43(v15);
          sub_2172762D8(v18, v19, v20);
        }

        OUTLINED_FUNCTION_5_117();
      }

      while (!v17);
      OUTLINED_FUNCTION_87_21();
LABEL_31:
      v2 = v29;
    }

    else
    {

      v26 = OUTLINED_FUNCTION_78_13();
      sub_21725CF00(v26, v27);
    }

    sub_217747ECC(v2 + 16, v1 + 16, &qword_27CB24188, &dword_217758930);
    OUTLINED_FUNCTION_14_75();
    OUTLINED_FUNCTION_108_14();
    sub_217751DE8();
    OUTLINED_FUNCTION_13();
  }

  else
  {
    OUTLINED_FUNCTION_106_14();
    v1 = 0;
    v21 = v3 + 32;
    v30 = MEMORY[0x277D84F90];
    v28 = v3 + 32;
LABEL_10:
    for (i = v21 + (v1 << 6); ; i += 64)
    {
      if (v0 == v1)
      {
        OUTLINED_FUNCTION_132_14();
        goto LABEL_31;
      }

      if (v1 >= *(v3 + 16))
      {
        break;
      }

      OUTLINED_FUNCTION_69_23();
      OUTLINED_FUNCTION_9_101();
      OUTLINED_FUNCTION_56_21();
      if (v34)
      {
        OUTLINED_FUNCTION_34_45();

        OUTLINED_FUNCTION_50_37();
        v3 = v31;

        OUTLINED_FUNCTION_107_13();
        v0 = &qword_27CB2E280;
      }

      else
      {
        OUTLINED_FUNCTION_8_95();
        v36 = v33;
      }

      OUTLINED_FUNCTION_7_98();
      OUTLINED_FUNCTION_25_66();
      if (HIBYTE(v36))
      {
        sub_217283F28(&v35);
      }

      else
      {
        sub_2171F0790(v37, &unk_27CB275E0, &qword_2177589D0);
        OUTLINED_FUNCTION_21_57();
      }

      sub_217283F28(v32);
      if (v37[1])
      {
        sub_2171F0790(&v38, &qword_27CB2E280, &qword_2177A2588);
        OUTLINED_FUNCTION_6_118();
        OUTLINED_FUNCTION_90_19();
      }

      else
      {
        sub_2171F0790(v37, &unk_27CB275E0, &qword_2177589D0);
      }

      OUTLINED_FUNCTION_19_54();
      if (v39[56] != 255)
      {
        if (OUTLINED_FUNCTION_33_51())
        {
          v21 = v28;
          v23 = v30;
        }

        else
        {
          OUTLINED_FUNCTION_17();
          sub_2172B3260();
          v21 = v28;
        }

        OUTLINED_FUNCTION_54_29(v23);
        if (v16)
        {
          OUTLINED_FUNCTION_11_1(v24);
          sub_2172B3260();
          v30 = v25;
        }

        OUTLINED_FUNCTION_3_136();
        goto LABEL_10;
      }

      sub_2171F0790(v39, &qword_27CB2E280, &qword_2177A2588);
      ++v1;
    }

    __break(1u);
  }
}

void sub_217742C00()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_22_66(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_77_18();
    MEMORY[0x28223BE20](v6);
    OUTLINED_FUNCTION_36_27();
    *(v7 - 16) = &type metadata for MusicPersonalRecommendation.Item;
    *(v7 - 8) = &protocol witness table for MusicPersonalRecommendation.Item;
    swift_getKeyPath(byte_2177A2548);
    OUTLINED_FUNCTION_84_16();
    v8 = OUTLINED_FUNCTION_78_13();
    OUTLINED_FUNCTION_133_13(v8, v9);
    OUTLINED_FUNCTION_70_22();
    v10 = sub_217554E94();

    v11 = sub_217741580(v10);

    if (*(v11 + 16))
    {
      v29 = v2;
      v12 = OUTLINED_FUNCTION_38_38(MEMORY[0x277D84F90]);
      sub_217276258(v12, v13, v14);
      do
      {
        sub_2172757C0(v11 + 32, &v40);
        OUTLINED_FUNCTION_37_41();
        if (v16)
        {
          v18 = OUTLINED_FUNCTION_35_43(v15);
          sub_217276258(v18, v19, v20);
        }

        OUTLINED_FUNCTION_5_117();
      }

      while (!v17);
      OUTLINED_FUNCTION_87_21();
LABEL_31:
      v2 = v29;
    }

    else
    {

      v26 = OUTLINED_FUNCTION_78_13();
      sub_21725CF00(v26, v27);
    }

    sub_217747ECC(v2 + 16, v1 + 16, &qword_27CB24188, &dword_217758930);
    OUTLINED_FUNCTION_14_75();
    OUTLINED_FUNCTION_108_14();
    sub_217751DE8();
    OUTLINED_FUNCTION_13();
  }

  else
  {
    OUTLINED_FUNCTION_106_14();
    v1 = 0;
    v21 = v3 + 32;
    v30 = MEMORY[0x277D84F90];
    v28 = v3 + 32;
LABEL_10:
    for (i = v21 + (v1 << 6); ; i += 64)
    {
      if (v0 == v1)
      {
        OUTLINED_FUNCTION_132_14();
        goto LABEL_31;
      }

      if (v1 >= *(v3 + 16))
      {
        break;
      }

      OUTLINED_FUNCTION_69_23();
      OUTLINED_FUNCTION_9_101();
      OUTLINED_FUNCTION_56_21();
      if (v34)
      {
        OUTLINED_FUNCTION_34_45();

        OUTLINED_FUNCTION_50_37();
        v3 = v31;

        OUTLINED_FUNCTION_107_13();
        v0 = &qword_27CB2E278;
      }

      else
      {
        OUTLINED_FUNCTION_8_95();
        v36 = v33;
      }

      OUTLINED_FUNCTION_7_98();
      OUTLINED_FUNCTION_25_66();
      if (HIBYTE(v36) == 1)
      {
        sub_2171F0790(v37, &unk_27CB28A90, &qword_217758F90);
        OUTLINED_FUNCTION_21_57();
      }

      else
      {
        sub_217283F28(&v35);
      }

      sub_217283F28(v32);
      if (v37[1])
      {
        sub_2171F0790(&v38, &qword_27CB2E278, &unk_2177A2578);
        OUTLINED_FUNCTION_6_118();
        OUTLINED_FUNCTION_90_19();
      }

      else
      {
        sub_2171F0790(v37, &unk_27CB28A90, &qword_217758F90);
      }

      OUTLINED_FUNCTION_19_54();
      if (v39[56] != 255)
      {
        if (OUTLINED_FUNCTION_33_51())
        {
          v21 = v28;
          v23 = v30;
        }

        else
        {
          OUTLINED_FUNCTION_17();
          sub_2172B3314();
          v21 = v28;
        }

        OUTLINED_FUNCTION_54_29(v23);
        if (v16)
        {
          OUTLINED_FUNCTION_11_1(v24);
          sub_2172B3314();
          v30 = v25;
        }

        OUTLINED_FUNCTION_3_136();
        goto LABEL_10;
      }

      sub_2171F0790(v39, &qword_27CB2E278, &unk_2177A2578);
      ++v1;
    }

    __break(1u);
  }
}

void sub_217742F20()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_22_66(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_77_18();
    MEMORY[0x28223BE20](v6);
    OUTLINED_FUNCTION_36_27();
    *(v7 - 16) = &type metadata for MusicPersonalRecommendation.Item;
    *(v7 - 8) = &protocol witness table for MusicPersonalRecommendation.Item;
    swift_getKeyPath(byte_2177A2548);
    OUTLINED_FUNCTION_84_16();
    v8 = OUTLINED_FUNCTION_78_13();
    OUTLINED_FUNCTION_133_13(v8, v9);
    OUTLINED_FUNCTION_70_22();
    v10 = sub_217554E94();

    v11 = sub_21774172C(v10);

    if (*(v11 + 16))
    {
      v29 = v2;
      v12 = OUTLINED_FUNCTION_38_38(MEMORY[0x277D84F90]);
      sub_2172761D8(v12, v13, v14);
      do
      {
        sub_217283D6C(v11 + 32, &v40);
        OUTLINED_FUNCTION_37_41();
        if (v16)
        {
          v18 = OUTLINED_FUNCTION_35_43(v15);
          sub_2172761D8(v18, v19, v20);
        }

        OUTLINED_FUNCTION_5_117();
      }

      while (!v17);
      OUTLINED_FUNCTION_87_21();
LABEL_31:
      v2 = v29;
    }

    else
    {

      v26 = OUTLINED_FUNCTION_78_13();
      sub_21725CF00(v26, v27);
    }

    sub_217747ECC(v2 + 16, v1 + 16, &qword_27CB24188, &dword_217758930);
    OUTLINED_FUNCTION_14_75();
    OUTLINED_FUNCTION_108_14();
    sub_217751DE8();
    OUTLINED_FUNCTION_13();
  }

  else
  {
    OUTLINED_FUNCTION_106_14();
    v1 = 0;
    v21 = v3 + 32;
    v30 = MEMORY[0x277D84F90];
    v28 = v3 + 32;
LABEL_10:
    for (i = v21 + (v1 << 6); ; i += 64)
    {
      if (v0 == v1)
      {
        OUTLINED_FUNCTION_132_14();
        goto LABEL_31;
      }

      if (v1 >= *(v3 + 16))
      {
        break;
      }

      OUTLINED_FUNCTION_69_23();
      OUTLINED_FUNCTION_9_101();
      OUTLINED_FUNCTION_56_21();
      if (v34)
      {
        OUTLINED_FUNCTION_34_45();

        OUTLINED_FUNCTION_50_37();
        v3 = v31;

        OUTLINED_FUNCTION_107_13();
        v0 = &qword_27CB2E270;
      }

      else
      {
        OUTLINED_FUNCTION_8_95();
        v36 = v33;
      }

      OUTLINED_FUNCTION_7_98();
      OUTLINED_FUNCTION_25_66();
      if (HIBYTE(v36) == 2)
      {
        sub_2171F0790(v37, &unk_27CB2AF80, &qword_217758C30);
        OUTLINED_FUNCTION_21_57();
      }

      else
      {
        sub_217283F28(&v35);
      }

      sub_217283F28(v32);
      if (v37[1])
      {
        sub_2171F0790(&v38, &qword_27CB2E270, &unk_2177A2568);
        OUTLINED_FUNCTION_6_118();
        OUTLINED_FUNCTION_90_19();
      }

      else
      {
        sub_2171F0790(v37, &unk_27CB2AF80, &qword_217758C30);
      }

      OUTLINED_FUNCTION_19_54();
      if (v39[56] != 255)
      {
        if (OUTLINED_FUNCTION_33_51())
        {
          v21 = v28;
          v23 = v30;
        }

        else
        {
          OUTLINED_FUNCTION_17();
          sub_2172B33C8();
          v21 = v28;
        }

        OUTLINED_FUNCTION_54_29(v23);
        if (v16)
        {
          OUTLINED_FUNCTION_11_1(v24);
          sub_2172B33C8();
          v30 = v25;
        }

        OUTLINED_FUNCTION_3_136();
        goto LABEL_10;
      }

      sub_2171F0790(v39, &qword_27CB2E270, &unk_2177A2568);
      ++v1;
    }

    __break(1u);
  }
}

void sub_217743240()
{
  OUTLINED_FUNCTION_12();
  v2 = v0;
  v4 = v3;
  v5 = v1;
  v109 = v6;
  v7 = *v1;
  v8 = *(v1 + 8);
  if (*(v0 + 8))
  {
    v107 = v1;
    if (v8)
    {
      sub_217283C5C(v7, 1);
      v9 = OUTLINED_FUNCTION_188_1();
      sub_217283C5C(v9, v10);
      sub_21774DFE8();
      sub_21774DFE8();
      v11 = sub_217752318();

      v108 = v106;
      *&v110[0] = v11;
      MEMORY[0x28223BE20](v12);
      v13 = *(v4 + 24);
      OUTLINED_FUNCTION_83_20();
      sub_217752418();
      v14 = OUTLINED_FUNCTION_83_20();
      type metadata accessor for RelatedItem(v14, v15, v13, v16);
      OUTLINED_FUNCTION_33();
      WitnessTable = swift_getWitnessTable();
      v22 = OUTLINED_FUNCTION_109_17(WitnessTable, v18, v19, v20, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v21);
      v23 = OUTLINED_FUNCTION_79_22();
      sub_21725CF00(v23, v24);
      v25 = OUTLINED_FUNCTION_188_1();
      sub_21725CF00(v25, v26);
    }

    else
    {
      sub_217283C5C(v7, 0);
      v55 = OUTLINED_FUNCTION_188_1();
      sub_217283C5C(v55, v56);
      v57 = sub_21774DFE8();
      *&v110[0] = v7;
      MEMORY[0x28223BE20](v57);
      OUTLINED_FUNCTION_36_27();
      v59 = *(v4 + 16);
      v58 = *(v4 + 24);
      *(v60 - 16) = v59;
      *(v60 - 8) = v58;
      KeyPath = swift_getKeyPath(byte_2177A1DD8);
      v63 = type metadata accessor for RelatedItem(255, v59, v58, v62);
      v64 = OUTLINED_FUNCTION_130_14(v63);
      OUTLINED_FUNCTION_33();
      v106[1] = v65;
      v66 = swift_getWitnessTable();
      v67 = v64;
      v68 = MEMORY[0x277D84AC0];
      sub_2175FA70C(sub_217747F48, KeyPath, v67, v59, MEMORY[0x277D84A98], v66, MEMORY[0x277D84AC0], v69);
      OUTLINED_FUNCTION_965();

      v70 = OUTLINED_FUNCTION_61_24();
      sub_21725CF00(v70, v71);
      v72 = sub_217752318();

      *&v110[0] = v72;
      MEMORY[0x28223BE20](v73);
      OUTLINED_FUNCTION_83_20();
      sub_217752418();
      swift_getWitnessTable();
      v74 = OUTLINED_FUNCTION_82_16();
      v22 = sub_2175FA70C(v74, v75, v76, v77, MEMORY[0x277D84A98], v78, v68, v79);
      v80 = OUTLINED_FUNCTION_188_1();
      sub_21725CF00(v80, v81);
    }

    v108 = v22;
    sub_217751DE8();
    v5 = v107;
  }

  else
  {
    if (*(v1 + 8))
    {
      *&v110[0] = *v0;
      MEMORY[0x28223BE20](v1);
      OUTLINED_FUNCTION_36_27();
      v28 = *(v4 + 16);
      v27 = *(v4 + 24);
      *(v29 - 16) = v28;
      *(v29 - 8) = v27;
      swift_getKeyPath(byte_2177A1DD8);
      v30 = OUTLINED_FUNCTION_79_22();
      sub_217283C5C(v30, v31);
      v32 = OUTLINED_FUNCTION_1479();
      sub_217283C5C(v32, v33);
      v35 = type metadata accessor for RelatedItem(255, v28, v27, v34);
      OUTLINED_FUNCTION_130_14(v35);
      OUTLINED_FUNCTION_33();
      v107 = v36;
      v37 = swift_getWitnessTable();
      OUTLINED_FUNCTION_109_17(v37, v38, v39, v40, MEMORY[0x277D84A98], v37, MEMORY[0x277D84AC0], v41);

      v42 = OUTLINED_FUNCTION_1479();
      sub_21725CF00(v42, v43);
      sub_21774DFE8();
      OUTLINED_FUNCTION_965();
      v44 = sub_217752318();

      *&v110[0] = v44;
      MEMORY[0x28223BE20](v45);
      OUTLINED_FUNCTION_83_20();
      sub_217752418();
      swift_getWitnessTable();
      v46 = OUTLINED_FUNCTION_82_16();
      v52 = sub_2175FA70C(v46, v47, v48, v49, MEMORY[0x277D84A98], v50, MEMORY[0x277D84AC0], v51);
      v53 = OUTLINED_FUNCTION_79_22();
      sub_21725CF00(v53, v54);
    }

    else
    {
      v82 = OUTLINED_FUNCTION_61_24();
      sub_217283C5C(v82, v83);
      v84 = OUTLINED_FUNCTION_1479();
      sub_217283C5C(v84, v85);
      type metadata accessor for RelatedItem(0, *(v4 + 16), *(v4 + 24), v86);
      v52 = sub_217752318();
      v87 = OUTLINED_FUNCTION_1479();
      sub_21725CF00(v87, v88);
      v89 = OUTLINED_FUNCTION_61_24();
      sub_21725CF00(v89, v90);
    }

    v108 = v52;
    sub_217751DE8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25660, &unk_21775D5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217759200;
  sub_217747ECC((v2 + 2), inited + 32, &qword_27CB24188, &dword_217758930);
  sub_217747ECC((v5 + 2), inited + 72, &qword_27CB24188, &dword_217758930);
  sub_2174D3370(inited, v110);
  swift_setDeallocating();
  sub_217275BEC();
  if (v2[8])
  {
    v92 = v2[7];
    v93 = v2[8];
  }

  else
  {
    v92 = v5[7];
    v93 = v5[8];
    sub_217751DE8();
  }

  if (v2[10])
  {
    v94 = v2[9];
    v95 = v2[10];
  }

  else
  {
    v94 = v5[9];
    v95 = v5[10];
    sub_217751DE8();
  }

  v96 = v2[11];
  v97 = v5[11];
  sub_217751DE8();
  sub_217751DE8();
  swift_bridgeObjectRetain_n();
  sub_217751DE8();
  v98 = sub_217741F40(v97, v96);
  v99 = sub_217751DE8();
  v100 = sub_217741F40(v99, v96);
  v101 = v108;
  v102 = OUTLINED_FUNCTION_99_17();
  sub_21725CF00(v102, v103);
  v104 = v109;
  *v109 = v101;
  *(v104 + 8) = 0;
  v105 = v110[1];
  *(v104 + 1) = v110[0];
  *(v104 + 2) = v105;
  v104[6] = v111;
  v104[7] = v92;
  v104[8] = v93;
  v104[9] = v94;
  v104[10] = v95;
  v104[11] = v98;
  v104[12] = v100;
  OUTLINED_FUNCTION_13();
}

uint64_t MusicItemCollection.identifiers.getter(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 8))
  {

    v3 = sub_21774E0E4();
    v4 = v2;
    v5 = 1;
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    OUTLINED_FUNCTION_36_27();
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    *(v9 - 16) = v7;
    *(v9 - 8) = v8;
    KeyPath = swift_getKeyPath(byte_2177A1E08);
    type metadata accessor for RelatedItem(255, v7, v8, v11);
    v12 = sub_217752418();
    sub_217751DE8();
    OUTLINED_FUNCTION_33();
    WitnessTable = swift_getWitnessTable();
    v3 = sub_2175FA70C(sub_217635EDC, KeyPath, v12, &type metadata for MusicIdentifierSet, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v14);

    v4 = OUTLINED_FUNCTION_99_17();
  }

  sub_21725CF00(v4, v5);
  return v3;
}

void *sub_2177439E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v5 = type metadata accessor for RelatedItem(0, *(a1 + a2 - 16), *(a1 + a2 - 8), a3);
  MusicItem.identifierSet.getter(v5, &off_28297DE10, __src);
  return memcpy(a4, __src, 0x161uLL);
}

void static MusicItemCollection.+= infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  v4 = v1;
  v5 = v0;
  if ((*(v0 + 8) & 1) == 0)
  {
    if ((*(v1 + 8) & 1) == 0)
    {
      v56 = OUTLINED_FUNCTION_61_24();
      sub_217283C5C(v56, v57);
      v58 = OUTLINED_FUNCTION_45_3();
      sub_217283C5C(v58, v59);
      v60 = OUTLINED_FUNCTION_219_0();
      type metadata accessor for RelatedItem(v60, v61, v3, v62);
      OUTLINED_FUNCTION_47_2();
      v18 = sub_217752318();
      v63 = OUTLINED_FUNCTION_45_3();
      sub_21725CF00(v63, v64);
      v65 = OUTLINED_FUNCTION_61_24();
      sub_21725CF00(v65, v66);
      v67 = OUTLINED_FUNCTION_45_3();
      sub_21725CF00(v67, v68);
      goto LABEL_9;
    }

    v77 = *v0;
    v25 = OUTLINED_FUNCTION_79_22();
    sub_217283C5C(v25, v26);
    v27 = OUTLINED_FUNCTION_45_3();
    sub_217283C5C(v27, v28);
    v74 = sub_21774DFE8();
    v75 = &v73;
    v76 = v74;
    MEMORY[0x28223BE20](v74);
    OUTLINED_FUNCTION_41_43();
    v29 = OUTLINED_FUNCTION_219_0();
    type metadata accessor for RelatedItem(v29, v30, v3, v31);
    OUTLINED_FUNCTION_33();
    WitnessTable = swift_getWitnessTable();
    OUTLINED_FUNCTION_102_15(sub_217747F2C, v33, v34, v35, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v36);

    sub_217752368();
    v37 = OUTLINED_FUNCTION_79_22();
    sub_21725CF00(v37, v38);

    v39 = OUTLINED_FUNCTION_45_3();
LABEL_7:
    sub_21725CF00(v39, v40);
    *v5 = v77;
    goto LABEL_10;
  }

  v6 = *v1;
  if ((*(v1 + 8) & 1) == 0)
  {
    sub_217283C5C(v6, 0);
    v41 = OUTLINED_FUNCTION_62_26();
    sub_217283C5C(v41, v42);
    v74 = sub_21774DFE8();
    v75 = &v73;
    v77 = v74;
    MEMORY[0x28223BE20](v74);
    OUTLINED_FUNCTION_41_43();
    v43 = OUTLINED_FUNCTION_219_0();
    type metadata accessor for RelatedItem(v43, v44, v3, v45);
    OUTLINED_FUNCTION_33();
    v46 = swift_getWitnessTable();
    v51 = OUTLINED_FUNCTION_102_15(sub_217746AF0, v47, v48, v49, MEMORY[0x277D84A98], v46, MEMORY[0x277D84AC0], v50);

    v77 = v51;
    sub_217752368();
    v52 = OUTLINED_FUNCTION_61_24();
    sub_21725CF00(v52, v53);
    v54 = OUTLINED_FUNCTION_62_26();
    sub_21725CF00(v54, v55);
    v39 = OUTLINED_FUNCTION_62_26();
    goto LABEL_7;
  }

  sub_217283C5C(v6, 1);
  v7 = OUTLINED_FUNCTION_62_26();
  sub_217283C5C(v7, v8);
  sub_21774DFE8();
  sub_21774DFE8();
  v74 = sub_217752318();

  v75 = &v73;
  v77 = v74;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41_43();
  v10 = OUTLINED_FUNCTION_219_0();
  type metadata accessor for RelatedItem(v10, v11, v3, v12);
  OUTLINED_FUNCTION_33();
  v13 = swift_getWitnessTable();
  v18 = OUTLINED_FUNCTION_102_15(sub_217747F2C, v14, v15, v16, MEMORY[0x277D84A98], v13, MEMORY[0x277D84AC0], v17);
  v19 = OUTLINED_FUNCTION_79_22();
  sub_21725CF00(v19, v20);
  v21 = OUTLINED_FUNCTION_62_26();
  sub_21725CF00(v21, v22);

  v23 = OUTLINED_FUNCTION_62_26();
  sub_21725CF00(v23, v24);
LABEL_9:
  *v5 = v18;
LABEL_10:
  *(v5 + 8) = 0;
  sub_217746B10((v4 + 2), v5 + 16);
  v69 = v4[10];
  *(v5 + 72) = v4[9];
  *(v5 + 80) = v69;
  sub_217751DE8();

  if (!*(v5 + 64))
  {
    v70 = v4[8];
    *(v5 + 56) = v4[7];
    *(v5 + 64) = v70;
    sub_217751DE8();
  }

  v71 = sub_217751DE8();
  sub_217747A30(v71, sub_217747ADC, 0, (v5 + 88));
  v72 = sub_217751DE8();
  sub_217747A30(v72, sub_217747ADC, 0, (v5 + 96));
  OUTLINED_FUNCTION_13();
}

uint64_t MusicItemCollection.nextBatch(limit:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = v4;
  *(v5 + 104) = a3;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217743E98()
{
  OUTLINED_FUNCTION_10();
  sub_217747ECC(v0[10] + 16, (v0 + 2), &qword_27CB24188, &dword_217758930);
  if (v0[5])
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    v0[11] = v1;
    *v1 = v2;
    v1[1] = sub_217743FB4;
    v3 = OUTLINED_FUNCTION_124_11();

    return AnyMusicItemCollectionIncrementalLoader.nextItemBatch<A>(limit:)(v3, v4, v5, v6, v7);
  }

  else
  {
    v9 = v0[7];
    sub_2171F0790((v0 + 2), &qword_27CB24188, &dword_217758930);
    *v9 = 0u;
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
    *(v9 + 80) = 0u;
    *(v9 + 96) = 0;
    OUTLINED_FUNCTION_0_2();

    return v10();
  }
}

uint64_t sub_217743FB4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_42_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    v7 = sub_2177440BC;
  }

  else
  {
    sub_217283154(v3 + 16);
    v7 = sub_21763AD84;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2177440BC()
{
  OUTLINED_FUNCTION_10();
  sub_217283154(v0 + 16);
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t MusicItemCollection.nextBatch<>(limit:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 80) = a5;
  *(v6 + 88) = v5;
  *(v6 + 64) = a2;
  *(v6 + 72) = a4;
  *(v6 + 112) = a3;
  *(v6 + 56) = a1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217744138()
{
  OUTLINED_FUNCTION_10();
  sub_217747ECC(v0[11] + 16, (v0 + 2), &qword_27CB24188, &dword_217758930);
  if (v0[5])
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    v0[12] = v1;
    *v1 = v2;
    v1[1] = sub_217744258;
    v3 = OUTLINED_FUNCTION_124_11();

    return AnyMusicItemCollectionIncrementalLoader.nextDecodableItemBatch<A>(limit:)(v3, v4, v5, v6, v7, v8);
  }

  else
  {
    v10 = v0[7];
    sub_2171F0790((v0 + 2), &qword_27CB24188, &dword_217758930);
    *v10 = 0u;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
    *(v10 + 80) = 0u;
    *(v10 + 96) = 0;
    OUTLINED_FUNCTION_0_2();

    return v11();
  }
}

uint64_t sub_217744258()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_42_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    v7 = sub_217744360;
  }

  else
  {
    sub_217283154(v3 + 16);
    v7 = sub_217747F7C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_217744360()
{
  OUTLINED_FUNCTION_10();
  sub_217283154(v0 + 16);
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_2177443C8()
{
  OUTLINED_FUNCTION_26_52();
  v2 = (*(v1 + 16))(v0);
  OUTLINED_FUNCTION_110_15(v2, v3, v4, v5);
  return OUTLINED_FUNCTION_111_16();
}

uint64_t MusicItemCollection.indices.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  if (*(v4 + 8))
  {

    v6 = LegacySectionedCollectionItemLoader.indices.getter();
    sub_21725CF00(v5, 1);
  }

  else
  {
    type metadata accessor for RelatedItem(255, *(a1 + 16), *(a1 + 24), a4);
    sub_217752418();
    swift_getWitnessTable();
    sub_217752658();
    return v8;
  }

  return v6;
}

void MusicItemCollection.subscript.getter()
{
  OUTLINED_FUNCTION_12();
  v3 = *v0;
  if (*(v0 + 8))
  {

    v4 = OUTLINED_FUNCTION_25_0();
    LegacySectionedCollectionItemLoader.subscript.getter(v4, v5);
    v6 = OUTLINED_FUNCTION_66_21();
    sub_21725CF00(v6, v7);
LABEL_6:
    OUTLINED_FUNCTION_145_0();
    OUTLINED_FUNCTION_13();
    return;
  }

  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  type metadata accessor for RelatedItem(0, v8, v9, v2);
  sub_217751DE8();
  OUTLINED_FUNCTION_25_0();
  sub_217752478();
  sub_21725CF00(v3, 0);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_36_27();
  *(v11 - 16) = v8;
  *(v11 - 8) = v9;
  KeyPath = swift_getKeyPath(byte_2177A1DD8);
  v13 = sub_2177529E8();
  WitnessTable = swift_getWitnessTable();
  sub_2175FA70C(sub_217747F48, KeyPath, v13, v8, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v15);

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2E3E0, &qword_2177A2FE0);
  sub_21759CA0C(v16, v17, v18);
  sub_2177527D8();
  sub_2177527C8();
  if (__OFSUB__(v20, v19))
  {
    __break(1u);
  }

  else if (((v20 - v19) & 0x8000000000000000) == 0)
  {
    sub_217752478();

    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  __break(1u);
}

void MusicItemCollection.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7 = OUTLINED_FUNCTION_101_15(a1, a2, a4, a5);
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  if (*(v5 + 8))
  {

    LegacySectionedCollectionItemLoader.subscript.getter();
    v13 = OUTLINED_FUNCTION_62_26();
    sub_21725CF00(v13, v14);
  }

  else
  {
    sub_217751DE8();
    OUTLINED_FUNCTION_25_0();
    sub_217752488();
    v15 = OUTLINED_FUNCTION_45_3();
    sub_21725CF00(v15, v16);
    sub_2176F36CC(v7, a3);
    (*(v9 + 8))(v12, v7);
  }
}

uint64_t sub_2177448B4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v5 = *v4;
  v6 = *(v4 + 8);
  if (v6)
  {

    v9 = a3(v8);
  }

  else
  {
    v11 = type metadata accessor for RelatedItem(0, *(a1 + 16), *(a1 + 24), a4);
    v12 = sub_217751DE8();
    v9 = a2(v12, v11);
  }

  v13 = v9;
  sub_21725CF00(v5, v6);
  return v13;
}

uint64_t sub_2177449C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void *), uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  v7 = *(v4 + 8);
  if (v7)
  {

    v9 = a4(a1);
  }

  else
  {
    OUTLINED_FUNCTION_101_15(a1, a2, a3, a4);
    OUTLINED_FUNCTION_55_16();
    sub_217751DE8();
    v9 = a3(a1, v6, v4);
  }

  v11 = v9;
  sub_21725CF00(v6, v7);
  return v11;
}

double sub_217744A88(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, void *), void (*a4)(uint64_t))
{
  v6 = *v4;
  v7 = *(v4 + 8);
  if (v7)
  {

    a4(a1);
  }

  else
  {
    OUTLINED_FUNCTION_101_15(a1, a2, a3, a4);
    OUTLINED_FUNCTION_55_16();
    sub_217751DE8();
    a3(a1, v6, v4);
  }

  return sub_21725CF00(v6, v7);
}

Swift::Int_optional __swiftcall MusicItemCollection.index(_:offsetBy:limitedBy:)(Swift::Int _, Swift::Int offsetBy, Swift::Int limitedBy)
{
  v8 = *v4;
  v9 = *(v4 + 8);
  if (v9)
  {

    v14 = LegacySectionedCollectionItemLoader.index(_:offsetBy:limitedBy:)(_, offsetBy, limitedBy);
  }

  else
  {
    type metadata accessor for RelatedItem(0, *(v3 + 16), *(v3 + 24), v3);
    OUTLINED_FUNCTION_55_16();
    sub_217751DE8();
    v14.value = sub_217752398();
  }

  value = v14.value;
  is_nil = v14.is_nil;
  sub_21725CF00(v8, v9);
  v12 = is_nil;
  v13 = value;
  result.value = v13;
  result.is_nil = v12;
  return result;
}

uint64_t sub_217744C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  v8 = *v5;
  v9 = *(v5 + 8);
  if (v9)
  {

    v11 = a5(a1, a2);
  }

  else
  {
    v13 = type metadata accessor for RelatedItem(0, *(a3 + 16), *(a3 + 24), a4);
    sub_217751DE8();
    v11 = a4(a1, a2, v8, v13);
  }

  v14 = v11;
  sub_21725CF00(v8, v9);
  return v14;
}

Swift::Int sub_217744CCC@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = MusicItemCollection.index(before:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_217744CFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = MusicItemCollection.startIndex.getter(a1, a3, a4, a5);
  *a2 = result;
  return result;
}

uint64_t sub_217744D24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = MusicItemCollection.endIndex.getter(a1, a3, a4, a5);
  *a2 = result;
  return result;
}

void (*sub_217744D4C(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_217744DC0(v6, *a2, a3);
  return sub_21759C398;
}

uint64_t (*sub_217744DC0(void *a1, uint64_t a2, uint64_t a3))()
{
  *a1 = *(a3 + 16);
  OUTLINED_FUNCTION_0();
  *(v6 + 8) = v7;
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  a1[2] = v9;
  MusicItemCollection.subscript.getter(a2, a3, v9, v10, v11);
  return sub_217744E74;
}

void sub_217744E74(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

void sub_217744EC0(void *a1@<X8>)
{
  MusicItemCollection.subscript.getter();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_217744EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = MusicItemCollection.indices.getter(a1, a2, a3, a4);
  *a5 = result;
  a5[1] = v7;
  return result;
}

Swift::Int sub_217744F34@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = MusicItemCollection.index(after:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_217744F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  v9 = MusicItemCollection.startIndex.getter(a1, v6, v7, v8);
  result = (*(v5 + 8))(v2, a1);
  *(a2 + 104) = v9;
  return result;
}

uint64_t sub_217745020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_217745074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7C8](a1, WitnessTable);
}

uint64_t MusicItemCollection<>.AsyncCollectionIterator.next()()
{
  OUTLINED_FUNCTION_10();
  v3 = v2;
  v1[57] = v2;
  v1[58] = v0;
  v1[56] = v4;
  v5 = *(v2 + 16);
  v1[59] = v5;
  OUTLINED_FUNCTION_0();
  v1[60] = v6;
  v1[61] = swift_task_alloc();
  v7 = *(v3 + 24);
  v1[62] = v7;
  v9 = type metadata accessor for RelatedItem(0, v5, v7, v8);
  v1[63] = v9;
  v1[64] = *(v9 - 8);
  v1[65] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2177451F0, 0, 0);
}

void sub_2177451F0()
{
  v2 = *(v0 + 464);
  v3 = *v2;
  *(v0 + 528) = *v2;
  if ((*(v2 + 8) & 1) == 0)
  {
    *(v0 + 416) = v3;
    *(v0 + 424) = v3;
    sub_217283C5C(v3, 0);
    *(v0 + 536) = sub_217752418();
    sub_217751DE8();
    OUTLINED_FUNCTION_33();
    *(v0 + 544) = swift_getWitnessTable();
    if (sub_217752738())
    {
      sub_217747ECC(*(v0 + 464) + 16, v0 + 344, &qword_27CB24188, &dword_217758930);
      if (*(v0 + 368))
      {
        sub_21725CF00(v3, 0);
        *(v0 + 336) = *(v0 + 376);
        v13 = *(v0 + 360);
        *(v0 + 304) = *(v0 + 344);
        *(v0 + 320) = v13;
        OUTLINED_FUNCTION_31_48();
        swift_task_alloc();
        OUTLINED_FUNCTION_36_1();
        *(v0 + 560) = v14;
        *v14 = v15;
        v14[1] = sub_2177456B8;
LABEL_8:
        OUTLINED_FUNCTION_120_0();

        __asm { BRAA            X2, X16 }
      }

      sub_2171F0790(v0 + 344, &qword_27CB24188, &dword_217758930);
    }

    v32 = OUTLINED_FUNCTION_103_17();
    v33 = OUTLINED_FUNCTION_99_17();
    sub_21725CF00(v33, v34);
    if (v32)
    {
      v38 = 1;
    }

    else
    {
      v39 = *(v0 + 520);
      v40 = *(v0 + 504);
      v41 = *(v0 + 512);
      v42 = *(v0 + 448);
      v43 = OUTLINED_FUNCTION_1_153(v35, v36, v37);
      OUTLINED_FUNCTION_131_13(v43);
      sub_2176F36CC(v40, v42);
      v35 = (*(v41 + 8))(v39, v40);
      v38 = 0;
    }

    OUTLINED_FUNCTION_86_18(v35, v38);
LABEL_24:

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_120_0();

    __asm { BRAA            X1, X16 }
  }

  v4 = sub_217752338();
  *(v0 + 552) = v4;
  *(v0 + 384) = v4;
  v7 = LegacySectionedCollectionItemLoader.isEmpty.getter(v4, v5, v6);
  if (v7)
  {
    sub_217747ECC(*(v0 + 464) + 16, v0 + 264, &qword_27CB24188, &dword_217758930);
    if (*(v0 + 288))
    {
      v10 = *(v0 + 280);
      *(v0 + 224) = *(v0 + 264);
      *(v0 + 240) = v10;
      *(v0 + 256) = *(v0 + 296);
      OUTLINED_FUNCTION_31_48();
      swift_task_alloc();
      OUTLINED_FUNCTION_36_1();
      *(v0 + 576) = v11;
      *v11 = v12;
      v11[1] = sub_2177459CC;
      goto LABEL_8;
    }

    v7 = sub_2171F0790(v0 + 264, &qword_27CB24188, &dword_217758930);
  }

  v18 = LegacySectionedCollectionItemLoader.isEmpty.getter(v7, v8, v9);
  if (v18)
  {
    *(v0 + 400) = v4;
    sub_217752418();
    OUTLINED_FUNCTION_33();
    swift_getWitnessTable();
    v18 = sub_217752738();
    if (v18)
    {
      v21 = *(v0 + 472);
      sub_21725CF00(*(v0 + 528), 1);
      v22 = OUTLINED_FUNCTION_66_21();
      __swift_storeEnumTagSinglePayload(v22, v23, 1, v21);

      goto LABEL_24;
    }
  }

  v24 = *(v0 + 528);
  if ((LegacySectionedCollectionItemLoader.isEmpty.getter(v18, v19, v20) & 1) == 0)
  {
    OUTLINED_FUNCTION_105_17();
    v28 = OUTLINED_FUNCTION_121_14();
    v29(v28);
    v30 = OUTLINED_FUNCTION_61_24();
    OUTLINED_FUNCTION_122_11(v30, v31);
    *v1 = v24;
    *(v1 + 8) = 1;
    goto LABEL_24;
  }

  *(v0 + 392) = v4;
  sub_217752418();
  OUTLINED_FUNCTION_33();
  swift_getWitnessTable();
  v25 = sub_217752738();
  if ((v25 & 1) == 0)
  {
    v46 = *(v0 + 504);
    v48 = *(v0 + 464);
    v47 = *(v0 + 472);
    v49 = *(v0 + 448);
    v50 = OUTLINED_FUNCTION_1_153(v25, v26, v27);
    OUTLINED_FUNCTION_129_14(v50);
    sub_2176F36CC(v46, v49);
    v51 = OUTLINED_FUNCTION_66_21();
    sub_21725CF00(v51, v52);
    v53 = OUTLINED_FUNCTION_47_2();
    v54(v53);
    v55 = OUTLINED_FUNCTION_84_11();
    __swift_storeEnumTagSinglePayload(v55, v56, 1, v47);
    v57 = OUTLINED_FUNCTION_66_21();
    sub_21725CF00(v57, v58);
    *v48 = *(v0 + 384);
    *(v48 + 8) = 0;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_123_13();
  OUTLINED_FUNCTION_76_20("Fatal error");
  OUTLINED_FUNCTION_120_0();
}

uint64_t sub_2177456B8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_42_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 568) = v0;

  if (v0)
  {
    sub_21725CF00(*(v3 + 528), 0);
    v7 = sub_217745DE0;
  }

  else
  {
    v7 = sub_2177457C4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_2177457C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[62];
  v5 = v4[63];
  v8 = v4[58];
  v7 = v4[59];
  v9 = v4[57];
  v10 = type metadata accessor for MusicItemCollection(0, v7, v6, a4);
  v4[55] = MusicItemCollection.items.getter(v10);
  v11 = swift_task_alloc();
  v11[2] = v7;
  v11[3] = v6;
  v11[4] = *(v9 + 32);
  v12 = sub_217752418();
  OUTLINED_FUNCTION_33();
  WitnessTable = swift_getWitnessTable();
  sub_2175FA70C(sub_217747F60, v11, v12, v5, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v14);
  OUTLINED_FUNCTION_965();

  sub_217283154((v4 + 38));

  v4[52] = v4 + 55;
  sub_2171F0790(v8 + 16, &qword_27CB24188, &dword_217758930);
  sub_217747ECC((v4 + 17), v8 + 16, &qword_27CB24188, &dword_217758930);
  OUTLINED_FUNCTION_41_0();
  (*(v15 + 8))(v4 + 15, v10);
  v16 = OUTLINED_FUNCTION_103_17();
  v17 = OUTLINED_FUNCTION_99_17();
  sub_21725CF00(v17, v18);
  if (v16)
  {
    v22 = 1;
  }

  else
  {
    v23 = v4[65];
    v24 = v4[63];
    v25 = v4[64];
    v26 = v4[56];
    v27 = OUTLINED_FUNCTION_1_153(v19, v20, v21);
    OUTLINED_FUNCTION_131_13(v27);
    sub_2176F36CC(v24, v26);
    v19 = (*(v25 + 8))(v23, v24);
    v22 = 0;
  }

  OUTLINED_FUNCTION_86_18(v19, v22);

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_120_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2177459CC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_42_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 584) = v0;

  if (v0)
  {
    v7 = sub_217745E50;
  }

  else
  {
    v7 = sub_217745ACC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_217745ACC()
{
  v2 = v0[62];
  v1 = v0[63];
  v3 = v0[59];
  v4 = v0[57];
  sub_217746B10((v0 + 4), v0[58] + 16);
  v5 = OUTLINED_FUNCTION_83_20();
  v8 = type metadata accessor for MusicItemCollection(v5, v6, v2, v7);
  v0[51] = MusicItemCollection.items.getter(v8);
  v9 = swift_task_alloc();
  v9[2] = v3;
  v9[3] = v2;
  v9[4] = *(v4 + 32);
  OUTLINED_FUNCTION_83_20();
  v10 = sub_217752418();
  OUTLINED_FUNCTION_33();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_2175FA70C(sub_217747B14, v9, v10, v1, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v12);

  OUTLINED_FUNCTION_41_0();
  (*(v14 + 8))(v0 + 2, v8);
  sub_217283154((v0 + 28));

  v0[48] = v13;
  v18 = LegacySectionedCollectionItemLoader.isEmpty.getter(v15, v16, v17);
  if (v18 & 1) != 0 && (v0[50] = v13, sub_217752418(), OUTLINED_FUNCTION_33(), swift_getWitnessTable(), v18 = sub_217752738(), (v18))
  {
    v21 = v0[59];
    sub_21725CF00(v0[66], 1);
    v22 = OUTLINED_FUNCTION_66_21();
    __swift_storeEnumTagSinglePayload(v22, v23, 1, v21);
  }

  else
  {
    v24 = v0[66];
    if (LegacySectionedCollectionItemLoader.isEmpty.getter(v18, v19, v20))
    {
      v0[49] = v13;
      sub_217752418();
      OUTLINED_FUNCTION_33();
      swift_getWitnessTable();
      v25 = sub_217752738();
      if (v25)
      {
        OUTLINED_FUNCTION_123_13();
        return OUTLINED_FUNCTION_76_20("Fatal error");
      }

      v33 = v0[63];
      v35 = v0[58];
      v34 = v0[59];
      v36 = v0[56];
      v37 = OUTLINED_FUNCTION_1_153(v25, v26, v27);
      OUTLINED_FUNCTION_129_14(v37);
      sub_2176F36CC(v33, v36);
      v38 = OUTLINED_FUNCTION_66_21();
      sub_21725CF00(v38, v39);
      v40 = OUTLINED_FUNCTION_47_2();
      v41(v40);
      v42 = OUTLINED_FUNCTION_84_11();
      __swift_storeEnumTagSinglePayload(v42, v43, 1, v34);
      v44 = OUTLINED_FUNCTION_66_21();
      sub_21725CF00(v44, v45);
      *v35 = v0[48];
      *(v35 + 8) = 0;
    }

    else
    {
      OUTLINED_FUNCTION_105_17();
      v29 = OUTLINED_FUNCTION_121_14();
      v30(v29);
      v31 = OUTLINED_FUNCTION_61_24();
      OUTLINED_FUNCTION_122_11(v31, v32);
      *v10 = v24;
      *(v10 + 8) = 1;
    }
  }

  OUTLINED_FUNCTION_0_2();

  return v46();
}

uint64_t sub_217745DE0()
{
  OUTLINED_FUNCTION_10();
  sub_217283154(v0 + 304);

  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_217745E50()
{
  OUTLINED_FUNCTION_10();
  sub_21725CF00(*(v0 + 528), 1);
  sub_217283154(v0 + 224);

  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_217745ED8()
{
  OUTLINED_FUNCTION_26_52();
  v2 = (*(v1 + 16))(v0);
  OUTLINED_FUNCTION_110_15(v2, v3, v4, v5);
  return OUTLINED_FUNCTION_111_16();
}

uint64_t sub_217745F38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_217282D8C;

  return MusicItemCollection<>.AsyncCollectionIterator.next()();
}

uint64_t sub_217745FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_2177460B4;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_2177460B4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_42_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;

  if (v0)
  {
    **(v3 + 24) = *(v3 + 16);
  }

  OUTLINED_FUNCTION_20_0();

  return v7();
}

uint64_t MusicItemCollection<>.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = *(v3 + 8);
  sub_217747ECC(v3 + 16, v12, &qword_27CB24188, &dword_217758930);
  v9 = swift_allocObject();
  *(v9 + 16) = *(a1 + 16);
  *(v9 + 32) = a2;
  *a3 = v7;
  *(a3 + 8) = v8;
  v10 = v12[1];
  *(a3 + 16) = v12[0];
  *(a3 + 32) = v10;
  *(a3 + 48) = v13;
  *(a3 + 56) = &unk_2177A1E60;
  *(a3 + 64) = v9;
  return sub_217283C5C(v7, v8);
}

uint64_t sub_217746268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_2172849C8;

  return AnyMusicItemCollectionIncrementalLoader.nextDecodableItemBatch<A>(limit:)(a1, 0, 1, a3, a4, a5);
}

uint64_t sub_21774633C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MusicItemCollection<>.makeAsyncIterator()(a1, *(a2 - 8), a3);
  v5 = *(*(a1 - 8) + 8);

  return v5(v3, a1);
}

void MusicItemCollection<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 64))
  {
    sub_217753208();
    sub_217751FF8();
  }

  else
  {
    sub_217753208();
  }

  sub_217747ECC(v2 + 16, &v20, &qword_27CB24188, &dword_217758930);
  if (*(&v21 + 1))
  {
    v17 = v20;
    v18 = v21;
    v19 = v22;
    sub_217753208();
    __swift_project_boxed_opaque_existential_1(&v17, *(&v18 + 1));
    v4 = OUTLINED_FUNCTION_145_0();
    v5(v4);
    sub_217283154(&v17);
  }

  else
  {
    sub_217753208();
  }

  if (*(v2 + 8))
  {

    v10 = LegacySectionedCollectionItemLoader.count.getter(v7, v8, v9);
    MEMORY[0x21CEA3550](v10);
    v11 = OUTLINED_FUNCTION_62_26();
    sub_21725CF00(v11, v12);
  }

  else
  {
    type metadata accessor for RelatedItem(0, *(a2 + 16), *(a2 + 24), v6);
    sub_217751DE8();
    v13 = sub_217752388();
    v14 = OUTLINED_FUNCTION_45_3();
    v16 = sub_21725CF00(v14, v15);
    MEMORY[0x21CEA3550](v13, v16);
  }
}

uint64_t MusicItemCollection<>.hashValue.getter(uint64_t a1)
{
  sub_2177531E8();
  MusicItemCollection<>.hash(into:)(v3, a1);
  return sub_217753238();
}

uint64_t sub_21774656C(uint64_t a1, uint64_t a2)
{
  sub_2177531E8();
  MusicItemCollection<>.hash(into:)(v4, a2);
  return sub_217753238();
}

uint64_t MusicItemCollection<>.init(from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2171FF30C(a1, v37);
  CloudResourceCollection<A>.init(from:)(v37, a2, a4, v8, v9, v10, v11, v12, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37[0]);
  if (!v4)
  {
    v15 = type metadata accessor for CloudResourceCollection(0, a2, v13, v14);
    OUTLINED_FUNCTION_0();
    v17 = v16;
    (*(v18 + 16))(v37, v38, v15);
    v19 = a1[3];
    v20 = a1[4];
    v21 = OUTLINED_FUNCTION_93();
    __swift_project_boxed_opaque_existential_1(v21, v22);
    Decoder.dataRequestConfiguration.getter(v19, v20);
    v23 = OUTLINED_FUNCTION_93();
    __swift_project_boxed_opaque_existential_1(v23, v24);
    Decoder.sharedRelatedItemStore.getter();
    sub_2174D0DD8();
    (*(v17 + 8))(v38, v15);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicItemCollection<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2174D10C0(a2, v16);
  v8 = type metadata accessor for CloudResourceCollection(0, *(a2 + 16), v6, v7);
  CloudResourceCollection<A>.encode(to:)(a1, v8, a3, v9, v10, v11, v12, v13, v16[0], v16[1], v16[2], v16[3], v16[4], v16[5], v16[6], v16[7], v16[8], v16[9], v16[10], v16[11]);
  OUTLINED_FUNCTION_41_0();
  return (*(v14 + 8))(v16, v8);
}

unint64_t sub_21774682C(char a1, uint64_t a2, uint64_t a3)
{
  to._countAndFlagsBits = 0;
  to._object = 0xE000000000000000;
  v6 = *(v3 + 64);
  if (v6)
  {
    v7 = *(v3 + 56);
    v19 = 0x656C74697420200ALL;
    v20 = 0xEB0000000022203ALL;
    MEMORY[0x21CEA23B0](v7, v6, a3);
    MEMORY[0x21CEA23B0](34, 0xE100000000000000);
    MEMORY[0x21CEA23B0](0x656C74697420200ALL, 0xEB0000000022203ALL);
  }

  swift_getWitnessTable();
  v8._countAndFlagsBits = 0x736D657469;
  v8._object = 0xE500000000000000;
  RandomAccessCollection.musicKit_appendDescription(label:forDebugging:to:)(v8, a1 & 1, &to);
  if (MusicItemCollection.hasNextBatch.getter())
  {
    MEMORY[0x21CEA23B0](0xD000000000000016, 0x80000002177AD410);
  }

  if (dynamic_cast_existential_1_conditional(*(a2 + 16), *(a2 + 16), &protocol descriptor for MusicItemTypeValueProviding))
  {
    (*(v9 + 8))(&v19);
    v11 = v21;
    v10 = v22;
  }

  else
  {
    v11 = sub_217753348();
    v10 = v12;
  }

  v19 = 0;
  v20 = 0xE000000000000000;
  sub_217752AA8();

  v19 = 0xD000000000000014;
  v20 = 0x80000002177B6E00;
  MEMORY[0x21CEA23B0](v11, v10, v13);

  MEMORY[0x21CEA23B0](10302, 0xE200000000000000, v14);
  v15 = (to._object >> 56) & 0xF;
  if ((to._object & 0x2000000000000000) == 0)
  {
    v15 = to._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    MEMORY[0x21CEA23B0]();

    MEMORY[0x21CEA23B0](10, 0xE100000000000000, v16);
  }

  else
  {
  }

  MEMORY[0x21CEA23B0](41, 0xE100000000000000, v17);
  return v19;
}

uint64_t sub_217746B10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24188, &dword_217758930);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_217746F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  OUTLINED_FUNCTION_226_0();
  a34 = v40;
  a35 = v41;
  OUTLINED_FUNCTION_75_20();
  v64 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AC80, &unk_2177973B0);
  v42 = sub_217752D58();
  if (!v36[2])
  {
LABEL_30:

    *v35 = v42;
    OUTLINED_FUNCTION_225_1();
    return;
  }

  v43 = 0;
  OUTLINED_FUNCTION_2_149();
  OUTLINED_FUNCTION_119_14();
  if (!v38)
  {
LABEL_4:
    v45 = v43;
    while (1)
    {
      v43 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v43 >= v35)
      {
        break;
      }

      ++v45;
      if (v36[v43])
      {
        OUTLINED_FUNCTION_18_6();
        v38 = v47 & v46;
        goto LABEL_9;
      }
    }

    if (v64)
    {
      OUTLINED_FUNCTION_59_28();
      if (v62 != v63)
      {
        OUTLINED_FUNCTION_58_25(v61);
      }

      else
      {
        OUTLINED_FUNCTION_45_38(v61);
      }

      v36[2] = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_118_14();
LABEL_9:
    v48 = v44 | (v43 << 6);
    v49 = (v36[6] + 16 * v48);
    v50 = *v49;
    v51 = v49[1];
    v52 = (v36[7] + 32 * v48);
    if (v64)
    {
      sub_2172124CC(v52, &a21);
    }

    else
    {
      sub_21721E0AC(v52, &a21);
      sub_217751DE8();
    }

    sub_2177531E8();
    sub_217751FF8();
    sub_217753238();
    OUTLINED_FUNCTION_13_79();
    OUTLINED_FUNCTION_114_11();
    if (v53)
    {
      break;
    }

    OUTLINED_FUNCTION_30_49();
LABEL_22:
    OUTLINED_FUNCTION_27_58();
    *(v39 + v57) |= v58;
    v60 = (*(v42 + 48) + 16 * v59);
    *v60 = v50;
    v60[1] = v51;
    sub_2172124CC(&a21, (*(v42 + 56) + 32 * v59));
    OUTLINED_FUNCTION_46_37();
    if (!v38)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_29_50();
  while (1)
  {
    OUTLINED_FUNCTION_116_15();
    if (v53)
    {
      if (v55)
      {
        break;
      }
    }

    if (v54 == v56)
    {
      v54 = 0;
    }

    if (*(v39 + 8 * v54) != -1)
    {
      OUTLINED_FUNCTION_28_58();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_217747120(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E260, &unk_2177A2538);
  v41 = v4;
  v6 = sub_217752D58();
  if (!v5[2])
  {
LABEL_29:

LABEL_30:
    *v3 = v6;
    return;
  }

  v39 = v2;
  v40 = v5;
  v7 = 0;
  v8 = v5;
  OUTLINED_FUNCTION_2_149();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v14 = v6 + 64;
  v15 = 24;
  if (!v11)
  {
LABEL_4:
    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v13)
      {
        break;
      }

      ++v17;
      if (v8[v7])
      {
        OUTLINED_FUNCTION_18_6();
        v42 = v19 & v18;
        goto LABEL_9;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_59_28();
    v3 = v39;
    if (v37 != v38)
    {
      OUTLINED_FUNCTION_58_25(v36);
    }

    else
    {
      OUTLINED_FUNCTION_45_38(v36);
    }

    v5[2] = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v11));
    v42 = (v11 - 1) & v11;
LABEL_9:
    v20 = v16 | (v7 << 6);
    v21 = (v5[6] + 16 * v20);
    v22 = v21[1];
    v43 = *v21;
    v23 = v5[7] + v20 * v15;
    v24 = *v23;
    v25 = *(v23 + 8);
    v26 = *(v23 + 16);
    if ((v41 & 1) == 0)
    {
      sub_217751DE8();
      sub_21726A5E0(v24, v25, v26);
    }

    sub_2177531E8();
    sub_217751FF8();
    sub_217753238();
    OUTLINED_FUNCTION_13_79();
    OUTLINED_FUNCTION_114_11();
    if (v27)
    {
      break;
    }

    OUTLINED_FUNCTION_30_49();
LABEL_21:
    OUTLINED_FUNCTION_27_58();
    *(v14 + v31) |= v32;
    v34 = (*(v6 + 48) + 16 * v33);
    *v34 = v43;
    v34[1] = v22;
    v35 = *(v6 + 56) + 24 * v33;
    *v35 = v24;
    *(v35 + 8) = v25;
    *(v35 + 16) = v26;
    OUTLINED_FUNCTION_46_37();
    v5 = v40;
    v11 = v42;
    if (!v42)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_29_50();
  while (1)
  {
    OUTLINED_FUNCTION_116_15();
    if (v27)
    {
      if (v29)
      {
        break;
      }
    }

    if (v28 == v30)
    {
      v28 = 0;
    }

    if (*(v14 + 8 * v28) != -1)
    {
      OUTLINED_FUNCTION_28_58();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_217747368(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_2177586D0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2177473CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_94_18(a1, a2, a3, a4, a5);
  v8 = v92;
  v9 = v93;
  OUTLINED_FUNCTION_80_19();
  v11 = v10 >> 6;
  v70 = v5;
  sub_217751DE8();
  v68 = v6;

  v74 = v11;
  v76 = v92;
  while (1)
  {
    v12 = v7;
    v13 = v9;
    if (!v7)
    {
      break;
    }

LABEL_7:
    OUTLINED_FUNCTION_74_19(__rbit64(v12), v64, v66, v68, v70, v72, v74, v76, v78, v80);
    v17 = v16 + 24 * v15;
    v19 = *v17;
    v18 = *(v17 + 8);
    v20 = *(v17 + 16);
    v86 = v21;
    sub_217751DE8();
    v22 = sub_21726A5E0(v19, v18, v20);
    v30 = OUTLINED_FUNCTION_120_12(v22, v23, v24, v25, v26, v27, v28, v29, v65, v67, v69, v71, v73, v75, v77, v79, v81, v82, v83, v84, v86);
    v31(v30);

    v32 = OUTLINED_FUNCTION_93();
    sub_21726A608(v32, v33, v20);
    if (!v88)
    {
LABEL_19:
      sub_2172303F0(v80);
    }

    LODWORD(v84) = v91;
    v34 = *v94;
    v35 = OUTLINED_FUNCTION_25_0();
    v37 = sub_21763246C(v35, v36);
    v39 = OUTLINED_FUNCTION_117_17(v37, v38);
    if (v41)
    {
      goto LABEL_21;
    }

    v42 = v40;
    if (v34[3] >= v39)
    {
      if ((v85 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B88, &qword_2177595B0);
        sub_217752CC8();
      }
    }

    else
    {
      sub_217747120(v39, v85 & 1);
      v43 = OUTLINED_FUNCTION_25_0();
      v45 = sub_21763246C(v43, v44);
      if ((v42 & 1) != (v46 & 1))
      {
        goto LABEL_23;
      }

      v37 = v45;
    }

    v83 = (v12 - 1) & v12;
    v47 = *v94;
    if (v42)
    {
      v48 = 3 * v37;
      v49 = v47[7] + 8 * v48;
      v50 = *v49;
      v51 = *(v49 + 8);
      v52 = *(v49 + 16);
      v53 = OUTLINED_FUNCTION_93();
      sub_21726A5E0(v53, v54, v52);
      sub_21726A608(v89, v90, v91);

      v55 = v47[7] + 8 * v48;
      v56 = *v55;
      v57 = *(v55 + 8);
      *v55 = v50;
      *(v55 + 8) = v51;
      v58 = *(v55 + 16);
      *(v55 + 16) = v52;
      sub_21726A608(v56, v57, v58);
    }

    else
    {
      v47[(v37 >> 6) + 8] |= 1 << v37;
      v59 = (v47[6] + 16 * v37);
      *v59 = v87;
      v59[1] = v88;
      v60 = v47[7] + 24 * v37;
      *v60 = v89;
      *(v60 + 8) = v90;
      *(v60 + 16) = v91;
      v61 = v47[2];
      v41 = __OFADD__(v61, 1);
      v62 = v61 + 1;
      if (v41)
      {
        goto LABEL_22;
      }

      v47[2] = v62;
    }

    HIDWORD(v84) = 1;
    v9 = v13;
    v11 = v74;
    v8 = v76;
    v7 = v83;
  }

  v14 = v9;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      goto LABEL_19;
    }

    v12 = *(v8 + 8 * v13);
    ++v14;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_217753178();
  __break(1u);
  return result;
}

uint64_t sub_217747694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_94_18(a1, a2, a3, a4, a5);
  v8 = v82;
  v9 = v83;
  OUTLINED_FUNCTION_80_19();
  v11 = v10 >> 6;
  v60 = v5;
  sub_217751DE8();
  v58 = v6;

  v64 = v11;
  for (i = v82; ; v8 = i)
  {
    v12 = v9;
    v73 = v7;
    if (!v7)
    {
      break;
    }

LABEL_7:
    OUTLINED_FUNCTION_74_19(__rbit64(v7), v54, v56, v58, v60, v62, v64, i, v68, v70);
    v16 = v15 + 24 * v14;
    v18 = *v16;
    v17 = *(v16 + 8);
    v19 = *(v16 + 16);
    v75 = v20;
    v76 = *v16;
    sub_217751DE8();
    v21 = sub_21726A5E0(v18, v17, v19);
    v29 = OUTLINED_FUNCTION_120_12(v21, v22, v23, v24, v25, v26, v27, v28, v55, v57, v59, v61, v63, v65, v67, v69, v71, v72, v73, v74, v75);
    v30(v29);

    sub_21726A608(v76, v17, v19);
    if (!v78)
    {
LABEL_19:
      sub_2172303F0(v70);
    }

    v31 = *v84;
    v32 = OUTLINED_FUNCTION_145_0();
    v34 = sub_21763246C(v32, v33);
    v36 = OUTLINED_FUNCTION_117_17(v34, v35);
    if (v38)
    {
      goto LABEL_21;
    }

    v39 = v37;
    if (v31[3] >= v36)
    {
      if ((v74 & 0x100000000) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B88, &qword_2177595B0);
        sub_217752CC8();
      }
    }

    else
    {
      sub_217747120(v36, BYTE4(v74) & 1);
      v40 = OUTLINED_FUNCTION_145_0();
      v42 = sub_21763246C(v40, v41);
      if ((v39 & 1) != (v43 & 1))
      {
        goto LABEL_23;
      }

      v34 = v42;
    }

    v7 &= v7 - 1;
    v44 = *v84;
    if (v39)
    {

      v45 = v44[7] + 24 * v34;
      v46 = *v45;
      v47 = *(v45 + 8);
      *v45 = v79;
      *(v45 + 8) = v80;
      v48 = *(v45 + 16);
      *(v45 + 16) = v81;
      sub_21726A608(v46, v47, v48);
    }

    else
    {
      v44[(v34 >> 6) + 8] |= 1 << v34;
      v49 = (v44[6] + 16 * v34);
      *v49 = v77;
      v49[1] = v78;
      v50 = v44[7] + 24 * v34;
      *v50 = v79;
      *(v50 + 8) = v80;
      *(v50 + 16) = v81;
      v51 = v44[2];
      v38 = __OFADD__(v51, 1);
      v52 = v51 + 1;
      if (v38)
      {
        goto LABEL_22;
      }

      v44[2] = v52;
    }

    HIDWORD(v74) = 1;
    v9 = v12;
    v11 = v64;
  }

  v13 = v9;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      goto LABEL_19;
    }

    v7 = *(v8 + 8 * v12);
    ++v13;
    if (v7)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_217753178();
  __break(1u);
  return result;
}

uint64_t sub_217747930(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *a1 = a3;
  a1[1] = a4;
  a1[2] = a5;
  a1[3] = a6;
  *a2 = a7;
  return sub_217751DE8();
}

uint64_t sub_217747944(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  sub_217751DE8();
}

uint64_t sub_217747988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21721E0AC(a4, a1);
  sub_217751DE8();
  return a2;
}

uint64_t sub_2177479C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *a1 = a4;
  *(a1 + 8) = a5;
  *(a1 + 16) = a6;
  sub_217751DE8();
  sub_21726A5E0(a4, a5, a6);
  return a2;
}

uint64_t sub_217747A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  swift_isUniquelyReferenced_nonNull_native();
  v11 = *a4;
  v6 = OUTLINED_FUNCTION_25_0();
  result = sub_217747694(v6, v7, a3, v8, v9);
  *a4 = v11;
  return result;
}

uint64_t sub_217747AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_217747ADC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2177479C8((a2 + 2), *a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_217747B38(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v3 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_217282D8C;

  return sub_217746268(a1, a2, v6, v7, v8);
}

uint64_t sub_217747D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_217747D40(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_217747D80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_217747DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_217747E24(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217747E64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_217747ECC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_41_0();
  v5 = OUTLINED_FUNCTION_93();
  v6(v5);
  return a2;
}

__n128 OUTLINED_FUNCTION_11_89()
{
  *(v1 + 16) = v3;
  v5 = v1 + (v2 << 6);
  result = *(v4 - 176);
  v7 = *(v4 - 160);
  v8 = *(v4 - 144);
  *(v5 + 74) = *(v0 + 234);
  *(v5 + 48) = v7;
  *(v5 + 64) = v8;
  *(v5 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_75()
{
  v4 = *(v2 + 56);
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  *v1 = *(v0 + 32);
  *(v1 + 8) = 0;
  *(v1 + 56) = v4;
  *(v1 + 64) = *(v2 + 64);
  *(v1 + 80) = v5;
  *(v1 + 88) = v6;
  *(v1 + 96) = v6;

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_15_74()
{
  v4 = *(v2 + 56);
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  *v1 = v0;
  *(v1 + 8) = 0;
  *(v1 + 56) = v4;
  *(v1 + 64) = *(v2 + 64);
  *(v1 + 80) = v5;
  *(v1 + 88) = v6;
  *(v1 + 96) = v6;

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_18_65()
{

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_20_58()
{
  v6 = v0[16];
  *(v4 - 176) = v0[15];
  *(v4 - 160) = v6;
  *(v4 - 144) = v0[17];
  *(v1 + 234) = *(v1 + 106);

  return sub_2171F0790(v4 - 240, v2, v3);
}

__n128 OUTLINED_FUNCTION_21_57()
{
  v1 = *(v0 + 128);
  *(v0 + 176) = *(v0 + 112);
  *(v0 + 192) = v1;
  result = *(v0 + 144);
  *(v0 + 208) = result;
  *(v0 + 224) = *(v0 + 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_34_45()
{

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_40_40()
{
  *(v0 + 296) = -256;

  return sub_217747ECC(v3 - 240, v0 + 48, v1, v2);
}

uint64_t OUTLINED_FUNCTION_41_43()
{

  return sub_217752418();
}

uint64_t OUTLINED_FUNCTION_45_38@<X0>(uint64_t a1@<X8>)
{

  return sub_217747368(0, (a1 + 63) >> 6, v1);
}

void *OUTLINED_FUNCTION_50_37()
{

  return sub_217292624((v0 + 112), v1, v2);
}

uint64_t OUTLINED_FUNCTION_53_32@<X0>(unint64_t a1@<X8>)
{

  return sub_217276318(a1 > 1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_55_29@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 240) = a1;

  return sub_217276318(0, v2, 0);
}

uint64_t OUTLINED_FUNCTION_56_21()
{
  *(v0 + 296) = v2;

  return sub_217747ECC(v4 - 168, v0 + 48, v1, v3);
}

uint64_t OUTLINED_FUNCTION_69_23()
{

  return sub_217747ECC(v2, v3 - 168, v0, v1);
}

uint64_t OUTLINED_FUNCTION_76_20(uint64_t a1)
{

  return sub_217752D08();
}

void OUTLINED_FUNCTION_86_18(uint64_t a1, uint64_t a2)
{
  v3 = v2[66];
  v4 = v2[58];
  __swift_storeEnumTagSinglePayload(v2[56], a2, 1, v2[59]);
  sub_21725CF00(v3, 0);
  *v4 = v2[52];
  *(v4 + 8) = 0;
}

double OUTLINED_FUNCTION_87_21()
{
  *(v0 + 32) = v1;
  sub_21725CF00(*(v0 + 40), 1);
}

__n128 OUTLINED_FUNCTION_93_17()
{
  result = *(v1 + 41);
  *(v1 + 105) = result;
  *(v0 + 297) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_94_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 - 72) = a5;

  return sub_217747AA0(a1, a2, a3, (v5 - 144));
}

uint64_t OUTLINED_FUNCTION_102_15(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_2175FA70C(a1, v10, v9, v8, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_103_17()
{
  *(v0 + 432) = *(v0 + 528);

  return sub_217752738();
}

uint64_t OUTLINED_FUNCTION_105_17()
{

  return LegacySectionedCollectionItemLoader.removeFirst()();
}

uint64_t OUTLINED_FUNCTION_106_14()
{
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_107_13()
{
}

uint64_t OUTLINED_FUNCTION_108_14()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_109_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_2175FA70C(v8, v11, v9, v10, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_110_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return type metadata accessor for RelatedItem(0, v5, v4, a4);
}

uint64_t OUTLINED_FUNCTION_111_16()
{

  return swift_storeEnumTagMultiPayload();
}

double OUTLINED_FUNCTION_112_16()
{
  sub_21725CF00(*(v0 + 32), 1);
}

__n128 OUTLINED_FUNCTION_113_14@<Q0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  result = a6;
  *(*(v6 + 48) + 32 * a1) = a6;
  return result;
}

double OUTLINED_FUNCTION_122_11(uint64_t a1, uint64_t a2)
{
  __swift_storeEnumTagSinglePayload(a1, a2, 1, v3);
  sub_21725CF00(v2, 1);
}

uint64_t OUTLINED_FUNCTION_129_14(uint64_t a1)
{

  return sub_217752778();
}

uint64_t OUTLINED_FUNCTION_130_14(uint64_t a1)
{
  *(v1 - 264) = a1;

  return sub_217752418();
}

uint64_t OUTLINED_FUNCTION_131_13(uint64_t a1)
{

  return sub_217752778();
}

uint64_t OUTLINED_FUNCTION_133_13(uint64_t a1, char a2)
{
  sub_217283C5C(a1, a2);
}

uint64_t CatalogSearchSuggestionsRawResponse.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28BD0, &qword_217771970);
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_131_0();
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21750B298(v10, v11, v12);
  v13 = sub_2177532C8();
  if (!v2)
  {
    sub_21750B2EC(v13, v14, v15);
    sub_217752E58();
    (*(v8 + 8))(v3, v6);
    *a2 = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CatalogSearchSuggestionsRawResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28BE8, &qword_217771978);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_131_0();
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21750B298(v7, v8, v9);
  sub_217751DE8();
  v10 = sub_2177532F8();
  sub_21750B340(v10, v11, v12);
  sub_217752F38();

  return (*(v5 + 8))(v1, v3, v13);
}

uint64_t sub_2177489E8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6974736567677573 && a2 == 0xEB00000000736E6FLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_217753058();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_217748A84(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E2E8, &unk_2177A28B0);
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = v14 - v8;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21774A2FC(v10, v11, v12);
  sub_2177532F8();
  v14[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E2D0, &qword_2177A28A8);
  sub_21774A39C(&qword_27CB2E2F0, &qword_27CB2E2F8, &unk_2177A29FC, MEMORY[0x277D83948]);
  sub_217752F88();
  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_217748C0C()
{
  OUTLINED_FUNCTION_238();
  sub_21727CEF4();
  return sub_217753238();
}

void *sub_217748C4C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E2C0, &qword_2177A28A0);
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_131_0();
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21774A2FC(v8, v9, v10);
  sub_2177532C8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E2D0, &qword_2177A28A8);
    sub_21774A39C(&qword_27CB2E2D8, &qword_27CB2E2E0, &unk_2177A2A24, MEMORY[0x277D83978]);
    sub_217752EA8();
    (*(v6 + 8))(v2, v4);
    v8 = v12;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v8;
}

uint64_t sub_217748DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2177489E8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_217748E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21774A2FC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217748E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21774A2FC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void *sub_217748E98@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_217748C4C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_217748EFC(uint64_t a1)
{
  sub_2177531E8();
  sub_21727CEF4();
  return sub_217753238();
}

uint64_t static CatalogSearchSuggestionsRawResponse.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      sub_217751DE8();
      sub_21726FC24();
      v4 = v3;

      if (v4)
      {
        return 1;
      }
    }
  }

  else if (!v2)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_217748FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21750B298(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217748FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21750B298(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CatalogSearchSuggestionsRawResponse.hash(into:)()
{
  if (*v0)
  {
    OUTLINED_FUNCTION_119();

    sub_21727CEF4();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }
}

uint64_t CatalogSearchSuggestionsRawResponse.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_238();
  sub_217753208();
  if (v1)
  {
    sub_21727CEF4();
  }

  return sub_217753238();
}

BOOL sub_2177490D4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  v6 = &v34 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24710, &unk_2177A28C0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24718, &qword_217758CA0);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  if (*a1)
  {
    v14 = 0x6C75736552706F74;
  }

  else
  {
    v14 = 0x736D726574;
  }

  if (*a1)
  {
    v15 = 0xEA00000000007374;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  if (*a2)
  {
    v16 = 0x6C75736552706F74;
  }

  else
  {
    v16 = 0x736D726574;
  }

  if (*a2)
  {
    v17 = 0xEA00000000007374;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  v18 = v14 == v16 && v15 == v17;
  if (v18)
  {
  }

  else
  {
    v19 = sub_217753058();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  v20 = *(a1 + 16);
  v21 = *(a2 + 16);
  if (v20)
  {
    if (!v21)
    {
      return 0;
    }

    v22 = *(a1 + 8) == *(a2 + 8) && v20 == v21;
    if (!v22 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  v23 = *(a1 + 32);
  v24 = *(a2 + 32);
  if (v23)
  {
    if (!v24)
    {
      return 0;
    }

    v25 = *(a1 + 24) == *(a2 + 24) && v23 == v24;
    if (!v25 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v26 = *(a1 + 48);
  v27 = *(a2 + 48);
  if (v26)
  {
    if (!v27)
    {
      return 0;
    }

    v28 = *(a1 + 40) == *(a2 + 40) && v26 == v27;
    if (!v28 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v27)
  {
    return 0;
  }

  v29 = *(type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion(0) + 32);
  v30 = *(v10 + 48);
  sub_21774A438(a1 + v29, v13);
  sub_21774A438(a2 + v29, &v13[v30]);
  OUTLINED_FUNCTION_29_1(v13);
  if (v18)
  {
    OUTLINED_FUNCTION_29_1(&v13[v30]);
    if (v18)
    {
      sub_2171F0738(v13, &qword_27CB24710, &unk_2177A28C0);
      return 1;
    }
  }

  else
  {
    sub_21774A438(v13, v9);
    OUTLINED_FUNCTION_29_1(&v13[v30]);
    if (!v31)
    {
      sub_21774A90C(&v13[v30], v6, &qword_27CB24708, &unk_217758C90);
      v33 = sub_21767E9A4(v9);
      sub_2171F0738(v6, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v9, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v13, &qword_27CB24710, &unk_2177A28C0);
      return (v33 & 1) != 0;
    }

    sub_2171F0738(v9, &qword_27CB24708, &unk_217758C90);
  }

  sub_2171F0738(v13, &qword_27CB24718, &qword_217758CA0);
  return 0;
}

uint64_t sub_21774944C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6554686372616573 && a2 == 0xEA00000000006D72;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x5479616C70736964 && a2 == 0xEB000000006D7265;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_217753058();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_2177495F4(char a1)
{
  result = 1684957547;
  switch(a1)
  {
    case 1:
      result = 0x6554686372616573;
      break;
    case 2:
      result = 0x5479616C70736964;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0x746E65746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217749690(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E350, &qword_2177A2AA8);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = &v18[-v9];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21774A81C(v11, v12, v13);
  v14 = sub_2177532F8();
  v18[15] = *v3;
  v18[14] = 0;
  sub_21774AA2C(v14, v15, v16);
  OUTLINED_FUNCTION_72();
  sub_217752F88();
  if (!v2)
  {
    v18[13] = 1;
    OUTLINED_FUNCTION_72();
    sub_217752EF8();
    v18[12] = 2;
    OUTLINED_FUNCTION_72();
    sub_217752EF8();
    v18[11] = 3;
    OUTLINED_FUNCTION_72();
    sub_217752EF8();
    type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion(0);
    v18[10] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
    sub_21774AA80(&qword_27CB2A218, &protocol conformance descriptor for <> CloudResource<A>);
    OUTLINED_FUNCTION_72();
    sub_217752F38();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_2177498AC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  v6 = &v12[-v5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24710, &unk_2177A28C0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = &v12[-v8];
  sub_217751FF8();

  if (v1[2])
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_133_1();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (v1[4])
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_133_1();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (v1[6])
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_133_1();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v10 = type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion(0);
  sub_21774A438(v1 + *(v10 + 32), v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
  {
    return OUTLINED_FUNCTION_120();
  }

  sub_21774A90C(v9, v6, &qword_27CB24708, &unk_217758C90);
  OUTLINED_FUNCTION_119();
  CatalogSearchRawResponse.TopResult.hash(into:)();
  sub_217751FF8();
  if (*&v6[v3[10] + 8])
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  memcpy(v12, &v6[v3[11]], sizeof(v12));
  sub_2172638E8(a1);
  OUTLINED_FUNCTION_221(v3[12]);
  OUTLINED_FUNCTION_221(v3[13]);
  OUTLINED_FUNCTION_221(v3[14]);
  OUTLINED_FUNCTION_221(v3[15]);
  return sub_2171F0738(v6, &qword_27CB24708, &unk_217758C90);
}

uint64_t sub_217749B2C()
{
  OUTLINED_FUNCTION_238();
  sub_2177498AC(v1);
  return sub_217753238();
}

void sub_217749B64(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24710, &unk_2177A28C0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - v5;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E338, &qword_2177A2AA0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v8 = type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v30 = a1;
  v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_21774A81C(v13, v14, v15);
  v16 = sub_2177532C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    v27 = v8;
    v35 = 0;
    sub_21774A870(v16, v17, v18);
    OUTLINED_FUNCTION_5_118();
    sub_217752EA8();
    *v11 = v36;
    v34 = 1;
    OUTLINED_FUNCTION_5_118();
    *(v11 + 1) = sub_217752E18();
    *(v11 + 2) = v19;
    v33 = 2;
    OUTLINED_FUNCTION_5_118();
    *(v11 + 3) = sub_217752E18();
    *(v11 + 4) = v20;
    v32 = 3;
    OUTLINED_FUNCTION_5_118();
    *(v11 + 5) = sub_217752E18();
    v26 = v11;
    *(v11 + 6) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
    v31 = 4;
    sub_21774AA80(&qword_27CB2A270, &protocol conformance descriptor for <> CloudResource<A>);
    OUTLINED_FUNCTION_5_118();
    sub_217752E58();
    v22 = OUTLINED_FUNCTION_82();
    v23(v22);
    v24 = v26;
    sub_21774A90C(v6, &v26[*(v27 + 32)], &qword_27CB24710, &unk_2177A28C0);
    sub_21774A96C(v24, v28);
    __swift_destroy_boxed_opaque_existential_1(v30);
    sub_21774A9D0(v24);
  }
}

uint64_t sub_217749F94(uint64_t a1)
{
  v2 = *v1;
  sub_2177531E8();
  sub_217753208();
  if (v2)
  {
    sub_21727CEF4();
  }

  return sub_217753238();
}

uint64_t sub_217749FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21774944C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21774A024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21774A81C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21774A060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21774A81C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_21774A0D8(uint64_t a1)
{
  sub_2177531E8();
  sub_2177498AC(v2);
  return sub_217753238();
}

unint64_t sub_21774A118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2E298;
  if (!qword_27CB2E298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E298);
  }

  return result;
}

unint64_t sub_21774A1A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2E2A0;
  if (!qword_27CB2E2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E2A0);
  }

  return result;
}

unint64_t sub_21774A1F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2E2A8;
  if (!qword_27CB2E2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E2A8);
  }

  return result;
}

unint64_t sub_21774A250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2E2B0;
  if (!qword_27CB2E2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E2B0);
  }

  return result;
}

unint64_t sub_21774A2A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2E2B8;
  if (!qword_27CB2E2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E2B8);
  }

  return result;
}

unint64_t sub_21774A2FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2E2C8;
  if (!qword_27CB2E2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E2C8);
  }

  return result;
}

uint64_t type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion(uint64_t a1)
{
  result = qword_27CB2E300;
  if (!qword_27CB2E300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21774A39C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2E2D0, &qword_2177A28A8);
    sub_21774A8C4(a2, type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21774A438(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24710, &unk_2177A28C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *sub_21774A4A8(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_21774A57C(uint64_t a1)
{
  sub_21774A618();
  if (v1 <= 0x3F)
  {
    sub_21774A668(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21774A618()
{
  if (!qword_280BE7598)
  {
    v0 = sub_2177528F8();
    if (!v1)
    {
      atomic_store(v0, &qword_280BE7598);
    }
  }
}

void sub_21774A668(uint64_t a1)
{
  if (!qword_27CB2E310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24708, &unk_217758C90);
    v1 = sub_2177528F8();
    if (!v2)
    {
      atomic_store(v1, &qword_27CB2E310);
    }
  }
}

unint64_t sub_21774A718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2E320;
  if (!qword_27CB2E320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E320);
  }

  return result;
}

unint64_t sub_21774A770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2E328;
  if (!qword_27CB2E328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E328);
  }

  return result;
}

unint64_t sub_21774A7C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2E330;
  if (!qword_27CB2E330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E330);
  }

  return result;
}

unint64_t sub_21774A81C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2E340;
  if (!qword_27CB2E340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E340);
  }

  return result;
}

unint64_t sub_21774A870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2E348;
  if (!qword_27CB2E348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E348);
  }

  return result;
}

uint64_t sub_21774A8C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21774A90C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_43();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_21774A96C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21774A9D0(uint64_t a1)
{
  v2 = type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21774AA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2E358;
  if (!qword_27CB2E358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E358);
  }

  return result;
}

uint64_t sub_21774AA80(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24708, &unk_217758C90);
    sub_21774A8C4(&qword_27CB2A220, type metadata accessor for CatalogSearchRawResponse.TopResult, &protocol conformance descriptor for CatalogSearchRawResponse.TopResult);
    sub_21774A8C4(&qword_27CB2A228, type metadata accessor for CatalogSearchRawResponse.TopResult, &protocol conformance descriptor for CatalogSearchRawResponse.TopResult);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CatalogSearchSuggestionsRawResponse.Suggestion.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21774AC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2E360;
  if (!qword_27CB2E360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E360);
  }

  return result;
}

unint64_t sub_21774AC8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2E368;
  if (!qword_27CB2E368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E368);
  }

  return result;
}

unint64_t sub_21774ACE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2E370;
  if (!qword_27CB2E370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E370);
  }

  return result;
}

uint64_t sub_21774AD3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[1];
  v68 = *v2;
  v69 = v4;
  v59 = *(v2 + 32);
  v67[0] = *(v2 + 33);
  v5 = *(v2 + 7);
  *(v67 + 15) = *(v2 + 6);
  v71[0] = v68;
  v65 = v5;
  v66 = v5;
  if (!*(v5 + 16))
  {
    sub_21774C5E4(v71, &v60);
    sub_217202078(&v66, &v60, &qword_27CB25590, &qword_21776DFB0);
LABEL_7:
    v18 = 0;
    v58 = 0;
    v19 = 0;
    v16 = 0;
    goto LABEL_8;
  }

  sub_21774C5E4(v71, &v60);
  sub_217202078(&v66, &v60, &qword_27CB25590, &qword_21776DFB0);
  v7 = sub_21763246C(0xD000000000000013, 0x80000002177AC9D0);
  if ((v8 & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = *(v5 + 56) + 24 * v7;
  if (*(v9 + 16))
  {
    goto LABEL_7;
  }

  v10 = *(v9 + 8);
  v57 = *v9;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = *(v12 + 48);
  sub_217751DE8();
  v14 = v13(v11, v12);
  v16 = v15;
  static MusicAuthorization.currentStatus.getter(&v60);
  if (!v16)
  {
    v17 = v60;
    switch(v60)
    {
      case 3:

        goto LABEL_50;
      default:
        v36 = sub_217753058();

        if (v36)
        {
LABEL_50:
          v49 = [objc_opt_self() deviceLibrary];
          v50 = [v49 uniqueIdentifier];

          v14 = sub_217751F48();
          v16 = v51;

          goto LABEL_51;
        }

        if (qword_280BE8358 != -1)
        {
          swift_once();
        }

        v37 = sub_217751AF8();
        __swift_project_value_buffer(v37, qword_280C02570);
        sub_217751DE8();
        v38 = sub_217751AD8();
        v39 = sub_217752808();
        sub_21726A608(v57, v10, 0);
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *&v70 = v41;
          *v40 = 136315394;
          v42 = sub_21729C0E8(v57, v10, &v70);
          v43.n128_f64[0] = sub_21726A608(v57, v10, 0);
          *(v40 + 4) = v42;
          *(v40 + 12) = 2080;
          v44 = 0xE600000000000000;
          v45 = 0x6465696E6564;
          if (v17 != 1)
          {
            v45 = 0x7463697274736572;
            v44 = 0xEA00000000006465;
          }

          if (v17)
          {
            v46 = v45;
          }

          else
          {
            v46 = 0x7265746544746F6ELL;
          }

          if (v17)
          {
            v47 = v44;
          }

          else
          {
            v47 = 0xED000064656E696DLL;
          }

          *&v60 = 46;
          *(&v60 + 1) = 0xE100000000000000;
          MEMORY[0x21CEA23B0](v46, v47, v43);

          v48 = sub_21729C0E8(v60, *(&v60 + 1), &v70);

          *(v40 + 14) = v48;
          _os_log_impl(&dword_2171EE000, v38, v39, "Cannot correlate database ID from PlayParameters encoded data %s with the database ID of the active user. This process is not authorized to access the user's Apple Music content. Music authorization status: %s.", v40, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x21CEA4360](v41, -1, -1);
          MEMORY[0x21CEA4360](v40, -1, -1);
        }

        else
        {

          sub_21726A608(v57, v10, 0);
        }

        break;
    }

    goto LABEL_7;
  }

LABEL_51:
  if (v57 == v14 && v10 == v16)
  {
    sub_21726A608(v57, v10, 0);
  }

  else
  {
    v53 = sub_217753058();
    sub_21726A608(v57, v10, 0);
    if ((v53 & 1) == 0)
    {

      goto LABEL_7;
    }
  }

  if (*(v5 + 16) && (v54 = sub_21763246C(0xD000000000000015, 0x80000002177AC9B0), (v55 & 1) != 0) && (v56 = *(v5 + 56) + 24 * v54, !*(v56 + 16)))
  {
    v18 = *v56;
    v58 = *(v56 + 8);
    sub_217751DE8();
    v19 = v14;
  }

  else
  {

    v18 = 0;
    v58 = 0;
    v19 = 0;
    v16 = 0;
  }

  sub_2172A4E08(0xD000000000000015, 0x80000002177AC9B0, &v60);
  sub_2173A4614(v60, *(&v60 + 1), v61);
  sub_2172A4E08(0xD000000000000013, 0x80000002177AC9D0, &v60);
  sub_2173A4614(v60, *(&v60 + 1), v61);
LABEL_8:
  v20 = v65;
  if (*(v65 + 16) && (v21 = sub_21763246C(0xD000000000000012, 0x80000002177AC990), (v22 & 1) != 0) && (v23 = *(v20 + 56) + 24 * v21, !*(v23 + 16)))
  {
    v24 = *v23;
    v25 = *(v23 + 8);
    sub_217751DE8();
    sub_2172A4E08(0xD000000000000012, 0x80000002177AC990, &v60);
    sub_2173A4614(v60, *(&v60 + 1), v61);
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  v60 = v69;
  v70 = *(v67 + 7);
  v26 = *(v67 + 15);
  if (*(v67 + 15))
  {
    v27 = v70;
    v28 = v60;
    v29 = v60 == 0x6D75626C61 && *(&v60 + 1) == 0xE500000000000000;
    if (v29 || (sub_217753058() & 1) != 0)
    {
      v30 = 0;
    }

    else
    {
      v34 = v28 == 0x7473696C79616C70 && *(&v28 + 1) == 0xE800000000000000;
      if (v34 || (sub_217753058() & 1) != 0)
      {
        v30 = 2;
      }

      else
      {
        v30 = 3;
        if (v28 != 0x6E6F6974617473 || *(&v28 + 1) != 0xE700000000000000)
        {
          if (sub_217753058())
          {
            v30 = 3;
          }

          else
          {
            v30 = 6;
          }
        }
      }
    }

    sub_217202078(&v70, v62, &qword_27CB2E388, qword_2177A2D00);
  }

  else
  {
    v27 = 0;
    v30 = 0;
  }

  v31 = v65;
  v32 = v60;
  v63 = v71[0];
  v64 = v60;
  *a2 = v71[0];
  *(a2 + 16) = v32;
  *(a2 + 32) = v59;
  *(a2 + 40) = v27;
  *(a2 + 48) = v26;
  *(a2 + 56) = v30;
  *(a2 + 64) = v24;
  *(a2 + 72) = v25;
  *(a2 + 80) = v18;
  *(a2 + 88) = v58;
  *(a2 + 96) = v19;
  *(a2 + 104) = v16;
  *(a2 + 112) = v31;
  return sub_21774C640(&v60, v62);
}

__n128 MusicIdentifierSet.playParameters(for:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v18 = *a1;
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 24);
  v19 = *(v2 + 32);
  v8 = *(v2 + 48);
  v20 = *(v2 + 16);
  v21 = *(v2 + 40);
  v10 = *(v2 + 136);
  v9 = *(v2 + 144);
  v11 = *(v2 + 152);
  v12 = *(v2 + 160);
  v13 = *(v2 + 272);
  if (v13 != 1)
  {
    if (v7)
    {
      sub_217751DE8();
      v17 = v20;
      v6 = v7;
      goto LABEL_7;
    }

LABEL_6:
    v17 = v5;
    sub_217751DE8();

    goto LABEL_7;
  }

  if (!v8)
  {
    goto LABEL_6;
  }

  sub_217751DE8();
  v17 = v21;
  v6 = v8;
LABEL_7:
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2172A5428(v10, v9, v11, v12);
  v14 = sub_217751DC8();
  *a2 = v17;
  *(a2 + 8) = v6;
  *(a2 + 16) = v18;
  *(a2 + 24) = v4;
  *(a2 + 32) = v13;
  *(a2 + 40) = v20;
  *(a2 + 48) = v7;
  result.n128_u64[0] = v21;
  result.n128_u64[1] = v8;
  *&v16 = v10;
  *(&v16 + 1) = v9;
  *(a2 + 56) = v19;
  *(a2 + 64) = result;
  *(a2 + 80) = v16;
  *(a2 + 96) = v11;
  *(a2 + 104) = v12;
  *(a2 + 112) = v14;
  return result;
}

void sub_21774B5EC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v7 = *a1;
  v6 = a1[1];
  v9 = a1[2];
  v8 = a1[3];
  LODWORD(v10) = *(a1 + 32);
  v11 = a1[8];
  v53 = a1[9];
  v54 = a1[11];
  v55 = a1[12];
  v56 = a1[13];
  v57 = a1[10];
  v12 = a1[14];
  v36 = *v3;
  v37 = *(v3 + 32);
  v52 = v3[8];
  v42 = v3[10];
  v39 = v3[9];
  v40 = v3[11];
  if (*(v3[14] + 16) >= *(v12 + 16))
  {
    v13 = v3[14];
  }

  else
  {
    v13 = a1[14];
  }

  v48 = v3[12];
  v49 = v3[13];
  v45 = v13;
  sub_217751DE8();
  v50 = v7;
  v51 = v6;
  v60 = v7;
  v61 = v6;
  v46 = v9;
  v47 = v8;
  v62 = v9;
  v63 = v8;
  v44 = v10;
  v64 = v10;
  *v65 = *(a1 + 33);
  *&v65[15] = *(a1 + 3);
  v38 = v11;
  v66 = v11;
  v67 = v53;
  v68 = v57;
  v69 = v54;
  v70 = v55;
  v71 = v56;
  v72 = v12;
  v14 = &v58;
  sub_21774BB14(&v58);
  v15 = v59;
  if (v59)
  {
    v16 = v48;
    v17 = v40;
    v18 = v42;
  }

  else
  {
    v18 = v42;
    v17 = v40;
    v16 = v48;
    v14 = v73;
    sub_21774BB14(v73);
    v15 = v74;
  }

  v19 = *(v14 + 16);
  v20 = *v14;
  v21 = v7;
  if (v53)
  {
    v22 = v38;
    v23 = v53;
    v24 = v6;
    v25 = v17;
    v26 = v49;
  }

  else
  {
    v24 = v6;
    v25 = v17;
    v43 = v19;
    v41 = v20;
    if (v10 == 2 || (v10 & 1) == 0)
    {
      v27 = v39;
      v22 = v52;
      if (!v39)
      {
        if (v37 == 2 || (v37 & 1) == 0)
        {
          v22 = 0;
          v27 = 0;
        }

        else
        {
          v22 = v36;
          v27 = sub_217751DE8();
        }
      }
    }

    else
    {
      v22 = v7;
      v27 = v51;
    }

    sub_217751DE8();
    v26 = v49;
    v21 = v50;
    v19 = v43;
    v20 = v41;
    v23 = v27;
  }

  v29 = v56;
  v28 = v57;
  v30 = v55;
  v31 = v54;
  if (!v54)
  {
    v32 = v16;
    v33 = v19;
    v34 = v20;
    v10 = v21;
    v35 = v23;
    sub_2172A5428(v18, v25, v32, v26);
    v23 = v35;
    v21 = v10;
    LOBYTE(v10) = v44;
    v20 = v34;
    v19 = v33;
    v28 = v18;
    v31 = v25;
    v24 = v51;
    v30 = v48;
    v29 = v26;
  }

  *a2 = v21;
  *(a2 + 8) = v24;
  *(a2 + 16) = v46;
  *(a2 + 24) = v47;
  *(a2 + 32) = v10;
  *(a2 + 40) = v20;
  *(a2 + 48) = v15;
  *(a2 + 56) = v19;
  *(a2 + 64) = v22;
  *(a2 + 72) = v23;
  *(a2 + 80) = v28;
  *(a2 + 88) = v31;
  *(a2 + 96) = v30;
  *(a2 + 104) = v29;
  *(a2 + 112) = v45;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();

  sub_2172A5428(v57, v54, v55, v56);
}

id sub_21774B91C()
{
  sub_217751DC8();
  sub_217751378();
  swift_allocObject();
  sub_217751368();
  v1 = memcpy(__dst, v0, sizeof(__dst));
  sub_2172DF550(v1, v2, v3);
  v4 = sub_217751358();
  v6 = v5;
  sub_217751348();
  swift_allocObject();
  sub_217751338();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
  sub_2174CCE6C();
  sub_217751308();

  sub_217275694(v4, v6);

  sub_2173A1E08(__dst[0]);

  sub_21774C5A0();
  v7 = sub_217751DE8();
  v8 = sub_21774C448(v7);
  if (v8)
  {
    v9 = v8;

    return v9;
  }

  else
  {
    result = sub_217752D08();
    __break(1u);
  }

  return result;
}

uint64_t sub_21774BB14@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[6];
  if (v3)
  {
    v4 = v1[5];
    v5 = *(v1 + 56);
    v6 = v3;
  }

  else
  {
    v4 = *v1;
    v6 = v1[1];
    v7 = v1[2];
    v8 = v1[3];
    v9 = *(v1 + 32);
    if (v9 == 2 || (v9 & 1) == 0)
    {
      v10 = v7 == 0x6D75626C61 && v8 == 0xE500000000000000;
      if (v10 || (sub_217753058() & 1) != 0)
      {
        v5 = 0;
      }

      else
      {
        v12 = v7 == 0x7473696C79616C70 && v8 == 0xE800000000000000;
        if (v12 || (sub_217753058() & 1) != 0)
        {
          v5 = 2;
        }

        else
        {
          v5 = 3;
          if (v7 != 0x6E6F6974617473 || v8 != 0xE700000000000000)
          {
            if (sub_217753058())
            {
              v5 = 3;
            }

            else
            {
              v5 = 6;
            }
          }
        }
      }

      sub_217751DE8();
    }

    else
    {
      v4 = 0;
      v6 = 0;
      v5 = 0;
    }
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;

  return sub_217751DE8();
}

void static PlayParameters.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = a1[5];
  v6 = a1[6];
  v95 = *(a1 + 56);
  v93 = a1[8];
  v97 = a1[9];
  v88 = a1[11];
  v89 = a1[10];
  v90 = a1[12];
  v91 = a1[13];
  v83 = a1[14];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v94 = *(a2 + 56);
  v92 = *(a2 + 64);
  v96 = *(a2 + 72);
  v86 = *(a2 + 88);
  v87 = *(a2 + 80);
  v84 = *(a2 + 96);
  v85 = *(a2 + 104);
  v12 = *a1 == *a2 && a1[1] == *(a2 + 8);
  v82 = *(a2 + 112);
  if (!v12 && (sub_217753058() & 1) == 0)
  {
    return;
  }

  v13 = v2 == v7 && v3 == v8;
  if (!v13 && (sub_217753058() & 1) == 0)
  {
    return;
  }

  if (v4 == 2)
  {
    if (v9 != 2)
    {
      return;
    }
  }

  else if (v9 == 2 || ((v9 ^ v4) & 1) != 0)
  {
    return;
  }

  if (!v6)
  {
    if (!v11)
    {

      goto LABEL_30;
    }

LABEL_25:
    sub_217751DE8();

    return;
  }

  if (!v11)
  {
    goto LABEL_25;
  }

  if (v5 == v10 && v6 == v11)
  {
    OUTLINED_FUNCTION_3_137();
    swift_bridgeObjectRetain_n();
  }

  else
  {
    v15 = sub_217753058();
    OUTLINED_FUNCTION_3_137();
    swift_bridgeObjectRetain_n();
    if ((v15 & 1) == 0)
    {
      OUTLINED_FUNCTION_3_137();
      swift_bridgeObjectRelease_n();
      return;
    }
  }

  OUTLINED_FUNCTION_3_137();
  swift_bridgeObjectRelease_n();
  if (v95 == v94)
  {
LABEL_30:
    if (v97)
    {
      if (!v96)
      {
        return;
      }

      v16 = v93 == v92 && v97 == v96;
      if (!v16 && (sub_217753058() & 1) == 0)
      {
        return;
      }
    }

    else if (v96)
    {
      return;
    }

    if (v88)
    {
      if (v86)
      {
        v17 = v89 == v87 && v88 == v86;
        if (v17 || (sub_217753058() & 1) != 0)
        {
          if (v90 != v84 || v91 != v85)
          {
            v19 = sub_217753058();
            v20 = OUTLINED_FUNCTION_5_1();
            sub_2172A5428(v20, v21, v22, v23);
            v24 = OUTLINED_FUNCTION_1_154();
            sub_2172A5428(v24, v25, v26, v27);
            v28 = OUTLINED_FUNCTION_5_1();
            sub_2172A5428(v28, v29, v30, v31);
            v32 = OUTLINED_FUNCTION_1_154();
            sub_2172B8404(v32, v33);

            v34 = OUTLINED_FUNCTION_5_1();
            sub_2172B8404(v34, v35);
            if ((v19 & 1) == 0)
            {
              return;
            }

            goto LABEL_61;
          }

          v52 = OUTLINED_FUNCTION_5_1();
          sub_2172A5428(v52, v53, v54, v55);
          v56 = OUTLINED_FUNCTION_2_150();
          sub_2172A5428(v56, v57, v58, v59);
          v60 = OUTLINED_FUNCTION_5_1();
          sub_2172A5428(v60, v61, v62, v63);
          v64 = OUTLINED_FUNCTION_2_150();
          sub_2172B8404(v64, v65);

LABEL_60:
          v66 = OUTLINED_FUNCTION_5_1();
          sub_2172B8404(v66, v67);
LABEL_61:

          sub_217261FB0(v83, v82);
          return;
        }

        v68 = OUTLINED_FUNCTION_5_1();
        sub_2172A5428(v68, v69, v70, v71);
        v72 = OUTLINED_FUNCTION_1_154();
        sub_2172A5428(v72, v73, v74, v75);
        v76 = OUTLINED_FUNCTION_5_1();
        sub_2172A5428(v76, v77, v78, v79);
        v80 = OUTLINED_FUNCTION_1_154();
        sub_2172B8404(v80, v81);

        v50 = OUTLINED_FUNCTION_5_1();
LABEL_56:
        sub_2172B8404(v50, v51);
        return;
      }

      v40 = OUTLINED_FUNCTION_5_1();
      sub_2172A5428(v40, v41, v42, v43);
      OUTLINED_FUNCTION_4_147();
      v44 = OUTLINED_FUNCTION_5_1();
      sub_2172A5428(v44, v45, v46, v47);
    }

    else
    {
      sub_2172A5428(v89, 0, v90, v91);
      if (!v86)
      {
        OUTLINED_FUNCTION_4_147();
        goto LABEL_60;
      }

      v36 = OUTLINED_FUNCTION_1_154();
      sub_2172A5428(v36, v37, v38, v39);
    }

    v48 = OUTLINED_FUNCTION_5_1();
    sub_2172B8404(v48, v49);
    v50 = OUTLINED_FUNCTION_1_154();
    goto LABEL_56;
  }
}

uint64_t PlayParameters.hash(into:)(const void *a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 72);
  v7 = *(v1 + 88);
  v9 = *(v1 + 112);
  sub_217751FF8();
  sub_217751FF8();
  if (v3 != 2)
  {
    OUTLINED_FUNCTION_89();
  }

  sub_217753208();
  if (v4)
  {
    OUTLINED_FUNCTION_89();
    sub_217751FF8();
    MEMORY[0x21CEA3550](v5);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_8:
    sub_217753208();
    if (v7)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  sub_217753208();
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_5:
  OUTLINED_FUNCTION_89();
  sub_217751FF8();
  if (v7)
  {
LABEL_6:
    OUTLINED_FUNCTION_89();
    sub_217751FF8();
    sub_217751FF8();
    goto LABEL_10;
  }

LABEL_9:
  sub_217753208();
LABEL_10:

  return sub_217265A08(a1, v9);
}

uint64_t PlayParameters.hashValue.getter()
{
  sub_2177531E8();
  PlayParameters.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_21774C1E8(uint64_t a1)
{
  sub_2177531E8();
  PlayParameters.hash(into:)(v2);
  return sub_217753238();
}

uint64_t PlayParameters.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_2171FF30C(a1, v16);
  sub_2171FF30C(v16, __src);
  sub_2173A94AC(__src, &v13);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    sub_2171FF30C(v16, v12);
    v21[0] = v13;
    v21[1] = v14;
    v21[2] = *v15;
    v22 = *&v15[16];
    sub_2175B7B18(v21, __src);
    sub_217386444();
    v6 = v5;
    __swift_destroy_boxed_opaque_existential_1(v16);
    v17[0] = v13;
    v17[1] = v14;
    v18 = v15[0];
    v19 = *&v15[8];
    v20 = v6;
    v7 = a1[3];
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v7);
    Decoder.dataRequestConfiguration.getter(v7, v8);
    sub_21774AD3C(v10, __src);
    sub_21774C4D0(v17);
    sub_21733AB9C(v10);
    memcpy(a2, __src, 0x78uLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PlayParameters.encode(to:)(void *a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_2173A9938(v5);
  sub_2175B37C4(a1);
  return sub_21774C4D0(v5);
}

id sub_21774C448(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_217751D88();
  v3 = [v1 initWithDictionary_];

  return v3;
}

uint64_t sub_21774C4D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E378, &qword_2177A2BB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21774C53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2E380;
  if (!qword_27CB2E380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E380);
  }

  return result;
}

unint64_t sub_21774C5A0()
{
  result = qword_27CB2AFE0;
  if (!qword_27CB2AFE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CB2AFE0);
  }

  return result;
}

uint64_t sub_21774C69C(uint64_t a1)
{
  if (!*(a1 + 16) || (v2 = sub_217635FD4(), (v3 & 1) == 0))
  {

    return 4;
  }

  sub_21721E0AC(*(a1 + 56) + 32 * v2, v6);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 4;
  }

  result = sub_21774C748(v5);
  if (result == 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_21774C748(uint64_t a1)
{
  v1 = [objc_opt_self() typeForRawValue_];
  if (v1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x201000304uLL >> (8 * v1));
  }
}

id sub_21774C7A4(char a1)
{
  v1 = qword_2177A2DC8[a1];
  v2 = objc_opt_self();

  return [v2 rawValueForType_];
}

uint64_t sub_21774C7F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21774C748(*a1);
  *a2 = result;
  return result;
}

id sub_21774C824@<X0>(void *a1@<X8>)
{
  result = sub_21774C7A4(*v1);
  *a1 = result;
  return result;
}

_BYTE *_s4KindOwst_1(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21774C930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2E390;
  if (!qword_27CB2E390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E390);
  }

  return result;
}

unint64_t sub_21774C988()
{
  result = qword_27CB2E398;
  if (!qword_27CB2E398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2E3A0, qword_2177A2D88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E398);
  }

  return result;
}

void static CloudRealm.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (sub_217753058() & 1) != 0)
  {
    v7 = v2 == v4 && v3 == v5;
    if (v7 || (sub_217753058() & 1) != 0)
    {
      OUTLINED_FUNCTION_93();

      sub_217270404();
    }
  }
}

uint64_t CloudRealm.init(scheme:host:additionalQueryItems:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

void CloudRealm.hash(into:)(uint64_t a1)
{
  sub_217751FF8();
  sub_217751FF8();
  v1 = OUTLINED_FUNCTION_93();

  sub_21727D208(v1, v2);
}

uint64_t CloudRealm.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_2177531E8();
  sub_217751FF8();
  sub_217751FF8();
  sub_21727D208(v3, v1);
  return sub_217753238();
}

uint64_t sub_21774CBFC(uint64_t a1)
{
  v2 = *(v1 + 16);
  *&v4[72] = *v1;
  v5 = v2;
  v6 = *(v1 + 24);
  sub_2177531E8();
  CloudRealm.hash(into:)(v4);
  return sub_217753238();
}

void sub_21774CC54()
{
  qword_27CB2E3A8 = 0x7370747468;
  unk_27CB2E3B0 = 0xE500000000000000;
  qword_27CB2E3B8 = 0xD000000000000013;
  unk_27CB2E3C0 = 0x80000002177B6E90;
  qword_27CB2E3C8 = MEMORY[0x277D84F90];
}

uint64_t static CloudRealm.public.getter@<X0>(void *a1@<X8>)
{
  if (qword_27CB23EE8 != -1)
  {
    swift_once();
  }

  v2 = unk_27CB2E3B0;
  v3 = qword_27CB2E3B8;
  v4 = unk_27CB2E3C0;
  v5 = qword_27CB2E3C8;
  *a1 = qword_27CB2E3A8;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  sub_217751DE8();
  sub_217751DE8();

  return sub_217751DE8();
}

unint64_t sub_21774CD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2E3D0;
  if (!qword_27CB2E3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E3D0);
  }

  return result;
}

uint64_t sub_21774CD8C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_21774CDCC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t static MusicItemDataSource.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[1];
  switch(v3)
  {
    case 0uLL:
      if (v4)
      {
        goto LABEL_21;
      }

      v5 = OUTLINED_FUNCTION_1_155(*a1, 0);
      v6 = 0;
      goto LABEL_28;
    case 1uLL:
      if (v4 != 1)
      {
        goto LABEL_21;
      }

      v7 = 1;
      v8 = OUTLINED_FUNCTION_1_155(*a1, 1uLL);
      sub_21726B8A0(v8, 1uLL);
      return v7;
    case 2uLL:
      if (v4 != 2)
      {
        goto LABEL_21;
      }

      v5 = OUTLINED_FUNCTION_1_155(*a1, 2uLL);
      v6 = 2;
      goto LABEL_28;
    case 3uLL:
      if (v4 != 3)
      {
        goto LABEL_21;
      }

      v5 = OUTLINED_FUNCTION_1_155(*a1, 3uLL);
      v6 = 3;
      goto LABEL_28;
    case 4uLL:
      if (v4 != 4)
      {
        goto LABEL_21;
      }

      v5 = OUTLINED_FUNCTION_1_155(*a1, 4uLL);
      v6 = 4;
      goto LABEL_28;
    case 5uLL:
      if (v4 != 5)
      {
        goto LABEL_21;
      }

      v5 = OUTLINED_FUNCTION_1_155(*a1, 5uLL);
      v6 = 5;
      goto LABEL_28;
    case 6uLL:
      if (v4 != 6)
      {
        goto LABEL_21;
      }

      v5 = OUTLINED_FUNCTION_1_155(*a1, 6uLL);
      v6 = 6;
      goto LABEL_28;
    case 7uLL:
      if (v4 != 7)
      {
        goto LABEL_21;
      }

      v5 = OUTLINED_FUNCTION_1_155(*a1, 7uLL);
      v6 = 7;
      goto LABEL_28;
    case 8uLL:
      if (v4 != 8)
      {
        goto LABEL_21;
      }

      v5 = OUTLINED_FUNCTION_1_155(*a1, 8uLL);
      v6 = 8;
      goto LABEL_28;
    default:
      if (v4 >= 9)
      {
        v13 = *a1;
        if (v2 != *a2 || v3 != v4)
        {
          v15 = sub_217753058();
          v16 = OUTLINED_FUNCTION_6_7();
          OUTLINED_FUNCTION_0_173(v16, v17);
          v18 = OUTLINED_FUNCTION_6_7();
          sub_21726B8A0(v18, v19);
          return v15 & 1;
        }

        OUTLINED_FUNCTION_0_173(v13, v3);
        v5 = v2;
        v6 = v3;
LABEL_28:
        sub_21726B8A0(v5, v6);
        return 1;
      }

      else
      {
LABEL_21:
        v9 = OUTLINED_FUNCTION_6_7();
        OUTLINED_FUNCTION_0_173(v9, v10);
        v11 = OUTLINED_FUNCTION_6_7();
        sub_21726B8A0(v11, v12);
        return 0;
      }
  }
}

uint64_t MusicItemDataSource.hash(into:)(uint64_t a1)
{
  switch(*(v1 + 8))
  {
    case 0:
      v2 = 0;
      goto LABEL_11;
    case 1:
      v2 = 1;
      goto LABEL_11;
    case 2:
      v2 = 2;
      goto LABEL_11;
    case 3:
      v2 = 3;
      goto LABEL_11;
    case 4:
      v2 = 4;
      goto LABEL_11;
    case 5:
      v2 = 5;
      goto LABEL_11;
    case 6:
      v2 = 6;
      goto LABEL_11;
    case 7:
      v2 = 7;
      goto LABEL_11;
    case 8:
      v2 = 8;
LABEL_11:
      result = MEMORY[0x21CEA3550](v2);
      break;
    default:
      MEMORY[0x21CEA3550](9);

      result = sub_217751FF8();
      break;
  }

  return result;
}

uint64_t MusicItemDataSource.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_2177531E8();
  switch(v1)
  {
    case 0:
      v2 = 0;
      goto LABEL_11;
    case 1:
      v2 = 1;
      goto LABEL_11;
    case 2:
      v2 = 2;
      goto LABEL_11;
    case 3:
      v2 = 3;
      goto LABEL_11;
    case 4:
      v2 = 4;
      goto LABEL_11;
    case 5:
      v2 = 5;
      goto LABEL_11;
    case 6:
      v2 = 6;
      goto LABEL_11;
    case 7:
      v2 = 7;
      goto LABEL_11;
    case 8:
      v2 = 8;
LABEL_11:
      MEMORY[0x21CEA3550](v2);
      break;
    default:
      MEMORY[0x21CEA3550](9);
      sub_217751FF8();
      break;
  }

  return sub_217753238();
}

uint64_t sub_21774D1E4(uint64_t a1)
{
  v4 = *v1;
  sub_2177531E8();
  MusicItemDataSource.hash(into:)(v3);
  return sub_217753238();
}

double MusicItemDataSource.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_2171FF30C(a1, v12);
  v8 = sub_21772D55C(v5, v6, v7);
  sub_2175DA0A0(v8, v9, v10);
  sub_217752258();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_2175DA0F4(v13, v14, v12);
    __swift_destroy_boxed_opaque_existential_1(a1);
    result = *v12;
    *a2 = v12[0];
  }

  return result;
}

double MusicItemDataSource.encode(to:)(uint64_t a1)
{
  v7 = sub_2175DA3B4();
  v3 = sub_21772D3F8(v7, v1, v2);
  sub_2175DA0A0(v3, v4, v5);
  sub_217752208();
}

unint64_t sub_21774D364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2E3D8;
  if (!qword_27CB2E3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E3D8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit0A14ItemDataSourceO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21774D400(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF6 && *(a1 + 16))
  {
    return (*a1 + 2147483639);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 8;
  if (v4 >= 0xA)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21774D458(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF7)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483639;
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 8;
    }
  }

  return result;
}

uint64_t sub_21774D4B8(void *a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v8 = swift_allocObject();
  sub_21774DC90(a1, a2, a3, a4);
  return v8;
}

uint64_t LegacySectionedCollectionItemLoader.indices.getter()
{
  sub_21774DFA8();
  sub_2177528F8();
  sub_217752418();
  swift_getWitnessTable();
  sub_217752658();

  return v1;
}

void *LegacySectionedCollectionItemLoader.subscript.getter(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1);
  result = sub_217752338();
  if (a1 == a2)
  {
    goto LABEL_6;
  }

  if (a2 < a1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (a1 < a2)
  {
    v5 = a1;
    do
    {
      v6 = v5 + 1;
      LegacySectionedCollectionItemLoader.subscript.getter();
      sub_217752418();
      sub_2177523C8();
      v5 = v6;
    }

    while (a2 != v6);
LABEL_6:
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2E3E0, &qword_2177A2FE0);
    sub_21759CA0C(v7, v8, v9);
    sub_2177527D8();
    result = sub_2177527C8();
    if (__OFSUB__(v12, v11))
    {
      __break(1u);
    }

    else if (((v12 - v11) & 0x8000000000000000) == 0)
    {
      v10 = sub_217752478();

      return v10;
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t LegacySectionedCollectionItemLoader.subscript.getter()
{
  sub_21774DFE0();
  UnfairLock.locked<A>(_:)(sub_21774FB40);
}

uint64_t sub_21774D878(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = sub_21774DFA8();
  v5 = sub_2177528F8();
  v6 = a2(a1, v4, v5);

  return v6;
}

double sub_21774D8FC(uint64_t a1)
{
  sub_21774DFA8();
  OUTLINED_FUNCTION_0_174();
  sub_2177528F8();
  sub_2177523E8();
}

Swift::Int_optional __swiftcall LegacySectionedCollectionItemLoader.index(_:offsetBy:limitedBy:)(Swift::Int _, Swift::Int offsetBy, Swift::Int limitedBy)
{
  sub_21774DFA8();
  sub_2177528F8();
  v3 = sub_2177523A8();

  v4 = v3;
  v5 = 0;
  result.value = v4;
  result.is_nil = v5;
  return result;
}

uint64_t sub_21774DA1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = sub_21774DFA8();
  v7 = sub_2177528F8();
  v8 = a3(a1, a2, v6, v7);

  return v8;
}

uint64_t LegacySectionedCollectionItemLoader.isEmpty.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21774DFA8();
  sub_2177528F8();
  sub_217752418();
  swift_getWitnessTable();
  v3 = sub_217752738();

  return v3 & 1;
}

uint64_t LegacySectionedCollectionItemLoader.removeFirst()()
{
  sub_21774DFE0();
  OUTLINED_FUNCTION_0_174();
  UnfairLock.locked<A>(_:)(sub_21774FB5C);
}

id static LegacySectionedCollectionItemLoader.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == *(a2 + 48))
  {
    return [*(a1 + 16) hasSameContentAsSectionedCollection_];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21774DC28(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  sub_21774DFA8();
  OUTLINED_FUNCTION_0_174();
  v5 = sub_2177528F8();
  v6 = a1(v3, v5);

  return v6;
}

uint64_t sub_21774DC90(void *a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v9 = *(*v4 + 80);
  v22 = sub_2177528F8();
  MEMORY[0x28223BE20](v22);
  v11 = &v22 - v10;
  v12 = *a2;
  LODWORD(a2) = *(a2 + 8);
  v13 = *a3;
  v14 = *a4;
  type metadata accessor for UnfairLock();
  v15 = swift_allocObject();
  v16 = swift_slowAlloc();
  *(v15 + 16) = v16;
  *v16 = 0;
  *(v4 + 64) = v15;
  *(v4 + 16) = a1;
  *(v4 + 24) = v12;
  *(v4 + 32) = a2;
  *(v4 + 40) = v13;
  *(v4 + 48) = v14;
  v23 = v12;
  v24 = a2;
  v17 = a1;
  sub_217290154(v17, &v23, &v25);
  v18 = v27;
  v19 = v28;
  *(v4 + 72) = v25;
  *(v4 + 80) = v26;
  *(v4 + 96) = v18;
  *(v4 + 104) = v19;
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v9);
  if (a2 == 1)
  {
    [v17 totalItemCount];
  }

  else
  {
    [v17 numberOfItemsInSection_];
  }

  v20 = sub_217752408();

  *(v4 + 56) = v20;
  return v4;
}

uint64_t LegacySectionedCollectionItemLoader.__allocating_init(legacySectionedCollection:kind:dataSources:propertyProviderSource:)(uint64_t a1, uint64_t *a2, uint64_t *a3, char *a4)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a3;
  v7 = *a4;
  swift_unknownObjectRetain();
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v12 = v6;
    v13 = v4;
    LOBYTE(v14) = v5;
    v11 = v7;
    v9 = sub_21774D4B8(v8, &v13, &v12, &v11);
    swift_unknownObjectRelease();
    return v9;
  }

  else
  {
    swift_unknownObjectRelease();
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD00000000000001CLL, 0x80000002177B6EB0);
    sub_217752C78();
    MEMORY[0x21CEA23B0](0xD00000000000004ALL, 0x80000002177B6ED0);
    result = OUTLINED_FUNCTION_4("Fatal error");
    __break(1u);
  }

  return result;
}

uint64_t sub_21774DFE8()
{
  v1 = *v0;
  v12 = *(*v0 + 80);
  v2 = v12;
  v13 = *(v1 + 88);
  v10 = v13;
  KeyPath = swift_getKeyPath(byte_2177A3398, &v12);
  v4 = type metadata accessor for LegacySectionedCollectionItemLoader(0, v2, v10, v3);
  WitnessTable = swift_getWitnessTable();
  v7 = sub_2175FA70C(sub_2174D32F0, &v9, v4, v2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v6);

  return v7;
}

uint64_t sub_21774E0E4()
{
  v1 = dynamic_cast_existential_1_conditional(*(*v0 + 80), *(*v0 + 80), &protocol descriptor for MusicItemTypeValueProviding);
  if (v1)
  {
    v3 = v1;
    v4 = v2;
    v20 = MEMORY[0x277D84F90];
    v5 = v0[2];
    v6 = swift_allocObject();
    v6[2] = v3;
    v6[3] = v4;
    v6[4] = v0;
    v6[5] = &v20;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_21774FD90;
    *(v7 + 24) = v6;
    v18 = sub_2172AC5D8;
    v19 = v7;
    aBlock = MEMORY[0x277D85DD0];
    v15 = 1107296256;
    v16 = sub_2177094CC;
    v17 = &block_descriptor_21;
    v8 = _Block_copy(&aBlock);

    [v5 enumerateItemIdentifiersUsingBlock_];
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v10 = v20;

      return v10;
    }

    __break(1u);
  }

  aBlock = 0;
  v15 = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0x6D65746920656854, 0xEE00206570797420);
  v12 = sub_217753348();
  MEMORY[0x21CEA23B0](v12);

  MEMORY[0x21CEA23B0](0xD00000000000002DLL, 0x80000002177AAFA0, v13);
  result = OUTLINED_FUNCTION_4("Fatal error");
  __break(1u);
  return result;
}

void *sub_21774E338(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v12 = *(a5 + 8);
  swift_unknownObjectRetain();
  v12(&v21, a4, a5);
  v18 = v21;
  v19 = v22;
  v20 = v23;
  v17 = *(a6 + 40);
  v16 = 4;
  sub_217751DE8();
  sub_2172B6904(a2, &v18, &v17, &v16, __src);
  sub_21770B8AC();
  v13 = *(*a7 + 16);
  sub_21770BBDC(v13);
  v14 = *a7;
  *(v14 + 16) = v13 + 1;
  return memcpy((v14 + 360 * v13 + 32), __src, 0x161uLL);
}

uint64_t sub_21774E428()
{
  v0 = sub_2177528F8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - v2;
  sub_21774DFE0();
  UnfairLock.locked<A>(_:)(sub_21774FDA4);

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_21774E538(uint64_t *a1)
{
  swift_beginAccess();
  sub_2177528F8();
  sub_217752418();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2177527B8();
  return swift_endAccess();
}

BOOL static LegacySectionedCollectionItemLoader.Kind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t LegacySectionedCollectionItemLoader.Kind.hash(into:)()
{
  if (v0[1])
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x21CEA3550](1);
  }

  return MEMORY[0x21CEA3550](v1);
}

uint64_t LegacySectionedCollectionItemLoader.Kind.hashValue.getter()
{
  sub_2177531E8();
  LegacySectionedCollectionItemLoader.Kind.hash(into:)();
  return sub_217753238();
}

uint64_t sub_21774E700(uint64_t a1)
{
  sub_2177531E8();
  LegacySectionedCollectionItemLoader.Kind.hash(into:)();
  return sub_217753238();
}

uint64_t LegacySectionedCollectionItemLoader.deinit()
{

  v1 = *(v0 + 72);

  return v0;
}

uint64_t LegacySectionedCollectionItemLoader.__deallocating_deinit()
{
  LegacySectionedCollectionItemLoader.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_21774E7C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v80 = a3;
  v74 = *a1;
  v5 = v74[10];
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v78 = &v62 - v7;
  v8 = sub_217751968();
  v82 = *(v8 - 8);
  v83 = v8;
  MEMORY[0x28223BE20](v8);
  v75 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v81 = &v62 - v11;
  v12 = sub_2177528F8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v77 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v76 = &v62 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v62 - v18;
  v20 = a1;
  sub_21774DFA8();
  v79 = a2;
  sub_217752488();

  v96 = v5;
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) != 1)
  {
    return (*(v6 + 32))(v80, v19, v96);
  }

  v63 = *(v13 + 8);
  v64 = v13 + 8;
  v63(v19, v12);
  v21 = dynamic_cast_existential_1_conditional(v96, v96, &protocol descriptor for UnderlyingLegacyModelObjectTypeProviding);
  if (v21)
  {
    v67 = v22;
    v68 = v21;
    v23 = dynamic_cast_existential_1_conditional(v96, v96, &protocol descriptor for UnderlyingLegacyModelObjectConvertible);
    if (v23)
    {
      v69 = v24;
      v70 = v23;
      v71 = v13;
      v72 = v12;
      v73 = v6;
      v25 = dynamic_cast_existential_1_conditional(v96, v96, &protocol descriptor for MusicItemTypeValueProviding);
      if (v25)
      {
        v27 = v25;
        v28 = v26;
        swift_beginAccess();
        _s16PositionProviderVMa(0, v96, v74[11], v29);
        v30 = v81;
        sub_2172902F0(v79, v81);
        swift_endAccess();
        v31 = a1[2];
        v65 = a1;
        v66 = v31;
        v32 = sub_217751938();
        v33 = [v31 identifiersForItemAtIndexPath_];

        v34 = *(v28 + 8);
        swift_unknownObjectRetain();
        v34(v94, v27, v28);
        v91 = *v94;
        v92 = *&v94[16];
        *&v88 = v20[5];
        LOBYTE(v85) = 4;
        sub_217751DE8();
        v74 = v33;
        sub_2172B6904(v33, &v91, &v88, &v85, v95);
        memcpy(v94, v95, sizeof(v94));
        (*(v82 + 16))(v75, v30, v83);
        sub_217269EF4(v95, &v91);
        v35 = [v66 itemAtIndexPathBlock];
        *(swift_allocObject() + 16) = v35;
        v93 = 0;
        v91 = 0u;
        v92 = 0u;
        v36 = v28;
        v37 = v65;
        v34(&v88, v27, v36);
        v85 = v88;
        v86 = v89;
        v87 = v90;
        v84 = *(v37 + 48);
        v38 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
        swift_allocObject();
        LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
        *(&v92 + 1) = v38;
        v93 = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
        *&v91 = v39;
        v40 = *(v67 + 8);
        v75 = v39;

        v40(&v88);
        v42 = v69;
        v41 = v70;
        v43 = *(v69 + 24);
        *&v94[24] = v70;
        *&v94[32] = v69;
        __swift_allocate_boxed_opaque_existential_0(v94);
        v43(&v91, &v88, v41, v42);
        sub_2171FF30C(v94, &v91);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
        v44 = v76;
        if (swift_dynamicCast())
        {
          sub_217269F50(v95);
          v45 = v96;
          __swift_storeEnumTagSinglePayload(v44, 0, 1, v96);
          v46 = v73;
          v47 = v78;
          (*(v73 + 32))(v78, v44, v45);
          v48 = *(v46 + 16);
          v49 = v80;
          v48(v80, v47, v45);
          v50 = v77;
          v48(v77, v49, v45);
          __swift_storeEnumTagSinglePayload(v50, 0, 1, v45);
          swift_beginAccess();
          v51 = v72;
          sub_217752418();
          sub_217752328();
          v52 = v37[7];
          v53 = v79;
          sub_21774FD3C(v79, v52, v51);
          (*(v71 + 40))(v52 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v53, v50, v51);
          swift_endAccess();
          swift_unknownObjectRelease();

          (*(v46 + 8))(v47, v45);
          (*(v82 + 8))(v81, v83);
          return __swift_destroy_boxed_opaque_existential_1(v94);
        }

        __swift_storeEnumTagSinglePayload(v44, 1, 1, v96);
        v63(v44, v72);
        *&v91 = 0;
        *(&v91 + 1) = 0xE000000000000000;
        sub_217752AA8();
        MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
        sub_217752C78();
        MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AB1B0);
        v61 = sub_217753348();
        MEMORY[0x21CEA23B0](v61);
      }

      else
      {
        v95[0] = 0;
        v95[1] = 0xE000000000000000;
        sub_217752AA8();
        MEMORY[0x21CEA23B0](0x6D65746920656854, 0xEE00206570797420);
        v59 = sub_217753348();
        MEMORY[0x21CEA23B0](v59);

        MEMORY[0x21CEA23B0](0xD00000000000002DLL, 0x80000002177AAFA0, v60);
      }
    }

    else
    {
      v95[0] = 0;
      v95[1] = 0xE000000000000000;
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0x6D65746920656854, 0xEE00206570797420);
      v57 = sub_217753348();
      MEMORY[0x21CEA23B0](v57);

      MEMORY[0x21CEA23B0](0xD00000000000003CLL, 0x80000002177AAF60, v58);
    }
  }

  else
  {
    v95[0] = 0;
    v95[1] = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0x6D65746920656854, 0xEE00206570797420);
    v55 = sub_217753348();
    MEMORY[0x21CEA23B0](v55);

    MEMORY[0x21CEA23B0](0xD00000000000003ELL, 0x80000002177AB1E0, v56);
  }

  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_21774F228@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = sub_2177528F8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v16 - v11;
  v16[1] = a1;
  type metadata accessor for LegacySectionedCollectionItemLoader(0, v5, *(v4 + 88), v13);
  swift_getWitnessTable();
  sub_217752728();
  v14 = *(v7 + 8);
  v14(v12, v6);
  swift_beginAccess();
  sub_217752418();
  swift_getWitnessTable();
  sub_217752778();
  swift_endAccess();
  if (__swift_getEnumTagSinglePayload(v9, 1, v5) != 1)
  {
    return (*(*(v5 - 8) + 32))(a2, v9, v5);
  }

  v14(v9, v6);
  result = sub_217752D08();
  __break(1u);
  return result;
}

Swift::Int sub_21774F4B0@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = LegacySectionedCollectionItemLoader.index(before:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_21774F4E0@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = LegacySectionedCollectionItemLoader.startIndex.getter(a2, a3, a4);
  *a1 = result;
  return result;
}

uint64_t sub_21774F50C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = LegacySectionedCollectionItemLoader.endIndex.getter(a2, a3, a4);
  *a1 = result;
  return result;
}

void (*sub_21774F538(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_21774F5A0(v2);
  return sub_21759C398;
}

void (*sub_21774F5A0(void *a1))(void *a1)
{
  v2 = *(*v1 + 80);
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  a1[2] = __swift_coroFrameAllocStub(*(v3 + 64));
  LegacySectionedCollectionItemLoader.subscript.getter();
  return sub_217744E74;
}

void *sub_21774F65C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = LegacySectionedCollectionItemLoader.subscript.getter(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

uint64_t sub_21774F694@<X0>(uint64_t *a1@<X8>)
{
  result = LegacySectionedCollectionItemLoader.indices.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21774F73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = type metadata accessor for LegacySectionedCollectionItemLoader(0, *(a3 + 80), *(a3 + 88), a4);

  return a5(a1, a2, v8, a4);
}

void sub_21774F7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LegacySectionedCollectionItemLoader(0, *(a3 + 80), *(a3 + 88), a4);

  JUMPOUT(0x21CEA2A50);
}

Swift::Int sub_21774F808@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = LegacySectionedCollectionItemLoader.index(after:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_21774F838@<X0>(void *a1@<X8>)
{
  *a1 = *v1;

  v6 = LegacySectionedCollectionItemLoader.startIndex.getter(v3, v4, v5);

  a1[1] = v6;
  return result;
}

uint64_t sub_21774F884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_21774F8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for LegacySectionedCollectionItemLoader(0, *(a1 + 80), *(a1 + 88), a4);
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7C8](v4, WitnessTable);
}

void sub_21774F938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LegacySectionedCollectionItemLoader(0, *(a4 + 80), *(a4 + 88), a4);

  JUMPOUT(0x21CEA24B0);
}

uint64_t LegacySectionedCollectionItemLoader.hashValue.getter()
{
  sub_2177531E8();
  LegacySectionedCollectionItemLoader.hash(into:)();
  return sub_217753238();
}

uint64_t sub_21774FB00(uint64_t a1)
{
  sub_2177531E8();
  LegacySectionedCollectionItemLoader.hash(into:)();
  return sub_217753238();
}

uint64_t sub_21774FCB8(uint64_t result, int a2, int a3)
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_21774FCE8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21774FD04(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_21774FD3C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

lldiv_t lldiv(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x282202968](a1, a2);
  result.rem = v3;
  result.quot = v2;
  return result;
}