void sub_40DB90(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  *a1 = *(a2 + 104);

  *(a2 + 120) = 0;
}

double sub_40DBF4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_40C218(v3);
    sub_40CCA0();
  }

  return result;
}

void sub_40DC5C()
{
  v22 = [v0 properties];
  v1 = sub_AB9B40();
  v2 = v1;
  v3 = v1 + 56;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 56);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_9:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = (*(v2 + 48) + ((v8 << 10) | (16 * v10)));
    v13 = *v11;
    v12 = v11[1];
    if (sub_AB92A0() == v13 && v14 == v12)
    {

LABEL_24:
      v21 = CNContactThumbnailImageDataKey;

      goto LABEL_25;
    }

    v16 = sub_ABB3C0();

    if (v16)
    {
      goto LABEL_24;
    }

    if (sub_AB92A0() == v13 && v17 == v12)
    {

      goto LABEL_21;
    }

    v19 = sub_ABB3C0();

    if (v19)
    {
LABEL_21:
      v20 = [objc_opt_self() descriptorForRequiredKeysForStyle:0];

      if (v20)
      {
LABEL_25:
        sub_AB9730();
        if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_AB97A0();
        }

        sub_AB97F0();
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

id sub_40DEF4()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = [objc_allocWithZone(CNContactStore) init];
    v4 = *(v0 + 40);
    *(v0 + 40) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_40DF60(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v53 = 0;
  v54 = 0;
  v51 = 0;
  v52 = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = *(v4 + 24);
  if (v10 != 2)
  {
    v11 = v9;
    if ((v10 & 0x1000000) != 0)
    {
      v12 = a1[6];
      if (v12)
      {
        v53 = a1[5];
        v54 = v12;
      }

      else
      {
        v13 = sub_40E428(a1, v11, a4);
        if (v13)
        {
          v14 = v13;
          v15 = [objc_opt_self() stringFromContact:v13 style:0];
          if (v15)
          {
            v16 = v15;
            v17 = sub_AB92A0();
            v19 = v18;
          }

          else
          {
            v17 = 0;
            v19 = 0;
          }

          v53 = v17;
          v54 = v19;
        }
      }
    }

    v20 = *(v4 + 24);
    if (v20 == 2)
    {
      goto LABEL_25;
    }

    if ((v20 & 1) == 0)
    {
      goto LABEL_15;
    }

    v21 = a1[8];
    if (v21)
    {
      v22 = [objc_opt_self() tokenWithImageArtworkInfo:v21];
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      v24 = sub_40EFA0;
    }

    else
    {
      v33 = sub_40E428(a1, v11, a4);
      if (!v33)
      {
        goto LABEL_15;
      }

      v34 = v33;
      v35 = [v33 thumbnailImageData];
      if (!v35)
      {

        goto LABEL_15;
      }

      v36 = v35;
      v37 = sub_AB3260();
      v39 = v38;

      v23 = swift_allocObject();
      *(v23 + 16) = v37;
      *(v23 + 24) = v39;
      v24 = sub_40EF98;
    }

    v51 = v24;
    v52 = v23;
    sub_17654(0, 0);
LABEL_15:
    v44 = v11;
    v25 = [objc_opt_self() kind];
    __chkstk_darwin();
    v42 = a2;
    v43 = a3;
    v26 = objc_allocWithZone(MPIdentifierSet);
    v27 = swift_allocObject();
    *(v27 + 16) = sub_40EF24;
    *(v27 + 24) = v41;
    v49 = sub_57B84;
    v50 = v27;
    aBlock = _NSConcreteStackBlock;
    v46 = 1107296256;
    v47 = sub_41A314;
    v48 = &block_descriptor_133;
    v28 = _Block_copy(&aBlock);

    v29 = [v26 initWithModelKind:v25 block:v28];
    _Block_release(v28);

    LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

    if (v28)
    {
      __break(1u);
    }

    else
    {
      __chkstk_darwin();
      v41[0] = v4;
      v41[1] = &v51;
      v42 = &v53;
      v43 = a1;
      v30 = objc_allocWithZone(MPModelSocialPerson);
      v31 = swift_allocObject();
      *(v31 + 16) = sub_40EF54;
      *(v31 + 24) = &v40;
      v49 = sub_57B84;
      v50 = v31;
      aBlock = _NSConcreteStackBlock;
      v46 = 1107296256;
      v47 = sub_41A314;
      v48 = &block_descriptor_41_1;
      v32 = _Block_copy(&aBlock);

      [v30 initWithIdentifiers:v29 block:v32];
      _Block_release(v32);

      LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

      if ((v32 & 1) == 0)
      {
        sub_17654(v51, v52);

        return;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void *sub_40E428(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v3 = a1[1];
  if (!v3)
  {
    return 0;
  }

  v6 = *a1;
  swift_beginAccess();
  v7 = *(a2 + 16);
  if (!v7)
  {
    v23 = v6;
    if (a3)
    {
      v8 = a3 & 0xFFFFFFFFFFFFFF8;
      if (a3 >> 62)
      {
        goto LABEL_25;
      }

      for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
      {
        v10 = 0;
        v21 = a2;
        v22 = a3 & 0xC000000000000001;
        while (1)
        {
          if (v22)
          {
            v11 = sub_361A8C(v10, a3);
          }

          else
          {
            if (v10 >= *(v8 + 16))
            {
              goto LABEL_24;
            }

            v11 = *(a3 + 8 * v10 + 32);
          }

          v7 = v11;
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          v13 = a3;
          v14 = i;
          v15 = [v11 identifier];
          v17 = sub_AB92A0() == v23 && v3 == v16;
          if (v17)
          {

            goto LABEL_22;
          }

          a2 = sub_ABB3C0();

          if (a2)
          {
            goto LABEL_22;
          }

          ++v10;
          i = v14;
          v17 = v12 == v14;
          a3 = v13;
          if (v17)
          {
            v7 = 0;
LABEL_22:
            a2 = v21;
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        ;
      }
    }

    v7 = 0;
LABEL_27:
    swift_beginAccess();
    v18 = *(a2 + 16);
    *(a2 + 16) = v7;
  }

  v19 = v7;
  return v7;
}

id sub_40E5E8(uint64_t a1, void *a2)
{
  v3 = objc_opt_self();
  v4 = a2;
  result = [v3 sharedStoreArtworkDataSource];
  if (result)
  {
    v6 = result;
    v7 = objc_allocWithZone(MPArtworkCatalog);
    v8 = v4;
    v9 = [v7 initWithToken:v8 dataSource:v6];

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_40E690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = objc_allocWithZone(UIImage);
  isa = sub_AB3250().super.isa;
  v5 = [v3 initWithData:isa];

  if (v5)
  {
    [objc_opt_self() staticArtworkCatalogWithImage:v5];
  }

  else
  {
    __break(1u);
  }
}

void sub_40E730(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_40EFE0;
  *(v7 + 24) = v6;
  v9[4] = sub_57B84;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_4522E8;
  v9[3] = &block_descriptor_59_0;
  v8 = _Block_copy(v9);

  [a1 setUniversalStoreIdentifiersWithBlock:v8];
  _Block_release(v8);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }
}

void sub_40E890(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, _BYTE *a5)
{
  objc_opt_self();
  v9 = swift_dynamicCastObjCClassUnconditional();
  v10 = *(a2 + 24);
  if (v10 == 2)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    return;
  }

  v11 = v9;
  if (v10)
  {
    if (*a3)
    {
      v12 = a3[1];
      v16[4] = *a3;
      v16[5] = v12;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 1107296256;
      v16[2] = sub_119878;
      v16[3] = &block_descriptor_50;
      v13 = _Block_copy(v16);
    }

    else
    {
      v13 = 0;
    }

    [v11 setArtworkCatalogBlock:v13];
    _Block_release(v13);
    v10 = *(a2 + 24);
  }

  if (v10 == 2)
  {
    goto LABEL_36;
  }

  if ((v10 & 0x100) != 0)
  {
    [v11 setBiography:0];
    v10 = *(a2 + 24);
  }

  if (v10 == 2)
  {
    goto LABEL_37;
  }

  if ((v10 & 0x10000) != 0)
  {
    [v11 setHandle:0];
    v10 = *(a2 + 24);
  }

  if (v10 == 2)
  {
    goto LABEL_38;
  }

  if ((v10 & 0x1000000) != 0)
  {
    if (a4[1])
    {

      v14 = sub_AB9260();
    }

    else
    {
      v14 = 0;
    }

    [v11 setName:v14];

    v10 = *(a2 + 24);
  }

  if (v10 == 2)
  {
    goto LABEL_39;
  }

  if ((v10 & 0x100000000) != 0)
  {
    if (a4[1])
    {

      v15 = sub_AB9260();
    }

    else
    {
      v15 = 0;
    }

    [v11 setName:v15];

    v10 = *(a2 + 24);
  }

  if (v10 == 2)
  {
    goto LABEL_40;
  }

  if ((v10 & 0x10000000000) != 0)
  {
    [v11 setPrivatePerson:a5[17]];
    v10 = *(a2 + 24);
  }

  if (v10 == 2)
  {
    goto LABEL_41;
  }

  if ((v10 & 0x1000000000000) != 0)
  {
    [v11 setVerified:a5[18]];
    v10 = *(a2 + 24);
  }

  if (v10 == 2)
  {
    goto LABEL_42;
  }

  if ((v10 & 0x100000000000000) != 0)
  {
    [v11 setHasLightweightProfile:(a5[16] & 1) == 0];
  }
}

uint64_t sub_40EB64()
{

  return swift_deallocClassInstance();
}

uint64_t sub_40EB9C()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for CloudLibrary.UpdateContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[8])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudLibrary.UpdateContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_40ED68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
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

uint64_t sub_40EDB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_40EE40()
{
  result = qword_E05928;
  if (!qword_E05928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E05928);
  }

  return result;
}

unint64_t sub_40EE98()
{
  result = qword_E05930;
  if (!qword_E05930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E05930);
  }

  return result;
}

uint64_t sub_40EEEC()
{

  return swift_deallocObject();
}

double block_copy_helper_133(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_40EF60()
{
  sub_466B8(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_40EFA8()
{

  return swift_deallocObject();
}

void sub_40EFE0(void *a1)
{
  v2 = sub_AB9260();
  [a1 setSocialProfileID:v2];
}

uint64_t sub_40F07C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E05940, &unk_B0E330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t *sub_40F0E4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_40F55C(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_40F180(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v4 = a1;
  v5 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v5)
  {
    v91 = _swiftEmptyArrayStorage;
    sub_6D850(0, v5, 0);
    v10 = _swiftEmptyArrayStorage;
    v11 = v4 + 56;
    result = sub_ABABC0();
    if (result < 0 || result >= 1 << *(v4 + 32))
    {
LABEL_25:
      __break(1u);
    }

    else
    {
      v53 = v4 + 64;
      v54 = v5;
      v65 = *(v4 + 36);
      v12 = a4 & 1;
      v13 = 1;
      v55 = v4 + 56;
      while ((*(v11 + 8 * (result >> 6)) & (1 << result)) != 0)
      {
        if (v65 != *(v4 + 36))
        {
          goto LABEL_27;
        }

        v58 = 1 << result;
        v59 = result >> 6;
        v57 = v13;
        v14 = (*(v4 + 48) + (result << 6));
        v15 = *v14;
        v16 = v14[1];
        v17 = v14[3];
        v68 = v14[2];
        v69 = v17;
        v67[0] = v15;
        v67[1] = v16;
        v18 = *(&v15 + 1);
        v19 = *(&v16 + 1);
        v60 = v16;
        v61 = v15;
        v20 = v17;
        v62 = result;
        v63 = *(&v68 + 1);
        v21 = v14[3];
        v23 = *v14;
        v22 = v14[1];
        v72 = v14[2];
        v73 = v21;
        v70 = v23;
        v71 = v22;
        sub_410094(&v70);
        v87 = v76;
        v88 = v77;
        v89 = v78;
        v83 = v72;
        v84 = v73;
        v85 = v74;
        v86 = v75;
        v81 = v70;
        v82 = v71;
        v66[0] = v12;
        v24 = *(&v69 + 1);
        sub_2BABC(v67, v66);
        v64 = v20;

        v25 = v18;

        v26 = v19;

        v27 = a3;
        sub_2BA40(a2, a3, v12);
        v91 = v10;
        v28 = a2;
        v29 = v4;
        v31 = v10[2];
        v30 = v10[3];
        v32 = v27;
        if (v31 >= v30 >> 1)
        {
          sub_6D850((v30 > 1), v31 + 1, 1);
          v10 = v91;
        }

        v10[2] = v31 + 1;
        v56 = v10;
        v33 = &v10[30 * v31];
        v33[4] = v61;
        v33[5] = v25;
        v33[6] = v60;
        v33[7] = v26;
        *(v33 + 64) = 1;
        v34 = *&v90[3];
        *(v33 + 65) = *v90;
        *(v33 + 17) = v34;
        v33[9] = v63;
        v33[10] = v64;
        *(v33 + 11) = v81;
        v35 = v82;
        v36 = v83;
        v37 = v84;
        *(v33 + 19) = v85;
        *(v33 + 17) = v37;
        *(v33 + 15) = v36;
        *(v33 + 13) = v35;
        v38 = v86;
        v39 = v87;
        v40 = v88;
        *(v33 + 216) = v89;
        *(v33 + 25) = v40;
        *(v33 + 23) = v39;
        *(v33 + 21) = v38;
        v41 = *v80;
        *(v33 + 55) = *&v80[3];
        *(v33 + 217) = v41;
        v33[28] = v28;
        v33[29] = v27;
        *(v33 + 240) = v12;
        v42 = *&v79[3];
        *(v33 + 241) = *v79;
        *(v33 + 61) = v42;
        v33[31] = 0;
        v33[32] = 0;
        v33[33] = v24;
        v43 = 1 << *(v29 + 32);
        result = v62;
        if (v62 >= v43)
        {
          goto LABEL_28;
        }

        v4 = v29;
        v11 = v55;
        v44 = *(v55 + 8 * v59);
        if ((v44 & v58) == 0)
        {
          goto LABEL_29;
        }

        if (v65 != *(v4 + 36))
        {
          goto LABEL_30;
        }

        v45 = v12;
        v46 = v28;
        v47 = v44 & (-2 << (v62 & 0x3F));
        if (v47)
        {
          result = __clz(__rbit64(v47)) | v62 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v48 = v59 << 6;
          v49 = v59 + 1;
          v50 = (v53 + 8 * v59);
          while (v49 < (v43 + 63) >> 6)
          {
            v52 = *v50++;
            v51 = v52;
            v48 += 64;
            ++v49;
            if (v52)
            {
              sub_E1798(v62, v65, 0);
              result = __clz(__rbit64(v51)) + v48;
              goto LABEL_19;
            }
          }

          sub_E1798(v62, v65, 0);
          result = v43;
        }

LABEL_19:
        if (v57 == v54)
        {
          return v56;
        }

        v12 = v45;
        v10 = v56;
        if ((result & 0x8000000000000000) == 0)
        {
          a3 = v32;
          a2 = v46;
          v13 = v57 + 1;
          if (result < 1 << *(v4 + 32))
          {
            continue;
          }
        }

        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  return result;
}

unint64_t *sub_40F55C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v41 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v44 = a3 + 56;
  v42 = 0;
  v43 = v10;
  while (1)
  {
    do
    {
      if (v9)
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
      }

      else
      {
        v12 = v5;
        do
        {
          v5 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
            goto LABEL_35;
          }

          if (v5 >= v10)
          {

            return sub_1CA754(v41, a2, v42, v4);
          }

          v13 = *(v6 + 8 * v5);
          ++v12;
        }

        while (!v13);
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
      }

      v14 = v11 | (v5 << 6);
      v15 = (*(v4 + 48) + 240 * v14);
      v16 = *v15;
      v17 = v15[2];
      v49[1] = v15[1];
      v49[2] = v17;
      v18 = v15[3];
      v19 = v15[4];
      v20 = v15[6];
      v49[5] = v15[5];
      v49[6] = v20;
      v49[3] = v18;
      v49[4] = v19;
      v21 = v15[7];
      v22 = v15[8];
      v23 = v15[10];
      v49[9] = v15[9];
      v49[10] = v23;
      v49[7] = v21;
      v49[8] = v22;
      v24 = v15[11];
      v25 = v15[12];
      v26 = v15[14];
      v51 = v15[13];
      v52 = v26;
      v49[11] = v24;
      v50 = v25;
      v49[0] = v16;
      v27 = *(a4 + 88);
    }

    while (!*(v27 + 16));
    v28 = v50;
    v29 = v51;
    sub_ABB5C0();
    v47 = v9;
    v53 = v28;
    if (v29)
    {
      sub_ABB5D0(1uLL);
      sub_2B990(v49, v48);

      sub_ABA7A0();
    }

    else
    {
      sub_ABB5D0(0);
      sub_2B990(v49, v48);

      sub_AB93F0();
    }

    v30 = sub_ABB610();
    v31 = -1 << *(v27 + 32);
    v32 = v30 & ~v31;
    if ((*(v27 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
    {
      break;
    }

LABEL_31:

    result = sub_2B9EC(v49);
LABEL_32:
    v6 = v44;
    v4 = a3;
    v10 = v43;
    v9 = v47;
  }

  v33 = ~v31;
  while (1)
  {
    v34 = *(v27 + 48) + 24 * v32;
    v35 = *v34;
    v36 = *(v34 + 8);
    if ((*(v34 + 16) & 1) == 0)
    {
      break;
    }

    if (v29)
    {
      sub_13C80(0, &qword_DFA720, NSObject_ptr);
      v37 = v35;
      v38 = sub_ABA790();
      sub_13CC8(v35, v36, 1);
      if (v38)
      {
        goto LABEL_29;
      }
    }

LABEL_18:
    v32 = (v32 + 1) & v33;
    if (((*(v27 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  if (v29)
  {
    goto LABEL_18;
  }

  v39 = v35 == v53 && v36 == *(&v28 + 1);
  if (!v39 && (sub_ABB3C0() & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_29:

  result = sub_2B9EC(v49);
  *(v41 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
  if (!__OFADD__(v42, 1))
  {
    ++v42;
    goto LABEL_32;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_40F894(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_37;
  }

  do
  {
    v46 = v8;
    v47 = v3;
    v45[1] = v45;
    __chkstk_darwin();
    v48 = v45 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v48, v9);
    v10 = 0;
    v11 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v9 = v13 & *(v5 + 56);
    v14 = (v12 + 63) >> 6;
    v53 = v5;
    v54 = a2;
    v52 = v5 + 56;
    v50 = 0;
    v51 = v14;
    while (v9)
    {
      v15 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v18 = v15 | (v10 << 6);
      v19 = (*(v5 + 48) + 240 * v18);
      v20 = *v19;
      v21 = v19[2];
      v60[1] = v19[1];
      v60[2] = v21;
      v22 = v19[3];
      v23 = v19[4];
      v24 = v19[6];
      v60[5] = v19[5];
      v60[6] = v24;
      v60[3] = v22;
      v60[4] = v23;
      v25 = v19[7];
      v26 = v19[8];
      v27 = v19[10];
      v60[9] = v19[9];
      v60[10] = v27;
      v60[7] = v25;
      v60[8] = v26;
      v28 = v19[11];
      v29 = v19[12];
      v30 = v19[14];
      v62 = v19[13];
      v63 = v30;
      v60[11] = v28;
      v61 = v29;
      v60[0] = v20;
      v8 = *(a2 + 88);
      if (!*(v8 + 16))
      {
        continue;
      }

      v31 = *(&v61 + 1);
      v3 = v61;
      v32 = v62;
      sub_ABB5C0();
      v58 = v32;
      v55 = v9;
      v56 = v31;
      v49 = v18;
      v57 = v3;
      if (v32)
      {
        sub_ABB5D0(1uLL);
        sub_2B990(v60, v59);

        sub_ABA7A0();
      }

      else
      {
        sub_ABB5D0(0);
        sub_2B990(v60, v59);

        sub_AB93F0();
      }

      v33 = sub_ABB610();
      v34 = -1 << *(v8 + 32);
      v35 = v33 & ~v34;
      if (((*(v8 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
      {
LABEL_32:

        sub_2B9EC(v60);
        goto LABEL_33;
      }

      v36 = ~v34;
      while (1)
      {
        v37 = *(v8 + 48) + 24 * v35;
        v38 = *v37;
        v3 = *(v37 + 8);
        if ((*(v37 + 16) & 1) == 0)
        {
          break;
        }

        if (v58)
        {
          sub_13C80(0, &qword_DFA720, NSObject_ptr);
          v39 = v38;
          v40 = sub_ABA790();
          sub_13CC8(v38, v3, 1);
          if (v40)
          {
            goto LABEL_30;
          }
        }

LABEL_19:
        v35 = (v35 + 1) & v36;
        if (((*(v8 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      if (v58)
      {
        goto LABEL_19;
      }

      v41 = v38 == v57 && v3 == v56;
      if (!v41 && (sub_ABB3C0() & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_30:

      sub_2B9EC(v60);
      *&v48[(v49 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v49;
      if (__OFADD__(v50, 1))
      {
        __break(1u);
      }

      ++v50;
LABEL_33:
      v5 = v53;
      a2 = v54;
      v14 = v51;
      v11 = v52;
      v9 = v55;
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= v14)
      {
        v42 = sub_1CA754(v48, v46, v50, v5);

        return v42;
      }

      v17 = *(v11 + 8 * v10);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v9 = (v17 - 1) & v17;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_37:
    ;
  }

  while ((swift_stdlib_isStackAllocationSafe() & 1) != 0);
  v44 = swift_slowAlloc();

  v42 = sub_40F0E4(v44, v8, v5, a2);

  return v42;
}

uint64_t sub_40FCF4(void *a1)
{
  *(v1 + 24) = 2;
  v2 = [a1 properties];
  v3 = sub_AB9B40();

  v4 = sub_AB92A0();
  v36 = sub_472F00(v4, v5, v3);

  v6 = sub_AB92A0();
  v35 = sub_472F00(v6, v7, v3);

  v8 = sub_AB92A0();
  v10 = sub_472F00(v8, v9, v3);

  v11 = sub_AB92A0();
  v13 = sub_472F00(v11, v12, v3);

  v14 = sub_AB92A0();
  v16 = sub_472F00(v14, v15, v3);

  v17 = sub_AB92A0();
  v19 = sub_472F00(v17, v18, v3);

  v20 = sub_AB92A0();
  v22 = sub_472F00(v20, v21, v3);

  v23 = sub_AB92A0();
  v25 = sub_472F00(v23, v24, v3);

  v26 = 0x100000000000000;
  if ((v25 & 1) == 0)
  {
    v26 = 0;
  }

  v27 = 0x1000000000000;
  if ((v22 & 1) == 0)
  {
    v27 = 0;
  }

  v28 = 0x10000000000;
  if ((v19 & 1) == 0)
  {
    v28 = 0;
  }

  v29 = 0x100000000;
  if ((v16 & 1) == 0)
  {
    v29 = 0;
  }

  v30 = 0x1000000;
  if ((v13 & 1) == 0)
  {
    v30 = 0;
  }

  v31 = 0x10000;
  if ((v10 & 1) == 0)
  {
    v31 = 0;
  }

  v32 = 256;
  if ((v35 & 1) == 0)
  {
    v32 = 0;
  }

  *(v1 + 24) = v32 & 0xFFFFFFFFFFFFFFFELL | v36 & 1 | v31 | v30 | v29 | v28 | v27 | v26;
  sub_40DC5C();
  *(v1 + 16) = v33;

  return v1;
}

uint64_t sub_40FF4C()
{

  sub_13CC8(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_40FFD4()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

double sub_410028(uint64_t a1, void *a2, char a3)
{
  if (a3 != -1)
  {
    return sub_9AF20(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t objectdestroy_65Tm()
{

  sub_13CC8(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_4100A8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_4100E0()
{

  sub_13CC8(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_410158()
{

  return swift_deallocObject();
}

uint64_t sub_410198()
{

  return swift_deallocObject();
}

uint64_t sub_4101E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 129))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 128);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_410228(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 128) = -a2;
    }
  }

  return result;
}

id sub_410310(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication9BrickCell_headline];
  *v4 = a1;
  *(v4 + 1) = a2;

  v5 = String.trim()();

  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication9BrickCell_textComponents];
  swift_beginAccess();
  v6[7] = v5;

  sub_2EB704();

  return [v3 setNeedsLayout];
}

id sub_4103E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication9BrickCell_title];
  *v4 = a1;
  *(v4 + 1) = a2;

  v5 = String.trim()();

  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication9BrickCell_textComponents + 8];
  swift_beginAccess();
  v6[7] = v5;

  sub_2EB704();

  return [v3 setNeedsLayout];
}

id sub_4104BC(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC16MusicApplication9BrickCell_subtitle];
  *v3 = a1;
  *(v3 + 1) = a2;

  v4 = *&v2[OBJC_IVAR____TtC16MusicApplication9BrickCell_textComponents + 16];

  v5 = String.trim()();

  swift_beginAccess();
  v4[7] = v5;

  sub_2EB704();

  return [v2 setNeedsLayout];
}

char *sub_4105A4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  __chkstk_darwin();
  v12 = &v47[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v14 = &v47[-v13];
  v15 = &v4[OBJC_IVAR____TtC16MusicApplication9BrickCell_headline];
  *v15 = 0;
  *(v15 + 1) = 0xE000000000000000;
  v16 = &v4[OBJC_IVAR____TtC16MusicApplication9BrickCell_title];
  *v16 = 0;
  *(v16 + 1) = 0xE000000000000000;
  v17 = &v4[OBJC_IVAR____TtC16MusicApplication9BrickCell_subtitle];
  *v17 = 0;
  *(v17 + 1) = 0xE000000000000000;
  *&v4[OBJC_IVAR____TtC16MusicApplication9BrickCell_lockupImageArtworkCatalog] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication9BrickCell_layoutStyle] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication9BrickCell_artworkCachingReference] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication9BrickCell_textDrawingCache] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication9BrickCell_isDisabled] = 0;
  v18 = OBJC_IVAR____TtC16MusicApplication9BrickCell_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v20 = sub_80104(v19);

  *&v5[v18] = v20;
  v21 = &v5[OBJC_IVAR____TtC16MusicApplication9BrickCell_textComponents];
  *v21 = sub_4126C0();
  v21[1] = v22;
  v21[2] = v23;
  v21[3] = v24;
  v25 = OBJC_IVAR____TtC16MusicApplication9BrickCell_headlineTextDrawingView;
  type metadata accessor for TextDrawing.View();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v5[v25] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v27 = OBJC_IVAR____TtC16MusicApplication9BrickCell_titleTextDrawingView;
  *&v5[v27] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v28 = OBJC_IVAR____TtC16MusicApplication9BrickCell_subtitleTextDrawingView;
  *&v5[v28] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v5[OBJC_IVAR____TtC16MusicApplication9BrickCell____lazy_storage___selectedIndicatorView] = 0;
  v29 = &v5[OBJC_IVAR____TtC16MusicApplication9BrickCell_layoutInvalidationHandler];
  *v29 = 0;
  *(v29 + 1) = 0;
  v48.receiver = v5;
  v48.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v48, "initWithFrame:", a1, a2, a3, a4);
  v31 = [v30 layer];
  [v31 setAllowsGroupOpacity:0];

  v32 = [v30 layer];
  [v32 setAllowsGroupBlending:0];

  v33 = OBJC_IVAR____TtC16MusicApplication9BrickCell_artworkComponent;
  v34 = *&v30[OBJC_IVAR____TtC16MusicApplication9BrickCell_artworkComponent];

  v35 = UIView.Corner.medium.unsafeMutableAddressor();
  v36 = sub_ABA680();
  v37 = *(v36 - 8);
  (*(v37 + 16))(v14, v35, v36);
  (*(v37 + 56))(v14, 0, 1, v36);
  v38 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_cornerTreatment;
  swift_beginAccess();
  sub_89FAC(v34 + v38, v12);
  swift_beginAccess();
  sub_8A01C(v14, v34 + v38);
  swift_endAccess();
  sub_75AE8(v12);
  sub_8A08C(v12);
  sub_8A08C(v14);

  v39 = *&v30[v33];
  *(v39 + 24) = 0x70756B636F6CLL;
  *(v39 + 32) = 0xE600000000000000;

  v40 = *&v30[v33];
  v41 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v42 = (v40 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  v43 = *(v40 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  v44 = *(v40 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler + 8);
  *v42 = sub_8A12C;
  v42[1] = v41;

  sub_17654(v43, v44);

  v45 = [v30 contentView];

  [v45 addSubview:*(*&v30[v33] + 112)];
  [v45 addSubview:*&v30[OBJC_IVAR____TtC16MusicApplication9BrickCell_headlineTextDrawingView]];
  [v45 addSubview:*&v30[OBJC_IVAR____TtC16MusicApplication9BrickCell_titleTextDrawingView]];
  [v45 addSubview:*&v30[OBJC_IVAR____TtC16MusicApplication9BrickCell_subtitleTextDrawingView]];

  return v30;
}

void sub_410B44(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t))
{
  v7 = sub_AB92A0();
  v9 = v8;
  v11 = a3;
  v10 = a1;
  a4(v7, v9);
}

void sub_410BCC()
{
  v1 = v0;
  v158.receiver = v0;
  v158.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v158, "layoutSubviews");
  v2 = [v0 contentView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [v1 traitCollection];
  [v11 displayScale];
  [v1 effectiveUserInterfaceLayoutDirection];
  v185.origin.x = v4;
  v185.origin.y = v6;
  v185.size.width = v8;
  v185.size.height = v10;
  Width = CGRectGetWidth(v185);
  sub_AB3A00();
  v14 = v13 + 0.0;
  v15 = *&v1[OBJC_IVAR____TtC16MusicApplication9BrickCell_artworkComponent];
  v16 = *(v15 + 80);
  v17 = *(v15 + 88);
  *(v15 + 80) = Width;
  *(v15 + 88) = v14;
  sub_75614(v16, v17);
  sub_76368(0, 0, 1);
  v19 = v18;
  sub_ABA490();
  sub_76B28(v20, v21, v22, v23);
  v24 = OBJC_IVAR____TtC16MusicApplication9BrickCell_textDrawingCache;
  swift_beginAccess();
  v25 = *&v1[v24];
  v26 = &selRef__authenticateReturningError_;
  if (v25)
  {
    v114 = v11;
    v27 = v10 - v19;
    v115 = &v1[OBJC_IVAR____TtC16MusicApplication9BrickCell_textComponents];
    v28 = *&v1[OBJC_IVAR____TtC16MusicApplication9BrickCell_textComponents];
    swift_beginAccess();
    v29 = *(v28 + 112);
    v30 = *(v28 + 120);
    v31 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v31 = v29 & 0xFFFFFFFFFFFFLL;
    }

    v112 = v10;
    if (v31)
    {
      swift_beginAccess();
      v32 = *(v28 + 48);
      v33 = *(v28 + 64);
      v34 = *(v28 + 96);
      v184[3] = *(v28 + 80);
      v184[4] = v34;
      v184[1] = v32;
      v184[2] = v33;
      v184[0] = *(v28 + 32);
      v35 = v25[4];
      v36 = *(v25 + 5);
      v37 = *(v25 + 8);
      v38 = *(v25 + 9);
      v40 = *(v25 + 10);
      v39 = *(v25 + 11);

      sub_2F118(v184, v183);
      v41 = v36;
      v42 = v30;
      v43 = v41;
      sub_108594(v29, v42, v184, v41, v37, v38, v40, v39, v159, v8, v27, v35);
      v166 = v159[4];
      v167 = v159[5];
      v168 = v159[6];
      v169 = v159[7];
      v162 = v159[0];
      v163 = v159[1];
      v164 = v159[2];
      v165 = v159[3];

      v44 = OBJC_IVAR____TtC16MusicApplication9BrickCell_headlineTextDrawingView;
      v45 = *&v1[OBJC_IVAR____TtC16MusicApplication9BrickCell_headlineTextDrawingView];
      v175 = v166;
      v176 = v167;
      v177 = v168;
      v178 = v169;
      v171 = v162;
      v172 = v163;
      v173 = v164;
      v174 = v165;
      UIScreen.Dimensions.size.getter();
      v183[4] = v175;
      v183[5] = v176;
      v183[6] = v177;
      v183[7] = v178;
      v183[0] = v171;
      v183[1] = v172;
      v183[2] = v173;
      v183[3] = v174;
      v46 = v45;
      sub_109B04(v159, v161);
      TextDrawing.View.textDrawingContext.setter(v183);

      v186.origin.x = v4;
      v186.origin.y = v6;
      v186.size.width = v8;
      v186.size.height = v10;
      CGRectGetMinX(v186);
      v187.origin.y = v6 + v19;
      v187.origin.x = v4;
      v187.size.width = v8;
      v187.size.height = v10 - v19;
      CGRectGetMinY(v187);
      v47 = *&v1[v44];
      v48 = v8;
      sub_ABA490();
      [v47 setFrame:?];

      [*&v1[v44] frame];
      rect = CGRectGetMaxY(v188);
      [*&v1[v44] frame];
      v27 = v27 - CGRectGetHeight(v189);
      [*&v1[v44] setHidden:0];
      sub_109AB0(v159);
      sub_2F174(v184);
    }

    else
    {
      v49 = *&v1[OBJC_IVAR____TtC16MusicApplication9BrickCell_headlineTextDrawingView];

      [v49 setHidden:1];
      v48 = v8;
      rect = v6 + v19;
    }

    v50 = *(v115 + 1);
    swift_beginAccess();
    v51 = *(v50 + 112);
    v52 = *(v50 + 120);
    swift_beginAccess();
    v54 = *(v50 + 48);
    v53 = *(v50 + 64);
    v55 = *(v50 + 96);
    v157[3] = *(v50 + 80);
    v157[4] = v55;
    v157[1] = v54;
    v157[2] = v53;
    v157[0] = *(v50 + 32);
    v156 = *(v50 + 80);
    v56 = *(v50 + 48);
    v57 = *(v50 + 64);
    v153 = *(v50 + 32);
    v154 = v56;
    v155 = v57;
    v58 = *(v50 + 96);
    v152 = v58;
    v109 = OBJC_IVAR____TtC16MusicApplication9BrickCell_layoutStyle;
    if (v1[OBJC_IVAR____TtC16MusicApplication9BrickCell_layoutStyle])
    {
      v59 = 1;
    }

    else
    {
      v59 = 2;
    }

    v179[2] = v155;
    v179[1] = v154;
    v179[0] = v153;
    v180 = v156;
    v113 = v59;
    v181 = v59;
    v182 = v58;
    v60 = v25[4];
    v61 = *(v25 + 5);
    v62 = *(v25 + 8);
    v63 = *(v25 + 9);
    v64 = *(v25 + 10);
    v65 = *(v25 + 11);

    sub_2F118(v157, &v171);
    v66 = v61;
    sub_108594(v51, v52, v179, v66, v62, v63, v64, v65, v160, v48, v27, v60);
    v140 = v160[4];
    v141 = v160[5];
    v142 = v160[6];
    v143 = v160[7];
    v136 = v160[0];
    v137 = v160[1];
    v138 = v160[2];
    v139 = v160[3];

    v67 = OBJC_IVAR____TtC16MusicApplication9BrickCell_titleTextDrawingView;
    v68 = *&v1[OBJC_IVAR____TtC16MusicApplication9BrickCell_titleTextDrawingView];
    v148 = v140;
    v149 = v141;
    v150 = v142;
    v151 = v143;
    v144 = v136;
    v145 = v137;
    v146 = v138;
    v147 = v139;
    UIScreen.Dimensions.size.getter();
    v175 = v140;
    v176 = v141;
    v177 = v142;
    v178 = v143;
    v171 = v136;
    v172 = v137;
    v173 = v138;
    v174 = v139;
    v69 = v68;
    sub_109B04(v160, &v162);
    TextDrawing.View.textDrawingContext.setter(&v171);

    v190.origin.x = v4;
    v190.origin.y = v6;
    v190.size.width = v48;
    v190.size.height = v112;
    CGRectGetMinX(v190);
    v191.origin.x = v4;
    v191.origin.y = rect;
    v191.size.width = v48;
    v191.size.height = v27;
    CGRectGetMinY(v191);
    v70 = *&v1[v67];
    sub_ABA490();
    [v70 setFrame:?];

    v26 = &selRef__authenticateReturningError_;
    [*&v1[v67] frame];
    MaxY = CGRectGetMaxY(v192);
    [*&v1[v67] frame];
    Height = CGRectGetHeight(v193);
    v11 = v114;
    if (v1[v109] == 1)
    {
      v73 = *(v115 + 3);
      if (v73 >> 62)
      {
        v94 = Height;
        v95 = sub_ABB060();
        Height = v94;
        if (v95 == 3)
        {
          goto LABEL_13;
        }
      }

      else if (*(&dword_10 + (v73 & 0xFFFFFFFFFFFFFF8)) == 3)
      {
LABEL_13:
        recta = v27 - Height;
        v74 = *(v115 + 2);
        swift_beginAccess();
        v75 = *(v74 + 120);
        v109 = *(v74 + 112);
        swift_beginAccess();
        v76 = *(v74 + 48);
        v77 = *(v74 + 64);
        v78 = *(v74 + 80);
        v170[4] = *(v74 + 96);
        v170[3] = v78;
        v170[2] = v77;
        v79 = *(v74 + 32);
        v170[1] = v76;
        v170[0] = v79;
        v80 = v25[4];
        v81 = *(v25 + 5);
        v82 = *(v25 + 8);
        v83 = *(v25 + 9);
        v84 = *(v25 + 10);
        v85 = *(v25 + 11);

        sub_2F118(v170, &v162);
        v86 = v81;
        v87 = v83;
        v26 = &selRef__authenticateReturningError_;
        sub_108594(v109, v75, v170, v86, v82, v87, v84, v85, v161, v8, recta, v80);
        v124 = v161[4];
        v125 = v161[5];
        v126 = v161[6];
        v127 = v161[7];
        v120 = v161[0];
        v121 = v161[1];
        v122 = v161[2];
        v123 = v161[3];

        v88 = OBJC_IVAR____TtC16MusicApplication9BrickCell_subtitleTextDrawingView;
        v89 = *&v1[OBJC_IVAR____TtC16MusicApplication9BrickCell_subtitleTextDrawingView];
        v132 = v124;
        v133 = v125;
        v134 = v126;
        v135 = v127;
        v128 = v120;
        v129 = v121;
        v130 = v122;
        v131 = v123;
        UIScreen.Dimensions.size.getter();
        v166 = v124;
        v167 = v125;
        v168 = v126;
        v169 = v127;
        v162 = v120;
        v163 = v121;
        v164 = v122;
        v165 = v123;
        v90 = v89;
        sub_109B04(v161, v116);
        TextDrawing.View.textDrawingContext.setter(&v162);

        v194.origin.x = v4;
        v194.origin.y = v6;
        v194.size.width = v8;
        v194.size.height = v112;
        CGRectGetMinX(v194);
        v195.origin.x = v4;
        v195.origin.y = MaxY;
        v195.size.width = v8;
        v195.size.height = recta;
        CGRectGetMinY(v195);
        v91 = *&v1[v88];
        sub_ABA490();
        [v91 setFrame:?];

        v92 = *&v1[v88];
        v11 = v114;
        v93 = v92;
        [v93 setHidden:0];
        sub_109AB0(v161);
        sub_109AB0(v160);
        v116[0] = v153;
        v116[1] = v154;
        v116[2] = v155;
        v117 = v156;
        v118 = v113;
        v119 = v152;
        sub_2F174(v116);

        sub_2F174(v170);

        goto LABEL_16;
      }
    }

    v96 = *&v1[OBJC_IVAR____TtC16MusicApplication9BrickCell_subtitleTextDrawingView];
    [v96 setHidden:1];
    sub_109AB0(v160);
    v162 = v153;
    v163 = v154;
    v164 = v155;
    *&v165 = v156;
    *(&v165 + 1) = v113;
    v166 = v152;
    sub_2F174(&v162);
  }

LABEL_16:
  [*(v15 + 112) v26[107]];
  v98 = v97;
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v105 = [*(v15 + 112) layer];
  [v105 cornerRadius];
  v107 = v106;

  v108 = [objc_opt_self() effectWithRoundedRect:kCACornerCurveContinuous cornerRadius:v98 curve:{v100, v102, v104, v107}];
  [v1 setFocusEffect:v108];
}

void sub_41181C(void *a1)
{
  v2 = v1;
  v16.receiver = v1;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  [v4 displayScale];

  if (a1)
  {
    [a1 displayScale];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBA30, &qword_B016E0);
  sub_8A2B8();
  if (sub_AB38D0())
  {
    [v2 setNeedsLayout];
  }

  v5 = [v2 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_11:
    v13 = *&v2[OBJC_IVAR____TtC16MusicApplication9BrickCell_textComponents];
    swift_beginAccess();
    *(v13 + 96) = 0x4034000000000000;

    sub_2EB2A8();

    [v2 setNeedsLayout];
    v14 = *&v2[OBJC_IVAR____TtC16MusicApplication9BrickCell_layoutInvalidationHandler];
    if (v14)
    {
      v15 = *&v2[OBJC_IVAR____TtC16MusicApplication9BrickCell_layoutInvalidationHandler + 8];

      v14(v2);
      sub_17654(v14, v15);
    }

    return;
  }

  v7 = [a1 preferredContentSizeCategory];
  v8 = sub_AB92A0();
  v10 = v9;
  if (v8 == sub_AB92A0() && v10 == v11)
  {

    return;
  }

  v12 = sub_ABB3C0();

  if ((v12 & 1) == 0)
  {
    goto LABEL_11;
  }
}

void sub_411BB8(char a1)
{
  v2 = a1 & 1;
  ObjectType = swift_getObjectType();
  v9.receiver = v1;
  v9.super_class = ObjectType;
  if (objc_msgSendSuper2(&v9, "isHighlighted") != v2)
  {
    v4 = *(*&v1[OBJC_IVAR____TtC16MusicApplication9BrickCell_artworkComponent] + 112);
    v8.receiver = v1;
    v8.super_class = ObjectType;
    v5 = v4;
    v6 = 2;
    if ((objc_msgSendSuper2(&v8, "isHighlighted") & 1) == 0)
    {
      v7.receiver = v1;
      v7.super_class = ObjectType;
      if (objc_msgSendSuper2(&v7, "isSelected"))
      {
        v6 = 2;
      }

      else
      {
        v6 = 0;
      }
    }

    [v5 setDrawMode:v6];
  }
}

void sub_411CAC(void *a1, uint64_t a2, uint64_t a3, const char **a4, SEL *a5, void (*a6)(id))
{
  ObjectType = swift_getObjectType();
  v16.receiver = a1;
  v16.super_class = ObjectType;
  v12 = *a4;
  v13 = a1;
  v14 = objc_msgSendSuper2(&v16, v12);
  v15.receiver = v13;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, *a5, a3);
  a6(v14);
}

void sub_411D44(char a1)
{
  v2 = a1 & 1;
  ObjectType = swift_getObjectType();
  v9.receiver = v1;
  v9.super_class = ObjectType;
  if (objc_msgSendSuper2(&v9, "isSelected") != v2)
  {
    v4 = *(*&v1[OBJC_IVAR____TtC16MusicApplication9BrickCell_artworkComponent] + 112);
    v8.receiver = v1;
    v8.super_class = ObjectType;
    v5 = v4;
    if ((objc_msgSendSuper2(&v8, "isHighlighted") & 1) != 0 || (v7.receiver = v1, v7.super_class = ObjectType, objc_msgSendSuper2(&v7, "isSelected")))
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    [v5 setDrawMode:v6];

    sub_411E10();
  }
}

void sub_411E10()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  if (objc_msgSendSuper2(&v17, "isSelected"))
  {
    sub_AB9EA0();
    v2 = v1;
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    v10[2] = v0;
    v10[3] = v2;
    v10[4] = v4;
    v10[5] = v6;
    v10[6] = v8;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_412D5C;
    *(v11 + 24) = v10;
    v16[4] = sub_2D4D0;
    v16[5] = v11;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_1822E0;
    v16[3] = &block_descriptor_134;
    v12 = _Block_copy(v16);
    v13 = v0;

    [v9 performWithoutAnimation:v12];
    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v15 = sub_411FDC();
  [v15 removeFromSuperview];
}

id sub_411FDC()
{
  v1 = OBJC_IVAR____TtC16MusicApplication9BrickCell____lazy_storage___selectedIndicatorView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication9BrickCell____lazy_storage___selectedIndicatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication9BrickCell____lazy_storage___selectedIndicatorView);
  }

  else
  {
    v4 = [objc_opt_self() systemLightGrayColor];
    v5 = [objc_allocWithZone(UIView) init];
    v6 = [v5 layer];
    [v6 setCornerCurve:kCACornerCurveContinuous];

    [v5 setBackgroundColor:v4];
    v7 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_4120CC(char *a1, double a2, double a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  __chkstk_darwin();
  v6 = sub_411FDC();
  v7 = [a1 contentView];
  sub_ABA5E0();
  sub_ABA6A0();

  v8 = OBJC_IVAR____TtC16MusicApplication9BrickCell____lazy_storage___selectedIndicatorView;
  v9 = *&a1[OBJC_IVAR____TtC16MusicApplication9BrickCell____lazy_storage___selectedIndicatorView];
  v10 = [a1 contentView];
  [v10 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v9 setFrame:{UIEdgeInsetsInsetRect(v12, v14, v16, v18, a2, a3)}];
  return [a1 insertSubview:*&a1[v8] atIndex:0];
}

void sub_412254()
{
  v1 = OBJC_IVAR____TtC16MusicApplication9BrickCell_isDisabled;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication9BrickCell_isDisabled);
  v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication9BrickCell_headlineTextDrawingView);
  v4 = 1.0;
  v5 = 1.0;
  if (v2 == 1)
  {
    UIInterfaceGetContentDisabledAlpha();
  }

  [v3 setAlpha:v5];

  v6 = *(v0 + v1);
  v7 = *(v0 + OBJC_IVAR____TtC16MusicApplication9BrickCell_titleTextDrawingView);
  if (v6 == 1)
  {
    UIInterfaceGetContentDisabledAlpha();
    v4 = v8;
  }

  [v7 setAlpha:v4];

  v9 = *(v0 + v1);
  v11 = *(v0 + OBJC_IVAR____TtC16MusicApplication9BrickCell_subtitleTextDrawingView);
  v10 = 1.0;
  if (v9 == 1)
  {
    UIInterfaceGetContentDisabledAlpha();
  }

  [v11 setAlpha:v10];
}

unint64_t sub_4124D8()
{
  result = qword_E059F8;
  if (!qword_E059F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E059F8);
  }

  return result;
}

double sub_41252C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC16MusicApplication9BrickCell_artworkCachingReference) = a1;

  *(*(v1 + OBJC_IVAR____TtC16MusicApplication9BrickCell_artworkComponent) + 16) = a1;

  return result;
}

double sub_4125BC()
{
  swift_beginAccess();

  return result;
}

double sub_412604(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication9BrickCell_textDrawingCache;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_4126C0()
{
  sub_89F60();
  v0 = sub_ABA550();
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v1 = qword_E718C8;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 clearColor];
  v26 = v1;
  *&v39[0] = v1;
  *(&v39[0] + 1) = v4;
  v39[1] = xmmword_AF7C20;
  v39[2] = xmmword_AF82C0;
  v40 = v0;
  v41 = 1;
  v42 = xmmword_AF7C30;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v5 = TextStackView.Component.init(identifier:labelProperties:)(0x656E696C64616568, 0xE800000000000000, v39);
  v6 = objc_opt_self();
  v23 = v3;
  v25 = v4;
  v22 = v4;
  v21 = v0;
  sub_2F118(v39, v57);
  v24 = v5;

  v7 = [v6 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v20 = v0;
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v8 = qword_E718D8;
  v9 = qword_E718D8;
  v10 = [v2 clearColor];
  *&v33[0] = v8;
  *(&v33[0] + 1) = v10;
  v33[1] = xmmword_AF7C20;
  v34 = 0;
  v35 = 0;
  v36 = v7;
  v37 = 1;
  v38 = xmmword_AF9C80;
  swift_allocObject();
  v11 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v33);
  v19 = v9;
  v18 = v10;
  v17 = v7;
  sub_2F118(v33, v57);

  v12 = [v6 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v13 = [v2 clearColor];
  *&v27[0] = v1;
  *(&v27[0] + 1) = v13;
  v27[1] = xmmword_AF7C20;
  v28 = 0;
  v29 = 0;
  v30 = v12;
  v31 = 1;
  v32 = xmmword_B0E410;
  swift_allocObject();
  v14 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_AF82E0;
  *(v15 + 32) = v24;
  *(v15 + 40) = v11;
  *(v15 + 48) = v14;
  sub_2F118(v27, v57);

  v43[0] = v26;
  v43[1] = v13;
  v44 = xmmword_AF7C20;
  v45 = 0;
  v46 = 0;
  v47 = v12;
  v48 = 1;
  v49 = xmmword_B0E410;
  sub_2F174(v43);
  v50[0] = v8;
  v50[1] = v10;
  v51 = xmmword_AF7C20;
  v52 = 0;
  v53 = 0;
  v54 = v7;
  v55 = 1;
  v56 = xmmword_AF9C80;
  sub_2F174(v50);
  v57[0] = v26;
  v57[1] = v25;
  v58 = xmmword_AF7C20;
  v59 = xmmword_AF82C0;
  v60 = v20;
  v61 = 1;
  v62 = xmmword_AF7C30;
  sub_2F174(v57);

  return v24;
}

double sub_412B34(void *a1, double a2)
{
  sub_4126C0();
  v5 = v4;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF7C50;
  *(inited + 32) = v5;
  *(inited + 40) = v7;
  type metadata accessor for CGSize(0);
  v14 = xmmword_B0E420;
  v12 = 0uLL;

  if (sub_AB38D0() & 1) != 0 || (type metadata accessor for UIEdgeInsets(0), v14 = 0u, v15 = 0u, v12 = *&UIEdgeInsetsZero.top, v13 = *&UIEdgeInsetsZero.bottom, v9 = 0.0, (sub_AB38D0()))
  {
    v10 = 540.0;
    if (a2 <= 540.0)
    {
      v10 = a2;
    }

    v9 = v10 + 0.0;
    [a1 displayScale];
    sub_AB3A00();
    [a1 displayScale];
    sub_AB3A00();
  }

  sub_2F48A4(inited, a1, 0, 0);
  swift_setDeallocating();
  swift_arrayDestroy();

  return v9;
}

uint64_t sub_412D24()
{

  return swift_deallocObject();
}

double block_copy_helper_134(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_412D94()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication9BrickCell_headline);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication9BrickCell_title);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtC16MusicApplication9BrickCell_subtitle);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication9BrickCell_lockupImageArtworkCatalog) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication9BrickCell_layoutStyle) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication9BrickCell_artworkCachingReference) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication9BrickCell_textDrawingCache) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication9BrickCell_isDisabled) = 0;
  v5 = OBJC_IVAR____TtC16MusicApplication9BrickCell_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v7 = sub_80104(v6);

  *(v1 + v5) = v7;
  v8 = (v1 + OBJC_IVAR____TtC16MusicApplication9BrickCell_textComponents);
  *v8 = sub_4126C0();
  v8[1] = v9;
  v8[2] = v10;
  v8[3] = v11;
  v12 = OBJC_IVAR____TtC16MusicApplication9BrickCell_headlineTextDrawingView;
  type metadata accessor for TextDrawing.View();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v12) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v14 = OBJC_IVAR____TtC16MusicApplication9BrickCell_titleTextDrawingView;
  *(v1 + v14) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v15 = OBJC_IVAR____TtC16MusicApplication9BrickCell_subtitleTextDrawingView;
  *(v1 + v15) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v1 + OBJC_IVAR____TtC16MusicApplication9BrickCell____lazy_storage___selectedIndicatorView) = 0;
  v16 = (v1 + OBJC_IVAR____TtC16MusicApplication9BrickCell_layoutInvalidationHandler);
  *v16 = 0;
  v16[1] = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_412F58()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

BOOL sub_412F90(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != (a1 & 1));
  return v4 != 0;
}

BOOL sub_412FC0(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  if (a1)
  {
    v4 = 0x7972617262696CLL;
  }

  else
  {
    v4 = 0x676F6C61746163;
  }

  do
  {
    v5 = v2;
    if (v2-- == 0)
    {
      break;
    }

    if (*v3)
    {
      v7 = 0x7972617262696CLL;
    }

    else
    {
      v7 = 0x676F6C61746163;
    }

    if (v7 == v4)
    {
      swift_bridgeObjectRelease_n();
      return v5 != 0;
    }

    v8 = sub_ABB3C0();
    swift_bridgeObjectRelease_n();
    ++v3;
  }

  while ((v8 & 1) == 0);
  return v5 != 0;
}

char *sub_413088(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_userInterfaceComponents] = &off_CF1778;
  v5[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_isBottomHairlineHidden] = 1;
  v5[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_isTopHairlineHidden] = 1;
  v5[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_leadingHairlineAlignment] = 1;
  v5[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_trailingHairlineAlignment] = 1;
  v10 = &v5[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_playHandler];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v5[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_shuffleHandler];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v5[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_title];
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v5[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_shouldHide] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_textDrawingCache] = 0;
  v13 = &v5[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_layoutManager];
  *v13 = PlayIntentLayoutHelper.init()();
  *(v13 + 1) = v14;
  v13[16] = v15;
  v13[17] = v16;
  *(v13 + 3) = v17;
  v18 = &v5[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_textComponents];
  *v18 = sub_414398();
  v18[1] = v19;
  v18[2] = v20;
  v21 = OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_textStackView;
  type metadata accessor for TextStackView();
  *&v5[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22 = OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_bottomHairlineView;
  v23 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_DE6C70 != -1)
  {
    swift_once();
  }

  v24 = qword_E718B0;
  [v23 setBackgroundColor:qword_E718B0];
  [v23 setHidden:1];
  *&v5[v22] = v23;
  v25 = OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_topHairlineView;
  v26 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v26 setBackgroundColor:v24];
  [v26 setHidden:1];
  *&v5[v25] = v26;
  v47.receiver = v5;
  v47.super_class = type metadata accessor for PlayIntentControlsReusableView();
  v27 = objc_msgSendSuper2(&v47, "initWithFrame:", a2, a3, a4, a5);
  v28 = &v27[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_layoutManager];
  v29 = *&v27[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_layoutManager];
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = *(&stru_108.reloff + (swift_isaMask & *v29));
  v32 = v27;
  v33 = v29;

  v31(sub_4148B4, v30);

  v34 = *(v28 + 1);
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = *(&stru_108.reloff + (swift_isaMask & *v34));
  v37 = v34;

  v36(sub_4148D8, v35);

  [v32 addSubview:*&v32[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_topHairlineView]];
  result = [v32 addSubview:*&v32[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_bottomHairlineView]];
  v39 = OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_textStackView;
  v40 = *&v32[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_textStackView];
  v41 = *&v32[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_textComponents + 16];
  if (!(v41 >> 62))
  {
    v42 = *(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8));
    if (v42)
    {
      goto LABEL_5;
    }

LABEL_12:
    [v32 addSubview:*&v32[v39]];
    sub_413EB8();

    return v32;
  }

  result = sub_ABB060();
  v42 = result;
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v42 >= 1)
  {
    v43 = v40;

    for (i = 0; i != v42; ++i)
    {
      if ((v41 & 0xC000000000000001) != 0)
      {
        v46 = sub_36003C(i, v41, v44);
      }

      else
      {
        v46 = *(v41 + 8 * i + 32);
      }

      TextStackView.add(_:)(v46);
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_413554(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = &Strong[*a3];
    v7 = *v6;
    if (*v6)
    {
      v8 = v6[1];
      sub_307CC(*v6, v8);

      v7();
      sub_17654(v7, v8);
    }

    else
    {
    }
  }
}

void sub_413638()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_textComponents];
  v4 = *&v1[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_title];
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_title + 8];
  swift_beginAccess();
  *(v2 + 112) = v4;
  *(v2 + 120) = v3;

  sub_2EB704();

  v5 = *&v1[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_userInterfaceComponents];
  v6 = *(v5 + 16);
  v7 = (v5 + 32);
  while (v6)
  {
    v8 = *v7++;
    --v6;
    if (v8 == 1)
    {
      [v1 setNeedsLayout];
      return;
    }
  }
}

id sub_41376C(uint64_t a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for PlayIntentControlsReusableView();
  objc_msgSendSuper2(&v9, "prepareForReuse");
  v2 = &v1[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_playHandler];
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_playHandler];
  v4 = *&v1[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_playHandler + 8];
  *v2 = 0;
  *(v2 + 1) = 0;
  sub_17654(v3, v4);
  sub_413EB8();
  [v1 setNeedsLayout];
  v5 = &v1[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_shuffleHandler];
  v6 = *&v1[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_shuffleHandler];
  v7 = *&v1[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_shuffleHandler + 8];
  *v5 = 0;
  *(v5 + 1) = 0;
  sub_17654(v6, v7);
  sub_413EB8();
  return [v1 setNeedsLayout];
}

id sub_413844(uint64_t a1)
{
  v68.receiver = v1;
  v68.super_class = type metadata accessor for PlayIntentControlsReusableView();
  objc_msgSendSuper2(&v68, "layoutSubviews");
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v1 traitCollection];
  [v10 displayScale];
  v12 = v11;

  [v1 effectiveUserInterfaceLayoutDirection];
  [v1 music_inheritedLayoutInsets];
  if (v13 >= 12.0 || 12.0 == -1.0)
  {
    v16 = v13;
  }

  else
  {
    v16 = 12.0;
  }

  v17 = v14;
  v67 = v9;
  v18 = UIEdgeInsetsInsetRect(v3, v5, v7, v9, v16, v14);
  v22 = OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_userInterfaceComponents;
  v23 = *&v1[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_userInterfaceComponents];
  v24 = *(v23 + 16);
  v25 = (v23 + 32);
  v65 = v21;
  v66 = v19;
  v64 = v18;
  rect = v20;
  while (v24)
  {
    v26 = *v25++;
    --v24;
    if (v26)
    {
      v63 = v20;
      goto LABEL_14;
    }
  }

  v27 = v12;
  Width = CGRectGetWidth(*&v18);
  v29 = UIView.maxReadableContentWidth(for:)();
  if (v29 >= Width)
  {
    v29 = Width;
  }

  v12 = v27;
  v63 = v29;
LABEL_14:
  if (v1[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_leadingHairlineAlignment])
  {
    v30 = v17;
  }

  else
  {
    v30 = 0.0;
  }

  v31 = UIEdgeInsetsInsetRect(v3, v5, v7, v9, UIEdgeInsetsZero.top, v30);
  v33 = v32;
  v35 = v34;
  v36 = 1.0 / v12;
  v71.origin.x = v3;
  v71.origin.y = v5;
  v71.size.width = v7;
  v71.size.height = v67;
  Height = CGRectGetHeight(v71);
  v72.origin.x = v31;
  v72.origin.y = v33;
  v72.size.width = v35;
  v72.size.height = v36;
  v38 = Height - CGRectGetHeight(v72);
  v73.origin.x = v31;
  v73.origin.y = v33;
  v73.size.width = v35;
  v73.size.height = v36;
  CGRectOffset(v73, 0.0, v38);
  v39 = OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_topHairlineView;
  v40 = *&v1[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_topHairlineView];
  sub_ABA490();
  [v40 setFrame:?];

  v41 = OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_bottomHairlineView;
  v42 = *&v1[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_bottomHairlineView];
  sub_ABA490();
  [v42 setFrame:?];

  v43 = *&v1[v22];
  v44 = *(v43 + 16);
  v45 = (v43 + 32);
  while (v44)
  {
    v46 = *v45++;
    --v44;
    if (v46 == 1)
    {
      v47 = *&v1[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_textStackView];
      [v47 sizeThatFits:{v63, v65}];
      v49 = v48;
      v74.origin.x = v64;
      v74.origin.y = v66;
      v74.size.width = v63;
      v74.size.height = v65;
      v50 = CGRectGetHeight(v74);
      sub_ABA490();
      [v47 setFrame:?];
      v75.origin.x = v64;
      v75.origin.y = v66;
      v75.size.width = v49;
      v75.size.height = v50;
      v51 = CGRectGetMaxX(v75) + *&v1[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_layoutManager + 24];
      v76.origin.x = v51;
      v76.origin.y = v66;
      v76.size.width = v63;
      v76.size.height = v65;
      MinX = CGRectGetMinX(v76);
      v77.origin.x = v64;
      v77.origin.y = v66;
      v77.size.width = rect;
      v77.size.height = v65;
      v53 = v63 - (MinX - CGRectGetMinX(v77));
      v54 = v51;
      goto LABEL_22;
    }
  }

  v53 = v63;
  v54 = v64;
LABEL_22:
  v55 = *&v1[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_layoutManager];
  v56 = *&v1[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_layoutManager + 8];
  v57 = *&v1[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_layoutManager + 24];
  v69[0] = v54;
  v69[1] = v66;
  v69[2] = v53;
  v69[3] = v65;
  v70 = 0;
  v58 = *&v1[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_layoutManager + 16];
  v59 = v55;
  v60 = v56;
  PlayIntentLayoutHelper.layout(in:rect:)(v1, v69, v59, v60, v58, v57);

  [v1 bringSubviewToFront:*&v1[v39]];
  return [v1 bringSubviewToFront:*&v1[v41]];
}

void sub_413D48(void *a1)
{
  v2 = v1;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for PlayIntentControlsReusableView();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v4 = [v2 traitCollection];
  if (v4)
  {
    v5 = v4;
    if (a1)
    {
      sub_13C80(0, &qword_E00AB0, UITraitCollection_ptr);
      v6 = a1;
      v7 = sub_ABA790();

      if (v7)
      {
        return;
      }
    }

    else
    {
    }

LABEL_8:
    [v2 setNeedsLayout];
    return;
  }

  if (a1)
  {
    goto LABEL_8;
  }
}

id sub_413EB8()
{
  v1 = OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_userInterfaceComponents;
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_userInterfaceComponents];
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  do
  {
    v5 = v3;
    v6 = v3-- != 0;
    if (!v6)
    {
      break;
    }

    v7 = *v4++;
  }

  while (v7 != 1);
  [*&v0[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_textStackView] setHidden:v5 == 0];
  __chkstk_darwin();
  v8 = static PlayIntentLayoutHelper.Configuration.with(_:)(sub_414378);
  v9 = &v0[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_layoutManager];
  *(v9 + 8) = v8;
  *(v9 + 3) = v10;
  [v0 setNeedsLayout];
  v11 = *&v0[v1];
  v12 = *(v11 + 16);
  v13 = (v11 + 32);
  do
  {
    v14 = v12;
    v6 = v12-- != 0;
    if (!v6)
    {
      break;
    }

    v15 = *v13++;
  }

  while ((v15 & 1) != 0);
  v16 = v14 == 0;
  v17 = v14 != 0;
  v18 = *(&stru_1F8.flags + (swift_isaMask & **v9));
  v19 = *v9;
  v18(v17, 0);

  [*v9 setHidden:v16];
  v20 = *(v9 + 1);
  v21 = *(&stru_1F8.flags + (swift_isaMask & *v20));
  v22 = v20;
  v21(v17, 0);

  return [*(v9 + 1) setHidden:v16];
}

id sub_4140A0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PlayIntentControlsReusableView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_414228()
{
  result = qword_E05AA0;
  if (!qword_E05AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E05AA0);
  }

  return result;
}

unint64_t sub_414280()
{
  result = qword_E05AA8;
  if (!qword_E05AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E05AA8);
  }

  return result;
}

double sub_4142D4(uint64_t a1, double a2)
{
  v3 = [objc_opt_self() defaultMetrics];
  sub_AB9EF0();

  return a2;
}

char *sub_414378(char *result)
{
  if (*(v1 + 16))
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (*(v1 + 16))
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  *result = v2;
  result[1] = v3;
  return result;
}

uint64_t sub_414398()
{
  sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
  v0 = sub_ABA560();
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 systemGrayColor];
  v4 = [v1 clearColor];
  *&v9[0] = v3;
  *(&v9[0] + 1) = v4;
  v9[1] = xmmword_AF7C20;
  v10 = 0;
  v11 = 0;
  v12 = v2;
  v13 = 1;
  v14 = xmmword_AF7C40;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v5 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_AF82B0;
  *(v6 + 32) = v5;
  v15[0] = v3;
  v15[1] = v4;
  v16 = xmmword_AF7C20;
  v17 = 0;
  v18 = 0;
  v19 = v2;
  v20 = 1;
  v21 = xmmword_AF7C40;
  sub_2F118(v9, v8);

  sub_2F174(v15);
  return v5;
}

void sub_41452C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_userInterfaceComponents) = &off_CF17A0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_isBottomHairlineHidden) = 1;
  *(v1 + OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_isTopHairlineHidden) = 1;
  *(v1 + OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_leadingHairlineAlignment) = 1;
  *(v1 + OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_trailingHairlineAlignment) = 1;
  v2 = (v1 + OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_playHandler);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v1 + OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_shuffleHandler);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v1 + OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_title);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_shouldHide) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_textDrawingCache) = 0;
  v5 = v1 + OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_layoutManager;
  *v5 = PlayIntentLayoutHelper.init()();
  *(v5 + 8) = v6;
  *(v5 + 16) = v7;
  *(v5 + 17) = v8;
  *(v5 + 24) = v9;
  v10 = (v1 + OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_textComponents);
  *v10 = sub_414398();
  v10[1] = v11;
  v10[2] = v12;
  v13 = OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_textStackView;
  type metadata accessor for TextStackView();
  *(v1 + v13) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_bottomHairlineView;
  v15 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_DE6C70 != -1)
  {
    swift_once();
  }

  v16 = qword_E718B0;
  [v15 setBackgroundColor:qword_E718B0];
  [v15 setHidden:1];
  *(v1 + v14) = v15;
  v17 = OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_topHairlineView;
  v18 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v18 setBackgroundColor:v16];
  [v18 setHidden:1];
  *(v1 + v17) = v18;
  sub_ABAFD0();
  __break(1u);
}

id sub_414770(id a1)
{
  if ((*(v1 + OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_shouldHide) & 1) == 0)
  {
    v3 = [v1 traitCollection];
    [v1 bounds];
    v4 = [objc_opt_self() defaultMetrics];
    sub_AB9EF0();
  }

  [a1 size];
  [a1 setSize:?];
  return a1;
}

uint64_t sub_41487C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

double sub_4148FC@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE570, &qword_B0E730);
  __chkstk_darwin();
  v4 = &v10[-v3];
  sub_15F84(v1 + 24, v10, &unk_DE8E40, &unk_AF8050);
  if (v11)
  {
    v5 = _s23MusicPerformanceContextVMa(0);
    v6 = swift_dynamicCast();
    v7 = *(v5 - 8);
    (*(v7 + 56))(v4, v6 ^ 1u, 1, v5);
    if ((*(v7 + 48))(v4, 1, v5) != 1)
    {
      sub_15F84(v4, a1, &unk_DEA520, &unk_AFDBF0);
      sub_2AC2C4(v4, _s23MusicPerformanceContextVMa);
      return result;
    }
  }

  else
  {
    sub_12E1C(v10, &unk_DE8E40, &unk_AF8050);
    v9 = _s23MusicPerformanceContextVMa(0);
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  }

  sub_12E1C(v4, &unk_DEE570, &qword_B0E730);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return result;
}

double sub_414AFC@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE570, &qword_B0E730);
  __chkstk_darwin();
  v4 = &v10[-v3];
  sub_15F84(v1 + 24, v10, &unk_DE8E40, &unk_AF8050);
  if (v11)
  {
    v5 = _s23MusicPerformanceContextVMa(0);
    v6 = swift_dynamicCast();
    v7 = *(v5 - 8);
    (*(v7 + 56))(v4, v6 ^ 1u, 1, v5);
    if ((*(v7 + 48))(v4, 1, v5) != 1)
    {
      sub_15F84((v4 + 104), a1, &unk_DE8E30, "\b]\r");
      sub_2AC2C4(v4, _s23MusicPerformanceContextVMa);
      return result;
    }
  }

  else
  {
    sub_12E1C(v10, &unk_DE8E40, &unk_AF8050);
    v9 = _s23MusicPerformanceContextVMa(0);
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  }

  sub_12E1C(v4, &unk_DEE570, &qword_B0E730);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_414D20(void *a1, void (*a2)(uint64_t *))
{
  v4 = _s23MusicPerformanceContextVMa(0);
  __chkstk_darwin();
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v15 = xmmword_AF7710;
  PresentationSource.init(windowScene:position:)(a1, v13, v12);
  sub_15F84(v12, v11, &unk_DEA520, &unk_AFDBF0);
  *(v6 + 104) = 0u;
  *(v6 + 120) = 0u;
  *(v6 + 17) = 0;
  v7 = *(v4 + 28);
  v8 = type metadata accessor for PlaybackIntentDescriptor(0);
  (*(*(v8 - 8) + 56))(&v6[v7], 1, 1, v8);
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 8) = 1;
  *(v6 + 9) = 0;
  *(v6 + 10) = 0;
  *(v6 + 11) = 0;
  sub_160B4(v11, v6, &unk_DEA520, &unk_AFDBF0);
  *(v6 + 12) = 0;
  v11[3] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  sub_2D604(v6, boxed_opaque_existential_0);
  a2(v11);
  sub_2AC2C4(v6, _s23MusicPerformanceContextVMa);
  sub_12E1C(v12, &unk_DEA520, &unk_AFDBF0);
  return __swift_destroy_boxed_opaque_existential_0(v11);
}

void *sub_414F14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE570, &qword_B0E730);
  __chkstk_darwin();
  v2 = &v10[-v1];
  sub_15F84(v0 + 24, v10, &unk_DE8E40, &unk_AF8050);
  if (v11)
  {
    v3 = _s23MusicPerformanceContextVMa(0);
    v4 = swift_dynamicCast();
    v5 = *(v3 - 8);
    (*(v5 + 56))(v2, v4 ^ 1u, 1, v3);
    if ((*(v5 + 48))(v2, 1, v3) != 1)
    {
      v6 = *(v2 + 12);
      v7 = v6;
      sub_2AC2C4(v2, _s23MusicPerformanceContextVMa);
      return v6;
    }
  }

  else
  {
    sub_12E1C(v10, &unk_DE8E40, &unk_AF8050);
    v9 = _s23MusicPerformanceContextVMa(0);
    (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  }

  sub_12E1C(v2, &unk_DEE570, &qword_B0E730);
  return 0;
}

uint64_t sub_4150EC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE570, &qword_B0E730);
  __chkstk_darwin();
  v4 = &v11[-v3];
  sub_15F84(v1 + 24, v11, &unk_DE8E40, &unk_AF8050);
  if (v12)
  {
    v5 = _s23MusicPerformanceContextVMa(0);
    v6 = swift_dynamicCast();
    v7 = *(v5 - 8);
    (*(v7 + 56))(v4, v6 ^ 1u, 1, v5);
    if ((*(v7 + 48))(v4, 1, v5) != 1)
    {
      sub_15F84(&v4[*(v5 + 28)], a1, &unk_DEA510, "\b]\r");
      return sub_2AC2C4(v4, _s23MusicPerformanceContextVMa);
    }
  }

  else
  {
    sub_12E1C(v11, &unk_DE8E40, &unk_AF8050);
    v9 = _s23MusicPerformanceContextVMa(0);
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  }

  sub_12E1C(v4, &unk_DEE570, &qword_B0E730);
  v10 = type metadata accessor for PlaybackIntentDescriptor(0);
  return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
}

uint64_t sub_415318(void *a1)
{
  v2 = _s23MusicPerformanceContextVMa(0);
  __chkstk_darwin();
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v13 = xmmword_AF7710;
  PresentationSource.init(windowScene:position:)(a1, v11, v10);
  sub_15F84(v10, v9, &unk_DEA520, &unk_AFDBF0);
  *(v4 + 104) = 0u;
  *(v4 + 120) = 0u;
  *(v4 + 17) = 0;
  v5 = *(v2 + 28);
  v6 = type metadata accessor for PlaybackIntentDescriptor(0);
  (*(*(v6 - 8) + 56))(&v4[v5], 1, 1, v6);
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 8) = 1;
  *(v4 + 9) = 0;
  *(v4 + 10) = 0;
  *(v4 + 11) = 0;
  sub_160B4(v9, v4, &unk_DEA520, &unk_AFDBF0);
  *(v4 + 12) = 0;
  v9[3] = v2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v9);
  sub_2D604(v4, boxed_opaque_existential_0);
  JSInlineSocialUpsell.initiatePrimaryButtonSelection(with:)(v9);
  sub_2AC2C4(v4, _s23MusicPerformanceContextVMa);
  sub_12E1C(v10, &unk_DEA520, &unk_AFDBF0);
  return sub_12E1C(v9, &unk_DE8E40, &unk_AF8050);
}

uint64_t sub_4154DC(void *a1)
{
  v3 = _s23MusicPerformanceContextVMa(0);
  __chkstk_darwin();
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v14 = xmmword_AF7710;
  PresentationSource.init(windowScene:position:)(a1, v12, v11);
  sub_15F84(v11, v10, &unk_DEA520, &unk_AFDBF0);
  *(v5 + 104) = 0u;
  *(v5 + 120) = 0u;
  *(v5 + 17) = 0;
  v6 = *(v3 + 28);
  v7 = type metadata accessor for PlaybackIntentDescriptor(0);
  (*(*(v7 - 8) + 56))(&v5[v6], 1, 1, v7);
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 8) = 1;
  *(v5 + 9) = 0;
  *(v5 + 10) = 0;
  *(v5 + 11) = 0;
  sub_160B4(v10, v5, &unk_DEA520, &unk_AFDBF0);
  *(v5 + 12) = 0;
  v10[3] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v10);
  sub_2D604(v5, boxed_opaque_existential_0);
  (*&stru_2E8.sectname[swift_isaMask & *v1])(v10);
  sub_2AC2C4(v5, _s23MusicPerformanceContextVMa);
  sub_12E1C(v11, &unk_DEA520, &unk_AFDBF0);
  return sub_12E1C(v10, &unk_DE8E40, &unk_AF8050);
}

uint64_t sub_4156E4()
{
  type metadata accessor for MusicSeguePerformer();
  result = swift_initStaticObject();
  static MusicSeguePerformer.shared = result;
  return result;
}

uint64_t *MusicSeguePerformer.shared.unsafeMutableAddressor()
{
  if (qword_DE6B80 != -1)
  {
    swift_once();
  }

  return &static MusicSeguePerformer.shared;
}

uint64_t static MusicSeguePerformer.shared.getter()
{
  type metadata accessor for MusicSeguePerformer();

  return swift_initStaticObject();
}

double sub_4157B8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30, &unk_AF79A0);
  v3 = __chkstk_darwin();
  v5 = &v21 - v4;
  v6 = (*&stru_68.segname[(swift_isaMask & *v1) - 8])(v3);
  if (v6)
  {
    v8 = v6;
    sub_4148FC(v24);
    if (v25 == 1)
    {

      sub_12E1C(v24, &unk_DEA520, &unk_AFDBF0);
    }

    else
    {
      sub_17704(v24, v26);
      ObjectType = swift_getObjectType();
      v10 = swift_conformsToProtocol2();
      if (v10)
      {
        v11 = *(v10 + 16);
        v12 = v10;
        v13 = v8;
        v14 = v11(ObjectType, v12);
      }

      else
      {
        v14 = 0;
      }

      v15 = sub_AB9990();
      (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
      sub_15F28(v26, v24);
      sub_2D384(a1, v22);
      sub_AB9940();
      v16 = v14;
      v17 = v8;
      v18 = sub_AB9930();
      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      *(v19 + 24) = &protocol witness table for MainActor;
      *(v19 + 32) = v14;
      sub_17704(v24, v19 + 40);
      v20 = v22[1];
      *(v19 + 136) = v22[0];
      *(v19 + 152) = v20;
      *(v19 + 168) = v22[2];
      *(v19 + 184) = v23;
      *(v19 + 192) = v17;
      sub_DBDC8(0, 0, v5, &unk_B0E740, v19);

      sub_1611C(v26);
    }
  }

  return result;
}

uint64_t sub_415A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  sub_AB9940();
  v7[25] = sub_AB9930();
  v9 = sub_AB98B0();

  return _swift_task_switch(sub_415AEC, v9, v8);
}

uint64_t sub_415AEC()
{
  if (qword_DE6838 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 168);
  sub_2D384(*(v0 + 184), v0 + 112);
  sub_15F28(v2, v0 + 16);
  v4 = swift_allocObject();
  v5 = *(v0 + 128);
  *(v4 + 16) = *(v0 + 112);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 144);
  *(v4 + 64) = *(v0 + 160);
  *(v4 + 72) = v1;
  sub_17704(v0 + 16, v4 + 80);
  v6 = v1;
  sub_1109D4(v3, 0, 0, 1, v2, sub_417018, v4);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_415C2C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v8 = &v40 - v7;
  v9 = type metadata accessor for PlaybackIntentDescriptor(0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE570, &qword_B0E730);
  __chkstk_darwin();
  v14 = &v40 - v13;
  sub_15F84(a2 + 24, &v40, &unk_DE8E40, &unk_AF8050);
  if (!*(&v41 + 1))
  {
    sub_12E1C(&v40, &unk_DE8E40, &unk_AF8050);
    v22 = _s23MusicPerformanceContextVMa(0);
    (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
    goto LABEL_8;
  }

  v15 = _s23MusicPerformanceContextVMa(0);
  v16 = swift_dynamicCast();
  v17 = *(v15 - 8);
  (*(v17 + 56))(v14, v16 ^ 1u, 1, v15);
  if ((*(v17 + 48))(v14, 1, v15) == 1)
  {
LABEL_8:
    sub_12E1C(v14, &unk_DEE570, &qword_B0E730);
    v40 = 0u;
    v41 = 0u;
    v42 = 0;
    goto LABEL_9;
  }

  sub_15F84((v14 + 104), &v40, &unk_DE8E30, "\b]\r");
  sub_2AC2C4(v14, _s23MusicPerformanceContextVMa);
  if (!*(&v41 + 1))
  {
LABEL_9:
    result = sub_12E1C(&v40, &unk_DE8E30, "\b]\r");
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    _s30CollectionViewSelectionHandlerVMa(0);
    isa = sub_AB3770().super.isa;
    [v19 deselectItemAtIndexPath:isa animated:1];
  }

  result = __swift_destroy_boxed_opaque_existential_0(&v40);
LABEL_10:
  if (a1 == 1)
  {
    swift_getObjectType();
    v23 = swift_conformsToProtocol2();
    if (v23 && a3)
    {
      v24 = v23;
      ObjectType = swift_getObjectType();
      (*(v24 + 8))(ObjectType, v24);
      (*(v10 + 56))(v8, 0, 1, v9);
      sub_417028(v8, v12, type metadata accessor for PlaybackIntentDescriptor);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
      sub_28F80C(v12);
      if ((*(v10 + 48))(v8, 1, v9) != 1)
      {
        sub_12E1C(v8, &unk_DEA510, "\b]\r");
      }
    }

    v26 = swift_unknownObjectWeakLoadStrong();
    if (v26)
    {
      v27 = v26;
      v28 = UIViewController.playActivityInformation.getter();
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = PlaybackIntentDescriptor.IntentType.underlyingIntent.getter(v28, v29, v31, v33, v35);
      v37 = HIBYTE(v30) & 0xF;
      if ((v30 & 0x2000000000000000) == 0)
      {
        v37 = v28 & 0xFFFFFFFFFFFFLL;
      }

      if (v37)
      {

        v38 = sub_AB9260();
      }

      else
      {
        v38 = 0;
      }

      [v36 setPlayActivityFeatureName:{v38, v40, v41, v42}];

      if (v34 >> 60 == 15)
      {
        v39 = 0;
      }

      else
      {
        v39 = sub_AB3250().super.isa;
      }

      [v36 setPlayActivityRecommendationData:v39];

      sub_466A4(v32, v34);
    }

    sub_37D3DC(0);
    return sub_2AC2C4(v12, type metadata accessor for PlaybackIntentDescriptor);
  }

  return result;
}

uint64_t sub_4161A4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE570, &qword_B0E730);
  __chkstk_darwin();
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v17 - v5;
  __chkstk_darwin();
  v8 = &v17 - v7;
  __chkstk_darwin();
  v10 = &v17 - v9;
  sub_15F84(v1 + 24, &v17, &unk_DE8E40, &unk_AF8050);
  if (*(&v18 + 1))
  {
    v11 = _s23MusicPerformanceContextVMa(0);
    v12 = swift_dynamicCast();
    (*(*(v11 - 8) + 56))(v10, v12 ^ 1u, 1, v11);
  }

  else
  {
    sub_12E1C(&v17, &unk_DE8E40, &unk_AF8050);
    v11 = _s23MusicPerformanceContextVMa(0);
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  }

  _s23MusicPerformanceContextVMa(0);
  v13 = *(*(v11 - 8) + 48);
  if (v13(v10, 1, v11))
  {
    sub_15F84(v10, v6, &unk_DEE570, &qword_B0E730);
    sub_15F84(v6, v4, &unk_DEE570, &qword_B0E730);
    if (v13(v4, 1, v11) == 1)
    {
      sub_12E1C(a1, &unk_DEA520, &unk_AFDBF0);
      sub_12E1C(v6, &unk_DEE570, &qword_B0E730);
      sub_12E1C(v4, &unk_DEE570, &qword_B0E730);
      v17 = 0u;
      v18 = 0u;
    }

    else
    {
      *(&v18 + 1) = v11;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v17);
      sub_417028(v4, boxed_opaque_existential_0, _s23MusicPerformanceContextVMa);
      sub_12E1C(a1, &unk_DEA520, &unk_AFDBF0);
      sub_12E1C(v6, &unk_DEE570, &qword_B0E730);
    }

    sub_160B4(&v17, v1 + 24, &unk_DE8E40, &unk_AF8050);
    return sub_12E1C(v10, &unk_DEE570, &qword_B0E730);
  }

  else
  {
    sub_416D84(a1, v10);
    sub_15F84(v10, v8, &unk_DEE570, &qword_B0E730);
    if (v13(v8, 1, v11) == 1)
    {
      sub_12E1C(a1, &unk_DEA520, &unk_AFDBF0);
      sub_12E1C(v10, &unk_DEE570, &qword_B0E730);
      sub_12E1C(v8, &unk_DEE570, &qword_B0E730);
      v17 = 0u;
      v18 = 0u;
    }

    else
    {
      *(&v18 + 1) = v11;
      v16 = __swift_allocate_boxed_opaque_existential_0(&v17);
      sub_417028(v8, v16, _s23MusicPerformanceContextVMa);
      sub_12E1C(a1, &unk_DEA520, &unk_AFDBF0);
      sub_12E1C(v10, &unk_DEE570, &qword_B0E730);
    }

    return sub_160B4(&v17, v1 + 24, &unk_DE8E40, &unk_AF8050);
  }
}

void _s16MusicApplication0A14SeguePerformerC7perform_4withy0A6JSCore7JSSegueC_AH7ContextVtF_0(uint64_t a1, void **a2)
{
  v3 = sub_AB4BC0();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4157B8(a2);
  type metadata accessor for JSDeepLinkSegue();
  if (swift_dynamicCastClass())
  {
    sub_442154(a2);
  }

  else
  {
    type metadata accessor for JSImplicitDefaultSegue();
    if (swift_dynamicCastClass())
    {
      sub_2A9E7C(a2);
    }

    else
    {
      type metadata accessor for JSNoopSegue();
      if (!swift_dynamicCastClass())
      {
        type metadata accessor for JSPresentationSegue();
        if (swift_dynamicCastClass())
        {
          sub_2C148(a2);
        }

        else
        {
          type metadata accessor for JSPushSegue();
          if (swift_dynamicCastClass())
          {
            sub_3E424C();
          }

          else
          {
            type metadata accessor for JSRedirectSegue(0);
            if (swift_dynamicCastClass())
            {
              sub_1EC354(a2);
            }

            else
            {
              type metadata accessor for JSSocialNetworkAuthSegue();
              if (swift_dynamicCastClass())
              {
                sub_269410(a2);
              }

              else
              {
                type metadata accessor for JSStoreFlowSegue(0);
                if (swift_dynamicCastClass())
                {
                  sub_D6A04(a2);
                }

                else
                {
                  type metadata accessor for JSSubscriptionPurchaseSegue(0);
                  if (swift_dynamicCastClass())
                  {
                    sub_30F140(a2);
                  }

                  else
                  {
                    type metadata accessor for JSAppReviewSegue();
                    if (swift_dynamicCastClass())
                    {

                      sub_B66E8(a2);
                    }

                    else
                    {
                      type metadata accessor for JSUserNotificationAuthorizationSegue();
                      if (swift_dynamicCastClass())
                      {
                        sub_18BC88();
                      }

                      else
                      {
                        type metadata accessor for JSWebViewSegue(0);
                        if (swift_dynamicCastClass())
                        {
                          v7 = Logger.jsBridge.unsafeMutableAddressor();
                          (*(v4 + 16))(v6, v7, v3);
                          v8 = sub_AB4BA0();
                          v9 = sub_AB9F40();
                          if (os_log_type_enabled(v8, v9))
                          {
                            v10 = swift_slowAlloc();
                            v11 = swift_slowAlloc();
                            v13 = v11;
                            *v10 = 136315138;
                            *(v10 + 4) = sub_425E68(0xD000000000000010, 0x8000000000B64490, &v13);
                            _os_log_impl(&dword_0, v8, v9, "MLI: Attempted to perform %s within Legacy Music (picker environment) which is unexpected.", v10, 0xCu);
                            __swift_destroy_boxed_opaque_existential_0(v11);
                          }

                          (*(v4 + 8))(v6, v3);
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

uint64_t sub_4169B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 96);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_416A94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 96) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s23MusicPerformanceContextVMa(uint64_t a1)
{
  result = qword_E05BA8;
  if (!qword_E05BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_416B90(uint64_t a1)
{
  sub_416C7C();
  if (v1 <= 0x3F)
  {
    sub_416D30(319, &qword_E25370, sub_25CED8);
    if (v2 <= 0x3F)
    {
      sub_416CCC(319);
      if (v3 <= 0x3F)
      {
        sub_416D30(319, &qword_E05BC8, type metadata accessor for PlaybackIntentDescriptor);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_416C7C()
{
  if (!qword_E05BB8)
  {
    v0 = sub_ABA9C0();
    if (!v1)
    {
      atomic_store(v0, &qword_E05BB8);
    }
  }
}

void sub_416CCC(uint64_t a1)
{
  if (!qword_E05BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_DE8E50, &qword_AF8060);
    v1 = sub_ABA9C0();
    if (!v2)
    {
      atomic_store(v1, &qword_E05BC0);
    }
  }
}

void sub_416D30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_ABA9C0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_416D84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA520, &unk_AFDBF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_416DF4()
{
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 88);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), v1);
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 120))
  {
  }

  if (*(v0 + 184))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 160));
  }

  return swift_deallocObject();
}

uint64_t sub_416EA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[24];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17BD0;

  return sub_415A50(a1, v4, v5, v6, (v1 + 5), (v1 + 17), v7);
}

uint64_t sub_416F74()
{

  if (*(v0 + 64))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  }

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 128);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), v1);
  }

  if (*(v0 + 144))
  {
  }

  if (*(v0 + 160))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_417028(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_417090()
{
  v1 = v0;
  v2 = (*(&stru_20.nsects + (swift_isaMask & *v0)))();
  if (v2)
  {
    v3 = v2;
    if ([v2 isValid])
    {
      v4 = MPModelResponseDidInvalidateNotification;
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for NotificationObserver();
      swift_allocObject();
      v2 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v4, v3, 1, 1, sub_4175B8, v5);
    }

    else
    {
      (*&stru_68.segname[swift_isaMask & *v0])();

      v2 = 0;
    }
  }

  *(v1 + OBJC_IVAR____TtC16MusicApplication27JSVideoDetailViewController_modelResponseInvalidationObserver) = v2;

  return result;
}

void *sub_4171E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication27JSVideoDetailViewController_modelResponse);
  v2 = v1;
  return v1;
}

void sub_417214(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication27JSVideoDetailViewController_modelResponse);
  *(v1 + OBJC_IVAR____TtC16MusicApplication27JSVideoDetailViewController_modelResponse) = a1;
  if (v2)
  {
    if (v2 == a1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (a1)
  {
LABEL_5:
    v5 = v2;
    v3 = a1;
    sub_417090();

    a1 = v5;
LABEL_6:

    return;
  }

  v4 = 0;
}

void sub_4172A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    (*&stru_68.segname[swift_isaMask & *Strong])();
  }
}

id sub_417474()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSVideoDetailViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_417580()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

double sub_4175C0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v8[3] = swift_getObjectType();
  v8[0] = a2;

  swift_unknownObjectRetain();
  v6 = a3;
  v5(v8, a3);

  __swift_destroy_boxed_opaque_existential_0(v8);

  return result;
}

void sub_417850(uint64_t a1)
{
  v18.receiver = v1;
  v18.super_class = type metadata accessor for JSStaticImageViewController();
  objc_msgSendSuper2(&v18, "viewDidLayoutSubviews");
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v8 = v4;
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_imageView];
    if (v12)
    {
      [v12 setFrame:{v4, v5, v6, v7}];
    }

    v13 = [v1 traitCollection];
    [v13 displayScale];

    v19.origin.x = v8;
    v19.origin.y = v9;
    v19.size.width = v10;
    v19.size.height = v11;
    Width = CGRectGetWidth(v19);
    v15 = 1.0;
    if (*&v1[OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_artworkCatalog])
    {
      if (*&v1[OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_expectedImageAspectRatio] > 0.0)
      {
        v16 = Width;
        v20.origin.x = v8;
        v20.origin.y = v9;
        v20.size.width = v10;
        v20.size.height = v11;
        CGRectGetWidth(v20);
        sub_AB3A00();
        v15 = v17;
        Width = v16;
      }
    }

    [v1 setPreferredContentSize:{Width, v15}];
    sub_418544();
  }

  else
  {
    __break(1u);
  }
}

void sub_417A14(uint64_t a1)
{
  v2 = v1;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for JSStaticImageViewController();
  objc_msgSendSuper2(&v13, "viewDidLoad");
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() clearColor];
    [v4 setBackgroundColor:v5];

    v6 = [objc_allocWithZone(UIImageView) init];
    [v6 setImage:*&v2[OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_image]];
    [v4 addSubview:v6];
    v7 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_imageView];
    *&v2[OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_imageView] = v6;
    v8 = v6;

    v9 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:0 action:0];
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for GestureRecognizerHandler();
    swift_allocObject();
    v11 = sub_418FC0();
    v12 = v9;
    *&v2[OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_tapGestureRecognizerHandler] = GestureRecognizerHandler.init<A>(gestureRecognizer:handler:)(v12, sub_418FB8, v10, v11);

    [v4 addGestureRecognizer:v12];
  }

  else
  {
    __break(1u);
  }
}

void sub_417C00(uint64_t a1, uint64_t a2)
{
  v2 = sub_AB3430();
  v50 = *(v2 - 8);
  v51 = v2;
  __chkstk_darwin();
  v49 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v48 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = _s23MusicPerformanceContextVMa(0);
  __chkstk_darwin();
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0, &unk_AF8B30);
  __chkstk_darwin();
  v10 = &v48 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v48 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v16 = &v48 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v18 = Strong;
  v19 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  v20 = *&v18[OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_staticImageViewModel];
  v52 = v19;
  v53 = v20;
  memset(v62, 0, sizeof(v62));
  v63 = 0;
  v64 = xmmword_AF7710;
  v54 = v18;
  PresentationSource.init(viewController:position:)(v54, v62, v61);
  v21 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v59, 0, sizeof(v59));
  v60 = 0;
  (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
  sub_15F84(v59, &v56, &unk_DE8E30, "\b]\r");
  if (*(&v57 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50, &qword_AF8060);
    v22 = _s30CollectionViewSelectionHandlerVMa(0);
    v23 = swift_dynamicCast();
    v24 = *(v22 - 8);
    (*(v24 + 56))(v10, v23 ^ 1u, 1, v22);
    if ((*(v24 + 48))(v10, 1, v22) != 1)
    {
      (*(v5 + 16))(v14, &v10[*(v22 + 20)], v4);
      sub_2D6C0(v10, _s30CollectionViewSelectionHandlerVMa);
      v25 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    sub_12E1C(&v56, &unk_DE8E30, "\b]\r");
    v26 = _s30CollectionViewSelectionHandlerVMa(0);
    (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
  }

  sub_12E1C(v10, &qword_E037A0, &unk_AF8B30);
  v25 = 1;
LABEL_7:
  (*(v5 + 56))(v14, v25, 1, v4);
  v27 = swift_unknownObjectWeakLoadStrong();
  if (v27 && (v28 = v27, sub_12B2FC(), v30 = v29, v32 = v31, v28, v30))
  {
    ObjectType = swift_getObjectType();
    (*(v32 + 8))(ObjectType, v32);
    v35 = v34;
    swift_unknownObjectRelease();
    sub_15F84(v14, v12, &unk_DE8E20, &qword_AF7990);
    if ((*(v5 + 48))(v12, 1, v4) == 1)
    {
      sub_12E1C(v12, &unk_DE8E20, &qword_AF7990);
      v56 = 0u;
      v57 = 0u;
      v58 = 0;
    }

    else
    {
      (*(v5 + 32))(v48, v12, v4);
      sub_2D668();
      sub_ABAD10();
    }

    v37 = swift_getObjectType();
    v38 = v49;
    sub_3B8F68(v37);
    v36 = sub_21CCAC(1, v38, &v56, v37, v35);
    (*(v50 + 8))(v38, v51);
    sub_12E1C(&v56, &qword_DF2BD0, &unk_AFDC00);
    sub_12E1C(v14, &unk_DE8E20, &qword_AF7990);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v14, &unk_DE8E20, &qword_AF7990);
    v36 = 0;
  }

  v39 = swift_unknownObjectWeakLoadStrong();
  if (v39)
  {
    v40 = v39;
    v41 = v16;
    sub_12AFE8();
    v43 = v42;
  }

  else
  {
    v41 = v16;
    v43 = 0;
  }

  sub_15F28(v61, &v56);
  sub_15F84(v59, (v8 + 104), &unk_DE8E30, "\b]\r");
  v44 = v55;
  sub_15F84(v41, &v8[*(v55 + 28)], &unk_DEA510, "\b]\r");
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 2) = 0u;
  *(v8 + 3) = 0u;
  *(v8 + 8) = 1;
  *(v8 + 9) = 0;
  *(v8 + 10) = 0;
  *(v8 + 11) = 0;
  sub_2D594(&v56, v8);
  *(v8 + 12) = 0;
  v45 = *v52;
  *(&v57 + 1) = v44;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v56);
  sub_2D604(v8, boxed_opaque_existential_0);
  v47 = v45;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v53, 0, v36, v43, &v56);
  sub_12E1C(v41, &unk_DEA510, "\b]\r");
  sub_12E1C(v59, &unk_DE8E30, "\b]\r");
  sub_1611C(v61);
  sub_2D6C0(v8, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v56, &unk_DE8E40, &unk_AF8050);
}

void sub_418440(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_artworkCatalog];
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_artworkCatalog] = a1;
  if (!v3)
  {
    if (!a1)
    {
      return;
    }

    v10 = 0;
    v6 = a1;
    goto LABEL_7;
  }

  v10 = v3;
  if (!a1 || (v4 = a1, ([v10 isArtworkVisuallyIdenticalToCatalog:v4] & 1) == 0))
  {
LABEL_7:
    v7 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_imageView];
    if (v7)
    {
      [v7 clearArtworkCatalogs];
    }

    v8 = [v1 view];
    if (!v8)
    {
      __break(1u);
      return;
    }

    v9 = v8;
    [v8 setNeedsLayout];

    v5 = a1;
    goto LABEL_11;
  }

  v5 = v10;
LABEL_11:
}

void sub_418544()
{
  if ([v0 isViewLoaded])
  {
    v1 = *&v0[OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_imageView];
    if (v1)
    {
      v2 = OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_artworkCatalog;
      v3 = *&v0[OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_artworkCatalog];
      if (v3)
      {
        v4 = v1;
        v5 = v3;
        [v0 preferredContentSize];
        [v5 setFittingSize:?];
        v6 = [v0 traitCollection];
        [v6 displayScale];
        v8 = v7;

        [v5 setDestinationScale:v8];
        v9 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v20[4] = sub_418F98;
        v20[5] = v9;
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 1107296256;
        v20[2] = sub_4175C0;
        v20[3] = &block_descriptor_135;
        v10 = _Block_copy(v20);
        v11 = v4;

        [v5 setDestination:v11 configurationBlock:v10];
        _Block_release(v10);
      }

      else
      {
        v12 = v1;
        sub_418890(0);
      }

      if (*&v0[OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_image])
      {
        goto LABEL_16;
      }

      v13 = *&v0[v2];
      if (!v13)
      {
        goto LABEL_14;
      }

      v14 = v13;
      if ([v14 dataSource])
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {

          swift_unknownObjectRelease();
          goto LABEL_14;
        }

        swift_unknownObjectRelease();
      }

      v15 = [v14 existingColorAnalysisWithAlgorithm:1];

      if (v15)
      {
        v16 = v1;
        v17 = [v15 backgroundColor];
        [v16 setBackgroundColor:v17];

LABEL_15:
LABEL_16:

        return;
      }

LABEL_14:
      v18 = objc_opt_self();
      v19 = v1;
      v17 = [v18 clearColor];
      [v19 setBackgroundColor:v17];
      goto LABEL_15;
    }
  }
}

void sub_418830(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = a2;
    sub_418890(a2);
  }
}

void sub_418890(void *a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_image;
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_image);
  *(v1 + OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_image) = a1;
  v10 = a1;

  v4 = OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_imageView;
  v5 = *(v1 + OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_imageView);
  if (v5)
  {
    [v5 setImage:*(v1 + v2)];
  }

  if (*(v1 + v2))
  {
    v6 = *(v1 + v4);
    if (v6)
    {
      v7 = objc_opt_self();
      v8 = v6;
      v9 = [v7 clearColor];
      [v8 setBackgroundColor:v9];
    }
  }
}

void sub_41896C()
{
  v1 = v0;
  v2 = (*(&stru_B8.reserved2 + (swift_isaMask & **(v0 + OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_staticImageViewModel))))();
  v5 = 1.0;
  if (v4 == -1)
  {
    goto LABEL_19;
  }

  v6 = v2;
  v7 = v3;
  v8 = v4;
  if ((v4 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_AF85F0;
    v29 = CPSharedResourcesDirectory();
    if (!v29)
    {
      __break(1u);
      goto LABEL_24;
    }

    v30 = v29;
    v31 = objc_opt_self();
    v32 = v30;
    *(v28 + 32) = sub_AB92A0();
    *(v28 + 40) = v33;
    *(v28 + 48) = 0x616964654DLL;
    *(v28 + 56) = 0xE500000000000000;

    isa = sub_AB9740().super.isa;

    v35 = [v31 pathWithComponents:isa];

    if (!v35)
    {
      sub_AB92A0();
      v35 = sub_AB9260();
    }

    v36 = [objc_allocWithZone(NSBundle) initWithPath:v35];

    if (v36 && (v37 = v36, v38 = sub_AB9260(), v39 = [objc_opt_self() imageNamed:v38 inBundle:v37], v38, v37, v37, v39) || (v40 = objc_msgSend(objc_opt_self(), "mainBundle"), v41 = sub_AB9260(), v39 = objc_msgSend(objc_opt_self(), "imageNamed:inBundle:", v41, v40), v41, v40, v39))
    {
      v42 = [objc_opt_self() staticArtworkCatalogWithImage:v39];
      [v39 size];
      v44 = v43;
      v46 = v45;

      sub_1D3AA0(v6, v7, v8);
      v47 = v42;
      if (v46 > 0.0)
      {
        v5 = v44 / v46;
      }

      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_storeLookupDictionary;
  swift_beginAccess();
  v10 = *&v6[v9];
  if (!v10 || !*(v10 + 16))
  {
LABEL_18:
    sub_1D3AA0(v6, v7, v8);
LABEL_19:
    v47 = 0;
LABEL_20:
    *(v1 + OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_expectedImageAspectRatio) = v5;
    sub_418440(v47);
    return;
  }

  sub_3E8814(v11);
  v12 = objc_allocWithZone(ICStoreArtworkInfo);
  v13 = sub_AB8FD0().super.isa;
  v14 = [v12 initWithArtworkResponseDictionary:v13];

  if (!v14)
  {

    goto LABEL_18;
  }

  v15 = [objc_opt_self() tokenWithImageArtworkInfo:v14];
  [v15 setCropStyle:ICStoreArtworkInfoCropStyleSpecificRectangle];
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 sharedStoreArtworkDataSource];
  if (v18)
  {
    v19 = v18;

    v20 = objc_allocWithZone(MPArtworkCatalog);
    v21 = v17;
    v22 = [v20 initWithToken:v21 dataSource:v19];

    [v14 originalSize];
    if (v23 <= 0.0)
    {

      sub_1D3AA0(v6, v7, v8);
    }

    else
    {
      [v14 originalSize];
      v25 = v24;
      [v14 originalSize];
      v27 = v26;

      sub_1D3AA0(v6, v7, v8);
      v5 = v25 / v27;
    }

    v47 = v22;
    goto LABEL_20;
  }

LABEL_24:
  __break(1u);
}

id sub_418E88(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSStaticImageViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_418F60()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

double block_copy_helper_135(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_418FC0()
{
  result = qword_DEE998;
  if (!qword_DEE998)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DEE998);
  }

  return result;
}

char *sub_41900C(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication10ActionCell_title];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v4[OBJC_IVAR____TtC16MusicApplication10ActionCell_titleAlignment] = 4;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication10ActionCell_textComponents];
  v11 = [objc_opt_self() whiteColor];
  *v10 = 0;
  v10[8] = 4;
  *(v10 + 2) = v11;
  v31.receiver = v4;
  v31.super_class = type metadata accessor for ActionCell(0);
  v12 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  v13 = [v12 layer];
  [v13 setAllowsGroupOpacity:0];

  v14 = [v12 layer];
  [v14 setAllowsGroupBlending:0];

  v15 = vdupq_n_s64(0x4048000000000000uLL);
  *&v12[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkSize] = v15;
  v16 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent;
  v17 = *&v12[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
  v18 = *(v17 + 80);
  v19 = *(v17 + 88);
  *(v17 + 80) = v15;
  sub_75614(v18, v19);
  v20 = &v12[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkEdgeInsets];
  type metadata accessor for UIEdgeInsets(0);
  *v20 = xmmword_AFB140;
  *(v20 + 1) = xmmword_AFB150;
  if (sub_AB38D0())
  {
    [v12 setNeedsLayout];
  }

  v21 = *&v12[v16];
  v22 = *(v21 + 144);
  *(v21 + 144) = 4;
  if (v22 != 4)
  {
    v23 = *(v21 + 112);

    v24 = [v23 image];
    sub_788B8(v24);
  }

  v25 = v12[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment];
  v12[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment] = 1;
  if ((v25 & 1) == 0)
  {
    [v12 setNeedsLayout];
  }

  v26 = *&v12[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF82B0;
  swift_beginAccess();
  v28 = sub_419344();
  *(inited + 32) = v28;
  swift_endAccess();
  if ((inited & 0xC000000000000001) != 0)
  {
    v28 = sub_36003C(0, inited, v29);
  }

  else
  {
  }

  TextStackView.add(_:)(v28);

  swift_setDeallocating();
  swift_arrayDestroy();

  return v12;
}

uint64_t sub_419344()
{
  if (*v0)
  {
    v1 = *v0;
  }

  else
  {
    sub_419F68(*(v0 + 8), *(v0 + 16), v3);
    type metadata accessor for TextStackView.Component();
    swift_allocObject();
    v1 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v3);
    *v0 = v1;
  }

  return v1;
}

id sub_419598(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication10ActionCell_title];
  *v4 = a1;
  *(v4 + 1) = a2;

  swift_beginAccess();
  v5 = sub_419344();
  swift_endAccess();
  v7 = *v4;
  v6 = *(v4 + 1);
  swift_beginAccess();
  *(v5 + 112) = v7;
  *(v5 + 120) = v6;

  sub_2EB704();

  return [v3 setNeedsLayout];
}

void sub_419668(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
  *(v2 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = a1;
  v5 = a1;

  sub_74EA4(a1);
  sub_419980();
}

id sub_4197AC(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for ActionCell(0);
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_419844(char a1)
{
  v3 = type metadata accessor for ActionCell(0);
  v9.receiver = v1;
  v9.super_class = v3;
  v4 = objc_msgSendSuper2(&v9, "isSelected");
  v8.receiver = v1;
  v8.super_class = v3;
  objc_msgSendSuper2(&v8, "setSelected:", a1 & 1);
  v5 = [v1 _collectionView];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 isEditing];
  }

  else
  {
    v7 = 0;
  }

  if (v4 != [v1 isSelected] || (objc_msgSend(v1, "isSelected") & v7) == 1)
  {
    sub_419980();
  }
}

void sub_419980()
{
  v1 = v0;
  if (([v0 isSelected] & 1) != 0 || objc_msgSend(v0, "isHighlighted"))
  {
    v2 = [v0 _collectionView];
    if (!v2)
    {
      goto LABEL_12;
    }

    v3 = v2;
    if ([v2 isEditing])
    {
      v4 = [v3 _allowsMultipleSelectionDuringEditing];
      goto LABEL_9;
    }

    if (([v3 allowsMultipleSelection] & 1) == 0)
    {
      v4 = [v3 isEditing];
LABEL_9:
      v5 = v4;

      if (v5)
      {
        goto LABEL_10;
      }

LABEL_12:
      v7 = objc_opt_self();
      v8 = [v7 whiteColor];
      v9 = &v1[OBJC_IVAR____TtC16MusicApplication10ActionCell_textComponents];
      swift_beginAccess();
      v10 = *(v9 + 2);
      *(v9 + 2) = v8;

      v11 = sub_419344();
      sub_419F68(v9[8], *(v9 + 2), &v35);
      swift_beginAccess();
      v13 = v11[3];
      v12 = v11[4];
      v14 = v11[6];
      v33 = v11[5];
      v34 = v14;
      v31 = v13;
      v32 = v12;
      v30 = v11[2];
      v15 = v39;
      v11[5] = v38;
      v11[6] = v15;
      v16 = v36;
      v11[2] = v35;
      v11[3] = v16;
      v11[4] = v37;
      sub_2F118(&v35, v29);
      sub_2F174(&v30);
      sub_2EB2A8();
      swift_endAccess();
      sub_2F174(&v35);

      v17 = *(*&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent] + 112);
      v18 = [v7 whiteColor];
      [v17 setTintColor:v18];

      return;
    }
  }

LABEL_10:
  if (*&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog])
  {
    v6 = [objc_opt_self() blackColor];
  }

  else
  {
    v6 = 0;
  }

  v19 = &v1[OBJC_IVAR____TtC16MusicApplication10ActionCell_textComponents];
  swift_beginAccess();
  v20 = *(v19 + 2);
  *(v19 + 2) = v6;

  v21 = sub_419344();
  sub_419F68(v19[8], *(v19 + 2), &v35);
  swift_beginAccess();
  v23 = v21[3];
  v22 = v21[4];
  v24 = v21[6];
  v33 = v21[5];
  v34 = v24;
  v31 = v23;
  v32 = v22;
  v30 = v21[2];
  v25 = v39;
  v21[5] = v38;
  v21[6] = v25;
  v26 = v36;
  v21[2] = v35;
  v21[3] = v26;
  v21[4] = v37;
  sub_2F118(&v35, v29);
  sub_2F174(&v30);
  sub_2EB2A8();
  swift_endAccess();
  sub_2F174(&v35);

  v27 = qword_DE6C50;
  v28 = *(*&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent] + 112);
  if (v27 != -1)
  {
    swift_once();
  }

  [v28 setTintColor:qword_E71890];
}

void sub_419CEC()
{

  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication10ActionCell_textComponents + 16);
}

id sub_419D4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActionCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ActionCell(uint64_t a1)
{
  result = qword_E05CC0;
  if (!qword_E05CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_419E9C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_419EF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

double sub_419F68@<D0>(unsigned __int8 a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  v7 = objc_opt_self();
  v8 = a2;
  v9 = [v7 clearColor];
  *a3 = a2;
  *(a3 + 8) = v9;
  *(a3 + 16) = a1;
  *(a3 + 24) = 4;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = v6;
  *(a3 + 56) = 1;
  result = 16.0;
  *(a3 + 64) = xmmword_AF9C80;
  return result;
}

uint64_t sub_41A024()
{

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_11MusicCoreUI7ArtworkV0A11ApplicationE14AccessoryStyleO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_41A0DC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 25))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_41A138(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_41A190(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

void sub_41A1C4(void *a1, id a2, void *a3, void *a4, void **a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  [a2 drawInRect:?];
  v23.origin.x = a6;
  v23.origin.y = a7;
  v23.size.width = a8;
  v23.size.height = a9;
  CGRectGetMidX(v23);
  [a3 size];
  [a4 scale];
  sub_AB39F0();
  v18 = v17;
  v24.origin.x = a6;
  v24.origin.y = a7;
  v24.size.width = a8;
  v24.size.height = a9;
  CGRectGetMidY(v24);
  [a3 size];
  [a4 scale];
  sub_AB39F0();
  [a3 drawAtPoint:{v18, v19}];
  v20 = [a1 currentImage];
  v21 = *a5;
  *a5 = v20;
}

void sub_41A314(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_41A360()
{
  v0 = [objc_opt_self() configurationWithPointSize:15.0];
  sub_13C80(0, qword_DFAAC0, UIColor_ptr);
  v1 = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(142, 142, 147, 1.0);
  v2 = sub_AB9260();
  v3 = [objc_opt_self() _systemImageNamed:v2 withConfiguration:v0];

  if (v3)
  {
    v4 = [v3 imageWithTintColor:v1];
    sub_41A6F8(v4, 28.0, 28.0);
    v6 = v5;

    v1 = v4;
  }

  else
  {
    v6 = 0;
  }

  qword_E05D90 = v6;
}

void sub_41A490()
{
  v0 = [objc_opt_self() configurationWithPointSize:15.0];
  sub_13C80(0, qword_DFAAC0, UIColor_ptr);
  v1 = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(75, 217, 100, 1.0);
  v2 = sub_AB9260();
  v3 = [objc_opt_self() _systemImageNamed:v2 withConfiguration:v0];

  if (v3)
  {
    v4 = [v3 imageWithTintColor:v1];
    sub_41A6F8(v4, 28.0, 28.0);
    v6 = v5;

    v1 = v4;
  }

  else
  {
    v6 = 0;
  }

  qword_E05D98 = v6;
}

BOOL sub_41A5E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  switch(a1)
  {
    case 0:
      return !a5;
    case 1:
      return a5 == 1;
    case 2:
      return a5 == 2;
  }

  if (a5 < 3)
  {
    return 0;
  }

  sub_13C80(0, &qword_DFA720, NSObject_ptr);
  if (sub_ABA790())
  {
    if (a4)
    {
      if (a8)
      {
        return 1;
      }
    }

    else if ((a8 & 1) == 0 && *&a2 == *&a6 && *&a3 == *&a7)
    {
      return 1;
    }
  }

  return 0;
}

void sub_41A6F8(void *a1, double a2, double a3)
{
  v6 = [objc_opt_self() whiteColor];
  _sSo7UIImageC16MusicApplicationE16stretchableImage10filledWith12cornerRadiusABSgSo7UIColorC_12CoreGraphics7CGFloatVtFZ_0(v6, a2 * 0.5);
  v8 = v7;

  v9 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  v10 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v9 format:{a2, a3}];
  v19 = 0;
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  *(v11 + 16) = v8;
  *(v11 + 40) = a2;
  *(v11 + 48) = a3;
  *(v11 + 56) = a1;
  *(v11 + 64) = v9;
  *(v11 + 72) = &v19;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_41A974;
  *(v12 + 24) = v11;
  aBlock[4] = sub_3F328C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_41A314;
  aBlock[3] = &block_descriptor_136;
  v13 = _Block_copy(aBlock);
  v14 = v8;
  v15 = a1;
  v16 = v9;

  v17 = [v10 imageWithActions:v13];

  _Block_release(v13);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_41A92C()
{

  return swift_deallocObject();
}

double block_copy_helper_136(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

char *sub_41A9B4(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC16MusicApplication21VideoHeaderPlayButton_isBlurBackgroundEnabled] = 0;
  v9 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderPlayButton_backgroundView;
  *&v4[v9] = [objc_allocWithZone(UIView) init];
  v10 = sub_AB9260();
  v11 = [objc_opt_self() systemImageNamed:v10];

  v12 = [objc_allocWithZone(UIImageView) initWithImage:v11];
  v13 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderPlayButton_playImageView;
  *&v4[OBJC_IVAR____TtC16MusicApplication21VideoHeaderPlayButton_playImageView] = v12;
  v14 = objc_opt_self();
  v15 = v12;
  v16 = [v14 configurationWithPointSize:32.0];
  [v15 setPreferredSymbolConfiguration:v16];

  [*&v4[v13] setAdjustsImageSizeForAccessibilityContentSizeCategory:0];
  v17 = *&v4[v13];
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 whiteColor];
  [v19 setTintColor:v20];

  [*&v4[v13] setUserInteractionEnabled:0];
  v31.receiver = v4;
  v31.super_class = type metadata accessor for VideoHeaderPlayButton();
  v21 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  v22 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderPlayButton_backgroundView;
  v23 = *&v21[OBJC_IVAR____TtC16MusicApplication21VideoHeaderPlayButton_backgroundView];
  v24 = v21;
  [v23 setFrame:{0.0, 0.0, 0.0, 0.0}];
  [*&v21[v22] setClipsToBounds:1];
  [*&v21[v22] setUserInteractionEnabled:0];
  v25 = qword_DE6B98;
  v26 = *&v21[v22];
  if (v25 != -1)
  {
    swift_once();
  }

  [v26 setBackgroundColor:qword_E05E38];

  v27 = *&v21[v22];
  v28 = v24;
  [v28 addSubview:v27];
  [v28 addSubview:*&v28[OBJC_IVAR____TtC16MusicApplication21VideoHeaderPlayButton_playImageView]];
  v29 = [v18 clearColor];
  [v28 setBackgroundColor:v29];

  return v28;
}

id sub_41AD8C(id result)
{
  v2 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderPlayButton_isBlurBackgroundEnabled;
  if (v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderPlayButton_isBlurBackgroundEnabled] != (result & 1))
  {
    v3 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderPlayButton_backgroundView;
    [*&v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderPlayButton_backgroundView] removeFromSuperview];
    if (v1[v2] == 1)
    {
      v4 = [objc_opt_self() effectWithStyle:1];
      v5 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v4];

      v6 = sub_AB9260();
      [v5 _setGroupName:v6];
    }

    else
    {
      v5 = [objc_allocWithZone(UIView) init];
      if (qword_DE6B98 != -1)
      {
        swift_once();
      }

      [v5 setBackgroundColor:qword_E05E38];
    }

    v7 = *&v1[v3];
    *&v1[v3] = v5;
    v8 = v5;

    [v1 insertSubview:v8 atIndex:0];
    [*&v1[v3] setClipsToBounds:1];
    v9 = *&v1[v3];

    return [v9 setUserInteractionEnabled:0];
  }

  return result;
}

void sub_41AF4C(uint64_t a1)
{
  v19.receiver = v1;
  v19.super_class = type metadata accessor for VideoHeaderPlayButton();
  objc_msgSendSuper2(&v19, "layoutSubviews");
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v1 traitCollection];
  [v10 displayScale];

  v20.origin.x = v3;
  v20.origin.y = v5;
  v20.size.width = v7;
  v20.size.height = v9;
  Width = CGRectGetWidth(v20);
  v21.origin.x = v3;
  v21.origin.y = v5;
  v21.size.width = v7;
  v21.size.height = v9;
  Height = CGRectGetHeight(v21);
  if (Height < Width)
  {
    Width = Height;
  }

  sub_ABA470();
  v13 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderPlayButton_backgroundView;
  [*&v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderPlayButton_backgroundView] setFrame:*&Width];
  v14 = [*&v1[v13] layer];
  sub_AB3A00();
  [v14 setCornerRadius:?];

  v15 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderPlayButton_playImageView;
  [*&v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderPlayButton_playImageView] sizeThatFits:{v7, v9}];
  v17 = v16;
  v18 = *&v1[v15];
  sub_ABA470();
  [v18 setFrame:v17];
}

id sub_41B214(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for VideoHeaderPlayButton();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_41B260(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for VideoHeaderPlayButton();
  v6 = *a4;
  v7 = v8.receiver;
  objc_msgSendSuper2(&v8, v6, a3);
  sub_41B364();
}

void sub_41B2F0(uint64_t a1, SEL *a2, void *a3)
{
  v4 = [objc_opt_self() *a2];
  v5 = [v4 colorWithAlphaComponent:0.8];

  *a3 = v5;
}

void sub_41B364()
{
  if (([v0 isHighlighted] & 1) != 0 || objc_msgSend(v0, "isSelected"))
  {
    [*&v0[OBJC_IVAR____TtC16MusicApplication21VideoHeaderPlayButton_playImageView] setDrawMode:2];
    if (v0[OBJC_IVAR____TtC16MusicApplication21VideoHeaderPlayButton_isBlurBackgroundEnabled])
    {
      return;
    }

    v1 = qword_DE6BA0;
    v2 = *&v0[OBJC_IVAR____TtC16MusicApplication21VideoHeaderPlayButton_backgroundView];
    if (v1 != -1)
    {
      v6 = v2;
      swift_once();
      v2 = v6;
    }

    v3 = &qword_E05E40;
  }

  else
  {
    [*&v0[OBJC_IVAR____TtC16MusicApplication21VideoHeaderPlayButton_playImageView] setDrawMode:0];
    if (v0[OBJC_IVAR____TtC16MusicApplication21VideoHeaderPlayButton_isBlurBackgroundEnabled])
    {
      return;
    }

    v4 = qword_DE6B98;
    v2 = *&v0[OBJC_IVAR____TtC16MusicApplication21VideoHeaderPlayButton_backgroundView];
    if (v4 != -1)
    {
      v7 = v2;
      swift_once();
      v2 = v7;
    }

    v3 = &qword_E05E38;
  }

  v5 = v2;
  [v2 setBackgroundColor:*v3];
}

id sub_41B4E4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for VideoHeaderPlayButton();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_41B588(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = sub_AB7CC0();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  *v9 = sub_ABA150();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = sub_AB7CF0();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    swift_beginAccess();
    v11 = swift_allocObject();
    swift_weakInit();
    __chkstk_darwin();
    *(&v17 - 4) = v11;
    *(&v17 - 3) = a1;
    *(&v17 - 2) = a2;

    sub_428774(v12, sub_429A10);

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      v15 = UIScrollView.isScrolling.getter();

      if ((v15 & 1) == 0)
      {
        v16 = *(v3 + 48);
        __chkstk_darwin();
        *(&v17 - 2) = a1;
        *(&v17 - 1) = a2;

        sub_2C1BF8(sub_429ACC, (&v17 - 4), v16);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_41B7E8(uint64_t a1, uint64_t a2, double a3, void (*a4)(uint64_t *, uint64_t), void (*a5)(uint64_t *))
{
  v8 = v5;
  v11 = sub_AB7CC0();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  *v14 = sub_ABA150();
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v15 = sub_AB7CF0();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    swift_beginAccess();
    v16 = swift_allocObject();
    swift_weakInit();
    __chkstk_darwin();
    *(&v22 - 4) = v16;
    *(&v22 - 3) = a1;
    *(&v22 - 2) = a3;

    sub_42893C(v17, a4);

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = Strong;
      v20 = UIScrollView.isScrolling.getter();

      if ((v20 & 1) == 0)
      {
        v21 = *(v8 + 48);
        __chkstk_darwin();
        *(&v22 - 2) = a1;
        *(&v22 - 1) = a3;

        sub_2C1BF8(a5, (&v22 - 4), v21);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_41BA40(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 rightBarButtonItems];
  if (v3)
  {
    v4 = v3;
    sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
    v5 = sub_AB9760();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_41BAC0(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
    v3.super.isa = sub_AB9740().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  [v2 setRightBarButtonItems:?];
}

double sub_41BB48(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a2;
  v8[4] = a3;
  v9 = v3 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_3FC34(a2, a3);
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v9 + 8);
      ObjectType = swift_getObjectType();
      (*(v10 + 24))(v3, a1, sub_4299CC, v8, ObjectType, v10);

      swift_unknownObjectRelease();
      return result;
    }
  }

  else
  {
    sub_3FC34(a2, a3);

    sub_422AB4(a1, v7, a2);
  }

  return result;
}

void sub_41BCBC(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v19 = a4;
  v20 = a3;
  v18 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_selectedPlaybackIntentDescriptor;
  swift_beginAccess();
  sub_15F84(v4 + v10, v9, &unk_DEA510, "\b]\r");
  v11 = type metadata accessor for PlaybackIntentDescriptor(0);
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v9, 1, v11);
  sub_12E1C(v9, &unk_DEA510, "\b]\r");
  if (v13 == 1)
  {
    sub_42911C(a1, v7, type metadata accessor for PlaybackIntentDescriptor);
    (*(v12 + 56))(v7, 0, 1, v11);
    swift_beginAccess();
    sub_428E20(v7, v4 + v10);
    swift_endAccess();
    sub_4253F8();
    sub_12E1C(v7, &unk_DEA510, "\b]\r");
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_AF82B0;
    v15 = v18;
    *(v14 + 32) = v18;
    v16 = v15;
    sub_41BB48(v14, v20, v19);
  }

  else if (v20)
  {
    v20(0);
  }
}

void sub_41BF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_4670F4(a2, a1, a4, a5);
  }
}

void sub_41BFD0(uint64_t a1, uint64_t a2, double a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_41B588(a2, a3);
  }
}

void sub_41C074(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t), void (*a5)(uint64_t *), double a6)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_41B7E8(a2, a3, a6, a4, a5);
  }
}

id sub_41C114(void *a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v6[qword_DF8A88] = 0;
  v6[qword_DF8A90] = 0;
  v6[qword_DF8A98] = 0;
  *&v6[qword_DF8A80] = a1;
  *&v6[qword_DF8A78] = a2;
  v11 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4));
  v12 = a1;
  v13 = a2;
  v14 = [v11 initWithSearchResultsController:v13];
  [v14 setSearchResultsUpdater:v13];
  *&v6[qword_DF8A70] = v14;
  v15 = v14;
  v21.receiver = v6;
  v21.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = objc_msgSendSuper2(&v21, "initWithNibName:bundle:", 0, 0);
  [v16 setDefinesPresentationContext:1];
  v17 = [v16 navigationItem];
  [v17 setSearchController:v15];

  v18 = [v16 navigationItem];
  [v18 setHidesSearchBarWhenScrolling:0];

  v19 = [v16 navigationItem];
  [v19 setPreferredSearchBarPlacement:2];

  [v15 setDelegate:v16];
  [v15 setObscuresBackgroundDuringPresentation:0];

  return v16;
}

void sub_41C324(char a1)
{
  v2 = v1[qword_DF8A98];
  if (v2 != (a1 & 1))
  {
    v3 = v1;
    v4 = qword_DF8A78;
    v5 = qword_DF8A80;
    if (a1)
    {
      v6 = qword_DF8A78;
    }

    else
    {
      v6 = qword_DF8A80;
    }

    v7 = *&v1[v6];
    if (v2)
    {
      v8 = v4;
    }

    else
    {
      v8 = v5;
    }

    v9 = *&v3[v8];
    v49 = v7;
    sub_13C80(0, &qword_DE7500, UIViewController_ptr);
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8DD0, &qword_B04320);
    if (swift_dynamicCast())
    {
      v11 = *(&v46 + 1);
      v12 = v47;
      __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
      v12[1](0, v11, v12);
      __swift_destroy_boxed_opaque_existential_0(&v45);
    }

    else
    {
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      sub_12E1C(&v45, &qword_DF8DD8, &qword_B04328);
    }

    v49 = v9;
    v13 = v9;
    if (swift_dynamicCast())
    {
      v14 = *(&v46 + 1);
      v15 = v47;
      __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
      v15[1](1, v14, v15);
      __swift_destroy_boxed_opaque_existential_0(&v45);
    }

    else
    {
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      sub_12E1C(&v45, &qword_DF8DD8, &qword_B04328);
    }

    [v10 setDefinesPresentationContext:0];
    [v13 setDefinesPresentationContext:1];
    v16 = [v13 parentViewController];
    if (!v16 || (v17 = v16, v18 = v3, v19 = sub_ABA790(), v17, v18, (v19 & 1) == 0))
    {
      [v3 addChildViewController:v13];
      v20 = [v3 view];
      if (!v20)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v21 = v20;
      v22 = [v13 view];
      if (!v22)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v23 = v22;
      [v21 addSubview:v22];

      v24 = [v13 view];
      if (!v24)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v25 = v24;
      v26 = [v3 view];
      if (!v26)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v27 = v26;
      [v26 bounds];
      [v25 setFrame:?];

      v28 = [v13 view];
      if (!v28)
      {
LABEL_32:
        __break(1u);
        return;
      }

      v29 = v28;
      [v28 setAutoresizingMask:18];
    }

    v30 = [v13 view];
    if (v30)
    {
      v31 = v30;
      [v30 setAlpha:0.0];

      v32 = [v13 view];
      if (v32)
      {
        v33 = v32;
        [v32 setHidden:0];

        v34 = objc_opt_self();
        v35 = swift_allocObject();
        v35[2] = v3;
        v35[3] = v10;
        v35[4] = v13;
        v47 = sub_4293B0;
        v48 = v35;
        *&v45 = _NSConcreteStackBlock;
        *(&v45 + 1) = 1107296256;
        *&v46 = sub_1B5EB4;
        *(&v46 + 1) = &block_descriptor_115_0;
        v36 = _Block_copy(&v45);
        v37 = v10;
        v38 = v13;
        v39 = v3;

        v40 = swift_allocObject();
        v40[2] = v38;
        v40[3] = v39;
        v40[4] = v37;
        v47 = sub_4293D0;
        v48 = v40;
        *&v45 = _NSConcreteStackBlock;
        *(&v45 + 1) = 1107296256;
        *&v46 = sub_1811AC;
        *(&v46 + 1) = &block_descriptor_121_0;
        v41 = _Block_copy(&v45);
        v42 = v37;
        v43 = v38;
        v44 = v39;

        [v34 animateWithDuration:2 delay:v36 options:v41 animations:0.35 completion:0.0];

        _Block_release(v41);
        _Block_release(v36);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_28;
  }
}

void sub_41C878(char a1)
{
  v2 = v1[qword_DF8A98];
  if (v2 != (a1 & 1))
  {
    v3 = v1;
    v4 = qword_DF8A78;
    v5 = qword_DF8A80;
    if (a1)
    {
      v6 = qword_DF8A78;
    }

    else
    {
      v6 = qword_DF8A80;
    }

    v7 = *&v1[v6];
    if (v2)
    {
      v8 = v4;
    }

    else
    {
      v8 = v5;
    }

    v9 = *&v3[v8];
    v49 = v7;
    sub_13C80(0, &qword_DE7500, UIViewController_ptr);
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8DD0, &qword_B04320);
    if (swift_dynamicCast())
    {
      v11 = *(&v46 + 1);
      v12 = v47;
      __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
      v12[1](0, v11, v12);
      __swift_destroy_boxed_opaque_existential_0(&v45);
    }

    else
    {
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      sub_12E1C(&v45, &qword_DF8DD8, &qword_B04328);
    }

    v49 = v9;
    v13 = v9;
    if (swift_dynamicCast())
    {
      v14 = *(&v46 + 1);
      v15 = v47;
      __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
      v15[1](1, v14, v15);
      __swift_destroy_boxed_opaque_existential_0(&v45);
    }

    else
    {
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      sub_12E1C(&v45, &qword_DF8DD8, &qword_B04328);
    }

    [v10 setDefinesPresentationContext:0];
    [v13 setDefinesPresentationContext:1];
    v16 = [v13 parentViewController];
    if (!v16 || (v17 = v16, v18 = v3, v19 = sub_ABA790(), v17, v18, (v19 & 1) == 0))
    {
      [v3 addChildViewController:v13];
      v20 = [v3 view];
      if (!v20)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v21 = v20;
      v22 = [v13 view];
      if (!v22)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v23 = v22;
      [v21 addSubview:v22];

      v24 = [v13 view];
      if (!v24)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v25 = v24;
      v26 = [v3 view];
      if (!v26)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v27 = v26;
      [v26 bounds];
      [v25 setFrame:?];

      v28 = [v13 view];
      if (!v28)
      {
LABEL_32:
        __break(1u);
        return;
      }

      v29 = v28;
      [v28 setAutoresizingMask:18];
    }

    v30 = [v13 view];
    if (v30)
    {
      v31 = v30;
      [v30 setAlpha:0.0];

      v32 = [v13 view];
      if (v32)
      {
        v33 = v32;
        [v32 setHidden:0];

        v34 = objc_opt_self();
        v35 = swift_allocObject();
        v35[2] = v3;
        v35[3] = v10;
        v35[4] = v13;
        v47 = sub_429B64;
        v48 = v35;
        *&v45 = _NSConcreteStackBlock;
        *(&v45 + 1) = 1107296256;
        *&v46 = sub_1B5EB4;
        *(&v46 + 1) = &block_descriptor_86_1;
        v36 = _Block_copy(&v45);
        v37 = v10;
        v38 = v13;
        v39 = v3;

        v40 = swift_allocObject();
        v40[2] = v38;
        v40[3] = v39;
        v40[4] = v37;
        v47 = sub_429B34;
        v48 = v40;
        *&v45 = _NSConcreteStackBlock;
        *(&v45 + 1) = 1107296256;
        *&v46 = sub_1811AC;
        *(&v46 + 1) = &block_descriptor_92_1;
        v41 = _Block_copy(&v45);
        v42 = v37;
        v43 = v38;
        v44 = v39;

        [v34 animateWithDuration:2 delay:v36 options:v41 animations:0.35 completion:0.0];

        _Block_release(v41);
        _Block_release(v36);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_28;
  }
}

void sub_41CDCC(char a1)
{
  v2 = v1[qword_DF8A98];
  if (v2 != (a1 & 1))
  {
    v3 = v1;
    v4 = qword_DF8A78;
    v5 = qword_DF8A80;
    if (a1)
    {
      v6 = qword_DF8A78;
    }

    else
    {
      v6 = qword_DF8A80;
    }

    v7 = *&v1[v6];
    if (v2)
    {
      v8 = v4;
    }

    else
    {
      v8 = v5;
    }

    v9 = *&v3[v8];
    v49 = v7;
    sub_13C80(0, &qword_DE7500, UIViewController_ptr);
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8DD0, &qword_B04320);
    if (swift_dynamicCast())
    {
      v11 = *(&v46 + 1);
      v12 = v47;
      __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
      v12[1](0, v11, v12);
      __swift_destroy_boxed_opaque_existential_0(&v45);
    }

    else
    {
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      sub_12E1C(&v45, &qword_DF8DD8, &qword_B04328);
    }

    v49 = v9;
    v13 = v9;
    if (swift_dynamicCast())
    {
      v14 = *(&v46 + 1);
      v15 = v47;
      __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
      v15[1](1, v14, v15);
      __swift_destroy_boxed_opaque_existential_0(&v45);
    }

    else
    {
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      sub_12E1C(&v45, &qword_DF8DD8, &qword_B04328);
    }

    [v10 setDefinesPresentationContext:0];
    [v13 setDefinesPresentationContext:1];
    v16 = [v13 parentViewController];
    if (!v16 || (v17 = v16, v18 = v3, v19 = sub_ABA790(), v17, v18, (v19 & 1) == 0))
    {
      [v3 addChildViewController:v13];
      v20 = [v3 view];
      if (!v20)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v21 = v20;
      v22 = [v13 view];
      if (!v22)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v23 = v22;
      [v21 addSubview:v22];

      v24 = [v13 view];
      if (!v24)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v25 = v24;
      v26 = [v3 view];
      if (!v26)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v27 = v26;
      [v26 bounds];
      [v25 setFrame:?];

      v28 = [v13 view];
      if (!v28)
      {
LABEL_32:
        __break(1u);
        return;
      }

      v29 = v28;
      [v28 setAutoresizingMask:18];
    }

    v30 = [v13 view];
    if (v30)
    {
      v31 = v30;
      [v30 setAlpha:0.0];

      v32 = [v13 view];
      if (v32)
      {
        v33 = v32;
        [v32 setHidden:0];

        v34 = objc_opt_self();
        v35 = swift_allocObject();
        v35[2] = v3;
        v35[3] = v10;
        v35[4] = v13;
        v47 = sub_429B64;
        v48 = v35;
        *&v45 = _NSConcreteStackBlock;
        *(&v45 + 1) = 1107296256;
        *&v46 = sub_1B5EB4;
        *(&v46 + 1) = &block_descriptor_57_1;
        v36 = _Block_copy(&v45);
        v37 = v10;
        v38 = v13;
        v39 = v3;

        v40 = swift_allocObject();
        v40[2] = v38;
        v40[3] = v39;
        v40[4] = v37;
        v47 = sub_429B34;
        v48 = v40;
        *&v45 = _NSConcreteStackBlock;
        *(&v45 + 1) = 1107296256;
        *&v46 = sub_1811AC;
        *(&v46 + 1) = &block_descriptor_63_1;
        v41 = _Block_copy(&v45);
        v42 = v37;
        v43 = v38;
        v44 = v39;

        [v34 animateWithDuration:2 delay:v36 options:v41 animations:0.35 completion:0.0];

        _Block_release(v41);
        _Block_release(v36);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_28;
  }
}

uint64_t sub_41D320(uint64_t (*a1)(uint64_t))
{
  v2 = a1;
  if (*(v1 + qword_DF8A88))
  {
    v3 = *(v1 + qword_DF8A90);
  }

  else
  {
    v4 = v1;
    v5 = UISearchController.searchText.getter();
    if (!v6)
    {
      goto LABEL_8;
    }

    v7 = v5;
    v8 = v6;

    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      v3 = 1;
    }

    else
    {
LABEL_8:
      v3 = 0;
    }

    v1 = v4;
    v2 = a1;
  }

  v10 = *(v1 + qword_DF8A98);
  *(v1 + qword_DF8A98) = v3;

  return v2(v10);
}

double sub_41D3EC(void *a1)
{
  v3 = sub_424B64(a1);
  v4 = [a1 navigationItem];
  v5 = [v4 leftBarButtonItems];
  if (!v5)
  {

    goto LABEL_5;
  }

  v6 = v5;
  sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
  v7 = sub_AB9760();

  v8 = sub_12C280(v7, v3);

  if ((v8 & 1) == 0)
  {
LABEL_5:
    v9 = [a1 navigationItem];
    sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
    isa = sub_AB9740().super.isa;
    [v9 setLeftBarButtonItems:isa];
  }

  v11 = sub_424D1C(a1);
  v12 = [a1 navigationItem];
  v13 = [v12 rightBarButtonItems];
  if (!v13)
  {

    goto LABEL_10;
  }

  v14 = v13;
  sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
  v15 = sub_AB9760();

  v16 = sub_12C280(v15, v11);

  if ((v16 & 1) == 0)
  {
LABEL_10:
    v17 = [a1 navigationItem];
    sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
    v18 = sub_AB9740().super.isa;
    [v17 setRightBarButtonItems:v18];
  }

  v19 = sub_42469C(&OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController____lazy_storage___doneBarButtonItem, &selRef_doneTapped, 0);
  v20 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_selectedItems;
  swift_beginAccess();
  v21 = *(v1 + v20);
  if (v21 >> 62)
  {
LABEL_32:
    v22 = sub_ABB060();
  }

  else
  {
    v22 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
  }

  [v19 setEnabled:v22 > 0];

  sub_19620(v11);
  v19 = v3;
  if (v3 >> 62)
  {
    v11 = sub_ABB060();
    if (!v11)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v11 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      goto LABEL_34;
    }
  }

  v23 = 0;
  v3 = _swiftEmptyArrayStorage;
  do
  {
    v24 = v23;
    while (1)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v25 = sub_3600B8(v24, v19);
      }

      else
      {
        if (v24 >= *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_31;
        }

        v25 = *(v19 + 8 * v24 + 32);
      }

      v26 = v25;
      v23 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v27 = [v25 customView];
      if (v27)
      {
        v28 = v27;
        objc_opt_self();
        v29 = swift_dynamicCastObjCClass();

        v26 = v28;
        if (v29)
        {
          break;
        }
      }

      ++v24;
      if (v23 == v11)
      {
        goto LABEL_34;
      }
    }

    sub_AB9730();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
    v3 = _swiftEmptyArrayStorage;
  }

  while (v23 != v11);
LABEL_34:

  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_46;
  }

  for (i = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v31 = 0;
    while (1)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v32 = sub_3603E4(v31, _swiftEmptyArrayStorage);
      }

      else
      {
        if (v31 >= *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_45;
        }

        v32 = _swiftEmptyArrayStorage[v31 + 4];
      }

      v33 = v32;
      v34 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      [v32 startAnimating];

      ++v31;
      if (v34 == i)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    ;
  }

LABEL_47:

  return result;
}

char *sub_41D8C0(void *a1)
{
  *(v1 + qword_DFE518) = 0;
  *(v1 + qword_DFE520) = 0;
  v3 = qword_DFE528;
  type metadata accessor for Search();
  swift_allocObject();
  *(v1 + v3) = Search.init()();
  *(v1 + qword_DFE530) = 0;
  *(v1 + qword_DFE538) = 0;
  v4 = objc_allocWithZone(type metadata accessor for SearchResultsViewController(0));
  v56 = a1;
  v5 = sub_41C114(v56, [v4 init], &qword_E05F40, &qword_B0EBC0, &qword_E05F48, qword_B0EBC8);
  v6 = sub_AB9260();
  [v5 setPlayActivityFeatureName:v6];

  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];

  v9 = v5;
  if (!v8)
  {
    v9 = sub_AB9260();
    [v5 setRestorationIdentifier:v9];
  }

  v10 = *&v5[qword_DF8A70];
  v11 = v5;
  [v10 setObscuresBackgroundDuringPresentation:0];
  v12 = v11[qword_DF8A88];
  v11[qword_DF8A88] = 1;
  if ((v12 & 1) == 0)
  {
    sub_41D320(sub_41C324);
  }

  v13 = qword_DFE528;
  v14 = *&v11[qword_DFE528];
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v16 = *(v14 + 96);
  v17 = *(v14 + 104);
  *(v14 + 96) = sub_4292AC;
  *(v14 + 104) = v15;
  v18 = v11;

  sub_17654(v16, v17);

  v19 = qword_DF8A78;
  v20 = *&v18[qword_DF8A78];

  v21 = Search.resultSnapshotController.getter();

  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  v23 = (v21 + *(*v21 + 112));
  swift_beginAccess();
  v24 = *v23;
  v25 = v23[1];
  *v23 = sub_429B1C;
  v23[1] = v22;
  v55 = v20;
  sub_17654(v24, v25);

  v26 = *&v11[v13];

  v60[3] = &type metadata for Search.RequiredProperties;
  v60[4] = &off_D16038;
  v60[0] = sub_47F438();
  swift_beginAccess();
  sub_30E554(v26 + 16, v58);
  sub_1D3060(v60, &v59);
  sub_30E554(v26 + 16, v57);
  swift_beginAccess();
  sub_30EDB4(v58, v26 + 16);
  swift_endAccess();
  sub_476C14(v57);
  sub_30E5B0(v57);
  sub_30E5B0(v58);

  v27 = *&v18[v19];
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = &v27[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onPageRenderFinish];
  v30 = *&v27[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onPageRenderFinish];
  v31 = *&v27[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onPageRenderFinish + 8];
  *v29 = sub_429AFC;
  v29[1] = v28;
  v32 = v27;

  sub_17654(v30, v31);

  v33 = *&v18[v19];
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = &v33[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onContextMenuPresentation];
  v36 = *&v33[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onContextMenuPresentation];
  v37 = *&v33[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onContextMenuPresentation + 8];
  *v35 = sub_429AE4;
  v35[1] = v34;
  v38 = v33;

  sub_17654(v36, v37);

  v39 = *&v18[v19];

  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = &v39[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onDragSessionStart];
  v42 = *&v39[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onDragSessionStart];
  v43 = *&v39[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onDragSessionStart + 8];
  *v41 = sub_429B00;
  v41[1] = v40;

  sub_17654(v42, v43);

  v44 = Search.resultSnapshotController.getter();

  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = (v44 + *(*v44 + 128));
  swift_beginAccess();
  v47 = *v46;
  v48 = v46[1];
  *v46 = sub_429B58;
  v46[1] = v45;

  sub_17654(v47, v48);

  v49 = Search.recentlySearchedSnapshotController.getter();

  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v51 = (v49 + *(*v49 + 128));
  swift_beginAccess();
  v52 = *v51;
  v53 = v51[1];
  *v51 = sub_429B5C;
  v51[1] = v50;

  sub_17654(v52, v53);

  return v18;
}

char *sub_41DF98(void *a1)
{
  *(v1 + qword_DFE518) = 0;
  *(v1 + qword_DFE520) = 0;
  v3 = qword_DFE528;
  type metadata accessor for Search();
  swift_allocObject();
  *(v1 + v3) = Search.init()();
  *(v1 + qword_DFE530) = 0;
  *(v1 + qword_DFE538) = 0;
  v4 = objc_allocWithZone(type metadata accessor for SearchResultsViewController(0));
  v56 = a1;
  v5 = sub_41C114(v56, [v4 init], &qword_E05F30, &qword_B0EBB0, &qword_E05F38, &qword_B0EBB8);
  v6 = sub_AB9260();
  [v5 setPlayActivityFeatureName:v6];

  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];

  v9 = v5;
  if (!v8)
  {
    v9 = sub_AB9260();
    [v5 setRestorationIdentifier:v9];
  }

  v10 = *&v5[qword_DF8A70];
  v11 = v5;
  [v10 setObscuresBackgroundDuringPresentation:0];
  v12 = v11[qword_DF8A88];
  v11[qword_DF8A88] = 1;
  if ((v12 & 1) == 0)
  {
    sub_41D320(sub_41C878);
  }

  v13 = qword_DFE528;
  v14 = *&v11[qword_DFE528];
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v16 = *(v14 + 96);
  v17 = *(v14 + 104);
  *(v14 + 96) = sub_4291DC;
  *(v14 + 104) = v15;
  v18 = v11;

  sub_17654(v16, v17);

  v19 = qword_DF8A78;
  v20 = *&v18[qword_DF8A78];

  v21 = Search.resultSnapshotController.getter();

  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  v23 = (v21 + *(*v21 + 112));
  swift_beginAccess();
  v24 = *v23;
  v25 = v23[1];
  *v23 = sub_429B1C;
  v23[1] = v22;
  v55 = v20;
  sub_17654(v24, v25);

  v26 = *&v11[v13];

  v60[3] = &type metadata for Search.RequiredProperties;
  v60[4] = &off_D16038;
  v60[0] = sub_47F438();
  swift_beginAccess();
  sub_30E554(v26 + 16, v58);
  sub_1D3060(v60, &v59);
  sub_30E554(v26 + 16, v57);
  swift_beginAccess();
  sub_30EDB4(v58, v26 + 16);
  swift_endAccess();
  sub_476C14(v57);
  sub_30E5B0(v57);
  sub_30E5B0(v58);

  v27 = *&v18[v19];
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = &v27[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onPageRenderFinish];
  v30 = *&v27[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onPageRenderFinish];
  v31 = *&v27[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onPageRenderFinish + 8];
  *v29 = sub_429AFC;
  v29[1] = v28;
  v32 = v27;

  sub_17654(v30, v31);

  v33 = *&v18[v19];
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = &v33[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onContextMenuPresentation];
  v36 = *&v33[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onContextMenuPresentation];
  v37 = *&v33[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onContextMenuPresentation + 8];
  *v35 = sub_429AE4;
  v35[1] = v34;
  v38 = v33;

  sub_17654(v36, v37);

  v39 = *&v18[v19];

  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = &v39[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onDragSessionStart];
  v42 = *&v39[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onDragSessionStart];
  v43 = *&v39[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onDragSessionStart + 8];
  *v41 = sub_429B00;
  v41[1] = v40;

  sub_17654(v42, v43);

  v44 = Search.resultSnapshotController.getter();

  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = (v44 + *(*v44 + 128));
  swift_beginAccess();
  v47 = *v46;
  v48 = v46[1];
  *v46 = sub_429B58;
  v46[1] = v45;

  sub_17654(v47, v48);

  v49 = Search.recentlySearchedSnapshotController.getter();

  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v51 = (v49 + *(*v49 + 128));
  swift_beginAccess();
  v52 = *v51;
  v53 = v51[1];
  *v51 = sub_429B5C;
  v51[1] = v50;

  sub_17654(v52, v53);

  return v18;
}

char *sub_41E670(void *a1)
{
  *(v1 + qword_DFE518) = 0;
  *(v1 + qword_DFE520) = 0;
  v3 = qword_DFE528;
  type metadata accessor for Search();
  swift_allocObject();
  *(v1 + v3) = Search.init()();
  *(v1 + qword_DFE530) = 0;
  *(v1 + qword_DFE538) = 0;
  v4 = objc_allocWithZone(type metadata accessor for SearchResultsViewController(0));
  v56 = a1;
  v5 = sub_41C114(v56, [v4 init], &qword_E05F20, &qword_B0EBA0, &qword_E05F28, &qword_B0EBA8);
  v6 = sub_AB9260();
  [v5 setPlayActivityFeatureName:v6];

  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];

  v9 = v5;
  if (!v8)
  {
    v9 = sub_AB9260();
    [v5 setRestorationIdentifier:v9];
  }

  v10 = *&v5[qword_DF8A70];
  v11 = v5;
  [v10 setObscuresBackgroundDuringPresentation:0];
  v12 = v11[qword_DF8A88];
  v11[qword_DF8A88] = 1;
  if ((v12 & 1) == 0)
  {
    sub_41D320(sub_41CDCC);
  }

  v13 = qword_DFE528;
  v14 = *&v11[qword_DFE528];
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v16 = *(v14 + 96);
  v17 = *(v14 + 104);
  *(v14 + 96) = sub_428FEC;
  *(v14 + 104) = v15;
  v18 = v11;

  sub_17654(v16, v17);

  v19 = qword_DF8A78;
  v20 = *&v18[qword_DF8A78];

  v21 = Search.resultSnapshotController.getter();

  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  v23 = (v21 + *(*v21 + 112));
  swift_beginAccess();
  v24 = *v23;
  v25 = v23[1];
  *v23 = sub_429024;
  v23[1] = v22;
  v55 = v20;
  sub_17654(v24, v25);

  v26 = *&v11[v13];

  v60[3] = &type metadata for Search.RequiredProperties;
  v60[4] = &off_D16038;
  v60[0] = sub_47F438();
  swift_beginAccess();
  sub_30E554(v26 + 16, v58);
  sub_1D3060(v60, &v59);
  sub_30E554(v26 + 16, v57);
  swift_beginAccess();
  sub_30EDB4(v58, v26 + 16);
  swift_endAccess();
  sub_476C14(v57);
  sub_30E5B0(v57);
  sub_30E5B0(v58);

  v27 = *&v18[v19];
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = &v27[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onPageRenderFinish];
  v30 = *&v27[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onPageRenderFinish];
  v31 = *&v27[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onPageRenderFinish + 8];
  *v29 = sub_42902C;
  v29[1] = v28;
  v32 = v27;

  sub_17654(v30, v31);

  v33 = *&v18[v19];
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = &v33[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onContextMenuPresentation];
  v36 = *&v33[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onContextMenuPresentation];
  v37 = *&v33[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onContextMenuPresentation + 8];
  *v35 = sub_429048;
  v35[1] = v34;
  v38 = v33;

  sub_17654(v36, v37);

  v39 = *&v18[v19];

  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = &v39[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onDragSessionStart];
  v42 = *&v39[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onDragSessionStart];
  v43 = *&v39[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onDragSessionStart + 8];
  *v41 = sub_429064;
  v41[1] = v40;

  sub_17654(v42, v43);

  v44 = Search.resultSnapshotController.getter();

  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = (v44 + *(*v44 + 128));
  swift_beginAccess();
  v47 = *v46;
  v48 = v46[1];
  *v46 = sub_429080;
  v46[1] = v45;

  sub_17654(v47, v48);

  v49 = Search.recentlySearchedSnapshotController.getter();

  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v51 = (v49 + *(*v49 + 128));
  swift_beginAccess();
  v52 = *v51;
  v53 = v51[1];
  *v51 = sub_42909C;
  v51[1] = v50;

  sub_17654(v52, v53);

  return v18;
}

void sub_41ED48(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, double))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if ((*(Strong + qword_DFE518) & 1) == 0)
    {
      v8 = *(Strong + qword_DFE528);
      swift_beginAccess();
      sub_30E554(v8 + 16, v9);
      LOBYTE(v8) = Search.Configuration.defaultSource.getter();
      sub_30E5B0(v9);
      sub_41FD6C(v8 & 1, a3, a4);
    }

    sub_420DF8(a3, a4);
  }
}

void sub_41EE1C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_420270();

    swift_beginAccess();
    sub_15F84((v3 + 17), v19, &qword_DFE5C0, &qword_B094D8);
  }

  else
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = Search.resultSnapshotController.getter();
    swift_beginAccess();
    sub_30E3FC((v6 + 2), v17);
  }

  else
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
  }

  sub_15F84(v19, v13, &qword_DFE5C0, &qword_B094D8);
  sub_15F84(v17, v15, &qword_DFE5C0, &qword_B094D8);
  if (v14)
  {
    sub_15F84(v13, v12, &qword_DFE5C0, &qword_B094D8);
    if (*(&v15[0] + 1))
    {
      v10[6] = v15[6];
      v10[7] = v15[7];
      v10[8] = v15[8];
      v11 = v16;
      v10[2] = v15[2];
      v10[3] = v15[3];
      v10[4] = v15[4];
      v10[5] = v15[5];
      v10[0] = v15[0];
      v10[1] = v15[1];
      v7 = _s16MusicApplication6SearchC21ResultSnapshotRequestV2eeoiySbAE_AEtFZ_0(v12, v10);
      sub_30E458(v10);
      sub_12E1C(v17, &qword_DFE5C0, &qword_B094D8);
      sub_12E1C(v19, &qword_DFE5C0, &qword_B094D8);
      sub_30E458(v12);
      sub_12E1C(v13, &qword_DFE5C0, &qword_B094D8);
      if ((v7 & 1) == 0)
      {
        return;
      }

      goto LABEL_13;
    }

    sub_12E1C(v17, &qword_DFE5C0, &qword_B094D8);
    sub_12E1C(v19, &qword_DFE5C0, &qword_B094D8);
    sub_30E458(v12);
LABEL_16:
    sub_12E1C(v13, &qword_E05F18, &unk_B0EB90);
    return;
  }

  sub_12E1C(v17, &qword_DFE5C0, &qword_B094D8);
  sub_12E1C(v19, &qword_DFE5C0, &qword_B094D8);
  if (*(&v15[0] + 1))
  {
    goto LABEL_16;
  }

  sub_12E1C(v13, &qword_DFE5C0, &qword_B094D8);
LABEL_13:
  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    sub_420270();

    MetricsEvent.PageRender.markPageAsUserInteractive()();
  }
}

void sub_41F138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Search.Event(0);
  __chkstk_darwin();
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE5E8, &unk_B0EB80);
    v16 = *(v15 + 48);
    v17 = a1;
    v18 = a2;
    v19 = *(v15 + 64);
    sub_42911C(v17, v12, type metadata accessor for Search.Item);
    v12[v16] = 5;
    sub_42911C(a3, &v12[v19], type metadata accessor for Search.ResultContext);
    v20 = type metadata accessor for Search.ResultContext(0);
    (*(*(v20 - 8) + 56))(&v12[v19], 0, 1, v20);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 16))(v10, v18, v7);
    sub_30EF2C(&qword_DFAA90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    sub_ABAD10();
    sub_41F3DC(v12, v21);
    sub_12E1C(v21, &qword_DF2BD0, &unk_AFDC00);
    sub_429A1C(v12, type metadata accessor for Search.Event);
  }
}

double sub_41F3DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v45 = a2;
  v5 = sub_AB3430();
  v40 = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin();
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00050, &qword_B094D0);
  __chkstk_darwin();
  v8 = &v38 - v7;
  type metadata accessor for MetricsPageProperties(0);
  __chkstk_darwin();
  v47 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Search.Event(0);
  __chkstk_darwin();
  v11 = (&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v13 = &v38 - v12;
  v14 = *(v2 + qword_DFE528);
  v15 = Search.resultSnapshotController.getter();
  swift_beginAccess();
  sub_30E3FC((v15 + 2), &v53);

  v43 = v55;
  v46 = v56;

  sub_30E458(&v53);
  v16 = a1;
  sub_42911C(a1, v13, type metadata accessor for Search.Event);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v17 = *(v3 + qword_DF8A70);
    v42 = &off_D07940;
    v18 = &qword_DF8C40;
  }

  else
  {
    v42 = &off_D0C3F8;
    v18 = &qword_DF8A78;
    v17 = v3;
  }

  v44 = *(v17 + *v18);
  sub_429A1C(v13, type metadata accessor for Search.Event);
  Search.resultSnapshotController.getter();
  RequestResponse.Controller.revision.getter();

  sub_42911C(a1, v11, type metadata accessor for Search.Event);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *(v54 + 9) = *(v11 + 25);
    v19 = v11[1];
    v53 = *v11;
    v54[0] = v19;
    v20 = v47;
    if (BYTE8(v54[1]) != 255)
    {
      v21 = v11[1];
      v51 = *v11;
      v52[0] = v21;
      *(v52 + 9) = *(v11 + 25);
      goto LABEL_10;
    }

    sub_12E1C(&v53, &qword_DFE5D0, &qword_B094F8);
  }

  else
  {
    sub_429A1C(v11, type metadata accessor for Search.Event);
    v20 = v47;
  }

  sub_420414(&v51);
LABEL_10:
  RequestResponse.Revision.content.getter(v8);
  v22 = *(*(*(v3 + qword_DF8A70) + qword_DF8C40) + OBJC_IVAR____TtCC16MusicApplication6Search3Bar_selectedSource);
  if (v22 == 2)
  {
    swift_beginAccess();
    sub_30E554(v14 + 16, &v53);
    LOBYTE(v22) = Search.Configuration.defaultSource.getter();
    sub_30E5B0(&v53);
  }

  v23 = v45;
  sub_475B48(v8, v22 & 1, v20);
  sub_12E1C(v8, &unk_E00050, &qword_B094D0);
  sub_15F84(v23, &v48, &qword_DF2BD0, &unk_AFDC00);
  if (*(&v49 + 1))
  {
    v53 = v48;
    v54[0] = v49;
    *&v54[1] = v50;
    ObjectType = swift_getObjectType();
    (v42[1])(ObjectType);
    v26 = v25;
    v27 = swift_getObjectType();
    v28 = (*(v26 + 128))(&v53, v27, v26);
    v30 = v29;
    swift_unknownObjectRelease();
    sub_486D08(a1, v20, v43, v46, v28, v30, 0);
    sub_8085C(&v53);
    sub_429A1C(v20, type metadata accessor for MetricsPageProperties);
    sub_30E4AC(&v51);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(&v48, &qword_DF2BD0, &unk_AFDC00);
    v31 = swift_getObjectType();
    (v42[1])(v31);
    v33 = v32;
    v34 = swift_getObjectType();
    v35 = v39;
    sub_3B8F68(v34);
    v36 = sub_21CCAC(1, v35, v23, v34, v33);
    (*(v40 + 8))(v35, v41);
    swift_unknownObjectRelease();
    sub_486D08(v16, v20, v43, v46, &dword_0 + 1, 0, v36);
    sub_429A1C(v20, type metadata accessor for MetricsPageProperties);
    sub_30E4AC(&v51);

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_41FA2C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(*(Strong + qword_DF8A70) + qword_DF8C40);

    [v3 resignFirstResponder];
  }
}

void sub_41FAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Search.Event(0);
  __chkstk_darwin();
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00050, &qword_B094D0);
  __chkstk_darwin();
  v6 = v12 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_420270();
    RequestResponse.Revision.content.getter(v6);
    v9 = type metadata accessor for Search.ResultContext(0);
    if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
    {
      sub_12E1C(v6, &unk_E00050, &qword_B094D0);
      v10 = 0;
    }

    else
    {
      v10 = *&v6[*(v9 + 36)];
      v11 = v10;
      sub_429A1C(v6, type metadata accessor for Search.ResultContext);
    }

    MetricsEvent.PageRender.updatePerformanceMetrics(_:with:)(v10, 0, 0);

    MetricsEvent.PageRender.markPageAppear()();

    sub_42103C();
    sub_4207CC();
    *(v4 + 4) = 0;
    *v4 = 0u;
    *(v4 + 1) = 0u;
    v4[40] = -1;
    swift_storeEnumTagMultiPayload();
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_41F3DC(v4, v12);
    sub_12E1C(v12, &qword_DF2BD0, &unk_AFDC00);
    sub_429A1C(v4, type metadata accessor for Search.Event);
  }
}

void sub_41FD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_42103C();
  }
}

double sub_41FD6C(char a1, uint64_t a2, void (*a3)(uint64_t, double))
{
  v51 = a3;
  v48 = a2;
  v4 = v3;
  v6 = sub_AB3430();
  v49 = *(v6 - 8);
  v50 = v6;
  __chkstk_darwin();
  v45 = v7;
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v47 = &v45 - v8;
  v9 = *(v4 + qword_DF8A70);
  v10 = qword_DF8C40;
  v11 = *(v9 + qword_DF8C40);
  v12 = a1 & 1;
  v11[OBJC_IVAR____TtCC16MusicApplication6Search3Bar_selectedSource] = a1 & 1;
  v13 = &v11[OBJC_IVAR____TtCC16MusicApplication6Search3Bar_barText];
  swift_beginAccess();
  v13[24] = v12;
  v14 = v11;
  sub_294A9C();
  v15 = *(*&v14[OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarContentView] + OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_sourceScopeBar);
  v16 = *&v15[OBJC_IVAR____TtCCC16MusicApplication6Search3Bar14SourceScopeBar_sources];
  v17 = v15;

  v18 = sub_469CF8(v12, v16);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
    [v17 setSelectedSegment:v18];
  }

  v21 = *(v4 + qword_DFE528);
  v22 = Search.resultSnapshotController.getter();
  swift_beginAccess();
  sub_30E3FC((v22 + 2), v53);

  v53[80] = v12;
  Search.resultSnapshotController.getter();
  sub_30E3FC(v53, v52);
  RequestResponse.Controller.request.setter(v52);
  sub_30E458(v53);

  v23 = *(v9 + v10);
  v24 = sub_29324C();

  v25 = *(*(v9 + v10) + OBJC_IVAR____TtCC16MusicApplication6Search3Bar_selectedSource);
  if (v25 == 2)
  {
    swift_beginAccess();
    sub_30E554(v21 + 16, v53);
    v26 = Search.Configuration.defaultSource.getter();
    sub_30E5B0(v53);
    if ((v26 & 1) == 0)
    {
LABEL_5:
      v27 = 1;
      goto LABEL_8;
    }
  }

  else if ((v25 & 1) == 0)
  {
    goto LABEL_5;
  }

  v27 = sub_ABB3C0();
LABEL_8:

  *(v24 + 145) = v27 & 1;
  v28 = v24;
  v29 = v24[4];
  v30 = *(v29 + 16);

  if (v30)
  {
    v31 = 0;
    v32 = (v29 + 40);
    while (v31 < *(v29 + 16))
    {
      v35 = *v32;
      v36 = qword_DE6D68;
      swift_unknownObjectRetain();
      if (v36 != -1)
      {
        swift_once();
      }

      if (byte_E71A90)
      {
        v33 = 0;
      }

      else
      {
        v33 = *(v28 + 145);
      }

      ++v31;
      ObjectType = swift_getObjectType();
      (*(v35 + 16))(v33, ObjectType, v35);
      swift_unknownObjectRelease();
      v32 += 2;
      if (v30 == v31)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_17:

  if (qword_DE6D68 != -1)
  {
LABEL_25:
    swift_once();
  }

  if (byte_E71A90 & 1) == 0 && (*(v28 + 145) & 1) != 0 && (sub_466F18())
  {
    v37 = v47;
    sub_AB3420();
    v38 = swift_allocObject();
    swift_weakInit();
    v40 = v49;
    v39 = v50;
    v41 = v46;
    (*(v49 + 16))(v46, v37, v50);
    v42 = (*(v40 + 80) + 24) & ~*(v40 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = v38;
    (*(v40 + 32))(v43 + v42, v41, v39);

    sub_48C6A0(v51, v43);
    (*(v40 + 8))(v37, v39);
  }

  return result;
}

uint64_t *sub_420270()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00050, &qword_B094D0);
  __chkstk_darwin();
  v2 = v8 - v1;
  type metadata accessor for MetricsPageProperties(0);
  __chkstk_darwin();
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = qword_DFE530;
  if (*(v0 + qword_DFE530))
  {
    v6 = *(v0 + qword_DFE530);
  }

  else
  {
    sub_420414(v8);
    Search.resultSnapshotController.getter();
    RequestResponse.Controller.revision.getter();

    RequestResponse.Revision.content.getter(v2);

    sub_475B48(v2, 2, v4);
    sub_12E1C(v2, &unk_E00050, &qword_B094D0);
    sub_30E4AC(v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE5C8, &unk_B094E0);
    swift_allocObject();
    v6 = MetricsEvent.PageRender.init(pageProperties:)(v4);
    *(v0 + v5) = v6;
  }

  return v6;
}

double sub_420414@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00050, &qword_B094D0);
  __chkstk_darwin();
  v4 = &v22 - v3;
  v5 = type metadata accessor for Search.ResultContext(0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + qword_DFE528);
  Search.resultSnapshotController.getter();
  v10 = RequestResponse.Controller.revision.getter();

  v11 = Search.resultSnapshotController.getter();
  swift_beginAccess();
  sub_30E3FC((v11 + 2), &v24);

  v12 = v25[10];
  v13 = v25[11];

  sub_30E458(&v24);
  if (*(v10 + 120))
  {
    goto LABEL_2;
  }

  v14 = *(*(*(v2 + qword_DF8A70) + qword_DF8C40) + OBJC_IVAR____TtCC16MusicApplication6Search3Bar_selectedSource);
  if (v14 == 2)
  {
    swift_beginAccess();
    sub_30E554(v9 + 16, &v24);
    v15 = Search.Configuration.defaultSource.getter();
    sub_30E5B0(&v24);
    if ((v15 & 1) == 0)
    {
LABEL_6:

LABEL_12:
      v18 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v18 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (!v18)
      {
        goto LABEL_17;
      }

      v19 = v23;
      *(v23 + 32) = 0;
      *v19 = 0u;
      *(v19 + 16) = 0u;
      *(v19 + 40) = 2;
      goto LABEL_20;
    }
  }

  else if ((v14 & 1) == 0)
  {
    goto LABEL_6;
  }

  v17 = sub_ABB3C0();

  if (v17)
  {
    goto LABEL_12;
  }

LABEL_2:
  RequestResponse.Revision.content.getter(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_12E1C(v4, &unk_E00050, &qword_B094D0);
LABEL_17:
    v20 = v23;
    *v23 = 0;
    *(v20 + 40) = 0;
    goto LABEL_20;
  }

  sub_4290B8(v4, v8);
  if (!*&v8[*(v5 + 32)])
  {
    sub_429A1C(v8, type metadata accessor for Search.ResultContext);
    goto LABEL_17;
  }

  sub_15F84(&v8[*(v5 + 28)], &v24, &unk_E00070, &unk_B0A990);
  sub_429A1C(v8, type metadata accessor for Search.ResultContext);
  if (v24)
  {
    v16 = v23;
    sub_E8BA0(v25, v23);
    sub_30E500(&v24);
  }

  else
  {
    sub_12E1C(&v24, &unk_E00070, &unk_B0A990);
    v16 = v23;
    *(v23 + 32) = 0;
    *v16 = 0u;
    *(v16 + 16) = 0u;
  }

  *(v16 + 40) = 1;
LABEL_20:

  return result;
}

void sub_4207CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00050, &qword_B094D0);
  __chkstk_darwin();
  v2 = &v43 - v1;
  v3 = *(v0 + qword_DFE528);
  swift_beginAccess();
  v45 = *(*(v3 + 80) + 16);
  v4 = *(v0 + qword_DF8A70);
  v5 = qword_DF8C40;
  v6 = *(v4 + qword_DF8C40);
  v7 = [v6 text];
  if (v7)
  {
    v8 = v7;
    v9 = sub_AB92A0();
    v11 = v10;

    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v9 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12 == 0;
  }

  else
  {

    v13 = 1;
  }

  v14 = *(v0 + qword_DFE518);
  v15 = [*(v4 + v5) isFirstResponder];
  if (v14 != 1)
  {
    [*(v4 + v5) setShowsScopeBar:0 animated:1];
    return;
  }

  if (((v15 | v13) & 1) == 0)
  {
    Search.resultSnapshotController.getter();
    v17 = RequestResponse.Controller.revision.getter();

    RequestResponse.Revision.content.getter(v2);
    v18 = type metadata accessor for Search.ResultContext(0);
    if ((*(*(v18 - 8) + 48))(v2, 1, v18) == 1)
    {
      sub_12E1C(v2, &unk_E00050, &qword_B094D0);
      memset(v53, 0, 48);
    }

    else
    {
      sub_15F84(&v2[*(v18 + 28)], v53, &unk_E00070, &unk_B0A990);
      sub_429A1C(v2, type metadata accessor for Search.ResultContext);
    }

    v19 = *(*(*(v4 + v5) + OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarContentView) + OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_resultScopeBar);
    sub_15F84(v53, v51, &unk_E00070, &unk_B0A990);
    v20 = *&v51[0];
    v21 = v19;
    if (v20)
    {
      v44 = v17;

      sub_30E500(v51);
      v22 = *(v20 + 16);
      if (v22)
      {
        v23 = v20 + 32;
        v24 = _swiftEmptyArrayStorage;
        do
        {
          sub_E8BA0(v23, &v48);
          sub_70DF8(&v48, v46);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_6C088(0, *(v24 + 2) + 1, 1, v24);
          }

          v26 = *(v24 + 2);
          v25 = *(v24 + 3);
          if (v26 >= v25 >> 1)
          {
            v24 = sub_6C088((v25 > 1), v26 + 1, 1, v24);
          }

          *(v24 + 2) = v26 + 1;
          v27 = &v24[40 * v26];
          v28 = v46[0];
          v29 = v46[1];
          *(v27 + 8) = v47;
          *(v27 + 2) = v28;
          *(v27 + 3) = v29;
          v23 += 40;
          --v22;
        }

        while (v22);
      }

      v17 = v44;
    }

    else
    {
      sub_12E1C(v51, &unk_E00070, &unk_B0A990);
    }

    sub_AB3970();

    v30 = *(*(*(v4 + v5) + OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarContentView) + OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_resultScopeBar);
    sub_15F84(v53, v51, &unk_E00070, &unk_B0A990);
    if (*&v51[0])
    {
      sub_E8BA0(v51 + 8, &v48);
      v31 = v30;
      sub_30E500(v51);
      if (*(&v49 + 1))
      {
        sub_70DF8(&v48, v51);
        goto LABEL_29;
      }
    }

    else
    {
      v32 = v30;
      sub_12E1C(v51, &unk_E00070, &unk_B0A990);
      v48 = 0u;
      v49 = 0u;
      v50 = 0;
    }

    sub_12E1C(&v48, &unk_E00060, &qword_B094F0);
    memset(v51, 0, sizeof(v51));
    v52 = 0;
LABEL_29:
    sub_AB3930();
    sub_12E1C(v51, &unk_DFC5A0, &unk_B0EB70);

    if ((*(v17 + 120) & 1) != 0 || v53[0])
    {
      v36 = *(v4 + v5);
      sub_15F84(v53, v51, &unk_E00070, &unk_B0A990);
      v37 = *&v51[0];
      if (*&v51[0])
      {
        v38 = v36;

        sub_30E500(v51);
        v39 = *(v37 + 16);

        v40 = v39 != 0;
      }

      else
      {
        v42 = v36;
        sub_12E1C(v51, &unk_E00070, &unk_B0A990);
        v40 = 0;
      }

      [v36 setShowsScopeBar:v40 animated:1];

      v16 = *(v4 + v5);
      v41 = 1;
    }

    else
    {
      if (v45 <= 1)
      {
        v35 = 0;
      }

      else
      {
        v33 = *(v17 + 112);
        v34 = *(v17 + 104) & 0xFFFFFFFFFFFFLL;
        if ((v33 & 0x2000000000000000) != 0)
        {
          v34 = HIBYTE(v33) & 0xF;
        }

        v35 = v34 != 0;
      }

      [*(v4 + v5) setShowsScopeBar:v35 animated:1];
      v16 = *(v4 + v5);
      v41 = 0;
    }

    sub_2935A0(v41, 1);
    sub_12E1C(v53, &unk_E00070, &unk_B0A990);

    goto LABEL_42;
  }

  [*(v4 + v5) setShowsScopeBar:v45 > 1 animated:1];
  v16 = *(v4 + v5);
  sub_2935A0(0, 1);
LABEL_42:
}

void sub_420DF8(uint64_t a1, void (*a2)(uint64_t, double))
{
  v5 = v2;
  v6 = *(v2 + qword_DFE528);
  swift_beginAccess();
  v7 = *(v6 + 80);
  v8 = *(v7 + 16);
  if (!v8)
  {

    v9 = _swiftEmptyArrayStorage;
LABEL_5:
    v21 = v9;
    sub_426D20(&v21);

    v12 = v21;
    v13 = *(v5 + qword_DF8A70);
    v14 = qword_DF8C40;
    v15 = *(v13 + qword_DF8C40);
    v16 = *(v15 + OBJC_IVAR____TtCC16MusicApplication6Search3Bar_selectedSource);
    if (v16 == 2)
    {
      sub_30E554(v6 + 16, &v21);
      LOBYTE(v16) = Search.Configuration.defaultSource.getter();
      sub_30E5B0(&v21);
      v15 = *(v13 + v14);
    }

    v17 = *(*(v15 + OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarContentView) + OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_sourceScopeBar);
    *&v17[OBJC_IVAR____TtCCC16MusicApplication6Search3Bar14SourceScopeBar_sources] = v12;
    v18 = v17;

    sub_295DE8();

    if (!sub_412FC0(v16 & 1, v12))
    {
      if (!*(v12 + 2))
      {

        sub_30E554(v6 + 16, &v21);
        LOBYTE(v16) = Search.Configuration.defaultSource.getter();
        sub_30E5B0(&v21);
        goto LABEL_11;
      }

      LOBYTE(v16) = v12[32];
    }

LABEL_11:
    sub_41FD6C(v16 & 1, a1, a2);
    sub_4207CC();
    return;
  }

  v19 = a1;
  v20 = a2;
  v9 = sub_130800(v8, 0);
  v10 = sub_131344(&v21, v9 + 32, v8, v7);
  v11 = v21;
  swift_bridgeObjectRetain_n();
  sub_2BB88(v11);
  if (v10 == v8)
  {
    a1 = v19;
    a2 = v20;
    goto LABEL_5;
  }

  __break(1u);

  __break(1u);
}

void sub_42103C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00050, &qword_B094D0);
  __chkstk_darwin();
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v33 - v4;
  v6 = type metadata accessor for Search.ResultContext(0);
  v7 = *(v6 - 1);
  __chkstk_darwin();
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v33 - v10;
  v12 = qword_DF8A78;
  v13 = *(v0 + qword_DF8A78);
  v14 = v13[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_isLoading];
  v13[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_isLoading] = 0;
  v15 = v13;
  sub_34DA84(v14);

  v16 = *(*(v1 + qword_DF8A70) + qword_DF8C40);
  v17 = [v16 text];
  if (v17)
  {
    v33 = v9;
    v34 = v3;
    v18 = v17;
    sub_AB92A0();

    v19 = String.trim()();

    v20 = (v19._object >> 56) & 0xF;
    if ((v19._object & 0x2000000000000000) == 0)
    {
      v20 = v19._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      v21 = *(v1 + v12);
      Search.resultSnapshotController.getter();
      RequestResponse.Controller.revision.getter();

      v22 = v34;
      RequestResponse.Revision.content.getter(v34);

      v23 = *(v7 + 48);
      if (v23(v22, 1, v6) == 1)
      {
        type metadata accessor for Search.Item(0);
        sub_1D30D0();
        sub_30EF2C(&qword_DF4FB0, type metadata accessor for Search.Item, &protocol conformance descriptor for Search.Item);
        v24 = v33;
        sub_AB5110();
        v25 = (v24 + v6[7]);
        v25[1] = 0u;
        v25[2] = 0u;
        *v25 = 0u;
        v26 = (v24 + v6[5]);
        *v26 = 0;
        v26[1] = 0;
        *(v24 + v6[6]) = 1;
        *(v24 + v6[8]) = 0;
        *(v24 + v6[9]) = 0;
        v27 = (v24 + v6[10]);
        *v27 = 0;
        v27[1] = 0;
        v27[2] = 0x7000000000000007;
        if (v23(v22, 1, v6) != 1)
        {
          sub_12E1C(v22, &unk_E00050, &qword_B094D0);
        }
      }

      else
      {
        v24 = v33;
        sub_4290B8(v22, v33);
      }

      v32 = v24;
      goto LABEL_16;
    }
  }

  else
  {
  }

  v21 = *(v1 + v12);
  Search.recentlySearchedSnapshotController.getter();
  RequestResponse.Controller.revision.getter();

  RequestResponse.Revision.content.getter(v5);

  v28 = *(v7 + 48);
  if (v28(v5, 1, v6) == 1)
  {
    type metadata accessor for Search.Item(0);
    sub_1D30D0();
    sub_30EF2C(&qword_DF4FB0, type metadata accessor for Search.Item, &protocol conformance descriptor for Search.Item);
    sub_AB5110();
    v29 = &v11[v6[7]];
    *(v29 + 1) = 0u;
    *(v29 + 2) = 0u;
    *v29 = 0u;
    v30 = &v11[v6[5]];
    *v30 = 0;
    *(v30 + 1) = 0;
    v11[v6[6]] = 1;
    *&v11[v6[8]] = 0;
    *&v11[v6[9]] = 0;
    v31 = &v11[v6[10]];
    *v31 = 0;
    *(v31 + 1) = 0;
    *(v31 + 2) = 0x7000000000000007;
    if (v28(v5, 1, v6) != 1)
    {
      sub_12E1C(v5, &unk_E00050, &qword_B094D0);
    }
  }

  else
  {
    sub_4290B8(v5, v11);
  }

  v32 = v11;
LABEL_16:
  sub_34DF14(v32);
}

uint64_t Logger.mediaPicker.unsafeMutableAddressor()
{
  if (qword_DE6BA8 != -1)
  {
    swift_once();
  }

  v0 = sub_AB4BC0();

  return __swift_project_value_buffer(v0, static Logger.mediaPicker);
}

void UpdateMediaPickerViewController(_:with:)(void *a1, void *a2)
{
  type metadata accessor for MediaPickerNavigationController(0);
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = *(v4 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration);
    *(v4 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration) = a2;
    v7 = a1;
    v8 = a2;
    sub_421C7C(v6);

    v9 = *(v5 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_prompt);
    v10 = *(v5 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_prompt + 8);
    *(v5 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_prompt) = xmmword_AF82C0;
    if (v10 != 1)
    {
      sub_422054();
      sub_3A7960(v9, v10);
    }

    if (qword_DE6BA8 != -1)
    {
      swift_once();
    }

    v11 = sub_AB4BC0();
    __swift_project_value_buffer(v11, static Logger.mediaPicker);
    v12 = v8;
    oslog = sub_AB4BA0();
    v13 = sub_AB9F10();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v40 = v15;
      *v14 = 136446210;
      v16 = v12;
      v17 = [v16 description];
      v18 = sub_AB92A0();
      v20 = v19;

      v21 = sub_425E68(v18, v20, &v40);

      *(v14 + 4) = v21;
      _os_log_impl(&dword_0, oslog, v13, "Updating picker with configuration=%{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);

LABEL_12:
      return;
    }
  }

  else
  {
    if (qword_DE6BA8 != -1)
    {
      swift_once();
    }

    v22 = sub_AB4BC0();
    __swift_project_value_buffer(v22, static Logger.mediaPicker);
    v23 = a1;
    v24 = a2;
    oslog = sub_AB4BA0();
    v25 = sub_AB9F30();

    if (os_log_type_enabled(oslog, v25))
    {
      v26 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v26 = 136446466;
      v27 = v23;
      v28 = [v27 description];
      v29 = sub_AB92A0();
      v31 = v30;

      v32 = sub_425E68(v29, v31, &v40);

      *(v26 + 4) = v32;
      *(v26 + 12) = 2082;
      v33 = v24;
      v34 = [v33 description];
      v35 = sub_AB92A0();
      v37 = v36;

      v38 = sub_425E68(v35, v37, &v40);

      *(v26 + 14) = v38;
      _os_log_impl(&dword_0, oslog, v25, "MediaPickerNavigationController.Update(_, with:) not updating configuration [passed a mediaPickerViewController not of type MediaPickerNavigationController] mediaPickerViewController=%{public}s configuration=%{public}s", v26, 0x16u);
      swift_arrayDestroy();

      goto LABEL_12;
    }
  }
}

id sub_421A38(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = &v1[OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_prompt];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController____lazy_storage___cancelBarButtonItem] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController____lazy_storage___doneBarButtonItem] = 0;
  v5 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_viewControllerBarButtonItemsRegistrations;
  *&v1[v5] = sub_96FE0(_swiftEmptyArrayStorage);
  *&v1[OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_selectedItems] = _swiftEmptyArrayStorage;
  v6 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_selectedPlaybackIntentDescriptor;
  v7 = type metadata accessor for PlaybackIntentDescriptor(0);
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  *&v1[OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController____lazy_storage___spinnerBarButtonItem] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration] = a1;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v8 = a1;
  v9 = objc_msgSendSuper2(&v12, "initWithNavigationBarClass:toolbarClass:", 0, 0);
  v10 = [v9 navigationBar];
  [v10 setPrefersLargeTitles:1];

  return v9;
}

void sub_421C7C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration;
  v5 = *&v1[OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration];
  sub_13C80(0, &qword_DFE5D8, MPMediaPickerConfiguration_ptr);
  v6 = v5;
  v7 = sub_ABA790();

  if (v7)
  {
    return;
  }

  v33.receiver = v2;
  v33.super_class = ObjectType;
  v30 = ObjectType;
  v8 = objc_msgSendSuper2(&v33, "viewControllers");
  v29 = sub_13C80(0, &qword_DE7500, UIViewController_ptr);
  v9 = sub_AB9760();

  if (v9 >> 62)
  {
    v10 = sub_ABB060();
    if (v10)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v10 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    if (v10)
    {
LABEL_4:
      if (v10 < 1)
      {
        __break(1u);
        return;
      }

      v11 = 0;
      v31 = v2;
      do
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v19 = sub_35F8D4(v11, v9);
        }

        else
        {
          v19 = *(v9 + 8 * v11 + 32);
        }

        v20 = v19;
        v21 = [v2 overrideTraitCollectionForChildViewController:{v19, v29}];
        if (v21)
        {
          v12 = v21;
          sub_13C80(0, &qword_E00AB0, UITraitCollection_ptr);
          v13 = UITraitCollection.init(mediaPickerConfiguration:)(*&v2[v4]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
          v14 = swift_allocObject();
          *(v14 + 16) = xmmword_AF7C50;
          *(v14 + 32) = v12;
          *(v14 + 40) = v13;
          v15 = v13;
          v16 = v12;
          isa = sub_AB9740().super.isa;
          v18 = [objc_opt_self() traitCollectionWithTraitsFromCollections:isa];

          v2 = v31;
        }

        else
        {
          v18 = 0;
        }

        ++v11;
        [v2 setOverrideTraitCollection:v18 forChildViewController:v20];
      }

      while (v10 != v11);
    }
  }

  sub_422054();
  if ([*&v2[v4] picksSingleCollectionEntity])
  {
    [*&v2[v4] setSelectionMode:2];
  }

  if ([*&v2[v4] allowsPickingMultipleItems])
  {
    [*&v2[v4] setSelectionMode:1];
  }

  v32.receiver = v2;
  v32.super_class = v30;
  v22 = objc_msgSendSuper2(&v32, "viewControllers");
  v23 = sub_AB9760();

  if (v23 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v25 = 0;
    while (1)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v26 = sub_35F8D4(v25, v23);
      }

      else
      {
        if (v25 >= *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_29;
        }

        v26 = *(v23 + 8 * v25 + 32);
      }

      v27 = v26;
      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      sub_41D3EC(v26);

      ++v25;
      if (v28 == i)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

LABEL_31:
}

void sub_422054()
{
  ObjectType = swift_getObjectType();
  sub_423498();
  v12.receiver = v0;
  v3 = v2;
  v12.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v12, "viewControllers");
  sub_13C80(0, &qword_DE7500, UIViewController_ptr);
  v5 = sub_AB9760();

  if (!(v5 >> 62))
  {
    v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_13:

    return;
  }

  v6 = sub_ABB060();
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v6 >= 1)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = sub_35F8D4(v7, v5);
      }

      else
      {
        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = [v9 navigationItem];
      if (v3)
      {

        v8 = sub_AB9260();
      }

      else
      {
        v8 = 0;
      }

      ++v7;
      [v11 setPrompt:v8];
    }

    while (v6 != v7);
    goto LABEL_13;
  }

  __break(1u);
}

void sub_4221E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v2 = &v29 - v1;
  v3 = type metadata accessor for PlaybackIntentDescriptor(0);
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin().n128_u64[0];
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration;
  if ([*(v0 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration) selectionMode] == &dword_4)
  {
    v9 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_selectedPlaybackIntentDescriptor;
    swift_beginAccess();
    if (!(*(v4 + 48))(v0 + v9, 1, v3))
    {
      v10 = sub_42911C(v0 + v9, v7, type metadata accessor for PlaybackIntentDescriptor);
      v16 = PlaybackIntentDescriptor.intent.getter(v15, v10, v11, v12, v13, v14);
      sub_429A1C(v7, type metadata accessor for PlaybackIntentDescriptor);
      [v16 setActionAfterQueueLoad:0];
      v17 = [*(v0 + v8) playbackArchiveConfiguration];
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_428EC8;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_151E0;
      aBlock[3] = &block_descriptor_137;
      v19 = _Block_copy(aBlock);

      [v16 getArchiveWithConfiguration:v17 completion:v19];
      _Block_release(v19);
    }
  }

  else
  {
    v20 = v0 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerDelegate;
    swift_beginAccess();
    p_vtable = (&OBJC_METACLASS____TtC16MusicApplication20AccountButtonWrapper + 24);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v22 = *(v20 + 8);
      ObjectType = swift_getObjectType();
      v23 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_selectedItems;
      swift_beginAccess();
      v24 = *(v0 + v23);
      v25 = *(v0 + v8);
      v30 = *(v22 + 8);

      v26 = v25;
      v30(v0, v24, 0, v26, ObjectType, v22);
      swift_unknownObjectRelease();
      p_vtable = &OBJC_METACLASS____TtC16MusicApplication20AccountButtonWrapper.vtable;
    }

    v27 = p_vtable[471];
    swift_beginAccess();
    *&v27[v0] = _swiftEmptyArrayStorage;

    (*(v4 + 56))(v2, 1, 1, v3);
    v28 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_selectedPlaybackIntentDescriptor;
    swift_beginAccess();
    sub_428E20(v2, v0 + v28);
    swift_endAccess();
    sub_4253F8();
    sub_12E1C(v2, &unk_DEA510, "\b]\r");
  }
}

void sub_4225E0(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 || !a1)
  {
    if (qword_DE6BA8 != -1)
    {
      swift_once();
    }

    v7 = sub_AB4BC0();
    __swift_project_value_buffer(v7, static Logger.mediaPicker);
    v8 = a1;
    swift_errorRetain();
    oslog = sub_AB4BA0();
    v9 = sub_AB9F30();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v10 = 136446466;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE5A0, &qword_B0EB40);
      v11 = sub_AB9350();
      v13 = sub_425E68(v11, v12, &v19);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2082;
      v14 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E05F08, &unk_B0EB48);
      v15 = sub_AB9350();
      v17 = sub_425E68(v15, v16, &v19);

      *(v10 + 14) = v17;
      _os_log_impl(&dword_0, oslog, v9, "MediaPickerNavigationController.finish(): Did not create playback archive with error=%{public}s playbackArchive=%{public}s", v10, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    v5 = swift_allocObject();
    *(v5 + 16) = a3;
    *(v5 + 24) = a1;
    v6 = a1;

    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_428F28, v5);
  }
}

void sub_4228A8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v4 = &v15[-v3];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = Strong + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 8);
      v11 = *&v6[OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration];
      v10(v6, a2, 1, v11, ObjectType, v8);
      swift_unknownObjectRelease();
    }

    v12 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_selectedItems;
    swift_beginAccess();
    *&v6[v12] = _swiftEmptyArrayStorage;

    v13 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
    v14 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_selectedPlaybackIntentDescriptor;
    swift_beginAccess();
    sub_428E20(v4, &v6[v14]);
    swift_endAccess();
    sub_4253F8();
    sub_12E1C(v4, &unk_DEA510, "\b]\r");
  }
}

void sub_422AB4(unint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      if (a1 >> 62)
      {
        if (sub_ABB060() >= 1)
        {
          goto LABEL_5;
        }
      }

      else if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)) >= 1)
      {
LABEL_5:
        if (qword_DE6BA8 != -1)
        {
          swift_once();
        }

        v7 = sub_AB4BC0();
        __swift_project_value_buffer(v7, static Logger.mediaPicker);

        v8 = sub_AB4BA0();
        v9 = sub_AB9F50();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 134349056;
          if (a1 >> 62)
          {
            v11 = sub_ABB060();
          }

          else
          {
            v11 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
          }

          *(v10 + 4) = v11;

          _os_log_impl(&dword_0, v8, v9, "Selecting %{public}ld songs.", v10, 0xCu);
        }

        else
        {
        }

        swift_beginAccess();

        sub_19638(v12);
        swift_endAccess();
        sub_422054();
        sub_422CC4();
        if (a3)
        {
          a3(1);
        }

        return;
      }
    }
  }

  if (a3)
  {
    a3(0);
  }
}

void sub_422CC4()
{
  ObjectType = swift_getObjectType();
  if ((([*&v0[OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration] selectionMode] - 1) & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    v24.receiver = v0;
    v24.super_class = ObjectType;
    v4 = objc_msgSendSuper2(&v24, "viewControllers");
    sub_13C80(0, &qword_DE7500, UIViewController_ptr);
    v12 = sub_AB9760();

    if (v12 >> 62)
    {
      v13 = sub_ABB060();
      if (v13)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v13 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
      if (v13)
      {
LABEL_17:
        v14 = v13 - 1;
        if (v13 >= 1)
        {
          v15 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_selectedItems;
          swift_beginAccess();
          v16 = 0;
          if ((v12 & 0xC000000000000001) == 0)
          {
            goto LABEL_20;
          }

LABEL_19:
          for (i = sub_35F8D4(v16, v12); ; i = *(v12 + 8 * v16 + 32))
          {
            v18 = i;
            v19 = [i navigationItem];
            v20 = [v19 rightBarButtonItem];
            if (v20)
            {
              v21 = v20;

              v22 = *&v0[v15];
              if (v22 >> 62)
              {
                v23 = sub_ABB060();
              }

              else
              {
                v23 = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8));
              }

              [v21 setEnabled:v23 > 0];

              if (v14 == v16)
              {
                goto LABEL_33;
              }
            }

            else
            {

              if (v14 == v16)
              {
                goto LABEL_33;
              }
            }

            ++v16;
            if ((v12 & 0xC000000000000001) != 0)
            {
              goto LABEL_19;
            }

LABEL_20:
            ;
          }
        }

        __break(1u);
        goto LABEL_37;
      }
    }

LABEL_33:

    return;
  }

  v1 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_selectedItems;
  swift_beginAccess();
  v3 = *&v0[v1];
  if (v3 >> 62)
  {
    if (sub_ABB060() < 2)
    {
      goto LABEL_14;
    }
  }

  else if (*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)) < 2)
  {
    goto LABEL_14;
  }

  v4 = *&v0[v1];
  if (!(v4 >> 62))
  {
    if (*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_6;
    }

LABEL_14:
    sub_4221E4();
    return;
  }

  if (!sub_ABB060())
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_37:

    v5 = sub_3602FC(0, v4);

    goto LABEL_9;
  }

  if (*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
  {
    v5 = *(v4 + 32);
LABEL_9:
    v6 = v0;
    if (qword_DE6BA8 != -1)
    {
      swift_once();
    }

    v7 = sub_AB4BC0();
    __swift_project_value_buffer(v7, static Logger.mediaPicker);
    v8 = sub_AB4BA0();
    v9 = sub_AB9F30();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67240192;
      _os_log_impl(&dword_0, v8, v9, "Attempted to finish with multiple entities selected when selectionMode.supportsMultiSelect=%{BOOL,public}d", v10, 8u);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_AF82B0;
    *(v11 + 32) = v5;
    *&v6[v1] = v11;

    goto LABEL_14;
  }

  __break(1u);
}

void sub_42308C(void *a1, void *a2, char a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  sub_13C80(0, &qword_E00AB0, UITraitCollection_ptr);
  v9 = UITraitCollection.init(mediaPickerConfiguration:)(*&v3[OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration]);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_AF7C50;
    *(v10 + 32) = v9;
    *(v10 + 40) = a2;
    v11 = a2;
    v12 = v9;
    isa = sub_AB9740().super.isa;
    v9 = [objc_opt_self() traitCollectionWithTraitsFromCollections:isa];
  }

  v14 = [a1 navigationItem];
  v15 = [a1 title];
  [v14 setTitle:v15];

  v16 = [a1 navigationItem];
  if (sub_38720C())
  {
    if (qword_DE6B08 != -1)
    {
      swift_once();
    }

    v17 = qword_E01278;
    v18 = sub_AB9890().super.super.isa;
    objc_setAssociatedObject(v16, v17, v18, &dword_0 + 3);

    v16 = v18;
  }

  v19 = [a1 navigationItem];
  sub_423498();
  if (v20)
  {
    v21 = sub_AB9260();
  }

  else
  {
    v21 = 0;
  }

  [v19 setPrompt:v21];

  v30.receiver = v4;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, "pushViewController:overrideTraitCollection:animated:", a1, v9, a3 & 1);
  sub_41D3EC(a1);
  v22 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_viewControllerBarButtonItemsRegistrations;
  swift_beginAccess();
  v23 = sub_D1498(a1, *&v4[v22]);
  swift_endAccess();
  if (v23)
  {

    v9 = v23;
LABEL_19:

    return;
  }

  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = sub_AB3080();

  swift_beginAccess();
  v25 = *&v4[v22];
  if ((v25 & 0xC000000000000001) == 0)
  {
LABEL_18:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *&v4[v22];
    sub_92FE8(v24, a1, isUniquelyReferenced_nonNull_native);
    *&v4[v22] = v29;
    swift_endAccess();
    goto LABEL_19;
  }

  if (v25 < 0)
  {
    v26 = *&v4[v22];
  }

  else
  {
    v26 = v25 & 0xFFFFFFFFFFFFFF8;
  }

  v27 = sub_ABAFA0();
  if (!__OFADD__(v27, 1))
  {
    *&v4[v22] = sub_426614(v26, v27 + 1, &unk_DFEF90, &unk_AFA840, &type metadata accessor for NSKeyValueObservation, sub_328D50);
    goto LABEL_18;
  }

  __break(1u);
}

uint64_t sub_423498()
{
  sub_AB9230();
  __chkstk_darwin();
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v1 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_selectedItems;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    v3 = sub_ABB060();
  }

  else
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  }

  v4 = *(v0 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_prompt + 8);
  if (v4)
  {
    if (v4 == &dword_0 + 1)
    {
      v5 = *(v0 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration);
      v6 = [v5 prompt];
      if (v6)
      {
        v7 = v6;
        v8 = sub_AB92A0();

        return v8;
      }

      else
      {

        return 0;
      }
    }

    else
    {
      v10 = *(v0 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_prompt);

      sub_AB9220();
      if (v3)
      {
        v15._countAndFlagsBits = 0;
        v15._object = 0xE000000000000000;
        sub_AB9210(v15);
        sub_AB91F0();
        v11._countAndFlagsBits = 0x1000000000000015;
        v11._object = 0x8000000000B64A90;
      }

      else
      {
        v11._object = 0x8000000000B64AB0;
        v11._countAndFlagsBits = 0x1000000000000010;
      }

      sub_AB9210(v11);
      v16._countAndFlagsBits = v10;
      v16._object = v4;
      sub_AB9200(v16);
      v17._countAndFlagsBits = 782074082;
      v17._object = 0xA400000000000000;
      sub_AB9210(v17);
      sub_AB9240();
      sub_AB3550();
      v12 = sub_AB9320();
      sub_3A7960(v10, v4);
      return v12;
    }
  }

  else
  {
    if (v3)
    {
      sub_AB9220();
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      sub_AB9210(v13);
      sub_AB91F0();
      v14._countAndFlagsBits = 0xD00000000000001FLL;
      v14._object = 0x8000000000B64AD0;
      sub_AB9210(v14);
      sub_AB9240();
    }

    else
    {
      sub_AB91E0();
    }

    sub_AB3550();
    return sub_AB9320();
  }
}

void sub_423B2C()
{
  v64.receiver = v0;
  v64.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v64, "viewControllers");
  sub_13C80(0, &qword_DE7500, UIViewController_ptr);
  v2 = sub_AB9760();

  if (v2 >> 62)
  {
    v3 = sub_ABB060();
  }

  else
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  }

  if (!v3)
  {
    if (qword_DE6BA8 != -1)
    {
      swift_once();
    }

    v4 = sub_AB4BC0();
    v5 = __swift_project_value_buffer(v4, static Logger.mediaPicker);
    v6 = v0;
    v7 = sub_AB4BA0();
    v8 = sub_AB9F50();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      aBlock[0] = v10;
      *v9 = 136446210;
      v11 = v6;
      v12 = [v11 description];
      v13 = sub_AB92A0();
      v15 = v14;

      v16 = sub_425E68(v13, v15, aBlock);

      *(v9 + 4) = v16;
      _os_log_impl(&dword_0, v7, v8, "Creating root VC for picker=%{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
    }

    v17 = *&v6[OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration];
    if (MPMediaPickerConfiguration.supportsCatalogContent.getter())
    {
      v18 = [objc_allocWithZone(type metadata accessor for MediaPickerMenuTableViewController()) init];
      v19 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E05F10, &qword_B0EB58));
      v20 = sub_41E670(v18);
    }

    else
    {
      v21 = v17;
      v20 = sub_40A1F0(v17, 0);
    }

    [v20 setPlayActivityFeatureNameSourceViewController:v6];
    [v6 pushViewController:v20 animated:0];
    v22 = v17;
    v23 = v20;
    v24 = sub_AB4BA0();
    v25 = sub_AB9F10();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v26 = 136446466;
      v61 = v23;
      v27 = v23;
      v28 = [v27 description];
      v60 = v5;
      v29 = sub_AB92A0();
      v31 = v30;

      v32 = sub_425E68(v29, v31, aBlock);

      *(v26 + 4) = v32;
      *(v26 + 12) = 2082;
      v33 = v22;
      v34 = [v33 description];
      v35 = sub_AB92A0();
      v37 = v36;

      v38 = v35;
      v23 = v61;
      v39 = sub_425E68(v38, v37, aBlock);

      *(v26 + 14) = v39;
      _os_log_impl(&dword_0, v24, v25, "Root VC=%{public}s for pickerConfiguration=%{public}s", v26, 0x16u);
      swift_arrayDestroy();
    }

    if ((MPMediaPickerConfiguration.supportsCatalogContent.getter() & 1) != 0 && [v22 automaticallyDrillsToLibrary])
    {
      v40 = v22;
      if (sub_409324(v22, 0))
      {
        v41 = sub_40A1F0(v22, 0);

        [v6 pushViewController:v41 animated:0];
        v42 = v40;
        v40 = sub_AB4BA0();
        v43 = sub_AB9F10();

        if (os_log_type_enabled(v40, v43))
        {
          v44 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          aBlock[0] = v62;
          *v44 = 136446210;
          v45 = v42;
          v46 = [v45 description];
          v47 = v23;
          v48 = sub_AB92A0();
          v50 = v49;

          v51 = v48;
          v23 = v47;
          v52 = sub_425E68(v51, v50, aBlock);

          *(v44 + 4) = v52;
          _os_log_impl(&dword_0, v40, v43, "Auto-drill to library for pickerConfiguration=%{public}s", v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v62);
        }
      }
    }

    v53 = [v6 topViewController];
    if (v53)
    {
      v54 = v53;
      v55 = [v53 contentScrollView];

      if (v55)
      {
        v56 = [objc_opt_self() sharedApplication];
        v57 = swift_allocObject();
        *(v57 + 16) = v55;
        aBlock[4] = sub_428FD8;
        aBlock[5] = v57;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1B5EB4;
        aBlock[3] = &block_descriptor_33_1;
        v58 = _Block_copy(aBlock);
        v59 = v55;

        [v56 _performBlockAfterCATransactionCommits:v58];

        _Block_release(v58);
        v22 = v59;
        v23 = v56;
      }
    }
  }
}

void sub_424280()
{
  v36.receiver = v0;
  v36.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v36, "viewDidLayoutSubviews");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_17;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v37.origin.x = v4;
  v37.origin.y = v6;
  v37.size.width = v8;
  v37.size.height = v10;
  Width = CGRectGetWidth(v37);
  v12 = HI.SizeClass.init(_:)(Width);
  HI.SizeClass.margin.getter(v12);
  sub_AB9EA0();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [v0 view];
  if (!v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22 = v21;
  [v21 music_layoutInsets];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  if (v24 != v14 || v26 != v16 || v28 != v18 || v30 != v20)
  {
    v34 = [v0 view];
    if (v34)
    {
      v35 = v34;
      [v34 music_setLayoutInsets:{v14, v16, v18, v20}];

      return;
    }

LABEL_18:
    __break(1u);
  }
}