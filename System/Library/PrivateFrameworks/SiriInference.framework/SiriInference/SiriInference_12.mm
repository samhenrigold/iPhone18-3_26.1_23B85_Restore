uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DD477824(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
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

uint64_t sub_1DD477864(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

_BYTE *sub_1DD4778BC(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1DD477964(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD477A40()
{
  result = qword_1ECCDD0F0;
  if (!qword_1ECCDD0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD0F0);
  }

  return result;
}

unint64_t sub_1DD477A98()
{
  result = qword_1ECCDD0F8;
  if (!qword_1ECCDD0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD0F8);
  }

  return result;
}

unint64_t sub_1DD477AF0()
{
  result = qword_1ECCDD100;
  if (!qword_1ECCDD100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD100);
  }

  return result;
}

unint64_t sub_1DD477B48()
{
  result = qword_1ECCDD108;
  if (!qword_1ECCDD108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD108);
  }

  return result;
}

void sub_1DD477B9C(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v35 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DD64D850;
  v6 = objc_opt_self();
  v7 = sub_1DD63CFA8();
  v8 = [v6 predicateForEventsWithStartDateAfter_];

  if (!v8)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *(v5 + 32) = v8;
  v9 = objc_opt_self();
  sub_1DD478748(v9);
  if (v10)
  {
    v11 = sub_1DD63FDA8();
  }

  else
  {
    v11 = 0;
  }

  sub_1DD39638C(0, &qword_1EE160148, 0x1E696AEC0);
  v12 = sub_1DD477FB8(0x746E692F7070612FLL, 0xEC00000073746E65);
  v13 = [v6 predicateForObjectsWithMetadataKey:v11 andValue:v12];

  if (!v13)
  {
    goto LABEL_22;
  }

  sub_1DD39638C(0, &qword_1EE1601C8, 0x1E696AB28);
  *(v5 + 40) = v13;
  v14 = sub_1DD47802C(v5);
  v15 = [objc_opt_self() tombstoneStream];
  if (!v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v15;
  sub_1DD39638C(0, &qword_1EE166240, 0x1E6997968);
  v17 = [swift_getObjCClassFromMetadata() startDateSortDescriptorAscending_];
  if (!v17)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v18 = v17;
  v19 = swift_allocObject();
  v35 = xmmword_1DD643B80;
  *(v19 + 16) = xmmword_1DD643B80;
  *(v19 + 32) = v16;
  v20 = swift_allocObject();
  *(v20 + 16) = v35;
  *(v20 + 32) = v18;
  v21 = v14;
  v22 = v18;
  v23 = v16;
  v24 = sub_1DD4780B0(v14, v19, 0, 1, v20);
  if (!v24)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v25 = v24;
  sub_1DD4781B8(v24);
  if (v1)
  {
  }

  else
  {
    v27 = v26;

    if (sub_1DD3CC020())
    {
      sub_1DD408BFC();
      if ((v27 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x1E12B2C10](0, v27);
      }

      else
      {
        v28 = *(v27 + 32);
      }

      v29 = v28;

      v30 = [v29 startDate];

      if (v30)
      {
        sub_1DD63D048();

        v31 = sub_1DD63D078();
        v32 = 0;
      }

      else
      {

        v31 = sub_1DD63D078();
        v32 = 1;
      }

      v34 = v36;
      __swift_storeEnumTagSinglePayload(v4, v32, 1, v31);
      sub_1DD3D7DA0(v4, v34);
    }

    else
    {

      v33 = sub_1DD63D078();
      __swift_storeEnumTagSinglePayload(v36, 1, 1, v33);
    }
  }
}

id sub_1DD477FB8(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1DD63FDA8();

  v4 = [v2 initWithString_];

  return v4;
}

id sub_1DD47802C(uint64_t a1)
{
  sub_1DD39638C(0, &qword_1EE166250, 0x1E696AE18);
  v1 = sub_1DD6400F8();

  v2 = [swift_getObjCClassFromMetadata() andPredicateWithSubpredicates_];

  return v2;
}

id sub_1DD4780B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  sub_1DD39638C(0, &qword_1EE166238, 0x1E6997970);
  v9 = sub_1DD6400F8();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1DD39638C(0, &qword_1EE166230, 0x1E696AEB0);
  v10 = sub_1DD6400F8();

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() eventQueryWithPredicate:a1 eventStreams:v9 offset:a3 limit:a4 sortDescriptors:v10];

  return v11;
}

void sub_1DD4781B8(uint64_t a1)
{
  v2 = MEMORY[0x1E12B3350]();
  sub_1DD478230(a1, &v3, &v4);
  objc_autoreleasePoolPop(v2);
}

void sub_1DD478230(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v6 = [objc_opt_self() userKnowledgeStore];
  if (v6)
  {
    v7 = v6;
    v40[0] = 0;
    v8 = [v6 executeQuery:a1 error:v40];
    v9 = v40[0];
    if (v8)
    {
      v10 = v8;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v40[0] = 0;
        sub_1DD39638C(0, &qword_1EE166220, 0x1E6997960);
        v11 = v9;
        v12 = v10;
        sub_1DD640108();

        v13 = v40[0];
        if (v40[0])
        {

          *a3 = v13;
          return;
        }
      }

      else
      {
        v23 = v9;
      }

      if (qword_1EE166258 != -1)
      {
        swift_once();
      }

      v24 = sub_1DD63F9F8();
      __swift_project_value_buffer(v24, qword_1EE16F0A8);
      v25 = v10;
      v26 = sub_1DD63F9D8();
      v27 = sub_1DD640378();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v40[0] = v39;
        *v28 = 136315138;
        v29 = v25;
        v30 = a2;
        v31 = [v29 description];
        v38 = v27;
        v32 = sub_1DD63FDD8();
        v34 = v33;

        a2 = v30;
        v35 = sub_1DD39565C(v32, v34, v40);

        *(v28 + 4) = v35;
        _os_log_impl(&dword_1DD38D000, v26, v38, "invalid query results. expected [_DKEvent], got %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v39);
        MEMORY[0x1E12B3DA0](v39, -1, -1);
        MEMORY[0x1E12B3DA0](v28, -1, -1);
      }

      type metadata accessor for InferenceError();
      swift_allocObject();
      v36 = sub_1DD4DE96C(55, 0, 0xE000000000000000, 0xD00000000000006ELL, 0x80000001DD66CED0, 0x79726575516E7572, 0xEC000000293A5F28, 45, MEMORY[0x1E69E7CC0], 1);
      sub_1DD426968();
      v15 = swift_allocError();
      *v37 = v36;
      swift_willThrow();
    }

    else
    {
      v17 = v40[0];
      v18 = sub_1DD63CD98();

      swift_willThrow();
      type metadata accessor for InferenceError();
      swift_allocObject();
      v19 = sub_1DD4DE96C(56, 0, 0xE000000000000000, 0xD00000000000006ELL, 0x80000001DD66CED0, 0x79726575516E7572, 0xEC000000293A5F28, 40, MEMORY[0x1E69E7CC0], 1);
      v40[0] = v18;
      v20 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
      *(v19 + 24) = sub_1DD63FE38();
      *(v19 + 32) = v21;

      sub_1DD426968();
      v15 = swift_allocError();
      *v22 = v19;
      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for InferenceError();
    swift_allocObject();
    v14 = sub_1DD4DE96C(66, 0, 0xE000000000000000, 0xD00000000000006ELL, 0x80000001DD66CED0, 0x79726575516E7572, 0xEC000000293A5F28, 39, MEMORY[0x1E69E7CC0], 2);
    *(v14 + 24) = 0;
    *(v14 + 32) = 0xE000000000000000;

    sub_1DD426968();
    v15 = swift_allocError();
    *v16 = v14;
    swift_willThrow();
  }

  *a2 = v15;
}

uint64_t sub_1DD478748(void *a1)
{
  v1 = [a1 eventStreamName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD63FDD8();

  return v3;
}

uint64_t Country.Value.init(rawValue:)@<X0>(char *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD110, &qword_1DD64D860);
  v3 = swift_allocObject();
  sub_1DD3AE030(v3, 255);
  *v4 = "AD";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  *(v4 + 24) = "AE";
  *(v4 + 32) = 2;
  *(v4 + 40) = 2;
  *(v4 + 48) = "AF";
  *(v4 + 56) = 2;
  *(v4 + 64) = 2;
  *(v4 + 72) = "AG";
  *(v4 + 80) = 2;
  *(v4 + 88) = 2;
  *(v4 + 96) = "AI";
  *(v4 + 104) = 2;
  *(v4 + 112) = 2;
  *(v4 + 120) = "AL";
  *(v4 + 128) = 2;
  *(v4 + 136) = 2;
  *(v4 + 144) = "AM";
  *(v4 + 152) = 2;
  *(v4 + 160) = 2;
  *(v4 + 168) = "AN";
  *(v4 + 176) = 2;
  *(v4 + 184) = 2;
  *(v4 + 192) = "AO";
  *(v4 + 200) = 2;
  *(v4 + 208) = 2;
  *(v4 + 216) = "AQ";
  *(v4 + 224) = 2;
  *(v4 + 232) = 2;
  *(v4 + 240) = "AR";
  *(v4 + 248) = 2;
  *(v4 + 256) = 2;
  *(v4 + 264) = "AS";
  *(v4 + 272) = 2;
  *(v4 + 280) = 2;
  *(v4 + 288) = "AT";
  *(v4 + 296) = 2;
  *(v4 + 304) = 2;
  *(v4 + 312) = "AU";
  *(v4 + 320) = 2;
  *(v4 + 328) = 2;
  *(v4 + 336) = "AW";
  *(v4 + 344) = 2;
  *(v4 + 352) = 2;
  *(v4 + 360) = "AX";
  *(v4 + 368) = 2;
  *(v4 + 376) = 2;
  *(v4 + 384) = "AZ";
  *(v4 + 392) = 2;
  *(v4 + 400) = 2;
  *(v4 + 408) = "BA";
  *(v4 + 416) = 2;
  *(v4 + 424) = 2;
  *(v4 + 432) = "BB";
  *(v4 + 440) = 2;
  *(v4 + 448) = 2;
  *(v4 + 456) = "BD";
  *(v4 + 464) = 2;
  *(v4 + 472) = 2;
  *(v4 + 480) = "BE";
  *(v4 + 488) = 2;
  *(v4 + 496) = 2;
  *(v4 + 504) = "BF";
  *(v4 + 512) = 2;
  *(v4 + 520) = 2;
  *(v4 + 528) = "BG";
  *(v4 + 536) = 2;
  *(v4 + 544) = 2;
  *(v4 + 552) = "BH";
  *(v4 + 560) = 2;
  *(v4 + 568) = 2;
  *(v4 + 576) = "BI";
  *(v4 + 584) = 2;
  *(v4 + 592) = 2;
  *(v4 + 600) = "BJ";
  *(v4 + 608) = 2;
  *(v4 + 616) = 2;
  *(v4 + 624) = "BL";
  *(v4 + 632) = 2;
  *(v4 + 640) = 2;
  *(v4 + 648) = "BM";
  *(v4 + 656) = 2;
  *(v4 + 664) = 2;
  *(v4 + 672) = "BN";
  *(v4 + 680) = 2;
  *(v4 + 688) = 2;
  *(v4 + 696) = "BO";
  *(v4 + 704) = 2;
  *(v4 + 712) = 2;
  *(v4 + 720) = "BR";
  *(v4 + 728) = 2;
  *(v4 + 736) = 2;
  *(v4 + 744) = "BQ";
  *(v4 + 752) = 2;
  *(v4 + 760) = 2;
  *(v4 + 768) = "BS";
  *(v4 + 776) = 2;
  *(v4 + 784) = 2;
  *(v4 + 792) = "BT";
  *(v4 + 800) = 2;
  *(v4 + 808) = 2;
  *(v4 + 816) = "BV";
  *(v4 + 824) = 2;
  *(v4 + 832) = 2;
  *(v4 + 840) = "BW";
  *(v4 + 848) = 2;
  *(v4 + 856) = 2;
  *(v4 + 864) = "BY";
  *(v4 + 872) = 2;
  *(v4 + 880) = 2;
  *(v4 + 888) = "BZ";
  *(v4 + 896) = 2;
  *(v4 + 904) = 2;
  *(v4 + 912) = "CA";
  *(v4 + 920) = 2;
  *(v4 + 928) = 2;
  *(v4 + 936) = "CC";
  *(v4 + 944) = 2;
  *(v4 + 952) = 2;
  *(v4 + 960) = "CD";
  *(v4 + 968) = 2;
  *(v4 + 976) = 2;
  *(v4 + 984) = "CF";
  *(v4 + 992) = 2;
  *(v4 + 1000) = 2;
  *(v4 + 1008) = "CG";
  *(v4 + 1016) = 2;
  *(v4 + 1024) = 2;
  *(v4 + 1032) = "CH";
  *(v4 + 1040) = 2;
  *(v4 + 1048) = 2;
  *(v4 + 1056) = "CI";
  *(v4 + 1064) = 2;
  *(v4 + 1072) = 2;
  *(v4 + 1080) = "CK";
  *(v4 + 1088) = 2;
  *(v4 + 1096) = 2;
  *(v4 + 1104) = "CL";
  *(v4 + 1112) = 2;
  *(v4 + 1120) = 2;
  *(v4 + 1128) = "CM";
  *(v4 + 1136) = 2;
  *(v4 + 1144) = 2;
  *(v4 + 1152) = "CN";
  *(v4 + 1160) = 2;
  *(v4 + 1168) = 2;
  *(v4 + 1176) = "CO";
  *(v4 + 1184) = 2;
  *(v4 + 1192) = 2;
  *(v4 + 1200) = "CR";
  *(v4 + 1208) = 2;
  *(v4 + 1216) = 2;
  *(v4 + 1224) = "CU";
  *(v4 + 1232) = 2;
  *(v4 + 1240) = 2;
  *(v4 + 1248) = "CV";
  *(v4 + 1256) = 2;
  *(v4 + 1264) = 2;
  *(v4 + 1272) = "CW";
  *(v4 + 1280) = 2;
  *(v4 + 1288) = 2;
  *(v4 + 1296) = "CX";
  *(v4 + 1304) = 2;
  *(v4 + 1312) = 2;
  *(v4 + 1320) = "CY";
  *(v4 + 1328) = 2;
  *(v4 + 1336) = 2;
  *(v4 + 1344) = "CZ";
  *(v4 + 1352) = 2;
  *(v4 + 1360) = 2;
  *(v4 + 1368) = "DE";
  *(v4 + 1376) = 2;
  *(v4 + 1384) = 2;
  *(v4 + 1392) = "DJ";
  *(v4 + 1400) = 2;
  *(v4 + 1408) = 2;
  *(v4 + 1416) = "DK";
  *(v4 + 1424) = 2;
  *(v4 + 1432) = 2;
  *(v4 + 1440) = "DM";
  *(v4 + 1448) = 2;
  *(v4 + 1456) = 2;
  *(v4 + 1464) = "DO";
  *(v4 + 1472) = 2;
  *(v4 + 1480) = 2;
  *(v4 + 1488) = "DZ";
  *(v4 + 1496) = 2;
  *(v4 + 1504) = 2;
  *(v4 + 1512) = "EC";
  *(v4 + 1520) = 2;
  *(v4 + 1528) = 2;
  *(v4 + 1536) = "EE";
  *(v4 + 1544) = 2;
  *(v4 + 1552) = 2;
  *(v4 + 1560) = "EG";
  *(v4 + 1568) = 2;
  *(v4 + 1576) = 2;
  *(v4 + 1584) = "EH";
  *(v4 + 1592) = 2;
  *(v4 + 1600) = 2;
  *(v4 + 1608) = "ER";
  *(v4 + 1616) = 2;
  *(v4 + 1624) = 2;
  *(v4 + 1632) = "ES";
  *(v4 + 1640) = 2;
  *(v4 + 1648) = 2;
  *(v4 + 1656) = "ET";
  *(v4 + 1664) = 2;
  *(v4 + 1672) = 2;
  *(v4 + 1680) = "FI";
  *(v4 + 1688) = 2;
  *(v4 + 1696) = 2;
  *(v4 + 1704) = "FJ";
  *(v4 + 1712) = 2;
  *(v4 + 1720) = 2;
  *(v4 + 1728) = "FK";
  *(v4 + 1736) = 2;
  *(v4 + 1752) = "FM";
  *(v4 + 1776) = "FO";
  *(v4 + 1800) = "FR";
  *(v4 + 1824) = "FU";
  *(v4 + 1848) = "GA";
  *(v4 + 1872) = "GB";
  *(v4 + 1896) = "GD";
  *(v4 + 1920) = "GE";
  *(v4 + 1944) = "GF";
  *(v4 + 1968) = "GG";
  *(v4 + 1992) = "GH";
  *(v4 + 2184) = "GS";
  *(v4 + 2280) = "GY";
  *(v4 + 2376) = "HR";
  *(v4 + 2472) = "IE";
  *(v4 + 2568) = "IO";
  *(v4 + 2664) = "IT";
  *(v4 + 2760) = "JP";
  *(v4 + 2856) = "KI";
  *(v4 + 2952) = "KR";
  *(v4 + 3048) = "LA";
  *(v4 + 3144) = "LK";
  *(v4 + 3240) = "LU";
  *(v4 + 3336) = "MC";
  *(v4 + 3432) = "MG";
  *(v4 + 3528) = "MM";
  *(v4 + 3624) = "MQ";
  *(v4 + 3720) = "MU";
  *(v4 + 3816) = "MY";
  *(v4 + 3912) = "NE";
  *(v4 + 4008) = "NL";
  *(v4 + 1744) = 2;
  *(v4 + 4056) = "NP";
  *(v4 + 4040) = 2;
  *(v4 + 4048) = 2;
  *(v4 + 1760) = 2;
  *(v4 + 4032) = "NO";
  *(v4 + 4016) = 2;
  *(v4 + 4024) = 2;
  *(v4 + 3984) = "NI";
  *(v4 + 3976) = 2;
  *(v4 + 3992) = 2;
  *(v4 + 4000) = 2;
  *(v4 + 3960) = "NG";
  *(v4 + 3944) = 2;
  *(v4 + 3952) = 2;
  *(v4 + 3968) = 2;
  *(v4 + 1768) = 2;
  *(v4 + 3936) = "NF";
  *(v4 + 3920) = 2;
  *(v4 + 3928) = 2;
  *(v4 + 3888) = "NC";
  *(v4 + 3880) = 2;
  *(v4 + 3896) = 2;
  *(v4 + 3904) = 2;
  *(v4 + 3864) = "NA";
  *(v4 + 3848) = 2;
  *(v4 + 3856) = 2;
  *(v4 + 3872) = 2;
  *(v4 + 1784) = 2;
  *(v4 + 3840) = "MZ";
  *(v4 + 3824) = 2;
  *(v4 + 3832) = 2;
  *(v4 + 3792) = "MX";
  *(v4 + 3784) = 2;
  *(v4 + 3800) = 2;
  *(v4 + 3808) = 2;
  *(v4 + 3768) = "MW";
  *(v4 + 3752) = 2;
  *(v4 + 3760) = 2;
  *(v4 + 3776) = 2;
  *(v4 + 1792) = 2;
  *(v4 + 3744) = "MV";
  *(v4 + 3728) = 2;
  *(v4 + 3736) = 2;
  *(v4 + 3696) = "MT";
  *(v4 + 3688) = 2;
  *(v4 + 3704) = 2;
  *(v4 + 3712) = 2;
  *(v4 + 3672) = "MS";
  *(v4 + 3656) = 2;
  *(v4 + 3664) = 2;
  *(v4 + 3680) = 2;
  *(v4 + 1808) = 2;
  *(v4 + 3648) = "MR";
  *(v4 + 3632) = 2;
  *(v4 + 3640) = 2;
  *(v4 + 3600) = "MP";
  *(v4 + 3592) = 2;
  *(v4 + 3608) = 2;
  *(v4 + 3616) = 2;
  *(v4 + 3576) = "MO";
  *(v4 + 3560) = 2;
  *(v4 + 3568) = 2;
  *(v4 + 3584) = 2;
  *(v4 + 1816) = 2;
  *(v4 + 3552) = "MN";
  *(v4 + 3536) = 2;
  *(v4 + 3544) = 2;
  *(v4 + 3504) = "ML";
  *(v4 + 3496) = 2;
  *(v4 + 3512) = 2;
  *(v4 + 3520) = 2;
  *(v4 + 3480) = "MK";
  *(v4 + 3464) = 2;
  *(v4 + 3472) = 2;
  *(v4 + 3488) = 2;
  *(v4 + 1832) = 2;
  *(v4 + 3456) = "MH";
  *(v4 + 3440) = 2;
  *(v4 + 3448) = 2;
  *(v4 + 3408) = "MF";
  *(v4 + 3400) = 2;
  *(v4 + 3416) = 2;
  *(v4 + 3424) = 2;
  *(v4 + 3384) = "ME";
  *(v4 + 3368) = 2;
  *(v4 + 3376) = 2;
  *(v4 + 3392) = 2;
  *(v4 + 1840) = 2;
  *(v4 + 3360) = "MD";
  *(v4 + 3344) = 2;
  *(v4 + 3352) = 2;
  *(v4 + 3312) = "MA";
  *(v4 + 3304) = 2;
  *(v4 + 3320) = 2;
  *(v4 + 3328) = 2;
  *(v4 + 3288) = "LY";
  *(v4 + 3272) = 2;
  *(v4 + 3280) = 2;
  *(v4 + 3296) = 2;
  *(v4 + 1856) = 2;
  *(v4 + 3264) = "LV";
  *(v4 + 3248) = 2;
  *(v4 + 3256) = 2;
  *(v4 + 3216) = "LT";
  *(v4 + 3208) = 2;
  *(v4 + 3224) = 2;
  *(v4 + 3232) = 2;
  *(v4 + 3192) = "LS";
  *(v4 + 3176) = 2;
  *(v4 + 3184) = 2;
  *(v4 + 3200) = 2;
  *(v4 + 1864) = 2;
  *(v4 + 3168) = "LR";
  *(v4 + 3152) = 2;
  *(v4 + 3160) = 2;
  *(v4 + 3120) = "LI";
  *(v4 + 3112) = 2;
  *(v4 + 3128) = 2;
  *(v4 + 3136) = 2;
  *(v4 + 3096) = "LC";
  *(v4 + 3080) = 2;
  *(v4 + 3088) = 2;
  *(v4 + 3104) = 2;
  *(v4 + 1880) = 2;
  *(v4 + 3072) = "LB";
  *(v4 + 3056) = 2;
  *(v4 + 3064) = 2;
  *(v4 + 3024) = "KZ";
  *(v4 + 3016) = 2;
  *(v4 + 3032) = 2;
  *(v4 + 3040) = 2;
  *(v4 + 3000) = "KY";
  *(v4 + 2984) = 2;
  *(v4 + 2992) = 2;
  *(v4 + 3008) = 2;
  *(v4 + 1888) = 2;
  *(v4 + 2976) = "KW";
  *(v4 + 2960) = 2;
  *(v4 + 2968) = 2;
  *(v4 + 2928) = "KP";
  *(v4 + 2920) = 2;
  *(v4 + 2936) = 2;
  *(v4 + 2944) = 2;
  *(v4 + 2904) = "KN";
  *(v4 + 2888) = 2;
  *(v4 + 2896) = 2;
  *(v4 + 2912) = 2;
  *(v4 + 1904) = 2;
  *(v4 + 2880) = "KM";
  *(v4 + 2864) = 2;
  *(v4 + 2872) = 2;
  *(v4 + 2832) = "KH";
  *(v4 + 2824) = 2;
  *(v4 + 2840) = 2;
  *(v4 + 2848) = 2;
  *(v4 + 2808) = "KG";
  *(v4 + 2792) = 2;
  *(v4 + 2800) = 2;
  *(v4 + 2816) = 2;
  *(v4 + 1912) = 2;
  *(v4 + 2784) = "KE";
  *(v4 + 2768) = 2;
  *(v4 + 2776) = 2;
  *(v4 + 2736) = "JO";
  *(v4 + 2728) = 2;
  *(v4 + 2744) = 2;
  *(v4 + 2752) = 2;
  *(v4 + 2712) = "JM";
  *(v4 + 2696) = 2;
  *(v4 + 2704) = 2;
  *(v4 + 2720) = 2;
  *(v4 + 1928) = 2;
  *(v4 + 2688) = "JE";
  *(v4 + 2672) = 2;
  *(v4 + 2680) = 2;
  *(v4 + 2640) = "IS";
  *(v4 + 2632) = 2;
  *(v4 + 2648) = 2;
  *(v4 + 2656) = 2;
  *(v4 + 2616) = "IR";
  *(v4 + 2600) = 2;
  *(v4 + 2608) = 2;
  *(v4 + 2624) = 2;
  *(v4 + 1936) = 2;
  *(v4 + 2592) = "IQ";
  *(v4 + 2576) = 2;
  *(v4 + 2584) = 2;
  *(v4 + 2544) = "IN";
  *(v4 + 2536) = 2;
  *(v4 + 2552) = 2;
  *(v4 + 2560) = 2;
  *(v4 + 2520) = "IM";
  *(v4 + 2504) = 2;
  *(v4 + 2512) = 2;
  *(v4 + 2528) = 2;
  *(v4 + 1952) = 2;
  *(v4 + 2496) = "IL";
  *(v4 + 2480) = 2;
  *(v4 + 2488) = 2;
  *(v4 + 2448) = "ID";
  *(v4 + 2440) = 2;
  *(v4 + 2456) = 2;
  *(v4 + 2464) = 2;
  *(v4 + 2424) = "HU";
  *(v4 + 2408) = 2;
  *(v4 + 2416) = 2;
  *(v4 + 2432) = 2;
  *(v4 + 1960) = 2;
  *(v4 + 2400) = "HT";
  *(v4 + 2384) = 2;
  *(v4 + 2392) = 2;
  *(v4 + 2352) = "HN";
  *(v4 + 2344) = 2;
  *(v4 + 2360) = 2;
  *(v4 + 2368) = 2;
  *(v4 + 2328) = "HM";
  *(v4 + 2312) = 2;
  *(v4 + 2320) = 2;
  *(v4 + 2336) = 2;
  *(v4 + 1976) = 2;
  *(v4 + 2304) = "HK";
  *(v4 + 2288) = 2;
  *(v4 + 2296) = 2;
  *(v4 + 2256) = "GW";
  *(v4 + 2248) = 2;
  *(v4 + 2264) = 2;
  *(v4 + 2272) = 2;
  *(v4 + 2232) = "GU";
  *(v4 + 2216) = 2;
  *(v4 + 2224) = 2;
  *(v4 + 2240) = 2;
  *(v4 + 1984) = 2;
  *(v4 + 2208) = "GT";
  *(v4 + 2192) = 2;
  *(v4 + 2200) = 2;
  *(v4 + 2160) = "GR";
  *(v4 + 2152) = 2;
  *(v4 + 2168) = 2;
  *(v4 + 2176) = 2;
  *(v4 + 2136) = "GQ";
  *(v4 + 2120) = 2;
  *(v4 + 2128) = 2;
  *(v4 + 2144) = 2;
  *(v4 + 2000) = 2;
  *(v4 + 2112) = "GP";
  *(v4 + 2096) = 2;
  *(v4 + 2104) = 2;
  *(v4 + 2064) = "GM";
  *(v4 + 2072) = 2;
  *(v4 + 2080) = 2;
  *(v4 + 2088) = "GN";
  *(v4 + 2032) = 2;
  *(v4 + 2040) = "GL";
  *(v4 + 2048) = 2;
  *(v4 + 2056) = 2;
  *(v4 + 2008) = 2;
  *(v4 + 2016) = "GI";
  *(v4 + 2024) = 2;
  *(v4 + 4064) = 2;
  *(v4 + 4072) = 2;
  *(v4 + 4080) = "NR";
  *(v4 + 4088) = 2;
  *(v4 + 4096) = 2;
  *(v4 + 4104) = "NU";
  *(v4 + 4112) = 2;
  *(v4 + 4120) = 2;
  *(v4 + 4128) = "NZ";
  *(v4 + 4136) = 2;
  *(v4 + 4144) = 2;
  *(v4 + 4152) = "OM";
  *(v4 + 4160) = 2;
  *(v4 + 4168) = 2;
  *(v4 + 4176) = "PA";
  *(v4 + 4184) = 2;
  *(v4 + 4192) = 2;
  *(v4 + 4200) = "PE";
  *(v4 + 4208) = 2;
  *(v4 + 4216) = 2;
  *(v4 + 4224) = "PF";
  *(v4 + 4232) = 2;
  *(v4 + 4240) = 2;
  *(v4 + 4248) = "PG";
  *(v4 + 4256) = 2;
  *(v4 + 4264) = 2;
  *(v4 + 4272) = "PH";
  *(v4 + 4280) = 2;
  *(v4 + 4288) = 2;
  *(v4 + 4296) = "PI";
  *(v4 + 4304) = 2;
  *(v4 + 4312) = 2;
  *(v4 + 4320) = "PK";
  *(v4 + 4328) = 2;
  *(v4 + 4336) = 2;
  *(v4 + 4344) = "PL";
  *(v4 + 4352) = 2;
  *(v4 + 4360) = 2;
  *(v4 + 4368) = "PM";
  *(v4 + 4376) = 2;
  *(v4 + 4384) = 2;
  *(v4 + 4392) = "PN";
  *(v4 + 4400) = 2;
  *(v4 + 4408) = 2;
  *(v4 + 4416) = "PR";
  *(v4 + 4424) = 2;
  *(v4 + 4432) = 2;
  *(v4 + 4440) = "PS";
  *(v4 + 4448) = 2;
  *(v4 + 4456) = 2;
  *(v4 + 4464) = "PT";
  *(v4 + 4472) = 2;
  *(v4 + 4480) = 2;
  *(v4 + 4488) = "PW";
  *(v4 + 4496) = 2;
  *(v4 + 4504) = 2;
  *(v4 + 4512) = "PY";
  *(v4 + 4520) = 2;
  *(v4 + 4528) = 2;
  *(v4 + 4536) = "QA";
  *(v4 + 4544) = 2;
  *(v4 + 4552) = 2;
  *(v4 + 4560) = "RE";
  *(v4 + 4568) = 2;
  *(v4 + 4576) = 2;
  *(v4 + 4584) = "RO";
  *(v4 + 4592) = 2;
  *(v4 + 4600) = 2;
  *(v4 + 4608) = "RS";
  *(v4 + 4616) = 2;
  *(v4 + 4624) = 2;
  *(v4 + 4632) = "RU";
  *(v4 + 4640) = 2;
  *(v4 + 4648) = 2;
  *(v4 + 4656) = "RW";
  *(v4 + 4664) = 2;
  *(v4 + 4672) = 2;
  *(v4 + 4680) = "SA";
  *(v4 + 4688) = 2;
  *(v4 + 4696) = 2;
  *(v4 + 4704) = "SB";
  *(v4 + 4712) = 2;
  *(v4 + 4720) = 2;
  *(v4 + 4728) = "SC";
  *(v4 + 4736) = 2;
  *(v4 + 4744) = 2;
  *(v4 + 4752) = "SD";
  *(v4 + 4760) = 2;
  *(v4 + 4768) = 2;
  *(v4 + 4776) = "SE";
  *(v4 + 4784) = 2;
  *(v4 + 4792) = 2;
  *(v4 + 4800) = "SG";
  *(v4 + 4808) = 2;
  *(v4 + 4816) = 2;
  *(v4 + 4824) = "SH";
  *(v4 + 4832) = 2;
  *(v4 + 4840) = 2;
  *(v4 + 4848) = "SI";
  *(v4 + 4856) = 2;
  *(v4 + 4864) = 2;
  *(v4 + 4872) = "SJ";
  *(v4 + 4880) = 2;
  *(v4 + 4888) = 2;
  *(v4 + 4896) = "SK";
  *(v4 + 4904) = 2;
  *(v4 + 4912) = 2;
  *(v4 + 4920) = "SL";
  *(v4 + 4928) = 2;
  *(v4 + 4936) = 2;
  *(v4 + 4944) = "SM";
  *(v4 + 4952) = 2;
  *(v4 + 4960) = 2;
  *(v4 + 4968) = "SN";
  *(v4 + 4976) = 2;
  *(v4 + 4984) = 2;
  *(v4 + 4992) = "SO";
  *(v4 + 5000) = 2;
  *(v4 + 5008) = 2;
  *(v4 + 5016) = "SR";
  *(v4 + 5024) = 2;
  *(v4 + 5032) = 2;
  *(v4 + 5040) = "SS";
  *(v4 + 5048) = 2;
  *(v4 + 5056) = 2;
  *(v4 + 5064) = "ST";
  *(v4 + 5072) = 2;
  *(v4 + 5080) = 2;
  *(v4 + 5088) = "SX";
  *(v4 + 5096) = 2;
  *(v4 + 5104) = 2;
  *(v4 + 5112) = "SV";
  *(v4 + 5120) = 2;
  *(v4 + 5128) = 2;
  *(v4 + 5136) = "SY";
  *(v4 + 5144) = 2;
  *(v4 + 5152) = 2;
  *(v4 + 5160) = "SZ";
  *(v4 + 5168) = 2;
  *(v4 + 5176) = 2;
  *(v4 + 5184) = "TC";
  *(v4 + 5192) = 2;
  *(v4 + 5200) = 2;
  *(v4 + 5208) = "TD";
  *(v4 + 5216) = 2;
  *(v4 + 5224) = 2;
  *(v4 + 5232) = "TF";
  *(v4 + 5240) = 2;
  *(v4 + 5248) = 2;
  *(v4 + 5256) = "TG";
  *(v4 + 5264) = 2;
  *(v4 + 5272) = 2;
  *(v4 + 5280) = "TH";
  *(v4 + 5288) = 2;
  *(v4 + 5296) = 2;
  *(v4 + 5304) = "TJ";
  *(v4 + 5312) = 2;
  *(v4 + 5320) = 2;
  *(v4 + 5328) = "TK";
  *(v4 + 5336) = 2;
  *(v4 + 5344) = 2;
  *(v4 + 5352) = "TL";
  *(v4 + 5360) = 2;
  *(v4 + 5368) = 2;
  *(v4 + 5376) = "TM";
  *(v4 + 5384) = 2;
  *(v4 + 5392) = 2;
  *(v4 + 5400) = "TN";
  *(v4 + 5408) = 2;
  *(v4 + 5416) = 2;
  *(v4 + 5424) = "TO";
  *(v4 + 5432) = 2;
  *(v4 + 5440) = 2;
  *(v4 + 5448) = "TR";
  *(v4 + 5456) = 2;
  *(v4 + 5464) = 2;
  *(v4 + 5472) = "TT";
  *(v4 + 5480) = 2;
  *(v4 + 5488) = 2;
  *(v4 + 5496) = "TV";
  *(v4 + 5504) = 2;
  *(v4 + 5512) = 2;
  *(v4 + 5520) = "TW";
  *(v4 + 5528) = 2;
  *(v4 + 5536) = 2;
  *(v4 + 5544) = "TZ";
  *(v4 + 5552) = 2;
  *(v4 + 5560) = 2;
  *(v4 + 5568) = "UA";
  *(v4 + 5576) = 2;
  *(v4 + 5584) = 2;
  *(v4 + 5592) = "UG";
  *(v4 + 5600) = 2;
  *(v4 + 5608) = 2;
  *(v4 + 5616) = "UM";
  *(v4 + 5624) = 2;
  *(v4 + 5632) = 2;
  *(v4 + 5640) = "US";
  *(v4 + 5648) = 2;
  *(v4 + 5656) = 2;
  *(v4 + 5664) = "UY";
  *(v4 + 5672) = 2;
  *(v4 + 5680) = 2;
  *(v4 + 5688) = "UZ";
  *(v4 + 5696) = 2;
  *(v4 + 5704) = 2;
  *(v4 + 5712) = "VA";
  *(v4 + 5720) = 2;
  *(v4 + 5728) = 2;
  *(v4 + 5736) = "VC";
  *(v4 + 5744) = 2;
  *(v4 + 5752) = 2;
  *(v4 + 5760) = "VE";
  *(v4 + 5768) = 2;
  *(v4 + 5776) = 2;
  *(v4 + 5784) = "VG";
  *(v4 + 5792) = 2;
  *(v4 + 5800) = 2;
  *(v4 + 5808) = "VI";
  *(v4 + 5816) = 2;
  *(v4 + 5824) = 2;
  *(v4 + 5832) = "VN";
  *(v4 + 5840) = 2;
  *(v4 + 5848) = 2;
  *(v4 + 5856) = "VT";
  *(v4 + 5864) = 2;
  *(v4 + 5872) = 2;
  *(v4 + 5880) = "VU";
  *(v4 + 5888) = 2;
  *(v4 + 5896) = 2;
  *(v4 + 5904) = "WF";
  *(v4 + 5912) = 2;
  *(v4 + 5920) = 2;
  *(v4 + 5928) = "WS";
  *(v4 + 5936) = 2;
  *(v4 + 5944) = 2;
  *(v4 + 5952) = "YE";
  *(v4 + 5960) = 2;
  *(v4 + 5968) = 2;
  *(v4 + 5976) = "YT";
  *(v4 + 5984) = 2;
  *(v4 + 5992) = 2;
  *(v4 + 6000) = "YY";
  *(v4 + 6008) = 2;
  *(v4 + 6016) = 2;
  *(v4 + 6024) = "ZA";
  *(v4 + 6032) = 2;
  *(v4 + 6040) = 2;
  *(v4 + 6048) = "ZM";
  *(v4 + 6056) = 2;
  *(v4 + 6064) = 2;
  *(v4 + 6072) = "ZW";
  *(v4 + 6080) = 2;
  *(v4 + 6088) = 2;
  *(v4 + 6096) = "ZZ";
  *(v4 + 6104) = 2;
  *(v4 + 6112) = 2;
  nullsub_1();
  v5 = sub_1DD640AA8();

  if (v5 < 0x80 || (v5 & 0xFFFFFFFFFFFFFFC0) == 0x80)
  {
LABEL_3:
    v7 = v5;
  }

  else
  {
    v8 = v5 - 192;
    v7 = -19;
    LOBYTE(v5) = -64;
    switch(v8)
    {
      case 0uLL:
        goto LABEL_3;
      case 1uLL:
        LOBYTE(v5) = -63;
        goto LABEL_3;
      case 2uLL:
        LOBYTE(v5) = -62;
        goto LABEL_3;
      case 3uLL:
        LOBYTE(v5) = -61;
        goto LABEL_3;
      case 4uLL:
        LOBYTE(v5) = -60;
        goto LABEL_3;
      case 5uLL:
        LOBYTE(v5) = -59;
        goto LABEL_3;
      case 6uLL:
        LOBYTE(v5) = -58;
        goto LABEL_3;
      case 7uLL:
        LOBYTE(v5) = -57;
        goto LABEL_3;
      case 8uLL:
        LOBYTE(v5) = -56;
        goto LABEL_3;
      case 9uLL:
        LOBYTE(v5) = -55;
        goto LABEL_3;
      case 0xAuLL:
        LOBYTE(v5) = -54;
        goto LABEL_3;
      case 0xBuLL:
        LOBYTE(v5) = -53;
        goto LABEL_3;
      case 0xCuLL:
        LOBYTE(v5) = -52;
        goto LABEL_3;
      case 0xDuLL:
        LOBYTE(v5) = -51;
        goto LABEL_3;
      case 0xEuLL:
        LOBYTE(v5) = -50;
        goto LABEL_3;
      case 0xFuLL:
        LOBYTE(v5) = -49;
        goto LABEL_3;
      case 0x10uLL:
        LOBYTE(v5) = -48;
        goto LABEL_3;
      case 0x11uLL:
        LOBYTE(v5) = -47;
        goto LABEL_3;
      case 0x12uLL:
        LOBYTE(v5) = -46;
        goto LABEL_3;
      case 0x13uLL:
        LOBYTE(v5) = -45;
        goto LABEL_3;
      case 0x14uLL:
        LOBYTE(v5) = -44;
        goto LABEL_3;
      case 0x15uLL:
        LOBYTE(v5) = -43;
        goto LABEL_3;
      case 0x16uLL:
        LOBYTE(v5) = -42;
        goto LABEL_3;
      case 0x17uLL:
        LOBYTE(v5) = -41;
        goto LABEL_3;
      case 0x18uLL:
        LOBYTE(v5) = -40;
        goto LABEL_3;
      case 0x19uLL:
        LOBYTE(v5) = -39;
        goto LABEL_3;
      case 0x1AuLL:
        LOBYTE(v5) = -38;
        goto LABEL_3;
      case 0x1BuLL:
        LOBYTE(v5) = -37;
        goto LABEL_3;
      case 0x1CuLL:
        LOBYTE(v5) = -36;
        goto LABEL_3;
      case 0x1DuLL:
        LOBYTE(v5) = -35;
        goto LABEL_3;
      case 0x1EuLL:
        LOBYTE(v5) = -34;
        goto LABEL_3;
      case 0x1FuLL:
        LOBYTE(v5) = -33;
        goto LABEL_3;
      case 0x20uLL:
        LOBYTE(v5) = -32;
        goto LABEL_3;
      case 0x21uLL:
        LOBYTE(v5) = -31;
        goto LABEL_3;
      case 0x22uLL:
        LOBYTE(v5) = -30;
        goto LABEL_3;
      case 0x23uLL:
        LOBYTE(v5) = -29;
        goto LABEL_3;
      case 0x24uLL:
        LOBYTE(v5) = -28;
        goto LABEL_3;
      case 0x25uLL:
        LOBYTE(v5) = -27;
        goto LABEL_3;
      case 0x26uLL:
        LOBYTE(v5) = -26;
        goto LABEL_3;
      case 0x27uLL:
        LOBYTE(v5) = -25;
        goto LABEL_3;
      case 0x28uLL:
        LOBYTE(v5) = -24;
        goto LABEL_3;
      case 0x29uLL:
        LOBYTE(v5) = -23;
        goto LABEL_3;
      case 0x2AuLL:
        LOBYTE(v5) = -22;
        goto LABEL_3;
      case 0x2BuLL:
        LOBYTE(v5) = -21;
        goto LABEL_3;
      case 0x2CuLL:
        LOBYTE(v5) = -20;
        goto LABEL_3;
      case 0x2DuLL:
        break;
      case 0x2EuLL:
        v7 = -18;
        break;
      case 0x2FuLL:
        v7 = -17;
        break;
      case 0x30uLL:
        v7 = -16;
        break;
      case 0x31uLL:
        v7 = -15;
        break;
      case 0x32uLL:
        v7 = -14;
        break;
      case 0x33uLL:
        v7 = -13;
        break;
      case 0x34uLL:
        v7 = -12;
        break;
      case 0x35uLL:
        v7 = -11;
        break;
      case 0x36uLL:
        v7 = -10;
        break;
      case 0x37uLL:
        v7 = -9;
        break;
      case 0x38uLL:
        v7 = -8;
        break;
      case 0x39uLL:
        v7 = -7;
        break;
      case 0x3AuLL:
        v7 = -6;
        break;
      case 0x3BuLL:
        v7 = -5;
        break;
      case 0x3CuLL:
        v7 = -4;
        break;
      case 0x3DuLL:
        v7 = -3;
        break;
      case 0x3EuLL:
        v7 = -2;
        break;
      default:
        v7 = -1;
        break;
    }
  }

  *a2 = v7;
  return result;
}

char *Country.init(value:prefix:suffix:)@<X0>(char *result@<X0>, _BYTE *a2@<X1>, char *a3@<X2>, _BYTE *a4@<X8>)
{
  v4 = *result;
  v5 = *a3;
  *a4 = *a2;
  a4[1] = v5;
  a4[2] = v4;
  return result;
}

uint64_t sub_1DD479E70@<X0>(uint64_t *a1@<X8>)
{
  result = Country.Value.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriInference::Country::Prefix_optional __swiftcall Country.Prefix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Country.Prefix.rawValue.getter()
{
  v1 = 28265;
  if (*v0 != 1)
  {
    v1 = 1918985582;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7972746E756F63;
  }
}

SiriInference::Country::Suffix_optional __swiftcall Country.Suffix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t static Country.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if ((sub_1DD3AE614(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  if (v2 == 3)
  {
    if (v4 != 3)
    {
      return 0;
    }
  }

  else if (v4 == 3 || (sub_1DD3B2D84() & 1) == 0)
  {
    return 0;
  }

  result = v5 == 3 && v3 == 3;
  if (v3 != 3 && v5 != 3)
  {

    return sub_1DD3B2D84();
  }

  return result;
}

uint64_t sub_1DD47A2B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x786966657270 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x786966667573 && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD640CD8();

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

uint64_t sub_1DD47A3C4(char a1)
{
  if (!a1)
  {
    return 0x786966657270;
  }

  if (a1 == 1)
  {
    return 0x786966667573;
  }

  return 0x65756C6176;
}

uint64_t sub_1DD47A418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD47A2B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD47A440(uint64_t a1)
{
  v2 = sub_1DD47A890();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD47A47C(uint64_t a1)
{
  v2 = sub_1DD47A890();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Country.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD118, &qword_1DD64D868);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = *v1;
  v11 = v1[1];
  v15 = v1[2];
  v16 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD47A890();
  sub_1DD640EF8();
  v22 = v10;
  v21 = 0;
  sub_1DD47A8E4();
  OUTLINED_FUNCTION_10();
  sub_1DD640C08();
  if (!v2)
  {
    v12 = v15;
    v20 = v16;
    v19 = 1;
    sub_1DD47A938();
    OUTLINED_FUNCTION_10();
    sub_1DD640C08();
    v18 = v12;
    v17 = 2;
    sub_1DD47A98C();
    OUTLINED_FUNCTION_10();
    sub_1DD640C68();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t Country.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD140, &qword_1DD64D870);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD47A890();
  sub_1DD640ED8();
  if (!v2)
  {
    v20 = 0;
    sub_1DD47A9E0();
    OUTLINED_FUNCTION_32_0();
    sub_1DD640B18();
    v11 = v21;
    v18 = 1;
    sub_1DD47AA34();
    OUTLINED_FUNCTION_32_0();
    sub_1DD640B18();
    v13 = v19;
    v16 = 2;
    sub_1DD47AA88();
    OUTLINED_FUNCTION_32_0();
    sub_1DD640B78();
    (*(v7 + 8))(v10, v5);
    v14 = v17;
    *a2 = v11;
    a2[1] = v13;
    a2[2] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD47A890()
{
  result = qword_1ECCDD120;
  if (!qword_1ECCDD120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD120);
  }

  return result;
}

unint64_t sub_1DD47A8E4()
{
  result = qword_1ECCDD128;
  if (!qword_1ECCDD128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD128);
  }

  return result;
}

unint64_t sub_1DD47A938()
{
  result = qword_1ECCDD130;
  if (!qword_1ECCDD130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD130);
  }

  return result;
}

unint64_t sub_1DD47A98C()
{
  result = qword_1ECCDD138;
  if (!qword_1ECCDD138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD138);
  }

  return result;
}

unint64_t sub_1DD47A9E0()
{
  result = qword_1ECCDD148;
  if (!qword_1ECCDD148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD148);
  }

  return result;
}

unint64_t sub_1DD47AA34()
{
  result = qword_1ECCDD150;
  if (!qword_1ECCDD150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD150);
  }

  return result;
}

unint64_t sub_1DD47AA88()
{
  result = qword_1ECCDD158;
  if (!qword_1ECCDD158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD158);
  }

  return result;
}

unint64_t sub_1DD47AAE0()
{
  result = qword_1ECCDD160;
  if (!qword_1ECCDD160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD160);
  }

  return result;
}

unint64_t sub_1DD47AB38()
{
  result = qword_1ECCDD168;
  if (!qword_1ECCDD168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD168);
  }

  return result;
}

unint64_t sub_1DD47AB90()
{
  result = qword_1ECCDD170;
  if (!qword_1ECCDD170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD170);
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

uint64_t getEnumTagSinglePayload for Country(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFD)
  {
    if ((a2 + 33554179) >> 24)
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
        v3 = (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776964;
        return (v3 + 1);
      }
    }
  }

  v4 = *a1;
  if (v4 <= 3)
  {
    v5 = 3;
  }

  else
  {
    v5 = *a1;
  }

  v6 = v5 - 4;
  if (v4 < 3)
  {
    v3 = -1;
  }

  else
  {
    v3 = v6;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for Country(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554179) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFC)
  {
    v3 = 0;
  }

  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 2) = (a2 - 253) >> 16;
    if (v3)
    {
      v4 = ((a2 - 253) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 3;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Country.Value(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 != 1)
  {
    if ((a2 + 254) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 254) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 255;
    return (v5 + 1);
  }

LABEL_17:
  if (*a1 == 255)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Country.Value(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 254 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 254) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 1)
  {
    v6 = ((a2 - 2) >> 8) + 1;
    *result = a2 - 2;
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
          *result = -1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DD47AE80(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD47AF60()
{
  result = qword_1ECCDD178;
  if (!qword_1ECCDD178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD178);
  }

  return result;
}

unint64_t sub_1DD47AFB8()
{
  result = qword_1ECCDD180;
  if (!qword_1ECCDD180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD180);
  }

  return result;
}

unint64_t sub_1DD47B010()
{
  result = qword_1ECCDD188;
  if (!qword_1ECCDD188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD188);
  }

  return result;
}

unint64_t sub_1DD47B064()
{
  result = qword_1ECCDD190;
  if (!qword_1ECCDD190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD190);
  }

  return result;
}

unint64_t sub_1DD47B0B8()
{
  result = qword_1ECCDD198;
  if (!qword_1ECCDD198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD198);
  }

  return result;
}

unint64_t sub_1DD47B10C()
{
  result = qword_1ECCDD1A0;
  if (!qword_1ECCDD1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD1A0);
  }

  return result;
}

SiriInference::County __swiftcall County.init(name:prefix:suffix:)(SiriInference::County name, SiriInference::County::Prefix_optional prefix, SiriInference::County::Suffix_optional suffix)
{
  v4 = *prefix.value;
  v5 = *suffix.value;
  *v3 = name.name;
  *(v3 + 16) = v4;
  *(v3 + 17) = v5;
  name.prefix = prefix;
  return name;
}

SiriInference::County::Prefix_optional __swiftcall County.Prefix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t County.Prefix.rawValue.getter()
{
  v1 = 0x79746E756F63;
  if (*v0 != 1)
  {
    v1 = 1918985582;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 28265;
  }
}

SiriInference::County::Suffix_optional __swiftcall County.Suffix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t County.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static County.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v6 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  if (v2 == 3)
  {
    if (v4 != 3)
    {
      return 0;
    }
  }

  else if (v4 == 3 || (sub_1DD3B2D88() & 1) == 0)
  {
    return 0;
  }

  result = v5 == 3 && v3 == 3;
  if (v3 != 3 && v5 != 3)
  {

    return sub_1DD3B2D88();
  }

  return result;
}

uint64_t sub_1DD47B53C(uint64_t a1)
{
  v2 = sub_1DD47B9B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD47B578(uint64_t a1)
{
  v2 = sub_1DD47B9B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t County.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD1A8, &qword_1DD64E938);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = *(v1 + 16);
  v17 = *(v1 + 17);
  v18 = v9;
  v10 = a1[3];
  v11 = a1;
  v13 = v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  sub_1DD47B9B0();
  sub_1DD640EF8();
  v23 = 0;
  sub_1DD640C18();
  if (!v2)
  {
    v14 = v17;
    v22 = v18;
    v21 = 1;
    sub_1DD47BA04();
    sub_1DD640C08();
    v20 = v14;
    v19 = 2;
    sub_1DD47BA58();
    sub_1DD640C08();
  }

  return (*(v5 + 8))(v8, v13);
}

uint64_t County.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD1C8, &qword_1DD64E940);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD47B9B0();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15[2] = 0;
  v6 = sub_1DD640B28();
  v8 = v7;
  v15[0] = 1;
  sub_1DD47BAAC();
  OUTLINED_FUNCTION_3_4(&type metadata for County.Prefix, v15);
  v13 = v15[1];
  v14[0] = 2;
  sub_1DD47BB00();
  OUTLINED_FUNCTION_3_4(&type metadata for County.Suffix, v14);
  v10 = OUTLINED_FUNCTION_0_0();
  v11(v10);
  v12 = v14[1];
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v13;
  *(a2 + 17) = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD47B9B0()
{
  result = qword_1ECCDD1B0;
  if (!qword_1ECCDD1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD1B0);
  }

  return result;
}

unint64_t sub_1DD47BA04()
{
  result = qword_1ECCDD1B8;
  if (!qword_1ECCDD1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD1B8);
  }

  return result;
}

unint64_t sub_1DD47BA58()
{
  result = qword_1ECCDD1C0;
  if (!qword_1ECCDD1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD1C0);
  }

  return result;
}

unint64_t sub_1DD47BAAC()
{
  result = qword_1ECCDD1D0;
  if (!qword_1ECCDD1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD1D0);
  }

  return result;
}

unint64_t sub_1DD47BB00()
{
  result = qword_1ECCDD1D8;
  if (!qword_1ECCDD1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD1D8);
  }

  return result;
}

unint64_t sub_1DD47BB58()
{
  result = qword_1ECCDD1E0;
  if (!qword_1ECCDD1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD1E0);
  }

  return result;
}

unint64_t sub_1DD47BBB0()
{
  result = qword_1ECCDD1E8;
  if (!qword_1ECCDD1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD1E8);
  }

  return result;
}

_BYTE *sub_1DD47BC28(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD47BD08()
{
  result = qword_1ECCDD1F0;
  if (!qword_1ECCDD1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD1F0);
  }

  return result;
}

unint64_t sub_1DD47BD60()
{
  result = qword_1ECCDD1F8;
  if (!qword_1ECCDD1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD1F8);
  }

  return result;
}

unint64_t sub_1DD47BDB8()
{
  result = qword_1ECCDD200;
  if (!qword_1ECCDD200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD200);
  }

  return result;
}

unint64_t sub_1DD47BE0C()
{
  result = qword_1ECCDD208;
  if (!qword_1ECCDD208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD208);
  }

  return result;
}

unint64_t sub_1DD47BE60()
{
  result = qword_1ECCDD210;
  if (!qword_1ECCDD210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD210);
  }

  return result;
}

SiriInference::CrossStreetName __swiftcall CrossStreetName.init(name:prefix:)(SiriInference::CrossStreetName name, SiriInference::CrossStreetName::Prefix_optional prefix)
{
  v3 = *prefix.value;
  *v2 = name.name;
  *(v2 + 16) = v3;
  name.prefix = prefix;
  return name;
}

SiriInference::CrossStreetName::Prefix_optional __swiftcall CrossStreetName.Prefix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CrossStreetName.Prefix.rawValue.getter()
{
  result = 28265;
  switch(*v0)
  {
    case 1:
      result = 0x754E746565727473;
      break;
    case 2:
      result = 0x6365737265746E69;
      break;
    case 3:
      result = 1918985582;
      break;
    case 4:
      result = 28271;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD47BFE0@<X0>(uint64_t *a1@<X8>)
{
  result = CrossStreetName.Prefix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t CrossStreetName.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static CrossStreetName.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (v5 = sub_1DD640CD8(), result = 0, (v5 & 1) != 0))
  {
    result = v3 == 5 && (v2 == 5);
    if (v2 != 5 && v3 != 5)
    {

      return sub_1DD3B0BF8();
    }
  }

  return result;
}

uint64_t sub_1DD47C190(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x786966657270 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD640CD8();

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

uint64_t sub_1DD47C254(char a1)
{
  if (a1)
  {
    return 0x786966657270;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1DD47C288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD47C190(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD47C2B0(uint64_t a1)
{
  v2 = sub_1DD47C6B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD47C2EC(uint64_t a1)
{
  v2 = sub_1DD47C6B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CrossStreetName.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD218, &qword_1DD64ED18);
  OUTLINED_FUNCTION_0();
  v11 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  v12 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD47C6B4();
  sub_1DD640EF8();
  v15 = 0;
  sub_1DD640C18();
  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_1DD47C708();
    sub_1DD640C08();
  }

  return (*(v11 + 8))(v8, v4);
}

uint64_t CrossStreetName.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD230, &qword_1DD64ED20);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD47C6B4();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v6 = sub_1DD640B28();
  v8 = v7;
  sub_1DD47C75C();
  sub_1DD640B18();
  v9 = OUTLINED_FUNCTION_41();
  v10(v9);
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD47C6B4()
{
  result = qword_1ECCDD220;
  if (!qword_1ECCDD220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD220);
  }

  return result;
}

unint64_t sub_1DD47C708()
{
  result = qword_1ECCDD228;
  if (!qword_1ECCDD228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD228);
  }

  return result;
}

unint64_t sub_1DD47C75C()
{
  result = qword_1ECCDD238;
  if (!qword_1ECCDD238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD238);
  }

  return result;
}

unint64_t sub_1DD47C7B4()
{
  result = qword_1ECCDD240;
  if (!qword_1ECCDD240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD240);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CrossStreetName.Prefix(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for CrossStreetName.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD47C9D4()
{
  result = qword_1ECCDD248;
  if (!qword_1ECCDD248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD248);
  }

  return result;
}

unint64_t sub_1DD47CA2C()
{
  result = qword_1ECCDD250;
  if (!qword_1ECCDD250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD250);
  }

  return result;
}

unint64_t sub_1DD47CA84()
{
  result = qword_1ECCDD258;
  if (!qword_1ECCDD258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD258);
  }

  return result;
}

unint64_t sub_1DD47CAD8()
{
  result = qword_1ECCDD260;
  if (!qword_1ECCDD260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD260);
  }

  return result;
}

uint64_t sub_1DD47CB2C()
{
  v7 = sub_1DD640478();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1DD640438();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1DD63FBD8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1DD39638C(0, &qword_1EE166480, 0x1E69E9610);
  sub_1DD63FB98();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1DD47EAB0(&qword_1EE166488, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF220, &unk_1DD656EC0);
  sub_1DD3CBFCC(&qword_1EE166490, &unk_1ECCDF220, &unk_1DD656EC0);
  sub_1DD640718();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1DD6404A8();
  qword_1EE1632D0 = result;
  return result;
}

uint64_t DASActivity.description.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

double DASActivity.init(name:interval:spaceoutRatio:priority:requiresExternalPower:terminateCondition:action:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>)
{
  v21 = [objc_opt_self() sharedScheduler];
  *(a9 + 24) = sub_1DD39638C(0, &qword_1EE1601B0, 0x1E698E4B8);
  *(a9 + 32) = &off_1F58B60A8;
  *a9 = v21;
  *(a9 + 40) = a1;
  *(a9 + 48) = a2;
  result = a10 * a11;
  *(a9 + 56) = a10;
  *(a9 + 64) = a10 * a11;
  *(a9 + 72) = a3;
  *(a9 + 80) = a4;
  *(a9 + 88) = a5;
  *(a9 + 96) = a6;
  *(a9 + 104) = a7;
  *(a9 + 112) = a8;
  return result;
}

Swift::Void __swiftcall DASActivity.registerAndSubmit()()
{
  v1 = v0;
  v2 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v2);
  v3 = sub_1DD47CD8C();
  if (qword_1EE1632C8 != -1)
  {
    v3 = OUTLINED_FUNCTION_2_34(&qword_1EE1632C8);
  }

  OUTLINED_FUNCTION_11_23(v3, v4, v5, v6, v7, v8, v9, v10, v71, v73, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);
  v11 = swift_allocObject();
  memcpy((v11 + 16), __src, 0x78uLL);
  v12 = OUTLINED_FUNCTION_7_25();
  v14 = v13(v12);

  if ((v14 & 1) == 0)
  {
    if (qword_1EE166108 != -1)
    {
      OUTLINED_FUNCTION_0_54(&qword_1EE166108);
    }

    v36 = sub_1DD63F9F8();
    v37 = __swift_project_value_buffer(v36, qword_1EE16F088);
    OUTLINED_FUNCTION_11_23(v37, v38, v39, v40, v41, v42, v43, v44, v72, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);
    v28 = sub_1DD63F9D8();
    v45 = sub_1DD640368();
    if (OUTLINED_FUNCTION_10_25(v45))
    {
      OUTLINED_FUNCTION_54();
      v90 = OUTLINED_FUNCTION_5_36();
      *v2 = 136315138;
      OUTLINED_FUNCTION_1_41();
      OUTLINED_FUNCTION_8_22();
      sub_1DD47E8F4(__src);
      v46 = OUTLINED_FUNCTION_7_25();
      sub_1DD39565C(v46, v47, v48);
      OUTLINED_FUNCTION_13_20();
      *(v2 + 4) = v75;
      v35 = "DASActivity: register failed for task id=%s";
      goto LABEL_13;
    }

    goto LABEL_20;
  }

  v15 = *(v1 + 24);
  v16 = *(v1 + 32);
  v17 = __swift_project_boxed_opaque_existential_1(v1, v15);
  v18 = sub_1DD47CD8C();
  (*(v16 + 32))(v18);
  OUTLINED_FUNCTION_13_20();
  if (v17)
  {

    if (qword_1EE166108 != -1)
    {
      OUTLINED_FUNCTION_0_54(&qword_1EE166108);
    }

    v19 = sub_1DD63F9F8();
    v20 = __swift_project_value_buffer(v19, qword_1EE16F088);
    OUTLINED_FUNCTION_11_23(v20, v21, v22, v23, v24, v25, v26, v27, v72, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);
    v28 = sub_1DD63F9D8();
    v29 = sub_1DD640368();
    if (OUTLINED_FUNCTION_10_25(v29))
    {
      OUTLINED_FUNCTION_54();
      v90 = OUTLINED_FUNCTION_5_36();
      *v15 = 136315138;
      OUTLINED_FUNCTION_1_41();
      OUTLINED_FUNCTION_8_22();
      sub_1DD47E8F4(__src);
      v30 = OUTLINED_FUNCTION_7_25();
      sub_1DD39565C(v30, v31, v32);
      OUTLINED_FUNCTION_13_20();
      *(v15 + 4) = v75;
      v35 = "DASActivity: Reusing existing task id=%s";
LABEL_13:
      OUTLINED_FUNCTION_12_20(&dword_1DD38D000, v33, v34, v35);
      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_0_1();

      return;
    }

LABEL_20:

    sub_1DD47E8F4(__src);
    return;
  }

  sub_1DD39638C(0, &qword_1EE160190, 0x1E698E490);
  v49 = sub_1DD47CD8C();
  v51 = sub_1DD47D66C(v49, v50);
  [v51 setPriority_];
  [v51 setRequiresNetworkConnectivity_];
  [v51 setRequiresExternalPower_];
  [v51 setInterval_];
  [v51 setMinDurationBetweenInstances_];
  if (qword_1EE166108 != -1)
  {
    OUTLINED_FUNCTION_0_54(&qword_1EE166108);
  }

  v52 = sub_1DD63F9F8();
  v53 = __swift_project_value_buffer(v52, qword_1EE16F088);
  OUTLINED_FUNCTION_11_23(v53, v54, v55, v56, v57, v58, v59, v60, v72, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);
  sub_1DD47D50C(v1, &v75);
  v61 = sub_1DD63F9D8();
  v62 = sub_1DD640368();
  if (OUTLINED_FUNCTION_9_0(v62))
  {
    v63 = swift_slowAlloc();
    v64 = OUTLINED_FUNCTION_62();
    v90 = v64;
    *v63 = 136315394;
    v65 = __src[5];
    v66 = __src[6];

    sub_1DD47E8F4(__src);
    v67 = sub_1DD39565C(v65, v66, &v90);

    *(v63 + 4) = v67;
    *(v63 + 12) = 2048;
    v68 = v82;
    sub_1DD47E8F4(&v75);
    *(v63 + 14) = v68;
    _os_log_impl(&dword_1DD38D000, v61, v62, "DASActivity: scheduling %s repeating every %f seconds", v63, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v64);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {

    sub_1DD47E8F4(&v75);
    sub_1DD47E8F4(__src);
  }

  v69 = *(v1 + 24);
  v70 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(v1, v69);
  (*(v70 + 24))(v51, v69, v70);
}

uint64_t sub_1DD47D568(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF3A0, &qword_1DD644940);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &__src[-v4 - 8];
  v6 = sub_1DD6401F8();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  sub_1DD47D50C(v1, __src);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  memcpy(v7 + 4, __src, 0x78uLL);
  v7[19] = a1;
  v8 = a1;
  sub_1DD4B0E18();
}

id sub_1DD47D66C(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1DD63FDA8();

  v4 = [v2 initWithIdentifier_];

  return v4;
}

Swift::Void __swiftcall DASActivity.unregister(cancel:)(Swift::Bool cancel)
{
  v3 = v1;
  if (cancel)
  {
    if (qword_1EE166108 != -1)
    {
      OUTLINED_FUNCTION_0_54(&qword_1EE166108);
    }

    v4 = sub_1DD63F9F8();
    __swift_project_value_buffer(v4, qword_1EE16F088);
    sub_1DD47D50C(v1, v34);
    v5 = sub_1DD63F9D8();
    v6 = sub_1DD640368();
    if (OUTLINED_FUNCTION_9_0(v6))
    {
      OUTLINED_FUNCTION_54();
      v33[0] = OUTLINED_FUNCTION_5_36();
      *v2 = 136315138;
      v7 = v35;
      v8 = v36;

      sub_1DD47E8F4(v34);
      v9 = sub_1DD39565C(v7, v8, v33);

      *(v2 + 4) = v9;
      _os_log_impl(&dword_1DD38D000, v5, v6, "DASActivity: canceling %s", v2, 0xCu);
      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_0_1();
    }

    else
    {

      sub_1DD47E8F4(v34);
    }

    sub_1DD47DA1C();
  }

  if (qword_1EE166108 != -1)
  {
    OUTLINED_FUNCTION_0_54(&qword_1EE166108);
  }

  v10 = sub_1DD63F9F8();
  v11 = __swift_project_value_buffer(v10, qword_1EE16F088);
  sub_1DD47D50C(v3, v34);
  v12 = sub_1DD63F9D8();
  v13 = sub_1DD640368();
  if (OUTLINED_FUNCTION_9_0(v13))
  {
    v14 = OUTLINED_FUNCTION_54();
    v15 = OUTLINED_FUNCTION_62();
    v33[0] = v15;
    *v14 = 136315138;
    v16 = v35;
    v17 = v36;

    sub_1DD47E8F4(v34);
    v18 = sub_1DD39565C(v16, v17, v33);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1DD38D000, v12, v13, "DASActivity: unregistering %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {

    sub_1DD47E8F4(v34);
  }

  v19 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v20 = sub_1DD47CD8C();
  v21 = (*(v19 + 16))(v20);

  if ((v21 & 1) == 0)
  {
    sub_1DD47D50C(v3, v34);
    v22 = sub_1DD63F9D8();
    v23 = sub_1DD640368();
    if (OUTLINED_FUNCTION_10_25(v23))
    {
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_5_36();
      *v11 = 136315138;
      OUTLINED_FUNCTION_1_41();
      v33[0] = v24;
      v33[1] = v26;
      v33[2] = v25;
      MEMORY[0x1E12B2260](v35, v36);
      v27 = v33[0];
      sub_1DD47E8F4(v34);
      v28 = OUTLINED_FUNCTION_7_25();
      sub_1DD39565C(v28, v29, v30);
      OUTLINED_FUNCTION_13_20();
      *(v11 + 4) = v27;
      OUTLINED_FUNCTION_12_20(&dword_1DD38D000, v31, v32, "DASActivity: deregister failed for task id=%s");
      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_0_1();
    }

    else
    {

      sub_1DD47E8F4(v34);
    }
  }
}

void sub_1DD47DA1C()
{
  v1 = v0;
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v3 = sub_1DD47CD8C();
  v4 = (*(v2 + 32))(v3);

  if (v4)
  {

    v5 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    v6 = sub_1DD47CD8C();
    (*(v5 + 40))(v6);
  }

  else
  {
    if (qword_1EE166108 != -1)
    {
      swift_once();
    }

    v7 = sub_1DD63F9F8();
    __swift_project_value_buffer(v7, qword_1EE16F088);
    sub_1DD47D50C(v1, v14);
    v8 = sub_1DD63F9D8();
    v9 = sub_1DD640368();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 136315138;
      v13 = v11;
      MEMORY[0x1E12B2260](v15, v16);
      sub_1DD47E8F4(v14);
      v12 = sub_1DD39565C(0xD000000000000019, 0x80000001DD66CE50, &v13);

      *(v10 + 4) = v12;
      _os_log_impl(&dword_1DD38D000, v8, v9, "DASActivity: No submission to cancel; task id=%s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1E12B3DA0](v11, -1, -1);
      MEMORY[0x1E12B3DA0](v10, -1, -1);
    }

    else
    {

      sub_1DD47E8F4(v14);
    }
  }
}

uint64_t sub_1DD47DE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a4;
  v5[25] = a5;
  v6 = sub_1DD63FB78();
  v5[26] = v6;
  v5[27] = *(v6 - 8);
  v5[28] = swift_task_alloc();
  v7 = sub_1DD63FBD8();
  v5[29] = v7;
  v5[30] = *(v7 - 8);
  v5[31] = swift_task_alloc();
  v8 = sub_1DD63FB58();
  v5[32] = v8;
  v5[33] = *(v8 - 8);
  v5[34] = swift_task_alloc();
  v9 = sub_1DD63FC18();
  v5[35] = v9;
  v5[36] = *(v9 - 8);
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD47DFE4, 0, 0);
}

uint64_t sub_1DD47DFE4()
{
  v31 = v0;
  if (qword_1EE166108 != -1)
  {
    OUTLINED_FUNCTION_0_54(&qword_1EE166108);
  }

  v1 = v0[24];
  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1EE16F088);
  sub_1DD47D50C(v1, (v0 + 2));
  v3 = sub_1DD63F9D8();
  v4 = sub_1DD640368();
  if (OUTLINED_FUNCTION_9_0(v4))
  {
    v5 = OUTLINED_FUNCTION_54();
    v30 = OUTLINED_FUNCTION_62();
    *v5 = 136315138;
    v6 = v0[7];
    v7 = v0[8];

    sub_1DD47E8F4((v0 + 2));
    v8 = sub_1DD39565C(v6, v7, &v30);

    *(v5 + 4) = v8;
    _os_log_impl(&dword_1DD38D000, v3, v4, "DASActivity: received trigger for %s", v5, 0xCu);
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {

    v9 = sub_1DD47E8F4((v0 + 2));
  }

  v11 = v0[24];
  v10 = v0[25];
  (*(v11 + 104))(v9);
  if ((*(v11 + 88))([v10 setTaskCompleted]))
  {
    DASActivity.unregister(cancel:)(0);
    if (qword_1EE1632C8 != -1)
    {
      OUTLINED_FUNCTION_2_34(&qword_1EE1632C8);
    }

    v12 = v0[37];
    v14 = v0[35];
    v13 = v0[36];
    v15 = v0[33];
    v16 = v0[34];
    v17 = v0[32];
    v25 = v0[31];
    v26 = v0[38];
    v28 = v0[30];
    v29 = v0[29];
    v18 = v0[28];
    v27 = v0[27];
    v19 = v0[26];
    sub_1DD63FBE8();
    *v16 = 5;
    (*(v15 + 104))(v16, *MEMORY[0x1E69E7F48], v17);
    v20 = OUTLINED_FUNCTION_7_25();
    MEMORY[0x1E12B1F30](v20);
    (*(v15 + 8))(v16, v17);
    v21 = *(v13 + 8);
    v21(v12, v14);
    v0[21] = sub_1DD47E40C;
    v0[22] = 0;
    v0[17] = MEMORY[0x1E69E9820];
    v0[18] = 1107296256;
    v0[19] = sub_1DD3CBCD0;
    v0[20] = &block_descriptor_7;
    v22 = _Block_copy(v0 + 17);
    sub_1DD63FBA8();
    v0[23] = MEMORY[0x1E69E7CC0];
    sub_1DD47EAB0(&qword_1EE163978, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBFE8, &qword_1DD64F0F0);
    sub_1DD3CBFCC(&qword_1EE1638E0, &qword_1ECCDBFE8, &qword_1DD64F0F0);
    sub_1DD640718();
    MEMORY[0x1E12B2750](v26, v25, v18, v22);
    _Block_release(v22);
    (*(v27 + 8))(v18, v19);
    (*(v28 + 8))(v25, v29);
    v21(v26, v14);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_1DD47E40C()
{
  if (qword_1EE166108 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD63F9F8();
  __swift_project_value_buffer(v0, qword_1EE16F088);
  v1 = sub_1DD63F9D8();
  v2 = sub_1DD640368();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DD38D000, v1, v2, "DASActivity: terminating the process", v3, 2u);
    MEMORY[0x1E12B3DA0](v3, -1, -1);
  }

  return MEMORY[0x1EEE75030]();
}

id sub_1DD47E520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1DD63FDA8();
  v13[4] = a4;
  v13[5] = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1DD47E600;
  v13[3] = &block_descriptor_4;
  v10 = _Block_copy(v13);

  v11 = [v5 registerForTaskWithIdentifier:v9 usingQueue:a3 launchHandler:v10];

  _Block_release(v10);

  return v11;
}

void sub_1DD47E600(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_1DD47E690(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DD63FDA8();
  v4 = [v2 deregisterTaskWithIdentifier_];

  return v4;
}

id sub_1DD47E6F8(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if ([v1 submitTaskRequest:a1 error:v4])
  {
    return v4[0];
  }

  v3 = v4[0];
  sub_1DD63CD98();

  return swift_willThrow();
}

id sub_1DD47E7C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DD63FDA8();
  v4 = [v2 taskRequestForIdentifier_];

  return v4;
}

id sub_1DD47E838(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1DD63FDA8();
  v7[0] = 0;
  v4 = [v2 cancelTaskRequestWithIdentifier:v3 error:v7];

  if (v4)
  {
    return v7[0];
  }

  v6 = v7[0];
  sub_1DD63CD98();

  return swift_willThrow();
}

uint64_t sub_1DD47E92C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1DD47E96C(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1DD47E9F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[19];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DD3B5438;

  return sub_1DD47DE04(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_1DD47EAB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL OUTLINED_FUNCTION_10_25(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_11_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);

  return sub_1DD47D50C(v26, va);
}

void OUTLINED_FUNCTION_12_20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_13_20()
{
}

uint64_t sub_1DD47EB70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v4 = a1;
  if (qword_1EE1659D0 != -1)
  {
    swift_once();
  }

  if (sub_1DD47ECE0(v4, qword_1EE1659D8))
  {

    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
LABEL_13:

    *a3 = v6;
    a3[1] = v7;
    a3[2] = v8;
    a3[3] = v9;
    a3[4] = v10;
    a3[5] = v11;
    return result;
  }

  v12 = sub_1DD4055B0();
  result = sqlite3_errmsg(v12);
  if (result)
  {
    v7 = sub_1DD63FF68();
    v8 = v14;
    if (a2)
    {

      v9 = sub_1DD5D2C8C();
      v10 = v15;
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v16 = sub_1DD47F490(v4);
    if (v16 == 92)
    {
      v17 = 1;
    }

    else
    {
      v17 = v16;
    }

    v18 = [objc_opt_self() callStackSymbols];
    v11 = sub_1DD640118();

    v6 = v17;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD47ECE0(unsigned int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = MEMORY[0x1E12B3110](*(a2 + 40), a1, 4);
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + 4 * v7) != a1);
  }

  return v2;
}

uint64_t sub_1DD47ED70()
{
  OUTLINED_FUNCTION_14_1();
  sub_1DD63F8B8();
  OUTLINED_FUNCTION_6_28();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_37();
  if (!v3)
  {
    return 0;
  }

  v4 = *(v0 + 40);
  OUTLINED_FUNCTION_2_35();
  v7 = sub_1DD47FD3C(v5, v6, MEMORY[0x1E69D27B8]);
  OUTLINED_FUNCTION_8_23(v7);
  OUTLINED_FUNCTION_0_55();
  do
  {
    OUTLINED_FUNCTION_3_32();
    if (!v8)
    {
      break;
    }

    v9 = OUTLINED_FUNCTION_4_29();
    v10(v9);
    OUTLINED_FUNCTION_2_35();
    v12 = sub_1DD47FD3C(&qword_1ECCDD278, v11, MEMORY[0x1E69D27C0]);
    OUTLINED_FUNCTION_7_26(v12);
    v13 = OUTLINED_FUNCTION_10_26();
    v14(v13);
  }

  while ((v4 & 1) == 0);
  return v1;
}

BOOL sub_1DD47EEBC(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3[2])
  {
    return 0;
  }

  sub_1DD640E28();
  sub_1DD63FD28();
  sub_1DD640E78();
  OUTLINED_FUNCTION_0_55();
  v8 = ~v7;
  do
  {
    v9 = v6 & v8;
    v10 = (1 << (v6 & v8)) & *(a3 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (a3[6] + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_1DD640CD8();
    v6 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

BOOL sub_1DD47EFA0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  OUTLINED_FUNCTION_14_1();
  sub_1DD63FDD8();
  sub_1DD640E28();
  sub_1DD63FD28();
  v3 = sub_1DD640E78();

  OUTLINED_FUNCTION_0_55();
  v5 = ~v4;
  do
  {
    v6 = (1 << (v3 & v5)) & *(v2 + 56 + (((v3 & v5) >> 3) & 0xFFFFFFFFFFFFFF8));
    v7 = v6 != 0;
    if (!v6)
    {
      break;
    }

    v8 = sub_1DD63FDD8();
    v10 = v9;
    if (v8 == sub_1DD63FDD8() && v10 == v11)
    {

      return 1;
    }

    v13 = sub_1DD640CD8();

    v3 = (v3 & v5) + 1;
  }

  while ((v13 & 1) == 0);
  return v7;
}

uint64_t sub_1DD47F0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a5[2])
  {
    return 0;
  }

  sub_1DD640E28();
  sub_1DD63FD28();
  if (a4)
  {
    MEMORY[0x1E12B3140](1);
    sub_1DD63FD28();
  }

  else
  {
    MEMORY[0x1E12B3140](0);
  }

  sub_1DD640E78();
  OUTLINED_FUNCTION_0_55();
  v13 = v12 & ~v11;
  if (((*(a5 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v11;
  while (1)
  {
    v15 = (a5[6] + 32 * v13);
    v17 = v15[2];
    v16 = v15[3];
    v18 = *v15 == a1 && v15[1] == a2;
    if (!v18 && (sub_1DD640CD8() & 1) == 0)
    {
      goto LABEL_24;
    }

    if (!v16)
    {
      break;
    }

    if (a4)
    {
      v19 = v17 == a3 && v16 == a4;
      if (v19 || (sub_1DD640CD8() & 1) != 0)
      {
        return 1;
      }
    }

    else
    {
    }

LABEL_24:
    v13 = (v13 + 1) & v14;
    if (((*(a5 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  if (a4)
  {
    goto LABEL_24;
  }

  return 1;
}

uint64_t sub_1DD47F270(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    OUTLINED_FUNCTION_14_1();
    sub_1DD640E28();
    MEMORY[0x1E12B3140](v3);
    v5 = sub_1DD640E78();
    v6 = ~(-1 << *(v2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(v2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v4 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(v2 + 48) + 8 * v7) != v3);
  }

  return v4;
}

uint64_t sub_1DD47F31C()
{
  OUTLINED_FUNCTION_14_1();
  sub_1DD63EA08();
  OUTLINED_FUNCTION_6_28();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_37();
  if (!v3)
  {
    return 0;
  }

  v4 = *(v0 + 40);
  OUTLINED_FUNCTION_1_42();
  v7 = sub_1DD47FD3C(v5, v6, MEMORY[0x1E69D1FD0]);
  OUTLINED_FUNCTION_8_23(v7);
  OUTLINED_FUNCTION_0_55();
  do
  {
    OUTLINED_FUNCTION_3_32();
    if (!v8)
    {
      break;
    }

    v9 = OUTLINED_FUNCTION_4_29();
    v10(v9);
    OUTLINED_FUNCTION_1_42();
    v12 = sub_1DD47FD3C(&qword_1ECCDD288, v11, MEMORY[0x1E69D1FD8]);
    OUTLINED_FUNCTION_7_26(v12);
    v13 = OUTLINED_FUNCTION_10_26();
    v14(v13);
  }

  while ((v4 & 1) == 0);
  return v1;
}

uint64_t sub_1DD47F490(int a1)
{
  if (!v2 & v1)
  {
    switch(a1)
    {
      case 100:
        return 29;
      case 101:
        return 30;
      case 283:
        return 40;
      case 284:
        return 41;
      case 539:
        return 51;
      case 769:
        return 52;
      case 776:
        return 53;
      case 778:
        return 54;
      case 782:
        return 55;
      case 787:
        return 56;
      case 1032:
        return 57;
      case 1034:
        return 58;
      case 1038:
        return 59;
      case 1043:
        return 60;
      case 1288:
        return 61;
      case 1290:
        return 62;
      case 1294:
        return 63;
      case 1299:
        return 64;
      case 1544:
        return 65;
      case 1546:
        return 66;
      case 1555:
        return 67;
      case 1802:
        return 68;
      case 1811:
        return 69;
      case 2058:
        return 70;
      case 2067:
        return 71;
      case 2314:
        return 72;
      case 2323:
        return 73;
      case 2570:
        return 74;
      case 2579:
        return 75;
      case 2826:
        return 76;
      case 3082:
        return 77;
      case 3338:
        return 78;
      case 3594:
        return 79;
      case 3850:
        return 80;
      case 4106:
        return 81;
      case 4362:
        return 82;
      case 4618:
        return 83;
      case 4874:
        return 84;
      case 5130:
        return 85;
      case 5386:
        return 86;
      case 5642:
        return 87;
      case 5898:
        return 88;
      case 6154:
        return 89;
      case 6410:
        return 90;
      case 6666:
        return 91;
      default:
        return 92;
    }
  }

  else
  {
    v3 = 0;
    result = 11;
    switch(a1)
    {
      case 0:
        goto LABEL_117;
      case 1:
        v3 = 1;
        goto LABEL_117;
      case 2:
        v3 = 2;
        goto LABEL_117;
      case 3:
        v3 = 3;
        goto LABEL_117;
      case 4:
        v3 = 4;
        goto LABEL_117;
      case 5:
        v3 = 5;
        goto LABEL_117;
      case 6:
        v3 = 6;
        goto LABEL_117;
      case 7:
        v3 = 7;
        goto LABEL_117;
      case 8:
        v3 = 8;
        goto LABEL_117;
      case 9:
        v3 = 9;
        goto LABEL_117;
      case 10:
        v3 = 10;
LABEL_117:
        result = v3;
        break;
      case 11:
        return result;
      case 12:
        result = 12;
        break;
      case 13:
        result = 13;
        break;
      case 14:
        result = 14;
        break;
      case 15:
        result = 15;
        break;
      case 16:
        result = 16;
        break;
      case 17:
        result = 17;
        break;
      case 18:
        result = 18;
        break;
      case 19:
        result = 19;
        break;
      case 20:
        result = 20;
        break;
      case 21:
        result = 21;
        break;
      case 22:
        result = 22;
        break;
      case 23:
        result = 23;
        break;
      case 24:
        result = 24;
        break;
      case 25:
        result = 25;
        break;
      case 26:
        result = 26;
        break;
      case 27:
        result = 27;
        break;
      case 28:
        result = 28;
        break;
      default:
        JUMPOUT(0);
    }
  }

  return result;
}

uint64_t sub_1DD47F990(uint64_t a1)
{
  v2 = sub_1DD47FC58();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1DD47F9CC(uint64_t a1)
{
  v2 = sub_1DD47FC58();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1DD47FA08()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v0[3];
    v3 = 0xE000000000000000;
    sub_1DD6408D8();
    v4 = v0[2];
    if (v4)
    {
      v5 = v0[1];
    }

    else
    {
      v5 = 0;
    }

    if (v4)
    {
      v3 = v0[2];
    }

    MEMORY[0x1E12B2260](v5, v3);

    MEMORY[0x1E12B2260](10272, 0xE200000000000000);
    MEMORY[0x1E12B2260](v2, v1);
    v6 = 0x3A65646F63282029;
    v7 = 0xE900000000000020;
  }

  else
  {
    v8 = v0[2];
    if (v8)
    {
      v9 = v0[1];
    }

    else
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = v0[2];
    }

    else
    {
      v10 = 0xE000000000000000;
    }

    MEMORY[0x1E12B2260](v9, v10);

    v6 = 0x203A65646F632820;
    v7 = 0xE800000000000000;
  }

  MEMORY[0x1E12B2260](v6, v7);
  sub_1DD6409F8();
  MEMORY[0x1E12B2260](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1DD47FB84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD270, &qword_1DD64F1A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  *(inited + 32) = sub_1DD63FDD8();
  *(inited + 40) = v2;
  v4 = *(v0 + 8);
  v3 = *(v0 + 16);
  *(inited + 72) = MEMORY[0x1E69E6158];
  if (!v3)
  {
    v4 = 0;
  }

  v5 = 0xE000000000000000;
  if (v3)
  {
    v5 = v3;
  }

  *(inited + 48) = v4;
  *(inited + 56) = v5;

  return sub_1DD63FC88();
}

unint64_t sub_1DD47FC58()
{
  result = qword_1ECCDD268;
  if (!qword_1ECCDD268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD268);
  }

  return result;
}

uint64_t sub_1DD47FCE4@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD47F490(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DD47FD10@<X0>(_DWORD *a1@<X8>)
{
  result = sub_1DD47FCAC(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1DD47FD3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for ResultCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xA5)
  {
    if (a2 + 91 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 91) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 92;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x5C;
  v5 = v6 - 92;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ResultCode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 91 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 91) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xA5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xA4)
  {
    v6 = ((a2 - 165) >> 8) + 1;
    *result = a2 + 91;
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
          *result = a2 + 91;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD47FEE8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_1DD47FF28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DD47FF88()
{
  result = qword_1ECCDD290;
  if (!qword_1ECCDD290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD290);
  }

  return result;
}

BOOL sub_1DD480018()
{
  v0 = sub_1DD63D2B8();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DD63D188();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  sub_1DD63D1A8();
  (*(v8 + 104))(v11, *MEMORY[0x1E6969868], v6);
  v15 = sub_1DD63D178();
  v16 = *(v8 + 8);
  v16(v11, v6);
  v16(v14, v6);
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  (*(v2 + 104))(v5, *MEMORY[0x1E6969A68], v0);
  v17 = sub_1DD63D2C8();
  (*(v2 + 8))(v5, v0);
  return (v17 & 3) == 0 && v17 % 100 || v17 % 400 == 0;
}

void sub_1DD480258(uint64_t a1)
{
  sub_1DD63CF48();
  v2 = round(v1);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t sub_1DD4802B8()
{
  v0 = sub_1DD63D078();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DD63D068();
  sub_1DD480258(v4);
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_1DD480384()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD298, &qword_1DD64F418);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v72 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2A0, &qword_1DD64F420);
  OUTLINED_FUNCTION_3(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v72 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2A8, &qword_1DD64F428);
  OUTLINED_FUNCTION_3(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  v81 = &v72 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2B0, &qword_1DD64F430);
  OUTLINED_FUNCTION_3(v11);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v72 - v13;
  v15 = sub_1DD63E1B8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v80 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2B8, &qword_1DD64F438);
  OUTLINED_FUNCTION_3(v18);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v72 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2C0, &qword_1DD64F440);
  v23 = OUTLINED_FUNCTION_3(v22);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v72 - v27;
  result = sub_1DD63E068();
  if ((v30 & 1) == 0 && __OFADD__(result++, 1))
  {
    __break(1u);
    return result;
  }

  v76 = v7;
  v77 = v30;
  v78 = result;
  v79 = v3;
  sub_1DD63E038();
  v32 = sub_1DD63E018();
  OUTLINED_FUNCTION_8(v28, 1, v32);
  if (v46)
  {
    sub_1DD417838(v28, &qword_1ECCDD2C0, &qword_1DD64F440);
    v33 = 0;
    v34 = v79;
    v35 = v81;
LABEL_11:
    v44 = v80;
    goto LABEL_17;
  }

  v74 = v16;
  v75 = v15;
  v36 = sub_1DD63DFF8();
  v38 = v37;
  OUTLINED_FUNCTION_72();
  v40 = *(v39 + 8);
  v40(v28, v32);
  if (!v38)
  {
    v33 = 0;
    v34 = v79;
    v35 = v81;
    v16 = v74;
    v15 = v75;
    goto LABEL_11;
  }

  v73 = v36;
  sub_1DD63E038();
  OUTLINED_FUNCTION_8(v25, 1, v32);
  if (v46)
  {
    v41 = &qword_1ECCDD2C0;
    v42 = &qword_1DD64F440;
    v43 = v25;
LABEL_15:
    sub_1DD417838(v43, v41, v42);
    v48 = 12;
    goto LABEL_16;
  }

  sub_1DD63E008();
  v40(v25, v32);
  v45 = sub_1DD63DFB8();
  OUTLINED_FUNCTION_8(v21, 1, v45);
  if (v46)
  {
    v41 = &qword_1ECCDD2B8;
    v42 = &qword_1DD64F438;
    v43 = v21;
    goto LABEL_15;
  }

  sub_1DD3DE1D0(&v83);
  OUTLINED_FUNCTION_72();
  (*(v47 + 8))(v21, v45);
  v48 = v83;
LABEL_16:
  v34 = v79;
  v44 = v80;
  v35 = v81;
  v16 = v74;
  v82 = v48;
  type metadata accessor for DateTime.Date.Holiday();
  swift_allocObject();
  v33 = DateTime.Date.Holiday.init(with:name:calendarSystem:)(v73, v38, v73, v38, &v82);

  v15 = v75;
LABEL_17:
  sub_1DD63E098();
  OUTLINED_FUNCTION_8(v14, 1, v15);
  if (v46)
  {
    sub_1DD417838(v14, &qword_1ECCDD2B0, &qword_1DD64F430);
  }

  else
  {
    v49.n128_f64[0] = (*(v16 + 32))(v44, v14, v15);
    v50 = sub_1DD567F90(v49);
    if (v50)
    {
      (*(v16 + 8))(v44, v15);
    }

    else
    {
      TerminalElement.Qualifier.toQualifier()(&v86);
      (*(v16 + 8))(v44, v15);
      if (v86 != 20)
      {
        v85 = 38;
        v84 = v86;
        type metadata accessor for DateTime.DateTimeRange();
        swift_allocObject();
        v51 = DateTime.DateTimeRange.init(at:start:end:duration:interval:definedValue:qualifier:)(0, 0, 0, 0, 0, &v85, &v84);

        goto LABEL_24;
      }
    }
  }

  v51 = 0;
LABEL_24:
  v52 = sub_1DD63E028();
  LODWORD(v80) = v53;
  v54 = sub_1DD63E058();
  LODWORD(v56) = v55;
  sub_1DD480B8C(v35);
  v57 = sub_1DD63DFD8();
  OUTLINED_FUNCTION_8(v35, 1, v57);
  if (v46)
  {
    sub_1DD417838(v35, &qword_1ECCDD2A8, &qword_1DD64F428);
    v58 = 7;
  }

  else
  {
    LODWORD(v79) = v56;
    v56 = v33;
    v59 = v54;
    v60 = v52;
    v61 = v76;
    sub_1DD63DFC8();
    v62 = sub_1DD63E118();
    OUTLINED_FUNCTION_8(v61, 1, v62);
    if (v63)
    {
      sub_1DD417838(v61, &qword_1ECCDD2A0, &qword_1DD64F420);
      v92 = 7;
    }

    else
    {
      sub_1DD547BD8();
      OUTLINED_FUNCTION_72();
      (*(v64 + 8))(v61, v62);
    }

    OUTLINED_FUNCTION_72();
    (*(v65 + 8))(v81, v57);
    v58 = v92;
    v52 = v60;
    v54 = v59;
    v33 = v56;
    LOBYTE(v56) = v79;
  }

  v91 = v58;
  v90 = 12;
  sub_1DD63E088();
  v66 = sub_1DD63E198();
  OUTLINED_FUNCTION_8(v34, 1, v66);
  if (v46)
  {
    sub_1DD417838(v34, &qword_1ECCDD298, &qword_1DD64F418);
    v68 = 7;
  }

  else
  {
    sub_1DD4ACD84(&v89);
    OUTLINED_FUNCTION_72();
    (*(v67 + 8))(v34, v66);
    v68 = v89;
  }

  v88 = v68;
  v69 = sub_1DD63E048();
  v71 = v70;

  v87 = 7;
  type metadata accessor for DateTime.Date();
  swift_allocObject();
  return DateTime.Date.init(withDay:month:year:definedValue:holiday:monthOfYear:weekOfYear:dayOfWeek:dayOfWeekOrdinal:calendarEra:occurringIn:)(v52, v80 & 1, v78, v77 & 1, v54, v56 & 1, &v91, v33, &v90, 0, 1, &v88, v69, v71 & 1, &v87, v51);
}

uint64_t sub_1DD480B8C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(sub_1DD63E078() + 16);

  if (v2 == 1)
  {
    result = sub_1DD63E078();
    if (!*(result + 16))
    {
      __break(1u);
      return result;
    }

    v4 = result;
    v5 = sub_1DD63DFD8();
    OUTLINED_FUNCTION_72();
    (*(v6 + 16))(a1, v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

    v7 = a1;
    v8 = 0;
    v9 = v5;
  }

  else
  {
    v9 = sub_1DD63DFD8();
    v7 = a1;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

BOOL sub_1DD480C68()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2A0, &qword_1DD64F420);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v32[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2A8, &qword_1DD64F428);
  OUTLINED_FUNCTION_3(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2C0, &qword_1DD64F440);
  OUTLINED_FUNCTION_3(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD298, &qword_1DD64F418);
  OUTLINED_FUNCTION_3(v12);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32[-v14];
  sub_1DD63E028();
  if ((v16 & 1) == 0)
  {
    return 1;
  }

  sub_1DD63E088();
  v17 = sub_1DD63E198();
  v18 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v17);
  sub_1DD417838(v15, &qword_1ECCDD298, &qword_1DD64F418);
  if (EnumTagSinglePayload == 1)
  {
    sub_1DD63E068();
    if ((v20 & 1) == 0)
    {
      return 1;
    }

    sub_1DD63E058();
    if ((v21 & 1) == 0)
    {
      return 1;
    }

    sub_1DD63E038();
    v22 = sub_1DD63E018();
    OUTLINED_FUNCTION_8(v11, 1, v22);
    if (v29)
    {
      sub_1DD417838(v11, &qword_1ECCDD2C0, &qword_1DD64F440);
    }

    else
    {
      sub_1DD63DFF8();
      v24 = v23;
      OUTLINED_FUNCTION_72();
      (*(v25 + 8))(v11, v22);
      if (v24)
      {

        return 1;
      }
    }

    sub_1DD480B8C(v7);
    v27 = sub_1DD63DFD8();
    OUTLINED_FUNCTION_8(v7, 1, v27);
    if (v29)
    {
      sub_1DD417838(v7, &qword_1ECCDD2A8, &qword_1DD64F428);
      return 0;
    }

    else
    {
      sub_1DD63DFC8();
      v28 = sub_1DD63E118();
      OUTLINED_FUNCTION_8(v3, 1, v28);
      if (v29)
      {
        sub_1DD417838(v3, &qword_1ECCDD2A0, &qword_1DD64F420);
        v33 = 7;
      }

      else
      {
        sub_1DD547BD8();
        OUTLINED_FUNCTION_72();
        (*(v30 + 8))(v3, v28);
      }

      OUTLINED_FUNCTION_72();
      (*(v31 + 8))(v7, v27);
      return v33 != 7;
    }
  }

  return v18;
}

uint64_t DateTime.Date.__allocating_init(withDay:month:)()
{
  OUTLINED_FUNCTION_2_36();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_11_24();
  DateTime.Date.init(withDay:month:)(v1, v2);
  return v0;
}

uint64_t DateTime.Date.__allocating_init(withHoliday:)()
{
  OUTLINED_FUNCTION_2_36();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_15_2();
  DateTime.Date.init(withHoliday:)(v1);
  return v0;
}

uint64_t DateTime.Date.__allocating_init(withDay:month:year:definedValue:holiday:monthOfYear:weekOfYear:dayOfWeek:dayOfWeekOrdinal:calendarEra:occurringIn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  LODWORD(v36) = a6;
  OUTLINED_FUNCTION_24_10();
  HIDWORD(v36) = v16;
  HIDWORD(v32) = a11;
  OUTLINED_FUNCTION_2_36();
  v17 = swift_allocObject();
  v18 = OUTLINED_FUNCTION_16_20(v17);
  *(v18 + 48) = a5;
  v20 = OUTLINED_FUNCTION_20_15(v18, v19, a13, v32, a5, v36, a16, a8);
  *(v20 + 80) = a10;
  result = OUTLINED_FUNCTION_29_10(v20, v21, v22, v23, v24, v25, v26, v27, v30, v33, v34);
  *(result + 96) = v31;
  *(result + 104) = v37 & 1;
  *(result + 105) = v29;
  *(result + 112) = v38;
  return result;
}

uint64_t sub_1DD481178()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC140, &unk_1DD655030);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v9 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC148, &qword_1DD645290);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9 - v4;
  v6 = sub_1DD63D2D8();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = sub_1DD63D328();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v7);
  sub_1DD63CB68(v5, v2, 0, 1, 0, 1, 0, 1, 0, 1, 0);
  sub_1DD63CAA8();
  sub_1DD63CAC8();
  sub_1DD63CA38();
  sub_1DD63CB58();
  return sub_1DD63C9D8();
}

uint64_t DateTime.Date.__allocating_init(withDay:)()
{
  OUTLINED_FUNCTION_2_36();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_15_2();
  DateTime.Date.init(withDay:)(v1);
  return v0;
}

uint64_t DateTime.Date.init(withDay:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1793;
  *(v1 + 64) = 0;
  *(v1 + 72) = 12;
  *(v1 + 80) = 0;
  return OUTLINED_FUNCTION_0_56(1793);
}

uint64_t DateTime.Date.init(withDay:month:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
  *(v2 + 32) = a2;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 1793;
  *(v2 + 64) = 0;
  *(v2 + 72) = 12;
  *(v2 + 80) = 0;
  return OUTLINED_FUNCTION_0_56(1793);
}

uint64_t DateTime.Date.__allocating_init(withDay:monthOfYear:)()
{
  OUTLINED_FUNCTION_2_36();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_11_24();
  DateTime.Date.init(withDay:monthOfYear:)(v1, v2);
  return v0;
}

uint64_t DateTime.Date.init(withDay:monthOfYear:)(uint64_t a1, char *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
  *(v2 + 72) = v3;
  *(v2 + 48) = 0;
  *(v2 + 56) = 1793;
  *(v2 + 64) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 1;
  *(v2 + 80) = 0;
  return OUTLINED_FUNCTION_0_56(1793);
}

uint64_t DateTime.Date.__allocating_init(withDay:monthOfYear:year:)()
{
  OUTLINED_FUNCTION_2_36();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_30_0();
  DateTime.Date.init(withDay:monthOfYear:year:)(v1, v2, v3);
  return v0;
}

uint64_t DateTime.Date.init(withDay:monthOfYear:year:)(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = *a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = 0;
  *(v3 + 72) = v4;
  *(v3 + 48) = a3;
  *(v3 + 56) = 1792;
  *(v3 + 64) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 1;
  *(v3 + 80) = 0;
  return OUTLINED_FUNCTION_0_56(1793);
}

uint64_t DateTime.Date.__allocating_init(withYear:)()
{
  OUTLINED_FUNCTION_2_36();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_15_2();
  DateTime.Date.init(withYear:)(v1);
  return v0;
}

uint64_t DateTime.Date.init(withYear:)(uint64_t a1)
{
  *(v1 + 48) = a1;
  *(v1 + 56) = 1792;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 72) = 12;
  *(v1 + 64) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 80) = 0;
  return OUTLINED_FUNCTION_0_56(1793);
}

uint64_t DateTime.Date.__allocating_init(withDay:month:year:)()
{
  OUTLINED_FUNCTION_2_36();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_30_0();
  DateTime.Date.init(withDay:month:year:)(v1, v2, v3);
  return v0;
}

uint64_t DateTime.Date.init(withDay:month:year:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = 0;
  *(v3 + 32) = a2;
  *(v3 + 40) = 0;
  *(v3 + 48) = a3;
  *(v3 + 56) = 1792;
  *(v3 + 64) = 0;
  *(v3 + 72) = 12;
  *(v3 + 80) = 0;
  return OUTLINED_FUNCTION_0_56(1793);
}

uint64_t DateTime.Date.__allocating_init(withMonth:year:)()
{
  OUTLINED_FUNCTION_2_36();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_11_24();
  DateTime.Date.init(withMonth:year:)(v1, v2);
  return v0;
}

uint64_t DateTime.Date.init(withMonth:year:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = 0;
  *(v2 + 48) = a2;
  *(v2 + 56) = 1792;
  *(v2 + 16) = 0;
  *(v2 + 24) = 1;
  *(v2 + 64) = 0;
  *(v2 + 72) = 12;
  *(v2 + 80) = 0;
  return OUTLINED_FUNCTION_0_56(1793);
}

uint64_t DateTime.Date.__allocating_init(withDefinedValue:)()
{
  OUTLINED_FUNCTION_2_36();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_15_2();
  DateTime.Date.init(withDefinedValue:)(v1);
  return v0;
}

uint64_t DateTime.Date.init(withDefinedValue:)(_BYTE *a1)
{
  *(v1 + 57) = *a1;
  OUTLINED_FUNCTION_18_17();
  *(v1 + 56) = v2;
  *(v1 + 64) = 0;
  *(v1 + 72) = 12;
  *(v1 + 80) = 0;
  return OUTLINED_FUNCTION_0_56(1793);
}

uint64_t DateTime.Date.init(withHoliday:)(uint64_t a1)
{
  *(v1 + 64) = a1;
  OUTLINED_FUNCTION_18_17();
  *(v1 + 56) = 1793;
  *(v1 + 72) = 12;
  *(v1 + 80) = 0;
  return OUTLINED_FUNCTION_0_56(1793);
}

uint64_t DateTime.Date.__allocating_init(withDayOfWeek:)()
{
  OUTLINED_FUNCTION_2_36();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_15_2();
  DateTime.Date.init(withDayOfWeek:)(v1);
  return v0;
}

uint64_t DateTime.Date.init(withDayOfWeek:)(_BYTE *a1)
{
  *(v1 + 89) = *a1;
  OUTLINED_FUNCTION_18_17();
  *(v1 + 56) = 1793;
  *(v1 + 64) = 0;
  *(v1 + 72) = 12;
  *(v1 + 80) = 0;
  *(v1 + 88) = v2;
  *(v1 + 96) = 0;
  *(v1 + 104) = 1793;
  return OUTLINED_FUNCTION_1_43();
}

uint64_t DateTime.Date.__allocating_init(withDayOfWeek:dayOfWeekOrdinal:)()
{
  OUTLINED_FUNCTION_2_36();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_11_24();
  DateTime.Date.init(withDayOfWeek:dayOfWeekOrdinal:)(v1, v2);
  return v0;
}

uint64_t DateTime.Date.init(withDayOfWeek:dayOfWeekOrdinal:)(_BYTE *a1, uint64_t a2)
{
  *(v2 + 89) = *a1;
  *(v2 + 96) = a2;
  *(v2 + 104) = 1792;
  OUTLINED_FUNCTION_18_17();
  *(v2 + 56) = 1793;
  *(v2 + 64) = 0;
  *(v2 + 72) = 12;
  *(v2 + 80) = 0;
  *(v2 + 88) = v3;
  return OUTLINED_FUNCTION_1_43();
}

uint64_t DateTime.Date.__allocating_init(withMonthOfYear:)()
{
  OUTLINED_FUNCTION_2_36();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_15_2();
  DateTime.Date.init(withMonthOfYear:)(v1);
  return v0;
}

uint64_t DateTime.Date.init(withMonthOfYear:)(_BYTE *a1)
{
  *(v1 + 72) = *a1;
  OUTLINED_FUNCTION_18_17();
  *(v1 + 56) = 1793;
  *(v1 + 64) = 0;
  *(v1 + 80) = 0;
  return OUTLINED_FUNCTION_0_56(1793);
}

uint64_t DateTime.Date.__allocating_init(withMonthOfYear:year:)()
{
  OUTLINED_FUNCTION_2_36();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_11_24();
  DateTime.Date.init(withMonthOfYear:year:)(v1, v2);
  return v0;
}

uint64_t DateTime.Date.init(withMonthOfYear:year:)(_BYTE *a1, uint64_t a2)
{
  *(v2 + 72) = *a1;
  *(v2 + 48) = a2;
  *(v2 + 56) = 1792;
  *(v2 + 16) = 0;
  *(v2 + 24) = 1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 1;
  *(v2 + 64) = 0;
  *(v2 + 80) = 0;
  return OUTLINED_FUNCTION_0_56(1793);
}

uint64_t DateTime.Date.__allocating_init(withDay:month:year:definedValue:holiday:monthOfYear:weekOfYear:dayOfWeek:dayOfWeekOrdinal:calendarEra:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13)
{
  LODWORD(v34) = a6;
  OUTLINED_FUNCTION_24_10();
  HIDWORD(v34) = v13;
  HIDWORD(v29) = a11;
  OUTLINED_FUNCTION_2_36();
  v14 = swift_allocObject();
  v15 = OUTLINED_FUNCTION_16_20(v14);
  *(v15 + 48) = a5;
  v17 = OUTLINED_FUNCTION_20_15(v15, v16, v27, v29, a13, a5, v34, a8);
  *(v17 + 80) = a10;
  result = OUTLINED_FUNCTION_29_10(v17, v18, v19, v20, v21, v22, v23, v24, v28, v30, v31);
  *(result + 96) = v32;
  *(result + 104) = v35 & 1;
  *(result + 105) = v26;
  *(result + 112) = 0;
  return result;
}

uint64_t DateTime.Date.init(withDay:month:year:definedValue:holiday:monthOfYear:weekOfYear:dayOfWeek:dayOfWeekOrdinal:calendarEra:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, char *a7, uint64_t a8, char *a9, uint64_t a10, char a11, char *a12, uint64_t a13, char a14, char *a15)
{
  v16 = *a7;
  v17 = *a9;
  v18 = *a12;
  v19 = *a15;
  *(v15 + 16) = a1;
  *(v15 + 24) = a2 & 1;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4 & 1;
  *(v15 + 48) = a5;
  *(v15 + 56) = a6 & 1;
  *(v15 + 57) = v16;
  *(v15 + 64) = a8;
  *(v15 + 72) = v17;
  *(v15 + 80) = a10;
  *(v15 + 88) = a11 & 1;
  *(v15 + 89) = v18;
  *(v15 + 96) = a13;
  *(v15 + 104) = a14 & 1;
  *(v15 + 105) = v19;
  return OUTLINED_FUNCTION_1_43();
}

uint64_t DateTime.Date.init(withDay:month:year:definedValue:holiday:monthOfYear:weekOfYear:dayOfWeek:dayOfWeekOrdinal:calendarEra:occurringIn:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, char *a7, uint64_t a8, char *a9, uint64_t a10, char a11, char *a12, uint64_t a13, char a14, char *a15, uint64_t a16)
{
  v17 = *a7;
  v18 = *a9;
  v19 = *a12;
  v20 = *a15;
  *(v16 + 16) = a1;
  *(v16 + 24) = a2 & 1;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4 & 1;
  *(v16 + 48) = a5;
  *(v16 + 56) = a6 & 1;
  *(v16 + 57) = v17;
  *(v16 + 64) = a8;
  *(v16 + 72) = v18;
  *(v16 + 80) = a10;
  *(v16 + 88) = a11 & 1;
  *(v16 + 89) = v19;
  *(v16 + 96) = a13;
  *(v16 + 104) = a14 & 1;
  *(v16 + 105) = v20;
  *(v16 + 112) = a16;
  return v16;
}

uint64_t sub_1DD481A74(uint64_t a1)
{
  if (*(v1 + 40) == 1)
  {
    OUTLINED_FUNCTION_66();
  }

  else
  {
    v3 = *(v1 + 32);
    OUTLINED_FUNCTION_64();
    MEMORY[0x1E12B3140](v3);
  }

  if (*(v1 + 24) == 1)
  {
    OUTLINED_FUNCTION_66();
  }

  else
  {
    v4 = *(v1 + 16);
    OUTLINED_FUNCTION_64();
    MEMORY[0x1E12B3140](v4);
  }

  if (*(v1 + 56) == 1)
  {
    OUTLINED_FUNCTION_66();
  }

  else
  {
    v5 = *(v1 + 48);
    OUTLINED_FUNCTION_64();
    MEMORY[0x1E12B3140](v5);
  }

  if (*(v1 + 88) == 1)
  {
    OUTLINED_FUNCTION_66();
  }

  else
  {
    v6 = *(v1 + 80);
    OUTLINED_FUNCTION_64();
    MEMORY[0x1E12B3140](v6);
  }

  v7 = *(v1 + 105);
  if (v7 == 7)
  {
    OUTLINED_FUNCTION_66();
  }

  else
  {
    OUTLINED_FUNCTION_64();
    MEMORY[0x1E12B3140](v7);
  }

  v8 = *(v1 + 89);
  if (v8 == 7)
  {
    OUTLINED_FUNCTION_66();
  }

  else
  {
    OUTLINED_FUNCTION_64();
    MEMORY[0x1E12B3140](v8);
  }

  if (*(v1 + 104) == 1)
  {
    OUTLINED_FUNCTION_66();
  }

  else
  {
    v9 = *(v1 + 96);
    OUTLINED_FUNCTION_64();
    MEMORY[0x1E12B3140](v9);
  }

  v10 = *(v1 + 72);
  if (v10 == 12)
  {
    OUTLINED_FUNCTION_66();
  }

  else
  {
    OUTLINED_FUNCTION_64();
    MEMORY[0x1E12B3140](v10);
  }

  v11 = *(v1 + 57);
  if (v11 == 7)
  {
    OUTLINED_FUNCTION_66();
  }

  else
  {
    OUTLINED_FUNCTION_64();
    MEMORY[0x1E12B3140](v11);
  }

  if (*(v1 + 64))
  {
    OUTLINED_FUNCTION_64();
    sub_1DD4C4904(a1);
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  if (!*(v1 + 112))
  {
    return OUTLINED_FUNCTION_66();
  }

  OUTLINED_FUNCTION_64();
  return sub_1DD49CDC8();
}

BOOL static DateTime.Date.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_14();
    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_14();
    if (v3)
    {
      return 0;
    }
  }

  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_14();
    if (v4)
    {
      return 0;
    }
  }

  if (*(a1 + 88))
  {
    if (!*(a2 + 88))
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_14();
    if (v5)
    {
      return 0;
    }
  }

  v6 = *(a1 + 105);
  v7 = *(a2 + 105);
  if (v6 == 7)
  {
    if (v7 != 7)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = *(a1 + 89);
  v9 = *(a2 + 89);
  if (v8 == 7)
  {
    if (v9 != 7)
    {
      return 0;
    }
  }

  else if (v8 != v9)
  {
    return 0;
  }

  if (*(a1 + 104))
  {
    if (!*(a2 + 104))
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_14();
    if (v10)
    {
      return 0;
    }
  }

  v11 = *(a1 + 72);
  v12 = *(a2 + 72);
  if (v11 != 12)
  {
    if (v11 == v12)
    {
      goto LABEL_33;
    }

    return 0;
  }

  if (v12 != 12)
  {
    return 0;
  }

LABEL_33:
  v13 = *(a1 + 57);
  v14 = *(a2 + 57);
  if (v13 == 7)
  {
    if (v14 != 7)
    {
      return 0;
    }
  }

  else if (v13 != v14)
  {
    return 0;
  }

  v16 = *(a1 + 112);
  v17 = *(a2 + 112);
  result = (v16 | v17) == 0;
  if (v16)
  {
    if (v17)
    {
      type metadata accessor for DateTime.DateTimeRange();

      OUTLINED_FUNCTION_1_8();
      v18 = static DateTime.DateTimeRange.== infix(_:_:)();

      return v18;
    }
  }

  return result;
}

BOOL static DateTime.Date.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 56) & 1) != 0 || (*(a2 + 56))
  {
    return 0;
  }

  v3 = *(a1 + 48);
  v4 = *(a2 + 48);
  if (v3 < v4)
  {
    return 1;
  }

  if (v3 != v4 || (*(a1 + 40) & 1) != 0 || (*(a2 + 40) & 1) != 0)
  {
    return 0;
  }

  v5 = *(a1 + 32);
  v6 = *(a2 + 32);
  if (v5 < v6)
  {
    return 1;
  }

  if (v5 != v6 || (*(a1 + 24) & 1) != 0 || (*(a2 + 24) & 1) != 0)
  {
    return 0;
  }

  return *(a1 + 16) < *(a2 + 16);
}

BOOL static DateTime.Date.<= infix(_:_:)(uint64_t a1)
{
  type metadata accessor for DateTime.Date();
  v1 = OUTLINED_FUNCTION_1_8();
  if (static DateTime.Date.< infix(_:_:)(v1, v2))
  {
    return 1;
  }

  v4 = OUTLINED_FUNCTION_1_8();
  return static DateTime.Date.== infix(_:_:)(v4, v5);
}

BOOL static DateTime.Date.> infix(_:_:)(uint64_t a1)
{
  type metadata accessor for DateTime.Date();
  v1 = OUTLINED_FUNCTION_1_8();
  return !static DateTime.Date.<= infix(_:_:)(v1);
}

BOOL static DateTime.Date.>= infix(_:_:)(uint64_t a1)
{
  type metadata accessor for DateTime.Date();
  v1 = OUTLINED_FUNCTION_1_8();
  return !static DateTime.Date.< infix(_:_:)(v1, v2);
}

uint64_t sub_1DD481F00()
{
  if ((*(v0 + 56) & 1) == 0)
  {
    v1 = sub_1DD640CB8();
    MEMORY[0x1E12B2260](v1);

    sub_1DD3BE2A4();
    if (*(v2 + 16) >= *(v2 + 24) >> 1)
    {
      OUTLINED_FUNCTION_3_2();
    }

    OUTLINED_FUNCTION_5_3();
  }

  if ((*(v0 + 40) & 1) == 0)
  {
    v3 = sub_1DD640CB8();
    MEMORY[0x1E12B2260](v3);

    if ((OUTLINED_FUNCTION_27_0() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
    }

    OUTLINED_FUNCTION_7_27();
    if (v4)
    {
      OUTLINED_FUNCTION_3_2();
    }

    OUTLINED_FUNCTION_5_3();
  }

  if ((*(v0 + 24) & 1) == 0)
  {
    v5 = sub_1DD640CB8();
    MEMORY[0x1E12B2260](v5);

    if ((OUTLINED_FUNCTION_27_0() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
    }

    OUTLINED_FUNCTION_7_27();
    if (v4)
    {
      OUTLINED_FUNCTION_3_2();
    }

    OUTLINED_FUNCTION_5_3();
  }

  if (*(v0 + 89) != 7)
  {
    MEMORY[0x1E12B2260](0x656557664F796164, 0xEA00000000003D6BLL);
    sub_1DD6409F8();
    if ((OUTLINED_FUNCTION_27_0() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
    }

    OUTLINED_FUNCTION_7_27();
    if (v4)
    {
      OUTLINED_FUNCTION_3_2();
    }

    OUTLINED_FUNCTION_5_3();
  }

  if (*(v0 + 72) != 12)
  {
    MEMORY[0x1E12B2260](0x59664F68746E6F6DLL, 0xEC0000003D726165);
    sub_1DD6409F8();
    if ((OUTLINED_FUNCTION_27_0() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
    }

    OUTLINED_FUNCTION_7_27();
    if (v4)
    {
      OUTLINED_FUNCTION_3_2();
    }

    OUTLINED_FUNCTION_5_3();
  }

  if (*(v0 + 57) != 7)
  {
    MEMORY[0x1E12B2260](0x5664656E69666564, 0xED00003D65756C61);
    sub_1DD6409F8();
    if ((OUTLINED_FUNCTION_27_0() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
    }

    OUTLINED_FUNCTION_7_27();
    if (v4)
    {
      OUTLINED_FUNCTION_3_2();
    }

    OUTLINED_FUNCTION_5_3();
  }

  if (*(v0 + 64))
  {

    v6 = sub_1DD4C4A34();
    MEMORY[0x1E12B2260](v6);

    if ((OUTLINED_FUNCTION_27_0() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
    }

    OUTLINED_FUNCTION_7_27();
    if (v4)
    {
      OUTLINED_FUNCTION_3_2();
    }

    OUTLINED_FUNCTION_5_3();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
  sub_1DD4477A4();
  v7 = sub_1DD63FD58();
  v9 = v8;

  MEMORY[0x1E12B2260](v7, v9);

  MEMORY[0x1E12B2260](93, 0xE100000000000000);
  return 0x5B65746144;
}

void sub_1DD48236C()
{
  v1 = v0;
  if (qword_1ECCDB0C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1ECD0DDC0);
  OUTLINED_FUNCTION_15_2();

  oslog = sub_1DD63F9D8();
  v3 = sub_1DD640368();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67240704;
    *(v4 + 4) = (v1[24] & 1) == 0;
    *(v4 + 8) = 1026;
    *(v4 + 10) = (v1[40] & 1) == 0;
    *(v4 + 14) = 1026;
    *(v4 + 16) = (v1[56] & 1) == 0;

    _os_log_impl(&dword_1DD38D000, oslog, v3, "day present: %{BOOL,public}d, month present: %{BOOL,public}d, year present: %{BOOL,public}d", v4, 0x14u);
    MEMORY[0x1E12B3DA0](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1DD4824D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7954788 && a2 == 0xE300000000000000;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x68746E6F6DLL && a2 == 0xE500000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1918985593 && a2 == 0xE400000000000000;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x5664656E69666564 && a2 == 0xEC00000065756C61;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x796164696C6F68 && a2 == 0xE700000000000000;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x59664F68746E6F6DLL && a2 == 0xEB00000000726165;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6559664F6B656577 && a2 == 0xEA00000000007261;
              if (v11 || (sub_1DD640CD8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x656557664F796164 && a2 == 0xE90000000000006BLL;
                if (v12 || (sub_1DD640CD8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000010 && 0x80000001DD66D320 == a2;
                  if (v13 || (sub_1DD640CD8() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x7261646E656C6163 && a2 == 0xEB00000000617245;
                    if (v14 || (sub_1DD640CD8() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x6E6972727563636FLL && a2 == 0xEB000000006E4967)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1DD640CD8();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

unint64_t sub_1DD48284C(char a1)
{
  result = 7954788;
  switch(a1)
  {
    case 1:
      result = 0x68746E6F6DLL;
      break;
    case 2:
      result = 1918985593;
      break;
    case 3:
      result = 0x5664656E69666564;
      break;
    case 4:
      result = 0x796164696C6F68;
      break;
    case 5:
      result = 0x59664F68746E6F6DLL;
      break;
    case 6:
      result = 0x6559664F6B656577;
      break;
    case 7:
      result = 0x656557664F796164;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x7261646E656C6163;
      break;
    case 10:
      result = 0x6E6972727563636FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD482998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4824D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4829C0(uint64_t a1)
{
  v2 = sub_1DD48335C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4829FC(uint64_t a1)
{
  v2 = sub_1DD48335C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DateTime.Date.deinit()
{

  return v0;
}

uint64_t DateTime.Date.__deallocating_deinit()
{
  DateTime.Date.deinit();
  OUTLINED_FUNCTION_2_36();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD482A8C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2C8, &qword_1DD64F450);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD48335C();
  sub_1DD640EF8();
  LOBYTE(v16) = 0;
  OUTLINED_FUNCTION_32();
  sub_1DD640BF8();
  if (!v2)
  {
    OUTLINED_FUNCTION_10_27(1);
    OUTLINED_FUNCTION_10_27(2);
    LOBYTE(v16) = *(v3 + 57);
    v17 = 3;
    sub_1DD4833B0();
    OUTLINED_FUNCTION_8_24();
    OUTLINED_FUNCTION_32();
    sub_1DD640C08();
    v16 = *(v3 + 64);
    v17 = 4;
    type metadata accessor for DateTime.Date.Holiday();
    OUTLINED_FUNCTION_13_21();
    sub_1DD483650(v11, 255, v12, &protocol conformance descriptor for DateTime.Date.Holiday);
    OUTLINED_FUNCTION_8_24();
    OUTLINED_FUNCTION_32();
    sub_1DD640C08();
    LOBYTE(v16) = *(v3 + 72);
    v17 = 5;
    sub_1DD483404();
    OUTLINED_FUNCTION_8_24();
    OUTLINED_FUNCTION_32();
    sub_1DD640C08();
    OUTLINED_FUNCTION_10_27(6);
    LOBYTE(v16) = *(v3 + 89);
    v17 = 7;
    sub_1DD483458();
    OUTLINED_FUNCTION_8_24();
    OUTLINED_FUNCTION_32();
    sub_1DD640C08();
    OUTLINED_FUNCTION_10_27(8);
    LOBYTE(v16) = *(v3 + 105);
    v17 = 9;
    sub_1DD4834AC();
    OUTLINED_FUNCTION_8_24();
    OUTLINED_FUNCTION_32();
    sub_1DD640C08();
    v16 = *(v3 + 112);
    v17 = 10;
    type metadata accessor for DateTime.DateTimeRange();
    OUTLINED_FUNCTION_14_22();
    sub_1DD483650(v13, 255, v14, &protocol conformance descriptor for DateTime.DateTimeRange);
    OUTLINED_FUNCTION_8_24();
    OUTLINED_FUNCTION_32();
    sub_1DD640C08();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1DD482DA8()
{
  sub_1DD640E28();
  sub_1DD481A74(v1);
  return sub_1DD640E78();
}

uint64_t DateTime.Date.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_2_36();
  v2 = swift_allocObject();
  DateTime.Date.init(from:)(a1);
  return v2;
}

uint64_t DateTime.Date.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD308, &qword_1DD64F458);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD48335C();
  sub_1DD640ED8();
  if (v2)
  {
    type metadata accessor for DateTime.Date();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v17) = 0;
    *(v1 + 16) = sub_1DD640B08();
    *(v1 + 24) = v5 & 1;
    *(v1 + 32) = OUTLINED_FUNCTION_9_21(1);
    *(v1 + 40) = v6 & 1;
    *(v1 + 48) = OUTLINED_FUNCTION_9_21(2);
    *(v1 + 56) = v7 & 1;
    sub_1DD483500();
    OUTLINED_FUNCTION_6_29(&type metadata for DateTime.Date.DefinedDate);
    *(v1 + 57) = 0;
    type metadata accessor for DateTime.Date.Holiday();
    OUTLINED_FUNCTION_13_21();
    sub_1DD483650(v8, 255, v9, &protocol conformance descriptor for DateTime.Date.Holiday);
    OUTLINED_FUNCTION_17_19();
    *(v1 + 64) = v17;
    sub_1DD483554();
    OUTLINED_FUNCTION_6_29(&type metadata for DateTime.Date.MonthOfYear);
    *(v1 + 72) = 0;
    *(v1 + 80) = OUTLINED_FUNCTION_9_21(6);
    *(v1 + 88) = v11 & 1;
    sub_1DD4835A8();
    OUTLINED_FUNCTION_6_29(&type metadata for DateTime.Date.DayOfWeek);
    *(v1 + 89) = 0;
    *(v1 + 96) = OUTLINED_FUNCTION_9_21(8);
    *(v1 + 104) = v12 & 1;
    sub_1DD4835FC();
    OUTLINED_FUNCTION_6_29(&type metadata for DateTime.Date.CalendarEra);
    *(v1 + 105) = 0;
    type metadata accessor for DateTime.DateTimeRange();
    OUTLINED_FUNCTION_14_22();
    sub_1DD483650(v13, 255, v14, &protocol conformance descriptor for DateTime.DateTimeRange);
    OUTLINED_FUNCTION_17_19();
    v15 = OUTLINED_FUNCTION_41();
    v16(v15);
    *(v1 + 112) = v17;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_1DD4831D0(uint64_t a1)
{
  sub_1DD640E28();
  sub_1DD481A74(v2);
  return sub_1DD640E78();
}

uint64_t sub_1DD4832C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = DateTime.Date.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1DD48335C()
{
  result = qword_1ECCDD2D0;
  if (!qword_1ECCDD2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD2D0);
  }

  return result;
}

unint64_t sub_1DD4833B0()
{
  result = qword_1ECCDD2D8;
  if (!qword_1ECCDD2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD2D8);
  }

  return result;
}

unint64_t sub_1DD483404()
{
  result = qword_1ECCDD2E8;
  if (!qword_1ECCDD2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD2E8);
  }

  return result;
}

unint64_t sub_1DD483458()
{
  result = qword_1ECCDD2F0;
  if (!qword_1ECCDD2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD2F0);
  }

  return result;
}

unint64_t sub_1DD4834AC()
{
  result = qword_1ECCDD2F8;
  if (!qword_1ECCDD2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD2F8);
  }

  return result;
}

unint64_t sub_1DD483500()
{
  result = qword_1ECCDD310;
  if (!qword_1ECCDD310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD310);
  }

  return result;
}

unint64_t sub_1DD483554()
{
  result = qword_1ECCDD320;
  if (!qword_1ECCDD320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD320);
  }

  return result;
}

unint64_t sub_1DD4835A8()
{
  result = qword_1ECCDD328;
  if (!qword_1ECCDD328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD328);
  }

  return result;
}

unint64_t sub_1DD4835FC()
{
  result = qword_1ECCDD330;
  if (!qword_1ECCDD330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD330);
  }

  return result;
}

uint64_t sub_1DD483650(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

_BYTE *_s4DateC10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD483A40()
{
  result = qword_1ECCDD348;
  if (!qword_1ECCDD348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD348);
  }

  return result;
}

unint64_t sub_1DD483A98()
{
  result = qword_1ECCDD350;
  if (!qword_1ECCDD350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD350);
  }

  return result;
}

unint64_t sub_1DD483AF0()
{
  result = qword_1ECCDD358;
  if (!qword_1ECCDD358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD358);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_27@<X0>(char a3@<W8>)
{
  *(v3 - 80) = a3;

  return sub_1DD640BF8();
}

uint64_t OUTLINED_FUNCTION_29_10(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{
  *(result + 88) = a11 & 1;
  *(result + 89) = v11;
  return result;
}

uint64_t sub_1DD483BE4(uint64_t a1)
{
  v2 = sub_1DD63D2B8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v43 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v32 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCDC3D0, &unk_1DD6461A0);
  sub_1DD3D8B30();
  v7 = sub_1DD63FC88();
  v8 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;
  v39 = v3 + 16;
  v36 = v3;
  v42 = v3 + 8;
  v37 = a1;

  v13 = 0;
  v33 = v12;
  v34 = a1 + 56;
  if (v11)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = *(v37 + 48);
      v17 = v35;
      v16 = v36;
      v38 = *(v36 + 72);
      v18 = *(v36 + 16);
      v18(v35, v15 + v38 * (__clz(__rbit64(v11)) | (v14 << 6)), v2);
      v18(v43, v17, v2);
      v40 = sub_1DD63CAD8();
      v41 = v19;
      v20 = *(v16 + 8);
      v20(v17, v2);
      swift_isUniquelyReferenced_nonNull_native();
      v44 = v7;
      sub_1DD3FE7FC();
      if (__OFADD__(*(v7 + 16), (v22 & 1) == 0))
      {
        break;
      }

      v23 = v21;
      v24 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD360, &qword_1DD64F778);
      if (sub_1DD640A08())
      {
        sub_1DD3FE7FC();
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_22;
        }

        v23 = v25;
      }

      v11 &= v11 - 1;
      v7 = v44;
      if (v24)
      {
        OUTLINED_FUNCTION_1_44();
        v20(v43, v2);
      }

      else
      {
        *(v44 + 8 * (v23 >> 6) + 64) |= 1 << v23;
        v27 = v43;
        v18((*(v7 + 48) + v23 * v38), v43, v2);
        OUTLINED_FUNCTION_1_44();
        v20(v27, v2);
        v28 = *(v7 + 16);
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_21;
        }

        *(v7 + 16) = v30;
      }

      v13 = v14;
      v12 = v33;
      v8 = v34;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v12)
      {

        return v7;
      }

      v11 = *(v8 + 8 * v14);
      ++v13;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1DD640D58();
  __break(1u);
  return result;
}

void sub_1DD483F74(uint64_t a1)
{
  sub_1DD63CA28();
  if ((v1 & 1) == 0)
  {
    sub_1DD63CA28();
    if ((v2 & 1) == 0)
    {
      sub_1DD63CA28();
      sub_1DD63CA28();
    }
  }

  sub_1DD63CAB8();
  if ((v3 & 1) == 0)
  {
    sub_1DD63CAB8();
    if ((v4 & 1) == 0)
    {
      sub_1DD63CAB8();
      sub_1DD63CAB8();
    }
  }

  sub_1DD63CA98();
  if ((v5 & 1) == 0)
  {
    sub_1DD63CA98();
    if ((v6 & 1) == 0)
    {
      sub_1DD63CA98();
      sub_1DD63CA98();
    }
  }

  sub_1DD63CB48();
  if ((v7 & 1) == 0)
  {
    sub_1DD63CB48();
    if ((v8 & 1) == 0)
    {
      sub_1DD63CB48();
      sub_1DD63CB48();
    }
  }

  sub_1DD63CA78();
  if ((v9 & 1) == 0)
  {
    sub_1DD63CA78();
    if ((v10 & 1) == 0)
    {
      sub_1DD63CA78();
      sub_1DD63CA78();
    }
  }

  sub_1DD63CAE8();
  if ((v11 & 1) == 0)
  {
    sub_1DD63CAE8();
    if ((v12 & 1) == 0)
    {
      sub_1DD63CAE8();
      sub_1DD63CAE8();
    }
  }

  sub_1DD63CB08();
  if ((v13 & 1) == 0)
  {
    sub_1DD63CB08();
    if ((v14 & 1) == 0)
    {
      sub_1DD63CB08();
      sub_1DD63CB08();
    }
  }

  OUTLINED_FUNCTION_0_57();
}

void sub_1DD4841F0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, unsigned __int8 *a5)
{
  v6 = a4;
  v9 = sub_1DD63D2D8();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v158 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a2;
  LODWORD(v164) = a2[1];
  HIDWORD(v164) = v15;
  v163 = *(a2 + 1);
  v16 = a2[16];
  LODWORD(v162) = a2[17];
  HIDWORD(v162) = v16;
  LODWORD(a2) = a2[18];
  v18 = *a5;
  if (sub_1DD3CC020())
  {
    sub_1DD56C450(MEMORY[0x1E69E7CC0], v19, v20, v21, v22, v23, v24, v25, v158, v159, v160, v161, v162, v163, v164, *v165, *&v165[8], *&v165[16], *&v165[24], *&v165[32], v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177);
  }

  else
  {
    v26 = MEMORY[0x1E69E7CD0];
  }

  v174 = v26;
  v27 = *(a1 + 57);
  if (v27 != 7)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DD643B80;
    v33 = qword_1DD64F7D0[v27];
    v171 = 0;
    v172 = 0;
    v170 = v33;
    LOBYTE(v173) = 0;
    LOBYTE(v166) = 40;
    v34 = type metadata accessor for DateTimeConstraint();
    OUTLINED_FUNCTION_6(v34);
    OUTLINED_FUNCTION_7_28();
    *(inited + 32) = sub_1DD48DFB4(v35, v36, v37, v38, v39, v40, 1, v41);
    sub_1DD418B8C(inited);
    return;
  }

  v161 = *(a1 + 64);
  if (v161)
  {
    HIDWORD(v158) = a2;
    LODWORD(v159) = v6;
    HIDWORD(v160) = v18;
    v29 = v161[2];
    v28 = v161[3];
    v30 = *(v161 + 48);
    if (v30 == 12)
    {
      v31 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_calendar;
      swift_beginAccess();
      (*(v11 + 16))(v14, &a3[v31], v9);

      sub_1DD3DE430(v14, &v170);
      if (v170 == 12)
      {
        v30 = 2;
      }

      else
      {
        v30 = v170;
      }
    }

    else
    {
    }

    v42 = *(a1 + 112);
    if (v42)
    {
      v43 = *(v42 + 57) << 8;
    }

    else
    {
      v43 = 5120;
    }

    v170 = v29;
    v171 = v28;
    v172 = v43 | v30;
    v44 = OUTLINED_FUNCTION_9_22(3);
    OUTLINED_FUNCTION_6(v44);
    OUTLINED_FUNCTION_0_58();
    v6 = v159;
    v49 = OUTLINED_FUNCTION_1_45(10, v45, v46, v47, v48);
    OUTLINED_FUNCTION_4_30(v49, v50, v51, v52, v53, v54, v55, v56, v158, v159, v160, v161, v162, v163, v164, *v165, *&v165[8], *&v165[16], *&v165[24], *&v165[32], v166, v167, v168, v169, v170, v171, v172, v173, v174, v175);

    v18 = HIDWORD(v160);
    LOBYTE(a2) = BYTE4(v158);
  }

  v57 = *(a1 + 89);
  if (v57 != 7)
  {
    v58 = *(a1 + 96);
    v59 = *(a1 + 104);
    v170 = qword_1DD64F808[v57];
    v171 = v58;
    v172 = v59;
    LOBYTE(v173) = 2;
    HIBYTE(v169) = v18;
    v60 = type metadata accessor for DateTimeConstraint();
    OUTLINED_FUNCTION_6(v60);
    OUTLINED_FUNCTION_0_58();
    v65 = OUTLINED_FUNCTION_1_45(6, v61, v62, v63, v64);
    OUTLINED_FUNCTION_4_30(v65, v66, v67, v68, v69, v70, v71, v72, v158, v159, v160, v161, v162, v163, v164, *v165, *&v165[8], *&v165[16], *&v165[24], *&v165[32], v166, v167, v168, v169, v170, v171, v172, v173, v174, v175);
  }

  v73 = *(a1 + 72);
  if (v73 != 12)
  {
    v74 = OUTLINED_FUNCTION_2_37((v73 + 1));
    OUTLINED_FUNCTION_6(v74);
    OUTLINED_FUNCTION_0_58();
    v79 = OUTLINED_FUNCTION_1_45(9, v75, v76, v77, v78);
    OUTLINED_FUNCTION_4_30(v79, v80, v81, v82, v83, v84, v85, v86, v158, v159, v160, v161, v162, v163, v164, *v165, *&v165[8], *&v165[16], *&v165[24], *&v165[32], v166, v167, v168, v169, v170, v171, v172, v173, v174, v175);
  }

  v87 = *(a1 + 40);
  if ((v87 & 1) == 0)
  {
    v88 = OUTLINED_FUNCTION_2_37(*(a1 + 32));
    OUTLINED_FUNCTION_6(v88);
    OUTLINED_FUNCTION_0_58();
    v93 = OUTLINED_FUNCTION_1_45(9, v89, v90, v91, v92);
    OUTLINED_FUNCTION_4_30(v93, v94, v95, v96, v97, v98, v99, v100, v158, v159, v160, v161, v162, v163, v164, *v165, *&v165[8], *&v165[16], *&v165[24], *&v165[32], v166, v167, v168, v169, v170, v171, v172, v173, v174, v175);
  }

  v101 = *(a1 + 24);
  if ((v101 & 1) == 0)
  {
    v102 = OUTLINED_FUNCTION_2_37(*(a1 + 16));
    OUTLINED_FUNCTION_6(v102);
    OUTLINED_FUNCTION_0_58();
    v107 = OUTLINED_FUNCTION_1_45(5, v103, v104, v105, v106);
    OUTLINED_FUNCTION_4_30(v107, v108, v109, v110, v111, v112, v113, v114, v158, v159, v160, v161, v162, v163, v164, *v165, *&v165[8], *&v165[16], *&v165[24], *&v165[32], v166, v167, v168, v169, v170, v171, v172, v173, v174, v175);
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    v115 = OUTLINED_FUNCTION_2_37(*(a1 + 48));
    OUTLINED_FUNCTION_6(v115);
    OUTLINED_FUNCTION_0_58();
    v120 = OUTLINED_FUNCTION_1_45(11, v116, v117, v118, v119);
    OUTLINED_FUNCTION_4_30(v120, v121, v122, v123, v124, v125, v126, v127, v158, v159, v160, v161, v162, v163, v164, *v165, *&v165[8], *&v165[16], *&v165[24], *&v165[32], v166, v167, v168, v169, v170, v171, v172, v173, v174, v175);
  }

  v128 = *(a1 + 112);
  if (v128)
  {
    v129 = *(v128 + 56);
    if (v129 == 38)
    {
      v130 = *(v128 + 57);
      if (v130 == 17)
      {
        if (v161 || !v87 || *(a1 + 72) != 12 || (v101 & 1) == 0 || *(a1 + 89) != 7)
        {
          v149 = OUTLINED_FUNCTION_3_33();
          OUTLINED_FUNCTION_6(v149);
          OUTLINED_FUNCTION_0_58();
          OUTLINED_FUNCTION_7_28();
          goto LABEL_44;
        }

        v171 = 0;
        v172 = 0;
        v170 = 2;
      }

      else
      {
        if (v130 != 19)
        {
          return;
        }

        v170 = 0;
        v171 = 0;
        v172 = 0;
      }

      v131 = OUTLINED_FUNCTION_9_22(4);
      OUTLINED_FUNCTION_6(v131);
      OUTLINED_FUNCTION_0_58();
      v134 = 13;
      v135 = 2;
      v136 = 4;
      v137 = 1;
      v138 = 0;
LABEL_44:
      v150 = sub_1DD48DFB4(v134, v132, v135, v136, v133, v137, 1, v138);
      OUTLINED_FUNCTION_4_30(v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, *v165, *&v165[8], *&v165[16], *&v165[24], *&v165[32], v166, v167, v168, v169, v170, v171, v172, v173, v174, v175);

      return;
    }

    if (qword_1ECCDB0C0 != -1)
    {
      OUTLINED_FUNCTION_5_0(&qword_1ECCDB0C0);
    }

    v139 = sub_1DD63F9F8();
    __swift_project_value_buffer(v139, qword_1ECD0DDC0);
    v140 = sub_1DD63F9D8();
    v141 = sub_1DD640368();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      v159 = v142;
      v161 = swift_slowAlloc();
      v170 = v161;
      *v142 = 136315138;
      HIBYTE(v169) = v129;
      v143 = sub_1DD63FE38();
      HIDWORD(v160) = v18;
      LOBYTE(v142) = a2;
      a2 = a3;
      v145 = v6;
      v146 = sub_1DD39565C(v143, v144, &v170);
      LOBYTE(v18) = BYTE4(v160);

      v147 = v159;
      *(v159 + 1) = v146;
      v6 = v145;
      a3 = a2;
      LOBYTE(a2) = v142;
      _os_log_impl(&dword_1DD38D000, v140, v141, "generating constraints for %s", v147, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v161);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    HIBYTE(v169) = v129;
    LOBYTE(v170) = BYTE4(v164);
    BYTE1(v170) = v164;
    v171 = v163;
    LOBYTE(v172) = BYTE4(v162);
    BYTE1(v172) = v162;
    BYTE2(v172) = a2;
    BYTE6(v169) = v18;
    v148 = sub_1DD484820(&v169 + 7, a1, &v170, a3, v6, &v169 + 6);
    sub_1DD608750(v148);
  }
}

uint64_t sub_1DD484BF4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1DD484C34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_33()
{
  *(v1 - 120) = 0;
  *(v1 - 112) = 0;
  *(v1 - 128) = 0x3FF0000000000000;
  *(v1 - 104) = 0;
  *(v1 - 129) = v0;

  return type metadata accessor for DateTimeConstraint();
}

uint64_t sub_1DD484CB8(uint64_t a1, uint64_t a2)
{
  v76 = a2;
  v3 = sub_1DD63D2B8();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v74 = v11;
  v75 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_4();
  v71 = (v12 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v62 - v15;
  sub_1DD63C848();
  sub_1DD63C828();
  LODWORD(v70) = *MEMORY[0x1E6969A48];
  v17 = *(v5 + 104);
  v18 = OUTLINED_FUNCTION_17_20();
  v17(v18);
  OUTLINED_FUNCTION_15_1();
  v19 = a1;
  v72 = sub_1DD63D2C8();
  v20 = *(v5 + 8);
  v21 = OUTLINED_FUNCTION_7_29();
  v20(v21);
  LODWORD(v69) = *MEMORY[0x1E6969A78];
  v22 = OUTLINED_FUNCTION_17_20();
  v17(v22);
  OUTLINED_FUNCTION_15_1();
  v23 = v19;
  v24 = sub_1DD63D2C8();
  v25 = OUTLINED_FUNCTION_7_29();
  v20(v25);
  LODWORD(v68) = *MEMORY[0x1E6969A68];
  v26 = OUTLINED_FUNCTION_17_20();
  v17(v26);
  OUTLINED_FUNCTION_15_1();
  v27 = sub_1DD63D2C8();
  v28 = OUTLINED_FUNCTION_7_29();
  v20(v28);
  v66 = type metadata accessor for DateTime.Date();
  swift_allocObject();
  v72 = DateTime.Date.init(withDay:month:year:)(v72, v24, v27);
  v65 = *MEMORY[0x1E6969A58];
  v29 = OUTLINED_FUNCTION_17_20();
  v17(v29);
  OUTLINED_FUNCTION_15_1();
  v30 = sub_1DD63D2C8();
  v31 = OUTLINED_FUNCTION_7_29();
  v20(v31);
  v32 = v30 - 12;
  if (v30 <= 12)
  {
    v32 = v30;
  }

  v67 = v32;
  v64 = *MEMORY[0x1E6969A88];
  v33 = OUTLINED_FUNCTION_17_20();
  v17(v33);
  OUTLINED_FUNCTION_15_1();
  v73 = v16;
  v62[0] = sub_1DD63D2C8();
  v34 = OUTLINED_FUNCTION_7_29();
  v20(v34);
  v63 = *MEMORY[0x1E6969A98];
  v35 = OUTLINED_FUNCTION_17_20();
  v17(v35);
  OUTLINED_FUNCTION_15_1();
  v36 = sub_1DD63D2C8();
  v37 = OUTLINED_FUNCTION_7_29();
  v20(v37);
  v80 = v30 > 11;
  v62[1] = type metadata accessor for DateTime.Time();
  swift_allocObject();
  v67 = DateTime.Time.init(withHour:minute:second:meridiem:)(v67, v62[0], v36, &v80);
  (v17)(v9, v70, v3);
  v38 = v71;
  v39 = v23;
  v70 = sub_1DD63D2C8();
  v40 = OUTLINED_FUNCTION_7_29();
  v20(v40);
  (v17)(v9, v69, v3);
  v41 = sub_1DD63D2C8();
  v42 = OUTLINED_FUNCTION_7_29();
  v20(v42);
  (v17)(v9, v68, v3);
  v43 = v38;
  v44 = v39;
  v45 = sub_1DD63D2C8();
  v46 = OUTLINED_FUNCTION_7_29();
  v20(v46);
  swift_allocObject();
  v70 = DateTime.Date.init(withDay:month:year:)(v70, v41, v45);
  (v17)(v9, v65, v3);
  v47 = v43;
  v48 = sub_1DD63D2C8();
  v49 = OUTLINED_FUNCTION_7_29();
  v20(v49);
  v50 = v48 - 12;
  if (v48 <= 12)
  {
    v50 = v48;
  }

  v69 = v50;
  (v17)(v9, v64, v3);
  OUTLINED_FUNCTION_15_1();
  v68 = sub_1DD63D2C8();
  v51 = OUTLINED_FUNCTION_7_29();
  v20(v51);
  (v17)(v9, v63, v3);
  OUTLINED_FUNCTION_15_1();
  v52 = sub_1DD63D2C8();
  v53 = OUTLINED_FUNCTION_7_29();
  v20(v53);
  v79 = v48 > 11;
  swift_allocObject();
  DateTime.Time.init(withHour:minute:second:meridiem:)(v69, v68, v52, &v79);
  OUTLINED_FUNCTION_43();
  type metadata accessor for DateTime();
  swift_allocObject();
  v54 = v72;
  v55 = v67;
  v56 = DateTime.init(withDate:time:)(v72, v67);
  swift_allocObject();
  DateTime.init(withDate:time:)(v70, v44);
  OUTLINED_FUNCTION_43();
  type metadata accessor for DateTime.DateTimeRange();
  swift_allocObject();
  v57 = DateTime.DateTimeRange.init(withStartDateTime:endDateTime:)(v56, v44);
  v78 = 1;
  v77 = 4;
  swift_allocObject();
  v58 = DateTime.init(withDate:time:definedValue:recurrencePattern:temporalIntent:occurringIn:)(v54, v55, &v78, v76, &v77, v57);
  v59 = *(v74 + 8);

  v60 = v75;
  v59(v47, v75);
  v59(v73, v60);
  return v58;
}

void sub_1DD4852E4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v209 = a4;
  v206 = a2;
  v213 = a1;
  v214 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC130, &unk_1DD645260);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_1_4();
  v205 = v7 - v8;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_14_2(v10);
  v200 = sub_1DD63D2B8();
  OUTLINED_FUNCTION_0();
  v199 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_4();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_14_2(v17);
  v217 = sub_1DD63D078();
  v18 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217 - 8);
  OUTLINED_FUNCTION_1_4();
  v21 = (v19 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v188 - v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_18_0();
  v215 = v31;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v188 - v35;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  MEMORY[0x1EEE9AC00](v203);
  OUTLINED_FUNCTION_1_4();
  v204 = v37 - v38;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_18_0();
  v211 = v40;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_18_0();
  v210 = v42;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_18_0();
  v208 = v44;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v188 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v188 - v49;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_18_0();
  v212 = v53;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v188 - v55;
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_18_0();
  v218 = v58;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_16_3();
  v219 = v60;
  v61 = a3;
  LODWORD(v60) = *(a3 + 49);
  v62 = MEMORY[0x1E6969A98];
  v216 = v18;
  v201 = v21;
  v195 = v24;
  if (v60)
  {
    OUTLINED_FUNCTION_12_0();
    v63 = sub_1DD640CD8();

    if ((v63 & 1) == 0)
    {
      if (v209)
      {
        v65 = v199;
        v66 = v200;
        (*(v199 + 104))(v15, *v62, v200);
        v67 = v212;
        v68 = v213;
        sub_1DD63D268();
        (*(v65 + 8))(v15, v66);
        v69 = v205;
        sub_1DD48FBC0(v205);
        sub_1DD3D5CFC();
        sub_1DD3ADFD0(v69, &qword_1ECCDC130, &unk_1DD645260);
        sub_1DD3ADFD0(v67, &qword_1ECCDEBC0, &qword_1DD6445A0);
        v70 = v217;
        v71 = v219;
        v72 = v208;
      }

      else
      {
        sub_1DD63C848();
        OUTLINED_FUNCTION_10_15();
        v70 = v217;
        __swift_storeEnumTagSinglePayload(v80, v81, v82, v217);
        v71 = v219;
        v72 = v208;
        v68 = v213;
      }

      sub_1DD3D7DA0(v47, v71);
      v77 = v218;
      v207 = *(v18 + 16);
      (v207)(v218, v68, v70);
      OUTLINED_FUNCTION_10_15();
      __swift_storeEnumTagSinglePayload(v83, v84, v85, v70);
      v86 = v210;
      goto LABEL_30;
    }
  }

  else
  {
  }

  v73 = v213;
  sub_1DD480258(v64);
  sub_1DD63CF38();
  OUTLINED_FUNCTION_10_15();
  v70 = v217;
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v217);
  v207 = *(v18 + 16);
  (v207)(v36, v73, v70);
  v77 = v218;
  if (*(v61 + 52) != 1 || *(v61 + 51) != 38 || *(v61 + 48) || (v78 = *(v61 + 24), v78 >= -1.0))
  {
LABEL_26:
    if (v209)
    {
      v103 = v212;
      (v207)(v212, v36, v70);
      OUTLINED_FUNCTION_10_15();
      __swift_storeEnumTagSinglePayload(v104, v105, v106, v70);
      v107 = v205;
      sub_1DD48FBC0(v205);
      sub_1DD3D710C();
      sub_1DD3ADFD0(v107, &qword_1ECCDC130, &unk_1DD645260);
      sub_1DD3ADFD0(v103, &qword_1ECCDEBC0, &qword_1DD6445A0);
      v108 = OUTLINED_FUNCTION_29_11();
      v109(v108);
    }

    else
    {
      sub_1DD63C828();
      v110 = OUTLINED_FUNCTION_29_11();
      v111(v110);
      OUTLINED_FUNCTION_10_15();
      __swift_storeEnumTagSinglePayload(v112, v113, v114, v70);
    }

    v71 = v219;
    v86 = v210;
    sub_1DD3D7DA0(v50, v77);
    v72 = v208;
LABEL_30:
    if (qword_1ECCDB0C0 != -1)
    {
      swift_once();
    }

    v115 = sub_1DD63F9F8();
    v116 = __swift_project_value_buffer(v115, qword_1ECD0DDC0);
    sub_1DD3B7EA0(v71, v72);
    sub_1DD3B7EA0(v77, v86);
    v213 = v116;
    v117 = sub_1DD63F9D8();
    v118 = sub_1DD640368();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v220 = swift_slowAlloc();
      *v119 = 136315394;
      v120 = v212;
      sub_1DD3B7EA0(v72, v212);
      v121 = sub_1DD63FE38();
      v123 = v122;
      sub_1DD3ADFD0(v72, &qword_1ECCDEBC0, &qword_1DD6445A0);
      v124 = sub_1DD39565C(v121, v123, &v220);
      v77 = v218;

      *(v119 + 4) = v124;
      *(v119 + 12) = 2080;
      sub_1DD3B7EA0(v86, v120);
      v125 = sub_1DD63FE38();
      v127 = v126;
      sub_1DD3ADFD0(v86, &qword_1ECCDEBC0, &qword_1DD6445A0);
      v128 = sub_1DD39565C(v125, v127, &v220);
      v70 = v217;

      *(v119 + 14) = v128;
      _os_log_impl(&dword_1DD38D000, v117, v118, "finished converging dateInterval, dateIntervalStart: %s, dateIntervalEnd: %s", v119, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_0_1();
      v71 = v219;
      OUTLINED_FUNCTION_0_1();
    }

    else
    {

      sub_1DD3ADFD0(v86, &qword_1ECCDEBC0, &qword_1DD6445A0);
      v129 = OUTLINED_FUNCTION_15_0();
      sub_1DD3ADFD0(v129, v130, &qword_1DD6445A0);
    }

    v131 = v214;
    v132 = v215;
    v133 = v211;
    sub_1DD3B7EA0(v71, v211);
    OUTLINED_FUNCTION_9_23(v133);
    if (v138)
    {
      v134 = v133;
    }

    else
    {
      v135 = v131;
      v136 = *(v216 + 32);
      v136(v132, v133, v70);
      v137 = v204;
      sub_1DD3B7EA0(v77, v204);
      OUTLINED_FUNCTION_9_23(v137);
      if (!v138)
      {
        v146 = v202;
        v136(v202, v137, v70);
        v147 = v146;
        OUTLINED_FUNCTION_8_25();
        sub_1DD487AF0(v148, v149, MEMORY[0x1E6969548]);
        v150 = sub_1DD63FD68();
        if ((v150 & 1) == 0)
        {
          v164 = v196;
          v165 = v207;
          (v207)(v196, v132, v70);
          v166 = v197;
          OUTLINED_FUNCTION_27_13();
          v165();
          v167 = sub_1DD63F9D8();
          v168 = sub_1DD640368();
          if (os_log_type_enabled(v167, v168))
          {
            v169 = swift_slowAlloc();
            v213 = swift_slowAlloc();
            v220 = v213;
            *v169 = 136315394;
            OUTLINED_FUNCTION_8_25();
            sub_1DD487AF0(v170, v171, MEMORY[0x1E6969570]);
            v212 = v167;
            v172 = sub_1DD640CB8();
            v173 = v166;
            v175 = v174;
            v176 = *(v216 + 8);
            LODWORD(v216) = v168;
            v176(v164, v70);
            v177 = sub_1DD39565C(v172, v175, &v220);

            *(v169 + 4) = v177;
            *(v169 + 12) = 2080;
            v178 = sub_1DD640CB8();
            v180 = v179;
            v176(v173, v70);
            v181 = sub_1DD39565C(v178, v180, &v220);
            v147 = v202;

            *(v169 + 14) = v181;
            v182 = v212;
            _os_log_impl(&dword_1DD38D000, v212, v216, "returning, dateIntervalStart: %s, dateIntervalEnd: %s", v169, 0x16u);
            swift_arrayDestroy();
            v131 = v214;
            OUTLINED_FUNCTION_0_1();
            OUTLINED_FUNCTION_0_1();
          }

          else
          {
            v131 = v135;

            v176 = *(v216 + 8);
            v185 = OUTLINED_FUNCTION_31_12();
            (v176)(v185);
            v176(v164, v70);
          }

          v186 = v207;
          (v207)(v198, v215, v70);
          OUTLINED_FUNCTION_27_13();
          v186();
          sub_1DD63C838();
          v176(v147, v70);
          v187 = OUTLINED_FUNCTION_29_11();
          (v176)(v187);
          v144 = 0;
          v77 = v218;
          v71 = v219;
          goto LABEL_45;
        }

        v151 = v195;
        v152 = v207;
        (v207)(v195, v132, v70);
        OUTLINED_FUNCTION_27_13();
        v152();
        v153 = sub_1DD63F9D8();
        v154 = sub_1DD640378();
        v131 = v135;
        if (os_log_type_enabled(v153, v154))
        {
          v155 = swift_slowAlloc();
          *v155 = 134218240;
          v156 = v153;
          sub_1DD63CF48();
          v158 = v157;
          LODWORD(v218) = v154;
          v159 = *(v216 + 8);
          v159(v151, v70);
          *(v155 + 4) = v158;
          *(v155 + 12) = 2048;
          v160 = v201;
          sub_1DD63CF48();
          v162 = v161;
          v159(v160, v70);
          *(v155 + 14) = v162;
          _os_log_impl(&dword_1DD38D000, v156, v218, "It seems that start > end: [%f, %f]", v155, 0x16u);
          OUTLINED_FUNCTION_0_1();

          v159(v202, v70);
          v163 = OUTLINED_FUNCTION_31_12();
          (v159)(v163);
          v71 = v219;
        }

        else
        {

          v183 = *(v216 + 8);
          v183(v201, v70);
          v183(v151, v70);
          v183(v147, v70);
          v184 = OUTLINED_FUNCTION_31_12();
          (v183)(v184);
        }

LABEL_44:
        v144 = 1;
LABEL_45:
        sub_1DD3ADFD0(v77, &qword_1ECCDEBC0, &qword_1DD6445A0);
        sub_1DD3ADFD0(v71, &qword_1ECCDEBC0, &qword_1DD6445A0);
        v145 = sub_1DD63C868();
        __swift_storeEnumTagSinglePayload(v131, v144, 1, v145);
        return;
      }

      v139 = OUTLINED_FUNCTION_31_12();
      v140(v139);
      v134 = v137;
      v131 = v135;
    }

    sub_1DD3ADFD0(v134, &qword_1ECCDEBC0, &qword_1DD6445A0);
    v141 = sub_1DD63F9D8();
    v142 = sub_1DD640378();
    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      *v143 = 0;
      _os_log_impl(&dword_1DD38D000, v141, v142, "Could not set dateIntervalStart and dateIntervalEnd", v143, 2u);
      OUTLINED_FUNCTION_0_1();
    }

    goto LABEL_44;
  }

  v189 = v61;
  sub_1DD48FBC0(v194);
  v79 = v194;
  if (__swift_getEnumTagSinglePayload(v194, 1, v200) == 1)
  {
    sub_1DD3ADFD0(v79, &qword_1ECCDC130, &unk_1DD645260);
    goto LABEL_26;
  }

  v87 = v199;
  v88 = v79;
  v89 = v200;
  (*(v199 + 32))(v193, v88, v200);
  (*(v87 + 104))(v15, *v62, v89);
  sub_1DD63D268();
  v90 = *(v87 + 8);
  v199 = v87 + 8;
  v194 = v90;
  v90(v15, v200);
  v91 = v205;
  sub_1DD48FBC0(v205);
  v92 = v212;
  sub_1DD3D5CFC();
  sub_1DD3ADFD0(v91, &qword_1ECCDC130, &unk_1DD645260);
  sub_1DD3ADFD0(v92, &qword_1ECCDEBC0, &qword_1DD6445A0);
  v93 = v216;
  v94 = OUTLINED_FUNCTION_29_11();
  v189 = v95;
  (v95)(v94);
  OUTLINED_FUNCTION_9_23(v56);
  if (v138)
  {
    v96 = v191;
    (v207)(v191, v213, v70);
    OUTLINED_FUNCTION_9_23(v56);
    if (!v138)
    {
      sub_1DD3ADFD0(v56, &qword_1ECCDEBC0, &qword_1DD6445A0);
    }
  }

  else
  {
    v96 = v191;
    (*(v93 + 32))(v191, v56, v70);
  }

  v97 = *(v216 + 32);
  (v97)(v36, v96, v70);
  if ((*&v78 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_19_2();
    v98 = v200;
    if (v99)
    {
      v100 = v193;
      sub_1DD63D268();
      v101 = v100;
      v102 = v192;
      v194(v101, v98);
      v70 = v217;
      v189(v36, v217);
      if (__swift_getEnumTagSinglePayload(v102, 1, v70) == 1)
      {
        (v207)(v190, v213, v70);
        OUTLINED_FUNCTION_9_23(v102);
        if (!v138)
        {
          sub_1DD3ADFD0(v102, &qword_1ECCDEBC0, &qword_1DD6445A0);
        }
      }

      else
      {
        (v97)(v190, v102, v70);
      }

      OUTLINED_FUNCTION_27_13();
      v97();
      v77 = v218;
      goto LABEL_26;
    }
  }

  __break(1u);
}

uint64_t sub_1DD4865EC(uint64_t a1, int a2, uint64_t a3)
{
  v171 = a3;
  v202 = *MEMORY[0x1E69E9840];
  v186 = sub_1DD63D2B8();
  OUTLINED_FUNCTION_0();
  v179 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_14_2(v10);
  v167 = sub_1DD63CBB8();
  OUTLINED_FUNCTION_0();
  v166 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_14_2(v14 - v13);
  v169 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v168 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2();
  v172 = v18 - v17;
  v187 = a2;
  v190[16] = a2;
  v170 = a1 & 0xC000000000000001;
  v176 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    v37 = *(a1 + 32);
    v38 = a1;
    v39 = v37 & 0x3F;
    v182 = ((1 << v37) + 63) >> 6;
    v40 = 8 * v182;

    if (v39 <= 0xD)
    {
      goto LABEL_32;
    }

    goto LABEL_191;
  }

  v19 = MEMORY[0x1E69E7CD0];
  v197 = MEMORY[0x1E69E7CD0];
  if (a1 < 0)
  {
    v20 = a1;
  }

  else
  {
    v20 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  sub_1DD640778();
  v3 = -1;
  while (1)
  {
    v21 = sub_1DD6407F8();
    if (!v21)
    {
      break;
    }

    v191[0] = v21;
    type metadata accessor for DateTimeConstraint();
    swift_dynamicCast();
    if (*(v192 + 49))
    {
      if (*(v192 + 49) == 1)
      {
        v20 = 0xE300000000000000;
      }

      else
      {
        OUTLINED_FUNCTION_32_11();
      }
    }

    else
    {
      OUTLINED_FUNCTION_33_8();
    }

    OUTLINED_FUNCTION_21_14();
    if (v26)
    {
      v25 = 0xE500000000000000;
      OUTLINED_FUNCTION_12_0();
    }

    else
    {
      if (v23 == 1)
      {
        v24 = 6581861;
      }

      else
      {
        v24 = 0x746573746F6ELL;
      }

      if (v23 == 1)
      {
        v25 = 0xE300000000000000;
      }

      else
      {
        v25 = 0xE600000000000000;
      }
    }

    v26 = v22 == v24 && v20 == v25;
    if (v26)
    {

LABEL_27:
      v20 = v192;
      v35 = v19[2];
      if (v19[3] <= v35)
      {
        sub_1DD57162C(v35 + 1, v28, v29, v30, v31, v32, v33, v34, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186);
      }

      v19 = v197;
      sub_1DD640E28();
      sub_1DD48E664(v191);
      sub_1DD640E78();
      v36 = sub_1DD640758();
      *(v19 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << v36;
      *(v19[6] + 8 * v36) = v20;
      ++v19[2];
    }

    else
    {
      v27 = sub_1DD640CD8();

      if (v27)
      {
        goto LABEL_27;
      }
    }
  }

LABEL_66:
  v163 = 0;
  while (2)
  {
    v64 = v183;
    v65 = sub_1DD487798(v19);

    v181 = v65;
    v67 = sub_1DD5940C4(v66);
    v68 = sub_1DD3CC020();
    v69 = 0;
    v70 = MEMORY[0x1E69E7CC0];
    while (v68 != v69)
    {
      if ((v67 & 0xC000000000000001) != 0)
      {
        v64 = MEMORY[0x1E12B2C10](v69, v67);
      }

      else
      {
        if (v69 >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_155;
        }

        v64 = *(v67 + 8 * v69 + 32);
      }

      if (__OFADD__(v69, 1))
      {
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
        goto LABEL_160;
      }

      v71 = sub_1DD48E73C();

      v64 = *(v71 + 16);
      v3 = *(v70 + 16);
      if (__OFADD__(v3, v64))
      {
        goto LABEL_156;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v3 + v64 > *(v70 + 24) >> 1)
      {
        sub_1DD3BFEEC();
        v70 = v72;
      }

      if (*(v71 + 16))
      {
        if ((*(v70 + 24) >> 1) - *(v70 + 16) < v64)
        {
          goto LABEL_159;
        }

        swift_arrayInitWithCopy();

        if (v64)
        {
          v73 = *(v70 + 16);
          v62 = __OFADD__(v73, v64);
          v74 = v73 + v64;
          if (v62)
          {
LABEL_183:
            __break(1u);
            goto LABEL_184;
          }

          *(v70 + 16) = v74;
        }
      }

      else
      {

        if (v64)
        {
          goto LABEL_157;
        }
      }

      ++v69;
    }

    v40 = sub_1DD418734();
    OUTLINED_FUNCTION_21_14();
    if (v26)
    {

      goto LABEL_89;
    }

    OUTLINED_FUNCTION_12_0();
    v75 = sub_1DD640CD8();

    if (v75)
    {
LABEL_89:
      sub_1DD63C848();
      goto LABEL_90;
    }

    sub_1DD63C828();
LABEL_90:
    sub_1DD63D1F8();

    if (v170)
    {
      OUTLINED_FUNCTION_13_22();
      sub_1DD640778();
      OUTLINED_FUNCTION_43();
      v64 = type metadata accessor for DateTimeConstraint();
      OUTLINED_FUNCTION_0_59();
      sub_1DD487AF0(v76, v77, &unk_1DD650364);
      OUTLINED_FUNCTION_15_0();
      sub_1DD6402A8();
      v3 = v192;
      v40 = v193;
      v78 = v194;
      v79 = v195;
      v80 = v196;
    }

    else
    {
      OUTLINED_FUNCTION_16_21();
      v64 = ~v81;
      OUTLINED_FUNCTION_10_5();
      v80 = v82 & v83;

      v78 = v64;
      v79 = 0;
    }

    v165 = v78;
    v84 = (v78 + 64) >> 6;
    v182 = v179 + 16;
    v183 = (v179 + 8);
    v187 = 1;
    v175 = v40;
    v174 = v3;
    v173 = v84;
    if (v3 < 0)
    {
      goto LABEL_100;
    }

    while (1)
    {
      v85 = v79;
      v86 = v79;
      if (!v80)
      {
        break;
      }

LABEL_98:
      OUTLINED_FUNCTION_14_3();
      v89 = v88 & v87;
      OUTLINED_FUNCTION_26_15();
      if (!v64)
      {
        goto LABEL_123;
      }

      while (1)
      {
        v91 = sub_1DD48E73C();
        v92 = *(v91 + 16);
        if (v92)
        {
          v180 = v64;
          v178 = v89;
          v93 = 0;
          v94 = (*(v179 + 80) + 32) & ~*(v179 + 80);
          v177 = v91;
          v95 = v91 + v94;
          v96 = *(v179 + 72);
          v97 = *(v179 + 16);
          do
          {
            v98 = v184;
            v99 = v186;
            v97(v184, v95 + v96 * v93, v186);
            v100 = sub_1DD63CAD8();
            v102 = v101;
            (*v183)(v98, v99);
            if ((v102 & 1) == 0)
            {
              v103 = v181;
              if (v181[2])
              {
                v104 = sub_1DD3FEB14();
                if (v105)
                {
                  v106 = *(*(v103 + 56) + 8 * v104);
                  v107 = *(v106 + 16);
                  if (!v107 || ((v187 ^ 1) & 1) != 0)
                  {
                    v187 = (v107 == 0) & v187;
                  }

                  else
                  {
                    v108 = (v106 + 32);
                    do
                    {
                      v109 = v107-- != 0;
                      v110 = v109;
                      v187 = v110;
                      if (!v109)
                      {
                        break;
                      }

                      v111 = *v108++;
                    }

                    while (v111 != v100);
                  }
                }
              }
            }

            ++v93;
          }

          while (v93 != v92);

          v40 = v175;
          v3 = v174;
          v84 = v173;
          v89 = v178;
          v64 = v180;
        }

        else
        {
        }

        v79 = v86;
        v80 = v89;
        if ((v3 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_100:
        v90 = sub_1DD6407F8();
        if (v90)
        {
          v197 = v90;
          type metadata accessor for DateTimeConstraint();
          swift_dynamicCast();
          v64 = v191[0];
          v86 = v79;
          v89 = v80;
          if (v191[0])
          {
            continue;
          }
        }

        goto LABEL_123;
      }
    }

    while (1)
    {
      v86 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        goto LABEL_158;
      }

      if (v86 >= v84)
      {
        break;
      }

      ++v85;
      if (*(v40 + 8 * v86))
      {
        goto LABEL_98;
      }
    }

LABEL_123:

    sub_1DD3AA5A4(v3);
    v64 = v172;
    if (!sub_1DD480018())
    {
      v117 = OUTLINED_FUNCTION_3_34();
      v118(v117);
      OUTLINED_FUNCTION_20_16();
      v120 = v64;
      goto LABEL_150;
    }

    if (v170)
    {
      OUTLINED_FUNCTION_13_22();
      sub_1DD640778();
      OUTLINED_FUNCTION_43();
      v64 = type metadata accessor for DateTimeConstraint();
      OUTLINED_FUNCTION_0_59();
      sub_1DD487AF0(v112, v113, &unk_1DD650364);
      OUTLINED_FUNCTION_15_0();
      sub_1DD6402A8();
      v3 = v197;
      v40 = v198;
      v114 = v199;
      v115 = v200;
      v116 = v201;
    }

    else
    {
      OUTLINED_FUNCTION_16_21();
      v114 = ~v121;
      OUTLINED_FUNCTION_10_5();
      v116 = v122 & v123;

      v115 = 0;
    }

    v4 = -9.22337204e18;
    if ((v3 & 0x8000000000000000) == 0)
    {
LABEL_129:
      v124 = v115;
      v38 = v115;
      if (v116)
      {
LABEL_133:
        OUTLINED_FUNCTION_14_3();
        v127 = v126 & v125;
        OUTLINED_FUNCTION_26_15();
        if (v64)
        {
          goto LABEL_137;
        }

LABEL_148:
        v132 = OUTLINED_FUNCTION_22_13();
        goto LABEL_149;
      }

      while (1)
      {
        v38 = v124 + 1;
        if (__OFADD__(v124, 1))
        {
          break;
        }

        if (v38 >= ((v114 + 64) >> 6))
        {
          goto LABEL_148;
        }

        ++v124;
        if (*(v40 + 8 * v38))
        {
          goto LABEL_133;
        }
      }

      __break(1u);
LABEL_186:
      OUTLINED_FUNCTION_34_11();
      sub_1DD3AA5A4(v153);

      v154 = v179 + 104;
      v155 = v164;
      v156 = v186;
      (*(v179 + 104))(v164, *MEMORY[0x1E6969A48], v186);
      v157 = v172;
      v158 = sub_1DD63D2C8();
      (*(v154 - 96))(v155, v156);
      v159 = OUTLINED_FUNCTION_3_34();
      v160(v159);
      OUTLINED_FUNCTION_20_16();
      v161(v157, v169);
      v135 = (v158 != 28) & v187;
      return v135 & 1;
    }

    while (1)
    {
      v128 = sub_1DD6407F8();
      if (!v128)
      {
        goto LABEL_148;
      }

      v189 = v128;
      type metadata accessor for DateTimeConstraint();
      swift_dynamicCast();
      v64 = v191[0];
      v38 = v115;
      v127 = v116;
      if (!v191[0])
      {
        goto LABEL_148;
      }

LABEL_137:
      if (*(v64 + 16) == 9)
      {
        v129 = *(v64 + 24);
        if (*(v64 + 48) == 2)
        {
          goto LABEL_145;
        }

        if (!*(v64 + 48))
        {
          break;
        }
      }

LABEL_146:

      v115 = v38;
      v116 = v127;
      if ((v3 & 0x8000000000000000) == 0)
      {
        goto LABEL_129;
      }
    }

    if ((~*&v129 & 0x7FF0000000000000) == 0)
    {
      goto LABEL_188;
    }

    if (v129 <= -9.22337204e18)
    {
      goto LABEL_189;
    }

    OUTLINED_FUNCTION_19_2();
    if (!v131)
    {
      goto LABEL_190;
    }

    *&v129 = v130;
LABEL_145:
    if (*&v129 != 2)
    {
      goto LABEL_146;
    }

    v137 = OUTLINED_FUNCTION_22_13();
    sub_1DD3AA5A4(v137);

    if (v170)
    {
      OUTLINED_FUNCTION_13_22();
      sub_1DD640778();
      OUTLINED_FUNCTION_43();
      v64 = type metadata accessor for DateTimeConstraint();
      OUTLINED_FUNCTION_0_59();
      sub_1DD487AF0(v138, v139, &unk_1DD650364);
      OUTLINED_FUNCTION_15_0();
      sub_1DD6402A8();
      v140 = v191[0];
      v40 = v191[1];
      v141 = v191[2];
      v142 = v191[3];
      v3 = v191[4];
      goto LABEL_161;
    }

LABEL_160:
    v40 = v176 + 56;
    v141 = ~(-1 << *(v176 + 32));
    OUTLINED_FUNCTION_10_5();
    v3 = v143 & v144;

    v142 = 0;
LABEL_161:
    v145 = v140;
    if (v140 < 0)
    {
      while (1)
      {
        v150 = sub_1DD6407F8();
        if (!v150)
        {
          goto LABEL_184;
        }

        v188 = v150;
        type metadata accessor for DateTimeConstraint();
        swift_dynamicCast();
        v64 = v189;
        v38 = v142;
        v149 = v3;
        if (!v189)
        {
          goto LABEL_184;
        }

LABEL_170:
        if (*(v64 + 16) == 5)
        {
          v151 = *(v64 + 24);
          if (*(v64 + 48) == 2)
          {
            goto LABEL_178;
          }

          if (!*(v64 + 48))
          {
            break;
          }
        }

LABEL_179:

        v142 = v38;
        v3 = v149;
        if ((v145 & 0x8000000000000000) == 0)
        {
          goto LABEL_162;
        }
      }

      if ((~v151 & 0x7FF0000000000000) == 0)
      {
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
      }

      if (*&v151 <= v4)
      {
        goto LABEL_194;
      }

      OUTLINED_FUNCTION_19_2();
      if (!v131)
      {
        goto LABEL_195;
      }

      v151 = v152;
LABEL_178:
      if (v151 >= 29)
      {
        goto LABEL_186;
      }

      goto LABEL_179;
    }

LABEL_162:
    v146 = v142;
    v38 = v142;
    if (!v3)
    {
      while (1)
      {
        v38 = v146 + 1;
        if (__OFADD__(v146, 1))
        {
          break;
        }

        if (v38 >= ((v141 + 64) >> 6))
        {
          goto LABEL_184;
        }

        ++v146;
        if (*(v40 + 8 * v38))
        {
          goto LABEL_166;
        }
      }

      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v162 = swift_slowAlloc();
        v19 = sub_1DD497E80(v162, v182, v38, sub_1DD487AD0, v190);
        v163 = 0;
        OUTLINED_FUNCTION_0_1();
        continue;
      }

LABEL_32:
      v181 = &v163;
      MEMORY[0x1EEE9AC00](isStackAllocationSafe);
      v42 = (&v163 - ((v40 + 15) & 0x3FFFFFFFFFFFFFF0));
      sub_1DD57634C(0, v182, v42);
      v3 = 0;
      v43 = 0;
      v46 = *(v38 + 56);
      v45 = v38 + 56;
      v44 = v46;
      v47 = 1 << *(v45 - 24);
      v48 = -1;
      if (v47 < 64)
      {
        v48 = ~(-1 << v47);
      }

      v49 = v48 & v44;
      v50 = (v47 + 63) >> 6;
      do
      {
LABEL_35:
        if (v49)
        {
          v51 = __clz(__rbit64(v49));
          v49 &= v49 - 1;
          goto LABEL_42;
        }

        v52 = v43;
        do
        {
          v43 = v52 + 1;
          if (__OFADD__(v52, 1))
          {
            __break(1u);
            goto LABEL_183;
          }

          if (v43 >= v50)
          {
            goto LABEL_65;
          }

          ++v52;
        }

        while (!*(v45 + 8 * v43));
        OUTLINED_FUNCTION_14_3();
        v49 = v54 & v53;
LABEL_42:
        v55 = v51 | (v43 << 6);
        if (*(*(*(v176 + 48) + 8 * v55) + 49))
        {
          if (*(*(*(v176 + 48) + 8 * v55) + 49) == 1)
          {
            v40 = 0xE300000000000000;
          }

          else
          {
            OUTLINED_FUNCTION_32_11();
          }
        }

        else
        {
          OUTLINED_FUNCTION_33_8();
        }

        OUTLINED_FUNCTION_21_14();
        if (v26)
        {
          v59 = 0xE500000000000000;
          OUTLINED_FUNCTION_12_0();
        }

        else
        {
          if (v57 == 1)
          {
            v58 = 6581861;
          }

          else
          {
            v58 = 0x746573746F6ELL;
          }

          if (v57 == 1)
          {
            v59 = 0xE300000000000000;
          }

          else
          {
            v59 = 0xE600000000000000;
          }
        }

        if (v56 == v58 && v40 == v59)
        {

          break;
        }

        v61 = sub_1DD640CD8();
      }

      while ((v61 & 1) == 0);
      *(v42 + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v55;
      v62 = __OFADD__(v3++, 1);
      if (!v62)
      {
        goto LABEL_35;
      }

      __break(1u);
LABEL_65:
      sub_1DD51607C(v42, v182, v3, v176);
      v19 = v63;
      goto LABEL_66;
    }

    break;
  }

LABEL_166:
  OUTLINED_FUNCTION_14_3();
  v149 = v148 & v147;
  OUTLINED_FUNCTION_26_15();
  if (v64)
  {
    goto LABEL_170;
  }

LABEL_184:
  OUTLINED_FUNCTION_34_11();
LABEL_149:
  sub_1DD3AA5A4(v132);
  v133 = OUTLINED_FUNCTION_3_34();
  v134(v133);
  OUTLINED_FUNCTION_20_16();
  v120 = v172;
LABEL_150:
  v119(v120, v169);
  v135 = v187;
  return v135 & 1;
}

uint64_t sub_1DD4876AC(uint64_t a1, char a2)
{
  v2 = 0x7472617473;
  if (*(*a1 + 49))
  {
    if (*(*a1 + 49) == 1)
    {
      v3 = 0xE300000000000000;
      v4 = 6581861;
    }

    else
    {
      v3 = 0xE600000000000000;
      v4 = 0x746573746F6ELL;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x7472617473;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 6581861;
    }

    else
    {
      v2 = 0x746573746F6ELL;
    }

    if (a2 == 1)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (v4 == v2 && v3 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1DD640CD8();
  }

  return v7 & 1;
}

void *sub_1DD487798(uint64_t a1)
{
  type metadata accessor for DateTimeConstraint();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD368, &qword_1DD64F840);
  sub_1DD487AF0(&qword_1ECCDC188, type metadata accessor for DateTimeConstraint, &unk_1DD650364);
  v2 = sub_1DD63FC88();
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1DD640778();
    sub_1DD6402A8();
    a1 = v31;
    v3 = v32;
    v4 = v33;
    v5 = v34;
    v6 = v35;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  v29 = v10;
  if (a1 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (v6)
  {
LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
LABEL_26:
      sub_1DD3AA5A4(a1);
      return v2;
    }

    while (1)
    {
      v16 = v3;
      v17 = a1;
      v18 = v15[7];

      swift_isUniquelyReferenced_nonNull_native();
      v30 = v2;
      v19 = sub_1DD3FEB14();
      if (__OFADD__(v2[2], (v20 & 1) == 0))
      {
        break;
      }

      v21 = v19;
      v22 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD370, &qword_1DD64F848);
      if (sub_1DD640A08())
      {
        v23 = sub_1DD3FEB14();
        if ((v22 & 1) != (v24 & 1))
        {
          goto LABEL_30;
        }

        v21 = v23;
      }

      if (v22)
      {
        *(v2[7] + 8 * v21) = v18;
      }

      else
      {
        v2[(v21 >> 6) + 8] |= 1 << v21;
        *(v2[6] + 8 * v21) = v15;
        *(v2[7] + 8 * v21) = v18;
        v25 = v2[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          goto LABEL_29;
        }

        v2[2] = v27;
      }

      v5 = v13;
      a1 = v17;
      v3 = v16;
      v10 = v29;
      v6 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (sub_1DD6407F8())
      {
        swift_dynamicCast();
        v15 = v30;
        v13 = v5;
        v14 = v6;
        if (v30)
        {
          continue;
        }
      }

      goto LABEL_26;
    }
  }

  else
  {
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        goto LABEL_26;
      }

      v12 = *(v3 + 8 * v13);
      ++v11;
      if (v12)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_1DD640D58();
  __break(1u);
  return result;
}

uint64_t sub_1DD487AF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_13_22()
{

  return swift_unknownObjectRetain();
}

double OUTLINED_FUNCTION_26_15()
{

  return result;
}

void sub_1DD487C10(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1DD640778();
    type metadata accessor for DateTime();
    sub_1DD488E94();
    sub_1DD6402A8();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v20 = MEMORY[0x1E69E7CC0];
LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_1DD6407F8() || (type metadata accessor for DateTime(), swift_dynamicCast(), v13 = v26, v4 = v9, v5 = v10, !v26))
      {
LABEL_26:
        sub_1DD3AA5A4(v1);
        return;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;

    if (!v13)
    {
      goto LABEL_26;
    }

LABEL_18:
    v14 = *(v13 + 16);
    if (!v14)
    {

      goto LABEL_8;
    }

    v15 = *(v14 + 89);

    v9 = v4;
    v10 = v5;
    if (v15 != 7)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD3BFFC4(0, *(v20 + 16) + 1, 1, v20);
        v20 = v18;
      }

      v17 = *(v20 + 16);
      v16 = *(v20 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1DD3BFFC4(v16 > 1, v17 + 1, 1, v20);
        v20 = v19;
      }

      *(v20 + 16) = v17 + 1;
      *(v20 + v17 + 32) = v15;
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_26;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

INDateComponentsRange __swiftcall DateTime.toINDateComponentsRange()()
{
  v1 = sub_1DD63D328();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DD63D2D8();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD63D288();
  sub_1DD63D318();
  v13 = sub_1DD487FFC(v0, v12, v6);
  (*(v3 + 8))(v6, v1);
  (*(v9 + 8))(v12, v7);
  return v13;
}

id sub_1DD487FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC4F8, &unk_1DD646910);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v64 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v61 - v9;
  v11 = sub_1DD63CBB8();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v66 = &v61 - v18;
  v62 = a2;
  sub_1DD488550(a1, a2, a3);
  v19 = *(a1 + 24);
  if (v19)
  {
    LOBYTE(v19) = *(v19 + 72);
  }

  v20 = *(a1 + 56);
  v63 = v16;
  if (v20)
  {
    v21 = *(v20 + 32);
    if (v21)
    {
      v22 = *(v21 + 24);
      if (v22)
      {
        if (v19)
        {
          v65 = 0;
          goto LABEL_12;
        }

        v23 = *(v22 + 72);
        goto LABEL_11;
      }
    }
  }

  v23 = 0;
  v65 = 0;
  if ((v19 & 1) == 0)
  {
LABEL_11:
    v65 = v23 ^ 1;
  }

LABEL_12:
  if (qword_1ECCDB0C0 != -1)
  {
    OUTLINED_FUNCTION_5_0(&qword_1ECCDB0C0);
  }

  v24 = sub_1DD63F9F8();
  v25 = OUTLINED_FUNCTION_11(v24, qword_1ECD0DDC0);
  v26 = sub_1DD640368();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v61 = a1;
    v28 = v27;
    *v27 = 67109120;
    *(v27 + 4) = v65;
    _os_log_impl(&dword_1DD38D000, v25, v26, "Setting allDay to %{BOOL}d", v27, 8u);
    a1 = v61;
    MEMORY[0x1E12B3DA0](v28, -1, -1);
  }

  if (v20 && *(v20 + 32))
  {

    v30 = v63;
    sub_1DD488550(v29, v62, a3);
    v31 = sub_1DD488B98(a1);
    v32 = *(v13 + 16);
    v32(v10, v66, v11);
    OUTLINED_FUNCTION_10_15();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v11);
    v36 = v64;
    v32(v64, v30, v11);
    OUTLINED_FUNCTION_10_15();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v11);
    v40 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v41 = v40;
    if (v31)
    {
      v42 = v36;
      v43 = v31;
      v44 = [v41 initWithBool_];
      v45 = objc_allocWithZone(MEMORY[0x1E696E800]);
      v46 = sub_1DD488CD8(v10, v42, v31, 0, 0, v44);
    }

    else
    {
      [v40 initWithBool_];
      v58 = objc_allocWithZone(MEMORY[0x1E696E800]);
      v46 = OUTLINED_FUNCTION_7_30();
    }

    v59 = *(v13 + 8);
    v59(v63, v11);
    v59(v66, v11);
  }

  else
  {
    v47 = sub_1DD488B98(a1);
    (*(v13 + 16))(v10, v66, v11);
    OUTLINED_FUNCTION_10_15();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v11);
    v51 = v64;
    __swift_storeEnumTagSinglePayload(v64, 1, 1, v11);
    v52 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v53 = v52;
    if (v47)
    {
      v54 = v47;
      v55 = [v53 initWithBool_];
      v56 = objc_allocWithZone(MEMORY[0x1E696E800]);
      v46 = sub_1DD488CD8(v10, v51, v47, 0, 0, v55);
    }

    else
    {
      [v52 initWithBool_];
      v57 = objc_allocWithZone(MEMORY[0x1E696E800]);
      v46 = OUTLINED_FUNCTION_7_30();
    }

    (*(v13 + 8))(v66, v11);
  }

  return v46;
}

uint64_t sub_1DD488550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC140, &unk_1DD655030);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v58 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC148, &qword_1DD645290);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v58 - v9;
  v11 = sub_1DD63D2D8();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  v12 = sub_1DD63D328();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v12);
  sub_1DD63CB68(v10, v7, 0, 1, 0, 1, 0, 1, 0, 1, 0);
  v13 = *(a1 + 16);
  if (v13)
  {
    switch(v13[89])
    {
      case 7:

        break;
      default:

        OUTLINED_FUNCTION_6_30();
        sub_1DD63CB58();
        break;
    }

    if (v13[72] != 12)
    {
      OUTLINED_FUNCTION_6_30();
      sub_1DD63CAC8();
    }

    if ((v13[40] & 1) == 0)
    {
      OUTLINED_FUNCTION_6_30();
      sub_1DD63CAC8();
      if (qword_1ECCDB0C0 != -1)
      {
        OUTLINED_FUNCTION_5_0(&qword_1ECCDB0C0);
      }

      v14 = sub_1DD63F9F8();
      v15 = OUTLINED_FUNCTION_11(v14, qword_1ECD0DDC0);
      v16 = sub_1DD640368();
      if (OUTLINED_FUNCTION_4_0(v16))
      {
        v17 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_1_46(v17);
        OUTLINED_FUNCTION_12_2(&dword_1DD38D000, v18, v19, "toINDateComponentsRange(): setting dateComponents.month");
        OUTLINED_FUNCTION_3_35();
      }
    }

    if ((v13[24] & 1) == 0)
    {
      OUTLINED_FUNCTION_6_30();
      sub_1DD63CA38();
      if (qword_1ECCDB0C0 != -1)
      {
        OUTLINED_FUNCTION_5_0(&qword_1ECCDB0C0);
      }

      v20 = sub_1DD63F9F8();
      v21 = OUTLINED_FUNCTION_11(v20, qword_1ECD0DDC0);
      v22 = sub_1DD640368();
      if (OUTLINED_FUNCTION_4_0(v22))
      {
        v23 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_1_46(v23);
        OUTLINED_FUNCTION_12_2(&dword_1DD38D000, v24, v25, "toINDateComponentsRange(): setting dateComponents.day");
        OUTLINED_FUNCTION_3_35();
      }
    }

    if (v13[56] == 1)
    {
    }

    else
    {
      OUTLINED_FUNCTION_6_30();
      sub_1DD63CAA8();
      if (qword_1ECCDB0C0 != -1)
      {
        OUTLINED_FUNCTION_5_0(&qword_1ECCDB0C0);
      }

      v26 = sub_1DD63F9F8();
      v27 = OUTLINED_FUNCTION_11(v26, qword_1ECD0DDC0);
      v28 = sub_1DD640368();
      if (OUTLINED_FUNCTION_4_0(v28))
      {
        v29 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_1_46(v29);
        OUTLINED_FUNCTION_12_2(&dword_1DD38D000, v30, v31, "toINDateComponentsRange(): setting dateComponents.year");
        OUTLINED_FUNCTION_3_35();
      }
    }
  }

  v32 = *(a1 + 24);
  if (v32)
  {
    if (v32[24] == 1)
    {
    }

    else
    {

      OUTLINED_FUNCTION_6_30();
      sub_1DD63CA88();
      if (qword_1ECCDB0C0 != -1)
      {
        OUTLINED_FUNCTION_5_0(&qword_1ECCDB0C0);
      }

      v33 = sub_1DD63F9F8();
      v34 = OUTLINED_FUNCTION_11(v33, qword_1ECD0DDC0);
      v35 = sub_1DD640368();
      if (OUTLINED_FUNCTION_4_0(v35))
      {
        v36 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_9_24(v36);
        OUTLINED_FUNCTION_12_2(&dword_1DD38D000, v37, v38, "toINDateComponentsRange(): setting dateComponents.hour");
        OUTLINED_FUNCTION_8_26();
      }
    }

    if ((v32[40] & 1) == 0)
    {
      OUTLINED_FUNCTION_6_30();
      sub_1DD63CAF8();
      if (qword_1ECCDB0C0 != -1)
      {
        OUTLINED_FUNCTION_5_0(&qword_1ECCDB0C0);
      }

      v39 = sub_1DD63F9F8();
      v40 = OUTLINED_FUNCTION_11(v39, qword_1ECD0DDC0);
      v41 = sub_1DD640368();
      if (OUTLINED_FUNCTION_4_0(v41))
      {
        v42 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_9_24(v42);
        OUTLINED_FUNCTION_12_2(&dword_1DD38D000, v43, v44, "toINDateComponentsRange(): setting dateComponents.minute");
        OUTLINED_FUNCTION_8_26();
      }
    }

    if (v32[56] == 1)
    {
    }

    else
    {
      OUTLINED_FUNCTION_6_30();
      sub_1DD63CB18();
      sub_1DD63C978();
      if (qword_1ECCDB0C0 != -1)
      {
        OUTLINED_FUNCTION_5_0(&qword_1ECCDB0C0);
      }

      v45 = sub_1DD63F9F8();
      v46 = OUTLINED_FUNCTION_11(v45, qword_1ECD0DDC0);
      v47 = sub_1DD640368();
      if (OUTLINED_FUNCTION_4_0(v47))
      {
        v48 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_9_24(v48);
        OUTLINED_FUNCTION_12_2(&dword_1DD38D000, v49, v50, "toINDateComponentsRange(): setting dateComponents.second");
        OUTLINED_FUNCTION_8_26();
      }
    }
  }

  (*(*(v11 - 8) + 16))(v10, v59, v11);
  OUTLINED_FUNCTION_10_15();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v11);
  sub_1DD63CB88();
  (*(*(v12 - 8) + 16))(v7, a3, v12);
  OUTLINED_FUNCTION_10_15();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v12);
  return sub_1DD63CBA8();
}