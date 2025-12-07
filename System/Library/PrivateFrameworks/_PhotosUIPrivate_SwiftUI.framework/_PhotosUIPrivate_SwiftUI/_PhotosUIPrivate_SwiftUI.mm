id sub_29EC67A58(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_29EC67B08(a1) == 1)
  {

    return sub_29EC67CC4(a2, v3, a1);
  }

  else
  {
    sub_29EC6A3C4(0, &qword_2A1890A48, 0x29EDC61F0);

    return sub_29EC67E44(a1, a2, a3);
  }
}

uint64_t sub_29EC67B08(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_29EC7F404();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_29EC67B2C(uint64_t result)
{
  if ((result & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x29EDAF180](0, result);
    goto LABEL_4;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(result + 32);
LABEL_4:
    v2 = v1;
    sub_29EC6A3C4(0, &qword_2A1890A50, 0x29EDC61B8);
    return sub_29EC67BA0(v2);
  }

  __break(1u);
  return result;
}

id sub_29EC67BA0(void *a1)
{
  v1 = a1;
  v2 = [a1 librarySpecificFetchOptions];
  if ([v1 wellKnownPhotoLibraryIdentifier] == 1 && (v3 = objc_msgSend(objc_opt_self(), sel_fetchAssetCollectionsWithType_subtype_options_, 2, 1000000205, v2), v4 = objc_msgSend(v3, sel_firstObject), v3, v4))
  {
    v5 = [swift_getObjCClassFromMetadata() dataSourceManagerForAssetCollection_];
    v6 = v1;
    v1 = v4;
  }

  else
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = sub_29EC69058();
    v5 = [ObjCClassFromMetadata dataSourceManagerWithAssets_];
  }

  v8 = v5;

  return v8;
}

uint64_t sub_29EC67CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4 > 1)
  {
    sub_29EC7F3A4();
    result = sub_29EC6A3C4(0, &qword_2A1890A50, 0x29EDC61B8);
    v7 = a1 + 48;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {

        v8 = MEMORY[0x29EDAF180](0, a3);
      }

      else
      {
        if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v9 = *(a3 + 32);

        v8 = v9;
      }

      sub_29EC67BA0(v8);

      sub_29EC7F384();
      sub_29EC7F3B4();
      sub_29EC7F3C4();
      result = sub_29EC7F394();
      v7 += 24;
      if (!--v4)
      {
        v10 = objc_allocWithZone(sub_29EC7EB14());
        v11 = sub_29EC7EAF4();
        goto LABEL_10;
      }
    }
  }

  v11 = sub_29EC67B2C(a3);
LABEL_10:
  v12 = v11;

  return v12;
}

id sub_29EC67E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s3KeyCMa();
  v5 = sub_29EC6833C(0);
  v6 = sub_29EC7EB14();

  v42 = v6;
  v8 = sub_29EC683D0(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1890A58, &qword_29EC7FF80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29EC7FF40;
  *(inited + 32) = v5;
  *(inited + 40) = v8;
  sub_29EC6A3C4(0, &qword_2A1890BB0, 0x29EDC6200);
  sub_29EC698B4();
  v41 = v5;
  v40 = v8;
  v10 = sub_29EC7F1F4();
  v11 = 0;
  v45 = sub_29EC74CC4();
  v43 = a2;
  while (1)
  {
    if (v11 == v45)
    {

      v36 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      sub_29EC68594(v10);

      v37 = sub_29EC7F1D4();

      v38 = [v36 initWithDataSourceManagerByKey:v37 currentKey:v41];

      return v38;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x29EDAF180](v11, a1);
    }

    else
    {
      if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v12 = *(a1 + 32 + 8 * v11);
    }

    v13 = v12;
    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      break;
    }

    v15 = v12;
    v16 = sub_29EC6833C(v13);
    v17 = *(a2 + 16);
    if (v17 <= 1)
    {
      sub_29EC6A3C4(0, &qword_2A1890A50, 0x29EDC61B8);
      v21 = sub_29EC67BA0(v15);
    }

    else
    {
      v44 = v15;
      v18 = v15;
      sub_29EC7F3A4();
      sub_29EC6A3C4(0, &qword_2A1890A50, 0x29EDC61B8);
      do
      {
        v19 = v18;
        sub_29EC67BA0(v19);
        sub_29EC7F384();
        sub_29EC7F3B4();
        sub_29EC7F3C4();
        sub_29EC7F394();
        --v17;
      }

      while (v17);
      v20 = objc_allocWithZone(v42);
      v21 = sub_29EC7EAF4();

      a2 = v43;
      v15 = v44;
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      if (v10 < 0)
      {
        v22 = v10;
      }

      else
      {
        v22 = v10 & 0xFFFFFFFFFFFFFF8;
      }

      v23 = sub_29EC7F404();
      if (__OFADD__(v23, 1))
      {
        goto LABEL_33;
      }

      v24 = a2;
      v25 = v15;
      v10 = sub_29EC69B2C(v22, v23 + 1);
    }

    else
    {
      v24 = a2;
      v25 = v15;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v26 = sub_29EC6990C(v16);
    if (__OFADD__(*(v10 + 16), (v27 & 1) == 0))
    {
      goto LABEL_32;
    }

    v28 = v26;
    v29 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1890A68, &qword_29EC7FF88);
    if (sub_29EC7F3D4())
    {
      v30 = sub_29EC6990C(v16);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_35;
      }

      v28 = v30;
    }

    if (v29)
    {
      v32 = *(v10 + 56);
      v33 = *(v32 + 8 * v28);
      *(v32 + 8 * v28) = v21;
    }

    else
    {
      *(v10 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      *(*(v10 + 48) + 8 * v28) = v16;
      *(*(v10 + 56) + 8 * v28) = v21;

      v34 = *(v10 + 16);
      v14 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v14)
      {
        goto LABEL_34;
      }

      *(v10 + 16) = v35;
    }

    a2 = v24;
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_29EC7F4D4();
  __break(1u);
  return result;
}

void sub_29EC682C0(void *a1)
{
  v2 = v1;
  _s3KeyCMa();
  v4 = a1;
  v5 = sub_29EC6833C(a1);
  [v2 setCurrentKey_];
}

id sub_29EC6833C(id a1)
{
  if (a1)
  {
    v2 = [a1 photoLibraryIdentifier];
  }

  else
  {
    v2 = 0;
  }

  v3 = _s3KeyCMa();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtCE24_PhotosUIPrivate_SwiftUICSo35PXSwitchableAssetsDataSourceManagerP33_6BDCA9539079B194927909F54E8233A83Key_identifier] = v2;
  v7.receiver = v4;
  v7.super_class = v3;
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

uint64_t sub_29EC683D0(unint64_t a1)
{
  v2 = sub_29EC67B08(a1);
  if (v2)
  {
    v3 = v2;
    v11 = MEMORY[0x29EDCA190];
    v4 = sub_29EC7F3A4();
    if (v3 < 0)
    {
      __break(1u);
      return MEMORY[0x2A1C68B30](v4, v5);
    }

    sub_29EC6A3C4(0, &qword_2A1890A50, 0x29EDC61B8);
    v6 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x29EDAF180](v6, a1);
      }

      else
      {
        v7 = *(a1 + 8 * v6 + 32);
      }

      ++v6;
      sub_29EC67BA0(v7);
      sub_29EC7F384();
      sub_29EC7F3B4();
      sub_29EC7F3C4();
      sub_29EC7F394();
    }

    while (v3 != v6);

    v8 = v11;
  }

  else
  {

    v8 = MEMORY[0x29EDCA190];
  }

  if (v8 >> 62)
  {
    sub_29EC6A3C4(0, &qword_2A1890BB0, 0x29EDC6200);

    v9 = sub_29EC7F444();
  }

  else
  {

    sub_29EC7F4B4();
    sub_29EC6A3C4(0, &qword_2A1890BB0, 0x29EDC6200);
    v9 = v8;
  }

  v4 = v9;
  v5 = 1;

  return MEMORY[0x2A1C68B30](v4, v5);
}

uint64_t sub_29EC68594(unint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_29EC7F404())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x29EDCA198];
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1890A70, &qword_29EC7FF90);
  v3 = sub_29EC7F484();
  if (v2)
  {
LABEL_4:
    v4 = sub_29EC7F3F4();
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = v4 | 0x8000000000000000;
    goto LABEL_11;
  }

LABEL_7:
  v9 = -1 << *(a1 + 32);
  v6 = ~v9;
  v5 = a1 + 64;
  v10 = -v9;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v7 = v11 & *(a1 + 64);
  v8 = a1;
LABEL_11:
  v12 = (v6 + 64) >> 6;
  v13 = v3 + 64;

  v15 = 0;
  v34 = v8;
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  v16 = v7;
  v17 = v15;
  if (v7)
  {
LABEL_18:
    v19 = (v16 - 1) & v16;
    v20 = (v17 << 9) | (8 * __clz(__rbit64(v16)));
    v21 = *(*(v8 + 56) + v20);
    v22 = *(*(v8 + 48) + v20);
    v23 = v21;
    if (!v22)
    {
LABEL_33:
      sub_29EC6A1EC(v34);

      return v3;
    }

    while (1)
    {
      v38 = v22;
      _s3KeyCMa();
      swift_dynamicCast();
      result = sub_29EC7F334();
      v25 = -1 << *(v3 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        break;
      }

      v28 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_31:
      *(v13 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      v33 = *(v3 + 48) + 40 * v28;
      *v33 = v35;
      *(v33 + 16) = v36;
      *(v33 + 32) = v37;
      *(*(v3 + 56) + 8 * v28) = v23;
      ++*(v3 + 16);
      v15 = v17;
      v7 = v19;
      v8 = v34;
      if ((v34 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_20:
      v24 = sub_29EC7F424();
      if (v24)
      {
        *&v35 = v24;
        _s3KeyCMa();
        swift_dynamicCast();
        sub_29EC6A3C4(0, &qword_2A1890BB0, 0x29EDC6200);
        swift_dynamicCast();
        v22 = v38;
        v23 = v35;
        v17 = v15;
        v19 = v7;
        if (v38)
        {
          continue;
        }
      }

      goto LABEL_33;
    }

    v29 = 0;
    v30 = (63 - v25) >> 6;
    while (++v27 != v30 || (v29 & 1) == 0)
    {
      v31 = v27 == v30;
      if (v27 == v30)
      {
        v27 = 0;
      }

      v29 |= v31;
      v32 = *(v13 + 8 * v27);
      if (v32 != -1)
      {
        v28 = __clz(__rbit64(~v32)) + (v27 << 6);
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v18 = v15;
    while (1)
    {
      v17 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v17 >= v12)
      {
        goto LABEL_33;
      }

      v16 = *(v5 + 8 * v17);
      ++v18;
      if (v16)
      {
        v8 = v34;
        goto LABEL_18;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_29EC68908(unint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_29EC7F404())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x29EDCA198];
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1890AB0, &qword_29EC7FFA8);
  v3 = sub_29EC7F484();
  if (v2)
  {
LABEL_4:
    v4 = sub_29EC7F3F4();
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = v4 | 0x8000000000000000;
    goto LABEL_11;
  }

LABEL_7:
  v9 = -1 << *(a1 + 32);
  v6 = ~v9;
  v5 = a1 + 64;
  v10 = -v9;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v7 = v11 & *(a1 + 64);
  v8 = a1;
LABEL_11:
  v12 = (v6 + 64) >> 6;
  v13 = v3 + 64;

  v15 = 0;
  v34 = v8;
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  v16 = v7;
  v17 = v15;
  if (v7)
  {
LABEL_18:
    v19 = (v16 - 1) & v16;
    v20 = (v17 << 9) | (8 * __clz(__rbit64(v16)));
    v21 = *(*(v8 + 56) + v20);
    v22 = *(*(v8 + 48) + v20);
    v23 = v21;
    if (!v22)
    {
LABEL_33:
      sub_29EC6A1EC(v34);

      return v3;
    }

    while (1)
    {
      v38 = v22;
      sub_29EC6A3C4(0, &qword_2A1890A88, 0x29EDBBA40);
      swift_dynamicCast();
      result = sub_29EC7F334();
      v25 = -1 << *(v3 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        break;
      }

      v28 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
      v8 = v34;
LABEL_31:
      *(v13 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      v33 = *(v3 + 48) + 40 * v28;
      *v33 = v35;
      *(v33 + 16) = v36;
      *(v33 + 32) = v37;
      *(*(v3 + 56) + 8 * v28) = v23;
      ++*(v3 + 16);
      v15 = v17;
      v7 = v19;
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_20:
      v24 = sub_29EC7F424();
      if (v24)
      {
        *&v35 = v24;
        sub_29EC6A3C4(0, &qword_2A1890A88, 0x29EDBBA40);
        swift_dynamicCast();
        sub_29EC6A3C4(0, &qword_2A1890A90, 0x29EDC61C0);
        swift_dynamicCast();
        v22 = v38;
        v23 = v35;
        v17 = v15;
        v19 = v7;
        if (v38)
        {
          continue;
        }
      }

      goto LABEL_33;
    }

    v29 = 0;
    v30 = (63 - v25) >> 6;
    v8 = v34;
    while (++v27 != v30 || (v29 & 1) == 0)
    {
      v31 = v27 == v30;
      if (v27 == v30)
      {
        v27 = 0;
      }

      v29 |= v31;
      v32 = *(v13 + 8 * v27);
      if (v32 != -1)
      {
        v28 = __clz(__rbit64(~v32)) + (v27 << 6);
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v18 = v15;
    while (1)
    {
      v17 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v17 >= v12)
      {
        goto LABEL_33;
      }

      v16 = *(v5 + 8 * v17);
      ++v18;
      if (v16)
      {
        v8 = v34;
        goto LABEL_18;
      }
    }
  }

  __break(1u);
  return result;
}

void *sub_29EC68CA0@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtCE24_PhotosUIPrivate_SwiftUICSo35PXSwitchableAssetsDataSourceManagerP33_6BDCA9539079B194927909F54E8233A83Key_identifier);
  v4 = _s3KeyCMa();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtCE24_PhotosUIPrivate_SwiftUICSo35PXSwitchableAssetsDataSourceManagerP33_6BDCA9539079B194927909F54E8233A83Key_identifier] = v3;
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = v3;
  result = objc_msgSendSuper2(&v8, sel_init);
  a1[3] = v4;
  *a1 = result;
  return result;
}

uint64_t sub_29EC68DB4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1890AD0, &qword_29EC7FFC0);
  sub_29EC6A1F4(&qword_2A1890AD8, &qword_2A1890AC8, 0x29EDBBA48);
  return sub_29EC7F304();
}

uint64_t sub_29EC68E2C(uint64_t a1)
{
  sub_29EC6A354(a1, v9);
  if (!v10)
  {
    sub_29EC6A2EC(v9);
    goto LABEL_8;
  }

  _s3KeyCMa();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v4 = 0;
    return v4 & 1;
  }

  v2 = *(v1 + OBJC_IVAR____TtCE24_PhotosUIPrivate_SwiftUICSo35PXSwitchableAssetsDataSourceManagerP33_6BDCA9539079B194927909F54E8233A83Key_identifier);
  v3 = *&v8[OBJC_IVAR____TtCE24_PhotosUIPrivate_SwiftUICSo35PXSwitchableAssetsDataSourceManagerP33_6BDCA9539079B194927909F54E8233A83Key_identifier];
  v4 = v3 == 0;
  if (v2)
  {
    if (v3)
    {
      sub_29EC6A3C4(0, &qword_2A1890AC8, 0x29EDBBA48);
      v5 = v3;
      v6 = v2;
      v4 = sub_29EC7F2E4();

      goto LABEL_6;
    }

    goto LABEL_8;
  }

LABEL_6:

  return v4 & 1;
}

id sub_29EC68FEC()
{
  v2.receiver = v0;
  v2.super_class = _s3KeyCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_29EC69058()
{
  v1 = [v0 wellKnownPhotoLibraryIdentifier];
  v2 = objc_opt_self();
  v3 = [v0 librarySpecificFetchOptions];
  v4 = &selRef_fetchSyndicatedAssetsWithOptions_;
  if (v1 != 3)
  {
    v4 = &selRef_fetchAssetsWithOptions_;
  }

  v5 = [v2 *v4];

  return v5;
}

id sub_29EC690F8(unint64_t a1)
{
  result = sub_29EC67B08(a1);
  if (result == 1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x29EDAF180](0, a1);
      goto LABEL_5;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v3 = *(a1 + 32);
LABEL_5:
      v4 = v3;
      v5 = [objc_opt_self() mediaProviderWithLibrary_];

      return v5;
    }

    __break(1u);
  }

  else
  {
    sub_29EC6A3C4(0, &qword_2A1890A80, 0x29EDC61A0);

    return sub_29EC691B4(v6);
  }

  return result;
}

id sub_29EC691B4(uint64_t a1)
{
  sub_29EC6A3C4(0, &qword_2A1890A88, 0x29EDBBA40);
  sub_29EC6A3C4(0, &qword_2A1890A90, 0x29EDC61C0);
  sub_29EC6A1F4(&qword_2A1890A98, &qword_2A1890A88, 0x29EDBBA40);
  v2 = sub_29EC7F1F4();
  v3 = sub_29EC74CC4();
  v4 = 0;
LABEL_2:
  while (2)
  {
    while (2)
    {
      v5 = v2 & 0xC000000000000001;
      if (v2 < 0)
      {
        v6 = v2;
      }

      else
      {
        v6 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      for (i = v4; ; ++i)
      {
        if (v3 == i)
        {

          v36 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          sub_29EC68908(v2);

          sub_29EC6A3C4(0, &qword_2A1890AA8, 0x29EDC6210);
          v37 = sub_29EC7F1D4();

          aBlock[4] = sub_29EC69680;
          aBlock[5] = 0;
          aBlock[0] = MEMORY[0x29EDCA5F8];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_29EC697B0;
          aBlock[3] = &block_descriptor;
          v38 = _Block_copy(aBlock);
          v39 = [v36 initWithMediaProvidersByKey:v37 keyBlock:v38];
          _Block_release(v38);

          return v39;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x29EDAF180](i, a1);
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v8 = *(a1 + 8 * i + 32);
        }

        v9 = v8;
        v4 = i + 1;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v10 = [objc_opt_self() mediaProviderWithLibrary_];
        if (v10)
        {
          break;
        }

        if (v5)
        {
          v11 = v9;
          v12 = sub_29EC7F414();

          if (v12)
          {
            swift_unknownObjectRelease();

            v25 = sub_29EC7F404();
            v26 = sub_29EC69D54(v6, v25);

            v27 = sub_29EC69950(v11);
            v29 = v28;

            if (v29)
            {

              v30 = *(*(v26 + 56) + 8 * v27);
              sub_29EC7F3E4();

              v2 = v26;
              goto LABEL_2;
            }

            goto LABEL_37;
          }
        }

        else
        {
          v13 = sub_29EC69950(v9);
          if (v14)
          {
            v34 = v13;
            swift_isUniquelyReferenced_nonNull_native();
            aBlock[0] = v2;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1890AA0, &qword_29EC7FFA0);
            sub_29EC7F3D4();

            v35 = *(*(v2 + 56) + 8 * v34);
            sub_29EC7F3E4();

            goto LABEL_2;
          }
        }
      }

      v15 = v10;
      if (!v5)
      {
        goto LABEL_21;
      }

      v16 = sub_29EC7F404();
      if (__OFADD__(v16, 1))
      {
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v2 = sub_29EC69D54(v6, v16 + 1);
LABEL_21:
      swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v2;
      v17 = sub_29EC69950(v9);
      if (__OFADD__(*(v2 + 16), (v18 & 1) == 0))
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v19 = v17;
      v20 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1890AA0, &qword_29EC7FFA0);
      if (sub_29EC7F3D4())
      {
        v21 = sub_29EC69950(v9);
        if ((v20 & 1) != (v22 & 1))
        {
          goto LABEL_39;
        }

        v19 = v21;
      }

      v2 = aBlock[0];
      if (v20)
      {
        v23 = *(aBlock[0] + 56);
        v24 = *(v23 + 8 * v19);
        *(v23 + 8 * v19) = v15;

        continue;
      }

      break;
    }

    *(aBlock[0] + 8 * (v19 >> 6) + 64) |= 1 << v19;
    *(*(v2 + 48) + 8 * v19) = v9;
    *(*(v2 + 56) + 8 * v19) = v15;
    v31 = *(v2 + 16);
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (!v32)
    {
      *(v2 + 16) = v33;
      continue;
    }

    break;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  result = sub_29EC7F4D4();
  __break(1u);
  return result;
}

void sub_29EC69680(void *a1@<X0>, void *a2@<X8>)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    v7 = [v5 photoLibrary];
    if (v7)
    {
LABEL_6:
      v11 = v7;
      a2[3] = sub_29EC6A3C4(0, &qword_2A1890A88, 0x29EDBBA40);

      *a2 = v11;
      return;
    }

    __break(1u);
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = a1;
    v7 = [v9 photoLibrary];
    if (v7)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  sub_29EC7F434();
  __break(1u);
}

id sub_29EC697B0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(v7);

  __swift_project_boxed_opaque_existential_0(v7, v7[3]);
  v5 = sub_29EC7F494();
  __swift_destroy_boxed_opaque_existential_0(v7);

  return v5;
}

unint64_t sub_29EC69848(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_29EC698B4()
{
  result = qword_2A1890A60;
  if (!qword_2A1890A60)
  {
    _s3KeyCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1890A60);
  }

  return result;
}

unint64_t sub_29EC6990C(uint64_t a1)
{
  v2 = sub_29EC7F2D4();

  return sub_29EC69994(a1, v2);
}

unint64_t sub_29EC69950(uint64_t a1)
{
  v2 = sub_29EC7F2D4();

  return sub_29EC69A54(a1, v2);
}

unint64_t sub_29EC69994(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    _s3KeyCMa();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_29EC7F2E4();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_29EC69A54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_29EC6A3C4(0, &qword_2A1890A88, 0x29EDBBA40);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_29EC7F2E4();

    if (v8)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_29EC69B2C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1890A78, &qword_29EC7FF98);
    v2 = sub_29EC7F474();
    v17 = v2;
    sub_29EC7F3F4();
    while (1)
    {
      v3 = sub_29EC7F424();
      if (!v3)
      {

        return v2;
      }

      v15 = v3;
      _s3KeyCMa();
      swift_dynamicCast();
      sub_29EC6A3C4(0, &qword_2A1890BB0, 0x29EDC6200);
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_29EC69F90(v4 + 1, 1, &qword_2A1890A78, &qword_29EC7FF98);
      }

      v2 = v17;
      result = sub_29EC7F2D4();
      v6 = v17 + 64;
      v7 = -1 << *(v17 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v17 + 48) + 8 * v10) = v16;
      *(*(v17 + 56) + 8 * v10) = v15;
      ++*(v17 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x29EDCA198];
  }

  return result;
}

uint64_t sub_29EC69D54(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1890AB8, &qword_29EC7FFB0);
    v2 = sub_29EC7F474();
    v17 = v2;
    sub_29EC7F3F4();
    while (1)
    {
      v3 = sub_29EC7F424();
      if (!v3)
      {

        return v2;
      }

      v15 = v3;
      sub_29EC6A3C4(0, &qword_2A1890A88, 0x29EDBBA40);
      swift_dynamicCast();
      sub_29EC6A3C4(0, &qword_2A1890A90, 0x29EDC61C0);
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_29EC69F90(v4 + 1, 1, &qword_2A1890AB8, &qword_29EC7FFB0);
      }

      v2 = v17;
      result = sub_29EC7F2D4();
      v6 = v17 + 64;
      v7 = -1 << *(v17 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v17 + 48) + 8 * v10) = v16;
      *(*(v17 + 56) + 8 * v10) = v15;
      ++*(v17 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x29EDCA198];
  }

  return result;
}

uint64_t sub_29EC69F90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_29EC7F464();
  v9 = result;
  if (!*(v7 + 16))
  {

LABEL_32:
    *v5 = v9;
    return result;
  }

  v34 = v4;
  v10 = 0;
  v11 = (v7 + 64);
  v12 = 1 << *(v7 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v7 + 64);
  v15 = (v12 + 63) >> 6;
  v16 = result + 64;
  if (!v14)
  {
LABEL_7:
    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v10 >= v15)
      {
        break;
      }

      v19 = v11[v10];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v14 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    if (v6)
    {
      v33 = 1 << *(v7 + 32);
      if (v33 >= 64)
      {
        sub_29EC6C0DC(0, (v33 + 63) >> 6, v7 + 64);
      }

      else
      {
        *v11 = -1 << v33;
      }

      *(v7 + 16) = 0;
    }

    v5 = v34;
    goto LABEL_32;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_12:
    v20 = v17 | (v10 << 6);
    v21 = *(*(v7 + 48) + 8 * v20);
    v22 = *(*(v7 + 56) + 8 * v20);
    if ((v6 & 1) == 0)
    {
      v23 = v21;
      v24 = v22;
    }

    result = sub_29EC7F2D4();
    v25 = -1 << *(v9 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v16 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    *(*(v9 + 48) + 8 * v28) = v21;
    *(*(v9 + 56) + 8 * v28) = v22;
    ++*(v9 + 16);
    if (!v14)
    {
      goto LABEL_7;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v16 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_29EC6A1F4(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_29EC6A3C4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_29EC6A2EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1890AC0, &qword_29EC7FFB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29EC6A354(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1890AC0, &qword_29EC7FFB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29EC6A3C4(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_29EC6A414(uint64_t a1, int a2)
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

uint64_t sub_29EC6A434(uint64_t result, int a2, int a3)
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

void type metadata accessor for CGSize()
{
  if (!qword_2A1890AE0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2A1890AE0);
    }
  }
}

uint64_t View.photosComponentOneUpViewer(isPresented:photoLibrary:initialItemIdentifier:onDismiss:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v37 = a8;
  v34 = a5;
  v35 = a3;
  v39 = a9;
  v38 = a11;
  v36 = a10;
  v17 = sub_29EC7EC94();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x2A1C7C4A8](v20);
  OUTLINED_FUNCTION_2();
  MEMORY[0x2A1C7C4A8](v21);
  v23 = &v34 - v22;
  if (a6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1890C50, &qword_29EC80010);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_29EC7FFF0;
    *(v24 + 32) = a4;
    v25 = a4;
    v26 = 0;
    v27 = v34;
  }

  else
  {
    v24 = 0;
    v27 = 0;
    v26 = -1;
  }

  __src[0] = a1;
  __src[1] = a2;
  LOBYTE(__src[2]) = v35 & 1;
  __src[3] = v24;
  __src[4] = v27;
  __src[5] = a6;
  LOBYTE(__src[6]) = v26;
  v28 = v37;
  __src[7] = a7;
  __src[8] = v37;

  sub_29EC6A730(a7, v28);
  v29 = v38;
  MEMORY[0x29EDAEE50](__src, v36, &type metadata for PhotosComponentOneUpViewerSheetModifier, v38);
  memcpy(__dst, __src, 0x48uLL);
  sub_29EC6A740(__dst);
  v30 = sub_29EC6A770();
  v40 = v29;
  v41 = v30;
  OUTLINED_FUNCTION_0();
  swift_getWitnessTable();
  v31 = *(v19 + 16);
  v31(v23, v11, v17);
  v32 = *(v19 + 8);
  v32(v11, v17);
  v31(v39, v23, v17);
  return (v32)(v23, v17);
}

uint64_t sub_29EC6A730(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_29EC6A770()
{
  result = qword_2A1890AF0;
  if (!qword_2A1890AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1890AF0);
  }

  return result;
}

uint64_t View.photosComponentOneUpViewer(isPresented:viewing:onDismiss:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void **a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v34 = a8;
  v33 = a3;
  v35 = a9;
  v16 = sub_29EC7EC94();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x2A1C7C4A8](v19);
  OUTLINED_FUNCTION_2();
  MEMORY[0x2A1C7C4A8](v20);
  v22 = &v32 - v21;
  v23 = *a4;
  v24 = a4[1];
  if (*a4)
  {
    v25 = a4[1];
  }

  else
  {
    v25 = 0;
  }

  if (*a4)
  {
    v26 = 1;
  }

  else
  {
    v26 = -1;
  }

  __src[0] = a1;
  __src[1] = a2;
  LOBYTE(__src[2]) = v33;
  __src[3] = v23;
  __src[4] = v25;
  __src[5] = 0;
  LOBYTE(__src[6]) = v26;
  __src[7] = a5;
  __src[8] = a6;
  sub_29EC6AA10(v23, v24);

  sub_29EC6A730(a5, a6);
  v27 = v34;
  MEMORY[0x29EDAEE50](__src, a7, &type metadata for PhotosComponentOneUpViewerSheetModifier, v34);
  memcpy(__dst, __src, 0x48uLL);
  sub_29EC6A740(__dst);
  v28 = sub_29EC6A770();
  v36 = v27;
  v37 = v28;
  OUTLINED_FUNCTION_0();
  swift_getWitnessTable();
  v29 = *(v18 + 16);
  v29(v22, v9, v16);
  v30 = *(v18 + 8);
  v30(v9, v16);
  v29(v35, v22, v16);
  return (v30)(v22, v16);
}

void *sub_29EC6AA10(void *result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
  }

  return result;
}

uint64_t sub_29EC6AA50()
{
  memcpy(__dst, v0, 0x48uLL);
  v3 = *v0;
  v4 = v0[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1890B78, &qword_29EC80360);
  sub_29EC7F184();
  v1 = swift_allocObject();
  memcpy((v1 + 16), __dst, 0x48uLL);
  sub_29EC6BCB8(__dst, &v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1890B80, &qword_29EC80368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1890B88, &qword_29EC80370);
  sub_29EC6BCF0();
  sub_29EC6BD9C();
  sub_29EC7F034();
}

uint64_t sub_29EC6ABB4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 48);
  if (v3 == 255)
  {
    v8 = 0;
    v9 = 0;
    v6 = 0;
    v5 = 0;
    v4 = 0;
    result = 0;
    v12 = 0;
    v10 = 0;
  }

  else
  {
    v5 = *(a1 + 4);
    v4 = *(a1 + 5);
    v6 = *(a1 + 3);
    v7 = v3 & 1;
    sub_29EC6BE20(v6, v5, v4, v3 & 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1890B78, &qword_29EC80360);
    sub_29EC7F184();
    v8 = v13;
    v9 = v14;
    v10 = v15;
    result = swift_getKeyPath();
    v12 = v7;
  }

  *a2 = v8;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  *(a2 + 24) = v6;
  *(a2 + 32) = v5;
  *(a2 + 40) = v4;
  *(a2 + 48) = v12;
  *(a2 + 56) = result;
  *(a2 + 64) = 0;
  return result;
}

id sub_29EC6AF5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosComponentOneUpViewerView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29EC6B048()
{
  sub_29EC7EC94();
  sub_29EC6A770();
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

uint64_t sub_29EC6B0BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_29EC6B0FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_24_PhotosUIPrivate_SwiftUI0A26ComponentOneUpViewerSource33_D30B50BFAACB8194026BC05BB4E77163LLOSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
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

uint64_t sub_29EC6B194(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_29EC6B1D4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

id sub_29EC6B240()
{
  memcpy(__dst, v0, 0x41uLL);
  v1 = type metadata accessor for PhotosComponentOneUpViewerView.Coordinator();
  v2 = objc_allocWithZone(v1);
  memcpy(&v2[OBJC_IVAR____TtCV24_PhotosUIPrivate_SwiftUIP33_D30B50BFAACB8194026BC05BB4E7716330PhotosComponentOneUpViewerView11Coordinator_parent], __dst, 0x41uLL);
  sub_29EC6BE70(__dst, v5);
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

void *sub_29EC6B2C0()
{
  memcpy(__dst, v0, 0x41uLL);
  v1 = __dst[6];
  v2 = __dst[3];
  if (LOBYTE(__dst[6]))
  {
    v3 = __dst[4];
  }

  else
  {
    v3 = __dst[3];
  }

  sub_29EC6A3C4(0, &qword_2A1890BB0, 0x29EDC6200);
  v4 = sub_29EC67A58(v3, MEMORY[0x29EDCA190], 1);

  v5 = swift_allocObject();
  memcpy((v5 + 16), __dst, 0x41uLL);
  aBlock[4] = sub_29EC6CA38;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EC6B670;
  aBlock[3] = &block_descriptor_17;
  v6 = _Block_copy(aBlock);
  sub_29EC6BE70(__dst, &v23);

  [v4 performChanges_];
  _Block_release(v6);
  v7 = [objc_allocWithZone(MEMORY[0x29EDC6238]) initWithUnderlyingDataSourceManager_];
  if (v1)
  {
    v8 = v7;
    v9 = v2;
    v10 = v8;
    v11 = [v10 assetsDataSource];
    if (v11)
    {
      v12 = sub_29EC6CA54(v11);
      v14 = v13;
      v15 = objc_allocWithZone(MEMORY[0x29EDC6230]);
      v16 = sub_29EC6BF38(v9, v12, v14);
      v17 = [objc_allocWithZone(MEMORY[0x29EDC6240]) init];
      objc_allocWithZone(MEMORY[0x29EDC6228]);
      v18 = v16;
      v19 = sub_29EC6BFB0(v10, v17, 0, v16, 0, 0, 0, 0, 0, 0);
      if (v19)
      {
        v20 = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1890BB8, &qword_29EC803B0);
        sub_29EC7EEF4();
        v21 = v23;
        [v20 setDelegate_];

        return v20;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  result = sub_29EC7F434();
  __break(1u);
  return result;
}

uint64_t sub_29EC6B5B0(uint64_t a1)
{
  result = MEMORY[0x29EDAF0B0](*(a1 + 16), MEMORY[0x29EDC99B0], MEMORY[0x29EDC99C0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_29EC6C140(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_29EC6B670(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_29EC6B6D0(void *a1)
{
  memcpy(__dst, v1, 0x41uLL);
  v3 = [a1 dataSourceManager];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = [swift_dynamicCastObjCClassUnconditional() underlyingDataSourceManager];

    sub_29EC7EB14();
    v6 = swift_dynamicCastClassUnconditional();
    v7 = swift_allocObject();
    memcpy((v7 + 16), v1, 0x41uLL);
    aBlock[4] = sub_29EC6CC6C;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29EC6B670;
    aBlock[3] = &block_descriptor_0;
    v8 = _Block_copy(aBlock);
    sub_29EC6BE70(__dst, &v9);

    [v6 performChanges_];
    _Block_release(v8);
  }

  else
  {
    __break(1u);
  }
}

void sub_29EC6B85C(void *a1, uint64_t a2)
{
  v4 = sub_29EC7ED74();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 64);
  v10 = *(a2 + 56);
  v15 = v10;
  if (v16 != 1)
  {

    sub_29EC7F2B4();
    v12 = sub_29EC7EF14();
    sub_29EC7EB84();

    sub_29EC7ED64();
    swift_getAtKeyPath();
    sub_29EC6BED0(&v15);
    (*(v6 + 8))(v9, v4);
    v10 = v14;
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_29EC6B5B0(v10);
  v11 = sub_29EC7F284();

LABEL_6:
  [a1 setAllowedUUIDs_];
}

id sub_29EC6BA14@<X0>(void *a1@<X8>)
{
  result = sub_29EC6B240();
  *a1 = result;
  return result;
}

uint64_t sub_29EC6BA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29EC6CAC4();

  return MEMORY[0x2A1C5D108](a1, a2, a3, v6);
}

uint64_t sub_29EC6BADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29EC6CAC4();

  return MEMORY[0x2A1C5D0E8](a1, a2, a3, v6);
}

void sub_29EC6BB5C(uint64_t a1)
{
  sub_29EC6CAC4();
  sub_29EC7EEC4();
  __break(1u);
}

unint64_t sub_29EC6BB88()
{
  result = qword_2A1890B70;
  if (!qword_2A1890B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1890B70);
  }

  return result;
}

uint64_t sub_29EC6BBF8()
{

  v1 = *(v0 + 64);
  if (v1 != 255)
  {
    sub_29EC6BC64(*(v0 + 40), *(v0 + 48), *(v0 + 56), v1 & 1);
  }

  if (*(v0 + 72))
  {
  }

  return MEMORY[0x2A1C733A0](v0, 88, 7);
}

uint64_t sub_29EC6BC64(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

unint64_t sub_29EC6BCF0()
{
  result = qword_2A1890B90;
  if (!qword_2A1890B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A1890B80, &qword_29EC80368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1890B90);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_29EC6BD9C()
{
  result = qword_2A1890B98;
  if (!qword_2A1890B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A1890B88, &qword_29EC80370);
    sub_29EC6BB88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1890B98);
  }

  return result;
}

uint64_t sub_29EC6BE20(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v4 = a1;
  }

  else
  {
  }
}

uint64_t sub_29EC6BEAC(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29EC6BED0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A1890BA0, &unk_29EC803A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_29EC6BF38(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_29EC7F204();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithPXAssetReference:a1 dataSourceIdentifier:v5];

  return v6;
}

id sub_29EC6BFB0(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, char a9, uint64_t a10)
{
  if (a5)
  {
    v16 = sub_29EC7F284();
  }

  else
  {
    v16 = 0;
  }

  if (a6)
  {
    v17 = sub_29EC7F284();
  }

  else
  {
    v17 = 0;
  }

  LOBYTE(v20) = a9 & 1;
  v18 = [v22 initWithDataSourceManager:a1 mediaProvider:a2 reviewAssetProvider:a3 initialAssetReference:a4 initialSelectedAssetUUIDs:v16 initialDisabledLivePhotoAssetUUIDs:v17 selectionCountLimit:a7 sourceType:a8 lowMemoryMode:v20 options:a10];

  swift_unknownObjectRelease();
  return v18;
}

uint64_t sub_29EC6C0DC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_29EC80000;
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

BOOL sub_29EC6C140(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_29EC7F4E4();
  sub_29EC7F224();
  v8 = sub_29EC7F4F4();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_29EC7F4A4() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_29EC6C4E8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_29EC6C28C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A1891150, &qword_29EC80A10);
  result = sub_29EC7F354();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_29EC6C0DC(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_29EC7F4E4();
    sub_29EC7F224();
    result = sub_29EC7F4F4();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_29EC6C4E8(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_29EC6C28C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_29EC6C7A8(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_29EC7F4E4();
      sub_29EC7F224();
      result = sub_29EC7F4F4();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_29EC7F4A4() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_29EC6C650();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_29EC7F4C4();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_29EC6C650()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A1891150, &qword_29EC80A10);
  v2 = *v0;
  v3 = sub_29EC7F344();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_29EC6C7A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A1891150, &qword_29EC80A10);
  result = sub_29EC7F354();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_29EC7F4E4();

        sub_29EC7F224();
        result = sub_29EC7F4F4();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t objectdestroy_10Tm()
{

  sub_29EC6BC64(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  sub_29EC6BEAC(*(v0 + 72), *(v0 + 80));

  return MEMORY[0x2A1C733A0](v0, 81, 7);
}

uint64_t sub_29EC6CA54(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_29EC7F214();

  return v3;
}

unint64_t sub_29EC6CAC4()
{
  result = qword_2A1890BC0;
  if (!qword_2A1890BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1890BC0);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_29EC6CB2C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_29EC6CB6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_29EC6CBD4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A1890B80, &qword_29EC80368);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A1890B88, &qword_29EC80370);
  sub_29EC6BCF0();
  sub_29EC6BD9C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t View.photosComponentOnSelect(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19[1] = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A1890C30, &qword_29EC80470);
  v8 = sub_29EC7EC94();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = v19 - v13;
  swift_getKeyPath();
  if (a1)
  {
    v15 = a2;
  }

  else
  {
    v15 = 0;
  }

  v19[4] = a1;
  v19[5] = v15;
  sub_29EC6A730(a1, a2);
  sub_29EC7EFC4();

  sub_29EC6CFA8(a1, a2);
  v16 = sub_29EC6CFB8();
  v19[2] = a4;
  v19[3] = v16;
  OUTLINED_FUNCTION_0();
  swift_getWitnessTable();
  sub_29EC6CC68();
  v17 = *(v9 + 8);
  v17(v12, v8);
  sub_29EC6CC68();
  return (v17)(v14, v8);
}

uint64_t sub_29EC6CE90()
{
  sub_29EC6D110();
  sub_29EC7ED84();
  return v1;
}

uint64_t sub_29EC6CECC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29EC6CE90();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_29EC6CEF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29EC6CE90();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_29EC6CF24(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_29EC6A730(*a1, v2);
  return sub_29EC6CF6C(v1, v2);
}

uint64_t sub_29EC6CFA8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_29EC6CFB8()
{
  result = qword_2A1890C38;
  if (!qword_2A1890C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A1890C30, &qword_29EC80470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1890C38);
  }

  return result;
}

uint64_t sub_29EC6D01C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A1890C30, &qword_29EC80470);
  sub_29EC7EC94();
  sub_29EC6CFB8();
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

uint64_t sub_29EC6D084(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_29EC6D0C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29EC6D110()
{
  result = qword_2A1890C40;
  if (!qword_2A1890C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1890C40);
  }

  return result;
}

uint64_t sub_29EC6D180@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29EC6D174();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *PhotosComponentGrid.init<A>(_:photoLibrary:header:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, void *a9@<X8>)
{
  OUTLINED_FUNCTION_1_0();
  v15 = v14;
  MEMORY[0x2A1C7C4A8](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  (*(v15 + 16))(v18 - v17, a1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1890C50, &qword_29EC80010);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_29EC7FFF0;
  *(v21 + 32) = a2;
  PhotosComponentGrid.init<A>(_:photoLibraries:header:)(v19, v21, a3, a4, a6, __src);
  (*(v15 + 8))(a1, a6);
  return memcpy(a9, __src, 0x89uLL);
}

uint64_t PhotosComponentGrid.init<A>(_:photoLibraries:header:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a7@<X8>)
{
  OUTLINED_FUNCTION_1_0();
  v14 = v13;
  MEMORY[0x2A1C7C4A8](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  *(a7 + 40) = sub_29EC6D4B0(0);
  *(a7 + 48) = v19;
  sub_29EC6D4F8();
  *(a7 + 56) = v24;
  *(a7 + 72) = v25;
  *(a7 + 88) = v26;
  *(a7 + 104) = v27;
  *(a7 + 112) = swift_getKeyPath();
  *(a7 + 120) = 0;
  *(a7 + 128) = swift_getKeyPath();
  *(a7 + 136) = 0;
  result = sub_29EC67B08(a2);
  if (result)
  {
    (*(v14 + 16))(v18, a1, a5);
    v21 = sub_29EC7F234();
    v23 = v22;
    result = (*(v14 + 8))(a1, a5);
    *a7 = v21;
    *(a7 + 8) = v23;
    *(a7 + 16) = a2;
    *(a7 + 24) = a3;
    *(a7 + 32) = a4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29EC6D4B0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891188, &qword_29EC80B78);
  sub_29EC7F104();
  return v2;
}

uint64_t PhotosComponentGrid.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v52 = a2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for PhotosComponentGridViewController(0, v5, v6, a3);
  v44 = v7;
  OUTLINED_FUNCTION_1_0();
  v51 = v8;
  MEMORY[0x2A1C7C4A8](v9);
  v41 = &v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A1890C58, &unk_29EC81280);
  v47 = v11;
  OUTLINED_FUNCTION_2_0();
  WitnessTable = swift_getWitnessTable();
  v46 = WitnessTable;
  v45 = sub_29EC72954();
  __dst[0] = v7;
  __dst[1] = v11;
  __dst[2] = WitnessTable;
  __dst[3] = v45;
  v49 = MEMORY[0x29EDBCA68];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1_0();
  v50 = v13;
  v15 = MEMORY[0x2A1C7C4A8](v14);
  v42 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v43 = &v40 - v17;
  memcpy(__dst, v3, 0x89uLL);
  v18 = __dst[1];
  v40 = __dst[0];
  v19 = __dst[2];
  memcpy(v56, v3, 0x89uLL);

  v20 = sub_29EC6D944();
  OUTLINED_FUNCTION_9(v55);
  sub_29EC6D994();
  OUTLINED_FUNCTION_9(v53);
  v21 = sub_29EC6D9F8();
  v22 = __dst[3];
  v23 = __dst[4];
  v38 = v5;
  v39 = v6;
  v24 = v6;
  v25 = v5;
  v26 = v41;
  sub_29EC6DB48(v40, v18, v19, v20, v54, v21, __dst[3], __dst[4], v41, v38, v39);
  OUTLINED_FUNCTION_9(v56);
  sub_29EC6A730(v22, v23);
  v53[0] = sub_29EC6DC74();
  v27 = swift_allocObject();
  v27[2] = v25;
  v27[3] = v24;
  OUTLINED_FUNCTION_9(v27 + 4);
  (*(*(a1 - 8) + 16))(v55, __dst, a1);
  v28 = v42;
  v29 = v44;
  v30 = v45;
  v32 = v46;
  v31 = v47;
  sub_29EC7F054();

  (*(v51 + 8))(v26, v29);
  v56[0] = v29;
  v56[1] = v31;
  v56[2] = v32;
  v56[3] = v30;
  swift_getOpaqueTypeConformance2();
  v33 = v43;
  v34 = v28;
  v35 = OpaqueTypeMetadata2;
  sub_29EC6CC68();
  v36 = *(v50 + 8);
  v36(v34, v35);
  sub_29EC6CC68();
  return (v36)(v33, v35);
}

uint64_t sub_29EC6D944()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891178, &qword_29EC80A20);
  sub_29EC7F114();
  return v1;
}

uint64_t sub_29EC6D9F8()
{
  v1 = sub_29EC7ED74();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 128);
  if (*(v0 + 136) == 1)
  {
  }

  else
  {

    sub_29EC7F2B4();
    v6 = sub_29EC7EF14();
    sub_29EC7EB84();

    sub_29EC7ED64();
    swift_getAtKeyPath();
    sub_29EC6BEAC(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }

  return v5;
}

uint64_t sub_29EC6DB48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  v12 = a5[1];
  *(a9 + 32) = *a5;
  *(a9 + 48) = v12;
  v13 = a5[3];
  *(a9 + 64) = a5[2];
  *(a9 + 80) = v13;
  *(a9 + 96) = a6;
  *(a9 + 104) = a7;
  *(a9 + 112) = a8;
  *(a9 + 120) = swift_getKeyPath();
  *(a9 + 128) = 0;
  *(a9 + 136) = swift_getKeyPath();
  *(a9 + 144) = 0;
  *(a9 + 152) = swift_getKeyPath();
  *(a9 + 160) = 0;
  *(a9 + 168) = swift_getKeyPath();
  *(a9 + 176) = 0;
  *(a9 + 184) = swift_getKeyPath();
  *(a9 + 192) = 0;
  *(a9 + 200) = swift_getKeyPath();
  *(a9 + 208) = 0;
  *(a9 + 216) = 0;
  *(a9 + 224) = swift_getKeyPath();
  *(a9 + 232) = 0;
  *(a9 + 240) = 0;
  v15 = *(type metadata accessor for PhotosComponentGridViewController(0, a10, a11, v14) + 84);
  *(a9 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891138, &qword_29EC80A00);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_29EC6DC74()
{
  v1 = sub_29EC7ED74();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 112);
  if (*(v0 + 120) == 1)
  {
  }

  else
  {

    sub_29EC7F2B4();
    v6 = sub_29EC7EF14();
    sub_29EC7EB84();

    sub_29EC7ED64();
    swift_getAtKeyPath();
    sub_29EC6BEAC(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }

  return v5;
}

uint64_t sub_29EC6DDC4(void *__src, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v27, __src, sizeof(v27));
  v7 = type metadata accessor for PhotosComponentGrid(0, a2, a3, v6);
  v21 = *(*(v7 - 8) + 16);
  v22 = *(v7 - 8);
  v21(v26, __src, v7);
  v8 = sub_29EC6DC74();
  if (v8[2])
  {
    v10 = v8[4];
    v9 = v8[5];
    v12 = v8[6];
    v11 = v8[7];
    v14 = v8[8];
    v13 = v8[9];

    v15 = v14;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v12 = 0;
    v11 = 0;
    v14 = 0;
    v13 = 0;
  }

  *&__srca[0] = v10;
  *(&__srca[0] + 1) = v9;
  *&__srca[1] = v12;
  *(&__srca[1] + 1) = v11;
  *&__srca[2] = v14;
  *(&__srca[2] + 1) = v13;
  sub_29EC6E034(__srca);
  memcpy(v26, __dst, 0x89uLL);
  v16 = *(v22 + 8);
  v16(v26, v7);
  memcpy(__srca, __src, 0x89uLL);
  memcpy(v24, __src, 0x89uLL);
  v21(v23, __src, v7);
  v17 = *(sub_29EC6DC74() + 16);

  if (v17)
  {
    memcpy(v24, __src, 0x89uLL);
    sub_29EC6DC74();
    memcpy(v23, __src, 0x89uLL);
    sub_29EC6D994();
    v18 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891170, &qword_29EC80A18));
    v19 = sub_29EC7EC74();
  }

  else
  {
    v19 = 0;
  }

  sub_29EC6E0D8(v19);
  memcpy(v24, __srca, 0x89uLL);
  return (v16)(v24, v7);
}

uint64_t sub_29EC6E034(_OWORD *a1)
{
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  v8 = v1[12];
  sub_29EC74138(v3, v4, v5, v6, v7, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891180, &qword_29EC80A28);
  sub_29EC7F124();
  sub_29EC737E0(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_29EC6E12C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_29EC7ED74();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891138, &qword_29EC80A00);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v14 - v9;
  sub_29EC749F8(v2, &v14 - v9, &qword_2A1891138, &qword_29EC80A00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_29EC7EC34();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_29EC7F2B4();
    v13 = sub_29EC7EF14();
    sub_29EC7EB84();

    sub_29EC7ED64();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_29EC6E32C()
{
  OUTLINED_FUNCTION_7();
  result = sub_29EC75064();
  *v0 = result;
  return result;
}

uint64_t sub_29EC6E354()
{
  OUTLINED_FUNCTION_7();
  result = sub_29EC75064();
  *v0 = result;
  return result;
}

uint64_t sub_29EC6E3AC()
{
  OUTLINED_FUNCTION_7();
  result = sub_29EC750DC();
  *v0 = result;
  return result;
}

uint64_t sub_29EC6E3D4()
{
  OUTLINED_FUNCTION_7();
  result = sub_29EC750DC();
  *v0 = result;
  return result;
}

void *sub_29EC6E468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void *__return_ptr, uint64_t, uint64_t, void, void, void, uint64_t, void, uint64_t)@<X4>, void *a6@<X8>)
{
  OUTLINED_FUNCTION_1_0();
  v13 = v12;
  MEMORY[0x2A1C7C4A8](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  (*(v13 + 16))(v16 - v15, a1);
  a5(__src, v17, a2, 0, 0, MEMORY[0x29EDBCBF8], a3, MEMORY[0x29EDBCBF0], a4);
  (*(v13 + 8))(a1, a3);
  return memcpy(a6, __src, 0x89uLL);
}

uint64_t sub_29EC6E590()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891190, &qword_29EC80C60);
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v6[-v3];
  memcpy(__dst, v0, sizeof(__dst));
  sub_29EC7EF24();
  v7 = __dst;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891198, &qword_29EC80C68);
  sub_29EC742E8();
  sub_29EC7EBB4();
  sub_29EC74C60(&qword_2A18911B8, &qword_2A1891190, &qword_29EC80C60, MEMORY[0x29EDBBEA8]);
  sub_29EC7EFF4();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_29EC6E720@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_29EC7EDA4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18911C0, &qword_29EC80C78);
  v18 = *a1;
  swift_getKeyPath();
  v4 = swift_allocObject();
  memcpy((v4 + 16), a1, 0x48uLL);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_29EC7440C;
  *(v5 + 24) = v4;

  sub_29EC7447C(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18911C8, &qword_29EC80CA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18911D0, &qword_29EC80CA8);
  sub_29EC744B4();
  sub_29EC74564();
  sub_29EC7F194();
  v6 = sub_29EC7EF34();
  sub_29EC7EB94();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891198, &qword_29EC80C68);
  v16 = a2 + *(result + 36);
  *v16 = v6;
  *(v16 + 8) = v8;
  *(v16 + 16) = v10;
  *(v16 + 24) = v12;
  *(v16 + 32) = v14;
  *(v16 + 40) = 0;
  return result;
}

uint64_t sub_29EC6E8E4@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v61 = a3;
  v59 = sub_29EC7ECB4();
  v51 = *(v59 - 8);
  MEMORY[0x2A1C7C4A8](v59);
  v50 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891208, &qword_29EC80CB0);
  v53 = *(v60 - 8);
  MEMORY[0x2A1C7C4A8](v60);
  v52 = &v44 - v6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891210, &qword_29EC80CB8);
  MEMORY[0x2A1C7C4A8](v55);
  v58 = &v44 - v7;
  v56 = sub_29EC7EE54();
  v47 = *(v56 - 8);
  MEMORY[0x2A1C7C4A8](v56);
  v46 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891218, &qword_29EC80CC0);
  v49 = *(v57 - 8);
  MEMORY[0x2A1C7C4A8](v57);
  v48 = &v44 - v9;
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[3];
  v63 = a1[2];
  v64 = v10;
  v13 = a1[4];
  v14 = a1[5];
  v15 = *(a2 + 24);
  __dst[0] = *(a2 + 8);
  __dst[1] = v15;
  v16 = *(a2 + 56);
  __dst[2] = *(a2 + 40);
  __dst[3] = v16;

  v62 = v13;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891148, &qword_29EC80A08);
  MEMORY[0x29EDAEF70](v65);
  v17 = v65[0];
  v18 = v65[1];
  if (v11)
  {
    *&__dst[0] = v64;
    *(&__dst[0] + 1) = v11;
    *&__dst[1] = v63;
    *(&__dst[1] + 1) = v12;
    *&__dst[2] = v13;
    *(&__dst[2] + 1) = v14;
    if (*(&v65[0] + 1))
    {
      v66 = v65[0];
      v67 = v65[1];
      v68 = v65[2];
      v19 = v63;
      sub_29EC74138(v64, v11, v63, v12, v13, v14);
      DWORD2(v45) = static PhotosComponentTab.== infix(_:_:)(__dst, &v66);
      v20 = v68;

      v21 = *&__dst[2];

      sub_29EC737E0(v64, v11, v19, v12, v13, v14);
      if ((BYTE8(v45) & 1) == 0)
      {
        goto LABEL_10;
      }

LABEL_7:
      v22 = *(a2 + 24);
      __dst[0] = *(a2 + 8);
      __dst[1] = v22;
      v23 = *(a2 + 56);
      __dst[2] = *(a2 + 40);
      __dst[3] = v23;

      v24 = v62;

      sub_29EC7F184();
      v65[3] = v66;
      v65[4] = v67;
      v65[5] = v68;
      v65[6] = v69;
      *&v65[0] = v64;
      *(&v65[0] + 1) = v11;
      *&v65[1] = v63;
      *(&v65[1] + 1) = v12;
      *&v65[2] = v13;
      *(&v65[2] + 1) = v14;
      v25 = v46;
      sub_29EC7EE44();
      v26 = sub_29EC746CC();
      v27 = sub_29EC74720(&qword_2A18911F8, MEMORY[0x29EDBC068], MEMORY[0x29EDBC060]);
      v28 = v48;
      v29 = v56;
      sub_29EC7EFB4();
      (*(v47 + 8))(v25, v29);
      memcpy(__dst, v65, 0x70uLL);
      sub_29EC74768(__dst);
      v30 = v49;
      v31 = v57;
      (*(v49 + 16))(v58, v28, v57);
      swift_storeEnumTagMultiPayload();
      *&v65[0] = &type metadata for PhotosComponentGridTabBar.TabButton;
      *(&v65[0] + 1) = v29;
      *&v65[1] = v26;
      *(&v65[1] + 1) = v27;
      swift_getOpaqueTypeConformance2();
      v32 = sub_29EC74720(&qword_2A1891200, MEMORY[0x29EDBBF38], MEMORY[0x29EDBBF30]);
      *&v65[0] = &type metadata for PhotosComponentGridTabBar.TabButton;
      *(&v65[0] + 1) = v59;
      *&v65[1] = v26;
      *(&v65[1] + 1) = v32;
      swift_getOpaqueTypeConformance2();
      sub_29EC7EE24();
      return (*(v30 + 8))(v28, v31);
    }

    v45 = v65[2];
    sub_29EC74138(v64, v11, v63, v12, v13, v14);
  }

  else
  {
    v45 = v65[2];
    if (!*(&v65[0] + 1))
    {
      sub_29EC737E0(v64, 0, v63, v12, v13, v14);
      goto LABEL_7;
    }
  }

  sub_29EC737E0(v64, v11, v63, v12, v13, v14);
  sub_29EC737E0(v17, *(&v17 + 1), v18, *(&v18 + 1), v45, *(&v45 + 1));
LABEL_10:
  v34 = *(a2 + 24);
  __dst[0] = *(a2 + 8);
  __dst[1] = v34;
  v35 = *(a2 + 56);
  __dst[2] = *(a2 + 40);
  __dst[3] = v35;

  v36 = v62;

  sub_29EC7F184();
  v65[3] = v66;
  v65[4] = v67;
  v65[5] = v68;
  v65[6] = v69;
  *&v65[0] = v64;
  *(&v65[0] + 1) = v11;
  *&v65[1] = v63;
  *(&v65[1] + 1) = v12;
  *&v65[2] = v13;
  *(&v65[2] + 1) = v14;
  v37 = v50;
  sub_29EC7ECA4();
  v38 = sub_29EC746CC();
  v64 = sub_29EC74720(&qword_2A1891200, MEMORY[0x29EDBBF38], MEMORY[0x29EDBBF30]);
  v39 = v52;
  v40 = v59;
  sub_29EC7EFB4();
  (*(v51 + 8))(v37, v40);
  memcpy(__dst, v65, 0x70uLL);
  sub_29EC74768(__dst);
  v41 = v53;
  v42 = v60;
  (*(v53 + 16))(v58, v39, v60);
  swift_storeEnumTagMultiPayload();
  v43 = sub_29EC74720(&qword_2A18911F8, MEMORY[0x29EDBC068], MEMORY[0x29EDBC060]);
  *&v65[0] = &type metadata for PhotosComponentGridTabBar.TabButton;
  *(&v65[0] + 1) = v56;
  *&v65[1] = v38;
  *(&v65[1] + 1) = v43;
  swift_getOpaqueTypeConformance2();
  *&v65[0] = &type metadata for PhotosComponentGridTabBar.TabButton;
  *(&v65[0] + 1) = v40;
  *&v65[1] = v38;
  *(&v65[1] + 1) = v64;
  swift_getOpaqueTypeConformance2();
  sub_29EC7EE24();
  return (*(v41 + 8))(v39, v42);
}

uint64_t sub_29EC6F16C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29EC7EDF4();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  memcpy(__dst, v1, sizeof(__dst));
  sub_29EC7EDE4();
  sub_29EC7EDD4();

  sub_29EC7F0D4();
  sub_29EC7EDB4();

  sub_29EC7EDD4();
  sub_29EC7EDC4();
  sub_29EC7EDD4();
  sub_29EC7EE04();
  v4 = swift_allocObject();
  memcpy((v4 + 16), __dst, 0x70uLL);
  sub_29EC7498C(__dst, v13);
  sub_29EC7F154();
  v5 = sub_29EC7EF84();
  KeyPath = swift_getKeyPath();
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891220, &qword_29EC80DE0) + 36));
  *v7 = KeyPath;
  v7[1] = v5;
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891228, &qword_29EC80DE8) + 36));
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891230, &qword_29EC80DF0) + 28);
  v10 = *MEMORY[0x29EDBCAD8];
  v11 = sub_29EC7F0E4();
  (*(*(v11 - 8) + 104))(&v8[v9], v10, v11);
  result = swift_getKeyPath();
  *v8 = result;
  return result;
}

uint64_t sub_29EC6F3B0(uint64_t *a1)
{
  v1 = *(a1 + 4);
  v12[0] = *(a1 + 3);
  v12[1] = v1;
  v2 = *(a1 + 6);
  v4 = *(a1 + 3);
  v3 = *(a1 + 4);
  v12[2] = *(a1 + 5);
  v12[3] = v2;
  v5 = a1[4];
  v8 = v4;
  v9 = v3;
  v10 = *(a1 + 5);
  v11 = *(a1 + 6);

  v6 = v5;
  sub_29EC749F8(v12, v13, &qword_2A1891148, &qword_29EC80A08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891148, &qword_29EC80A08);
  sub_29EC7F174();
  v13[0] = v8;
  v13[1] = v9;
  v13[2] = v10;
  v13[3] = v11;
  return sub_29EC74A58(v13);
}

id sub_29EC6F51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *((*MEMORY[0x29EDCA1E8] & *v4) + 0x60);
  v7 = *((*MEMORY[0x29EDCA1E8] & *v4) + 0x50);
  v8 = *((*MEMORY[0x29EDCA1E8] & *v4) + 0x58);
  v9 = type metadata accessor for PhotosComponentGridViewController(0, v7, v8, a4);
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v4[v6], a1, v9);
  v14.receiver = v4;
  v14.super_class = type metadata accessor for PhotosComponentGridViewController.Coordinator(0, v7, v8, v11);
  v12 = objc_msgSendSuper2(&v14, sel_init);
  (*(v10 + 8))(a1, v9);
  return v12;
}

uint64_t sub_29EC6F684(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *((*MEMORY[0x29EDCA1E8] & *a1) + 0x60);
  v6 = type metadata accessor for PhotosComponentGridViewController(0, *((*MEMORY[0x29EDCA1E8] & *a1) + 0x50), *((*MEMORY[0x29EDCA1E8] & *a1) + 0x58), a4);
  v7 = *(*(v6 - 8) + 8);

  return v7(&a1[v5], v6);
}

id sub_29EC6F734(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = MEMORY[0x2A1C7C4A8](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PhotosComponentGridViewController.Coordinator(0, *(v4 + 16), *(v4 + 24), v7);
  (*(v3 + 16))(v6, v1, a1);
  return sub_29EC6F4E8(v6);
}

id sub_29EC6F80C(uint64_t a1, uint64_t a2)
{
  v2 = sub_29EC6F884(a1, a2);
  v3 = [objc_allocWithZone(MEMORY[0x29EDC61E0]) initWithConfiguration_];
  v4 = [objc_allocWithZone(MEMORY[0x29EDC7B80]) initWithRootViewController_];

  return v4;
}

id sub_29EC6F884(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v90 = a1;
  v94 = *(a2 - 8);
  v95 = a2;
  MEMORY[0x2A1C7C4A8](a1);
  v92 = v4;
  v93 = v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_29EC7ED74();
  v5 = *(v84 - 8);
  MEMORY[0x2A1C7C4A8](v84);
  v7 = v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 16);
  v9 = *(v2 + 96);
  if (v9)
  {
    v10 = *(v2 + 96);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  sub_29EC6A3C4(0, &qword_2A1890BB0, 0x29EDC6200);
  v83 = v9;
  swift_bridgeObjectRetain_n();
  v11 = sub_29EC67A58(v8, v10, 1);

  v102 = sub_29EC70D00;
  v103 = 0;
  aBlock = MEMORY[0x29EDCA5F8];
  *&v100 = 1107296256;
  *(&v100 + 1) = sub_29EC6B670;
  v101 = &block_descriptor_43;
  v12 = _Block_copy(&aBlock);
  [v11 performChanges_];
  _Block_release(v12);
  sub_29EC6A3C4(0, &qword_2A1891160, 0x29EDC6220);
  v82[1] = v8;
  v13 = sub_29EC690F8(v8);
  v14 = [objc_allocWithZone(MEMORY[0x29EDC6218]) initWithDataSourceManager_];
  v15 = objc_allocWithZone(MEMORY[0x29EDC61A8]);
  v91 = v14;
  v16 = [v15 initWithSelectionManager_];
  v17 = [v11 dataSource];
  v18 = [v17 numberOfSections];

  if (v18 < 1)
  {
    v22 = 0;
  }

  else
  {
    v19 = [v11 dataSource];
    v20 = [v11 dataSource];
    v21 = [v20 identifier];

    aBlock = v21;
    v100 = xmmword_29EC80560;
    v101 = 0x7FFFFFFFFFFFFFFFLL;
    v22 = [v19 assetCollectionReferenceAtSectionIndexPath_];
  }

  v23 = objc_allocWithZone(MEMORY[0x29EDC61B0]);
  v89 = v22;
  v24 = [v23 initWithAssetCollectionReference_];
  objc_allocWithZone(MEMORY[0x29EDC14E8]);
  v25 = v11;
  v26 = v13;
  v87 = v16;
  v88 = v24;
  v86 = v25;
  v85 = v26;
  v27 = sub_29EC728BC(v25, v26, v14, v16, v24);
  v28 = *(v3 + 136);
  v29 = v5;
  if (*(v3 + 144) == 1)
  {
    v30 = v84;
  }

  else
  {

    sub_29EC7F2B4();
    v31 = sub_29EC7EF14();
    sub_29EC7EB84();

    sub_29EC7ED64();
    swift_getAtKeyPath();
    sub_29EC734B4(v28, 0);
    v30 = v84;
    (*(v5 + 8))(v7, v84);
    LOBYTE(v28) = aBlock;
  }

  v32 = v83;
  [v27 setBackgroundStyle_];
  [v27 setHidesAssetCountInFooter_];
  [v27 setWantsShareGridButtonVisible_];
  [v27 setIsEmbedded_];
  v33 = *(v3 + 152);
  v34 = *(v3 + 160);
  if (v34 != 1)
  {

    sub_29EC7F2B4();
    v35 = sub_29EC7EF14();
    sub_29EC7EB84();

    sub_29EC7ED64();
    swift_getAtKeyPath();
    sub_29EC734B4(v33, 0);
    (*(v29 + 8))(v7, v30);
  }

  v36 = sub_29EC7EF54();
  sub_29EC7EF74();
  [v27 setWantsNavbarHidden_];
  if (!v34)
  {

    sub_29EC7F2B4();
    v37 = sub_29EC7EF14();
    sub_29EC7EB84();

    sub_29EC7ED64();
    swift_getAtKeyPath();
    sub_29EC734B4(v33, 0);
    (*(v29 + 8))(v7, v30);
  }

  v38 = sub_29EC7EF64();
  sub_29EC7EF74();
  [v27 setWantsToolbarHidden_];
  [v27 setAllowedActions_];
  v39 = *(v3 + 168);
  if (*(v3 + 176) != 1)
  {

    sub_29EC7F2B4();
    v40 = sub_29EC7EF14();
    sub_29EC7EB84();

    sub_29EC7ED64();
    swift_getAtKeyPath();
    sub_29EC734B4(v39, 0);
    (*(v29 + 8))(v7, v30);
    if (aBlock != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v39)
  {
LABEL_18:
    [v27 setAllowedActions_];
  }

LABEL_19:
  [v27 setAllowedBehaviors_];
  v41 = *(v3 + 184);
  if (*(v3 + 192) != 1)
  {

    sub_29EC7F2B4();
    v42 = sub_29EC7EF14();
    sub_29EC7EB84();

    sub_29EC7ED64();
    swift_getAtKeyPath();
    sub_29EC734B4(v41, 0);
    (*(v29 + 8))(v7, v30);
    if (aBlock != 1)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (v41)
  {
LABEL_23:
    [v27 setAllowedBehaviors_];
  }

LABEL_24:
  v43 = [v27 photosAppConfiguration];
  sub_29EC6A3C4(0, &qword_2A1891168, 0x29EDC61C8);
  [v43 setBarItemProviderClass_];

  v44 = [v27 photosAppConfiguration];
  sub_29EC6A3C4(0, &qword_2A1890A88, 0x29EDBBA40);
  v45 = sub_29EC7F254();
  [v44 setPhotoLibraries_];

  v46 = sub_29EC7F204();
  [v27 setTitle_];

  if (v32)
  {
    if (*(v32 + 16))
    {
      [v27 setSectionHeaderStyle_];
      v48 = type metadata accessor for SectionHeaderLayoutProvider();
      v49 = objc_allocWithZone(v48);
      *&v49[OBJC_IVAR____TtC24_PhotosUIPrivate_SwiftUIP33_EE8FCC5EB89A00011AE00107871504E727SectionHeaderLayoutProvider_sections] = v32;
      v96.receiver = v49;
      v96.super_class = v48;
      v50 = objc_msgSendSuper2(&v96, sel_init);
      [v27 setSectionHeaderLayoutProvider_];
    }

    else
    {
    }
  }

  v51 = *(v3 + 104);
  if (v51)
  {
    v52 = *(v3 + 112);
    type metadata accessor for GlobalHeaderLayoutProvider(0, *(v95 + 16), *(v95 + 24), v47);
    sub_29EC6A730(v51, v52);

    v53 = sub_29EC70D70(v51, v52);
    [v27 setGlobalHeaderLayoutProvider_];

    sub_29EC6CFA8(v51, v52);
  }

  v55 = *(v3 + 200);
  v54 = *(v3 + 208);
  if (*(v3 + 216) == 1)
  {
    aBlock = *(v3 + 200);
    *&v100 = v54;
    sub_29EC73580(v55, v54);
    if (!v55)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  sub_29EC7F2B4();
  v56 = sub_29EC7EF14();
  sub_29EC7EB84();

  sub_29EC7ED64();
  swift_getAtKeyPath();
  sub_29EC73500(v55, v54, 0, sub_29EC734C0);
  (*(v29 + 8))(v7, v30);
  v55 = aBlock;
  if (aBlock)
  {
LABEL_34:
    v57 = v100;
    sub_29EC6A3C4(0, &qword_2A1891140, 0x29EDC61E8);
    v58 = v55;
    v59 = [v58 string];
    v60 = sub_29EC7F214();
    v62 = v61;

    v97 = v60;
    v98 = v62;
    v63 = sub_29EC7F234();
    v65 = sub_29EC72848(v63, v64);

    sub_29EC734C0(v55, v57);
    v66 = [v27 photosAppConfiguration];
    [v66 setOpenInPhotosAppButtonNavigationDestination_];
  }

LABEL_35:
  v67 = v95;
  swift_getWitnessTable();
  sub_29EC7EF04();
  sub_29EC7EEF4();
  v68 = aBlock;
  v69 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v71 = v93;
  v70 = v94;
  (*(v94 + 16))(v93, v3, v67);
  v72 = (*(v70 + 80) + 40) & ~*(v70 + 80);
  v73 = swift_allocObject();
  v74 = *(v67 + 16);
  v75 = *(v67 + 24);
  *(v73 + 2) = v74;
  *(v73 + 3) = v75;
  *(v73 + 4) = v69;
  (*(v70 + 32))(&v73[v72], v71, v67);
  v102 = sub_29EC74054;
  v103 = v73;
  aBlock = MEMORY[0x29EDCA5F8];
  *&v100 = 1107296256;
  *(&v100 + 1) = sub_29EC7109C;
  v101 = &block_descriptor_52;
  v76 = _Block_copy(&aBlock);
  v77 = v68;

  [v27 setCustomAssetSelectionHandler_];
  _Block_release(v76);
  v78 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v79 = swift_allocObject();
  *(v79 + 2) = v74;
  *(v79 + 3) = v75;
  *(v79 + 4) = v78;
  v102 = sub_29EC7412C;
  v103 = v79;
  aBlock = MEMORY[0x29EDCA5F8];
  *&v100 = 1107296256;
  *(&v100 + 1) = sub_29EC71308;
  v101 = &block_descriptor_59;
  v80 = _Block_copy(&aBlock);

  [v27 setCustomDismissHandler_];
  _Block_release(v80);

  return v27;
}

void sub_29EC70680(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 viewControllers];
  sub_29EC6A3C4(0, &qword_2A1891130, 0x29EDC7DA8);
  v5 = sub_29EC7F264();

  if (sub_29EC67B08(v5))
  {
    sub_29EC6A4AC();
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x29EDAF180](0, v5);
    }

    else
    {
      v6 = *(v5 + 32);
    }

    v11 = v6;

    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7 && (v8 = [v7 viewModelIfLoaded]) != 0)
    {
      v10 = v8;
      sub_29EC707C8(v8, a3);

      v9 = v10;
    }

    else
    {
      v9 = v11;
    }
  }

  else
  {
  }
}

void sub_29EC707C8(void *a1, uint64_t a2)
{
  v5 = sub_29EC7ED74();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, v2, a2);
  v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = *(a2 + 16);
  (*(v10 + 32))(v14 + v13, v12, a2);
  v41 = sub_29EC73510;
  v42 = v14;
  aBlock = MEMORY[0x29EDCA5F8];
  v38 = 1107296256;
  v39 = sub_29EC71760;
  v40 = &block_descriptor_1;
  v15 = _Block_copy(&aBlock);

  [a1 performChanges_];
  _Block_release(v15);
  sub_29EC717C8(a1, a2);
  v16 = [a1 specManager];
  v17 = *(v2 + 136);
  if (*(v2 + 144) != 1)
  {

    sub_29EC7F2B4();
    v18 = sub_29EC7EF14();
    sub_29EC7EB84();

    sub_29EC7ED64();
    swift_getAtKeyPath();
    sub_29EC734B4(v17, 0);
    (*(v6 + 8))(v9, v5);
    LOBYTE(v17) = aBlock;
  }

  [v16 setBackgroundStyle_];

  v19 = [a1 appViewModel];
  if (v19)
  {
    v20 = v19;
    v21 = *(v2 + 200);
    v22 = *(v2 + 208);
    if (*(v2 + 216) == 1)
    {
      aBlock = *(v2 + 200);
      v38 = v22;
      sub_29EC73580(v21, v22);
      if (v21)
      {
LABEL_6:
        v23 = v38;
        sub_29EC6A3C4(0, &qword_2A1891140, 0x29EDC61E8);
        v24 = v21;
        v25 = [v24 string];
        v26 = sub_29EC7F214();
        v28 = v27;

        v36[0] = v26;
        v36[1] = v28;
        v29 = sub_29EC7F234();
        v31 = sub_29EC72848(v29, v30);

        sub_29EC734C0(v21, v23);
LABEL_9:
        v33 = swift_allocObject();
        *(v33 + 16) = v31;
        v41 = sub_29EC73570;
        v42 = v33;
        aBlock = MEMORY[0x29EDCA5F8];
        v38 = 1107296256;
        v39 = sub_29EC6B670;
        v40 = &block_descriptor_28;
        v34 = _Block_copy(&aBlock);
        v35 = v31;

        [v20 performChanges_];
        _Block_release(v34);

        return;
      }
    }

    else
    {

      sub_29EC7F2B4();
      v32 = sub_29EC7EF14();
      sub_29EC7EB84();

      sub_29EC7ED64();
      swift_getAtKeyPath();
      sub_29EC73500(v21, v22, 0, sub_29EC734C0);
      (*(v6 + 8))(v9, v5);
      v21 = aBlock;
      if (aBlock)
      {
        goto LABEL_6;
      }
    }

    v31 = 0;
    goto LABEL_9;
  }
}

void sub_29EC70D00(void *a1)
{
  v2 = sub_29EC7F284();
  [a1 setAllowedUUIDs_];
}

uint64_t sub_29EC70DB4(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_29EC7ED74();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PhotosComponentGridViewController(0, a5, a6, v14);
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v28 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    (*(v16 + 16))(v18, Strong + *((*MEMORY[0x29EDCA1E8] & *Strong) + 0x60), v15);

    v21 = *(v18 + 28);
    v22 = *(v18 + 29);
    if (v18[240] == 1)
    {
      sub_29EC6A730(*(v18 + 28), *(v18 + 29));
    }

    else
    {

      sub_29EC7F2B4();
      v29 = v10;
      v30 = a4;
      v23 = v11;
      v24 = sub_29EC7EF14();
      a4 = v30;
      sub_29EC7EB84();

      sub_29EC7ED64();
      swift_getAtKeyPath();
      sub_29EC73500(v21, v22, 0, sub_29EC74CCC);
      (*(v23 + 8))(v13, v29);
      v21 = v31;
      v22 = v32;
    }

    (*(v16 + 8))(v18, v15);
    if (v21)
    {
      v25 = *(a4 + 16);
      v31 = a1;
      v32 = v25;

      v26 = a1;
      v21(&v31);
      sub_29EC6CFA8(v21, v22);
    }
  }

  return 1;
}

uint64_t sub_29EC7109C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v7 = a3;
  LOBYTE(a2) = v5(v6, v7);

  return a2 & 1;
}

void *sub_29EC71118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29EC7EC34();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for PhotosComponentGridViewController(0, a2, a3, v9);
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v16 - v12;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    (*(v11 + 16))(v13, result + *((*MEMORY[0x29EDCA1E8] & *result) + 0x60), v10);

    sub_29EC6E12C(v8);
    (*(v11 + 8))(v13, v10);
    sub_29EC7EC24();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_29EC71308(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_29EC7134C(void *a1, uint64_t a2)
{
  v4 = sub_29EC7ED74();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_29EC7F204();
  [a1 setTitle_];

  v9 = *(a2 + 152);
  v10 = *(a2 + 160);
  if (v10 != 1)
  {

    sub_29EC7F2B4();
    v11 = sub_29EC7EF14();
    sub_29EC7EB84();

    sub_29EC7ED64();
    swift_getAtKeyPath();
    sub_29EC734B4(v9, 0);
    (*(v5 + 8))(v7, v4);
  }

  v12 = sub_29EC7EF54();
  sub_29EC7EF74();
  [a1 setHidesNavbar_];
  if (!v10)
  {

    sub_29EC7F2B4();
    v13 = sub_29EC7EF14();
    sub_29EC7EB84();

    sub_29EC7ED64();
    swift_getAtKeyPath();
    sub_29EC734B4(v9, 0);
    (*(v5 + 8))(v7, v4);
  }

  v14 = sub_29EC7EF64();
  sub_29EC7EF74();
  [a1 setHidesToolbar_];
  v15 = *(a2 + 184);
  if (*(a2 + 192) != 1)
  {

    sub_29EC7F2B4();
    v16 = sub_29EC7EF14();
    sub_29EC7EB84();

    sub_29EC7ED64();
    swift_getAtKeyPath();
    sub_29EC734B4(v15, 0);
    (*(v5 + 8))(v7, v4);
    LOBYTE(v15) = v20[13];
  }

  [a1 setAllowsSortAndFilterMenu_];
  v17 = *(a2 + 168);
  if (*(a2 + 176) != 1)
  {

    sub_29EC7F2B4();
    v18 = sub_29EC7EF14();
    sub_29EC7EB84();

    sub_29EC7ED64();
    swift_getAtKeyPath();
    sub_29EC734B4(v17, 0);
    (*(v5 + 8))(v7, v4);
    LOBYTE(v17) = v20[12];
  }

  [a1 setAllowsShareAllAction_];
  [a1 setNavigationBarBottomPaletteContentView_];
  return [a1 setNavigationBarBottomPaletteDirectionalLayoutMargins_];
}

void sub_29EC71760(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_29EC717C8(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 - 8);
  v7 = v6[8];
  v8 = [MEMORY[0x2A1C7C4A8](a1) dataSourceManager];
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {

    v13 = [a1 dataSourceManager];
    sub_29EC7EB14();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      goto LABEL_8;
    }

LABEL_24:

    v24 = [a1 dataSourceManager];
    (v6[2])(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2);
    v25 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = *(a2 + 16);
    (v6[4])(v26 + v25, &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
    v34 = sub_29EC73728;
    v35 = v26;
    aBlock = MEMORY[0x29EDCA5F8];
    v31 = 1107296256;
    v32 = sub_29EC6B670;
    v33 = &block_descriptor_34;
    v27 = _Block_copy(&aBlock);

    [v24 performChanges_];
    _Block_release(v27);

    return;
  }

  v10 = v9;
  v29 = v6;
  sub_29EC6F488();
  if (v31)
  {
    v11 = v34;
    v12 = v34;
  }

  else
  {
    v12 = 0;
  }

  sub_29EC737E0(aBlock, v31, v32, v33, v34, v35);
  sub_29EC682C0(v12);
  v13 = [v10 currentDataSourceManager];

  sub_29EC7EB14();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    v6 = v29;
    goto LABEL_24;
  }

LABEL_8:
  v29 = v14;
  v15 = v13;
  sub_29EC7EB04();
  if (*(v3 + 96))
  {
    v16 = *(v3 + 96);
  }

  else
  {
    v16 = MEMORY[0x29EDCA190];
  }

  v17 = *(v16 + 16);
  v18 = sub_29EC67B04();

  if (v17 == v18)
  {
    v19 = sub_29EC7EB04();
    v20 = sub_29EC67B08(v19);
    for (i = 0; v20 != i; ++i)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x29EDAF180](i, v19);
      }

      else
      {
        if (i >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v22 = *(v19 + 8 * i + 32);
      }

      v23 = v22;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      sub_29EC71BC4(i, v22, v16, v3, *(a2 + 16), *(a2 + 24));
    }
  }

  else
  {
LABEL_27:
    __break(1u);
  }
}

void sub_29EC71BC4(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(a3 + 16) <= a1)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v22 = v6;
  v23 = v7;

  v12 = sub_29EC6B5B0(v11);
  type metadata accessor for PhotosComponentGridViewController(0, a5, a6, v13);
  sub_29EC6F488();
  if (v17)
  {

    sub_29EC737E0(v16, v17, v18, v19, v20, v21);
    if (v21)
    {
      v12 = sub_29EC73AC0(v21, v12);
    }
  }

  else
  {
    sub_29EC737E0(v16, 0, v18, v19, v20, v21);
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v20 = sub_29EC73870;
  v21 = v14;
  v16 = MEMORY[0x29EDCA5F8];
  v17 = 1107296256;
  v18 = sub_29EC6B670;
  v19 = &block_descriptor_40;
  v15 = _Block_copy(&v16);

  [a2 performChanges_];
  _Block_release(v15);
}

void sub_29EC71D64(void *a1, uint64_t a2)
{
  v3 = sub_29EC7F284();
  [a1 setAllowedUUIDs_];
}

void sub_29EC71DD4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_29EC7ED74();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PhotosComponentGridViewController(0, a3, a4, v12);
  sub_29EC6F488();
  v13 = v28;
  if (v28)
  {
    v15 = v31;
    v14 = v32;
    v26 = a2;
    v16 = v11;
    v17 = v8;
    v18 = v9;
    v19 = a1;
    v20 = v27;
    v21 = v29;
    v22 = v30;

    v23 = v20;
    a1 = v19;
    v9 = v18;
    v8 = v17;
    v11 = v16;
    a2 = v26;
    sub_29EC737E0(v23, v13, v21, v22, v15, v14);
    if (v14)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_29EC737E0(v27, 0, v29, v30, v31, v32);
  }

  v14 = *(a2 + 120);
  if (*(a2 + 128) == 1)
  {

    if (!v14)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  sub_29EC7F2B4();
  v24 = sub_29EC7EF14();
  sub_29EC7EB84();

  sub_29EC7ED64();
  swift_getAtKeyPath();
  sub_29EC6BEAC(v14, 0);
  (*(v9 + 8))(v11, v8);

  v14 = v27;
  if (v27)
  {
LABEL_9:
    sub_29EC6B5B0(v14);
    v14 = sub_29EC7F284();
  }

LABEL_10:
  [a1 setAllowedUUIDs_];
}

id sub_29EC7203C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_29EC6F734(a1);
  *a2 = result;
  return result;
}

uint64_t sub_29EC72064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C5D108](a1, a2, a3, WitnessTable);
}

uint64_t sub_29EC720E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C5D0E8](a1, a2, a3, WitnessTable);
}

void sub_29EC7215C(uint64_t a1)
{
  swift_getWitnessTable();
  sub_29EC7EEC4();
  __break(1u);
}

id sub_29EC7219C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = [objc_allocWithZone(MEMORY[0x29EDC14E0]) initWithSpec_];
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v10 = *(v7 + OBJC_IVAR____TtC24_PhotosUIPrivate_SwiftUIP33_EE8FCC5EB89A00011AE00107871504E727SectionHeaderLayoutProvider_sections);
  if (*(v10 + 16) <= a4)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v11 = result;
  if (*(v10 + 24 * a4 + 40))
  {

    v12 = sub_29EC7F204();
  }

  else
  {
    v12 = 0;
  }

  [v11 setTitle_];

  return v11;
}

id sub_29EC723BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SectionHeaderLayoutProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_29EC72404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *MEMORY[0x29EDCA1E8];
  v7 = (v4 + qword_2A1890E40);
  *v7 = a1;
  v7[1] = a2;
  v8 = type metadata accessor for GlobalHeaderLayoutProvider(0, *((v6 & v5) + 0x50), *((v6 & v5) + 0x58), a4);
  v10.receiver = v4;
  v10.super_class = v8;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_29EC72484(uint64_t a1)
{
  v2 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x50);
  MEMORY[0x2A1C7C4A8](a1);
  type metadata accessor for GlobalHeaderLayoutProvider.GlobalHeaderLayout(0, v2, *((v4 & v3) + 0x58), v5);
  v6 = sub_29EC725B0();
  sub_29EC7EC84();
  v7 = *(v1 + qword_2A1890E40);
  v8 = v6;
  v7();
  v9 = sub_29EC7EC64();
  [v8 setContentView_];

  return v8;
}

id sub_29EC725B0()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_29EC725E4(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a1;
  v12 = sub_29EC72484(v8);

  return v12;
}

id sub_29EC726A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for GlobalHeaderLayoutProvider.GlobalHeaderLayout(0, *((*MEMORY[0x29EDCA1E8] & *v4) + 0x50), *((*MEMORY[0x29EDCA1E8] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_29EC727BC(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *((*MEMORY[0x29EDCA1E8] & *v1) + 0x50), *((*MEMORY[0x29EDCA1E8] & *v1) + 0x58));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_29EC72848(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_29EC7F204();

  v4 = [v2 initWithSearchText_];

  return v4;
}

id sub_29EC728BC(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v11 = [v5 initWithDataSourceManager:a1 mediaProvider:a2 selectionManager:a3 assetActionManager:a4 assetCollectionActionManager:a5];

  return v11;
}

unint64_t sub_29EC72954()
{
  result = qword_2A1890C60;
  if (!qword_2A1890C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A1890C58, &unk_29EC81280);
    sub_29EC729D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1890C60);
  }

  return result;
}

unint64_t sub_29EC729D8()
{
  result = qword_2A1890C68[0];
  if (!qword_2A1890C68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1890C68);
  }

  return result;
}

uint64_t sub_29EC72A2C()
{

  if (*(v0 + 56))
  {
  }

  if (*(v0 + 96))
  {
  }

  sub_29EC6BEAC(*(v0 + 144), *(v0 + 152));
  sub_29EC6BEAC(*(v0 + 160), *(v0 + 168));

  return MEMORY[0x2A1C733A0](v0, 169, 7);
}

uint64_t sub_29EC72B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_24_PhotosUIPrivate_SwiftUI0A12ComponentTabVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_29EC72BA0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 137))
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

uint64_t sub_29EC72BE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29EC72C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for PhotosComponentGridViewController(319, *(a1 + 80), *(a1 + 88), a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29EC72DE0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PhotosComponentGridViewController(255, *a1, a1[1], a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A1890C58, &unk_29EC81280);
  OUTLINED_FUNCTION_2_0();
  swift_getWitnessTable();
  sub_29EC72954();
  return swift_getOpaqueTypeConformance2();
}

void sub_29EC72E78(uint64_t a1)
{
  sub_29EC73324(319, &unk_2A1891090, &qword_2A1890A88, 0x29EDBBA40, MEMORY[0x29EDC9A40]);
  if (v1 <= 0x3F)
  {
    sub_29EC73324(319, &qword_2A18910A0, &qword_2A18910A8, 0x29EDC7DA0, MEMORY[0x29EDC9C68]);
    if (v2 <= 0x3F)
    {
      sub_29EC733D8(319, &qword_2A18910B0, &qword_2A18910B8, &qword_29EC808F8, MEMORY[0x29EDBCB78]);
      if (v3 <= 0x3F)
      {
        sub_29EC733D8(319, &qword_2A18910C0, &qword_2A18910C8, &qword_29EC80900, MEMORY[0x29EDC9C68]);
        if (v4 <= 0x3F)
        {
          sub_29EC733D8(319, &qword_2A18910D0, &qword_2A18910D8, &qword_29EC80908, MEMORY[0x29EDC9C68]);
          if (v5 <= 0x3F)
          {
            sub_29EC733D8(319, &qword_2A18910E0, &qword_2A18910E8, &qword_29EC80910, MEMORY[0x29EDBC390]);
            if (v6 <= 0x3F)
            {
              sub_29EC7338C(319, &qword_2A18910F0, MEMORY[0x29EDBC330]);
              if (v7 <= 0x3F)
              {
                sub_29EC7338C(319, &qword_2A18910F8, MEMORY[0x29EDBC970]);
                if (v8 <= 0x3F)
                {
                  sub_29EC7338C(319, &qword_2A1891100, MEMORY[0x29EDC9A98]);
                  if (v9 <= 0x3F)
                  {
                    sub_29EC733D8(319, &qword_2A1891108, &qword_2A1891110, &qword_29EC80918, MEMORY[0x29EDBC390]);
                    if (v10 <= 0x3F)
                    {
                      sub_29EC733D8(319, &qword_2A1891118, &qword_2A1891120, qword_29EC80920, MEMORY[0x29EDBC390]);
                      if (v11 <= 0x3F)
                      {
                        sub_29EC7343C(319);
                        if (v12 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
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

uint64_t sub_29EC731A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2A1891008, &unk_29EC808C0);
    v9 = a1 + *(a3 + 84);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_29EC73270(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2A1891008, &unk_29EC808C0);
    v8 = v5 + *(a4 + 84);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_29EC73324(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29EC6A3C4(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29EC7338C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_29EC7EBC4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29EC733D8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29EC7343C(uint64_t a1)
{
  if (!qword_2A1891128)
  {
    sub_29EC7EC34();
    v1 = sub_29EC7EBC4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1891128);
    }
  }
}

uint64_t sub_29EC734B4(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

void sub_29EC734C0(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_29EC73500(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    return a4(a1, a2);
  }

  else
  {
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29EC73540()
{
  v1 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2A1C733A0](v1, v2, v3);
}

id sub_29EC73580(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

uint64_t objectdestroy_21Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PhotosComponentGridViewController(0, *(v5 + 16), *(v5 + 24), a4);
  OUTLINED_FUNCTION_8();
  v7 = *(v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v10 = *(v9 + 64);
  v11 = v5 + v8;

  if (*(v5 + v8 + 56))
  {
  }

  if (*(v11 + 104))
  {
  }

  OUTLINED_FUNCTION_0_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891138, &qword_29EC80A00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_29EC7EC34();
    OUTLINED_FUNCTION_6();
    (*(v12 + 8))(v11 + v4);
  }

  else
  {
  }

  return MEMORY[0x2A1C733A0](v5, v8 + v10, v7 | 7);
}

uint64_t sub_29EC73740(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for PhotosComponentGridViewController(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return a2(a1, v9, v6, v7);
}

void sub_29EC737E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t sub_29EC73840()
{

  v0 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2A1C733A0](v0, v1, v2);
}

uint64_t sub_29EC73878(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x29EDCA1A0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A1891150, &qword_29EC80A10);
  result = sub_29EC7F364();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_29EC7F4E4();

    sub_29EC7F224();
    result = sub_29EC7F4F4();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t *sub_29EC73AC0(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v11[6] = *MEMORY[0x29EDCA608];
  v11[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v11[3] = v11;
  v11[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x2A1C7C4A8](isStackAllocationSafe);
    v6 = (&v11[-1] - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_29EC6C0DC(0, v5, v6);
    v7 = sub_29EC73C60(v6, v5, v3, a2);
  }

  else
  {
    v9 = swift_slowAlloc();
    v7 = sub_29EC73DEC(v9, v5, sub_29EC73E98);

    MEMORY[0x29EDAF800](v9, -1, -1);
  }

  return v7;
}

unint64_t *sub_29EC73C60(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v24 = *(a3 + 16);
  v22 = result;
  v23 = a3 + 32;
  v7 = a4 + 56;
  while (1)
  {
    v21 = v5;
LABEL_3:
    if (v6 == v24)
    {
      goto LABEL_19;
    }

    if (v6 >= v24)
    {
      break;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_21;
    }

    v8 = (v23 + 16 * v6);
    v10 = *v8;
    v9 = v8[1];
    v25 = v6 + 1;
    sub_29EC7F4E4();

    sub_29EC7F224();
    v11 = sub_29EC7F4F4();
    v12 = ~(-1 << *(a4 + 32));
    do
    {
      v13 = v11 & v12;
      v14 = (v11 & v12) >> 6;
      v15 = 1 << (v11 & v12);
      if ((v15 & *(v7 + 8 * v14)) == 0)
      {

        v6 = v25;
        goto LABEL_3;
      }

      v16 = (*(a4 + 48) + 16 * v13);
      if (*v16 == v10 && v16[1] == v9)
      {
        break;
      }

      v18 = sub_29EC7F4A4();
      v11 = v13 + 1;
    }

    while ((v18 & 1) == 0);

    v19 = v22[v14];
    v22[v14] = v19 | v15;
    v6 = v25;
    if ((v19 & v15) != 0)
    {
      goto LABEL_3;
    }

    v5 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_19:

      return sub_29EC73878(v22, a2, v21, a4);
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void *sub_29EC73DEC(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    result = a3(&v7, v6, a2);
    if (!v3)
    {
      return v7;
    }
  }

  return result;
}

unint64_t *sub_29EC73E68@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, unint64_t **a5@<X8>)
{
  result = sub_29EC73C60(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_29EC73EB4()
{
  MEMORY[0x29EDAF860](v0 + 16);
  v1 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2A1C733A0](v1, v2, v3);
}

uint64_t sub_29EC73EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PhotosComponentGridViewController(0, *(v5 + 16), *(v5 + 24), a4);
  OUTLINED_FUNCTION_8();
  v7 = *(v6 + 80);
  v8 = (v7 + 40) & ~v7;
  v10 = *(v9 + 64);

  v11 = v5 + v8;

  if (*(v5 + v8 + 56))
  {
  }

  if (*(v11 + 104))
  {
  }

  OUTLINED_FUNCTION_0_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891138, &qword_29EC80A00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_29EC7EC34();
    OUTLINED_FUNCTION_6();
    (*(v12 + 8))(v11 + v4);
  }

  else
  {
  }

  return MEMORY[0x2A1C733A0](v5, v8 + v10, v7 | 7);
}

uint64_t sub_29EC74054(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[2];
  v8 = v4[3];
  v9 = *(type metadata accessor for PhotosComponentGridViewController(0, v7, v8, a4) - 8);
  v10 = v4[4];
  v11 = v4 + ((*(v9 + 80) + 40) & ~*(v9 + 80));

  return sub_29EC70DB4(a1, a2, v10, v11, v7, v8);
}

uint64_t sub_29EC740F4()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

void sub_29EC74138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (a2)
  {

    v6 = a5;
  }
}

uint64_t sub_29EC74224(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_29EC74264(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_29EC742E8()
{
  result = qword_2A18911A0;
  if (!qword_2A18911A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A1891198, &qword_29EC80C68);
    sub_29EC74C60(&qword_2A18911A8, &qword_2A18911B0, &qword_29EC80C70, MEMORY[0x29EDBCB30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18911A0);
  }

  return result;
}

uint64_t sub_29EC743A0()
{

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x2A1C733A0](v0, 88, 7);
}

uint64_t sub_29EC74414()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

unint64_t sub_29EC744B4()
{
  result = qword_2A18911D8;
  if (!qword_2A18911D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A18911C8, &qword_29EC80CA0);
    sub_29EC74C60(&qword_2A18911E0, &qword_2A1890C58, &unk_29EC81280, MEMORY[0x29EDC9A80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18911D8);
  }

  return result;
}

unint64_t sub_29EC74564()
{
  result = qword_2A18911E8;
  if (!qword_2A18911E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A18911D0, &qword_29EC80CA8);
    sub_29EC7EE54();
    sub_29EC746CC();
    sub_29EC74720(&qword_2A18911F8, MEMORY[0x29EDBC068], MEMORY[0x29EDBC060]);
    swift_getOpaqueTypeConformance2();
    sub_29EC7ECB4();
    sub_29EC74720(&qword_2A1891200, MEMORY[0x29EDBBF38], MEMORY[0x29EDBBF30]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18911E8);
  }

  return result;
}

unint64_t sub_29EC746CC()
{
  result = qword_2A18911F0;
  if (!qword_2A18911F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18911F0);
  }

  return result;
}

uint64_t sub_29EC74720(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29EC747A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_29EC747E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29EC7484C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A1891190, &qword_29EC80C60);
  sub_29EC74C60(&qword_2A18911B8, &qword_2A1891190, &qword_29EC80C60, MEMORY[0x29EDBBEA8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_29EC74900()
{

  if (*(v0 + 88))
  {
  }

  return MEMORY[0x2A1C733A0](v0, 128, 7);
}

uint64_t sub_29EC749C4()
{
  OUTLINED_FUNCTION_7();
  result = sub_29EC7ED14();
  *v0 = result;
  return result;
}

uint64_t sub_29EC749F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_6();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_29EC74A58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891148, &qword_29EC80A08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29EC74AC4()
{
  result = qword_2A1891238;
  if (!qword_2A1891238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A1891228, &qword_29EC80DE8);
    sub_29EC74B7C();
    sub_29EC74C60(&qword_2A1891268, &qword_2A1891230, &qword_29EC80DF0, MEMORY[0x29EDBC940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1891238);
  }

  return result;
}

unint64_t sub_29EC74B7C()
{
  result = qword_2A1891240;
  if (!qword_2A1891240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A1891220, &qword_29EC80DE0);
    sub_29EC74C60(&qword_2A1891248, &qword_2A1891250, &qword_29EC80E28, MEMORY[0x29EDBC278]);
    sub_29EC74C60(&qword_2A1891258, &qword_2A1891260, &unk_29EC80E30, MEMORY[0x29EDBC940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1891240);
  }

  return result;
}

uint64_t sub_29EC74C60(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_0()
{
  sub_29EC6BEAC(*(v0 + 120), *(v0 + 128));
  sub_29EC734B4(*(v0 + 136), *(v0 + 144));
  sub_29EC734B4(*(v0 + 152), *(v0 + 160));
  sub_29EC734B4(*(v0 + 168), *(v0 + 176));
  sub_29EC734B4(*(v0 + 184), *(v0 + 192));
  sub_29EC73500(*(v0 + 200), *(v0 + 208), *(v0 + 216), sub_29EC734C0);
  return sub_29EC73500(*(v0 + 224), *(v0 + 232), *(v0 + 240), sub_29EC74CCC);
}

void *OUTLINED_FUNCTION_9(void *a1)
{

  return memcpy(a1, (v1 - 232), 0x89uLL);
}

uint64_t sub_29EC74E20@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X4>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_1_0();
  v28 = v7;
  v29 = v6;
  MEMORY[0x2A1C7C4A8](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v13 = *(v12 + 16);
  OUTLINED_FUNCTION_1_0();
  v15 = v14;
  MEMORY[0x2A1C7C4A8](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x2A1C7C4A8](v20);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  (*(v24 + 16))(v22 - v21, v25);
  v26 = 1;
  if (__swift_getEnumTagSinglePayload(v23, 1, v13) != 1)
  {
    (*(v15 + 32))(v19, v23, v13);
    a1(v19, v11);
    (*(v15 + 8))(v19, v13);
    if (v4)
    {
      return (*(v28 + 32))(a3, v11, v29);
    }

    v26 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a4, v26, 1, a2);
}

uint64_t sub_29EC75064()
{
  sub_29EC760B0();
  sub_29EC7ED84();
  return v1;
}

uint64_t sub_29EC750DC()
{
  sub_29EC7605C();
  sub_29EC7ED84();
  return v1;
}

uint64_t sub_29EC75154(unsigned int a1)
{
  sub_29EC7EF74();
  v2 = sub_29EC7EF74();
  v3 = sub_29EC7EF74();
  v4 = 0;
  if (v2 != v3)
  {
    sub_29EC7EF74();
    sub_29EC7EF74();
    *v1 = sub_29EC7EF74();
    v4 = v2;
  }

  return v4 | ((v2 == v3) << 8);
}

uint64_t sub_29EC751F0()
{
  sub_29EC75FB4();
  sub_29EC7ED84();
  return v1;
}

uint64_t sub_29EC7522C()
{
  OUTLINED_FUNCTION_7();
  result = sub_29EC751F0();
  *v0 = result;
  return result;
}

uint64_t sub_29EC752B4()
{
  sub_29EC76008();
  sub_29EC7ED84();
  return v1;
}

uint64_t sub_29EC752F0()
{
  OUTLINED_FUNCTION_7();
  result = sub_29EC752B4();
  *v0 = result;
  return result;
}

uint64_t sub_29EC75398()
{
  OUTLINED_FUNCTION_7();
  v0 = sub_29EC75378();
  return OUTLINED_FUNCTION_8_0(v0);
}

uint64_t sub_29EC75414(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_29EC7ED84();
  return v3;
}

uint64_t sub_29EC7545C()
{
  OUTLINED_FUNCTION_7();
  v0 = sub_29EC753F4();
  return OUTLINED_FUNCTION_8_0(v0);
}

void *sub_29EC75500()
{
  sub_29EC75EB8();

  return sub_29EC7ED84();
}

double sub_29EC75548@<D0>(_OWORD *a1@<X8>)
{
  sub_29EC75500();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_29EC75584(void *a1)
{
  v1 = a1[1];
  *&v4 = *a1;
  *(&v4 + 1) = v1;
  sub_29EC73580(v4, v1);
  return sub_29EC755C4(&v4, v2);
}

uint64_t View.photosComponentAccessoryVisibility(_:edges:)(char a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 17) = a2;
  sub_29EC7F014();
}

uint64_t sub_29EC756C4()
{
  OUTLINED_FUNCTION_7();
  result = sub_29EC752B4();
  *v0 = result;
  return result;
}

uint64_t sub_29EC75710(_BYTE *a1, char a2, unsigned __int8 a3)
{
  if (a2 != 2)
  {
    return sub_29EC75154(a3);
  }

  sub_29EC7EF74();
  result = sub_29EC7EF74();
  if (result != a3)
  {
    result = sub_29EC7EF74();
    *a1 = result;
  }

  return result;
}

uint64_t View.photosComponentBackgroundVisibility(_:)()
{
  OUTLINED_FUNCTION_10();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_7_0(KeyPath, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
}

uint64_t sub_29EC757F4()
{
  OUTLINED_FUNCTION_7();
  result = sub_29EC751F0();
  *v0 = result;
  return result;
}

uint64_t sub_29EC7584C()
{
  OUTLINED_FUNCTION_7();
  v0 = sub_29EC75378();
  return OUTLINED_FUNCTION_8_0(v0);
}

uint64_t sub_29EC758B4()
{
  OUTLINED_FUNCTION_10();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_7_0(KeyPath, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
}

uint64_t sub_29EC75908()
{
  OUTLINED_FUNCTION_7();
  v0 = sub_29EC753F4();
  return OUTLINED_FUNCTION_8_0(v0);
}

uint64_t View.photosComponentOpenInPhotosDestination(_:)()
{
  OUTLINED_FUNCTION_10();
  swift_getKeyPath();
  sub_29EC7EFC4();
}

uint64_t View.photosComponentTabs(_:)()
{
  OUTLINED_FUNCTION_10();
  swift_getKeyPath();

  sub_29EC7EFC4();
}

uint64_t View.photosComponentSections<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_29EC7F2F4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18910C8, &qword_29EC80900);
  sub_29EC74E20(sub_29EC75C7C, v4, v5, &v7);
  sub_29EC7EFC4();
}

uint64_t sub_29EC75B98@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  MEMORY[0x2A1C7C4A8](a1);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_29EC7F274();
  *a4 = result;
  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA32_EnvironmentKeyTransformModifierVyAA4EdgeO3SetVGGAaBHPxAaBHD1__AkA0cI0HPyHCHCTm(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_29EC7EC94();
  sub_29EC74C60(a4, a2, a3, a5);
  OUTLINED_FUNCTION_1_1();
  return swift_getWitnessTable();
}

uint64_t sub_29EC75E1C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A18912C0, &qword_29EC80FA8);
  sub_29EC7EC94();
  sub_29EC74C60(&qword_2A18912C8, &qword_2A18912C0, &qword_29EC80FA8, MEMORY[0x29EDBC940]);
  OUTLINED_FUNCTION_1_1();
  return swift_getWitnessTable();
}

unint64_t sub_29EC75EB8()
{
  result = qword_2A18912D0;
  if (!qword_2A18912D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18912D0);
  }

  return result;
}

unint64_t sub_29EC75F0C()
{
  result = qword_2A18912D8;
  if (!qword_2A18912D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18912D8);
  }

  return result;
}

unint64_t sub_29EC75F60()
{
  result = qword_2A18912E0;
  if (!qword_2A18912E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18912E0);
  }

  return result;
}

unint64_t sub_29EC75FB4()
{
  result = qword_2A18912E8;
  if (!qword_2A18912E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18912E8);
  }

  return result;
}

unint64_t sub_29EC76008()
{
  result = qword_2A18912F0;
  if (!qword_2A18912F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18912F0);
  }

  return result;
}

unint64_t sub_29EC7605C()
{
  result = qword_2A18912F8;
  if (!qword_2A18912F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18912F8);
  }

  return result;
}

unint64_t sub_29EC760B0()
{
  result = qword_2A1891300;
  if (!qword_2A1891300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1891300);
  }

  return result;
}

uint64_t sub_29EC7617C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29EC76174();
  *a1 = result;
  return result;
}

uint64_t sub_29EC761A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_29EC763FC();

  return MEMORY[0x2A1C5D648](a1, a2, a3, a4, v8);
}

uint64_t sub_29EC76210@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29EC76208();
  *a1 = result;
  return result;
}

uint64_t sub_29EC76238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_29EC763A8();

  return MEMORY[0x2A1C5D648](a1, a2, a3, a4, v8);
}

uint64_t sub_29EC7629C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29EC76208();
  *a1 = result & 1;
  return result;
}

uint64_t sub_29EC762EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29EC762E0();
  *a1 = result;
  return result;
}

uint64_t sub_29EC76314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_29EC72954();

  return MEMORY[0x2A1C5D648](a1, a2, a3, a4, v8);
}

uint64_t sub_29EC76380@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29EC76378();
  *a1 = result;
  return result;
}

unint64_t sub_29EC763A8()
{
  result = qword_2A1891308;
  if (!qword_2A1891308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1891308);
  }

  return result;
}

unint64_t sub_29EC763FC()
{
  result = qword_2A1891310;
  if (!qword_2A1891310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1891310);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{

  return sub_29EC7EFC4();
}

id PhotosComponentItem.photoLibrary.getter()
{
  v1 = [*v0 asset];
  objc_opt_self();
  v2 = [swift_dynamicCastObjCClassUnconditional() photoLibrary];
  result = swift_unknownObjectRelease();
  if (v2)
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t PhotosComponentItem.itemIdentifier.getter()
{
  v1 = [*v0 asset];
  objc_opt_self();
  v2 = [swift_dynamicCastObjCClassUnconditional() localIdentifier];
  swift_unknownObjectRelease();
  v3 = sub_29EC7F214();

  return v3;
}

uint64_t PhotosComponentTab.init(title:systemImage:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  a5[4] = 0;
  a5[5] = 0;
  return result;
}

uint64_t PhotosComponentTab.init<A>(title:systemImage:targetPhotoLibrary:itemUUIDs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a8@<X8>)
{
  v15 = sub_29EC7F2F4();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891318, &qword_29EC81290);
  sub_29EC74E20(sub_29EC76828, v16, v17, &v20);
  result = (*(*(v15 - 8) + 8))(a6, v15);
  v19 = v20;
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = v19;
  return result;
}

uint64_t sub_29EC76740@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  MEMORY[0x2A1C7C4A8](a1);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_29EC7F274();
  *a4 = result;
  return result;
}

uint64_t static PhotosComponentTab.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  if (!v10 && (sub_29EC7F4A4() & 1) == 0)
  {
    return 0;
  }

  v11 = v2 == v6 && v3 == v7;
  if (!v11 && (sub_29EC7F4A4() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v9)
    {
      return 0;
    }

    sub_29EC76D60();
    v12 = v9;
    v13 = v4;
    v14 = sub_29EC7F2E4();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (sub_29EC76CD4(v5, v8) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t PhotosComponentSection.init<A, B>(_:itemUUIDs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v41 = a5;
  v42 = a6;
  v44 = a7;
  sub_29EC7F2F4();
  OUTLINED_FUNCTION_1_0();
  v12 = v11;
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v39 - v14;
  OUTLINED_FUNCTION_1_0();
  v40 = v16;
  v18 = MEMORY[0x2A1C7C4A8](v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v22 = &v39 - v21;
  OUTLINED_FUNCTION_1_0();
  v24 = v23;
  MEMORY[0x2A1C7C4A8](v25);
  v27 = *(v24 + 16);
  v43 = a2;
  v28 = a2;
  v30 = v29;
  v27(&v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v28, a4);
  v42 = sub_29EC7F274();
  v31 = a1;
  (*(v12 + 16))(v15, a1, v30);
  if (__swift_getEnumTagSinglePayload(v15, 1, a3) == 1)
  {
    (*(v24 + 8))(v43, a4);
    v32 = *(v12 + 8);
    v32(a1, v30);
    result = (v32)(v15, v30);
    v34 = 0;
    v35 = 0;
  }

  else
  {
    v36 = v40;
    (*(v40 + 32))(v22, v15, a3);
    (*(v36 + 16))(v20, v22, a3);
    v34 = sub_29EC7F234();
    v35 = v37;
    (*(v24 + 8))(v43, a4);
    (*(v12 + 8))(v31, v30);
    result = (*(v36 + 8))(v22, a3);
  }

  v38 = v44;
  *v44 = v34;
  v38[1] = v35;
  v38[2] = v42;
  return result;
}

id static PhotosComponentNavigationDestination.search(decoratedQuery:photoLibrary:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  v3 = a1;

  return a2;
}

uint64_t sub_29EC76CD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_29EC7F4A4() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_29EC76D60()
{
  result = qword_2A1890A88;
  if (!qword_2A1890A88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1890A88);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_29EC76DCC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_29EC76E0C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_29EC76E78(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_29EC76EB8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t View.photosComponentOneUpViewer(isPresented:allowedItemIdentifiers:photoLibrary:initialItemIdentifier:onDismiss:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29 = a7;
  v27 = a5;
  v28 = a6;
  v26 = a4;
  v30 = a8;
  sub_29EC7EC94();
  OUTLINED_FUNCTION_1_2();
  v16 = v15;
  v18 = MEMORY[0x2A1C7C4A8](v17);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v22 = &v26 - v21;
  View.photosComponentOneUpViewer(isPresented:photoLibrary:initialItemIdentifier:onDismiss:)(a1, a2, a3, v26, v27, v28, v29, a9, v20, a10, a11);
  v23 = sub_29EC6A770();
  v31 = a11;
  v32 = v23;
  OUTLINED_FUNCTION_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_2();
  sub_29EC6CC68();
  v24 = *(v16 + 8);
  v24(v20, v11);
  OUTLINED_FUNCTION_2_2();
  sub_29EC6CC68();
  return (v24)(v22, v11);
}

uint64_t View.photosComponentOneUpViewer(isPresented:allowedItemIdentifiers:viewing:onDismiss:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, __int128 *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v27 = a6;
  v26 = a5;
  v28 = a8;
  sub_29EC7EC94();
  OUTLINED_FUNCTION_1_2();
  v16 = v15;
  v18 = MEMORY[0x2A1C7C4A8](v17);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v22 = &v26 - v21;
  v31 = *a4;
  View.photosComponentOneUpViewer(isPresented:viewing:onDismiss:)(a1, a2, a3, &v31, v26, v27, a7, a9, v20);
  v23 = sub_29EC6A770();
  v29 = a9;
  v30 = v23;
  OUTLINED_FUNCTION_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_2();
  sub_29EC6CC68();
  v24 = *(v16 + 8);
  v24(v20, v9);
  OUTLINED_FUNCTION_2_2();
  sub_29EC6CC68();
  return (v24)(v22, v9);
}

uint64_t sub_29EC77268()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A1891320, "^+");
  sub_29EC7EC94();
  sub_29EC7737C(&qword_2A1891328, &qword_2A1891320, "^+");
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

uint64_t sub_29EC772F4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A1891290, &qword_29EC80F90);
  sub_29EC7EC94();
  sub_29EC7737C(&qword_2A1891298, &qword_2A1891290, &qword_29EC80F90);
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

uint64_t sub_29EC7737C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_29EC773F4()
{
  sub_29EC77EE0();
  OUTLINED_FUNCTION_4_0();
  sub_29EC7ED84();
  if (!v6)
  {
    goto LABEL_5;
  }

  sub_29EC77F34();
  OUTLINED_FUNCTION_4_0();
  sub_29EC7ED84();
  if (!v7)
  {

LABEL_5:
    OUTLINED_FUNCTION_4_0();
    sub_29EC7ED84();
    return v6;
  }

  v0 = sub_29EC6B5B0(v6);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891350, &qword_29EC814F0);
  MEMORY[0x29EDAEF70](&v5, v1);
  v2 = sub_29EC78074(v5, v0);

  v3 = sub_29EC77510(v2);

  return v3;
}

void *sub_29EC77510(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_29EC780C8(*(a1 + 16), 0);
  v4 = sub_29EC789BC(&v6, v3 + 4, v2, a1);
  sub_29EC6A1EC(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x29EDCA190];
  }

  return v3;
}

uint64_t View.photosComponentItemIdentifiers<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_29EC7F2F4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = v13 - v9;
  swift_getKeyPath();
  (*(v8 + 16))(v10, a1, v7);
  if (__swift_getEnumTagSinglePayload(v10, 1, a3) == 1)
  {
    (*(v8 + 8))(v10, v7);
    v11 = 0;
  }

  else
  {
    v11 = sub_29EC7F244();
    (*(*(a3 - 8) + 8))(v10, a3);
  }

  v13[3] = v11;
  sub_29EC7EFC4();
}

uint64_t sub_29EC77778()
{
  sub_29EC77EE0();
  OUTLINED_FUNCTION_4_0();
  sub_29EC7ED84();
  return v1;
}

uint64_t sub_29EC777B0()
{
  OUTLINED_FUNCTION_7();
  result = sub_29EC77778();
  *v0 = result;
  return result;
}

uint64_t sub_29EC77844(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_29EC7F204();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_opt_self() uuidFromLocalIdentifier_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_29EC7F214();

  return v4;
}

uint64_t sub_29EC778D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_29EC77844(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t View.photosComponentItemUUIDs<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_29EC7F2F4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891318, &qword_29EC81290);
  sub_29EC74E20(sub_29EC77AF8, v4, v5, &v7);
  sub_29EC7EFC4();
}

uint64_t sub_29EC77A14@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  MEMORY[0x2A1C7C4A8](a1);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_29EC7F274();
  *a4 = result;
  return result;
}

uint64_t sub_29EC77B48()
{
  OUTLINED_FUNCTION_7();
  result = sub_29EC77B28();
  *v0 = result;
  v0[1] = v2;
  v0[2] = v3;
  return result;
}

uint64_t sub_29EC77BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_29EC7EFC4();
}

uint64_t sub_29EC77C80(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_29EC7ED84();
  return v3;
}

uint64_t sub_29EC77CCC()
{
  OUTLINED_FUNCTION_7();
  result = sub_29EC77C60();
  *v0 = result;
  v0[1] = v2;
  v0[2] = v3;
  return result;
}

uint64_t keypath_get_2Tm()
{
  OUTLINED_FUNCTION_7();
  result = v1();
  *v0 = result;
  v0[1] = v3;
  v0[2] = v4;
  return result;
}

uint64_t sub_29EC77D60(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  sub_29EC78B1C(*a1, v9, v10);
  return sub_29EC77F88(v8, v9, v10, a5, a6);
}

uint64_t sub_29EC77DEC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A1891320, "^+");
  sub_29EC7EC94();
  sub_29EC7737C(&qword_2A1891328, &qword_2A1891320, "^+");
  return OUTLINED_FUNCTION_0_3();
}

uint64_t sub_29EC77E68()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A1891330, &qword_29EC814E8);
  sub_29EC7EC94();
  sub_29EC7737C(&qword_2A1891338, &qword_2A1891330, &qword_29EC814E8);
  return OUTLINED_FUNCTION_0_3();
}

unint64_t sub_29EC77EE0()
{
  result = qword_2A1891340;
  if (!qword_2A1891340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1891340);
  }

  return result;
}

unint64_t sub_29EC77F34()
{
  result = qword_2A1891348;
  if (!qword_2A1891348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1891348);
  }

  return result;
}

uint64_t sub_29EC77FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_29EC78BEC();

  return MEMORY[0x2A1C5D648](a1, a2, a3, a4, v8);
}

uint64_t sub_29EC78048@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29EC78038();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_29EC78074(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_29EC78144(a1);
    return a2;
  }

  else
  {

    return sub_29EC78270(a1, a2);
  }
}

void *sub_29EC780C8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x29EDCA190];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891358, &qword_29EC814F8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

uint64_t sub_29EC78144(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_29EC7DF90(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_29EC78270(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v56 = *MEMORY[0x29EDCA608];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v47 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;

    v15 = 0;
    v49 = v12;
    v50 = v7;
    v51 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        sub_29EC7F4E4();

        sub_29EC7F224();
        v20 = sub_29EC7F4F4();
        v21 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v20 & v21;
          v4 = (v20 & v21) >> 6;
          v8 = 1 << (v20 & v21);
          if ((v8 & *(v13 + 8 * v4)) == 0)
          {
            break;
          }

          v22 = (*(v5 + 48) + 16 * v7);
          v23 = *v22 == v3 && v22[1] == v2;
          if (v23 || (sub_29EC7F4A4() & 1) != 0)
          {
            v53 = v47;
            v54 = v16;
            v55 = v11;
            v3 = v50;
            v12 = v51;
            v52[0] = v51;
            v52[1] = v50;

            v25 = *(v5 + 32);
            v44 = ((1 << v25) + 63) >> 6;
            v2 = 8 * v44;
            if ((v25 & 0x3Fu) > 0xD)
            {
              goto LABEL_49;
            }

            while (1)
            {
              v45 = &v43;
              MEMORY[0x2A1C7C4A8](v24);
              v7 = &v43 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, (v5 + 56), v2);
              v26 = *(v7 + 8 * v4) & ~v8;
              v27 = *(v5 + 16);
              v48 = v7;
              *(v7 + 8 * v4) = v26;
              v28 = v27 - 1;
              v29 = v49;
              while (1)
              {
                v46 = v28;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v31 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v32 = (*(v12 + 48) + ((v16 << 10) | (16 * v31)));
                v2 = *v32;
                v33 = v32[1];
                sub_29EC7F4E4();

                sub_29EC7F224();
                v34 = sub_29EC7F4F4();
                v35 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v34 & v35;
                  v7 = (v34 & v35) >> 6;
                  v8 = 1 << (v34 & v35);
                  if ((v8 & *(v13 + 8 * v7)) == 0)
                  {

                    v3 = v50;
                    v12 = v51;
                    v29 = v49;
                    goto LABEL_24;
                  }

                  v36 = (*(v5 + 48) + 16 * v4);
                  if (*v36 == v2 && v36[1] == v33)
                  {
                    break;
                  }

                  v38 = sub_29EC7F4A4();
                  v34 = v4 + 1;
                }

                while ((v38 & 1) == 0);

                v39 = v48[v7];
                v48[v7] = v39 & ~v8;
                v3 = v50;
                v12 = v51;
                v29 = v49;
                if ((v39 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v28 = v46 - 1;
                if (__OFSUB__(v46, 1))
                {
                  __break(1u);
                }

                if (v46 == 1)
                {

                  v5 = MEMORY[0x29EDCA1A0];
                  goto LABEL_43;
                }
              }

              while (1)
              {
                v30 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v30 >= v29)
                {
                  v5 = sub_29EC73878(v48, v44, v46, v5);
                  goto LABEL_43;
                }

                v11 = *(v3 + 8 * v30);
                ++v16;
                if (v11)
                {
                  v16 = v30;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v41 = swift_slowAlloc();
            v42 = sub_29EC78934(v41, v44, (v5 + 56), v44, v5, v7, v52);

            MEMORY[0x29EDAF800](v41, -1, -1);
            v12 = v52[0];
            v47 = v53;
            v5 = v42;
LABEL_43:
            v14 = v12;
            goto LABEL_45;
          }

          v20 = v7 + 1;
        }

        v15 = v16;
        v7 = v50;
        v14 = v51;
        v12 = v49;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_48;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_45:
    sub_29EC6A1EC(v14);
  }

  else
  {

    return MEMORY[0x29EDCA1A0];
  }

  return v5;
}

unint64_t *sub_29EC78748(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    sub_29EC7F4E4();

    sub_29EC7F224();
    v16 = sub_29EC7F4F4();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        goto LABEL_3;
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 == v15 && v21[1] == v14)
      {
        break;
      }

      v23 = sub_29EC7F4A4();
      v16 = v18 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = v27[v19];
    v27[v19] = v24 & ~v20;
    if ((v24 & v20) == 0)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_23;
    }

    if (v26 == 1)
    {
      return MEMORY[0x29EDCA1A0];
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_29EC73878(v27, a2, v26, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

unint64_t *sub_29EC78934(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_29EC78748(a1, a2, a5, a6, a7);

  return v12;
}

void *sub_29EC789BC(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29EC78B1C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return v3;
}

unint64_t sub_29EC78B68()
{
  result = qword_2A1891360;
  if (!qword_2A1891360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1891360);
  }

  return result;
}

unint64_t sub_29EC78BEC()
{
  result = qword_2A1891368;
  if (!qword_2A1891368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A18910E8, &qword_29EC80910);
    sub_29EC78C70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1891368);
  }

  return result;
}

unint64_t sub_29EC78C70()
{
  result = qword_2A1891370;
  if (!qword_2A1891370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A1891318, &qword_29EC81290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1891370);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_3()
{

  return swift_getWitnessTable();
}

void (*sub_29EC78D5C(void (*result)(void *), uint64_t a2, uint64_t a3))(void *)
{
  v4 = result;
  v5 = *(a3 + 16);
  v6 = (a3 + 40);
  if (v5)
  {
    while (1)
    {
      v7 = *v6;
      v8[0] = *(v6 - 1);
      v8[1] = v7;

      v4(v8);
      if (v3)
      {
        break;
      }

      v6 += 2;
      if (!--v5)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t View.photosComponentShareSheet(isPresented:photoLibrary:selectedItemIdentifiers:onDismiss:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v29 = a7;
  v27 = a5;
  v28 = a6;
  v30 = a9;
  v15 = sub_29EC7EC94();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  v19 = MEMORY[0x2A1C7C4A8](v18);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v23 = &v27 - v22;
  v33[0] = a1;
  v33[1] = a2;
  v34 = a3;
  v35 = a4;
  v36 = v27;
  v37 = v28;
  v38 = v29;
  MEMORY[0x29EDAEE50](v33, a8, &type metadata for PhotosComponentShareSheetSheetModifier, a10);
  v24 = sub_29EC78F94();
  v31 = a10;
  v32 = v24;
  OUTLINED_FUNCTION_0();
  swift_getWitnessTable();
  sub_29EC6CC68();
  v25 = *(v17 + 8);
  v25(v21, v15);
  sub_29EC6CC68();
  return (v25)(v23, v15);
}

unint64_t sub_29EC78F94()
{
  result = qword_2A1891378;
  if (!qword_2A1891378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1891378);
  }

  return result;
}

uint64_t View.photosComponentShareSheet(isPresented:photoLibrary:selectedItems:onDismiss:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v51 = a8;
  v52 = a6;
  v50 = a4;
  v49 = a3;
  v47 = a1;
  v48 = a2;
  v14 = a10;
  v15 = sub_29EC7EC94();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  v19 = MEMORY[0x2A1C7C4A8](v18);
  v53 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v22 = &v40 - v21;
  v23 = *(a5 + 16);
  v24 = MEMORY[0x29EDCA190];
  if (v23)
  {
    v40 = v10;
    v41 = a10;
    v42 = a7;
    v43 = &v40 - v21;
    v44 = v17;
    v45 = v15;
    v46 = a9;
    v56[0] = MEMORY[0x29EDCA190];
    sub_29EC79E00(0, v23, 0);
    v24 = v56[0];
    v25 = a5 + 40;
    do
    {
      v26 = *(v25 - 8);

      v27 = [v26 asset];
      objc_opt_self();
      v28 = [swift_dynamicCastObjCClassUnconditional() localIdentifier];
      swift_unknownObjectRelease();
      v29 = sub_29EC7F214();
      v31 = v30;

      v56[0] = v24;
      v33 = *(v24 + 16);
      v32 = *(v24 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_29EC79E00((v32 > 1), v33 + 1, 1);
        v24 = v56[0];
      }

      *(v24 + 16) = v33 + 1;
      v34 = v24 + 16 * v33;
      *(v34 + 32) = v29;
      *(v34 + 40) = v31;
      v25 += 16;
      --v23;
    }

    while (v23);
    v15 = v45;
    v22 = v43;
    v17 = v44;
    a7 = v42;
    v14 = v41;
  }

  v56[0] = v47;
  v56[1] = v48;
  v57 = v49 & 1;
  v58 = v50;
  v59 = v24;
  v35 = v52;
  v60 = v52;
  v61 = a7;
  sub_29EC6A730(v52, a7);
  v36 = v53;
  MEMORY[0x29EDAEE50](v56, v51, &type metadata for PhotosComponentShareSheetSheetModifier, v14);

  sub_29EC6CFA8(v35, a7);
  v37 = sub_29EC78F94();
  v54 = v14;
  v55 = v37;
  OUTLINED_FUNCTION_0();
  swift_getWitnessTable();
  sub_29EC6CC68();
  v38 = *(v17 + 8);
  v38(v36, v15);
  sub_29EC6CC68();
  return (v38)(v22, v15);
}

uint64_t sub_29EC79308()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v12[0] = *v0;
  v12[1] = v1;
  v13 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1890B78, &qword_29EC80360);
  sub_29EC7F184();
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 24);
  v11 = *(v0 + 32);
  v6 = swift_allocObject();
  v7 = *(v0 + 16);
  *(v6 + 16) = *v0;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(v0 + 32);
  *(v6 + 64) = *(v0 + 48);
  sub_29EC79FB0(v12, v10);

  v8 = v5;
  sub_29EC7A00C(&v11, v10);
  sub_29EC6A730(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891380, &qword_29EC81708);
  sub_29EC7A07C();
  sub_29EC7A0E0();
  sub_29EC7F034();
}

uint64_t sub_29EC79488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  KeyPath = swift_getKeyPath();
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = KeyPath;
  *(a2 + 24) = 0;
  v6 = v4;
}

void sub_29EC79528(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v44 = a3;
  v8 = sub_29EC7EA94();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29EC7EAD4();
  v45 = *(v11 - 8);
  v46 = v11;
  v12 = MEMORY[0x2A1C7C4A8](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v41 - v15;
  v17 = sub_29EC7ED74();
  v18 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {

    if (!a4)
    {
      goto LABEL_10;
    }
  }

  else
  {

    sub_29EC7F2B4();
    v21 = sub_29EC7EF14();
    sub_29EC7EB84();

    sub_29EC7ED64();
    swift_getAtKeyPath();
    sub_29EC6BEAC(a4, 0);
    (*(v18 + 8))(v20, v17);
    a4 = v47;
    if (!v47)
    {
      goto LABEL_10;
    }
  }

  if (*(a4 + 16))
  {
    v22 = [a2 librarySpecificFetchOptions];
    v23 = objc_opt_self();
    v24 = v22;
    v25 = sub_29EC7E3C8(a4, v22, v23);

    if (!v25)
    {
      __break(1u);
      goto LABEL_18;
    }

    v26 = [v25 fetchedObjects];

    if (v26)
    {
      v27 = [objc_opt_self() transientAssetCollectionWithAssets:v26 title:0];

      goto LABEL_11;
    }

LABEL_15:
    [objc_allocWithZone(MEMORY[0x29EDC7DA8]) init];

    return;
  }

LABEL_10:
  v24 = [a2 librarySpecificFetchOptions];
  [v24 setIncludeAllPhotosSmartAlbum_];
  v28 = [objc_opt_self() fetchAssetCollectionsWithType:2 subtype:1000000205 options:v24];
  v27 = [v28 firstObject];

  if (!v27)
  {
    goto LABEL_15;
  }

LABEL_11:

  v29 = objc_allocWithZone(MEMORY[0x29EDC61D8]);
  v30 = v27;
  v31 = [v29 initWithAssetCollection:v30 options:1025];
  [v31 setReverseSortOrder_];
  v32 = [objc_allocWithZone(MEMORY[0x29EDC61D0]) initWithPhotosDataSourceConfiguration_];
  v33 = [objc_allocWithZone(MEMORY[0x29EDC6198]) initWithAssetCollection:v30 photosDataSource:v32];

  v34 = [v32 indexPathForFirstAsset];
  if (!v34)
  {
    [objc_allocWithZone(MEMORY[0x29EDC7DA8]) init];

    return;
  }

  v35 = v34;
  sub_29EC7EAB4();

  (*(v45 + 32))(v16, v14, v46);
  v36 = sub_29EC7EA84();
  MEMORY[0x2A1C7C4A8](v36);
  *(&v41 - 4) = v32;
  *(&v41 - 3) = v16;
  *(&v41 - 2) = v10;
  sub_29EC78D5C(sub_29EC7A3A4, (&v41 - 6), v44);
  v37 = [objc_allocWithZone(MEMORY[0x29EDC7DA8]) init];
  v38 = [v37 px_sharePresentation];

  if (v38)
  {
    v39 = sub_29EC7EA64();
    v40 = [v38 createActivitySharingControllerWithContext:v33 selectedAssetIndexSet:v39];

    if ([v40 activityViewController])
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      objc_opt_self();
      swift_dynamicCastObjCClassUnconditional();
      (*(v42 + 8))(v10, v43);
      (*(v45 + 8))(v16, v46);
      return;
    }

    goto LABEL_19;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
}

void sub_29EC79B6C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v6 = sub_29EC7EAD4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = v17 - v11;
  v14 = *a1;
  v13 = a1[1];
  v15 = sub_29EC7EAA4();
  v16 = sub_29EC7A3C4(v14, v13, 0, v15, 0, a2);

  if (v16)
  {
    sub_29EC7EAB4();

    (*(v7 + 32))(v12, v10, v6);
    sub_29EC7EAC4();
    sub_29EC7EA74();
    (*(v7 + 8))(v12, v6);
  }
}

uint64_t sub_29EC79D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29EC7A350();

  return MEMORY[0x2A1C5D108](a1, a2, a3, v6);
}

uint64_t sub_29EC79D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29EC7A350();

  return MEMORY[0x2A1C5D0E8](a1, a2, a3, v6);
}

void sub_29EC79DD8(uint64_t a1)
{
  sub_29EC7A350();
  sub_29EC7EEC4();
  __break(1u);
}

char *sub_29EC79E00(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29EC7A138(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_29EC79E20()
{
  sub_29EC7EC94();
  sub_29EC78F94();
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_29EC79E90(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_29EC79ED0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_29EC79F48()
{

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x2A1C733A0](v0, 72, 7);
}

uint64_t sub_29EC7A00C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891318, &qword_29EC81290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_29EC7A07C()
{
  result = qword_2A1891388;
  if (!qword_2A1891388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A1891380, &qword_29EC81708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1891388);
  }

  return result;
}

unint64_t sub_29EC7A0E0()
{
  result = qword_2A1891390;
  if (!qword_2A1891390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1891390);
  }

  return result;
}

char *sub_29EC7A138(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891358, &qword_29EC814F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_29EC7A240(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_29EC7A280(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29EC7A2D4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A1891380, &qword_29EC81708);
  sub_29EC7A07C();
  sub_29EC7A0E0();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_29EC7A350()
{
  result = qword_2A1891398;
  if (!qword_2A1891398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1891398);
  }

  return result;
}

id sub_29EC7A3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_29EC7F204();
  v11 = [a6 indexPathForAssetWithUUID:v10 orBurstIdentifier:a3 hintIndexPath:a4 hintCollection:a5];

  return v11;
}

void *sub_29EC7A43C()
{
  OUTLINED_FUNCTION_7();
  result = sub_29EC773F4();
  *v0 = result;
  return result;
}

void *PhotosComponentShelf.init<A>(_:photoLibrary:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a5@<X8>)
{
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  MEMORY[0x2A1C7C4A8](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  (*(v10 + 16))(v13 - v12, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1890C50, &qword_29EC80010);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_29EC7FFF0;
  *(v15 + 32) = a2;
  PhotosComponentShelf.init<A>(_:photoLibraries:)(v14, v15, a3, __src);
  (*(v10 + 8))(a1, a3);
  return memcpy(a5, __src, 0x59uLL);
}

uint64_t PhotosComponentShelf.init<A>(_:photoLibraries:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  MEMORY[0x2A1C7C4A8](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  *(a5 + 24) = swift_getKeyPath();
  *(a5 + 32) = 0;
  KeyPath = swift_getKeyPath();
  *(a5 + 48) = 0;
  *(a5 + 56) = 0;
  *(a5 + 40) = KeyPath;
  *(a5 + 64) = 0;
  *(a5 + 72) = swift_getKeyPath();
  *(a5 + 80) = 0;
  *(a5 + 88) = 0;
  result = sub_29EC74CC4();
  if (result)
  {
    (*(v10 + 16))(v14, a1, a3);
    v17 = sub_29EC7F234();
    v19 = v18;
    result = (*(v10 + 8))(a1, a3);
    *a5 = v17;
    *(a5 + 8) = v19;
    *(a5 + 16) = a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_29EC7A6F8()
{
  OUTLINED_FUNCTION_7();
  result = sub_29EC773F4();
  *v0 = result;
  return result;
}

uint64_t PhotosComponentShelf.body.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_29EC7EF24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18913A0, &qword_29EC81940);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A18913A8, &qword_29EC81948);
  sub_29EC74C60(&qword_2A18913B0, &qword_2A18913A8, &qword_29EC81948, MEMORY[0x29EDBC318]);
  swift_getOpaqueTypeConformance2();
  return sub_29EC7EBB4();
}

uint64_t sub_29EC7A83C(uint64_t a1)
{
  v2 = sub_29EC7EE34();
  MEMORY[0x2A1C7C4A8](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18913A8, &qword_29EC81948);
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v8[-v5];
  v9 = a1;
  sub_29EC7EDA4();
  v10 = 0;
  sub_29EC7E6D8(&qword_2A1891508, MEMORY[0x29EDBC828], MEMORY[0x29EDBC830]);
  sub_29EC7F504();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891510, &qword_29EC81E98);
  sub_29EC7E720();
  sub_29EC7EBA4();
  sub_29EC74C60(&qword_2A18913B0, &qword_2A18913A8, &qword_29EC81948, MEMORY[0x29EDBC318]);
  sub_29EC7F004();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_29EC7AA60(void *__src)
{
  memcpy(__dst, __src, 0x59uLL);
  sub_29EC7AB88();
  v2 = swift_allocObject();
  memcpy((v2 + 16), __src, 0x59uLL);
  sub_29EC7E850(__src, __dst);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891528, &qword_29EC81EA0);
  sub_29EC74C60(&qword_2A1891530, &qword_2A1891528, &qword_29EC81EA0, MEMORY[0x29EDC9A80]);
  sub_29EC7E7A4();
  sub_29EC7E888();
  return sub_29EC7F1A4();
}

void sub_29EC7AB88()
{
  v1 = sub_29EC7ED74();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  if (v5 >> 62)
  {
    if (!sub_29EC7F404())
    {
      return;
    }
  }

  else if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  sub_29EC6A4AC();
  if ((v5 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x29EDAF180](0, v5);
  }

  else
  {
    v8 = *(v5 + 32);
  }

  v9 = v8;
  if (!v7)
  {

    sub_29EC7F2B4();
    v15 = sub_29EC7EF14();
    sub_29EC7EB84();

    sub_29EC7ED64();
    swift_getAtKeyPath();
    sub_29EC6BEAC(v6, 0);
    (*(v2 + 8))(v4, v1);
    v6 = v17;
    if (v17)
    {
      goto LABEL_7;
    }

LABEL_13:

    return;
  }

  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_7:
  v10 = [v9 librarySpecificFetchOptions];
  v11 = objc_opt_self();
  v12 = v10;
  v13 = sub_29EC7E3C8(v6, v10, v11);

  if (v13)
  {

    v14 = [v13 fetchedObjects];

    if (v14)
    {
      sub_29EC6A3C4(0, &qword_2A1891540, 0x29EDBB9F8);
      sub_29EC7F264();

      v9 = v14;
    }

    goto LABEL_13;
  }

  __break(1u);
}

void *sub_29EC7AE18@<X0>(void **a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = swift_allocObject();
  memcpy((v6 + 16), a2, 0x59uLL);
  *(v6 + 112) = v5;
  v7 = v5;
  sub_29EC7E850(a2, __src);
  sub_29EC7B19C(v7, sub_29EC7E93C, v6, __src);
  return memcpy(a3, __src, 0x81uLL);
}

void sub_29EC7AEC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_29EC7ED74();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a1 + 88);
  v22 = *(a1 + 72);
  v8 = v22;
  if (v23 != 1)
  {

    sub_29EC7F2B4();
    v10 = sub_29EC7EF14();
    sub_29EC7EB84();

    sub_29EC7ED64();
    swift_getAtKeyPath();
    sub_29EC7E678(&v22, &qword_2A1891548, &qword_29EC81F00);
    (*(v5 + 8))(v7, v4);
    v8 = v20;
    v9 = v21;
    if (!v20)
    {
      return;
    }

    goto LABEL_5;
  }

  v9 = *(&v22 + 1);
  sub_29EC6D1AC(v22, *(&v22 + 1));
  if (v8)
  {
LABEL_5:
    sub_29EC6A3C4(0, &qword_2A1891550, 0x29EDC61F8);
    v11 = sub_29EC7F2C4();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    swift_unknownObjectRetain();
    v18 = sub_29EC7B0F4(0, a2, 0, v11, v13, v15, v17);
    v19 = *(a1 + 16);
    v20 = v18;
    v21 = v19;

    v8(&v20);
    sub_29EC74CCC(v8, v9);
  }
}

id sub_29EC7B0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9[0] = a4;
  v9[1] = a5;
  v9[2] = a6;
  v9[3] = a7;
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSectionObject:a1 itemObject:a2 subitemObject:a3 indexPath:v9];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v7;
}

void sub_29EC7B19C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  v10 = swift_getKeyPath();
  v11 = a1;
  v12 = MEMORY[0x29EDAF320]([v11 aspectRatio]);
  v14 = v13;
  if (v12 >= 80.0)
  {
    v15 = v12;
  }

  else
  {
    v15 = 80.0;
  }

  v16 = [objc_allocWithZone(MEMORY[0x29EDC6208]) init];
  [v16 setNetworkAccessAllowed_];
  [v16 setAllowSecondaryDegradedImage_];
  [v16 setDeliveryMode_];
  v17 = [v11 isLivePhoto];

  *a4 = KeyPath;
  *(a4 + 8) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 16) = v9;
  *(a4 + 40) = 0;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 48) = v10;
  *(a4 + 72) = 0;
  *(a4 + 80) = v11;
  *(a4 + 88) = a2;
  *(a4 + 96) = a3;
  *(a4 + 104) = v15;
  *(a4 + 112) = v14;
  *(a4 + 120) = v16;
  *(a4 + 128) = v17;
}

uint64_t sub_29EC7B31C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_29EC7F1B4();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18913C8, &qword_29EC81D40);
  return sub_29EC7B368(v1, a1 + *(v4 + 44));
}

uint64_t sub_29EC7B368@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v73 = a2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18913D0, &qword_29EC81D48);
  v3 = MEMORY[0x2A1C7C4A8](v72);
  v74 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v68 = (&v60 - v5);
  v62 = sub_29EC7ED74();
  v61 = *(v62 - 8);
  MEMORY[0x2A1C7C4A8](v62);
  v60 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29EC7EB64();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29EC7EB74();
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18913D8, &qword_29EC81D50);
  MEMORY[0x2A1C7C4A8](v65);
  v64 = &v60 - v12;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18913E0, &qword_29EC81D58);
  v70 = *(v71 - 8);
  v13 = MEMORY[0x2A1C7C4A8](v71);
  v69 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v75 = &v60 - v15;
  v16 = sub_29EC7EB44();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v22 = &v60 - v21;
  v23 = a1[10];
  sub_29EC7EB34();
  v67 = v17;
  v24 = *(v17 + 16);
  v66 = v22;
  v25 = v16;
  v24(v20, v22, v16);
  v26 = a1[15];
  (*(v8 + 104))(v10, *MEMORY[0x29EDC6188], v7);
  v27 = v26;
  sub_29EC7EB54();
  v78 = *(a1 + 8);
  v77 = *a1;
  if (v78 != 1)
  {

    sub_29EC7F2B4();
    v28 = sub_29EC7EF14();
    sub_29EC7EB84();

    v29 = v60;
    sub_29EC7ED64();
    swift_getAtKeyPath();
    sub_29EC7E678(&v77, &qword_2A18913E8, &qword_29EC81D60);
    (*(v61 + 8))(v29, v62);
  }

  v30 = swift_allocObject();
  memcpy((v30 + 16), a1, 0x81uLL);
  sub_29EC7DC64(a1, v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18913F0, &qword_29EC81D68);
  sub_29EC7E6D8(&qword_2A18913F8, MEMORY[0x29EDC6180], MEMORY[0x29EDC6178]);
  sub_29EC7DC9C();
  v31 = v64;
  v63 = v25;
  sub_29EC7EB24();
  v32 = (v31 + *(v65 + 36));
  v33 = *(sub_29EC7ECC4() + 20);
  v34 = *MEMORY[0x29EDBC6F8];
  v35 = sub_29EC7EE14();
  (*(*(v35 - 8) + 104))(&v32[v33], v34, v35);
  __asm { FMOV            V0.2D, #20.0 }

  *v32 = _Q0;
  *&v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891418, &qword_29EC81D78) + 36)] = 256;
  v41 = swift_allocObject();
  memcpy((v41 + 16), a1, 0x81uLL);
  sub_29EC7DC64(a1, v76);
  sub_29EC7DDD4();
  v42 = v75;
  sub_29EC7EFD4();

  sub_29EC7E678(v31, &qword_2A18913D8, &qword_29EC81D50);
  v43 = sub_29EC7EDA4();
  v44 = v68;
  *v68 = v43;
  *(v44 + 8) = 0;
  *(v44 + 16) = 1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891440, &qword_29EC81D88);
  sub_29EC7BE30(a1, v44 + *(v45 + 44));
  LOBYTE(v34) = sub_29EC7EF44();
  sub_29EC7EB94();
  v46 = v44 + *(v72 + 36);
  *v46 = v34;
  *(v46 + 8) = v47;
  *(v46 + 16) = v48;
  *(v46 + 24) = v49;
  *(v46 + 32) = v50;
  *(v46 + 40) = 0;
  v51 = v70;
  v52 = *(v70 + 16);
  v53 = v69;
  v54 = v71;
  v52(v69, v42, v71);
  v55 = v74;
  sub_29EC7E4BC(v44, v74, &qword_2A18913D0, &qword_29EC81D48);
  v56 = v73;
  v52(v73, v53, v54);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891448, &qword_29EC81D90);
  sub_29EC7E4BC(v55, &v56[*(v57 + 48)], &qword_2A18913D0, &qword_29EC81D48);
  sub_29EC7E678(v44, &qword_2A18913D0, &qword_29EC81D48);
  v58 = *(v51 + 8);
  v58(v75, v54);
  (*(v67 + 8))(v66, v63);
  sub_29EC7E678(v55, &qword_2A18913D0, &qword_29EC81D48);
  return (v58)(v53, v54);
}

double sub_29EC7BC68@<D0>(uint64_t a3@<X8>)
{
  v4 = sub_29EC7F0C4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 104))(v7, *MEMORY[0x29EDBCAB8], v4);
  v8 = sub_29EC7F0F4();
  (*(v5 + 8))(v7, v4);
  sub_29EC7F1C4();
  sub_29EC7EC14();
  *&v11[40] = v14;
  *&v11[24] = v13;
  *&v11[8] = v12;
  v9 = *&v11[18];
  *(a3 + 18) = *&v11[2];
  *a3 = v8;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 34) = v9;
  result = *&v11[34];
  *(a3 + 50) = *&v11[34];
  *(a3 + 64) = *&v11[48];
  return result;
}

uint64_t sub_29EC7BDE8@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() px_placeholderBackgroundColor];
  result = sub_29EC7F064();
  *a1 = result;
  return result;
}

uint64_t sub_29EC7BE30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891450, &qword_29EC81D98);
  MEMORY[0x2A1C7C4A8](v73);
  v77 = &v64 - v4;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891458, &qword_29EC81DA0);
  v5 = MEMORY[0x2A1C7C4A8](v76);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2A1C7C4A8](v5);
  v75 = &v64 - v9;
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v64 - v10;
  v12 = sub_29EC7ED74();
  v71 = *(v12 - 8);
  v72 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v70 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891460, &qword_29EC81DA8);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v64 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891468, &qword_29EC81DB0);
  v18 = MEMORY[0x2A1C7C4A8](v17);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v69 = &v64 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891470, &qword_29EC81DB8);
  v23 = MEMORY[0x2A1C7C4A8](v22 - 8);
  v74 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23);
  v26 = &v64 - v25;
  v27 = *(a1 + 128);
  v78 = a2;
  v79 = &v64 - v25;
  if (v27)
  {
    v65 = v20;
    v66 = v17;
    v67 = v11;
    v68 = v7;
    v28 = swift_allocObject();
    v29 = memcpy((v28 + 16), a1, 0x81uLL);
    MEMORY[0x2A1C7C4A8](v29);
    *(&v64 - 2) = a1;
    sub_29EC7DC64(a1, &v83);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891498, &qword_29EC81DD8);
    sub_29EC74C60(&qword_2A18914A0, &qword_2A1891498, &qword_29EC81DD8, MEMORY[0x29EDBCB60]);
    sub_29EC7F144();
    sub_29EC7F1C4();
    sub_29EC7EC14();
    v30 = &v16[*(v14 + 36)];
    v31 = v87;
    *v30 = v86;
    *(v30 + 1) = v31;
    *(v30 + 2) = v88;
    *v90 = *(a1 + 16);
    *&v90[9] = *(a1 + 25);
    v32 = *v90;
    if (v90[24] == 1)
    {
      v33 = *&v90[8];
      v34 = *&v90[16];
      sub_29EC78B1C(*v90, *&v90[8], *&v90[16]);
    }

    else
    {

      sub_29EC7F2B4();
      v36 = sub_29EC7EF14();
      sub_29EC7EB84();

      v37 = v70;
      sub_29EC7ED64();
      swift_getAtKeyPath();
      sub_29EC7E678(v90, &qword_2A1891488, &qword_29EC81DC8);
      (*(v71 + 8))(v37, v72);
      v33 = *(&v83 + 1);
      v32 = v83;
      v34 = v84;
    }

    v11 = v67;
    if (v33)
    {
      sub_29EC7DC0C(v32, v33, v34);
    }

    v38 = v33 == 0;
    KeyPath = swift_getKeyPath();
    v40 = swift_allocObject();
    *(v40 + 16) = v38;
    v41 = v16;
    v42 = v65;
    sub_29EC7DEC0(v41, v65, &qword_2A1891460, &qword_29EC81DA8);
    v43 = v66;
    v44 = (v42 + *(v66 + 36));
    *v44 = KeyPath;
    v44[1] = sub_29EC7E3B0;
    v44[2] = v40;
    v45 = v42;
    v46 = v69;
    sub_29EC7DEC0(v45, v69, &qword_2A1891468, &qword_29EC81DB0);
    v26 = v79;
    v17 = v43;
    sub_29EC7DEC0(v46, v79, &qword_2A1891468, &qword_29EC81DB0);
    v35 = 0;
    v7 = v68;
  }

  else
  {
    v35 = 1;
  }

  __swift_storeEnumTagSinglePayload(v26, v35, 1, v17);
  v47 = swift_allocObject();
  memcpy((v47 + 16), a1, 0x81uLL);
  sub_29EC7DC64(a1, &v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891478, &qword_29EC81DC0);
  sub_29EC74C60(&qword_2A1891480, &qword_2A1891478, &qword_29EC81DC0, MEMORY[0x29EDBCB60]);
  v48 = v77;
  sub_29EC7F144();
  sub_29EC7F1C4();
  sub_29EC7EC14();
  v49 = (v48 + *(v73 + 36));
  v50 = v84;
  *v49 = v83;
  v49[1] = v50;
  v49[2] = v85;
  *v89 = *(a1 + 48);
  *&v89[9] = *(a1 + 57);
  v51 = *v89;
  if (v89[24] != 1)
  {

    sub_29EC7F2B4();
    v55 = sub_29EC7EF14();
    sub_29EC7EB84();

    v56 = v70;
    sub_29EC7ED64();
    swift_getAtKeyPath();
    sub_29EC7E678(v89, &qword_2A1891488, &qword_29EC81DC8);
    (*(v71 + 8))(v56, v72);
    v51 = v80;
    v53 = v81;
    v52 = v82;
    if (v81)
    {
      goto LABEL_11;
    }

LABEL_13:
    v54 = 0.0;
    goto LABEL_14;
  }

  v53 = *&v89[8];
  v52 = *&v89[16];
  sub_29EC78B1C(*v89, *&v89[8], *&v89[16]);
  if (!v53)
  {
    goto LABEL_13;
  }

LABEL_11:
  sub_29EC7DC0C(v51, v53, v52);
  v54 = 1.0;
LABEL_14:
  v57 = v75;
  sub_29EC7DEC0(v48, v75, &qword_2A1891450, &qword_29EC81D98);
  *(v57 + *(v76 + 36)) = v54;
  sub_29EC7DEC0(v57, v11, &qword_2A1891458, &qword_29EC81DA0);
  v58 = v79;
  v59 = v74;
  sub_29EC7E4BC(v79, v74, &qword_2A1891470, &qword_29EC81DB8);
  sub_29EC7E4BC(v11, v7, &qword_2A1891458, &qword_29EC81DA0);
  v60 = v78;
  sub_29EC7E4BC(v59, v78, &qword_2A1891470, &qword_29EC81DB8);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891490, &qword_29EC81DD0);
  v62 = v60 + *(v61 + 48);
  *v62 = 0;
  *(v62 + 8) = 1;
  sub_29EC7E4BC(v7, v60 + *(v61 + 64), &qword_2A1891458, &qword_29EC81DA0);
  sub_29EC7E678(v11, &qword_2A1891458, &qword_29EC81DA0);
  sub_29EC7E678(v58, &qword_2A1891470, &qword_29EC81DB8);
  sub_29EC7E678(v7, &qword_2A1891458, &qword_29EC81DA0);
  return sub_29EC7E678(v59, &qword_2A1891470, &qword_29EC81DB8);
}

uint64_t sub_29EC7C764(uint64_t a1)
{
  v2 = sub_29EC7ED74();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v41[9] = *(a1 + 25);
  v30 = v3;
  v31 = a1;
  *v41 = *(a1 + 16);
  v7 = *&v41[8];
  v6 = *v41;
  v8 = *&v41[16];
  v9 = v41[24];
  if (v41[24] == 1)
  {
    sub_29EC78B1C(*v41, *&v41[8], *&v41[16]);
    v10 = v8;
    v11 = v7;
    v12 = v6;
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {

    sub_29EC7F2B4();
    v13 = sub_29EC7EF14();
    sub_29EC7EB84();

    sub_29EC7ED64();
    swift_getAtKeyPath();
    sub_29EC7E678(v41, &qword_2A1891488, &qword_29EC81DC8);
    (*(v3 + 8))(v5, v2);
    v12 = v38;
    v11 = v39;
    v10 = v40;
    if (!v39)
    {
      goto LABEL_10;
    }
  }

  v29 = v8;
  v14 = v2;
  v38 = v12;
  v39 = v11;
  v40 = v10;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891350, &qword_29EC814F0);
  MEMORY[0x29EDAEF70](&v33);
  v15 = v33;

  v16 = *(v31 + 80);
  result = sub_29EC7E430(v16);
  if (!v18)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v19 = sub_29EC7CC18(result, v18, v15);

  v2 = v14;
  v8 = v29;
  if (v19)
  {
    if (v9)
    {
      result = sub_29EC78B1C(v6, v7, v29);
      if (!v7)
      {
        return result;
      }
    }

    else
    {

      sub_29EC7F2B4();
      v24 = sub_29EC7EF14();
      sub_29EC7EB84();

      sub_29EC7ED64();
      swift_getAtKeyPath();
      sub_29EC7E678(v41, &qword_2A1891488, &qword_29EC81DC8);
      result = (*(v30 + 8))(v5, v2);
      v6 = v38;
      v7 = v39;
      v8 = v40;
      if (!v39)
      {
        return result;
      }
    }

    result = sub_29EC7E430(v16);
    if (v25)
    {
      v26 = result;
      v27 = v25;
      v38 = v6;
      v39 = v7;
      v40 = v8;
      MEMORY[0x29EDAEF70](&v37, v28);
      sub_29EC7DF90(v26, v27);

      v33 = v6;
      v34 = v7;
      v35 = v8;
      v36 = v37;
      goto LABEL_19;
    }

LABEL_23:
    __break(1u);
    return result;
  }

LABEL_10:
  if (v9)
  {
    result = sub_29EC78B1C(v6, v7, v8);
    if (!v7)
    {
      return result;
    }
  }

  else
  {

    sub_29EC7F2B4();
    v20 = sub_29EC7EF14();
    sub_29EC7EB84();

    sub_29EC7ED64();
    swift_getAtKeyPath();
    sub_29EC7E678(v41, &qword_2A1891488, &qword_29EC81DC8);
    result = (*(v30 + 8))(v5, v2);
    v6 = v38;
    v7 = v39;
    v8 = v40;
    if (!v39)
    {
      return result;
    }
  }

  result = sub_29EC7E430(*(v31 + 80));
  if (!v21)
  {
    goto LABEL_22;
  }

  v22 = result;
  v23 = v21;
  v38 = v6;
  v39 = v7;
  v40 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891350, &qword_29EC814F0);
  MEMORY[0x29EDAEF70](&v36);
  sub_29EC6C140(&v37, v22, v23);

  v33 = v6;
  v34 = v7;
  v35 = v8;
  v32 = v36;
LABEL_19:
  sub_29EC7F174();
}

BOOL sub_29EC7CC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_29EC7F4E4();
  sub_29EC7F224();
  v6 = sub_29EC7F4F4();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_29EC7F4A4();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t sub_29EC7CD04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_29EC7ED74();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v24 + 9) = *(a1 + 25);
  v24[0] = *(a1 + 16);
  v8 = *&v24[0];
  if (BYTE8(v24[1]) == 1)
  {
    v9 = *(&v24[0] + 1);
    v10 = *&v24[1];
    sub_29EC78B1C(*&v24[0], *(&v24[0] + 1), *&v24[1]);
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {

    sub_29EC7F2B4();
    v11 = sub_29EC7EF14();
    sub_29EC7EB84();

    sub_29EC7ED64();
    swift_getAtKeyPath();
    sub_29EC7E678(v24, &qword_2A1891488, &qword_29EC81DC8);
    (*(v5 + 8))(v7, v4);
    v8 = v21;
    v9 = v22;
    v10 = v23;
    if (!v22)
    {
      goto LABEL_8;
    }
  }

  v21 = v8;
  v22 = v9;
  v23 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891350, &qword_29EC814F0);
  MEMORY[0x29EDAEF70](&v20, v12);
  v13 = v20;

  result = sub_29EC7E430(*(a1 + 80));
  if (v15)
  {
    v16 = sub_29EC7CC18(result, v15, v13);

    if (v16)
    {
      v17 = 1;
LABEL_9:
      *a2 = sub_29EC7F1C4();
      a2[1] = v18;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18914A8, &unk_29EC81E10);
      return sub_29EC7CF48(v17, (a2 + *(v19 + 44)));
    }

LABEL_8:
    v17 = 0;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_29EC7CF48@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18914B0, &qword_29EC81E20);
  v4 = v3 - 8;
  MEMORY[0x2A1C7C4A8](v3);
  v6 = (&v26 - v5);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18914B8, &unk_29EC81E28);
  v7 = MEMORY[0x2A1C7C4A8](v26);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v12 = &v26 - v11;
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v26 - v13;
  v15 = sub_29EC7F094();
  v16 = sub_29EC7F0B4();
  v17 = (v6 + *(v4 + 44));
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891230, &qword_29EC80DF0) + 28);
  v19 = *MEMORY[0x29EDBCAE0];
  v20 = sub_29EC7F0E4();
  (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
  *v17 = swift_getKeyPath();
  *v6 = v16;
  if (a1)
  {
    v21 = sub_29EC7F0A4();
  }

  else
  {
    v21 = sub_29EC7F074();
  }

  v22 = v21;
  sub_29EC7DEC0(v6, v12, &qword_2A18914B0, &qword_29EC81E20);
  *&v12[*(v26 + 36)] = v22;
  sub_29EC7DEC0(v12, v14, &qword_2A18914B8, &unk_29EC81E28);
  sub_29EC7E4BC(v14, v9, &qword_2A18914B8, &unk_29EC81E28);
  v23 = v27;
  *v27 = v15;
  *(v23 + 4) = 256;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18914C0, &qword_29EC81E68);
  sub_29EC7E4BC(v9, v23 + *(v24 + 48), &qword_2A18914B8, &unk_29EC81E28);

  sub_29EC7E678(v14, &qword_2A18914B8, &unk_29EC81E28);
  sub_29EC7E678(v9, &qword_2A18914B8, &unk_29EC81E28);
}

unint64_t sub_29EC7D218(uint64_t a1)
{
  v2 = sub_29EC7ED74();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v20 = *(a1 + 48);
  *&v20[9] = *(a1 + 57);
  v6 = *v20;
  if (v20[24] == 1)
  {
    v7 = *&v20[8];
    v8 = *&v20[16];
    result = sub_29EC78B1C(*v20, *&v20[8], *&v20[16]);
    if (!v7)
    {
      return result;
    }
  }

  else
  {

    sub_29EC7F2B4();
    v10 = sub_29EC7EF14();
    sub_29EC7EB84();

    sub_29EC7ED64();
    swift_getAtKeyPath();
    sub_29EC7E678(v20, &qword_2A1891488, &qword_29EC81DC8);
    result = (*(v3 + 8))(v5, v2);
    v6 = v16;
    v7 = v17;
    v8 = v18;
    if (!v17)
    {
      return result;
    }
  }

  result = sub_29EC7E430(*(a1 + 80));
  if (v11)
  {
    v12 = result;
    v13 = v11;
    v16 = v6;
    v17 = v7;
    v18 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891350, &qword_29EC814F0);
    MEMORY[0x29EDAEF70](&v15);
    sub_29EC6C140(&v19, v12, v13);

    v14[1] = v6;
    v14[2] = v7;
    v14[3] = v8;
    v14[0] = v15;
    sub_29EC7F174();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29EC7D440@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_29EC7F1C4();
  a2[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18914C8, &qword_29EC81E70);
  return sub_29EC7D488(a2 + *(v4 + 44));
}

uint64_t sub_29EC7D488@<X0>(char *a1@<X8>)
{
  v39 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18914B8, &unk_29EC81E28);
  MEMORY[0x2A1C7C4A8](v1);
  v3 = (&v30 - v2);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18914D0, &qword_29EC81E78);
  v31 = *(v38 - 8);
  v4 = v31;
  v5 = MEMORY[0x2A1C7C4A8](v38);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v30 - v8;
  v37 = sub_29EC7F084();
  v36 = sub_29EC7F094();
  sub_29EC7EBD4();
  v10 = v41;
  v33 = v42;
  v11 = v43;
  v32 = v43;
  v12 = v44;
  v40 = v45;
  v13 = v46;
  v35 = sub_29EC7F1C4();
  v34 = v14;
  v15 = sub_29EC7F0B4();
  v16 = (v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18914B0, &qword_29EC81E20) + 36));
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891230, &qword_29EC80DF0) + 28);
  v18 = *MEMORY[0x29EDBCAD8];
  v19 = sub_29EC7F0E4();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = swift_getKeyPath();
  *v3 = v15;
  *(v3 + *(v1 + 36)) = sub_29EC7F094();
  sub_29EC7E508();
  v30 = v9;
  sub_29EC7F024();
  sub_29EC7E678(v3, &qword_2A18914B8, &unk_29EC81E28);
  v20 = *(v4 + 16);
  v21 = v38;
  v20(v7, v9, v38);
  __src[0] = v10 * 0.5;
  __src[1] = v10;
  LODWORD(v4) = v33;
  *&__src[2] = __PAIR64__(v11, v33);
  __src[3] = v12;
  __src[4] = v40;
  __src[5] = v13;
  v22 = v36;
  *&__src[6] = v36;
  LOWORD(__src[7]) = 256;
  *(&__src[7] + 2) = v49;
  HIWORD(__src[7]) = v50;
  v23 = v37;
  *&__src[8] = v37;
  LOWORD(__src[9]) = 256;
  HIWORD(__src[9]) = v48;
  *(&__src[9] + 2) = v47;
  v24 = v35;
  v25 = v34;
  *&__src[10] = v35;
  __src[11] = v34;
  v26 = v39;
  memcpy(v39, __src, 0x60uLL);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18914F8, &qword_29EC81E88);
  v20(&v26[*(v27 + 48)], v7, v21);
  sub_29EC7E4BC(__src, v52, &qword_2A1891500, &qword_29EC81E90);
  v28 = *(v31 + 8);
  v28(v30, v21);
  v28(v7, v21);
  v52[0] = v10 * 0.5;
  v52[1] = v10;
  v53 = v4;
  v54 = v32;
  v55 = v12;
  v56 = v40;
  v57 = v13;
  v58 = v22;
  v59 = 256;
  v60 = v49;
  v61 = v50;
  v62 = v23;
  v63 = 256;
  v64 = v47;
  v65 = v48;
  v66 = v24;
  v67 = v25;
  return sub_29EC7E678(v52, &qword_2A1891500, &qword_29EC81E90);
}