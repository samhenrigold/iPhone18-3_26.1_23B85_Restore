uint64_t sub_1C10E2FF8(void *a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    v3 = swift_checkMetadataState();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      v1 = swift_checkMetadataState();
      if (v5 <= 0x3F)
      {
        v1 = swift_checkMetadataState();
        if (v6 <= 0x3F)
        {
          sub_1C107032C();
          v1 = v7;
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

uint64_t sub_1C10E3114(uint64_t result, unsigned int a2, void *a3)
{
  v6 = a3[2];
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = a3[3];
  v10 = a3[4];
  v11 = *(v9 - 8);
  v12 = *(v11 + 84);
  if (v8 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = *(v7 + 84);
  }

  v14 = *(v10 - 8);
  v15 = *(v14 + 84);
  if (v13 <= v15)
  {
    v16 = *(v14 + 84);
  }

  else
  {
    v16 = v13;
  }

  v17 = a3[5];
  v18 = *(v17 - 8);
  v19 = *(v18 + 84);
  if (v16 <= v19)
  {
    v20 = *(v18 + 84);
  }

  else
  {
    v20 = v16;
  }

  v21 = *(v7 + 80);
  v22 = *(*(v6 - 8) + 64);
  v23 = *(v11 + 80);
  v24 = *(v14 + 80);
  v25 = *(v18 + 80);
  if (v20 <= 0xFE)
  {
    v26 = 254;
  }

  else
  {
    v26 = v20;
  }

  if (!a2)
  {
    return 0;
  }

  v27 = *(*(v9 - 8) + 64) + v21;
  v28 = v22 + v24;
  v29 = *(*(v10 - 8) + 64) + v25 + 1;
  if (v26 >= a2)
  {
LABEL_35:
    if (v20 > 0xFE)
    {
      v38 = (result + v21 + 1) & ~v21;
      if (v8 != v26)
      {
        v38 = (v38 + v22 + v23) & ~v23;
        if (v12 == v26)
        {
          v8 = v12;
          v6 = v9;
        }

        else
        {
          v38 = (v28 + ((v27 + v38) & ~v21)) & ~v24;
          if (v15 == v26)
          {
            v8 = v15;
            v6 = v10;
          }

          else
          {
            v38 = (v29 + v38) & ~v25;
            v8 = v19;
            v6 = v17;
          }
        }
      }

      return __swift_getEnumTagSinglePayload(v38, v8, v6);
    }

    else
    {
      v37 = *result;
      if (v37 >= 2)
      {
        return v37 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v30 = ((((*(*(v17 - 8) + 64) + ((v29 + ((v28 + ((v27 + ((v22 + v23 + ((v21 + 1) & ~v21)) & ~v23)) & ~v21)) & ~v24)) & ~v25) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 209;
    v31 = (a2 - v26 + 255) >> 8;
    if (v30 <= 3)
    {
      v32 = v31 + 1;
    }

    else
    {
      v32 = 2;
    }

    if (v32 >= 0x10000)
    {
      LODWORD(v33) = 4;
    }

    else
    {
      LODWORD(v33) = 2;
    }

    if (v32 < 0x100)
    {
      LODWORD(v33) = 1;
    }

    if (v32 >= 2)
    {
      v33 = v33;
    }

    else
    {
      v33 = 0;
    }

    switch(v33)
    {
      case 1:
        v34 = *(result + v30);
        if (!*(result + v30))
        {
          goto LABEL_35;
        }

        goto LABEL_31;
      case 2:
        v34 = *(result + v30);
        if (!*(result + v30))
        {
          goto LABEL_35;
        }

        goto LABEL_31;
      case 3:
        __break(1u);
        return result;
      case 4:
        v34 = *(result + v30);
        if (!v34)
        {
          goto LABEL_35;
        }

LABEL_31:
        v35 = (v34 - 1) << (8 * (((((*(*(v17 - 8) + 64) + ((v29 + ((v28 + ((v27 + ((v22 + v23 + ((v21 + 1) & ~v21)) & ~v23)) & ~v21)) & ~v24)) & ~v25) + 7) & 0xF8) + 15) & 0xF8) - 47));
        if (v30 <= 3)
        {
          v36 = *result;
        }

        else
        {
          v35 = 0;
          v36 = *result;
        }

        result = v26 + (v36 | v35) + 1;
        break;
      default:
        goto LABEL_35;
    }
  }

  return result;
}

void sub_1C10E346C(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v7 = a4[2];
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = a4[3];
  v11 = a4[4];
  v12 = *(v10 - 8);
  v13 = *(v12 + 84);
  if (v9 <= v13)
  {
    v14 = *(v12 + 84);
  }

  else
  {
    v14 = *(v8 + 84);
  }

  v15 = *(v11 - 8);
  v16 = *(v15 + 84);
  if (v14 <= v16)
  {
    v17 = *(v15 + 84);
  }

  else
  {
    v17 = v14;
  }

  v18 = a4[5];
  v19 = *(v18 - 8);
  v20 = *(v19 + 84);
  if (v17 <= v20)
  {
    v21 = *(v19 + 84);
  }

  else
  {
    v21 = v17;
  }

  if (v21 <= 0xFE)
  {
    v22 = 254;
  }

  else
  {
    v22 = v21;
  }

  v23 = *(v8 + 80);
  v24 = *(*(v7 - 8) + 64);
  v25 = *(v12 + 80);
  v26 = *(*(v10 - 8) + 64) + v23;
  v27 = *(v15 + 80);
  v28 = v24 + v27;
  v29 = *(v19 + 80);
  v30 = *(*(v11 - 8) + 64) + v29 + 1;
  v31 = ((((*(*(v18 - 8) + 64) + ((v30 + ((v24 + v27 + ((v26 + ((v24 + v25 + ((v23 + 1) & ~v23)) & ~v25)) & ~v23)) & ~v27)) & ~v29) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 209;
  if (v22 >= a3)
  {
    v35 = 0;
  }

  else
  {
    v32 = (a3 - v22 + 255) >> 8;
    if (v31 <= 3)
    {
      v33 = v32 + 1;
    }

    else
    {
      v33 = 2;
    }

    if (v33 >= 0x10000)
    {
      v34 = 4;
    }

    else
    {
      v34 = 2;
    }

    if (v33 < 0x100)
    {
      v34 = 1;
    }

    if (v33 >= 2)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }
  }

  if (v22 >= a2)
  {
    v38 = ~v23;
    v39 = ~v27;
    switch(v35)
    {
      case 1:
        a1[v31] = 0;
        if (a2)
        {
          goto LABEL_40;
        }

        break;
      case 2:
        *&a1[v31] = 0;
        if (a2)
        {
          goto LABEL_40;
        }

        break;
      case 3:
LABEL_55:
        __break(1u);
        break;
      case 4:
        *&a1[v31] = 0;
        goto LABEL_39;
      default:
LABEL_39:
        if (a2)
        {
LABEL_40:
          if (v21 > 0xFE)
          {
            v40 = &a1[v23 + 1] & v38;
            if (v9 != v22)
            {
              v40 = (v40 + v24 + v25) & ~v25;
              if (v13 == v22)
              {
                v9 = v13;
                v7 = v10;
              }

              else
              {
                v40 = (v28 + ((v26 + v40) & v38)) & v39;
                if (v16 == v22)
                {
                  v9 = v16;
                  v7 = v11;
                }

                else
                {
                  v40 = (v30 + v40) & ~v29;
                  v9 = v20;
                  v7 = v18;
                }
              }
            }

            __swift_storeEnumTagSinglePayload(v40, a2, v9, v7);
          }

          else
          {
            *a1 = a2 + 1;
          }
        }

        break;
    }
  }

  else
  {
    v36 = ~v22 + a2;
    bzero(a1, v31);
    if (v31 <= 3)
    {
      v37 = (v36 >> 8) + 1;
    }

    else
    {
      v37 = 1;
    }

    if (v31 > 3)
    {
      *a1 = v36;
    }

    else
    {
      *a1 = v36;
    }

    switch(v35)
    {
      case 1:
        a1[v31] = v37;
        break;
      case 2:
        *&a1[v31] = v37;
        break;
      case 3:
        goto LABEL_55;
      case 4:
        *&a1[v31] = v37;
        break;
      default:
        return;
    }
  }
}

double EnvironmentValues.photosLayoutMargins.getter()
{
  sub_1C10E3900();
  sub_1C12637F0();
  return v1;
}

unint64_t sub_1C10E3900()
{
  result = qword_1EDE81DA8;
  if (!qword_1EDE81DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE81DA8);
  }

  return result;
}

void (*EnvironmentValues.photosLayoutMargins.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = sub_1C10E3900();
  sub_1C12637F0();
  v4 = *(v3 + 3);
  *v3 = *(v3 + 2);
  *(v3 + 1) = v4;
  return sub_1C10E3A18;
}

void sub_1C10E3A18(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v1[2] = *v1;
  v1[3] = v2;
  sub_1C1263800();

  free(v1);
}

void View.photosLayoutMargins(_:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  swift_getKeyPath();
  sub_1C1264A30();
}

unint64_t sub_1C10E3B04()
{
  result = qword_1EBE93A50;
  if (!qword_1EBE93A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93A48, &qword_1C12B5338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93A50);
  }

  return result;
}

uint64_t sub_1C10E3B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C10E3BDC();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_1C10E3BDC()
{
  result = qword_1EDE7C068;
  if (!qword_1EDE7C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7C068);
  }

  return result;
}

uint64_t PhotosBasicAsyncImage<>.init(image:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE913C0, &qword_1C12A8750);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  *a2 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93A58, &qword_1C12B5398);
  v8 = v7[12];
  *(a2 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  v9 = a2 + v7[13];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = a2 + v7[14];
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  *(v10 + 20) = 0;
  *(v10 + 16) = 0;
  v11 = a2 + v7[15];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  v12 = v7[16];
  type metadata accessor for PhotosBasicAsyncImageState(0);
  v13 = a1;
  sub_1C12628D0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 36) = 0;
  *(a2 + 28) = 0;
  *(a2 + 44) = 1;
  sub_1C12628D0();

  return sub_1C102500C(v6, a2 + v12);
}

uint64_t PhotosConstantAsyncImageProvider.ImageConfiguration.sourceDebugIdentifier.getter()
{
  if (*v0)
  {
    v1 = [*v0 description];
    v2 = sub_1C1265EA0();
    v4 = v3;
  }

  else
  {
    v4 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x1C68EF850](v2, v4);

  return 0x3A6567616D69;
}

uint64_t static PhotosConstantAsyncImageProvider.ImageConfiguration.== infix(_:_:)(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      sub_1C0F99BAC();
      v4 = v3;
      v5 = v2;
      v6 = sub_1C12666B0();

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

  return 0;
}

void PhotosConstantAsyncImageProvider.ImageConfiguration.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*v1)
  {
    sub_1C1266EB0();
    v3 = v2;
    sub_1C12666C0();
  }

  else
  {
    sub_1C1266EB0();
  }
}

uint64_t PhotosConstantAsyncImageProvider.ImageConfiguration.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  sub_1C1266EB0();
  if (v1)
  {
    v2 = v1;
    sub_1C12666C0();
  }

  return sub_1C1266EE0();
}

uint64_t sub_1C10E400C(uint64_t a1)
{
  v2 = *v1;
  sub_1C1266E90();
  sub_1C1266EB0();
  if (v2)
  {
    v3 = v2;
    sub_1C12666C0();
  }

  return sub_1C1266EE0();
}

uint64_t PhotosConstantAsyncImageProvider.requestImage(configuration:targetPixelSize:resultHandler:)(id *a1, void (*a2)(void *))
{
  if (*a1)
  {
    v3 = *a1;
    [v3 px_pixelSize];
    v5 = v4;
    v7 = v6;
    sub_1C1266560();
    v14[0] = v3;
    v14[1] = v5;
    v14[2] = v7;
    v14[3] = v8;
    v14[4] = v9;
    v14[5] = v10;
    v14[6] = v11;
    LOBYTE(v14[7]) = 0;
    v14[8] = 0;
    memcpy(__dst, v14, sizeof(__dst));
    v15 = 0;
    v17 = 0;
    a2(__dst);
    sub_1C10E41C8(v14);
  }

  else
  {
    sub_1C10E4174();
    v12 = swift_allocError();
    LOBYTE(v14[0]) = 1;
    __dst[0] = v12;
    v17 = 1;
    a2(__dst);
  }

  return 0;
}

unint64_t sub_1C10E4174()
{
  result = qword_1EBE93A60;
  if (!qword_1EBE93A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93A60);
  }

  return result;
}

uint64_t sub_1C10E41C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90628, &unk_1C12A3AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C10E423C(uint64_t a1)
{
  result = sub_1C10E4264();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C10E4264()
{
  result = qword_1EDE79630;
  if (!qword_1EDE79630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE79630);
  }

  return result;
}

unint64_t sub_1C10E42C0()
{
  result = qword_1EDE79628;
  if (!qword_1EDE79628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE79628);
  }

  return result;
}

uint64_t sub_1C10E4314()
{
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](0);
  return sub_1C1266EE0();
}

uint64_t sub_1C10E436C@<X0>(id *a1@<X0>, void (*a2)(void *)@<X1>, void *a3@<X8>)
{
  result = PhotosConstantAsyncImageProvider.requestImage(configuration:targetPixelSize:resultHandler:)(a1, a2);
  *a3 = 0;
  return result;
}

unint64_t sub_1C10E4394(uint64_t a1)
{
  result = sub_1C10E43BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C10E43BC()
{
  result = qword_1EDE79620;
  if (!qword_1EDE79620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE79620);
  }

  return result;
}

_BYTE *sub_1C10E4428(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C10E44D4()
{
  result = qword_1EBE93A68;
  if (!qword_1EBE93A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93A68);
  }

  return result;
}

uint64_t PhotosPlatformImageConversion.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t Image.init(platformImage:conversion:)(id a1, _BYTE *a2)
{
  if (*a2 == 1 && [a1 CGImage])
  {
    [a1 scale];
    UIImageOrientation.photosImageOrientation.getter([a1 imageOrientation]);
    v3 = a1;
    sub_1C10E4748(v3);
    if (v4)
    {
      v5 = sub_1C1265370();
    }

    else
    {
      v5 = sub_1C12652E0();
    }

    v7 = v5;

    return v7;
  }

  else
  {

    return sub_1C12652D0();
  }
}

unint64_t UIImageOrientation.photosImageOrientation.getter(unint64_t a1)
{
  if (a1 < 8)
  {
    return 0x705030106040200uLL >> (8 * a1);
  }

  result = sub_1C1266B70();
  __break(1u);
  return result;
}

uint64_t sub_1C10E4748(void *a1)
{
  v2 = [a1 accessibilityLabel];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C1265EA0();

  return v3;
}

unint64_t sub_1C10E47BC()
{
  result = qword_1EBE93A70;
  if (!qword_1EBE93A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93A70);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosPlatformImageConversion(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t PhotosMockPerson.__allocating_init(name:selectionIdentifier:isPet:isFavorite:canFavorite:keyAssets:isContentPrivacyEnabled:)()
{
  OUTLINED_FUNCTION_11_16();
  v0 = swift_allocObject();
  PhotosMockPerson.init(name:selectionIdentifier:isPet:isFavorite:canFavorite:keyAssets:isContentPrivacyEnabled:)();
  return v0;
}

uint64_t PhotosMockPerson.init(name:selectionIdentifier:isPet:isFavorite:canFavorite:keyAssets:isContentPrivacyEnabled:)()
{
  OUTLINED_FUNCTION_11_16();
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 64) = 0;
  *(v1 + 88) = 1;
  sub_1C1261F60();

  *(v1 + 32) = v8;
  *(v1 + 40) = v7;
  *(v1 + 16) = v6;
  *(v1 + 24) = v5;
  *(v1 + 48) = v4;
  *(v1 + 49) = v3;
  *(v1 + 50) = v2;
  v10 = MEMORY[0x1E69E7CC0];
  if (v0)
  {
    v10 = v0;
  }

  *(v1 + 56) = v10;

  *(v1 + 64) = xmmword_1C12B56F0;
  *(v1 + 80) = 0;
  *(v1 + 88) = 1;
  *(v1 + 89) = v9;
  return v1;
}

double sub_1C10E4A30(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_5(v2 + 32);
  OUTLINED_FUNCTION_15_3();
  if (sub_1C0FDFDE0(v5, v6, v7, v8))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_1();
    MEMORY[0x1EEE9AC00](v9);
    OUTLINED_FUNCTION_5_6();
    *(v10 - 16) = a2;
    OUTLINED_FUNCTION_17_18(v11, v12, v13);
  }

  else
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  return result;
}

double sub_1C10E4AE4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_5(v2 + 16);
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (OUTLINED_FUNCTION_15_3(), (sub_1C1266D50() & 1) != 0))
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_1();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_5_6();
    *(v8 - 16) = a2;
    OUTLINED_FUNCTION_17_18(v9, v10, v11);
  }

  return result;
}

void sub_1C10E4BA8(char a1)
{
  v2 = a1 & 1;
  OUTLINED_FUNCTION_17_13(v1 + 48);
  if (*(v1 + 48) == v2)
  {
    *(v1 + 48) = v2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_17_18(v4, v5, v6);
  }
}

void sub_1C10E4C38(char a1)
{
  v2 = a1 & 1;
  OUTLINED_FUNCTION_17_13(v1 + 49);
  if (*(v1 + 49) == v2)
  {
    *(v1 + 49) = v2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_17_18(v4, v5, v6);
  }
}

void sub_1C10E4CC8(char a1)
{
  v2 = a1 & 1;
  OUTLINED_FUNCTION_17_13(v1 + 50);
  if (*(v1 + 50) == v2)
  {
    *(v1 + 50) = v2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_17_18(v4, v5, v6);
  }
}

double sub_1C10E4D58(unint64_t a1)
{
  OUTLINED_FUNCTION_9_5(v1 + 56);

  v4 = sub_1C0FEAAF0(v3, a1);

  if (v4)
  {
    *(v1 + 56) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v9[2] = v1;
    v9[3] = a1;
    OUTLINED_FUNCTION_17_18(v7, v8, v9);
  }

  return result;
}

double sub_1C10E4E2C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_5(v2 + 64);
  OUTLINED_FUNCTION_15_3();
  if (sub_1C0FDFDE0(v5, v6, v7, v8))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_1();
    MEMORY[0x1EEE9AC00](v9);
    OUTLINED_FUNCTION_5_6();
    *(v10 - 16) = a2;
    OUTLINED_FUNCTION_17_18(v11, v12, v13);
  }

  else
  {
    *(v2 + 64) = a1;
    *(v2 + 72) = a2;
  }

  return result;
}

double sub_1C10E4EE0(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_9_5(v2 + 80);
  if ((*(v2 + 88) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 80) != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 80) = a1;
    *(v2 + 88) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  OUTLINED_FUNCTION_5_6();
  *(v7 - 16) = a2 & 1;
  OUTLINED_FUNCTION_17_18(v8, v9, v10);

  return result;
}

void sub_1C10E4FA8(char a1)
{
  v2 = a1 & 1;
  OUTLINED_FUNCTION_17_13(v1 + 89);
  if (*(v1 + 89) == v2)
  {
    *(v1 + 89) = v2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_17_18(v4, v5, v6);
  }
}

uint64_t sub_1C10E5038@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C10E50A4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double sub_1C10E5064(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1C10E4AE4(v1, v2);
}

uint64_t sub_1C10E50A4()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_42();
  v3 = sub_1C10E6608(v1, v2);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 16, v5);
  v6 = *(v0 + 16);

  return v6;
}

void sub_1C10E5128()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_42();
  v5 = sub_1C10E6608(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C1073F50();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C10E51E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C10E5224();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C10E5224()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_42();
  v3 = sub_1C10E6608(v1, v2);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 32, v5);
  v6 = *(v0 + 32);

  return v6;
}

void sub_1C10E52A8()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_42();
  v5 = sub_1C10E6608(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDF120();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C10E5360@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C10E53B8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C10E53B8()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_42();
  v3 = sub_1C10E6608(v1, v2);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 48, v5);
  return *(v0 + 48);
}

uint64_t sub_1C10E542C(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 48) = a2;
  return result;
}

void sub_1C10E5480()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_42();
  v5 = sub_1C10E6608(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDF350();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C10E557C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C10E55D4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C10E55D4()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_42();
  v3 = sub_1C10E6608(v1, v2);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 49, v5);
  return *(v0 + 49);
}

uint64_t sub_1C10E5648(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 49) = a2;
  return result;
}

void sub_1C10E569C()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_42();
  v5 = sub_1C10E6608(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C10E5538();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C10E5798@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C10E57F0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C10E57F0()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_42();
  v3 = sub_1C10E6608(v1, v2);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 50, v5);
  return *(v0 + 50);
}

uint64_t sub_1C10E5864(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 50) = a2;
  return result;
}

void sub_1C10E58B8()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_42();
  v5 = sub_1C10E6608(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C10E5754();
  OUTLINED_FUNCTION_18_4();
}

double sub_1C10E5A0C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_42();
  v3 = sub_1C10E6608(v1, v2);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 56, v5);

  return result;
}

void sub_1C10E5A84(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 56) = a2;
}

void sub_1C10E5AEC()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_42();
  v5 = sub_1C10E6608(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C10E5970();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C10E5BA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C10E5C34();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C10E5BEC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1C10E5C34()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_42();
  v3 = sub_1C10E6608(v1, v2);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 64, v5);
  v6 = *(v0 + 64);

  return v6;
}

void sub_1C10E5CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
}

void sub_1C10E5D24()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_42();
  v5 = sub_1C10E6608(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FE88E4();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C10E5DDC@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C10E5E44();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C10E5E44()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_42();
  v3 = sub_1C10E6608(v1, v2);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 80, v5);
  return *(v0 + 80);
}

void sub_1C10E5EBC()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_42();
  v5 = sub_1C10E6608(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C10746C8();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C10E5FBC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C10E6014();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C10E6014()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_42();
  v3 = sub_1C10E6608(v1, v2);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 89, v5);
  return *(v0 + 89);
}

uint64_t sub_1C10E6088(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 89) = a2;
  return result;
}

void sub_1C10E60DC()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_42();
  v5 = sub_1C10E6608(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C10E5F78();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C10E6194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_42();
  sub_1C10E6608(v3, v4);
  return sub_1C1261F20();
}

uint64_t type metadata accessor for PhotosMockPerson(uint64_t a1)
{
  result = qword_1EBE93AA0;
  if (!qword_1EBE93AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *PhotosMockPerson.deinit()
{

  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore16PhotosMockPerson___observationRegistrar;
  v2 = sub_1C1261F70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PhotosMockPerson.__deallocating_deinit()
{
  PhotosMockPerson.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C10E63F8(uint64_t a1)
{
  result = sub_1C10E6608(&qword_1EBE93A88, &protocol conformance descriptor for PhotosMockPerson);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C10E656C(uint64_t a1)
{
  result = sub_1C10E6608(&qword_1EBE93A90, &protocol conformance descriptor for PhotosMockPerson);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C10E6608(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PhotosMockPerson(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C10E667C(uint64_t a1)
{
  result = sub_1C1261F70();
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

uint64_t View.photosSectionPicker(isEnabled:selectedItem:availableItems:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[2] = a3;
  v6[3] = a2;
  return View.photosSectionPicker(isEnabled:contextBuilder:)(a1, sub_1C10E6D58, v6, a4, a5);
}

double sub_1C10E6D0C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1C10E6FA8(a2, (a3 + 1));
  *a3 = a1;

  return result;
}

uint64_t View.photosSectionPicker(isEnabled:contextBuilder:)(void *a1, void *(*a2)(_OWORD *__return_ptr), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    a2(v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  sub_1C10E6E10();
  sub_1C12649C0();
  return sub_1C10E6E64(v6);
}

unint64_t sub_1C10E6E10()
{
  result = qword_1EBE93AB0;
  if (!qword_1EBE93AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93AB0);
  }

  return result;
}

uint64_t sub_1C10E6E64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93AB8, &qword_1C12B5A70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PhotosSectionPickerContext.Item.localizedString.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

__n128 PhotosSectionPickerContext.Item.init(id:localizedString:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = *a1;
  v5 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v5;
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t static PhotosSectionPickerContext.Item.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x1C68F0200]() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    return 1;
  }

  return sub_1C1266D50();
}

uint64_t sub_1C10E6FA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93AC0, &qword_1C12B5A78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static PhotosSectionPickerContext.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93AC0, &qword_1C12B5A78);
  MEMORY[0x1C68EEF20](v9);
  MEMORY[0x1C68EEF20](v8, v4);
  if (MEMORY[0x1C68F0200](v9, v8) & 1) != 0 && (v9[5] == v8[5] ? (v5 = v9[6] == v8[6]) : (v5 = 0), v5 || (sub_1C1266D50()))
  {
    sub_1C0FF4D1C(v8);
    sub_1C0FF4D1C(v9);
    v6 = sub_1C0FEA9BC(*a1, *a2);
  }

  else
  {
    sub_1C0FF4D1C(v8);
    sub_1C0FF4D1C(v9);
    v6 = 0;
  }

  return v6 & 1;
}

void *static PhotosSectionPickerPreferenceKey.reduce(value:nextValue:)(void *__src, void (*a2)(void *__return_ptr))
{
  if (*__src)
  {
    memcpy(v4, __src, sizeof(v4));
  }

  else
  {
    a2(v4);
  }

  return memcpy(__src, v4, 0x50uLL);
}

uint64_t sub_1C10E715C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0FDB6D4(&qword_1EBE93AD8, &qword_1EBE93AB8, &qword_1C12B5A70, MEMORY[0x1E69E7C90]);

  return MEMORY[0x1EEDDE438](a1, a2, v4);
}

_BYTE *storeEnumTagSinglePayload for PhotosSectionPickerPreferenceKey(_BYTE *result, int a2, int a3)
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

uint64_t PhotosMemoryCellTextOverlayView.init(collection:titleLookProducer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_1();
  (*(v8 + 16))(a4, a1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  OUTLINED_FUNCTION_23_7();
  type metadata accessor for PhotosMemoryCellTextOverlayView(v11, v12, v13, v14);
  type metadata accessor for PhotosMemoryCellTextOverlayModel(0);
  sub_1C12628D0();
  v15 = OUTLINED_FUNCTION_5_5();

  return v16(v15);
}

uint64_t View.photosMemoryCellTextOverlay<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1C1265990();
  type metadata accessor for PhotosMemoryCellTextOverlay(0, a4, a6, v8);
  OUTLINED_FUNCTION_18_19();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_33_3();
  return sub_1C1264F60();
}

uint64_t sub_1C10E7494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v24[1] = a5;
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PhotosMemoryCellTextOverlay(0, v12, v13, v12);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = v24 - v20;
  (*(v9 + 16))(v11, a1, a3, v19);

  sub_1C10E76A8(v11, a2, a3, a4, v17);
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  v22 = *(v15 + 8);
  v22(v17, v14);
  sub_1C0FDBA4C();
  return (v22)(v21, v14);
}

uint64_t sub_1C10E76A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  *(a5 + *(type metadata accessor for PhotosMemoryCellTextOverlay(0, a3, a4, v9) + 36)) = a2;
  return sub_1C10F0528();
}

uint64_t sub_1C10E7734()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CE8, &qword_1C12B63C8);
  sub_1C12628E0();
  return v1;
}

uint64_t sub_1C10E7780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  type metadata accessor for PhotosMemoryCellTextOverlayModel(0);
  v7 = swift_allocObject();
  sub_1C0FCF1B4(a1, a2);
  result = sub_1C10E87A0();
  *a3 = v7;
  return result;
}

uint64_t sub_1C10E7884(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  *(v4 + 56) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96550, &qword_1C12AC4C0);
  *(v4 + 80) = swift_task_alloc();
  v6 = sub_1C1264700();
  *(v4 + 88) = v6;
  *(v4 + 96) = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *a2;
  v9 = a2[1];
  *(v4 + 104) = v7;
  *(v4 + 112) = v8;
  *(v4 + 120) = v9;
  *(v4 + 128) = *(a2 + 1);
  *(v4 + 144) = a2[4];
  sub_1C1266200();
  *(v4 + 152) = sub_1C12661F0();
  *(v4 + 160) = sub_1C12661E0();
  *(v4 + 168) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1C10E79D0);
}

uint64_t sub_1C10E79D0()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 144);
    v3 = *(v0 + 120);
    *(v0 + 16) = *(v0 + 112);
    *(v0 + 24) = v3;
    *(v0 + 32) = *(v0 + 128);
    *(v0 + 48) = v2;

    v28 = (v1 + *v1);
    swift_task_alloc();
    OUTLINED_FUNCTION_32_6();
    *(v0 + 176) = v4;
    *v4 = v5;
    v4[1] = sub_1C10E7C6C;
    v6 = *(v0 + 56);

    return v28(v6, v0 + 16);
  }

  else
  {
    v9 = *(v0 + 96);
    v8 = *(v0 + 104);
    v11 = *(v0 + 80);
    v10 = *(v0 + 88);
    v12 = *(v0 + 56);

    (*(v9 + 104))(v8, *MEMORY[0x1E6980F00], v10);
    v13 = *MEMORY[0x1E6980E28];
    v14 = sub_1C1264590();
    OUTLINED_FUNCTION_3();
    (*(v15 + 104))(v11, v13, v14);
    OUTLINED_FUNCTION_29_2();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v14);
    sub_1C12645E0();
    v19 = sub_1C1264640();
    sub_1C0FD1A5C(v11, &qword_1EBE96550, &qword_1C12AC4C0);
    v20 = OUTLINED_FUNCTION_5_5();
    v21(v20);
    v22 = type metadata accessor for PhotosMemoryTitleLook(0);
    sub_1C1264860();
    OUTLINED_FUNCTION_34_5();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
    *v12 = v19;
    *(v12 + *(v22 + 24)) = 768;

    OUTLINED_FUNCTION_14();

    return v27();
  }
}

uint64_t sub_1C10E7C6C()
{
  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_42_1();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8_26();
  *v5 = v4;
  *(v3 + 184) = v0;

  if (v0)
  {
    v6 = sub_1C10E7DEC;
  }

  else
  {
    v6 = sub_1C10E7D70;
  }

  return MEMORY[0x1EEE6DFA0](v6);
}

uint64_t sub_1C10E7D70()
{
  OUTLINED_FUNCTION_29_6();

  v0 = OUTLINED_FUNCTION_18();
  sub_1C0FCF004(v0, v1);

  OUTLINED_FUNCTION_14();

  return v2();
}

uint64_t sub_1C10E7DEC()
{
  sub_1C0FCF004(*(v0 + 64), *(v0 + 72));

  OUTLINED_FUNCTION_14();

  return v1();
}

uint64_t PhotosMemoryTitleLook.init(font:textCase:layout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 *a3@<X2>, void *a4@<X8>)
{
  v6 = *a3;
  *a4 = a1;
  v7 = type metadata accessor for PhotosMemoryTitleLook(0);
  result = sub_1C0FE4040(a2, a4 + *(v7 + 20), &qword_1EBE93AE0, &unk_1C12B5C60);
  *(a4 + *(v7 + 24)) = v6;
  return result;
}

void PhotosMemoryCellTextOverlayView.body.getter()
{
  OUTLINED_FUNCTION_23();
  v49 = v0;
  v57 = v1;
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v55 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v52 = v7;
  v53 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  v9 = *(v7 + 16);
  v47 = v9;
  v11 = type metadata accessor for PhotosMemoryCellTextOverlay(255, v9, v8, v10);
  v12 = OUTLINED_FUNCTION_4(255, MEMORY[0x1E6981840], v11);
  OUTLINED_FUNCTION_43_4(v12);
  swift_getWitnessTable();
  v13 = sub_1C12655A0();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - v17;
  v19 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v54 = v20;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_34();
  v48 = v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93AE8, &qword_1C12B77B0);
  v23 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v56 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_30();
  v50 = v26 - v27;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v28);
  v51 = &v46 - v29;
  v58 = v9;
  v59 = v8;
  v30 = v49;
  v60 = v49;
  v31 = OUTLINED_FUNCTION_33_3();
  sub_1C10A7F5C(v31);
  sub_1C1265590();
  OUTLINED_FUNCTION_1_1();
  WitnessTable = swift_getWitnessTable();
  sub_1C12659A0();
  v32 = v48;
  sub_1C1264EA0();
  (*(v15 + 8))(v18, v13);
  v33 = v53;
  v34 = v30;
  v35 = v52;
  (*(v3 + 16))(v53, v34, v52);
  v36 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = v47;
  *(v37 + 24) = v8;
  (*(v3 + 32))(v37 + v36, v33, v35);
  type metadata accessor for CGSize(0);
  v63 = WitnessTable;
  v64 = MEMORY[0x1E697EBF8];
  v38 = swift_getWitnessTable();
  sub_1C10ECE78(&qword_1EDE7B618, type metadata accessor for CGSize, MEMORY[0x1E695EF98]);
  v39 = v50;
  sub_1C1264C40();

  (*(v54 + 8))(v32, v19);
  OUTLINED_FUNCTION_20_4();
  v42 = sub_1C0FDB6D4(v40, &qword_1EBE93AE8, &qword_1C12B77B0, v41);
  v61 = v38;
  v62 = v42;
  OUTLINED_FUNCTION_4_4();
  swift_getWitnessTable();
  v43 = v51;
  sub_1C0FDBA4C();
  v44 = *(v56 + 8);
  v44(v39, v23);
  sub_1C0FDBA4C();
  v44(v43, v23);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C10E8428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PhotosMemoryCellTextOverlay(0, v9, v10, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v25 - v18;
  (*(v6 + 16))(v8, a1, a2, v17);
  type metadata accessor for PhotosMemoryCellTextOverlayView(0, a2, a3, v20);
  v21 = sub_1C10E7734();
  sub_1C10E76A8(v8, v21, a2, a3, v15);
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDBA4C();
  v23 = *(v13 + 8);
  v23(v15, v12);
  v27 = 0;
  v28 = 1;
  v29[0] = &v27;
  (*(v13 + 16))(v15, v19, v12);
  v29[1] = v15;
  v26[0] = MEMORY[0x1E6981840];
  v26[1] = v12;
  v25[0] = MEMORY[0x1E6981838];
  v25[1] = WitnessTable;
  sub_1C119EE80(v29, 2, v26);
  v23(v19, v12);
  return (v23)(v15, v12);
}

double sub_1C10E86B0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for PhotosMemoryCellTextOverlayView(0, a3, a4, a4);
  sub_1C10E7734();
  sub_1C10E8878(v4, v5, 0);

  return result;
}

double sub_1C10E8718(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = type metadata accessor for PhotosMemoryCellTextOverlayView(0, v6, v7, a4);
  OUTLINED_FUNCTION_15(v8);
  OUTLINED_FUNCTION_46_2();

  return sub_1C10E86B0(a1, v4 + v9, v6, v7);
}

uint64_t sub_1C10E87A0()
{
  OUTLINED_FUNCTION_18_0();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0;
  *(v1 + 96) = 1;
  *(v1 + 104) = 0;
  type metadata accessor for PhotosMemoryCellTextOverlayModel.CombinedTitlesAttributes(0);
  OUTLINED_FUNCTION_34_5();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  type metadata accessor for TextOverlayConfiguration(0);
  OUTLINED_FUNCTION_34_5();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  sub_1C1261F60();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return v1;
}

void sub_1C10E8844(uint64_t result, uint64_t a2, char a3)
{
  if (*(v3 + 32))
  {
    if (a3)
    {
      return;
    }

LABEL_9:
    sub_1C10E8A38();
    return;
  }

  if (a3)
  {
    goto LABEL_9;
  }

  if (*(v3 + 16) != *&result || *(v3 + 24) != *&a2)
  {
    goto LABEL_9;
  }
}

void sub_1C10E8878(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3 & 1;
  sub_1C10E8844(v4, v5, v6);
}

uint64_t sub_1C10E889C(uint64_t result, uint64_t a2)
{
  v4 = *(v2 + 64);
  if (!v4)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!a2 || ((v5 = result, result = *(v2 + 56), result == v5) ? (v6 = v4 == a2) : (v6 = 0), !v6 && (result = sub_1C1266D50(), (result & 1) == 0)))
  {
LABEL_10:
    sub_1C10E8A38();

    return sub_1C10EBAD8();
  }

  return result;
}

double sub_1C10E8900(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 56);
  v4 = *(v2 + 64);
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  sub_1C10E889C(v3, v4);

  return result;
}

uint64_t sub_1C10E8944(uint64_t result, uint64_t a2)
{
  v4 = *(v2 + 80);
  if (!v4)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!a2 || ((v5 = result, result = *(v2 + 72), result == v5) ? (v6 = v4 == a2) : (v6 = 0), !v6 && (result = sub_1C1266D50(), (result & 1) == 0)))
  {
LABEL_10:
    sub_1C10E8A38();

    return sub_1C10EBAD8();
  }

  return result;
}

double sub_1C10E89A8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 72);
  v4 = *(v2 + 80);
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  sub_1C10E8944(v3, v4);

  return result;
}

void sub_1C10E89EC(uint64_t result, char a2)
{
  if (*(v2 + 96))
  {
    if ((a2 & 1) == 0)
    {
LABEL_7:
      sub_1C10E8A38();
    }
  }

  else if ((a2 & 1) != 0 || *(v2 + 88) != *&result)
  {
    goto LABEL_7;
  }
}

void sub_1C10E8A18(uint64_t a1, char a2)
{
  v3 = *(v2 + 88);
  v4 = *(v2 + 96);
  *(v2 + 88) = a1;
  *(v2 + 96) = a2 & 1;
  sub_1C10E89EC(v3, v4);
}

void sub_1C10E8A38()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CD0, &qword_1C12B6380);
  OUTLINED_FUNCTION_15(v2);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v3);
  v4 = *(v0 + 8);
  if (v4 && (v0[4] & 1) == 0 && (v0[12] & 1) == 0)
  {
    v5 = *(v0 + 6);
    v22 = *(v0 + 7);
    v6 = v0[11];
    v8 = v0[2];
    v7 = *(v0 + 3);
    if (v8 / 350.0 <= 1.0)
    {
      v9 = v8 / 350.0;
    }

    else
    {
      v9 = 1.0;
    }

    v11 = *(v0 + 9);
    v10 = *(v0 + 10);
    v21 = *(v0 + 5);
    sub_1C1266230();
    OUTLINED_FUNCTION_34_5();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    v16 = swift_allocObject();
    swift_weakInit();
    sub_1C1266200();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v17 = sub_1C12661F0();
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E85E0];
    *(v18 + 16) = v17;
    *(v18 + 24) = v19;
    *(v18 + 32) = v21;
    *(v18 + 40) = v5;
    *(v18 + 48) = v22;
    *(v18 + 56) = v4;
    *(v18 + 64) = v11;
    *(v18 + 72) = v10;
    *(v18 + 80) = round(v6 * v9);
    *(v18 + 88) = v22;
    *(v18 + 96) = v4;
    *(v18 + 104) = v11;
    *(v18 + 112) = v10;
    *(v18 + 120) = v8;
    *(v18 + 128) = v7;
    *(v18 + 136) = v6;
    *(v18 + 144) = v9;
    *(v18 + 152) = v16;
    *(v18 + 160) = v1;

    sub_1C12180A0();
    sub_1C10EB58C(v20);
  }
}

uint64_t sub_1C10E8C54(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v12 + 184) = v18;
  *(v12 + 192) = v19;
  *(v12 + 168) = a3;
  *(v12 + 176) = a4;
  *(v12 + 152) = a1;
  *(v12 + 160) = a2;
  *(v12 + 136) = v16;
  *(v12 + 144) = v17;
  *(v12 + 120) = a11;
  *(v12 + 128) = a12;
  *(v12 + 104) = a9;
  *(v12 + 112) = a10;
  *(v12 + 96) = a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93B00, &qword_1C12B5C80);
  *(v12 + 200) = swift_task_alloc();
  *(v12 + 208) = type metadata accessor for PhotosMemoryCellTextOverlayModel.CombinedTitlesAttributes(0);
  *(v12 + 216) = swift_task_alloc();
  *(v12 + 224) = swift_task_alloc();
  *(v12 + 232) = type metadata accessor for PhotosMemoryTitleLook(0);
  *(v12 + 240) = swift_task_alloc();
  *(v12 + 248) = swift_task_alloc();
  *(v12 + 256) = swift_task_alloc();
  sub_1C1266200();
  *(v12 + 264) = sub_1C12661F0();
  *(v12 + 272) = sub_1C12661E0();
  *(v12 + 280) = v13;

  return MEMORY[0x1EEE6DFA0](sub_1C10E8DCC);
}

uint64_t sub_1C10E8DCC()
{
  if (sub_1C1266250())
  {

    OUTLINED_FUNCTION_22_10();

    OUTLINED_FUNCTION_14();

    return v1();
  }

  else
  {
    v3 = *(v0 + 112);
    v4 = *(v0 + 96);
    v5 = *(v3 + 32);
    v6 = *(v3 + 16);
    *(v0 + 16) = *v3;
    *(v0 + 32) = v6;
    *(v0 + 48) = v5;
    v10 = (v4 + *v4);
    swift_task_alloc();
    OUTLINED_FUNCTION_32_6();
    *(v0 + 288) = v7;
    *v7 = v8;
    v7[1] = sub_1C10E8F54;
    v9 = *(v0 + 256);

    return v10(v9, v0 + 16);
  }
}

uint64_t sub_1C10E8F54()
{
  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_42_1();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8_26();
  *v5 = v4;
  *(v3 + 37) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C10E9808);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_32_6();
    *(v3 + 38) = v6;
    *v6 = v7;
    v6[1] = sub_1C10E90C4;
    v8 = *(v3 + 32);
    v9 = *(v3 + 28);
    v10 = v3[21];
    v11 = v3[22];
    v12 = v3[19];
    v13 = v3[20];
    v14 = *(v3 + 17);
    v15 = *(v3 + 18);
    v16 = *(v3 + 15);
    v17 = *(v3 + 16);

    return sub_1C10E99B0(v9, v8, v16, v17, v14, v15, v12, v13, v10, v11);
  }
}

uint64_t sub_1C10E90C4()
{
  OUTLINED_FUNCTION_29_6();
  v1 = *v0;
  OUTLINED_FUNCTION_8_26();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C10E91D8);
}

uint64_t sub_1C10E91D8()
{
  v59 = v0;
  if (sub_1C10EA628(*(v0 + 224), *(v0 + 256), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152)))
  {

    OUTLINED_FUNCTION_44(*(v0 + 184) + 16, v0 + 56);
    Strong = swift_weakLoadStrong();
    v4 = *(v0 + 256);
    v5 = *(v0 + 224);
    if (Strong)
    {
      OUTLINED_FUNCTION_13_18();
      OUTLINED_FUNCTION_29_2();
      __swift_storeEnumTagSinglePayload(v6, v7, v8, v1);
      sub_1C10EB954(v2);
    }

    sub_1C10F0DB0(v5, type metadata accessor for PhotosMemoryCellTextOverlayModel.CombinedTitlesAttributes);
    OUTLINED_FUNCTION_0_43();
    sub_1C10F0DB0(v4, v9);
    OUTLINED_FUNCTION_22_10();

    OUTLINED_FUNCTION_14();

    return v10();
  }

  else
  {
    if (qword_1EDE776F8 != -1)
    {
      OUTLINED_FUNCTION_1_33(&qword_1EDE776F8);
    }

    v13 = *(v0 + 248);
    v12 = *(v0 + 256);
    v14 = sub_1C1262720();
    __swift_project_value_buffer(v14, qword_1EDE77700);
    OUTLINED_FUNCTION_2_36();
    sub_1C10F2AE0(v12, v13, v15);

    v16 = sub_1C12626F0();
    v17 = sub_1C1266400();

    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 248);
    if (v18)
    {
      v56 = *(v0 + 136);
      v57 = *(v0 + 144);
      v20 = *(v0 + 120);
      v55 = *(v0 + 128);
      v21 = OUTLINED_FUNCTION_63();
      v58 = swift_slowAlloc();
      *v21 = 136315650;
      OUTLINED_FUNCTION_2_36();
      v22 = OUTLINED_FUNCTION_33_3();
      sub_1C10F2AE0(v22, v23, v24);
      v25 = sub_1C1265ED0();
      v27 = v26;
      OUTLINED_FUNCTION_0_43();
      sub_1C10F0DB0(v19, v28);
      v29 = sub_1C0FA0E80(v25, v27, &v58);

      *(v21 + 4) = v29;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_1C0FA0E80(v20, v55, &v58);
      *(v21 + 22) = 2080;
      *(v0 + 80) = v56;
      *(v0 + 88) = v57;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91A60, &qword_1C12AB090);
      v30 = sub_1C1265ED0();
      v32 = sub_1C0FA0E80(v30, v31, &v58);

      *(v21 + 24) = v32;
      _os_log_impl(&dword_1C0F96000, v16, v17, "title attributes for %s are not valid for %s %s, falling back to default layout", v21, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_28_7();
      OUTLINED_FUNCTION_4_8();
    }

    else
    {

      OUTLINED_FUNCTION_0_43();
      sub_1C10F0DB0(v19, v33);
    }

    v34 = *(v0 + 256);
    v36 = *(v0 + 232);
    v35 = *(v0 + 240);
    OUTLINED_FUNCTION_2_36();
    v37 = OUTLINED_FUNCTION_5_5();
    sub_1C10F2AE0(v37, v38, v39);
    v40 = *(v36 + 24);
    v41 = *(v34 + v40 + 1);
    v42 = (v35 + v40);
    *v42 = 0;
    v42[1] = v41;
    swift_task_alloc();
    OUTLINED_FUNCTION_32_6();
    *(v0 + 312) = v43;
    *v43 = v44;
    v43[1] = sub_1C10E95BC;
    v45 = *(v0 + 240);
    v46 = *(v0 + 216);
    v47 = *(v0 + 168);
    v48 = *(v0 + 176);
    v49 = *(v0 + 152);
    v50 = *(v0 + 160);
    v51 = *(v0 + 136);
    v52 = *(v0 + 144);
    v53 = *(v0 + 120);
    v54 = *(v0 + 128);

    return sub_1C10E99B0(v46, v45, v53, v54, v51, v52, v49, v50, v47, v48);
  }
}

uint64_t sub_1C10E95BC()
{
  OUTLINED_FUNCTION_29_6();
  v1 = *v0;
  OUTLINED_FUNCTION_8_26();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C10E96D0);
}

uint64_t sub_1C10E96D0()
{
  v3 = v0[30];
  v5 = v0[27];
  v4 = v0[28];

  OUTLINED_FUNCTION_0_43();
  sub_1C10F0DB0(v3, v6);
  OUTLINED_FUNCTION_17_19();
  sub_1C10F0DB0(v4, v7);
  OUTLINED_FUNCTION_16_15();
  sub_1C10F0AD8(v5, v4, v8);
  OUTLINED_FUNCTION_44(v0[23] + 16, (v0 + 7));
  Strong = swift_weakLoadStrong();
  v10 = v0[32];
  v11 = v0[28];
  if (Strong)
  {
    OUTLINED_FUNCTION_13_18();
    OUTLINED_FUNCTION_29_2();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v1);
    sub_1C10EB954(v2);
  }

  sub_1C10F0DB0(v11, type metadata accessor for PhotosMemoryCellTextOverlayModel.CombinedTitlesAttributes);
  OUTLINED_FUNCTION_0_43();
  sub_1C10F0DB0(v10, v15);
  OUTLINED_FUNCTION_22_10();

  OUTLINED_FUNCTION_14();

  return v16();
}

uint64_t sub_1C10E9808()
{

  if (qword_1EDE776F8 != -1)
  {
    OUTLINED_FUNCTION_1_33(&qword_1EDE776F8);
  }

  v1 = *(v0 + 296);
  v2 = sub_1C1262720();
  __swift_project_value_buffer(v2, qword_1EDE77700);
  v3 = v1;
  v4 = sub_1C12626F0();
  v5 = sub_1C1266410();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 296);
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_60();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1C0F96000, v4, v5, "failed to determine combined title attributes: %@", v8, 0xCu);
    sub_1C0FD1A5C(v9, &unk_1EBE97C20, &qword_1C12CB2B0);
    OUTLINED_FUNCTION_28_7();
    OUTLINED_FUNCTION_4_8();
  }

  else
  {
  }

  OUTLINED_FUNCTION_22_10();

  OUTLINED_FUNCTION_14();

  return v12();
}

uint64_t sub_1C10E99B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  *(v11 + 104) = v10;
  *(v11 + 88) = a9;
  *(v11 + 96) = a10;
  *(v11 + 80) = a7;
  *(v11 + 64) = a5;
  *(v11 + 72) = a6;
  *(v11 + 48) = a3;
  *(v11 + 56) = a4;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 112) = type metadata accessor for TextAttributes(0);
  *(v11 + 120) = swift_task_alloc();
  v12 = sub_1C1262170();
  *(v11 + 128) = v12;
  *(v11 + 136) = *(v12 - 8);
  *(v11 + 144) = swift_task_alloc();
  v13 = sub_1C1263880();
  *(v11 + 152) = v13;
  *(v11 + 160) = *(v13 - 8);
  *(v11 + 168) = swift_task_alloc();
  *(v11 + 176) = swift_task_alloc();
  v14 = sub_1C12647F0();
  *(v11 + 184) = v14;
  *(v11 + 192) = *(v14 - 8);
  *(v11 + 200) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C10E9B78);
}

uint64_t sub_1C10E9B78()
{
  v78 = v0;
  v2 = *(v0 + 40);
  v3 = round(*(v0 + 96) * 24.0);
  *(v0 + 208) = v3;
  v4 = [objc_opt_self() defaultSpecs];
  *(v0 + 216) = v4;
  OUTLINED_FUNCTION_64();
  v6 = v2 + v5;
  v7 = *(v2 + v5);
  if (v7 == 2)
  {
    v8 = *(v0 + 72);
    v9 = *(v0 + 80) - (v3 + v3);
    v10 = sub_1C1265E70();
    [v4 maximumWidthForTitle:v10 containerSize:{v9, v9}];
    v12 = v11;

    if (v8)
    {
      v13 = sub_1C1265E70();
    }

    else
    {
      v13 = 0;
    }

    [v4 maximumWidthForSubtitle:v13 titleWidth:v12];
    v27 = v26;

    if (v12 > 0.0 && v27 > 0.0)
    {
      sub_1C1263860();
      v28 = *(v6 + 1);
      if ((v28 - 2) >= 2)
      {
        if (!*(v6 + 1))
        {
          v15 = 1;
LABEL_38:
          v62 = *(v0 + 168);
          v61 = *(v0 + 176);
          v64 = *(v0 + 152);
          v63 = *(v0 + 160);
          v59 = [v4 maximumNumberOfLinesForTitle];
          v60 = [v4 maximumNumberOfLinesForSubtitle];
          sub_1C12647D0();
          sub_1C1263870();
          (*(v63 + 8))(v61, v64);
          (*(v63 + 32))(v61, v62, v64);
          v58 = 0;
          v57 = xmmword_1C12B5C50;
          v56 = *&v27;
          goto LABEL_41;
        }
      }

      else
      {
        if (qword_1EDE776F8 != -1)
        {
          OUTLINED_FUNCTION_1_33(&qword_1EDE776F8);
        }

        v29 = sub_1C1262720();
        __swift_project_value_buffer(v29, qword_1EDE77700);
        v30 = sub_1C12626F0();
        v31 = sub_1C1266410();
        if (OUTLINED_FUNCTION_45_4(v31))
        {
          v32 = OUTLINED_FUNCTION_60();
          v33 = OUTLINED_FUNCTION_63();
          v77 = v33;
          *v32 = 136315138;
          *(v0 + 264) = v28;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CE0, &unk_1C12B63B8);
          v34 = sub_1C1265ED0();
          v36 = sub_1C0FA0E80(v34, v35, &v77);

          *(v32 + 4) = v36;
          _os_log_impl(&dword_1C0F96000, v30, v1, "invalid preferred position %s for kashida layout, falling back gracefully", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v33);
          OUTLINED_FUNCTION_4_8();
          OUTLINED_FUNCTION_28_7();
        }
      }

      v15 = 0;
      goto LABEL_38;
    }

    if (qword_1EDE776F8 != -1)
    {
      OUTLINED_FUNCTION_1_33(&qword_1EDE776F8);
    }

    v37 = sub_1C1262720();
    __swift_project_value_buffer(v37, qword_1EDE77700);

    v38 = sub_1C12626F0();
    v39 = sub_1C1266400();

    if (os_log_type_enabled(v38, v39))
    {
      v75 = *(v0 + 64);
      v76 = *(v0 + 72);
      v41 = *(v0 + 48);
      v40 = *(v0 + 56);
      v42 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v42 = 134218754;
      *(v42 + 4) = v12;
      *(v42 + 12) = 2080;
      *(v42 + 14) = sub_1C0FA0E80(v41, v40, &v77);
      *(v42 + 22) = 2048;
      *(v42 + 24) = v27;
      *(v42 + 32) = 2080;
      *(v0 + 16) = v75;
      *(v0 + 24) = v76;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91A60, &qword_1C12AB090);
      v43 = sub_1C1265ED0();
      v45 = sub_1C0FA0E80(v43, v44, &v77);

      *(v42 + 34) = v45;
      _os_log_impl(&dword_1C0F96000, v38, v39, "width %f for %s and %f for %s aren't valid, falling back to default style", v42, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_28_7();
      OUTLINED_FUNCTION_4_8();
    }

    sub_1C1263860();
    LODWORD(v14) = *(v6 + 1);
LABEL_25:
    if ((v14 - 2) >= 2)
    {
      if (!v14)
      {
        v15 = 1;
LABEL_34:
        sub_1C12647D0();
        v56 = 0;
        v57 = xmmword_1C12B5C50;
        v12 = 0.0;
        v58 = 1;
        v59 = 3;
        v60 = 1;
        goto LABEL_41;
      }
    }

    else
    {
      if (qword_1EDE776F8 != -1)
      {
        OUTLINED_FUNCTION_1_33(&qword_1EDE776F8);
      }

      v46 = sub_1C1262720();
      __swift_project_value_buffer(v46, qword_1EDE77700);
      v47 = sub_1C12626F0();
      v48 = sub_1C1266410();
      if (OUTLINED_FUNCTION_45_4(v48))
      {
        v49 = OUTLINED_FUNCTION_60();
        v50 = OUTLINED_FUNCTION_63();
        v77 = v50;
        *v49 = 136315138;
        *(v0 + 266) = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CE0, &unk_1C12B63B8);
        v51 = sub_1C1265ED0();
        v53 = sub_1C0FA0E80(v51, v52, &v77);

        *(v49 + 4) = v53;
        OUTLINED_FUNCTION_58_0(&dword_1C0F96000, v54, v55, "invalid preferred position %s for default text layout, falling back gracefully");
        __swift_destroy_boxed_opaque_existential_0Tm(v50);
        OUTLINED_FUNCTION_28_7();
        OUTLINED_FUNCTION_4_8();
      }
    }

    v15 = 0;
    goto LABEL_34;
  }

  sub_1C1263860();
  v14 = *(v6 + 1);
  if (!v7)
  {
    goto LABEL_25;
  }

  sub_1C1262160();
  v15 = 2;
  switch(v14)
  {
    case 1:
    case 3:
      if (qword_1EDE776F8 != -1)
      {
        OUTLINED_FUNCTION_1_33(&qword_1EDE776F8);
      }

      v16 = sub_1C1262720();
      __swift_project_value_buffer(v16, qword_1EDE77700);
      v17 = sub_1C12626F0();
      v18 = sub_1C1266410();
      if (OUTLINED_FUNCTION_45_4(v18))
      {
        v19 = OUTLINED_FUNCTION_60();
        v20 = OUTLINED_FUNCTION_63();
        v77 = v20;
        *v19 = 136315138;
        *(v0 + 265) = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CE0, &unk_1C12B63B8);
        v21 = sub_1C1265ED0();
        v23 = sub_1C0FA0E80(v21, v22, &v77);

        *(v19 + 4) = v23;
        OUTLINED_FUNCTION_58_0(&dword_1C0F96000, v24, v25, "invalid preferred position %s for vertical text, falling back gracefully");
        __swift_destroy_boxed_opaque_existential_0Tm(v20);
        OUTLINED_FUNCTION_28_7();
        OUTLINED_FUNCTION_4_8();
      }

      break;
    case 2:
      v15 = 3;
      break;
    default:
      break;
  }

  v66 = *(v0 + 136);
  v65 = *(v0 + 144);
  v67 = *(v0 + 128);
  v59 = sub_1C1262140();
  v60 = sub_1C1262150();
  sub_1C12647C0();
  (*(v66 + 8))(v65, v67);
  v56 = 0;
  v57 = xmmword_1C12B5C40;
  v12 = 0.0;
  v58 = 1;
LABEL_41:
  *(v0 + 248) = v59;
  *(v0 + 232) = v57;
  *(v0 + 268) = v15;
  *(v0 + 224) = v12;
  *(v0 + 267) = v58;
  v68 = *(v0 + 96) * (*(v0 + 88) * 0.54);
  swift_task_alloc();
  OUTLINED_FUNCTION_32_6();
  *(v0 + 256) = v69;
  *v69 = v70;
  v69[1] = sub_1C10EA31C;
  v71 = *(v0 + 200);
  v72 = *(v0 + 176);
  v73 = *(v0 + 120);

  return sub_1C10EA8C0(v73, v60, v71, v72, v56, v58, v68);
}

uint64_t sub_1C10EA31C()
{
  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_42_1();
  v1 = *v0;
  OUTLINED_FUNCTION_8_26();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C10EA408);
}

uint64_t sub_1C10EA408()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v28 = *(v0 + 268);
  v25 = *(v0 + 267);
  v23 = *(v0 + 248);
  v24 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = *(v0 + 192);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  v26 = v7;
  v27 = *(v0 + 216);
  v8 = *(v0 + 160);
  v9 = *(v0 + 152);
  v11 = *(v0 + 112);
  v10 = *(v0 + 120);
  v12 = *(v0 + 96);
  v13 = *(v0 + 32);
  OUTLINED_FUNCTION_2_36();
  sub_1C10F2AE0(v14, v13, v15);
  (*(v4 + 16))(v13 + v11[8], v5, v7);
  (*(v8 + 16))(v13 + v11[9], v6, v9);
  v16 = v13 + v11[5];
  *v16 = v23;
  *(v16 + 8) = 0;
  *(v13 + v11[6]) = 0x3FF0000000000000;
  *(v13 + v11[7]) = v2;
  v17 = v13 + v11[10];
  *v17 = v24;
  *(v17 + 8) = v25;
  v18 = type metadata accessor for PhotosMemoryCellTextOverlayModel.CombinedTitlesAttributes(0);
  OUTLINED_FUNCTION_6_21();
  sub_1C10F2AE0(v10, v13 + v19, v20);

  sub_1C10F0DB0(v10, type metadata accessor for TextAttributes);
  (*(v8 + 8))(v6, v9);
  (*(v4 + 8))(v5, v26);
  *(v13 + v18[6]) = round(v1 * v12);
  *(v13 + v18[7]) = v3;
  *(v13 + v18[8]) = v28;

  OUTLINED_FUNCTION_14();

  return v21();
}

uint64_t sub_1C10EA628(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v30 = a5;
  v31 = a6;
  v12 = sub_1C1262170();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C1264820();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 + *(type metadata accessor for PhotosMemoryTitleLook(0) + 24));
  if (v20)
  {
    sub_1C1264810();
    v21 = type metadata accessor for PhotosMemoryCellTextOverlayModel.CombinedTitlesAttributes(0);
    v22 = a7 - (*(a1 + *(v21 + 28)) + *(a1 + *(v21 + 28)));
    if (v20 == 2)
    {
      v23 = [objc_opt_self() defaultSpecs];
      v24 = [v23 maximumNumberOfLinesForTitle];
      v25 = [v23 maximumNumberOfLinesForSubtitle];
      v26 = sub_1C10EAD64(v24, v25, v19, a3, a4, a1, v30, v31, v22, v22);
    }

    else
    {
      sub_1C1262160();
      v27 = sub_1C1262140();
      v28 = sub_1C1262150();
      v26 = sub_1C10EAD64(v27, v28, v19, a3, a4, a1, v30, v31, v22, v22);
      (*(v13 + 8))(v15, v12);
    }

    (*(v17 + 8))(v19, v16);
  }

  else
  {
    v26 = 1;
  }

  return v26 & 1;
}

PhotosSwiftUICore::PhotosMemoryTitleLayout __swiftcall PhotosMemoryTitleLayout.init(style:preferredPosition:)(PhotosSwiftUICore::PhotosMemoryTitleLayout::Style style, PhotosSwiftUICore::PhotosMemoryTitleLayout::Position_optional preferredPosition)
{
  v3 = *preferredPosition.value;
  *v2 = *style;
  v2[1] = v3;
  result.style = style;
  return result;
}

uint64_t sub_1C10EA8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, double a7)
{
  *(v7 + 72) = a6;
  *(v7 + 48) = a4;
  *(v7 + 56) = a5;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  *(v7 + 24) = a7;
  *(v7 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96550, &qword_1C12AC4C0);
  *(v7 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C10EA96C);
}

uint64_t sub_1C10EA96C(uint64_t a1)
{
  v32 = *(v1 + 72);
  v2 = *(v1 + 64);
  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  v30 = *(v1 + 32);
  v31 = *(v1 + 56);
  v5 = *(v1 + 16);
  sub_1C12645B0();
  v6 = *MEMORY[0x1E6980E20];
  v7 = sub_1C1264590();
  OUTLINED_FUNCTION_3();
  (*(v8 + 104))(v2, v6, v7);
  OUTLINED_FUNCTION_29_2();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v7);
  v12 = sub_1C1264630();
  sub_1C0FD1A5C(v2, &qword_1EBE96550, &qword_1C12AC4C0);
  v13 = type metadata accessor for PhotosMemoryTitleLook(0);
  v14 = *(v13 + 20);
  v15 = *MEMORY[0x1E6980FD8];
  v16 = sub_1C1264860();
  OUTLINED_FUNCTION_3();
  (*(v17 + 104))(v5 + v14, v15, v16);
  OUTLINED_FUNCTION_29_2();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v16);
  *v5 = v12;
  *(v5 + *(v13 + 24)) = 768;
  v21 = type metadata accessor for TextAttributes(0);
  v22 = v21[8];
  sub_1C12647F0();
  OUTLINED_FUNCTION_3();
  (*(v23 + 16))(v5 + v22, v4);
  v24 = v21[9];
  sub_1C1263880();
  OUTLINED_FUNCTION_3();
  (*(v25 + 16))(v5 + v24, v3);
  v26 = v5 + v21[5];
  *v26 = v30;
  v26[8] = 0;
  *(v5 + v21[6]) = 0x3FF3333333333333;
  *(v5 + v21[7]) = 0x3FF0000000000000;
  v27 = v5 + v21[10];
  *v27 = v31;
  v27[8] = v32 & 1;

  OUTLINED_FUNCTION_14();

  return v28();
}

uint64_t sub_1C10EABEC(void *a1)
{
  sub_1C0FDB9AC();

  v1 = sub_1C12648F0();
  v3 = v2;
  v5 = v4;
  type metadata accessor for TextConfiguration(0);
  v6 = sub_1C1264870();
  v8 = v7;
  v10 = v9;
  sub_1C0FDB8E8(v1, v3, v5 & 1);

  type metadata accessor for TextAttributes(0);
  v11 = sub_1C1264880();
  v13 = v12;
  v15 = v14;
  sub_1C0FDB8E8(v6, v8, v10 & 1);

  v16 = sub_1C1264890();
  sub_1C0FDB8E8(v11, v13, v15 & 1);

  return v16;
}

uint64_t sub_1C10EAD64(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v91 = a8;
  v84 = a7;
  v97 = a3;
  v85 = a2;
  v93 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CD8, &qword_1C12B63A8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v96 = &v84 - v14;
  v15 = type metadata accessor for TextConfiguration(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for TextAttributes(0);
  v94 = a6;
  v95 = v18;
  v89 = v15;
  sub_1C10F2AE0(a6, v17 + *(v15 + 20), type metadata accessor for TextAttributes);
  v98 = v17;
  *v17 = a4;
  v17[1] = a5;
  v90 = a4;
  v99 = a4;
  v100 = a5;
  v19 = sub_1C0FDB9AC();
  v92 = a5;
  swift_bridgeObjectRetain_n();
  v88 = v19;
  v20 = sub_1C12648F0();
  v22 = v21;
  LOBYTE(v15) = v23;
  v24 = sub_1C1264870();
  v26 = v25;
  v28 = v27;
  sub_1C0FDB8E8(v20, v22, v15 & 1);

  v29 = v95;
  v30 = sub_1C1264880();
  v32 = v31;
  LOBYTE(v22) = v33;
  sub_1C0FDB8E8(v24, v26, v28 & 1);

  v34 = sub_1C1264890();
  v36 = v35;
  v38 = v37;
  sub_1C0FDB8E8(v30, v32, v22 & 1);

  sub_1C10F0DB0(v98, type metadata accessor for TextConfiguration);
  v39 = *(v29 + 32);
  v40 = sub_1C12647F0();
  v41 = *(v40 - 8);
  v42 = v94 + v39;
  v43 = v94;
  v44 = v96;
  v87 = *(v41 + 16);
  v86 = v41 + 16;
  v87(v96, v42, v40);
  __swift_storeEnumTagSinglePayload(v44, 0, 1, v40);
  v45 = sub_1C1264800();
  sub_1C0FDB8E8(v34, v36, v38 & 1);

  sub_1C0FD1A5C(v44, &qword_1EBE93CD8, &qword_1C12B63A8);
  if (v45 < 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
LABEL_4:
    v46 = sub_1C1262720();
    __swift_project_value_buffer(v46, qword_1EDE77700);
    v47 = v92;

    v48 = sub_1C12626F0();
    v49 = sub_1C1266400();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v99 = v51;
      *v50 = 136315394;
      *(v50 + 4) = sub_1C0FA0E80(v90, v47, &v99);
      *(v50 + 12) = 2048;
      *(v50 + 14) = v45;
      v52 = "title “%s” exceeds maximum number of lines %ld";
LABEL_12:
      _os_log_impl(&dword_1C0F96000, v48, v49, v52, v50, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      MEMORY[0x1C68F1630](v51, -1, -1);
      MEMORY[0x1C68F1630](v50, -1, -1);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if (v45 > v93)
  {
    v45 = v93;
    if (qword_1EDE776F8 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  if (v91)
  {
    v94 = v43 + *(type metadata accessor for PhotosMemoryCellTextOverlayModel.CombinedTitlesAttributes(0) + 20);
    v53 = v98;
    v54 = v98 + *(v89 + 20);
    sub_1C10F2AE0(v94, v54, type metadata accessor for TextAttributes);
    v55 = v90;
    v56 = v92;
    *v53 = v90;
    v53[1] = v56;
    v99 = v55;
    v100 = v56;
    swift_bridgeObjectRetain_n();
    v57 = sub_1C12648F0();
    v59 = v58;
    v61 = v60;
    v93 = v54;
    v62 = sub_1C1264870();
    v64 = v63;
    v66 = v65;
    v92 = v67;
    sub_1C0FDB8E8(v57, v59, v61 & 1);

    v68 = v95;
    v69 = sub_1C1264880();
    v71 = v70;
    v73 = v72;
    sub_1C0FDB8E8(v62, v64, v66 & 1);

    v74 = sub_1C1264890();
    v76 = v75;
    LOBYTE(v64) = v77;
    v93 = v78;
    sub_1C0FDB8E8(v69, v71, v73 & 1);

    sub_1C10F0DB0(v98, type metadata accessor for TextConfiguration);
    v79 = v96;
    v87(v96, v94 + *(v68 + 32), v40);
    __swift_storeEnumTagSinglePayload(v79, 0, 1, v40);
    v80 = sub_1C1264800();
    sub_1C0FDB8E8(v74, v76, v64 & 1);

    sub_1C0FD1A5C(v79, &qword_1EBE93CD8, &qword_1C12B63A8);
    if (v80 < 0)
    {
      __break(1u);
LABEL_18:
      swift_once();
LABEL_10:
      v81 = sub_1C1262720();
      __swift_project_value_buffer(v81, qword_1EDE77700);
      v82 = v91;

      v48 = sub_1C12626F0();
      v49 = sub_1C1266400();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v99 = v51;
        *v50 = 136315394;
        *(v50 + 4) = sub_1C0FA0E80(v84, v82, &v99);
        *(v50 + 12) = 2048;
        *(v50 + 14) = v71;
        v52 = "subtitle “%s” exceeds maximum number of lines %ld";
        goto LABEL_12;
      }

LABEL_13:

      return 0;
    }

    v71 = v85;
    if (v80 > v85)
    {
      if (qword_1EDE776F8 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }
  }

  return 1;
}

double sub_1C10EB58C(uint64_t a1)
{
  v2 = *(v1 + 104);
  *(v1 + 104) = a1;
  if (v2)
  {

    sub_1C1266240();
  }

  return result;
}

uint64_t sub_1C10EB614(uint64_t a1)
{
  v3 = type metadata accessor for PhotosMemoryCellTextOverlayModel.CombinedTitlesAttributes(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93B00, &qword_1C12B5C80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CC8, &qword_1C12B6378);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtC17PhotosSwiftUICore32PhotosMemoryCellTextOverlayModel_combinedTitlesAttributes;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_1C0FE5654(v1 + v13, v12, &qword_1EBE93B00, &qword_1C12B5C80);
  sub_1C0FE5654(a1, &v12[v14], &qword_1EBE93B00, &qword_1C12B5C80);
  if (__swift_getEnumTagSinglePayload(v12, 1, v3) == 1)
  {
    if (__swift_getEnumTagSinglePayload(&v12[v14], 1, v3) == 1)
    {
      return sub_1C0FD1A5C(v12, &qword_1EBE93B00, &qword_1C12B5C80);
    }

    goto LABEL_6;
  }

  sub_1C0FE5654(v12, v8, &qword_1EBE93B00, &qword_1C12B5C80);
  if (__swift_getEnumTagSinglePayload(&v12[v14], 1, v3) == 1)
  {
    sub_1C10F0DB0(v8, type metadata accessor for PhotosMemoryCellTextOverlayModel.CombinedTitlesAttributes);
LABEL_6:
    v16 = &qword_1EBE93CC8;
    v17 = &qword_1C12B6378;
LABEL_14:
    sub_1C0FD1A5C(v12, v16, v17);
    return sub_1C10EBAD8();
  }

  sub_1C10F0AD8(&v12[v14], v5, type metadata accessor for PhotosMemoryCellTextOverlayModel.CombinedTitlesAttributes);
  if ((sub_1C10ED5B0(v8, v5) & 1) == 0 || (sub_1C10ED5B0(&v8[v3[5]], &v5[v3[5]]) & 1) == 0 || *&v8[v3[6]] != *&v5[v3[6]] || *&v8[v3[7]] != *&v5[v3[7]])
  {
    sub_1C10F0DB0(v5, type metadata accessor for PhotosMemoryCellTextOverlayModel.CombinedTitlesAttributes);
    sub_1C10F0DB0(v8, type metadata accessor for PhotosMemoryCellTextOverlayModel.CombinedTitlesAttributes);
    v16 = &qword_1EBE93B00;
    v17 = &qword_1C12B5C80;
    goto LABEL_14;
  }

  v18 = v3[8];
  v19 = v8[v18];
  v20 = v5[v18];
  sub_1C10F0DB0(v5, type metadata accessor for PhotosMemoryCellTextOverlayModel.CombinedTitlesAttributes);
  sub_1C10F0DB0(v8, type metadata accessor for PhotosMemoryCellTextOverlayModel.CombinedTitlesAttributes);
  result = sub_1C0FD1A5C(v12, &qword_1EBE93B00, &qword_1C12B5C80);
  if (v19 != v20)
  {
    return sub_1C10EBAD8();
  }

  return result;
}

uint64_t sub_1C10EB954(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93B00, &qword_1C12B5C80);
  OUTLINED_FUNCTION_15(v4);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_38_0();
  v6 = OBJC_IVAR____TtC17PhotosSwiftUICore32PhotosMemoryCellTextOverlayModel_combinedTitlesAttributes;
  OUTLINED_FUNCTION_44(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore32PhotosMemoryCellTextOverlayModel_combinedTitlesAttributes, v18);
  OUTLINED_FUNCTION_35_3();
  sub_1C0FE5654(v7, v8, v9, v10);
  swift_beginAccess();
  sub_1C10F2B3C(a1, v1 + v6);
  swift_endAccess();
  sub_1C10EB614(v2);
  OUTLINED_FUNCTION_23_7();
  sub_1C0FD1A5C(v11, v12, v13);
  OUTLINED_FUNCTION_23_7();
  return sub_1C0FD1A5C(v14, v15, v16);
}

BOOL sub_1C10EBA3C(uint64_t a1, uint64_t a2)
{
  if (sub_1C10ED5B0(a1, a2) & 1) != 0 && (v4 = type metadata accessor for PhotosMemoryCellTextOverlayModel.CombinedTitlesAttributes(0), (sub_1C10ED5B0(a1 + v4[5], a2 + v4[5])) && *(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7]))
  {
    return *(a1 + v4[8]) == *(a2 + v4[8]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C10EBAD8()
{
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CC0, &qword_1C12B6370);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_34();
  v128 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93B08, &qword_1C12B5C88);
  v4 = OUTLINED_FUNCTION_15(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_30();
  v124 = v5 - v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v7);
  v123 = &v121 - v8;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v9);
  v126 = &v121 - v10;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v11);
  v129 = &v121 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93BB0, &qword_1C12B6058);
  v14 = OUTLINED_FUNCTION_15(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_30();
  v17 = (v15 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v121 - v19);
  v21 = type metadata accessor for TextOverlayConfiguration(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_30();
  v122 = v23 - v24;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v25);
  v127 = &v121 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93B00, &qword_1C12B5C80);
  OUTLINED_FUNCTION_15(v27);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v121 - v29;
  v31 = type metadata accessor for PhotosMemoryCellTextOverlayModel.CombinedTitlesAttributes(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13();
  v35 = v34 - v33;
  v36 = OBJC_IVAR____TtC17PhotosSwiftUICore32PhotosMemoryCellTextOverlayModel_combinedTitlesAttributes;
  OUTLINED_FUNCTION_44(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore32PhotosMemoryCellTextOverlayModel_combinedTitlesAttributes, v130);
  sub_1C0FE5654(v0 + v36, v30, &qword_1EBE93B00, &qword_1C12B5C80);
  if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
  {
    return sub_1C0FD1A5C(v30, &qword_1EBE93B00, &qword_1C12B5C80);
  }

  OUTLINED_FUNCTION_16_15();
  sub_1C10F0AD8(v30, v35, v38);
  v39 = v0[8];
  if (v39)
  {
    v40 = v0[7];
    v41 = type metadata accessor for TextConfiguration(0);
    OUTLINED_FUNCTION_6_21();
    sub_1C10F2AE0(v35, v20 + v42, v43);
    *v20 = v40;
    v20[1] = v39;
    OUTLINED_FUNCTION_29_2();
    v47 = v41;
  }

  else
  {
    type metadata accessor for TextConfiguration(0);
    OUTLINED_FUNCTION_34_5();
  }

  __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
  v121 = v39;
  v48 = v0[10];
  if (v48)
  {
    v49 = v31[5];
    v50 = v35;
    v51 = v0[9];
    v52 = type metadata accessor for TextConfiguration(0);
    OUTLINED_FUNCTION_6_21();
    sub_1C10F2AE0(v50 + v49, v17 + v53, v54);
    *v17 = v51;
    v17[1] = v48;
    v35 = v50;
    OUTLINED_FUNCTION_29_2();
    v58 = v52;
  }

  else
  {
    type metadata accessor for TextConfiguration(0);
    OUTLINED_FUNCTION_34_5();
  }

  __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
  v59 = *(v35 + v31[6]);
  v60 = *(v35 + v31[7]);
  v61 = *(v35 + v31[8]);
  v62 = v127;
  OUTLINED_FUNCTION_35_3();
  sub_1C0FE4040(v63, v64, v65, v66);
  OUTLINED_FUNCTION_35_3();
  sub_1C0FE4040(v67, v68, v69, v70);
  *(v62 + v21[6]) = v59;
  *(v62 + v21[7]) = v60;
  *(v62 + v21[8]) = v61;
  v71 = OUTLINED_FUNCTION_11_17();
  sub_1C10F2AE0(v71, v129, v72);
  OUTLINED_FUNCTION_29_2();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v21);

  sub_1C10EC0F0(v126);
  v76 = *(v125 + 48);
  v77 = v128;
  OUTLINED_FUNCTION_35_3();
  sub_1C0FE5654(v78, v79, v80, v81);
  OUTLINED_FUNCTION_35_3();
  sub_1C0FE5654(v82, v83, v84, v85);
  OUTLINED_FUNCTION_61(v77);
  if (!v93)
  {
    v92 = v123;
    sub_1C0FE5654(v77, v123, &qword_1EBE93B08, &qword_1C12B5C88);
    OUTLINED_FUNCTION_61(v77 + v76);
    if (!v93)
    {
      v109 = v77 + v76;
      v110 = v122;
      sub_1C10F0AD8(v109, v122, type metadata accessor for TextOverlayConfiguration);
      v111 = sub_1C10ECFE0(v92, v110);
      sub_1C10F0DB0(v110, type metadata accessor for TextOverlayConfiguration);
      OUTLINED_FUNCTION_41_3();
      sub_1C0FD1A5C(v112, v113, v114);
      OUTLINED_FUNCTION_41_3();
      sub_1C0FD1A5C(v115, v116, v117);
      sub_1C10F0DB0(v92, type metadata accessor for TextOverlayConfiguration);
      OUTLINED_FUNCTION_41_3();
      sub_1C0FD1A5C(v118, v119, v120);
      if (v111)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    OUTLINED_FUNCTION_23_7();
    sub_1C0FD1A5C(v94, v95, v96);
    OUTLINED_FUNCTION_23_7();
    sub_1C0FD1A5C(v97, v98, v99);
    OUTLINED_FUNCTION_15_21();
    sub_1C10F0DB0(v92, v100);
LABEL_17:
    sub_1C0FD1A5C(v77, &qword_1EBE93CC0, &qword_1C12B6370);
LABEL_18:
    v101 = OUTLINED_FUNCTION_11_17();
    v102 = v124;
    sub_1C10F2AE0(v101, v124, v103);
    OUTLINED_FUNCTION_29_2();
    __swift_storeEnumTagSinglePayload(v104, v105, v106, v21);
    sub_1C10EC26C(v102);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_23_7();
  sub_1C0FD1A5C(v86, v87, v88);
  OUTLINED_FUNCTION_23_7();
  sub_1C0FD1A5C(v89, v90, v91);
  OUTLINED_FUNCTION_61(v77 + v76);
  if (!v93)
  {
    goto LABEL_17;
  }

  sub_1C0FD1A5C(v77, &qword_1EBE93B08, &qword_1C12B5C88);
LABEL_19:
  OUTLINED_FUNCTION_15_21();
  sub_1C10F0DB0(v62, v107);
  OUTLINED_FUNCTION_17_19();
  return sub_1C10F0DB0(v35, v108);
}

uint64_t sub_1C10EC0F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  v6[0] = v1;
  sub_1C10ECE78(&qword_1EDE80128, type metadata accessor for PhotosMemoryCellTextOverlayModel, &protocol conformance descriptor for PhotosMemoryCellTextOverlayModel);
  sub_1C1261F30();

  v4 = OBJC_IVAR____TtC17PhotosSwiftUICore32PhotosMemoryCellTextOverlayModel__configuration;
  OUTLINED_FUNCTION_44(v6[0] + OBJC_IVAR____TtC17PhotosSwiftUICore32PhotosMemoryCellTextOverlayModel__configuration, v6);
  return sub_1C0FE5654(v2 + v4, a1, &qword_1EBE93B08, &qword_1C12B5C88);
}

uint64_t sub_1C10EC1C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93B08, &qword_1C12B5C88);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1C0FE5654(a1, &v6 - v3, &qword_1EBE93B08, &qword_1C12B5C88);
  return sub_1C10EC26C(v4);
}

uint64_t sub_1C10EC26C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93B08, &qword_1C12B5C88);
  OUTLINED_FUNCTION_15(v3);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14[-v5];
  v7 = OBJC_IVAR____TtC17PhotosSwiftUICore32PhotosMemoryCellTextOverlayModel__configuration;
  OUTLINED_FUNCTION_44(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore32PhotosMemoryCellTextOverlayModel__configuration, v15);
  sub_1C0FE5654(v1 + v7, v6, &qword_1EBE93B08, &qword_1C12B5C88);
  v8 = sub_1C10EC594(v6, a1);
  v9 = OUTLINED_FUNCTION_4_4();
  sub_1C0FD1A5C(v9, v10, &qword_1C12B5C88);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v14[-16] = v1;
    *&v14[-8] = a1;
    sub_1C10EC4DC(v12, sub_1C10F2AC4, &v14[-32]);
  }

  else
  {
    sub_1C0FE5654(a1, v6, &qword_1EBE93B08, &qword_1C12B5C88);
    swift_beginAccess();
    sub_1C10F2A54(v6, v1 + v7);
    swift_endAccess();
  }

  return sub_1C0FD1A5C(a1, &qword_1EBE93B08, &qword_1C12B5C88);
}

uint64_t sub_1C10EC400(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93B08, &qword_1C12B5C88);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1C0FE5654(a2, &v9 - v5, &qword_1EBE93B08, &qword_1C12B5C88);
  v7 = OBJC_IVAR____TtC17PhotosSwiftUICore32PhotosMemoryCellTextOverlayModel__configuration;
  swift_beginAccess();
  sub_1C10F2A54(v6, a1 + v7);
  return swift_endAccess();
}

uint64_t sub_1C10EC594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextOverlayConfiguration(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93B08, &qword_1C12B5C88);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CC0, &qword_1C12B6370);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - v11;
  v14 = *(v13 + 56);
  sub_1C0FE5654(a1, &v18 - v11, &qword_1EBE93B08, &qword_1C12B5C88);
  sub_1C0FE5654(a2, &v12[v14], &qword_1EBE93B08, &qword_1C12B5C88);
  if (__swift_getEnumTagSinglePayload(v12, 1, v4) != 1)
  {
    sub_1C0FE5654(v12, v9, &qword_1EBE93B08, &qword_1C12B5C88);
    if (__swift_getEnumTagSinglePayload(&v12[v14], 1, v4) != 1)
    {
      sub_1C10F0AD8(&v12[v14], v6, type metadata accessor for TextOverlayConfiguration);
      v16 = sub_1C10ECFE0(v9, v6);
      sub_1C10F0DB0(v6, type metadata accessor for TextOverlayConfiguration);
      sub_1C10F0DB0(v9, type metadata accessor for TextOverlayConfiguration);
      sub_1C0FD1A5C(v12, &qword_1EBE93B08, &qword_1C12B5C88);
      v15 = !v16;
      return v15 & 1;
    }

    sub_1C10F0DB0(v9, type metadata accessor for TextOverlayConfiguration);
    goto LABEL_6;
  }

  if (__swift_getEnumTagSinglePayload(&v12[v14], 1, v4) != 1)
  {
LABEL_6:
    sub_1C0FD1A5C(v12, &qword_1EBE93CC0, &qword_1C12B6370);
    v15 = 1;
    return v15 & 1;
  }

  sub_1C0FD1A5C(v12, &qword_1EBE93B08, &qword_1C12B5C88);
  v15 = 0;
  return v15 & 1;
}

uint64_t PhotosMemoryCellTextOverlayModel.deinit()
{

  sub_1C0FD1A5C(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore32PhotosMemoryCellTextOverlayModel_combinedTitlesAttributes, &qword_1EBE93B00, &qword_1C12B5C80);
  sub_1C0FD1A5C(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore32PhotosMemoryCellTextOverlayModel__configuration, &qword_1EBE93B08, &qword_1C12B5C88);
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore32PhotosMemoryCellTextOverlayModel___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t PhotosMemoryCellTextOverlayModel.__deallocating_deinit()
{
  PhotosMemoryCellTextOverlayModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

BOOL static PhotosMemoryTitleLookContext.== infix(_:_:)(double *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = a1[4];
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (v8 || (sub_1C1266D50() & 1) != 0)
  {
    if (v3)
    {
      if (v5)
      {
        if (v2 == v6 && v3 == v5)
        {
          return v4 == v7;
        }

        OUTLINED_FUNCTION_18();
        if (sub_1C1266D50())
        {
          return v4 == v7;
        }
      }
    }

    else if (!v5)
    {
      return v4 == v7;
    }
  }

  return 0;
}

uint64_t PhotosMemoryTitleLook.layout.getter@<X0>(_WORD *a1@<X8>)
{
  result = OUTLINED_FUNCTION_64();
  *a1 = *(v1 + v4);
  return result;
}

uint64_t PhotosMemoryTitleLook.layout.setter(__int16 *a1)
{
  v2 = *a1;
  result = OUTLINED_FUNCTION_64();
  *(v1 + v4) = v2;
  return result;
}

void static PhotosMemoryTitleLook.== infix(_:_:)()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_18_0();
  v3 = sub_1C1264860();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93AE0, &unk_1C12B5C60);
  OUTLINED_FUNCTION_15(v10);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93B10, &qword_1C12B5C90);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_38_0();
  if ((sub_1C1264520() & 1) == 0)
  {
    goto LABEL_11;
  }

  v25 = v5;
  v24 = type metadata accessor for PhotosMemoryTitleLook(0);
  v16 = *(v24 + 20);
  v17 = *(v14 + 48);
  sub_1C0FE5654(v1 + v16, v2, &qword_1EBE93AE0, &unk_1C12B5C60);
  sub_1C0FE5654(v0 + v16, v2 + v17, &qword_1EBE93AE0, &unk_1C12B5C60);
  OUTLINED_FUNCTION_17_1(v2);
  if (v18)
  {
    OUTLINED_FUNCTION_17_1(v2 + v17);
    if (v18)
    {
      sub_1C0FD1A5C(v2, &qword_1EBE93AE0, &unk_1C12B5C60);
LABEL_13:
      v22 = *(v24 + 24);
      v27 = *(v1 + v22);
      v26 = *(v0 + v22);
      static PhotosMemoryTitleLayout.== infix(_:_:)(&v27, &v26);
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  sub_1C0FE5654(v2, v13, &qword_1EBE93AE0, &unk_1C12B5C60);
  OUTLINED_FUNCTION_17_1(v2 + v17);
  if (v18)
  {
    (*(v25 + 8))(v13, v3);
LABEL_10:
    sub_1C0FD1A5C(v2, &qword_1EBE93B10, &qword_1C12B5C90);
    goto LABEL_11;
  }

  v19 = v25;
  (*(v25 + 32))(v9, v2 + v17, v3);
  sub_1C10ECE78(&qword_1EDE7B8B0, MEMORY[0x1E6980FE0], MEMORY[0x1E6980FF0]);
  v20 = sub_1C1265DE0();
  v21 = *(v19 + 8);
  v21(v9, v3);
  v21(v13, v3);
  sub_1C0FD1A5C(v2, &qword_1EBE93AE0, &unk_1C12B5C60);
  if (v20)
  {
    goto LABEL_13;
  }

LABEL_11:
  OUTLINED_FUNCTION_22_0();
}

uint64_t static PhotosMemoryTitleLayout.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a2[1];
  if (v2 == 3)
  {
    if (v3 != 3)
    {
      return 0;
    }
  }

  else if (v3 == 3 || v2 != v3)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1C10ECE78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PhotosMemoryTitleLayout.Position.description.getter()
{
  v1 = 0x65436D6F74746F62;
  if (*v0 != 1)
  {
    v1 = 0x72546D6F74746F62;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x654C6D6F74746F62;
  }
}

BOOL sub_1C10ECFE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextConfiguration(0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = (&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v36 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93BB0, &qword_1C12B6058);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v38 = (&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v36 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CB8, &qword_1C12B6340);
  MEMORY[0x1EEE9AC00](v14);
  v39 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - v17;
  v20 = *(v19 + 48);
  v40 = a1;
  sub_1C0FE5654(a1, &v36 - v17, &qword_1EBE93BB0, &qword_1C12B6058);
  v41 = a2;
  sub_1C0FE5654(a2, &v18[v20], &qword_1EBE93BB0, &qword_1C12B6058);
  if (__swift_getEnumTagSinglePayload(v18, 1, v4) == 1)
  {
    if (__swift_getEnumTagSinglePayload(&v18[v20], 1, v4) != 1)
    {
LABEL_16:
      v29 = &qword_1EBE93CB8;
      v30 = &qword_1C12B6340;
LABEL_17:
      sub_1C0FD1A5C(v18, v29, v30);
      return 0;
    }

    sub_1C0FD1A5C(v18, &qword_1EBE93BB0, &qword_1C12B6058);
  }

  else
  {
    sub_1C0FE5654(v18, v13, &qword_1EBE93BB0, &qword_1C12B6058);
    if (__swift_getEnumTagSinglePayload(&v18[v20], 1, v4) == 1)
    {
LABEL_15:
      sub_1C10F0DB0(v13, type metadata accessor for TextConfiguration);
      goto LABEL_16;
    }

    sub_1C10F0AD8(&v18[v20], v8, type metadata accessor for TextConfiguration);
    v21 = *v13 == *v8 && v13[1] == v8[1];
    if (!v21 && (sub_1C1266D50() & 1) == 0)
    {
      v35 = v8;
      goto LABEL_30;
    }

    v22 = sub_1C10ED5B0(v13 + *(v4 + 20), v8 + *(v4 + 20));
    sub_1C10F0DB0(v8, type metadata accessor for TextConfiguration);
    sub_1C10F0DB0(v13, type metadata accessor for TextConfiguration);
    sub_1C0FD1A5C(v18, &qword_1EBE93BB0, &qword_1C12B6058);
    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  v23 = type metadata accessor for TextOverlayConfiguration(0);
  v24 = v23[5];
  v25 = *(v14 + 48);
  v18 = v39;
  v26 = v40;
  sub_1C0FE5654(v40 + v24, v39, &qword_1EBE93BB0, &qword_1C12B6058);
  v27 = v41 + v24;
  v28 = v41;
  sub_1C0FE5654(v27, &v18[v25], &qword_1EBE93BB0, &qword_1C12B6058);
  if (__swift_getEnumTagSinglePayload(v18, 1, v4) != 1)
  {
    v13 = v38;
    sub_1C0FE5654(v18, v38, &qword_1EBE93BB0, &qword_1C12B6058);
    if (__swift_getEnumTagSinglePayload(&v18[v25], 1, v4) == 1)
    {
      goto LABEL_15;
    }

    v32 = v37;
    sub_1C10F0AD8(&v18[v25], v37, type metadata accessor for TextConfiguration);
    v33 = *v13 == *v32 && v13[1] == v32[1];
    if (v33 || (sub_1C1266D50() & 1) != 0)
    {
      v34 = sub_1C10ED5B0(v13 + *(v4 + 20), v32 + *(v4 + 20));
      sub_1C10F0DB0(v32, type metadata accessor for TextConfiguration);
      sub_1C10F0DB0(v13, type metadata accessor for TextConfiguration);
      sub_1C0FD1A5C(v18, &qword_1EBE93BB0, &qword_1C12B6058);
      if (v34)
      {
        goto LABEL_25;
      }

      return 0;
    }

    v35 = v32;
LABEL_30:
    sub_1C10F0DB0(v35, type metadata accessor for TextConfiguration);
    sub_1C10F0DB0(v13, type metadata accessor for TextConfiguration);
    v29 = &qword_1EBE93BB0;
    v30 = &qword_1C12B6058;
    goto LABEL_17;
  }

  if (__swift_getEnumTagSinglePayload(&v18[v25], 1, v4) != 1)
  {
    goto LABEL_16;
  }

  sub_1C0FD1A5C(v18, &qword_1EBE93BB0, &qword_1C12B6058);
LABEL_25:
  if (*(v26 + v23[6]) != *(v28 + v23[6]) || *(v26 + v23[7]) != *(v28 + v23[7]))
  {
    return 0;
  }

  return *(v26 + v23[8]) == *(v28 + v23[8]);
}

uint64_t sub_1C10ED534(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C1266D50() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for TextConfiguration(0) + 20);

  return sub_1C10ED5B0(a1 + v5, a2 + v5);
}

uint64_t sub_1C10ED5B0(uint64_t a1, uint64_t a2)
{
  static PhotosMemoryTitleLook.== infix(_:_:)();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for TextAttributes(0);
  v6 = v5;
  v7 = v5[5];
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = *(a2 + v7 + 8);
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    if (*v8 != *v10)
    {
      LOBYTE(v11) = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  if (*(a1 + v5[6]) != *(a2 + v5[6]) || *(a1 + v5[7]) != *(a2 + v5[7]) || (sub_1C12647E0() & 1) == 0 || (sub_1C1263850() & 1) == 0)
  {
    return 0;
  }

  v12 = v6[10];
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = *(a2 + v12 + 8);
  if (v14)
  {
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v13 != *v15)
    {
      v16 = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_1C10ED6F8()
{
  result = qword_1EBE93B18;
  if (!qword_1EBE93B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93B18);
  }

  return result;
}

unint64_t sub_1C10ED750()
{
  result = qword_1EBE93B20[0];
  if (!qword_1EBE93B20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBE93B20);
  }

  return result;
}

void sub_1C10ED7AC(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1C10EDF14(319, &qword_1EBE93BA8, type metadata accessor for PhotosMemoryCellTextOverlayModel, MEMORY[0x1E697DA80]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C10ED864(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93AF0, &qword_1C12B5C70);
  v9 = *(result - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = result;
  v14 = *(v9 + 80) & 0xF8 | 7;
  v15 = *(v6 + 64) + v14;
  v16 = *(*(result - 8) + 64) + 7;
  if (v12 >= a2)
  {
LABEL_28:
    if (v7 >= v11)
    {
      v24 = a1;
      v10 = v7;
      v13 = v5;
    }

    else
    {
      v24 = ((a1 + v15) & ~v14);
      if (v10 < 0x7FFFFFFE)
      {
        v25 = *((v24 + v16) & 0xFFFFFFFFFFFFFFF8);
        if (v25 >= 0xFFFFFFFF)
        {
          LODWORD(v25) = -1;
        }

        if ((v25 + 1) >= 2)
        {
          return v25;
        }

        else
        {
          return 0;
        }
      }
    }

    return __swift_getEnumTagSinglePayload(v24, v10, v13);
  }

  else
  {
    v17 = (v16 & 0xFFFFFFFFFFFFFFF8) + (v15 & ~v14) + 8;
    v18 = v17 & 0xFFFFFFF8;
    if ((v17 & 0xFFFFFFF8) != 0)
    {
      v19 = 2;
    }

    else
    {
      v19 = a2 - v12 + 1;
    }

    if (v19 >= 0x10000)
    {
      LODWORD(v20) = 4;
    }

    else
    {
      LODWORD(v20) = 2;
    }

    if (v19 < 0x100)
    {
      LODWORD(v20) = 1;
    }

    if (v19 >= 2)
    {
      v20 = v20;
    }

    else
    {
      v20 = 0;
    }

    switch(v20)
    {
      case 1:
        v21 = *(a1 + v17);
        if (!v21)
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      case 2:
        v21 = *(a1 + v17);
        if (!v21)
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      case 3:
        __break(1u);
        return result;
      case 4:
        v21 = *(a1 + v17);
        if (!v21)
        {
          goto LABEL_28;
        }

LABEL_25:
        v22 = v21 - 1;
        if (v18)
        {
          v22 = 0;
          v23 = *a1;
        }

        else
        {
          v23 = 0;
        }

        result = v12 + (v23 | v22) + 1;
        break;
      default:
        goto LABEL_28;
    }
  }

  return result;
}

void sub_1C10EDA98(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93AF0, &qword_1C12B5C70);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v11 + 80) & 0xF8 | 7;
  v16 = *(v8 + 64) + v15;
  v17 = *(*(v10 - 8) + 64) + 7;
  v18 = (v17 & 0xFFFFFFFFFFFFFFF8) + 8;
  v19 = (v16 & ~v15) + v18;
  if (v14 >= a3)
  {
    v22 = 0;
  }

  else
  {
    if (v19)
    {
      v20 = 2;
    }

    else
    {
      v20 = a3 - v14 + 1;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }
  }

  if (a2 <= v14)
  {
    switch(v22)
    {
      case 1:
        *(a1 + v19) = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        return;
      case 2:
        *(a1 + v19) = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        return;
      case 3:
LABEL_51:
        __break(1u);
        return;
      case 4:
        *(a1 + v19) = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (!a2)
        {
          return;
        }

LABEL_35:
        if (v9 >= v13)
        {
          v27 = a1;
          v28 = a2;
          v12 = v9;
          v10 = v7;
        }

        else
        {
          v25 = ((a1 + v16) & ~v15);
          if (v13 < a2)
          {
            if ((v17 & 0xFFFFFFF8) != 0xFFFFFFF8)
            {
              v26 = ~v13 + a2;
              bzero(v25, v18);
              *v25 = v26;
            }

            return;
          }

          if (v12 < 0x7FFFFFFE)
          {
            v29 = ((v25 + v17) & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFE)
            {
              *v29 = 0;
              *v29 = a2 - 0x7FFFFFFF;
            }

            else
            {
              *v29 = a2;
            }

            return;
          }

          v27 = v25;
          v28 = a2;
        }

        __swift_storeEnumTagSinglePayload(v27, v28, v12, v10);
        break;
    }
  }

  else
  {
    if (v19)
    {
      v23 = 1;
    }

    else
    {
      v23 = a2 - v14;
    }

    if (v19)
    {
      v24 = ~v14 + a2;
      bzero(a1, (v16 & ~v15) + v18);
      *a1 = v24;
    }

    switch(v22)
    {
      case 1:
        *(a1 + v19) = v23;
        break;
      case 2:
        *(a1 + v19) = v23;
        break;
      case 3:
        goto LABEL_51;
      case 4:
        *(a1 + v19) = v23;
        break;
      default:
        return;
    }
  }
}

void sub_1C10EDD60(uint64_t a1)
{
  sub_1C10EDF14(319, &qword_1EDE80190, type metadata accessor for PhotosMemoryCellTextOverlayModel.CombinedTitlesAttributes, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C10EDF14(319, &qword_1EDE7CA38, type metadata accessor for TextOverlayConfiguration, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C1261F70();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C10EDF14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C10EDFF0(uint64_t a1)
{
  sub_1C10EDF14(319, &qword_1EDE7B8A8, MEMORY[0x1E6980FE0], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for PhotosMemoryTitleLayout(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 65282 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65282 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65283;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PhotosMemoryTitleLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

_BYTE *sub_1C10EE21C(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1C10EE320(uint64_t a1)
{
  sub_1C10EDF14(319, &qword_1EDE7D760, type metadata accessor for TextConfiguration, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

_BYTE *storeEnumTagSinglePayload for TextOverlayConfiguration.Layout(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C10EE51C(uint64_t a1)
{
  result = type metadata accessor for TextAttributes(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C10EE5C0(uint64_t a1)
{
  type metadata accessor for PhotosMemoryTitleLook(319);
  if (v1 <= 0x3F)
  {
    sub_1C0F99B60(319, &qword_1EDE76A80, MEMORY[0x1E69E6530]);
    if (v2 <= 0x3F)
    {
      sub_1C12647F0();
      if (v3 <= 0x3F)
      {
        sub_1C1263880();
        if (v4 <= 0x3F)
        {
          sub_1C0F99B60(319, &qword_1EDE7B4C0, MEMORY[0x1E69E7DE0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1C10EE6E4(uint64_t a1)
{
  result = type metadata accessor for TextAttributes(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C10EE76C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PhotosMemoryCellTextOverlayModel(319);
    if (v2 <= 0x3F)
    {
      sub_1C10EED68(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C10EE80C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE93BB8, &unk_1C12B60D0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v7 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = v7;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v6 + 64);
  v14 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v15 = v8;
  if (a2 <= v12)
  {
    goto LABEL_26;
  }

  v16 = ((v14 + ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14) + *(*(v8 - 8) + 64);
  v17 = 8 * v16;
  if (v16 > 3)
  {
    goto LABEL_10;
  }

  v20 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
  if (HIWORD(v20))
  {
    v18 = *(a1 + v16);
    if (v18)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v20 <= 0xFF)
    {
      if (v20 < 2)
      {
        goto LABEL_26;
      }

LABEL_10:
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_26;
      }

LABEL_18:
      v21 = (v18 - 1) << v17;
      if (v16 > 3)
      {
        v21 = 0;
      }

      if (v16)
      {
        if (v16 > 3)
        {
          LODWORD(v16) = 4;
        }

        switch(v16)
        {
          case 2:
            LODWORD(v16) = *a1;
            break;
          case 3:
            LODWORD(v16) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v16) = *a1;
            break;
          default:
            LODWORD(v16) = *a1;
            break;
        }
      }

      return v12 + (v16 | v21) + 1;
    }

    v18 = *(a1 + v16);
    if (*(a1 + v16))
    {
      goto LABEL_18;
    }
  }

LABEL_26:
  if (v7 == v12)
  {
    v22 = a1;
    v10 = v7;
    v15 = v5;
LABEL_33:

    return __swift_getEnumTagSinglePayload(v22, v10, v15);
  }

  v23 = ((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  if ((v11 & 0x80000000) != 0)
  {
    v22 = ((v23 + v14 + 8) & ~v14);
    goto LABEL_33;
  }

  v24 = *v23;
  if (v24 >= 0xFFFFFFFF)
  {
    LODWORD(v24) = -1;
  }

  return (v24 + 1);
}

void sub_1C10EEA70(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE93BB8, &unk_1C12B60D0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v9 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = v9;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v8 + 64);
  v16 = *(v11 + 80);
  v17 = ((v16 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v16) + *(*(v10 - 8) + 64);
  v18 = 8 * v17;
  if (a3 <= v14)
  {
    v19 = 0;
  }

  else if (v17 <= 3)
  {
    v22 = ((a3 - v14 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v14 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v17] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        return;
      case 2:
        *&a1[v17] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        return;
      case 3:
LABEL_51:
        __break(1u);
        return;
      case 4:
        *&a1[v17] = 0;
        goto LABEL_29;
      default:
LABEL_29:
        if (!a2)
        {
          return;
        }

LABEL_30:
        if (v9 == v14)
        {
          v25 = a1;
          v26 = a2;
          v12 = v9;
          v10 = v7;
        }

        else
        {
          v27 = (&a1[v15 + 7] & 0xFFFFFFFFFFFFFFF8);
          if ((v13 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v28 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v28 = (a2 - 1);
            }

            *v27 = v28;
            return;
          }

          v25 = ((v27 + v16 + 8) & ~v16);
          v26 = a2;
        }

        __swift_storeEnumTagSinglePayload(v25, v26, v12, v10);
        break;
    }
  }

  else
  {
    v20 = ~v14 + a2;
    if (v17 < 4)
    {
      v21 = (v20 >> v18) + 1;
      if (v17)
      {
        v24 = v20 & ~(-1 << v18);
        bzero(a1, v17);
        if (v17 == 3)
        {
          *a1 = v24;
          a1[2] = BYTE2(v24);
        }

        else if (v17 == 2)
        {
          *a1 = v24;
        }

        else
        {
          *a1 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        a1[v17] = v21;
        break;
      case 2:
        *&a1[v17] = v21;
        break;
      case 3:
        goto LABEL_51;
      case 4:
        *&a1[v17] = v21;
        break;
      default:
        return;
    }
  }
}

void sub_1C10EED68(uint64_t a1)
{
  if (!qword_1EDE7BFE0)
  {
    sub_1C10D9AFC();
    v1 = sub_1C1262C00();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE7BFE0);
    }
  }
}

unint64_t sub_1C10EEDD4()
{
  result = qword_1EBE93C40;
  if (!qword_1EBE93C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93C40);
  }

  return result;
}

void sub_1C10EEE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_23();
  v21 = v20;
  v23 = v22;
  v105 = v24;
  OUTLINED_FUNCTION_0();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v28;
  v30 = v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93C48, &qword_1C12B6268);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v31);
  v33 = (v94 - v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93C50, &qword_1C12B6270);
  OUTLINED_FUNCTION_0();
  v101 = v34;
  v102 = v35;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_34();
  v108 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93C58, &qword_1C12B6278);
  OUTLINED_FUNCTION_0();
  v103 = v38;
  v104 = v39;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_34();
  v109 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93C60, &qword_1C12B6280);
  v43 = sub_1C10F0608();
  *v33 = sub_1C1009330(v42, v43, v44, v45, v46, v47);
  v33[1] = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93C78, &unk_1C12B6298);
  v50 = *(v23 + 16);
  v51 = *(v23 + 24);
  v52 = v33 + *(v49 + 44);
  v53 = v33;
  v97 = v33;
  v111 = v21;
  v54 = v50;
  sub_1C10EF554(v21, v50, v51, v52);
  v55 = *(v26 + 16);
  v113 = v26 + 16;
  v114 = v55;
  v110 = v30;
  v55(v30, v21, v23);
  v112 = *(v26 + 80);
  v56 = (v112 + 32) & ~v112;
  v107 = v29;
  v57 = swift_allocObject();
  *(v57 + 16) = v54;
  *(v57 + 24) = v51;
  v58 = *(v26 + 32);
  v58(v57 + v56, v30, v23);
  v106 = v58;
  v59 = v26 + 32;
  v60 = (v53 + *(v115 + 36));
  *v60 = sub_1C10F0744;
  v60[1] = v57;
  v60[2] = 0;
  v60[3] = 0;
  v61 = v111;
  v62 = (*(v51 + 40))(v54, v51);
  v94[1] = v63;
  v116 = v62;
  v117 = v63;
  v64 = v110;
  v65 = v23;
  v95 = v23;
  v114(v110, v61, v23);
  v96 = v56;
  v66 = swift_allocObject();
  *(v66 + 16) = v54;
  *(v66 + 24) = v51;
  v67 = v54;
  v100 = v59;
  v58(v66 + v56, v64, v65);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91A60, &qword_1C12AB090);
  v69 = sub_1C10F07D0();
  v70 = sub_1C1073248();
  OUTLINED_FUNCTION_2_1();
  v71 = v97;
  sub_1C1265000();

  sub_1C0FD1A5C(v71, &qword_1EBE93C48, &qword_1C12B6268);
  v72 = v51;
  v73 = *(v51 + 48);
  v74 = v111;
  v75 = v67;
  v99 = v67;
  v98 = v72;
  v76 = v73(v67, v72);
  v97 = v77;
  v120 = v76;
  v121 = v77;
  v78 = v110;
  v79 = v95;
  v114(v110, v74, v95);
  v80 = v96;
  v81 = swift_allocObject();
  *(v81 + 16) = v75;
  *(v81 + 24) = v72;
  v106(v81 + v80, v78, v79);
  v116 = v115;
  v117 = v68;
  v118 = v69;
  v119 = v70;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v83 = v101;
  OUTLINED_FUNCTION_2_1();
  sub_1C1265000();

  v84 = OUTLINED_FUNCTION_5_5();
  v85(v84);
  v86 = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE93BB8, &unk_1C12B60D0);
  v87 = v111;
  sub_1C1262BF0();
  v88 = v110;
  v89 = v86;
  v114(v110, v87, v86);
  v90 = swift_allocObject();
  v91 = v98;
  *(v90 + 16) = v99;
  *(v90 + 24) = v91;
  v106(v90 + v80, v88, v89);
  v116 = v83;
  v117 = v68;
  v118 = OpaqueTypeConformance2;
  v119 = v70;
  swift_getOpaqueTypeConformance2();
  v92 = v103;
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_2_1();
  v93 = v109;
  sub_1C1265000();

  (*(v104 + 8))(v93, v92);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C10EF554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93C68, &qword_1C12B6288);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93B08, &qword_1C12B5C88);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26 - v12;
  v14 = type metadata accessor for TextOverlayConfiguration(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PhotosMemoryCellTextOverlay(0, a2, a3, v17);
  sub_1C10EC0F0(v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1C0FD1A5C(v13, &qword_1EBE93B08, &qword_1C12B5C88);
    return __swift_storeEnumTagSinglePayload(a4, 1, 1, v8);
  }

  else
  {
    sub_1C10F0AD8(v13, v16, type metadata accessor for TextOverlayConfiguration);
    v19 = *&v16[*(v14 + 24)];
    *v10 = v16[*(v14 + 32)];
    *(v10 + 1) = v19;
    v10[16] = 0;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93C70, &qword_1C12B6290);
    sub_1C10EF808(v16, a1, a2, a3, &v10[*(v20 + 56)]);
    sub_1C10EFE40(v16, a1, a2, a3, &v10[*(v20 + 60)]);
    LOBYTE(v20) = sub_1C1264470();
    sub_1C12628A0();
    v21 = &v10[*(v8 + 36)];
    *v21 = v20;
    *(v21 + 1) = v22;
    *(v21 + 2) = v23;
    *(v21 + 3) = v24;
    *(v21 + 4) = v25;
    v21[40] = 0;
    sub_1C0FE4040(v10, a4, &qword_1EBE93C68, &qword_1C12B6288);
    __swift_storeEnumTagSinglePayload(a4, 0, 1, v8);
    return sub_1C10F0DB0(v16, type metadata accessor for TextOverlayConfiguration);
  }
}

uint64_t sub_1C10EF808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20[0] = a4;
  v20[1] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93C88, &qword_1C12B62B0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93BB0, &qword_1C12B6058);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v20 - v12;
  v14 = type metadata accessor for TextConfiguration(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C0FE5654(a1, v13, &qword_1EBE93BB0, &qword_1C12B6058);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1C0FD1A5C(v13, &qword_1EBE93BB0, &qword_1C12B6058);
    v17 = 1;
  }

  else
  {
    sub_1C10F0AD8(v13, v16, type metadata accessor for TextConfiguration);
    type metadata accessor for PhotosMemoryCellTextOverlay(0, a3, v20[0], v18);
    sub_1C10EFA2C(v16, v10);
    sub_1C10F0DB0(v16, type metadata accessor for TextConfiguration);
    sub_1C0FE4040(v10, a5, &qword_1EBE93C88, &qword_1C12B62B0);
    v17 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a5, v17, 1, v8);
}

void *sub_1C10EFA2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CA0, &qword_1C12B62C8);
  MEMORY[0x1EEE9AC00](v34);
  v4 = &v33 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93C98, &qword_1C12B62C0);
  v6 = *(v5 - 8);
  v35 = v5;
  v36 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CB0, &qword_1C12B62D8);
  v37 = *(v9 - 8);
  v38 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = sub_1C10EABEC(a1);
  v14 = v13;
  v16 = v15;
  v33 = v17;
  v18 = a1 + *(type metadata accessor for TextConfiguration(0) + 20);
  v19 = *(type metadata accessor for PhotosMemoryTitleLook(0) + 20);
  KeyPath = swift_getKeyPath();
  v21 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CA8, &qword_1C12B62D0) + 36)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90B10, &qword_1C12A6BB8);
  sub_1C0FE5654(&v18[v19], v21 + *(v22 + 28), &qword_1EBE93AE0, &unk_1C12B5C60);
  *v21 = KeyPath;
  *v4 = v12;
  *(v4 + 1) = v14;
  v4[16] = v16 & 1;
  *(v4 + 3) = v33;
  v23 = &v18[*(type metadata accessor for TextAttributes(0) + 20)];
  v24 = *v23;
  LOBYTE(v21) = v23[8];
  v25 = swift_getKeyPath();
  v26 = v34;
  v27 = &v4[*(v34 + 36)];
  *v27 = v25;
  *(v27 + 1) = v24;
  v27[16] = v21;
  v28 = sub_1C10F0C40();
  sub_1C1264AB0();
  sub_1C0FD1A5C(v4, &qword_1EBE93CA0, &qword_1C12B62C8);
  __src[0] = v26;
  __src[1] = v28;
  swift_getOpaqueTypeConformance2();
  v29 = v35;
  sub_1C1264B10();
  (*(v36 + 8))(v8, v29);
  sub_1C12659A0();
  sub_1C1263390();
  v30 = v39;
  (*(v37 + 32))(v39, v11, v38);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93C88, &qword_1C12B62B0);
  return memcpy((v30 + *(v31 + 36)), __src, 0x70uLL);
}

uint64_t sub_1C10EFE40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a3;
  v27 = a4;
  v28 = a2;
  v29 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93C88, &qword_1C12B62B0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93C90, &qword_1C12B62B8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93BB0, &qword_1C12B6058);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v26 - v13;
  v15 = type metadata accessor for TextConfiguration(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for TextOverlayConfiguration(0);
  sub_1C0FE5654(a1 + *(v18 + 20), v14, &qword_1EBE93BB0, &qword_1C12B6058);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C0FD1A5C(v14, &qword_1EBE93BB0, &qword_1C12B6058);
    v19 = 1;
    v20 = v29;
  }

  else
  {
    sub_1C10F0AD8(v14, v17, type metadata accessor for TextConfiguration);
    v22 = type metadata accessor for PhotosMemoryCellTextOverlay(0, v26, v27, v21);
    sub_1C10EFA2C(v17, v8);
    v30 = sub_1C10F0128(v22);
    v31 = v23;
    sub_1C10F0B34();
    sub_1C0FDB9AC();
    sub_1C1264C80();

    sub_1C0FD1A5C(v8, &qword_1EBE93C88, &qword_1C12B62B0);
    sub_1C10F0DB0(v17, type metadata accessor for TextConfiguration);
    v24 = v29;
    sub_1C0FE4040(v11, v29, &qword_1EBE93C90, &qword_1C12B62B8);
    v19 = 0;
    v20 = v24;
  }

  return __swift_storeEnumTagSinglePayload(v20, v19, 1, v9);
}

uint64_t sub_1C10F0128(uint64_t a1)
{
  v3 = sub_1C1265E50();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + *(a1 + 36));
  v8 = *(v7 + 80);
  if (v8)
  {
    v9 = *(v7 + 72);
    v11 = a1 + 16;
    v10 = *(a1 + 16);
    v12 = *(*(v11 + 8) + 8);
    v13 = *(v12 + 8);

    if (v13(v10, v12))
    {
      sub_1C1265DF0();
      v14 = static String.photosSwiftUICoreLocalized(_:)(v6);
      v16 = v15;
      (*(v4 + 8))(v6, v3);
    }

    else
    {
      v14 = 0;
      v16 = 0xE000000000000000;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90800, &unk_1C12A45B0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1C12A3440;
    *(v17 + 32) = v9;
    *(v17 + 40) = v8;
    *(v17 + 48) = v14;
    *(v17 + 56) = v16;
    v19[1] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906A0, &qword_1C12A3E60);
    sub_1C0FDB6D4(&qword_1EDE7B700, &qword_1EBE906A0, &qword_1C12A3E60, MEMORY[0x1E69E6310]);
    v8 = sub_1C1265D70();
  }

  return v8;
}

void sub_1C10F0344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PhotosMemoryCellTextOverlay(0, a2, a3, a4);
  v6 = (*(a3 + 40))(a2, a3);
  v8 = sub_1C10E8900(v6, v7);
  v9 = (*(a3 + 48))(a2, a3, v8);
  sub_1C10E89A8(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE93BB8, &unk_1C12B60D0);
  sub_1C1262BF0();
  sub_1C10E8A18(v11, 0);
}

uint64_t sub_1C10F041C(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v9 = *(result + 8);
  v11 = *a2;
  v10 = a2[1];
  if (!v10)
  {
    if (!v9)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!v9 || (v11 == *result ? (v12 = v10 == v9) : (v12 = 0), !v12 && (result = sub_1C1266D50(), (result & 1) == 0)))
  {
LABEL_10:
    type metadata accessor for PhotosMemoryCellTextOverlay(0, a4, a5, v9);

    return a6(v11, v10);
  }

  return result;
}

void sub_1C10F04CC(double *result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  if (*a2 != *result)
  {
    type metadata accessor for PhotosMemoryCellTextOverlay(0, a4, a5, a4);
    sub_1C10E8A18(v5, 0);
  }
}

uint64_t sub_1C10F0528()
{
  sub_1C1264700();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_13();
  (*(v3 + 104))(v2 - v1, *MEMORY[0x1E6980F00]);
  sub_1C10D9AFC();
  return sub_1C1262BD0();
}

unint64_t sub_1C10F0608()
{
  result = qword_1EDE77470;
  if (!qword_1EDE77470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93C60, &qword_1C12B6280);
    sub_1C10F068C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77470);
  }

  return result;
}

unint64_t sub_1C10F068C()
{
  result = qword_1EDE77478;
  if (!qword_1EDE77478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93C68, &qword_1C12B6288);
    sub_1C0FDB6D4(qword_1EDE78960, &qword_1EBE93C70, &qword_1C12B6290, &unk_1C12B6408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77478);
  }

  return result;
}

void sub_1C10F0744()
{
  OUTLINED_FUNCTION_23_7();
  v4 = type metadata accessor for PhotosMemoryCellTextOverlay(v0, v1, v2, v3);
  OUTLINED_FUNCTION_15(v4);
  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_23_7();

  sub_1C10F0344(v5, v6, v7, v8);
}

unint64_t sub_1C10F07D0()
{
  result = qword_1EDE772C8;
  if (!qword_1EDE772C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93C48, &qword_1C12B6268);
    sub_1C0FDB6D4(&qword_1EDE76BD0, &qword_1EBE93C80, &qword_1C12B62A8, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE772C8);
  }

  return result;
}

uint64_t sub_1C10F08A0(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  v10 = type metadata accessor for PhotosMemoryCellTextOverlay(0, v8, v9, a4);
  OUTLINED_FUNCTION_15(v10);
  OUTLINED_FUNCTION_46_2();
  return sub_1C10F041C(a1, a2, v4 + v11, v8, v9, a3);
}

uint64_t objectdestroy_108Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  type metadata accessor for PhotosMemoryCellTextOverlay(0, v7, *(v4 + 24), a4);
  OUTLINED_FUNCTION_55_1();
  OUTLINED_FUNCTION_51_2();
  (*(v8 + 8))(v6, v7);

  v9 = *(v5 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE93BB8, &unk_1C12B60D0);
  OUTLINED_FUNCTION_3();
  (*(v10 + 8))(v6 + v9);

  return swift_deallocObject();
}

void sub_1C10F0A48()
{
  OUTLINED_FUNCTION_18_0();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = type metadata accessor for PhotosMemoryCellTextOverlay(0, v3, v4, v5);
  OUTLINED_FUNCTION_15(v6);
  OUTLINED_FUNCTION_46_2();

  sub_1C10F04CC(v2, v0, v1 + v7, v3, v4);
}

uint64_t sub_1C10F0AD8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_18();
  v5(v4);
  return a2;
}

unint64_t sub_1C10F0B34()
{
  result = qword_1EDE77388;
  if (!qword_1EDE77388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93C88, &qword_1C12B62B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93C98, &qword_1C12B62C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93CA0, &qword_1C12B62C8);
    sub_1C10F0C40();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77388);
  }

  return result;
}

unint64_t sub_1C10F0C40()
{
  result = qword_1EDE7BDB0;
  if (!qword_1EDE7BDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93CA0, &qword_1C12B62C8);
    sub_1C10F0CF8();
    sub_1C0FDB6D4(&unk_1EDE7B8F0, &unk_1EBE91DC0, &qword_1C12AA0A0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BDB0);
  }

  return result;
}

unint64_t sub_1C10F0CF8()
{
  result = qword_1EDE7BE90;
  if (!qword_1EDE7BE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93CA8, &qword_1C12B62D0);
    sub_1C0FDB6D4(&qword_1EDE7B918, &qword_1EBE90B10, &qword_1C12A6BB8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BE90);
  }

  return result;
}

uint64_t sub_1C10F0DB0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C10F0E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v139 = a2;
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v129 = a1;
  swift_getTupleTypeMetadata3();
  v4 = sub_1C1265B00();
  v113[3] = swift_getWitnessTable();
  v113[4] = v4;
  v5 = sub_1C12654C0();
  v126 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v122 = v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v121 = v113 - v8;
  swift_getTupleTypeMetadata3();
  v9 = sub_1C1265B00();
  v113[1] = swift_getWitnessTable();
  v113[2] = v9;
  v10 = sub_1C12654C0();
  v138 = v5;
  v11 = sub_1C1263C30();
  v123 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v130 = (v113 - v12);
  v136 = v10;
  v125 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v118 = v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v117 = v113 - v16;
  v128 = v3;
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  v113[0] = swift_getWitnessTable();
  v17 = sub_1C12655A0();
  swift_getTupleTypeMetadata2();
  v18 = sub_1C1265B00();
  swift_getWitnessTable();
  v19 = sub_1C12654C0();
  v124 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v116 = v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v115 = v113 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91DD0, &unk_1C12AC500);
  v23 = sub_1C1263190();
  v140 = v19;
  v24 = sub_1C1263C30();
  v120 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v119 = v113 - v25;
  v141 = v17;
  v26 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v113 - v28;
  v134 = v23;
  v30 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = v113 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v114 = v113 - v35;
  v135 = v36;
  v137 = v11;
  v37 = v127;
  v38 = sub_1C1263C30();
  v132 = *(v38 - 8);
  v133 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v131 = v113 - v40;
  switch(*v37)
  {
    case 1:
      MEMORY[0x1EEE9AC00](v39);
      v90 = v128;
      v89 = v129;
      v113[-6] = v2;
      v113[-5] = v90;
      *&v113[-4] = v89[2];
      v113[-2] = v37;
      sub_1C1012734(v18);
      v91 = v116;
      sub_1C12654B0();
      v92 = v140;
      WitnessTable = swift_getWitnessTable();
      sub_1C0FDBA4C();
      v94 = *(v124 + 8);
      v124 += 8;
      v130 = v94;
      v94(v91, v92);
      sub_1C0FDBA4C();
      v95 = swift_getWitnessTable();
      v96 = sub_1C0FDB6D4(&qword_1EDE7B950, &unk_1EBE91DD0, &unk_1C12AC500, MEMORY[0x1E6980A18]);
      v152 = v95;
      v153 = v96;
      v97 = swift_getWitnessTable();
      v98 = v119;
      sub_1C1112E18();
      v150 = v97;
      v151 = WitnessTable;
      v99 = v135;
      swift_getWitnessTable();
      v100 = swift_getWitnessTable();
      v101 = swift_getWitnessTable();
      v148 = v100;
      v149 = v101;
      swift_getWitnessTable();
      v56 = v131;
      sub_1C1112D68();
      (*(v120 + 8))(v98, v99);
      v102 = v130;
      v130(v116, v92);
      v102(v115, v92);
      break;
    case 2:
      v58 = sub_1C12638D0();
      MEMORY[0x1EEE9AC00](v58);
      v60 = v128;
      v59 = v129;
      v113[-6] = v2;
      v113[-5] = v60;
      *&v113[-4] = v59[2];
      v113[-2] = v37;
      v61 = v118;
      sub_1C12654B0();
      v62 = v136;
      v63 = swift_getWitnessTable();
      sub_1C0FDBA4C();
      v64 = *(v125 + 8);
      v125 += 8;
      v129 = v64;
      (v64)(v61, v62);
      sub_1C0FDBA4C();
      v65 = swift_getWitnessTable();
      sub_1C1112D68();
      v66 = swift_getWitnessTable();
      v67 = sub_1C0FDB6D4(&qword_1EDE7B950, &unk_1EBE91DD0, &unk_1C12AC500, MEMORY[0x1E6980A18]);
      v158 = v66;
      v159 = v67;
      v68 = swift_getWitnessTable();
      v69 = swift_getWitnessTable();
      v156 = v68;
      v157 = v69;
      swift_getWitnessTable();
      v154 = v63;
      v155 = v65;
      v70 = v137;
      swift_getWitnessTable();
      v71 = v130;
      v56 = v131;
      sub_1C1112E18();
      (*(v123 + 8))(v71, v70);
      v72 = v129;
      (v129)(v118, v62);
      v72(v117, v62);
      break;
    case 3:
      v73 = sub_1C12638D0();
      MEMORY[0x1EEE9AC00](v73);
      v75 = v128;
      v74 = v129;
      v113[-6] = v2;
      v113[-5] = v75;
      *&v113[-4] = v74[2];
      v113[-2] = v37;
      v76 = v122;
      sub_1C12654B0();
      v77 = v138;
      v78 = swift_getWitnessTable();
      sub_1C0FDBA4C();
      v79 = *(v126 + 8);
      v126 += 8;
      v129 = v79;
      (v79)(v76, v77);
      sub_1C0FDBA4C();
      v80 = swift_getWitnessTable();
      v81 = v78;
      sub_1C1112E18();
      v82 = swift_getWitnessTable();
      v83 = sub_1C0FDB6D4(&qword_1EDE7B950, &unk_1EBE91DD0, &unk_1C12AC500, MEMORY[0x1E6980A18]);
      v172 = v82;
      v173 = v83;
      v84 = swift_getWitnessTable();
      v85 = swift_getWitnessTable();
      v170 = v84;
      v171 = v85;
      swift_getWitnessTable();
      v168 = v80;
      v169 = v81;
      v86 = v137;
      swift_getWitnessTable();
      v87 = v130;
      v56 = v131;
      sub_1C1112E18();
      (*(v123 + 8))(v87, v86);
      v88 = v129;
      (v129)(v122, v77);
      v88(v121, v77);
      break;
    default:
      v41 = sub_1C1263AA0();
      MEMORY[0x1EEE9AC00](v41);
      v43 = v128;
      v42 = v129;
      v113[-6] = v2;
      v113[-5] = v43;
      *&v113[-4] = v42[2];
      v113[-2] = v37;
      sub_1C1265590();
      v44 = v30;
      v45 = v141;
      v46 = swift_getWitnessTable();
      sub_1C1264DD0();
      (*(v26 + 8))(v29, v45);
      v47 = sub_1C0FDB6D4(&qword_1EDE7B950, &unk_1EBE91DD0, &unk_1C12AC500, MEMORY[0x1E6980A18]);
      v146 = v46;
      v147 = v47;
      v48 = v134;
      v49 = swift_getWitnessTable();
      sub_1C0FDBA4C();
      v50 = *(v44 + 8);
      v129 = (v44 + 8);
      v130 = v50;
      v50(v33, v48);
      sub_1C0FDBA4C();
      v51 = swift_getWitnessTable();
      v52 = v119;
      sub_1C1112D68();
      v144 = v49;
      v145 = v51;
      v53 = v135;
      v128 = swift_getWitnessTable();
      v54 = swift_getWitnessTable();
      v55 = swift_getWitnessTable();
      v142 = v54;
      v143 = v55;
      swift_getWitnessTable();
      v56 = v131;
      sub_1C1112D68();
      (*(v120 + 8))(v52, v53);
      v57 = v130;
      v130(v33, v48);
      v57(v114, v48);
      break;
  }

  v103 = swift_getWitnessTable();
  v104 = sub_1C0FDB6D4(&qword_1EDE7B950, &unk_1EBE91DD0, &unk_1C12AC500, MEMORY[0x1E6980A18]);
  v166 = v103;
  v167 = v104;
  v105 = swift_getWitnessTable();
  v106 = swift_getWitnessTable();
  v164 = v105;
  v165 = v106;
  v107 = swift_getWitnessTable();
  v108 = swift_getWitnessTable();
  v109 = swift_getWitnessTable();
  v162 = v108;
  v163 = v109;
  v110 = swift_getWitnessTable();
  v160 = v107;
  v161 = v110;
  v111 = v133;
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  return (*(v132 + 8))(v56, v111);
}

uint64_t sub_1C10F1F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20[0] = a5;
  v20[1] = a6;
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v10 = sub_1C12655A0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v20 - v15;
  sub_1C1263AB0();
  v20[4] = a2;
  v20[5] = a3;
  v20[6] = a4;
  v20[7] = v20[0];
  v20[8] = a1;
  sub_1C1265590();
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDBA4C();
  v18 = *(v11 + 8);
  v18(v13, v10);
  (*(v11 + 16))(v13, v16, v10);
  v22 = 0;
  v23 = 0;
  v24[0] = v13;
  v24[1] = &v22;
  v21[0] = v10;
  v21[1] = MEMORY[0x1E6981840];
  v20[10] = WitnessTable;
  v20[11] = MEMORY[0x1E6981838];
  sub_1C119EE80(v24, 2, v21);
  v18(v16, v10);
  return (v18)(v13, v10);
}

void sub_1C10F2180()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v36 = v8;
  OUTLINED_FUNCTION_1();
  v35 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_30();
  v37 = (v11 - v12);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_30();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v34 - v23;
  v41 = v25;
  v42 = v26;
  v43 = v27;
  v44 = v28;
  type metadata accessor for TitleSubtitleStack(0, &v41);
  OUTLINED_FUNCTION_23_7();
  sub_1C0FDBA4C();
  v29 = v1;
  sub_1C0FDBA4C();
  (*(v17 + 16))(v21, v24, v7);
  v41 = v21;
  v30 = v35;
  v31 = v37;
  (*(v35 + 16))(v37, v15, v5);
  v42 = v31;
  v40[0] = v7;
  v40[1] = v5;
  v38 = v3;
  v39 = v29;
  sub_1C119EE80(&v41, 2, v40);
  v32 = *(v30 + 8);
  v32(v15, v5);
  v33 = *(v17 + 8);
  v33(v24, v7);
  v32(v37, v5);
  v33(v21, v7);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C10F23D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a6;
  v34 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v33 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v32 - v20;
  v42 = v22;
  v43 = v23;
  v44 = v24;
  v45 = v25;
  type metadata accessor for TitleSubtitleStack(0, &v42);
  sub_1C0FDBA4C();
  v26 = a5;
  sub_1C0FDBA4C();
  (*(v15 + 16))(v18, v21, a2);
  v42 = v18;
  v27 = v33;
  v28 = v34;
  (*(v34 + 16))(v33, v13, a3);
  v40 = 0;
  v41 = 0;
  v43 = v27;
  v44 = &v40;
  v39[0] = a2;
  v39[1] = a3;
  v39[2] = MEMORY[0x1E6981840];
  v36 = a4;
  v37 = v26;
  v38 = MEMORY[0x1E6981838];
  sub_1C119EE80(&v42, 3, v39);
  v29 = *(v28 + 8);
  v29(v13, a3);
  v30 = *(v15 + 8);
  v30(v21, a2);
  v29(v27, a3);
  return (v30)(v18, a2);
}

uint64_t sub_1C10F2684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a6;
  v33 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v34 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v32 - v20;
  v42 = v22;
  v43 = v23;
  v44 = v24;
  v45 = v25;
  type metadata accessor for TitleSubtitleStack(0, &v42);
  sub_1C0FDBA4C();
  v26 = a4;
  sub_1C0FDBA4C();
  v40 = 0;
  v41 = 0;
  v42 = &v40;
  (*(v15 + 16))(v18, v21, a3);
  v43 = v18;
  v28 = v33;
  v27 = v34;
  (*(v33 + 16))(v34, v13, a2);
  v44 = v27;
  v39[0] = MEMORY[0x1E6981840];
  v39[1] = a3;
  v39[2] = a2;
  v36 = MEMORY[0x1E6981838];
  v37 = a5;
  v38 = v26;
  sub_1C119EE80(&v42, 3, v39);
  v29 = *(v28 + 8);
  v29(v13, a2);
  v30 = *(v15 + 8);
  v30(v21, a3);
  v29(v27, a2);
  return (v30)(v18, a3);
}

uint64_t sub_1C10F2938()
{
  v0 = sub_1C1262720();
  __swift_allocate_value_buffer(v0, qword_1EDE77700);
  __swift_project_value_buffer(v0, qword_1EDE77700);
  return sub_1C12626E0();
}

uint64_t sub_1C10F29C0(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_4_4();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_15(v5);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_38_0();
  sub_1C0FE5654(a1, v1, &qword_1EBE93AE0, &unk_1C12B5C60);
  return sub_1C1263770();
}

uint64_t sub_1C10F2A54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93B08, &qword_1C12B5C88);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C10F2AE0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_18();
  v5(v4);
  return a2;
}

uint64_t sub_1C10F2B3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93B00, &qword_1C12B5C80);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C10F2BAC(uint64_t a1)
{
  v4 = *(v1 + 3);
  v16 = *(v1 + 2);
  v5 = *(v1 + 4);
  v6 = *(v1 + 5);
  v7 = *(v1 + 11);
  v8 = *(v1 + 12);
  v9 = v1[15];
  v10 = v1[16];
  v11 = v1[17];
  v12 = v1[18];
  swift_task_alloc();
  OUTLINED_FUNCTION_32_6();
  *(v2 + 16) = v13;
  *v13 = v14;
  v13[1] = sub_1C0FA3CCC;

  return sub_1C10E8C54(v9, v10, v11, v12, a1, v16, v4, v5, v6, (v1 + 6), v7, v8);
}

uint64_t objectdestroyTm_6()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C10F2D10()
{
  OUTLINED_FUNCTION_18_0();
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_32_6();
  *(v3 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_1C0FA3CCC;

  return sub_1C10E7884(v2, v0, v5, v4);
}

void sub_1C10F2DBC(uint64_t a1)
{
  sub_1C0F99B60(319, &qword_1EDE7B4C0, MEMORY[0x1E69E7DE0]);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C10F2E80(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(a3 + 24);
  v9 = *(v8 - 8);
  if (v7 <= *(v9 + 84))
  {
    v10 = *(v9 + 84);
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = *(v6 + 80);
  v12 = *(*(v5 - 8) + 64);
  v13 = *(v9 + 80);
  if (v10 <= 0xFC)
  {
    v14 = 252;
  }

  else
  {
    v14 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = a2 - v14;
  if (a2 <= v14)
  {
    goto LABEL_28;
  }

  v16 = ((v12 + v13 + ((v11 + 17) & ~v11)) & ~v13) + *(*(v8 - 8) + 64);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((v15 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (v20 < 2)
    {
LABEL_28:
      if (v10 > 0xFC)
      {
        v25 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v11 + 17) & ~v11;
        if (v7 != v14)
        {
          v25 = (v25 + v12 + v13) & ~v13;
          v7 = *(v9 + 84);
          v5 = v8;
        }

        return __swift_getEnumTagSinglePayload(v25, v7, v5);
      }

      else
      {
        v24 = *a1;
        if (v24 >= 4)
        {
          return v24 - 3;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_28;
  }

LABEL_18:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v22 = v16;
    }

    else
    {
      v22 = 4;
    }

    switch(v22)
    {
      case 2:
        v23 = *a1;
        break;
      case 3:
        v23 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v23 = *a1;
        break;
      default:
        v23 = *a1;
        break;
    }
  }

  else
  {
    v23 = 0;
  }

  return v14 + (v23 | v21) + 1;
}

void sub_1C10F3098(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(a4 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v9 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0xFC)
  {
    v14 = 252;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v8 + 80);
  v16 = *(*(v7 - 8) + 64);
  v17 = *(v11 + 80);
  v18 = ((v16 + v17 + ((v15 + 17) & ~v15)) & ~v17) + *(*(v10 - 8) + 64);
  v19 = 8 * v18;
  v20 = a3 >= v14;
  v21 = a3 - v14;
  if (v21 != 0 && v20)
  {
    if (v18 <= 3)
    {
      v25 = ((v21 + ~(-1 << v19)) >> v19) + 1;
      if (HIWORD(v25))
      {
        v22 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v22 = v26;
        }

        else
        {
          v22 = 0;
        }
      }
    }

    else
    {
      v22 = 1;
    }
  }

  else
  {
    v22 = 0;
  }

  if (v14 >= a2)
  {
    switch(v22)
    {
      case 1:
        *(a1 + v18) = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        break;
      case 2:
        *(a1 + v18) = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        break;
      case 3:
LABEL_47:
        __break(1u);
        break;
      case 4:
        *(a1 + v18) = 0;
        goto LABEL_29;
      default:
LABEL_29:
        if (a2)
        {
LABEL_30:
          if (v13 > 0xFC)
          {
            v28 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v15 + 17) & ~v15;
            if (v9 != v14)
            {
              v28 = (v28 + v16 + v17) & ~v17;
              v9 = v12;
              v7 = v10;
            }

            __swift_storeEnumTagSinglePayload(v28, a2, v9, v7);
          }

          else
          {
            *a1 = a2 + 3;
          }
        }

        break;
    }
  }

  else
  {
    v23 = ~v14 + a2;
    if (v18 < 4)
    {
      v24 = (v23 >> v19) + 1;
      if (v18)
      {
        v27 = v23 & ~(-1 << v19);
        bzero(a1, v18);
        if (v18 == 3)
        {
          *a1 = v27;
          *(a1 + 2) = BYTE2(v27);
        }

        else if (v18 == 2)
        {
          *a1 = v27;
        }

        else
        {
          *a1 = v23;
        }
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v23;
      v24 = 1;
    }

    switch(v22)
    {
      case 1:
        *(a1 + v18) = v24;
        break;
      case 2:
        *(a1 + v18) = v24;
        break;
      case 3:
        goto LABEL_47;
      case 4:
        *(a1 + v18) = v24;
        break;
      default:
        return;
    }
  }
}

void OUTLINED_FUNCTION_58_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_60()
{

  return swift_slowAlloc();
}

uint64_t sub_1C10F3558@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C10521F0();
  *a1 = result & 1;
  return result;
}

double sub_1C10F35B0@<D0>(char a1@<W0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, char a5@<W3>)
{
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CF0, &qword_1C12B6548) + 36)) = a1 & 1;

  return sub_1C10F3638(a1 & 1, a3, a4, a5 & 1, a2);
}

double sub_1C10F3638@<D0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v72 = a1;
  v75 = a5;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CF8, &qword_1C12B6550);
  MEMORY[0x1EEE9AC00](v74);
  v67 = &v64 - v8;
  v68 = type metadata accessor for OneUpAnimatedInfoButton(0);
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v64 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93D00, &qword_1C12B6558);
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v64 - v16;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93D08, &qword_1C12B6560);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v64 - v18;
  v19 = sub_1C12637E0();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a3;
  if (a4)
  {
    swift_unknownObjectRetain();
    if (!a2)
    {
      goto LABEL_9;
    }
  }

  else
  {

    sub_1C1266420();
    v23 = sub_1C1264410();
    v65 = v20;
    v24 = v19;
    v25 = a4;
    v26 = a3;
    v27 = v23;
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v28 = v26;
    a4 = v25;
    v19 = v24;
    v20 = v65;
    v29 = sub_1C0FF9034(a2, v28, 0);
    (*(v20 + 8))(v22, v19, v29);
    a3 = v79;
    if (!v78)
    {
LABEL_9:
      KeyPath = swift_getKeyPath();
      v39 = &v17[v13[11]];
      *v39 = swift_getKeyPath();
      v39[8] = 0;
      v40 = &v17[v13[12]];
      *v40 = swift_getKeyPath();
      v40[8] = 0;
      v41 = &v17[v13[13]];
      *v41 = swift_getKeyPath();
      v41[8] = 0;
      v42 = &v17[v13[14]];
      *v42 = swift_getKeyPath();
      v42[8] = 0;
      *&v17[v13[9]] = 0x4020000000000000;
      v43 = &v17[v13[10]];
      *v43 = 0x4018000000000000;
      v43[8] = 0;
      v44 = swift_getKeyPath();
      *v12 = swift_getKeyPath();
      *(v12 + 1) = 0;
      v12[16] = 0;
      type metadata accessor for Model(0);
      sub_1C12628D0();
      v45 = v69;
      sub_1C10388D4(v12, v69);
      *v17 = v44;
      v17[8] = 0;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93D10, &qword_1C12B6630);
      sub_1C10388D4(v45, &v17[*(v46 + 48)]);
      sub_1C1058D54(v44, 0);
      sub_1C1040D5C(v12);
      sub_1C1040D5C(v45);
      sub_1C0FA03F4(v44, 0);
      v47 = swift_getKeyPath();
      LOBYTE(v45) = v72 & 1;
      v48 = v70;
      sub_1C102EFA0(v17, v70, &qword_1EBE93D00, &qword_1C12B6558);
      v49 = v67;
      *v67 = v45;
      *(v49 + 8) = 0x4044000000000000;
      *(v49 + 16) = KeyPath;
      *(v49 + 24) = 0;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93D18, &qword_1C12B6638);
      sub_1C102EFA0(v48, v49 + *(v50 + 64), &qword_1EBE93D00, &qword_1C12B6558);
      v51 = v49 + *(v50 + 80);
      *v51 = v45;
      *(v51 + 8) = 0x4044000000000000;
      *(v51 + 16) = v47;
      *(v51 + 24) = 0;
      v66 = KeyPath;
      swift_retain_n();

      sub_1C0F9E21C(v48, &qword_1EBE93D00, &qword_1C12B6558);

      sub_1C102EFA0(v49, v71, &qword_1EBE93CF8, &qword_1C12B6550);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E40, &qword_1C12B6640);
      v52 = MEMORY[0x1E6981F48];
      sub_1C0FDB6D4(&qword_1EBE91E48, &qword_1EBE91E40, &qword_1C12B6640, MEMORY[0x1E6981F48]);
      sub_1C0FDB6D4(&qword_1EBE93D20, &qword_1EBE93CF8, &qword_1C12B6550, v52);
      sub_1C1263C20();

      sub_1C0F9E21C(v49, &qword_1EBE93CF8, &qword_1C12B6550);
      sub_1C0F9E21C(v17, &qword_1EBE93D00, &qword_1C12B6558);
      return result;
    }
  }

  ObjectType = swift_getObjectType();
  v31 = (*(a3 + 32))(ObjectType, a3);
  swift_unknownObjectRelease();
  if ((v31 & 1) == 0)
  {
    goto LABEL_9;
  }

  if ((a4 & 1) == 0)
  {

    sub_1C1266420();
    v54 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v55 = sub_1C0FF9034(a2, v66, 0);
    (*(v20 + 8))(v22, v19, v55);
    v32 = v79;
    if (v78)
    {
      goto LABEL_8;
    }

LABEL_11:
    v37 = 0;
    goto LABEL_12;
  }

  swift_unknownObjectRetain();
  v32 = v66;
  if (!a2)
  {
    goto LABEL_11;
  }

LABEL_8:
  v33 = swift_getObjectType();
  (*(v32 + 232))(v33, v32);
  v35 = v34;
  swift_unknownObjectRelease();
  v36 = swift_getObjectType();
  v37 = (*(v35 + 8))(v36, v35);
  swift_unknownObjectRelease();
LABEL_12:
  v56 = swift_getKeyPath();
  v57 = swift_getKeyPath();
  v58 = swift_getKeyPath();
  v59 = swift_allocObject();
  *(v59 + 16) = v37 < 2;
  v60 = swift_getKeyPath();
  v61 = v72 & 1;
  LOBYTE(v78) = 0;
  v77 = 0;
  v76 = 0;
  swift_retain_n();

  sub_1C1058D54(v57, 0);

  sub_1C0FA03F4(v57, 0);

  v62 = v71;
  *v71 = v61;
  *(v62 + 1) = 0x4044000000000000;
  *(v62 + 2) = v56;
  v62[24] = 0;
  *(v62 + 4) = v37;
  *(v62 + 5) = v57;
  v62[48] = 0;
  *(v62 + 7) = v58;
  *(v62 + 8) = sub_1C1023064;
  *(v62 + 9) = v59;
  v62[80] = v61;
  *(v62 + 11) = 0x4044000000000000;
  *(v62 + 12) = v60;
  v62[104] = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E40, &qword_1C12B6640);
  v63 = MEMORY[0x1E6981F48];
  sub_1C0FDB6D4(&qword_1EBE91E48, &qword_1EBE91E40, &qword_1C12B6640, MEMORY[0x1E6981F48]);
  sub_1C0FDB6D4(&qword_1EBE93D20, &qword_1EBE93CF8, &qword_1C12B6550, v63);
  sub_1C1263C20();

  return result;
}

_BYTE *storeEnumTagSinglePayload for OneUpStorageManagementToolbar(_BYTE *result, unsigned int a2, unsigned int a3)
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

double sub_1C10F40F4@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93D30, &qword_1C12B6740) + 36)) = a1 & 1;

  return sub_1C10F414C(a1 & 1, a2);
}

double sub_1C10F414C@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OneUpAnimatedInfoButton(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  KeyPath = swift_getKeyPath();
  *v9 = swift_getKeyPath();
  *(v9 + 1) = 0;
  v9[16] = 0;
  type metadata accessor for Model(0);
  sub_1C12628D0();
  v11 = swift_getKeyPath();
  sub_1C10388D4(v9, v6);
  v12 = a1 & 1;
  *a2 = a1 & 1;
  *(a2 + 8) = 0x4044000000000000;
  *(a2 + 16) = KeyPath;
  *(a2 + 24) = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93D38, &qword_1C12B6798);
  sub_1C10388D4(v6, a2 + *(v13 + 64));
  v14 = a2 + *(v13 + 80);
  *v14 = v12;
  *(v14 + 8) = 0x4044000000000000;
  *(v14 + 16) = v11;
  *(v14 + 24) = 0;

  sub_1C1040D5C(v9);

  sub_1C1040D5C(v6);

  return result;
}

unint64_t sub_1C10F42EC()
{
  result = qword_1EBE93D40;
  if (!qword_1EBE93D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93D30, &qword_1C12B6740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93D40);
  }

  return result;
}

uint64_t sub_1C10F43DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x1EEE9AC00](a1);
  v9(v8);
  return sub_1C12656F0();
}

uint64_t PhotosSection.init(alignment:verticalSpacing:header:content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  *a6 = result;
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  *(a6 + 32) = a4;
  *(a6 + 40) = a5;
  *(a6 + 8) = a7;
  return result;
}

uint64_t PhotosSection.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v32 = sub_1C12641D0();
  OUTLINED_FUNCTION_0();
  v31 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a1 + 16);
  sub_1C1265710();
  v27 = *(a1 + 32);
  v39 = v27;
  v40 = MEMORY[0x1E6981E60];
  OUTLINED_FUNCTION_0_44();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1C12655A0();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v26 - v11;
  OUTLINED_FUNCTION_1_1();
  v13 = swift_getWitnessTable();
  *&v41[0] = v7;
  *(&v41[0] + 1) = v13;
  v26[1] = MEMORY[0x1E697D248];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v26 - v21;
  v23 = v30[1];
  v41[0] = *v30;
  v41[1] = v23;
  v41[2] = v30[2];
  v34 = v29;
  v35 = v27;
  v36 = v41;
  sub_1C1265590();
  sub_1C12641C0();
  sub_1C1264D50();
  (*(v31 + 8))(v6, v32);
  (*(v9 + 8))(v12, v7);
  v37 = v7;
  v38 = v13;
  swift_getOpaqueTypeConformance2();
  sub_1C0FDBA4C();
  v24 = *(v16 + 8);
  v24(v19, OpaqueTypeMetadata2);
  sub_1C0FDBA4C();
  return (v24)(v22, OpaqueTypeMetadata2);
}

uint64_t sub_1C10F4844(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C1265710();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v19 - v15;
  sub_1C10F43DC(a1[4], a1[5], a1[2], a1[3], a2, a3, a4, a5);
  v19[1] = a4;
  v19[2] = a5;
  v19[3] = MEMORY[0x1E6981E60];
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  v17 = *(v11 + 8);
  v17(v13, v10);
  sub_1C0FDBA4C();
  return (v17)(v16, v10);
}

double sub_1C10F49FC()
{
  qword_1EBE93D68 = 0;
  result = 0.0;
  xmmword_1EBE93D48 = 0u;
  unk_1EBE93D58 = 0u;
  return result;
}

uint64_t sub_1C10F4A14@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDE7A0C0 != -1)
  {
    swift_once();
  }

  return sub_1C10F4C0C(&xmmword_1EBE93D48, a1);
}

uint64_t sub_1C10F4A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C10F4F44();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.photosSectionIdentifier.getter()
{
  sub_1C10F4B2C();

  return sub_1C12637F0();
}

unint64_t sub_1C10F4B2C()
{
  result = qword_1EDE7A0B0;
  if (!qword_1EDE7A0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7A0B0);
  }

  return result;
}

uint64_t EnvironmentValues.photosSectionIdentifier.setter(uint64_t a1)
{
  sub_1C10F4C0C(a1, v3);
  sub_1C10F4B2C();
  sub_1C1263800();
  return sub_1C10F4C7C(a1);
}

uint64_t sub_1C10F4C0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE8FE30, &unk_1C12A1CC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C10F4C7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE8FE30, &unk_1C12A1CC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*EnvironmentValues.photosSectionIdentifier.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[15] = v1;
  v3[16] = sub_1C10F4B2C();
  sub_1C12637F0();
  return sub_1C10F4D60;
}

void sub_1C10F4D60(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1C10F4C0C(*a1, v2 + 40);
    sub_1C10F4C0C(v2 + 40, v2 + 80);
    sub_1C1263800();
    sub_1C10F4C7C(v2 + 40);
  }

  else
  {
    sub_1C10F4C0C(*a1, v2 + 40);
    sub_1C1263800();
  }

  sub_1C10F4C7C(v2);

  free(v2);
}

uint64_t sub_1C10F4E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C10F4E90(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1C10F4ED0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1C10F4F44()
{
  result = qword_1EDE76908;
  if (!qword_1EDE76908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE8FE30, &unk_1C12A1CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76908);
  }

  return result;
}

void OneUpChromeBarlessView.init(model:libraryScrubber:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 24) = swift_getKeyPath();
  *(a6 + 32) = 0;
  *(a6 + 40) = swift_getKeyPath();
  *(a6 + 48) = 0;
  *(a6 + 56) = 0;
  *(a6 + 64) = swift_getKeyPath();
  *(a6 + 72) = 0;
  v13 = *(type metadata accessor for OneUpChromeBarlessView(0, a4, a5, v12) + 52);
  *(a6 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
}

uint64_t OneUpChromeBarlessView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a2;
  v44 = sub_1C12629F0();
  OUTLINED_FUNCTION_0();
  v50 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = *(a1 + 16);
  v40 = *(a1 + 24);
  v41 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OneUpChromeBarlessView.ChromeBody(0, v8, v40, v9);
  OUTLINED_FUNCTION_0();
  v43 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93D70, &qword_1C12B69E0);
  v15 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v47 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v42 = &v40 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93D78, &qword_1C12B69E8);
  v19 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v48 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v45 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v46 = &v40 - v24;
  v26 = *v2;
  v25 = v2[1];
  v27 = v3[2];
  swift_retain_n();

  sub_1C10F5570(v26, v25, v27, v8, v40, v14);
  v28 = a1;
  sub_1C10F562C();
  LOBYTE(v27) = sub_1C1222F4C();

  v29 = v41;
  if (v27)
  {
    v30 = v44;
    (*(v50 + 104))(v41, *MEMORY[0x1E697DBA8], v44);
  }

  else
  {
    sub_1C10F576C(v28, v41);
    v30 = v44;
  }

  WitnessTable = swift_getWitnessTable();
  v32 = v42;
  sub_1C1264A10();
  (*(v50 + 8))(v29, v30);
  (*(v43 + 8))(v14, v10);
  swift_getKeyPath();
  v55 = v26;
  v33 = sub_1C10F8E04(&qword_1EDE7B960);
  v53 = WitnessTable;
  v54 = v33;
  v34 = swift_getWitnessTable();
  v35 = v45;
  sub_1C1264A30();

  (*(v47 + 8))(v32, v15);
  v36 = sub_1C10F8E04(&qword_1EDE7B970);
  v51 = v34;
  v52 = v36;
  swift_getWitnessTable();
  v37 = v46;
  sub_1C0FDBA4C();
  v38 = *(v48 + 8);
  v38(v35, v19);
  sub_1C0FDBA4C();
  return (v38)(v37, v19);
}

double sub_1C10F5570@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = sub_1C1012790(0) & 1;
  *(a6 + 32) = v9;
  *(a6 + 40) = swift_getKeyPath();
  *(a6 + 48) = 0;
  v11 = *(type metadata accessor for OneUpChromeBarlessView.ChromeBody(0, a4, a5, v10) + 48);
  *(a6 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428, &qword_1C12A3220);

  swift_storeEnumTagMultiPayload();
  return result;
}

uint64_t sub_1C10F562C()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);

  if ((v6 & 1) == 0)
  {
    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_1C10F576C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1C0FE5654(v2 + *(a1 + 52), &v15 - v10, &unk_1EBE91930, &qword_1C12A3650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1C12629F0();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1C1266420();
    v14 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C10F5970@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C117024C();
  *a1 = result;
  return result;
}

uint64_t sub_1C10F59F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v29 = a2;
  v3 = *(a1 + 16);
  v27 = *(a1 + 24);
  v37 = type metadata accessor for OneUpChromeBarlessView.ChromeBody.SafeAreaSpacer(255, v3, v27, a3);
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93D90, &qword_1C12B6B08);
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93D98, &qword_1C12B6B10);
  type metadata accessor for OneUpChromeMaskedLibraryScrubber(255, v3, v27, v4);
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v40 = sub_1C12655A0();
  v41 = v37;
  swift_getTupleTypeMetadata();
  v5 = sub_1C1265B00();
  swift_getWitnessTable();
  v6 = sub_1C12655A0();
  v24 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = sub_1C1263190();
  v25 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93D78, &qword_1C12B69E8);
  v12 = sub_1C1263190();
  v26 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - v16;
  v30 = v3;
  v31 = v27;
  v18 = v28;
  v32 = v28;
  sub_1C10A7F5C(v5);
  sub_1C1265590();
  sub_1C12644D0();
  WitnessTable = swift_getWitnessTable();
  sub_1C12631E0();
  sub_1C1264BF0();
  (*(v24 + 8))(v8, v6);
  swift_getKeyPath();
  v37 = *v18;
  v35 = WitnessTable;
  v36 = MEMORY[0x1E6980A30];

  v20 = swift_getWitnessTable();
  sub_1C1264A30();

  (*(v25 + 8))(v11, v9);
  v21 = sub_1C10F8E04(&qword_1EDE7B970);
  v33 = v20;
  v34 = v21;
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  v22 = *(v26 + 8);
  v22(v14, v12);
  sub_1C0FDBA4C();
  return (v22)(v17, v12);
}

uint64_t sub_1C10F5F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93D98, &qword_1C12B6B10);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93D90, &qword_1C12B6B08);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  v61[0] = sub_1C1214694();
  LOBYTE(v61[1]) = 0;
  v16 = type metadata accessor for OneUpChromeBarlessView.ChromeBody.SafeAreaSpacer(0, a2, a3, v15);
  WitnessTable = swift_getWitnessTable();
  v29 = v16;
  sub_1C0FDBA4C();
  *v14 = sub_1C1263AA0();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v17 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93DA0, &qword_1C12B6B18) + 44)];
  v30 = v14;
  sub_1C10F64B0(a1, a2, a3, v17);
  *v10 = sub_1C1263AA0();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93DA8, &unk_1C12B6B20);
  sub_1C10F6E58(a1, a2, a3, v19, &v10[*(v18 + 44)]);
  v39 = a2;
  v40 = a3;
  v41 = a1;
  type metadata accessor for OneUpChromeMaskedLibraryScrubber(255, a2, a3, v20);
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  v21 = sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C10A7F5C(v21);
  sub_1C1265590();
  memcpy(v60, v61, 0xD1uLL);
  v22 = sub_1C12655A0();
  v31 = swift_getWitnessTable();
  sub_1C0FDBA4C();
  memcpy(v58, v60, 0xD1uLL);
  v23 = *(v22 - 8);
  v32 = *(v23 + 8);
  v32(v58, v22);
  v61[0] = sub_1C1214804();
  LOBYTE(v61[1]) = 0;
  v24 = WitnessTable;
  sub_1C0FDBA4C();
  v51 = v56;
  v52 = v57;
  v53[0] = &v51;
  v25 = v37;
  sub_1C0FE5654(v14, v37, &qword_1EBE93D90, &qword_1C12B6B08);
  v53[1] = v25;
  v26 = v38;
  sub_1C0FE5654(v10, v38, &qword_1EBE93D98, &qword_1C12B6B10);
  v53[2] = v26;
  memcpy(v59, v55, 0xD1uLL);
  memcpy(v50, v55, 0xD1uLL);
  v48 = v53[5];
  v49 = v54;
  v53[3] = v50;
  v53[4] = &v48;
  (*(v23 + 16))(v61, v59, v22);
  v47[0] = v29;
  v47[1] = v34;
  v47[2] = v35;
  v47[3] = v22;
  v47[4] = v29;
  v42 = v24;
  v43 = sub_1C10F8E04(&unk_1EDE76C08);
  v44 = sub_1C10F8E04(&unk_1EBE93DB0);
  v45 = v31;
  v46 = v24;
  sub_1C119EE80(v53, 5, v47);
  memcpy(v60, v55, 0xD1uLL);
  v27 = v32;
  v32(v60, v22);
  sub_1C0F9E27C(v10, &qword_1EBE93D98);
  sub_1C0F9E27C(v30, &qword_1EBE93D90);
  memcpy(v61, v50, 0xD1uLL);
  v27(v61, v22);
  sub_1C0F9E27C(v38, &qword_1EBE93D98);
  return sub_1C0F9E27C(v37, &qword_1EBE93D90);
}

double sub_1C10F64B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a4;
  *&v55 = a3;
  *&v48 = a2;
  v49 = a1;
  v4 = sub_1C12637E0();
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93E30, &qword_1C12B6BF0);
  v51 = *(v6 - 8);
  *&v52 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - v7;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93E38, &qword_1C12B6BF8);
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v43 - v9;
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  type metadata accessor for OneUpSpatialPhotoBadgeStateModel(0);
  sub_1C10F9014(&qword_1EDE7C6C8);
  v12 = sub_1C1262A80();
  v14 = v13;
  v15 = swift_getKeyPath();
  v16 = swift_getKeyPath();
  v61 = 0;
  v60 = 0;
  v59 = v14 & 1;
  v58 = 0;
  v57 = 0;
  v56[0] = KeyPath;
  v56[1] = 0;
  LOBYTE(v56[2]) = 0;
  v56[3] = v11;
  LOBYTE(v56[4]) = 0;
  v56[5] = v12;
  LOBYTE(v56[6]) = v14 & 1;
  LOBYTE(v56[7]) = 0;
  v56[8] = 0;
  v56[9] = 0;
  v56[10] = v15;
  LOBYTE(v56[11]) = 0;
  v56[12] = v16;
  LOBYTE(v56[13]) = 0;
  if (qword_1EDE82FD8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93E40, &qword_1C12B6C00);
  sub_1C10F9054();
  sub_1C1264A20();
  memcpy(__dst, v56, 0x69uLL);
  sub_1C0F9E27C(__dst, &qword_1EBE93E40);
  v17 = sub_1C12644A0();
  type metadata accessor for OneUpChromeBarlessView.ChromeBody(0, v48, v55, v18);
  v19 = v49;
  v20 = sub_1C10F6A34();
  v21 = 0uLL;
  v55 = 0u;
  v22 = 0uLL;
  v23 = v53;
  if (v20)
  {
    v24 = *(v19 + 48);

    if ((v24 & 1) == 0)
    {
      sub_1C1266420();
      v25 = sub_1C1264410();
      sub_1C1262620();

      v26 = v44;
      sub_1C12637D0();
      swift_getAtKeyPath();

      (*(v45 + 8))(v26, v46);
    }

    sub_1C122336C();

    sub_1C12628A0();
    *(&v22 + 1) = v27;
    *(&v21 + 1) = v28;
  }

  v47 = v22;
  v48 = v21;
  (*(v51 + 32))(v23, v8, v52);
  v29 = v23 + *(v50 + 36);
  *v29 = v17;
  v30 = v48;
  *(v29 + 24) = v47;
  *(v29 + 8) = v30;
  *(v29 + 40) = (v20 & 1) == 0;
  v31 = sub_1C12644C0();
  v32 = sub_1C10F6A34();
  v33 = 0uLL;
  if (v32)
  {
    v34 = *(v19 + 48);

    if ((v34 & 1) == 0)
    {
      sub_1C1266420();
      v35 = sub_1C1264410();
      sub_1C1262620();

      v36 = v44;
      sub_1C12637D0();
      swift_getAtKeyPath();

      (*(v45 + 8))(v36, v46);
    }

    sub_1C122336C();

    sub_1C12628A0();
    *(&v33 + 1) = v37;
    *(&v39 + 1) = v38;
    v55 = v39;
  }

  v52 = v33;
  v40 = v54;
  sub_1C0FB9C00(v23, v54);
  v41 = v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93E48, &qword_1C12B6C08) + 36);
  *v41 = v31;
  *(v41 + 24) = v52;
  result = *&v55;
  *(v41 + 8) = v55;
  *(v41 + 40) = (v32 & 1) == 0;
  return result;
}

uint64_t sub_1C10F6A34()
{
  v0 = sub_1C1263EB0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v22 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8, &unk_1C12A2E90);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v23 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  sub_1C0FD72CC(&v22 - v13);
  (*(v1 + 104))(v11, *MEMORY[0x1E697FF38], v0);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v0);
  v15 = *(v4 + 56);
  sub_1C0FE5654(v14, v6, &qword_1EBE902F0, &qword_1C12B38C0);
  sub_1C0FE5654(v11, &v6[v15], &qword_1EBE902F0, &qword_1C12B38C0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v0) != 1)
  {
    v17 = v23;
    sub_1C0FE5654(v6, v23, &qword_1EBE902F0, &qword_1C12B38C0);
    if (__swift_getEnumTagSinglePayload(&v6[v15], 1, v0) != 1)
    {
      v18 = v22;
      (*(v1 + 32))(v22, &v6[v15], v0);
      sub_1C10F9014(&qword_1EDE7BAB0);
      v19 = sub_1C1265DE0();
      v20 = *(v1 + 8);
      v20(v18, v0);
      sub_1C0F9E27C(v11, &qword_1EBE902F0);
      sub_1C0F9E27C(v14, &qword_1EBE902F0);
      v20(v17, v0);
      sub_1C0F9E27C(v6, &qword_1EBE902F0);
      v16 = v19 ^ 1;
      return v16 & 1;
    }

    sub_1C0F9E27C(v11, &qword_1EBE902F0);
    sub_1C0F9E27C(v14, &qword_1EBE902F0);
    (*(v1 + 8))(v17, v0);
    goto LABEL_6;
  }

  sub_1C0F9E27C(v11, &qword_1EBE902F0);
  sub_1C0F9E27C(v14, &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(&v6[v15], 1, v0) != 1)
  {
LABEL_6:
    sub_1C0F9E27C(v6, &qword_1EBE902E8);
    v16 = 1;
    return v16 & 1;
  }

  sub_1C0F9E27C(v6, &qword_1EBE902F0);
  v16 = 0;
  return v16 & 1;
}

uint64_t sub_1C10F6E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v93 = a5;
  v103 = a3;
  v104 = a2;
  v6 = type metadata accessor for OneUpChromeBarlessView.ChromeBody(0, a2, a3, a4);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v100 = &v81 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93DB8, &qword_1C12B6B30);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v81 - v12;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93DC0, &qword_1C12B6B38);
  MEMORY[0x1EEE9AC00](v101);
  v15 = &v81 - v14;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93DC8, &qword_1C12B6B40);
  MEMORY[0x1EEE9AC00](v97);
  v85 = &v81 - v16;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93DD0, &qword_1C12B6B48);
  MEMORY[0x1EEE9AC00](v99);
  v98 = &v81 - v17;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93DD8, &qword_1C12B6B50);
  v88 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v87 = &v81 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93DE0, &qword_1C12B6B58);
  v91 = *(v19 - 8);
  v92 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v89 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v86 = &v81 - v22;
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  *(v13 + 2) = swift_getKeyPath();
  v13[24] = 0;
  *(v13 + 4) = swift_getKeyPath();
  *(v13 + 5) = 0;
  v13[48] = 0;
  v23 = type metadata accessor for OneUpChromeVideoControls(0);
  v24 = *(v23 + 28);
  *&v13[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428, &qword_1C12A3220);
  swift_storeEnumTagMultiPayload();
  v25 = *(v23 + 32);
  *&v13[v25] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v26 = sub_1C10F77E0();
  v27 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93DE8, &qword_1C12B6BC8) + 36)];
  *v27 = 0.0;
  v27[1] = v26;
  v28 = sub_1C1265A30();
  v29 = sub_1C10F77E0();
  v30 = &v13[*(v11 + 44)];
  *v30 = v28;
  *(v30 + 1) = v29;
  v95 = v6;
  v102 = a1;
  v31 = 0;
  if (sub_1C10F7984())
  {
    v31 = sub_1C1265A30();
  }

  v32 = v102;
  v33 = sub_1C1214804();
  sub_1C0FE4040(v13, v15, &qword_1EBE93DB8, &qword_1C12B6B30);
  v34 = v100;
  v35 = &v15[*(v101 + 36)];
  *v35 = v31;
  *(v35 + 1) = v33;
  v36 = v7;
  v37 = v7 + 16;
  v101 = *(v7 + 16);
  v38 = v95;
  (v101)(v34, v32, v95);
  v39 = *(v7 + 80);
  v40 = (v39 + 32) & ~v39;
  v41 = swift_allocObject();
  v42 = v103;
  *(v41 + 16) = v104;
  *(v41 + 24) = v42;
  v43 = *(v36 + 32);
  v43(v41 + v40, v34, v38);
  v44 = v15;
  v45 = v85;
  sub_1C0FE4040(v44, v85, &qword_1EBE93DC0, &qword_1C12B6B38);
  v46 = (v45 + *(v97 + 36));
  *v46 = sub_1C10F9284;
  v46[1] = v41;
  v46[2] = 0;
  v46[3] = 0;
  v84 = v37;
  (v101)(v34, v102, v38);
  v94 = v39;
  v47 = v40 + v8;
  v48 = swift_allocObject();
  v49 = v103;
  *(v48 + 16) = v104;
  *(v48 + 24) = v49;
  v96 = v40;
  v97 = v36 + 32;
  v50 = v48 + v40;
  v51 = v43;
  v43(v50, v34, v38);
  v52 = v98;
  sub_1C0FE4040(v45, v98, &qword_1EBE93DC8, &qword_1C12B6B40);
  v53 = (v52 + *(v99 + 36));
  *v53 = 0;
  v53[1] = 0;
  v53[2] = sub_1C10F8AEC;
  v53[3] = v48;
  sub_1C1213F08();
  if (v55)
  {
    v56 = v54;
    ObjectType = swift_getObjectType();
    LOBYTE(v56) = (*(v56 + 56))(ObjectType, v56);
    swift_unknownObjectRelease();
    v58 = v56 & 1;
  }

  else
  {
    v58 = 2;
  }

  LOBYTE(v105) = v58;
  v59 = v100;
  v60 = v102;
  v61 = v95;
  (v101)(v100, v102, v95);
  v83 = v47;
  v62 = swift_allocObject();
  v63 = v103;
  *(v62 + 16) = v104;
  *(v62 + 24) = v63;
  v82 = v51;
  v51(v62 + v96, v59, v61);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93DF0, &unk_1C12B6BD0);
  v85 = sub_1C10F8BFC(&unk_1EBE93DF8);
  v65 = sub_1C10F8E40();
  v66 = v87;
  v67 = v99;
  v68 = v98;
  sub_1C1265000();

  sub_1C0F9E27C(v68, &qword_1EBE93DD0);
  v109[0] = sub_1C1214804();
  (v101)(v59, v60, v61);
  v69 = swift_allocObject();
  v70 = v103;
  *(v69 + 16) = v104;
  *(v69 + 24) = v70;
  v82(v69 + v96, v59, v61);
  v105 = v67;
  v106 = v64;
  v107 = v85;
  v108 = v65;
  swift_getOpaqueTypeConformance2();
  sub_1C0FF9EE4();
  v71 = v86;
  v72 = v90;
  sub_1C1265000();

  (*(v88 + 8))(v66, v72);
  v74 = v91;
  v73 = v92;
  v75 = *(v91 + 16);
  v76 = v89;
  v75(v89, v71, v92);
  v77 = v93;
  *v93 = 0;
  *(v77 + 8) = 1;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93E28, &unk_1C12B6BE0);
  v75(v77 + *(v78 + 48), v76, v73);
  v79 = *(v74 + 8);
  v79(v71, v73);
  return (v79)(v76, v73);
}

double sub_1C10F77E0()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 48);

  if ((v5 & 1) == 0)
  {
    sub_1C1266420();
    v6 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
  }

  if (sub_1C1214C90())
  {

    return 0.0;
  }

  else
  {
    v8 = sub_1C1222D88();

    result = 32.0;
    if ((v8 & 1) == 0)
    {
      return 0.0;
    }
  }

  return result;
}

uint64_t sub_1C10F7984()
{
  if (sub_1C1214570())
  {
    v0 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
    sub_1C1265420();
    v0 = v2 ^ 1;
  }

  return v0 & 1;
}

double sub_1C10F79FC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265430();
  return result;
}

double sub_1C10F7A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265430();
  return result;
}

uint64_t sub_1C10F7AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v7 = sub_1C12637E0();
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58[0] = sub_1C10CA974(*(a1 + 8));
  v58[1] = v9;
  v58[2] = v10;
  LOBYTE(v58[3]) = v11 & 1;

  sub_1C1264490();
  type metadata accessor for OneUpChromeMaskedLibraryScrubber(0, a2, a3, v12);
  WitnessTable = swift_getWitnessTable();
  sub_1C1264FB0();

  j__swift_release_1();
  memcpy(v54, v55, sizeof(v54));
  sub_1C12644A0();
  type metadata accessor for OneUpChromeBarlessView.ChromeBody(0, a2, a3, v14);
  if (sub_1C10F80FC())
  {
    v15 = *(a1 + 48);

    if ((v15 & 1) == 0)
    {
      sub_1C1266420();
      v16 = sub_1C1264410();
      sub_1C1262620();

      v17 = v34;
      sub_1C12637D0();
      swift_getAtKeyPath();

      (*(v35 + 8))(v17, v36);
    }

    sub_1C122336C();
  }

  v18 = sub_1C1263190();
  v19 = MEMORY[0x1E697E5D8];
  v51 = WitnessTable;
  v52 = MEMORY[0x1E697E5D8];
  v20 = swift_getWitnessTable();
  sub_1C1264FB0();
  memcpy(v53, v54, 0x49uLL);
  (*(*(v18 - 8) + 8))(v53, v18);
  memcpy(v50, v56, sizeof(v50));
  sub_1C12644C0();
  if (sub_1C10F80FC())
  {
    v21 = *(a1 + 48);

    if ((v21 & 1) == 0)
    {
      sub_1C1266420();
      v22 = v19;
      v23 = sub_1C1264410();
      sub_1C1262620();

      v19 = v22;
      v24 = v34;
      sub_1C12637D0();
      swift_getAtKeyPath();

      (*(v35 + 8))(v24, v36);
    }

    sub_1C122336C();
  }

  v25 = sub_1C1263190();
  v44[4] = v20;
  v44[5] = v19;
  v26 = swift_getWitnessTable();
  sub_1C1264FB0();
  memcpy(v45, v50, 0x79uLL);
  (*(*(v25 - 8) + 8))(v45, v25);
  memcpy(v49, v57, 0xA9uLL);
  v27 = sub_1C1263190();
  v44[2] = v26;
  v44[3] = v19;
  v28 = swift_getWitnessTable();
  sub_1C0FDBA4C();
  memcpy(v46, v49, 0xA9uLL);
  v29 = *(v27 - 8);
  v30 = *(v29 + 8);
  v30(v46, v27);
  KeyPath = swift_getKeyPath();
  memcpy(v47, v58, 0xA9uLL);
  memcpy(v43, v58, 0xA9uLL);
  v41 = KeyPath;
  v42 = 0;
  v44[0] = v43;
  v44[1] = &v41;
  (*(v29 + 16))(v49, v47, v27);

  v40[0] = v27;
  v40[1] = &type metadata for OneUpChromeDebugBar;
  v38 = v28;
  v39 = sub_1C10F8A98();
  sub_1C119EE80(v44, 2, v40);

  memcpy(v48, v58, 0xA9uLL);
  v30(v48, v27);
  j__swift_release_1();
  memcpy(v49, v43, 0xA9uLL);
  return (v30)(v49, v27);
}

uint64_t sub_1C10F80FC()
{
  v0 = sub_1C1263EB0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v21 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8, &unk_1C12A2E90);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v22 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  sub_1C0FD72CC(&v21 - v13);
  (*(v1 + 104))(v11, *MEMORY[0x1E697FF38], v0);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v0);
  v15 = *(v4 + 56);
  sub_1C0FE5654(v14, v6, &qword_1EBE902F0, &qword_1C12B38C0);
  sub_1C0FE5654(v11, &v6[v15], &qword_1EBE902F0, &qword_1C12B38C0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v0) != 1)
  {
    v17 = v22;
    sub_1C0FE5654(v6, v22, &qword_1EBE902F0, &qword_1C12B38C0);
    if (__swift_getEnumTagSinglePayload(&v6[v15], 1, v0) != 1)
    {
      v18 = v21;
      (*(v1 + 32))(v21, &v6[v15], v0);
      sub_1C10F9014(&qword_1EDE7BAB0);
      v16 = sub_1C1265DE0();
      v19 = *(v1 + 8);
      v19(v18, v0);
      sub_1C0F9E27C(v11, &qword_1EBE902F0);
      sub_1C0F9E27C(v14, &qword_1EBE902F0);
      v19(v17, v0);
      sub_1C0F9E27C(v6, &qword_1EBE902F0);
      return v16 & 1;
    }

    sub_1C0F9E27C(v11, &qword_1EBE902F0);
    sub_1C0F9E27C(v14, &qword_1EBE902F0);
    (*(v1 + 8))(v17, v0);
    goto LABEL_6;
  }

  sub_1C0F9E27C(v11, &qword_1EBE902F0);
  sub_1C0F9E27C(v14, &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(&v6[v15], 1, v0) != 1)
  {
LABEL_6:
    sub_1C0F9E27C(v6, &qword_1EBE902E8);
    v16 = 0;
    return v16 & 1;
  }

  sub_1C0F9E27C(v6, &qword_1EBE902F0);
  v16 = 1;
  return v16 & 1;
}

double sub_1C10F851C@<D0>(uint64_t a7@<X8>)
{
  sub_1C12659A0();
  sub_1C1262C80();
  *a7 = 0;
  *(a7 + 8) = 1;
  *(a7 + 16) = v9;
  *(a7 + 24) = v10;
  *(a7 + 32) = v11;
  *(a7 + 40) = v12;
  result = *&v13;
  *(a7 + 48) = v13;
  return result;
}

void OneUpChromeBarlessView<>.init(model:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  *(a2 + 40) = swift_getKeyPath();
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = swift_getKeyPath();
  *(a2 + 72) = 0;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93D80, &qword_1C12B69F0) + 52);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  *a2 = a1;
  *(a2 + 8) = nullsub_1;
  *(a2 + 16) = 0;
}

void sub_1C10F86E4(uint64_t a1)
{
  type metadata accessor for OneUpChromeViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1C1007F88();
    if (v2 <= 0x3F)
    {
      sub_1C10F89D0(319, &qword_1EDE775D0, &qword_1EBE93D88, &qword_1C12BE100);
      if (v3 <= 0x3F)
      {
        sub_1C10F89D0(319, &qword_1EDE77668, &qword_1EBE91478, qword_1C12B6A70);
        if (v4 <= 0x3F)
        {
          sub_1C10F8858(319, &qword_1EDE775E0, type metadata accessor for OneUpChromeSpec);
          if (v5 <= 0x3F)
          {
            sub_1C10F8858(319, &qword_1EDE77590, MEMORY[0x1E697DBD0]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1C10F8858(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_15_22();
    v4 = sub_1C1262A70();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C10F88A8(uint64_t a1)
{
  type metadata accessor for OneUpChromeViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1C1007F88();
    if (v2 <= 0x3F)
    {
      sub_1C106B1CC();
      if (v3 <= 0x3F)
      {
        sub_1C10F8858(319, &qword_1EDE775E0, type metadata accessor for OneUpChromeSpec);
        if (v4 <= 0x3F)
        {
          sub_1C10F89D0(319, &qword_1EDE77560, &qword_1EBE902F0, &qword_1C12B38C0);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C10F89D0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    OUTLINED_FUNCTION_15_22();
    v5 = sub_1C1262A70();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1C10F8A98()
{
  result = qword_1EDE788A8[0];
  if (!qword_1EDE788A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE788A8);
  }

  return result;
}

double sub_1C10F8B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_9_21(a1, a2, a3, a4);
  v4 = OUTLINED_FUNCTION_4_34();

  return sub_1C10F7A5C(v4, v5, v6);
}

unint64_t sub_1C10F8BFC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13_2(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_41(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v5();
    result = OUTLINED_FUNCTION_3_31();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C10F8CBC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13_2(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_41(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v5();
    sub_1C10F8E04(&qword_1EDE7BC88);
    result = OUTLINED_FUNCTION_3_31();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C10F8D48()
{
  result = qword_1EBE93E18;
  if (!qword_1EBE93E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93DE8, &qword_1C12B6BC8);
    sub_1C10F9014(&unk_1EBE93E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93E18);
  }

  return result;
}

unint64_t sub_1C10F8E04(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13_2(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_41(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    OUTLINED_FUNCTION_15_22();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C10F8E40()
{
  result = qword_1EDE7B6E8;
  if (!qword_1EDE7B6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93DF0, &unk_1C12B6BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B6E8);
  }

  return result;
}

uint64_t objectdestroyTm_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for OneUpChromeBarlessView.ChromeBody(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = v4 + ((*(*v5 + 80) + 32) & ~*(*v5 + 80));

  v7 = v5[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428, &qword_1C12A3220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1C1263EB0();
    if (!__swift_getEnumTagSinglePayload(v6 + v7, 1, v8))
    {
      (*(*(v8 - 8) + 8))(v6 + v7, v8);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1C10F9014(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13_2(a1);
  if (!result)
  {
    v3(255);
    OUTLINED_FUNCTION_15_22();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C10F9054()
{
  result = qword_1EDE77468;
  if (!qword_1EDE77468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93E40, &qword_1C12B6C00);
    sub_1C10F90E0();
    sub_1C10CAB10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77468);
  }

  return result;
}

unint64_t sub_1C10F90E0()
{
  result = qword_1EDE786F0;
  if (!qword_1EDE786F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE786F0);
  }

  return result;
}

uint64_t sub_1C10F9134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for OneUpChromeDismissalState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C10F9190(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

unint64_t sub_1C10F9200()
{
  result = qword_1EDE77308;
  if (!qword_1EDE77308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93E50, &qword_1C12BD020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77308);
  }

  return result;
}

uint64_t PhotosPreviewSlider.init(label:showValue:value:in:step:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  v14 = type metadata accessor for PhotosPreviewSlider(0, a7, a8, a10);
  v15 = v14[12];
  sub_1C1265640();
  OUTLINED_FUNCTION_0_10();
  (*(v16 + 32))(a9 + v15, a4);
  v17 = v14[13];
  sub_1C1265DC0();
  OUTLINED_FUNCTION_0_10();
  (*(v18 + 32))(a9 + v17, a5);
  v19 = v14[14];
  swift_getAssociatedTypeWitness();
  sub_1C1266790();
  OUTLINED_FUNCTION_0_10();
  v21 = *(v20 + 32);

  return v21(a9 + v19, a6);
}

uint64_t PhotosPreviewSlider.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1C12638E0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE93E58, &qword_1C12B6CB0);
  return sub_1C10F9458(v2, a1[2], a1[3], a1[4], (a2 + *(v5 + 44)));
}

uint64_t sub_1C10F9458@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v53 = a1;
  v69 = a5;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93EF0, &qword_1C12B6D40);
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v46 - v8;
  v56 = sub_1C1265DC0();
  v52 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v46 - v9;
  v54 = sub_1C1265640();
  v49 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v46 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93EF8, &qword_1C12B6D48);
  v63 = *(v11 - 8);
  v64 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v46 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_1C1266790();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v46 - v16;
  v48 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v47 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v50 = &v46 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93F00, &qword_1C12B6D50);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v61 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v59 = &v46 - v25;
  v60 = sub_1C1263AA0();
  LOBYTE(v71[0]) = 1;
  v26 = v53;
  sub_1C10F9CF0(v53, a2, a3, a4, v75);
  *&__src[7] = v75[0];
  *&__src[23] = v75[1];
  *&__src[39] = v75[2];
  *&__src[55] = v75[3];
  v58 = LOBYTE(v71[0]);
  v51 = a2;
  v65 = a3;
  v66 = a4;
  v27 = type metadata accessor for PhotosPreviewSlider(0, a2, a3, a4);
  (*(v15 + 16))(v17, v26 + v27[14], v14);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, AssociatedTypeWitness);
  v29 = (v49 + 16);
  v30 = (v52 + 16);
  if (EnumTagSinglePayload == 1)
  {
    (*(v15 + 8))(v17, v14);
    (*v29)(v55, v26 + v27[12], v54);
    (*v30)(v57, v26 + v27[13], v56);
    v31 = v62;
    sub_1C1265520();
    v33 = v63;
    v32 = v64;
    (*(v63 + 16))(v68, v31, v64);
    swift_storeEnumTagMultiPayload();
    sub_1C0FDB6D4(&qword_1EBE93F08, &qword_1EBE93EF8, &qword_1C12B6D48, MEMORY[0x1E697D698]);
    v34 = v59;
    sub_1C1263C20();
    (*(v33 + 8))(v31, v32);
  }

  else
  {
    v35 = v48;
    (*(v48 + 32))(v50, v17, AssociatedTypeWitness);
    (*v29)(v55, v26 + v27[12], v54);
    (*v30)(v57, v26 + v27[13], v56);
    v36 = v50;
    (*(v35 + 16))(v47, v50, AssociatedTypeWitness);
    v37 = v62;
    sub_1C1265530();
    v39 = v63;
    v38 = v64;
    (*(v63 + 16))(v68, v37, v64);
    swift_storeEnumTagMultiPayload();
    sub_1C0FDB6D4(&qword_1EBE93F08, &qword_1EBE93EF8, &qword_1C12B6D48, MEMORY[0x1E697D698]);
    v34 = v59;
    sub_1C1263C20();
    (*(v39 + 8))(v37, v38);
    (*(v35 + 8))(v36, AssociatedTypeWitness);
  }

  v40 = v61;
  sub_1C10FA9D4(v34, v61, &qword_1EBE93F00, &qword_1C12B6D50);
  v41 = v60;
  v70[0] = v60;
  v70[1] = 0;
  v42 = v58;
  LOBYTE(v70[2]) = v58;
  memcpy(&v70[2] + 1, __src, 0x47uLL);
  v43 = v69;
  memcpy(v69, v70, 0x58uLL);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93F10, &qword_1C12B6D58);
  sub_1C10FA9D4(v40, v43 + *(v44 + 48), &qword_1EBE93F00, &qword_1C12B6D50);
  sub_1C10FA9D4(v70, v71, &qword_1EBE93F18, &qword_1C12B6D60);
  sub_1C0F9E21C(v34, &qword_1EBE93F00, &qword_1C12B6D50);
  sub_1C0F9E21C(v40, &qword_1EBE93F00, &qword_1C12B6D50);
  v71[0] = v41;
  v71[1] = 0;
  v72 = v42;
  memcpy(v73, __src, sizeof(v73));
  return sub_1C0F9E21C(v71, &qword_1EBE93F18, &qword_1C12B6D60);
}

double sub_1C10F9CF0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v45 = a4;
  v48 = a3;
  v9 = sub_1C1261C40();
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v43[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1C1261E50();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93F20, &qword_1C12B6D68);
  v46 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v13 = &v43[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v47 = &v43[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v17 = a1[1];
  v57 = *a1;
  v58 = v17;
  sub_1C0FDB9AC();

  v18 = sub_1C12648F0();
  v53 = v20;
  v54 = v18;
  v55 = v21;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  if (*(a1 + 16) == 1)
  {
    v44 = v19;
    type metadata accessor for PhotosPreviewSlider(0, a2, v48, v45);
    v26 = sub_1C1265640();
    MEMORY[0x1C68EEF20](v26);
    sub_1C10FAA30();
    sub_1C1265CB0();
    v56 = v57;
    sub_1C1261E30();
    sub_1C1261BF0();
    v27 = v49;
    sub_1C1261C30();
    v28 = v50;
    MEMORY[0x1C68EB540](v27, v50);
    (*(v51 + 8))(v27, v52);
    (*(v46 + 8))(v13, v28);
    sub_1C0FDB6D4(&qword_1EBE93F30, &qword_1EBE93F20, &qword_1C12B6D68, MEMORY[0x1E6968E80]);
    v29 = sub_1C12648C0();
    v31 = v30;
    v33 = v32;
    sub_1C12646A0();
    v22 = sub_1C1264870();
    v23 = v34;
    v36 = v35;
    v25 = v37;

    sub_1C0FDB8E8(v29, v31, v33 & 1);

    v24 = v36 & 1;
    sub_1C0FDB850(v22, v23, v24);

    LOBYTE(v19) = v44;
  }

  v38 = v19 & 1;
  LOBYTE(v57) = v19 & 1;
  v40 = v53;
  v39 = v54;
  sub_1C0FDB850(v54, v53, v19 & 1);
  v41 = v55;

  sub_1C0FDB860(v22, v23, v24, v25);
  sub_1C0FDB8A4(v22, v23, v24, v25);
  *a5 = v39;
  *(a5 + 8) = v40;
  *(a5 + 16) = v38;
  *(a5 + 24) = v41;
  *(a5 + 32) = v22;
  *(a5 + 40) = v23;
  *(a5 + 48) = v24;
  *(a5 + 56) = v25;
  sub_1C0FDB8A4(v22, v23, v24, v25);
  sub_1C0FDB8E8(v39, v40, v38);

  return result;
}

uint64_t sub_1C10FA180(uint64_t a1)
{
  result = sub_1C1265640();
  if (v2 <= 0x3F)
  {
    result = sub_1C1265DC0();
    if (v3 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      result = sub_1C1266790();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C10FA27C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  if (v7 >= 0)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v13 = v9;
  }

  v14 = *(v6 + 80);
  v15 = *(v6 + 64);
  v16 = *(v11 + 80);
  if (v12)
  {
    v17 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v17 = *(*(AssociatedTypeWitness - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = AssociatedTypeWitness;
  v19 = v14 | 7;
  v20 = v15 + v14 + ((v14 + 16) & ~v14);
  v21 = ((v15 + v14) & ~v14) + v15 + v16;
  if (a2 <= v13)
  {
    goto LABEL_34;
  }

  v22 = v17 + ((v21 + ((v20 + ((v19 + 17) & ~v19)) & ~v14)) & ~v16);
  v23 = 8 * v22;
  if (v22 > 3)
  {
    goto LABEL_17;
  }

  v25 = ((a2 - v13 + ~(-1 << v23)) >> v23) + 1;
  if (HIWORD(v25))
  {
    v24 = *(a1 + v22);
    if (v24)
    {
      goto LABEL_24;
    }

LABEL_34:
    if (v13 == 0x7FFFFFFF)
    {
      v29 = *(a1 + 1);
      if (v29 >= 0xFFFFFFFF)
      {
        LODWORD(v29) = -1;
      }

      return (v29 + 1);
    }

    v31 = ~v14;
    v32 = (a1 + v19 + 17) & ~v19;
    if (v8 == v13)
    {
      v33 = (v14 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & v31;
LABEL_41:

      return __swift_getEnumTagSinglePayload(v33, v7, v5);
    }

    v33 = (v20 + v32) & v31;
    if (v7 == v13)
    {
      goto LABEL_41;
    }

    if (v12 >= 2)
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v21 + v33) & ~v16, v12, v18);
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  if (v25 > 0xFF)
  {
    v24 = *(a1 + v22);
    if (*(a1 + v22))
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

  if (v25 < 2)
  {
    goto LABEL_34;
  }

LABEL_17:
  v24 = *(a1 + v22);
  if (!*(a1 + v22))
  {
    goto LABEL_34;
  }

LABEL_24:
  v26 = (v24 - 1) << v23;
  if (v22 > 3)
  {
    v26 = 0;
  }

  if (v22)
  {
    if (v22 <= 3)
    {
      v27 = v22;
    }

    else
    {
      v27 = 4;
    }

    switch(v27)
    {
      case 2:
        v28 = *a1;
        break;
      case 3:
        v28 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v28 = *a1;
        break;
      default:
        v28 = *a1;
        break;
    }
  }

  else
  {
    v28 = 0;
  }

  return v13 + (v28 | v26) + 1;
}

void sub_1C10FA5A0(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v41 = v10;
  if (v9 >= 0)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = 0;
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 84);
  v16 = v15 - 1;
  if (!v15)
  {
    v16 = 0;
  }

  if (v16 <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v8 + 80);
  v19 = *(v8 + 64);
  v20 = v19 + v18 + ((v18 + 16) & ~v18);
  v21 = *(v14 + 80);
  v22 = ((v19 + v18) & ~v18) + v19 + v21;
  v23 = (v22 + ((v20 + (((v18 | 7) + 17) & ~(v18 | 7))) & ~v18)) & ~v21;
  if (v15)
  {
    v24 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v24 = *(*(AssociatedTypeWitness - 8) + 64) + 1;
  }

  v25 = v23 + v24;
  v26 = 8 * (v23 + v24);
  if (a3 > v17)
  {
    if (v25 <= 3)
    {
      v27 = ((a3 - v17 + ~(-1 << v26)) >> v26) + 1;
      if (HIWORD(v27))
      {
        v13 = 4;
      }

      else
      {
        if (v27 < 0x100)
        {
          v28 = 1;
        }

        else
        {
          v28 = 2;
        }

        if (v27 >= 2)
        {
          v13 = v28;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  if (v17 < a2)
  {
    v29 = ~v17 + a2;
    if (v25 < 4)
    {
      v30 = (v29 >> v26) + 1;
      if (v25)
      {
        v33 = v29 & ~(-1 << v26);
        bzero(a1, v23 + v24);
        if (v25 == 3)
        {
          *a1 = v33;
          *(a1 + 2) = BYTE2(v33);
        }

        else if (v25 == 2)
        {
          *a1 = v33;
        }

        else
        {
          *a1 = v29;
        }
      }
    }

    else
    {
      bzero(a1, v23 + v24);
      *a1 = v29;
      v30 = 1;
    }

    switch(v13)
    {
      case 1:
        *(a1 + v25) = v30;
        break;
      case 2:
        *(a1 + v25) = v30;
        break;
      case 3:
        goto LABEL_73;
      case 4:
        *(a1 + v25) = v30;
        break;
      default:
        return;
    }

    return;
  }

  v31 = ~v18;
  v32 = ~v21;
  switch(v13)
  {
    case 1:
      *(a1 + v25) = 0;
      if (a2)
      {
        goto LABEL_38;
      }

      return;
    case 2:
      *(a1 + v25) = 0;
      if (a2)
      {
        goto LABEL_38;
      }

      return;
    case 3:
LABEL_73:
      __break(1u);
      return;
    case 4:
      *(a1 + v25) = 0;
      goto LABEL_37;
    default:
LABEL_37:
      if (!a2)
      {
        return;
      }

LABEL_38:
      if (v17 == 0x7FFFFFFF)
      {
        if ((a2 & 0x80000000) != 0)
        {
          *a1 = a2 & 0x7FFFFFFF;
          *(a1 + 1) = 0;
        }

        else
        {
          *(a1 + 1) = (a2 - 1);
        }

        return;
      }

      v34 = (a1 + (v18 | 7) + 17) & ~(v18 | 7);
      if (v41 == v17)
      {
        v35 = (v18 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & v31;
LABEL_46:
        v36 = a2;
        v15 = v9;
        AssociatedTypeWitness = v7;
LABEL_47:

        __swift_storeEnumTagSinglePayload(v35, v36, v15, AssociatedTypeWitness);
        return;
      }

      v35 = (v20 + v34) & v31;
      if (v9 == v17)
      {
        goto LABEL_46;
      }

      v37 = ((v22 + v35) & v32);
      if (v16 >= a2)
      {
        if (v15 < 2)
        {
          return;
        }

        v36 = (a2 + 1);
        v35 = (v22 + v35) & v32;
        goto LABEL_47;
      }

      if (v24 <= 3)
      {
        v38 = ~(-1 << (8 * v24));
      }

      else
      {
        v38 = -1;
      }

      if (v24)
      {
        v39 = v38 & (~v16 + a2);
        if (v24 <= 3)
        {
          v40 = v24;
        }

        else
        {
          v40 = 4;
        }

        bzero(v37, v24);
        switch(v40)
        {
          case 2:
            *v37 = v39;
            break;
          case 3:
            *v37 = v39;
            v37[2] = BYTE2(v39);
            break;
          case 4:
            *v37 = v39;
            break;
          default:
            *v37 = v39;
            break;
        }
      }

      return;
  }
}