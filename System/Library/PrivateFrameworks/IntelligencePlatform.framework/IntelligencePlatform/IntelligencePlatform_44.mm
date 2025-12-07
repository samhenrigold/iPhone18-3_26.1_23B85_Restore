void *KTSIndexManager.init(viewService:)(void *a1)
{
  v3 = v1;
  sub_1ABDDDEAC();
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 32) = v10;
    *(v1 + 40) = v11;
    *(v1 + 48) = v12;
    *(v1 + 64) = v13;
    sub_1ABAD219C(&qword_1EB4D9D98, &qword_1ABF62740);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1ABF3BFC0;
    *(inited + 32) = 0;
    v6 = sub_1ABDDE104();
    *(inited + 80) = 1;
    v7 = sub_1ABDDE2B0(v6);
    *(inited + 128) = 2;
    sub_1ABDDE46C(v7);
    sub_1ABDE425C();
    v9 = sub_1ABF239C4();

    v3[9] = v9;
    v3[2] = 0;
    v3[3] = 0;
  }

  return v3;
}

double sub_1ABDE2E30@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = 0;
  v4 = a1[3];
  v5 = a1[5];
  v6 = sub_1ABA93E20(a1, v4);
  *&v17 = v4;
  *(&v17 + 1) = v5;
  v7 = sub_1ABA93DC0(&v15);
  (*(*(v4 - 8) + 16))(v7, v6, v4);
  sub_1ABDE6544(&v19, &v15, v18);
  sub_1ABA84B54(&v15);
  if (!v2)
  {
    if (v18[3])
    {
      sub_1ABAD219C(&qword_1EB4D1530, &qword_1ABF336C0);
      if (swift_dynamicCast())
      {
        result = *&v15;
        v9 = v16;
        v10 = v17;
        *a2 = v15;
        *(a2 + 16) = v9;
        *(a2 + 24) = v10;
        return result;
      }
    }

    else
    {
      sub_1ABA925A4(v18, &qword_1EB4D9BF8, &qword_1ABF62500);
    }

    if (qword_1EB4CE7E8 != -1)
    {
      swift_once();
    }

    v11 = sub_1ABF237F4();
    sub_1ABA7AA24(v11, qword_1EB4CE7F0);
    v12 = sub_1ABF237D4();
    v13 = sub_1ABF24664();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1ABA78000, v12, v13, "KTSIndexManager error: result of call to executeQuery was not a KTSSegmentData.", v14, 2u);
      MEMORY[0x1AC5AB8B0](v14, -1, -1);
    }

    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t KTSIndexManager.deinit()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return v0;
}

uint64_t KTSIndexManager.__deallocating_deinit()
{
  KTSIndexManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABDE30A8(uint64_t a1, uint64_t a2, unint64_t a3, char a4, unint64_t a5, char a6, unsigned __int8 *a7)
{
  v8 = *a7;
  if (a4)
  {
    if (a6)
    {
LABEL_3:
      sub_1ABF24AB4();
      MEMORY[0x1AC5A9410](0xD00000000000003ELL, 0x80000001ABF910C0);
      sub_1ABAD219C(&qword_1EB4D9DA8, &unk_1ABF627A0);
      v9 = sub_1ABF23C74();
      MEMORY[0x1AC5A9410](v9);

      MEMORY[0x1AC5A9410](0x2078616D20, 0xE500000000000000);
      v10 = sub_1ABF23C74();
      MEMORY[0x1AC5A9410](v10);

      MEMORY[0x1AC5A9410](0xD000000000000014, 0x80000001ABF91100);
      sub_1ABF24C54();
      sub_1ABDBF718();
      swift_allocError();
      *v11 = 0;
      *(v11 + 8) = 0xE000000000000000;
      *(v11 + 16) = 1;
      return swift_willThrow();
    }

    v15 = 0;
    v16 = "nonDiscretionary";
    switch(*a7)
    {
      case 1u:
        v16 = "includesOpenRange";
        goto LABEL_26;
      case 2u:
        v16 = "includesClosedRange";
        goto LABEL_26;
      case 3u:
        v15 = 0;
        v16 = "includedInOpenRange";
        break;
      case 4u:
        v15 = 0;
        v16 = "includedInClosedRange";
        break;
      case 5u:
        v16 = "partialRangeFrom";
LABEL_26:
        v15 = 1;
        break;
      case 6u:
        v15 = 0;
        v16 = "partialRangeThrough";
        break;
      case 7u:
        v15 = 0;
        v16 = "partialRangeUpTo";
        break;
      default:
        break;
    }

    if (v15 && (v16 | 0x8000000000000000) == 0x80000001ABF86210)
    {
LABEL_39:
    }

    else
    {
      v21 = sub_1ABF25054();

      if ((v21 & 1) == 0)
      {
        v22 = 0x80000001ABF86210;
        switch(v8)
        {
          case 1:
            v23 = "includesOpenRange";
            goto LABEL_53;
          case 2:
            v23 = "includesClosedRange";
LABEL_53:
            v22 = v23 | 0x8000000000000000;
            goto LABEL_54;
          case 5:
LABEL_54:
            v28 = 0x80000001ABF86190;
            if (0x80000001ABF86190 != v22)
            {
              goto LABEL_67;
            }

            goto LABEL_39;
          default:
            v28 = 0x80000001ABF86190;
LABEL_67:
            v31 = sub_1ABF25054();

            if ((v31 & 1) == 0)
            {
              v32 = "includedInClosedRange";
              switch(v8)
              {
                case 0:
                case 1:
                case 2:
                case 3:
                case 5:
                case 7:
                  goto LABEL_78;
                case 4:
                  goto LABEL_88;
                case 6:
                  v32 = "partialRangeThrough";
LABEL_88:
                  if (0x80000001ABF86230 == (v32 | 0x8000000000000000))
                  {
LABEL_107:

                    v35 = a1;
                  }

                  else
                  {
LABEL_78:
                    v34 = sub_1ABF25054();

                    v35 = a1;
                    if ((v34 & 1) == 0)
                    {
                      switch(v8)
                      {
                        case 0:
                        case 3:
                        case 4:
                        case 6:
                        case 7:
                          goto LABEL_108;
                        case 1:
                          goto LABEL_106;
                        case 2:
                          v28 = 0x80000001ABF861B0;
                          goto LABEL_106;
                        case 5:
                          v28 = 0x80000001ABF86210;
LABEL_106:
                          if (0x80000001ABF861B0 == v28)
                          {
                            goto LABEL_107;
                          }

LABEL_108:
                          v44 = sub_1ABF25054();

                          v35 = a1;
                          if (v44)
                          {
                            break;
                          }

                          goto LABEL_3;
                        default:
                          goto LABEL_110;
                      }
                    }
                  }

                  MEMORY[0x1AC5A9410](538976288, 0xE400000000000000);
                  MEMORY[0x1AC5A9410](v35, a2);
                  v25 = 2112544;
                  v26 = 0xE300000000000000;
                  goto LABEL_69;
                default:
                  goto LABEL_110;
              }
            }

            break;
        }
      }
    }

    MEMORY[0x1AC5A9410](538976288, 0xE400000000000000);
    MEMORY[0x1AC5A9410](a1, a2);
    v25 = 540884000;
    v26 = 0xE400000000000000;
  }

  else if (a6)
  {
    v13 = 0;
    v14 = "nonDiscretionary";
    switch(*a7)
    {
      case 1u:
        v13 = 0;
        v14 = "includesOpenRange";
        break;
      case 2u:
        v13 = 0;
        v14 = "includesClosedRange";
        break;
      case 3u:
        v13 = 0;
        v14 = "includedInOpenRange";
        break;
      case 4u:
        v14 = "includedInClosedRange";
        goto LABEL_30;
      case 5u:
        v13 = 0;
        v14 = "partialRangeFrom";
        break;
      case 6u:
        v14 = "partialRangeThrough";
LABEL_30:
        v13 = 1;
        break;
      case 7u:
        v13 = 0;
        v14 = "partialRangeUpTo";
        break;
      default:
        break;
    }

    if (v13 && (v14 | 0x8000000000000000) == 0x80000001ABF861F0)
    {
LABEL_33:
    }

    else
    {
      v19 = sub_1ABF25054();

      if ((v19 & 1) == 0)
      {
        v20 = "includesOpenRange";
        switch(v8)
        {
          case 1:
            goto LABEL_57;
          case 2:
            v20 = "includesClosedRange";
            goto LABEL_57;
          case 5:
            v20 = "partialRangeFrom";
LABEL_57:
            if (0x80000001ABF86190 != (v20 | 0x8000000000000000))
            {
              goto LABEL_63;
            }

            goto LABEL_33;
          default:
LABEL_63:
            v29 = sub_1ABF25054();

            if ((v29 & 1) == 0)
            {
              v45 = 0x80000001ABF86190;
              v30 = "nonDiscretionary";
              switch(v8)
              {
                case 0:
                  goto LABEL_76;
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                  goto LABEL_85;
                case 7:
                  v30 = "partialRangeUpTo";
LABEL_76:
                  if (0x80000001ABF86250 == (v30 | 0x8000000000000000))
                  {
LABEL_95:

                    v40 = a1;
                  }

                  else
                  {
LABEL_85:
                    v39 = sub_1ABF25054();

                    v40 = a1;
                    if ((v39 & 1) == 0)
                    {
                      switch(v8)
                      {
                        case 0:
                        case 3:
                        case 4:
                        case 6:
                        case 7:
                          goto LABEL_101;
                        case 1:
                          goto LABEL_94;
                        case 2:
                          v41 = "includesClosedRange";
                          goto LABEL_93;
                        case 5:
                          v41 = "partialRangeFrom";
LABEL_93:
                          v45 = v41 | 0x8000000000000000;
LABEL_94:
                          if (0x80000001ABF861B0 == v45)
                          {
                            goto LABEL_95;
                          }

LABEL_101:
                          v42 = sub_1ABF25054();

                          v40 = a1;
                          if (v42)
                          {
                            break;
                          }

                          goto LABEL_3;
                        default:
                          goto LABEL_110;
                      }
                    }
                  }

                  MEMORY[0x1AC5A9410](538976288, 0xE400000000000000);
                  MEMORY[0x1AC5A9410](v40, a2);
                  v25 = 2113056;
                  v26 = 0xE300000000000000;
                  goto LABEL_69;
                default:
                  goto LABEL_110;
              }
            }

            break;
        }
      }
    }

    MEMORY[0x1AC5A9410](538976288, 0xE400000000000000);
    MEMORY[0x1AC5A9410](a1, a2);
    v25 = 540884512;
    v26 = 0xE400000000000000;
  }

  else
  {
    v17 = 1;
    v18 = "nonDiscretionary";
    switch(*a7)
    {
      case 1u:
        v17 = 0;
        v18 = "includesOpenRange";
        break;
      case 2u:
        v17 = 0;
        v18 = "includesClosedRange";
        break;
      case 3u:
        v17 = 0;
        v18 = "includedInOpenRange";
        break;
      case 4u:
        v17 = 0;
        v18 = "includedInClosedRange";
        break;
      case 5u:
        v17 = 0;
        v18 = "partialRangeFrom";
        break;
      case 6u:
        v17 = 0;
        v18 = "partialRangeThrough";
        break;
      case 7u:
        v18 = "partialRangeUpTo";
        break;
      default:
        break;
    }

    if (v17 && (v18 | 0x8000000000000000) == 0x80000001ABF86170)
    {
    }

    else
    {
      v24 = sub_1ABF25054();

      if ((v24 & 1) == 0)
      {
        v27 = "includesOpenRange";
        switch(v8)
        {
          case 1:
            goto LABEL_60;
          case 2:
            v27 = "includesClosedRange";
            goto LABEL_60;
          case 5:
            v27 = "partialRangeFrom";
LABEL_60:
            if (0x80000001ABF86190 != (v27 | 0x8000000000000000))
            {
              goto LABEL_71;
            }

            break;
          default:
LABEL_71:
            v33 = sub_1ABF25054();

            if ((v33 & 1) == 0)
            {
              switch(v8)
              {
                case 0:
                case 1:
                case 2:
                case 4:
                case 5:
                case 6:
                case 7:
                  v36 = sub_1ABF25054();

                  if (v36)
                  {
                    goto LABEL_81;
                  }

                  v37 = 0x80000001ABF86190;
                  switch(v8)
                  {
                    case 0:
                    case 3:
                    case 4:
                    case 6:
                    case 7:
                      goto LABEL_103;
                    case 1:
                      goto LABEL_98;
                    case 2:
                      v38 = "includesClosedRange";
                      goto LABEL_97;
                    case 5:
                      v38 = "partialRangeFrom";
LABEL_97:
                      v37 = v38 | 0x8000000000000000;
LABEL_98:
                      if (0x80000001ABF861B0 == v37)
                      {
                      }

                      else
                      {
LABEL_103:
                        v43 = sub_1ABF25054();

                        if ((v43 & 1) == 0)
                        {
                          goto LABEL_3;
                        }
                      }

                      sub_1ABF24AB4();
                      MEMORY[0x1AC5A9410](a1, a2);
                      MEMORY[0x1AC5A9410](2112544, 0xE300000000000000);
                      sub_1ABF24344();
                      MEMORY[0x1AC5A9410](0x20444E4120, 0xE500000000000000);
                      MEMORY[0x1AC5A9410](a1, a2);
                      v25 = 2113056;
                      v26 = 0xE300000000000000;
                      break;
                    default:
                      goto LABEL_110;
                  }

                  goto LABEL_69;
                case 3:

LABEL_81:
                  sub_1ABF24AB4();
                  MEMORY[0x1AC5A9410](538976288, 0xE400000000000000);
                  MEMORY[0x1AC5A9410](a1, a2);
                  MEMORY[0x1AC5A9410](540884000, 0xE400000000000000);
                  sub_1ABF24344();
                  MEMORY[0x1AC5A9410](0x20444E4120, 0xE500000000000000);
                  MEMORY[0x1AC5A9410](a1, a2);
                  v25 = 540884512;
                  goto LABEL_82;
                default:
LABEL_110:
                  JUMPOUT(0);
              }
            }

            return result;
        }

        sub_1ABF24AB4();
        MEMORY[0x1AC5A9410](538976288, 0xE400000000000000);
        MEMORY[0x1AC5A9410](a1, a2);
        MEMORY[0x1AC5A9410](540884512, 0xE400000000000000);
        sub_1ABF24344();
        MEMORY[0x1AC5A9410](0x20444E4120, 0xE500000000000000);
        MEMORY[0x1AC5A9410](a1, a2);
        v25 = 540884000;
LABEL_82:
        v26 = 0xE400000000000000;
        goto LABEL_69;
      }
    }

    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](538976288, 0xE400000000000000);
    MEMORY[0x1AC5A9410](a1, a2);
    MEMORY[0x1AC5A9410](0x4E45455754454220, 0xE900000000000020);
    sub_1ABF24344();
    v25 = 0x20444E4120;
    v26 = 0xE500000000000000;
  }

LABEL_69:
  MEMORY[0x1AC5A9410](v25, v26);
  sub_1ABF24344();
  return 0;
}

_OWORD *sub_1ABDE4244(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

unint64_t sub_1ABDE425C()
{
  result = qword_1EB4D9DA0;
  if (!qword_1EB4D9DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9DA0);
  }

  return result;
}

uint64_t sub_1ABDE4314(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1ABDE4448()
{
  result = qword_1EB4D9DB0;
  if (!qword_1EB4D9DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9DB0);
  }

  return result;
}

unint64_t sub_1ABDE44C8()
{
  result = qword_1EB4D9DB8;
  if (!qword_1EB4D9DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9DB8);
  }

  return result;
}

unint64_t sub_1ABDE451C()
{
  result = qword_1EB4D9DC8;
  if (!qword_1EB4D9DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9DC8);
  }

  return result;
}

unint64_t sub_1ABDE4570()
{
  result = qword_1EB4D9DD0;
  if (!qword_1EB4D9DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9DD0);
  }

  return result;
}

unint64_t sub_1ABDE4678()
{
  result = qword_1EB4D9DE0;
  if (!qword_1EB4D9DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9DE0);
  }

  return result;
}

unint64_t sub_1ABDE46CC()
{
  result = qword_1EB4D9DE8;
  if (!qword_1EB4D9DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9DE8);
  }

  return result;
}

uint64_t sub_1ABDE47E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1ABDE482C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_1ABDE1B44(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t sub_1ABDE4858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  result = sub_1ABDE22A0(a1, a2, a3, a4, a5, a6, a7, a8, a10);
  if (!v10)
  {
    *a9 = result;
  }

  return result;
}

uint64_t KTSDataRequest.init(parameters:cadence:)@<X0>(_BYTE *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1ABF21F04();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  sub_1ABA937E4(a2);
  *(a2 + 169) = a1;
  sub_1ABF21EF4();
  v8 = sub_1ABF21EC4();
  v10 = v9;
  result = (*(v5 + 8))(v7, v4);
  *(a2 + 176) = v8;
  *(a2 + 184) = v10;
  return result;
}

uint64_t KTSSliceData.identifier.getter()
{
  memcpy(v4, v0, sizeof(v4));
  v1 = v0[26];
  if (sub_1ABDD3444(v4) == 1)
  {
    v2 = v1;
  }

  else
  {
    v2 = v4[22];
  }

  return v2;
}

void *KTSSliceData.init(identifier:data:context:metadata:)()
{
  sub_1ABA80FB8();
  sub_1ABDE4AC8(v5);
  sub_1ABDD345C(v7);
  memcpy(__dst, v7, 0xC0uLL);
  __dst[24] = v1;
  __dst[25] = v0;
  __dst[26] = v3;
  __dst[27] = v2;
  nullsub_1();
  return memcpy(v4, __dst, 0xE0uLL);
}

uint64_t sub_1ABDE4AC8(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D9E00, &qword_1ABF62820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t KTSData.init(identifier:data:context:metadata:)()
{
  sub_1ABA8EBF8();
  EntityIdentifier.init(_:)(v4, v5, &v14);
  if (v15 == 1)
  {
    if (qword_1EB4CE7E8 != -1)
    {
      sub_1ABA7DD18(&qword_1EB4CE7E8);
    }

    v6 = sub_1ABF237F4();
    sub_1ABA7AA24(v6, qword_1EB4CE7F0);
    v7 = sub_1ABF237D4();
    v8 = sub_1ABF24664();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      sub_1ABA83B70(&dword_1ABA78000, v10, v11, "Can't make life event entity identifier for trip data object");
      MEMORY[0x1AC5AB8B0](v9, -1, -1);
    }

    sub_1ABDE4AC8(v3);

    *v0 = 0;
    v0[1] = 0;
    v0[2] = 0;
  }

  else
  {
    v13 = v14;
    result = sub_1ABDE4AC8(v3);
    *v0 = v13;
    v0[1] = v1;
    v0[2] = v2;
  }

  return result;
}

double KTSSegmentData.init(identifier:data:context:metadata:)()
{
  sub_1ABA8EBF8();
  EntityIdentifier.init(_:)(v4, v5, &v16);
  if ((v17 & 1) == 0)
  {
    v6 = v16;
    sub_1ABDE5900(v3, &v16, &qword_1EB4D9E00, &qword_1ABF62820);
    if (v18)
    {
      sub_1ABAD219C(&qword_1EB4D9E08, &qword_1ABF62828);
      if (swift_dynamicCast())
      {
        sub_1ABDE4AC8(v3);
        *v0 = v14;
        v0[1] = v15;
        v0[2] = v6;
        v0[3] = v1;
        v0[4] = v2;
        return result;
      }
    }

    else
    {
      sub_1ABDE4AC8(&v16);
    }
  }

  if (qword_1EB4CE7E8 != -1)
  {
    sub_1ABA7DD18(&qword_1EB4CE7E8);
  }

  v8 = sub_1ABF237F4();
  sub_1ABA7AA24(v8, qword_1EB4CE7F0);
  v9 = sub_1ABF237D4();
  v10 = sub_1ABF24664();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    sub_1ABA83B70(&dword_1ABA78000, v12, v13, "Can't make a KTS entity identifier for KTS segment data object");
    MEMORY[0x1AC5AB8B0](v11, -1, -1);
  }

  sub_1ABDE4AC8(v3);

  v0[4] = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 1) = 0u;
  return result;
}

uint64_t KTSDataRequest.Cadence.rawValue.getter()
{
  v1 = 0x796C68746E6F6DLL;
  if (*v0 != 1)
  {
    v1 = 0x6C61756E6E61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x796C6B656577;
  }
}

uint64_t KTSSegmentData.data.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t KTSSegmentData.context.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t KTSSegmentData.Metadata.segmentId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1ABDE5020@<X0>(uint64_t *a1@<X8>)
{
  result = KTSSegmentData.context.getter();
  *a1 = result;
  return result;
}

uint64_t KTSData.data.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t KTSData.context.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1ABDE5158@<X0>(uint64_t *a1@<X8>)
{
  result = KTSData.context.getter();
  *a1 = result;
  return result;
}

uint64_t KTSSliceData.request.getter()
{
  memcpy(__dst, v0, 0xC0uLL);
  v1 = sub_1ABA7D000();
  memcpy(v1, v2, 0xC0uLL);
  return sub_1ABDE5900(__dst, v4, &qword_1EB4D9E10, &qword_1ABF62830);
}

uint64_t KTSSliceData.data.setter(uint64_t a1)
{

  *(v1 + 192) = a1;
  return result;
}

uint64_t KTSSliceData.context.setter(uint64_t a1)
{

  *(v1 + 200) = a1;
  return result;
}

void *KTSSliceData.init(identifier:data:context:request:)()
{
  sub_1ABA80FB8();
  memcpy(v7, v5, sizeof(v7));
  v4[24] = v1;
  v4[25] = v0;
  nullsub_1();
  result = memcpy(v4, v7, 0xC0uLL);
  v4[26] = v3;
  v4[27] = v2;
  return result;
}

uint64_t sub_1ABDE534C@<X0>(uint64_t *a1@<X8>)
{
  result = KTSSliceData.context.getter();
  *a1 = result;
  return result;
}

IntelligencePlatform::KTSDataRequest::Cadence_optional __swiftcall KTSDataRequest.Cadence.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v5 = rawValue._countAndFlagsBits == 0x796C6B656577 && rawValue._object == 0xE600000000000000;
  if (v5 || (sub_1ABA7C038(0x796C6B656577, 0xE600000000000000) & 1) != 0)
  {

    v7 = 0;
  }

  else
  {
    v8 = countAndFlagsBits == 0x796C68746E6F6DLL && object == 0xE700000000000000;
    if (v8 || (sub_1ABA7C038(0x796C68746E6F6DLL, 0xE700000000000000) & 1) != 0)
    {

      v7 = 1;
    }

    else if (countAndFlagsBits == 0x6C61756E6E61 && object == 0xE600000000000000)
    {

      v7 = 2;
    }

    else
    {
      v10 = sub_1ABA7C038(0x6C61756E6E61, 0xE600000000000000);

      if (v10)
      {
        v7 = 2;
      }

      else
      {
        v7 = 3;
      }
    }
  }

  *v4 = v7;
  return result;
}

uint64_t sub_1ABDE54D8@<X0>(uint64_t *a1@<X8>)
{
  result = KTSDataRequest.Cadence.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t KTSDataRequest.parameters.getter()
{
  sub_1ABA937E4(v4);
  v0 = sub_1ABA7D000();
  memcpy(v0, v1, 0xA9uLL);
  return sub_1ABDD3560(v4, v3);
}

uint64_t static KTSDataRequest.== infix(_:_:)(unsigned __int8 *__src, uint64_t a2)
{
  memcpy(__dst, __src, 0xA9uLL);
  v4 = __src[169];
  v5 = *(__src + 22);
  v6 = *(__src + 23);
  memcpy(v16, a2, 0xA9uLL);
  v7 = *(a2 + 169);
  v8 = *(a2 + 176);
  v9 = *(a2 + 184);
  memcpy(__srca, __src, 0xA9uLL);
  memcpy(v13, a2, 0xA9uLL);
  sub_1ABDD3560(__dst, v18);
  sub_1ABDD3560(v16, v18);
  LOBYTE(a2) = static KTSQueryParams.== infix(_:_:)(__srca, v13);
  memcpy(v17, v13, 0xA9uLL);
  sub_1ABDD35BC(v17);
  memcpy(v18, __srca, 0xA9uLL);
  sub_1ABDD35BC(v18);
  if ((a2 & 1) == 0)
  {
    goto LABEL_12;
  }

  if (v4 == 3)
  {
    if (v7 != 3)
    {
LABEL_12:
      v11 = 0;
      return v11 & 1;
    }
  }

  else if (v7 == 3 || (sub_1ABAD1410(v4, v7) & 1) == 0)
  {
    goto LABEL_12;
  }

  if (v5 == v8 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    sub_1ABA7D000();
    v11 = sub_1ABF25054();
  }

  return v11 & 1;
}

uint64_t KTSDataRequest.hash(into:)(uint64_t a1)
{
  sub_1ABA937E4(&v5);
  v3 = *(v1 + 169);
  KTSQueryParams.hash(into:)(a1);
  sub_1ABF25254();
  if (v3 != 3)
  {
    sub_1ABA7EA54();
    sub_1ABF23D34();
  }

  return sub_1ABF23D34();
}

uint64_t KTSDataRequest.hashValue.getter()
{
  sub_1ABA937E4(v3);
  v1 = *(v0 + 169);
  sub_1ABF25234();
  KTSQueryParams.hash(into:)(v4);
  sub_1ABF25254();
  if (v1 != 3)
  {
    sub_1ABA7EA54();
    sub_1ABF23D34();
  }

  sub_1ABF23D34();
  return sub_1ABF25294();
}

uint64_t sub_1ABDE58C4(uint64_t a1)
{
  sub_1ABF25234();
  KTSDataRequest.hash(into:)(v2);
  return sub_1ABF25294();
}

uint64_t sub_1ABDE5900(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1ABAD219C(a3, a4);
  v5 = sub_1ABA7D000();
  v6(v5);
  return a2;
}

unint64_t sub_1ABDE59B0()
{
  result = qword_1EB4D9E28;
  if (!qword_1EB4D9E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9E28);
  }

  return result;
}

unint64_t sub_1ABDE5A08()
{
  result = qword_1EB4D9E30;
  if (!qword_1EB4D9E30)
  {
    sub_1ABAE2850(&qword_1EB4D9E38, &qword_1ABF62980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9E30);
  }

  return result;
}

unint64_t sub_1ABDE5A70()
{
  result = qword_1EB4D9E40;
  if (!qword_1EB4D9E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9E40);
  }

  return result;
}

uint64_t sub_1ABDE5AD0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 17))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 6)
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

uint64_t sub_1ABDE5B10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

uint64_t sub_1ABDE5C24(uint64_t a1)
{
  v1 = *(a1 + 184);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1ABDE5C44(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 224))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 192);
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

uint64_t sub_1ABDE5C84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
      *(result + 224) = 1;
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
      *(result + 192) = (a2 - 1);
      return result;
    }

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABDE5D10(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 192))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 184);
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

uint64_t sub_1ABDE5D50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
      *(result + 192) = 1;
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
      *(result + 184) = (a2 - 1);
      return result;
    }

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for KTSDataRequest.Cadence(_BYTE *result, unsigned int a2, unsigned int a3)
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

void static KTSRecordType.combine(ktsRecords:intoRowWithId:withType:graphContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v21;
  a20 = v28;
  v29 = *(v22 + 16);
  if (!v29)
  {
    *(v27 + 32) = 0;
    *v27 = 0u;
    *(v27 + 16) = 0u;
    goto LABEL_16;
  }

  v86 = v26;
  v87 = v20;
  v80 = v23;
  v81 = v24;
  v82 = v27;
  v83 = *v25;
  v30 = v22 + 32;
  v84 = v22 + 32;
  v85 = v29;
  v88 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1ABDEABB0(v30, v89);
    v32 = v89[3];
    v31 = v89[4];
    sub_1ABA93E20(v89, v89[3]);
    v33 = *(v31 + 56);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1ABA93DC0(&v90);
    v33(v32, v31);
    sub_1ABA84B54(v89);
    if (AssociatedTypeWitness)
    {
      sub_1ABAFF5C4(&v90, &v93);
      v34 = v88;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v34;
      a10 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1ABADC334();
        v36 = v45;
        a10 = v45;
      }

      v37 = *(v36 + 16);
      if (v37 >= *(v36 + 24) >> 1)
      {
        sub_1ABADC334();
        v88 = v46;
        a10 = v46;
      }

      else
      {
        v88 = v36;
      }

      v38 = v96;
      v39 = v97;
      v40 = sub_1ABA94E50(&v93, v96);
      v41 = MEMORY[0x1EEE9AC00](v40);
      v43 = &v79 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v44 + 16))(v43, v41);
      sub_1ABDE9A60(v37, v43, &a10, v38, v39);
      sub_1ABA84B54(&v93);
    }

    else
    {
      sub_1ABDE64DC(&v90);
    }

    v30 += 40;
    --v29;
  }

  while (v29);
  type metadata accessor for KTSContextRepresentation();
  v47 = v87;
  sub_1ABD9B548(v88, v86);
  if (v47)
  {

    goto LABEL_16;
  }

  v49 = v48;

  if (v49)
  {
    v93 = MEMORY[0x1E69E7CC0];
    v51 = v84;
    v50 = v85;
    do
    {
      sub_1ABDEABB0(v51, v89);
      v52 = v89[3];
      v53 = v89[4];
      sub_1ABA93E20(v89, v89[3]);
      (*(v53 + 32))(v52, v53);
      v54 = sub_1ABA84B54(v89);
      MEMORY[0x1AC5A9710](v54);
      if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1ABF24134();
      }

      sub_1ABF24184();
      v51 += 40;
      --v50;
    }

    while (v50);
    v55 = v93;
    type metadata accessor for KTSDataRepresentation(0);
    v56 = sub_1ABDAD380(v55);

    if (v56)
    {
      if (v83)
      {
        if (v83 == 1)
        {
          memset(v89, 0, 40);

          KTSData.init(identifier:data:context:metadata:)();
          v57 = v94;
          if (v94)
          {
            v58 = v95;
            v59 = v93;
            v60 = v82;
            v82[3] = &type metadata for KTSData;
            v60[4] = sub_1ABDD34B8();

            *v60 = v59;
            v60[1] = v57;
            v60[2] = v58;
          }

          else
          {

            v78 = v82;
            v82[4] = 0;
            *v78 = 0u;
            *(v78 + 1) = 0u;
          }
        }

        else
        {
          sub_1ABDD345C(v89);
          v75 = v82;
          v82[3] = &type metadata for KTSSliceData;
          v75[4] = sub_1ABDD3464();
          sub_1ABAABD74();
          v76 = swift_allocObject();
          *v75 = v76;
          memcpy(v76 + 2, v89, 0xC0uLL);
          v76[26] = v56;
          v76[27] = v49;
          v77 = v81;
          v76[28] = v80;
          v76[29] = v77;
        }
      }

      else
      {
        if (qword_1EB4CE7E8 != -1)
        {
          sub_1ABA7DD18(&qword_1EB4CE7E8);
        }

        v69 = sub_1ABF237F4();
        sub_1ABA7AA24(v69, qword_1EB4CE7F0);
        v70 = sub_1ABF237D4();
        v71 = sub_1ABF24664();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = sub_1ABA88598();
          *v72 = 0;
          _os_log_impl(&dword_1ABA78000, v70, v71, "KTSRecord: Can't combine into type ktsSegmentRecordType. Please pick one of ktsSliceRecordType or ktsRecordType", v72, 2u);
          MEMORY[0x1AC5AB8B0](v72, -1, -1);
        }

        v73 = sub_1ABA88E10();
        sub_1ABA7BD00(&type metadata for KTSError, v73);
        sub_1ABA96E10(v74, 0xD00000000000006FLL);
      }

      goto LABEL_16;
    }
  }

  if (qword_1EB4CE7E8 != -1)
  {
    sub_1ABA7DD18(&qword_1EB4CE7E8);
  }

  v61 = sub_1ABF237F4();
  sub_1ABA7AA24(v61, qword_1EB4CE7F0);
  v62 = sub_1ABF237D4();
  v63 = sub_1ABF24664();
  if (sub_1ABA957C8(v63))
  {
    v64 = sub_1ABA88598();
    sub_1ABA96C68(v64);
    sub_1ABAA3060(&dword_1ABA78000, v65, v66, "KTSDataProtocol: Missing result for context or data.");
    sub_1ABA82E18();
  }

  v67 = sub_1ABA88E10();
  sub_1ABA7BD00(&type metadata for KTSError, v67);
  sub_1ABA96E10(v68, 0xD00000000000002ELL);
LABEL_16:
  sub_1ABA7BC90();
}

uint64_t sub_1ABDE64DC(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D9E48, &unk_1ABF62D20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABDE6544@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = a2[3];
  v8 = a2[4];
  sub_1ABA93E20(a2, v7);
  (*(v8 + 72))(__src, v7, v8);
  v9 = EntityIdentifier.stringValue.getter();
  v11 = v10;
  v12 = a2[3];
  v13 = a2[4];
  sub_1ABA93E20(a2, v12);
  (*(v13 + 88))(v68, v12, v13);
  if (v3)
  {
  }

  v14 = a2[3];
  v15 = a2[4];
  sub_1ABA93E20(a2, v14);
  (*(v15 + 80))(v14, v15);
  if (v6)
  {
    if (v6 == 1)
    {
      sub_1ABDEABB0(v68, __src);
      sub_1ABAD219C(&qword_1EB4D1540, &qword_1ABF336D0);
      sub_1ABA82858();
      v17 = type metadata accessor for KTSContextAggregateRepresentation();
      if (sub_1ABAA4238(v17, v18))
      {
        type metadata accessor for KTSDataAggregateRepresentation(0);
        if (swift_dynamicCastClass())
        {
          memset(__src, 0, 40);

          KTSData.init(identifier:data:context:metadata:)();
          v19 = v63;
          if (v63)
          {
            v20 = v64;
            v21 = v62;
            a3[3] = &type metadata for KTSData;
            a3[4] = sub_1ABDD34B8();

            *a3 = v21;
            a3[1] = v19;
            a3[2] = v20;
            return sub_1ABA84B54(v68);
          }

          sub_1ABA84B54(v68);

          goto LABEL_39;
        }
      }

      if (qword_1EB4CE7E8 != -1)
      {
        sub_1ABA7DD18(&qword_1EB4CE7E8);
      }

      v47 = sub_1ABF237F4();
      sub_1ABA7AA24(v47, qword_1EB4CE7F0);
      v48 = sub_1ABF237D4();
      v49 = sub_1ABF24664();
      if (sub_1ABA957C8(v49))
      {
        v50 = sub_1ABA88598();
        sub_1ABA96C68(v50);
        sub_1ABAA3060(&dword_1ABA78000, v51, v52, "KTSRecord: Wrong result for KTSData.Context or KTSData.Data.");
        sub_1ABA82E18();
      }

      v53 = sub_1ABA88E10();
      sub_1ABA7BD00(&type metadata for KTSError, v53);
      sub_1ABAA18A4();
    }

    else
    {
      sub_1ABDEABB0(v68, __src);
      sub_1ABAD219C(&qword_1EB4D1540, &qword_1ABF336D0);
      sub_1ABA82858();
      v31 = type metadata accessor for KTSContextAggregateRepresentation();
      if (sub_1ABAA4238(v31, v32))
      {
        v33 = v62;
        type metadata accessor for KTSDataAggregateRepresentation(0);
        v34 = swift_dynamicCastClass();
        if (v34)
        {
          v35 = v34;
          sub_1ABDD345C(__src);
          a3[3] = &type metadata for KTSSliceData;
          a3[4] = sub_1ABDD3464();
          sub_1ABAABD74();
          v36 = swift_allocObject();
          *a3 = v36;
          memcpy(v36 + 2, __src, 0xC0uLL);
          v36[26] = v35;
          v36[27] = v33;
          v36[28] = v9;
          v36[29] = v11;
          return sub_1ABA84B54(v68);
        }
      }

      if (qword_1EB4CE7E8 != -1)
      {
        sub_1ABA7DD18(&qword_1EB4CE7E8);
      }

      v54 = sub_1ABF237F4();
      sub_1ABA7AA24(v54, qword_1EB4CE7F0);
      v55 = sub_1ABF237D4();
      v56 = sub_1ABF24664();
      if (sub_1ABA957C8(v56))
      {
        v57 = sub_1ABA88598();
        sub_1ABA96C68(v57);
        sub_1ABAA3060(&dword_1ABA78000, v58, v59, "KTSRecord: Wrong result for TriKTSSliceDatapData.Context or KTSSliceData.Data.");
        sub_1ABA82E18();
      }

      v60 = sub_1ABA88E10();
      sub_1ABA7BD00(&type metadata for KTSError, v60);
      sub_1ABAA18A4();
      v46 = v61 + 26;
    }

LABEL_35:
    sub_1ABA96E10(v44, v46);

    return sub_1ABA84B54(v68);
  }

  sub_1ABDEABB0(a2, &v62);
  sub_1ABAD219C(&qword_1EB4D9F68, qword_1ABF63878);
  if (!swift_dynamicCast())
  {
LABEL_18:

    if (qword_1EB4CE7E8 != -1)
    {
      sub_1ABA7DD18(&qword_1EB4CE7E8);
    }

    v37 = sub_1ABF237F4();
    sub_1ABA7AA24(v37, qword_1EB4CE7F0);
    v38 = sub_1ABF237D4();
    v39 = sub_1ABF24664();
    if (sub_1ABA957C8(v39))
    {
      v40 = sub_1ABA88598();
      sub_1ABA96C68(v40);
      sub_1ABAA3060(&dword_1ABA78000, v41, v42, "KTSRecord: Wrong result for KTSSegment.Context.");
      sub_1ABA82E18();
    }

    v43 = sub_1ABA88E10();
    sub_1ABA7BD00(&type metadata for KTSError, v43);
    sub_1ABAA18A4();
    v46 = v45 | 3;
    goto LABEL_35;
  }

  v23 = *(&__src[0] + 1);
  v22 = *&__src[1];
  v24 = __src[6];
  sub_1ABA96210(*&__src[5], *(&__src[5] + 1));
  sub_1ABA96210(v24, *(&v24 + 1));
  sub_1ABDEABB0(v68, __src);
  sub_1ABAD219C(&qword_1EB4D1540, &qword_1ABF336D0);
  sub_1ABA82858();
  v25 = type metadata accessor for KTSContextRepresentation();
  if ((sub_1ABAA4238(v25, v26) & 1) == 0)
  {

    goto LABEL_18;
  }

  v65 = &type metadata for KTSSegmentData.Metadata;
  v66 = &protocol witness table for KTSSegmentData.Metadata;
  v62 = v23;
  v63 = v22;

  KTSSegmentData.init(identifier:data:context:metadata:)();
  v27 = *(&__src[0] + 1);
  if (*(&__src[0] + 1))
  {
    v28 = *&__src[1];
    v29 = *&__src[0];
    a3[3] = &type metadata for KTSSegmentData;
    a3[4] = sub_1ABDD350C();
    v30 = swift_allocObject();
    *a3 = v30;

    *(v30 + 16) = v29;
    *(v30 + 24) = v27;
    *(v30 + 32) = v28;
    *(v30 + 40) = *(&__src[1] + 8);
    return sub_1ABA84B54(v68);
  }

  sub_1ABA84B54(v68);

LABEL_39:

  a3[4] = 0;
  *a3 = 0u;
  *(a3 + 1) = 0u;
  return result;
}

void KTSRecordProtocol.toData()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  a22 = v25;
  a23 = v26;
  v28 = v27;
  v80 = v29;
  sub_1ABA7BB64();
  v31 = v30;
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v78 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 64))(&a13, v33);
  v37 = a13;
  v38 = sub_1ABA8EC0C();
  v40 = v39(v38);
  if (v37)
  {
    if (v37 != 1)
    {
      if (v24)
      {
        goto LABEL_25;
      }

      type metadata accessor for KTSDataAggregateRepresentation(0);
      if (swift_dynamicCastClass())
      {
        sub_1ABA955A0();
        v55 = sub_1ABA8EC0C();
        v56(v55);
        sub_1ABAD219C(&qword_1EB4D1540, &qword_1ABF336D0);
        sub_1ABA82858();
        type metadata accessor for KTSContextAggregateRepresentation();
        if (swift_dynamicCast())
        {
          v57 = v87;
          v58 = sub_1ABA8EF78();
          v59(v58);
          v60 = EntityIdentifier.stringValue.getter();
          v62 = v61;
          sub_1ABDD345C(v81);
          v63 = v80;
          v80[3] = &type metadata for KTSSliceData;
          v63[4] = sub_1ABDD3464();
          sub_1ABAABD74();
          v64 = swift_allocObject();
          *v63 = v64;
          memcpy(v64 + 2, v81, 0xC0uLL);
          v64[26] = v35;
          v64[27] = v57;
          v64[28] = v60;
          v64[29] = v62;
          goto LABEL_25;
        }
      }

      goto LABEL_17;
    }

    if (!v24)
    {
      type metadata accessor for KTSDataAggregateRepresentation(0);
      if (swift_dynamicCastClass())
      {
        sub_1ABA955A0();
        v41 = sub_1ABA8EC0C();
        v42(v41);
        sub_1ABAD219C(&qword_1EB4D1540, &qword_1ABF336D0);
        sub_1ABA82858();
        v43 = type metadata accessor for KTSContextAggregateRepresentation();
        if (sub_1ABAB578C(v43))
        {
          sub_1ABA90DE8();
          v44 = sub_1ABA8EF78();
          v45(v44);
          EntityIdentifier.stringValue.getter();
          memset(v81, 0, 40);

          KTSData.init(identifier:data:context:metadata:)();
          v46 = v83;
          if (v83)
          {
            v47 = v84;
            v48 = v82;
            v49 = v80;
            v80[3] = &type metadata for KTSData;
            v49[4] = sub_1ABDD34B8();

            *v49 = v48;
            v49[1] = v46;
            v49[2] = v47;
            goto LABEL_25;
          }
        }
      }

LABEL_17:

      v65 = sub_1ABA88E10();
      sub_1ABA7BD00(&type metadata for KTSError, v65);
      sub_1ABDEAD4C(v66, 0xD000000000000049);
    }
  }

  else if (!v24)
  {
    v79 = v40;
    (*(v31 + 16))(v35, v23, v28);
    if (swift_dynamicCast())
    {
      v50 = *(&v81[0] + 1);
      v51 = *&v81[1];
      v52 = v81[6];
      sub_1ABA96210(*&v81[5], *(&v81[5] + 1));
      sub_1ABA96210(v52, *(&v52 + 1));
      v53 = sub_1ABA8EC0C();
      v54(v53);
      sub_1ABAD219C(&qword_1EB4D1540, &qword_1ABF336D0);
      sub_1ABA82858();
      v67 = type metadata accessor for KTSContextRepresentation();
      if (sub_1ABAB578C(v67))
      {
        sub_1ABA90DE8();
        v68 = sub_1ABA8EF78();
        v69(v68);
        EntityIdentifier.stringValue.getter();
        v85 = &type metadata for KTSSegmentData.Metadata;
        v86 = &protocol witness table for KTSSegmentData.Metadata;
        v82 = v50;
        v83 = v51;

        KTSSegmentData.init(identifier:data:context:metadata:)();
        v70 = *(&v81[0] + 1);
        if (*(&v81[0] + 1))
        {
          v71 = *&v81[1];
          v72 = *&v81[0];
          v73 = sub_1ABDD350C();
          v78 = *(&v81[1] + 8);
          v74 = v80;
          v80[3] = &type metadata for KTSSegmentData;
          v74[4] = v73;
          v75 = swift_allocObject();
          *v74 = v75;

          *(v75 + 16) = v72;
          *(v75 + 24) = v70;
          *(v75 + 32) = v71;
          *(v75 + 40) = v78;
          goto LABEL_25;
        }
      }

      else
      {
      }
    }

    v76 = sub_1ABA88E10();
    sub_1ABA7BD00(&type metadata for KTSError, v76);
    sub_1ABDEAD4C(v77, 0xD000000000000044);
  }

LABEL_25:
  sub_1ABA7BC90();
}

IntelligencePlatform::KTSRecordType_optional __swiftcall KTSRecordType.init(rawValue:)(Swift::String rawValue)
{
  sub_1ABDEAD2C();
  v2 = v1;
  v3 = sub_1ABF24D84();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t KTSRecordType.rawValue.getter()
{
  v1 = 0x726F63655273746BLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

unint64_t sub_1ABDE7250@<X0>(unint64_t *a1@<X8>)
{
  result = KTSRecordType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t KTSSegmentRecord.ktsContext.getter()
{
  v0 = sub_1ABA7D000();
  sub_1ABB0DBF0(v0, v1);
  return sub_1ABA7D000();
}

uint64_t KTSSegmentRecord.ktsContext.setter()
{
  sub_1ABA7FC9C();
  result = sub_1ABA96210(*(v1 + 80), *(v1 + 88));
  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t KTSSegmentRecord.ktsData.getter()
{
  v0 = sub_1ABA7D000();
  sub_1ABB0DBF0(v0, v1);
  return sub_1ABA7D000();
}

uint64_t KTSSegmentRecord.ktsData.setter()
{
  sub_1ABA7FC9C();
  result = sub_1ABA96210(*(v1 + 96), *(v1 + 104));
  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t KTSSegmentRecord.ktsDataSummary.getter()
{
  v1 = objc_autoreleasePoolPush();
  v2 = sub_1ABF217F4();
  v3 = sub_1ABA806BC(v2);
  sub_1ABF217E4();
  v4 = sub_1ABA82858();
  type metadata accessor for KTSDataRepresentation(v4);
  v5 = sub_1ABDE9B4C(&qword_1EB4D9E50, type metadata accessor for KTSDataRepresentation, &protocol conformance descriptor for KTSDataRepresentation);
  sub_1ABAA1D74(v5);

  if (!v0)
  {
    v3 = v7;
  }

  objc_autoreleasePoolPop(v1);
  return v3;
}

void KTSSegmentRecord.ktsContextSummary.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v12 = v11;
  v11[3] = type metadata accessor for KTSContextRepresentation();
  v12[4] = sub_1ABDE9B4C(&qword_1EB4D9E18, type metadata accessor for KTSContextRepresentation, &protocol conformance descriptor for KTSContextRepresentation);
  v13 = objc_autoreleasePoolPush();
  v14 = sub_1ABF217F4();
  sub_1ABA806BC(v14);
  sub_1ABF217E4();
  v15 = sub_1ABDE9B4C(&qword_1EB4D95C8, type metadata accessor for KTSContextRepresentation, &protocol conformance descriptor for KTSContextRepresentation);
  sub_1ABAB5DA4(v15);

  objc_autoreleasePoolPop(v13);
  if (v10)
  {
    sub_1ABD5B8D0(v12);
  }

  else
  {
    *v12 = a10;
  }

  sub_1ABA7BC90();
}

BOOL static KTSSegmentRecord.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  v6 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 73);
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  v15 = *(a2 + 56);
  v14 = *(a2 + 64);
  v16 = *(a2 + 72);
  v17 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  v18 = *(a2 + 73);
  if (v17)
  {
    result = 0;
  }

  else
  {
    v19 = sub_1ABF25054();
    result = 0;
    if ((v19 & 1) == 0)
    {
      return result;
    }
  }

  v24 = v2 == v11 && v3 == v10 && v5 == v13 && v7 == v15 && v6 == v14;
  if (v24 && ((v8 ^ v16) & 1) == 0 && ((v9 ^ v18) & 1) == 0)
  {
    return v4 == v12;
  }

  return result;
}

uint64_t sub_1ABDE77B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D67655373746BLL && a2 == 0xEC0000006449746ELL;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656D6954646E65 && a2 == 0xE700000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x65636E6174736964 && a2 == 0xE800000000000000;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6F69746176656C65 && a2 == 0xED00006E6961476ELL;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x797469437369 && a2 == 0xE600000000000000;
                  if (v13 || (sub_1ABF25054() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6177686769487369 && a2 == 0xE900000000000079;
                    if (v14 || (sub_1ABF25054() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x65746E6F4373746BLL && a2 == 0xEA00000000007478;
                      if (v15 || (sub_1ABF25054() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0x6174614473746BLL && a2 == 0xE700000000000000)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_1ABF25054();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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

uint64_t sub_1ABDE7B64(char a1)
{
  result = 0x656D67655373746BLL;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 0x6D69547472617473;
      break;
    case 3:
      result = 0x656D6954646E65;
      break;
    case 4:
      result = 0x65726F6373;
      break;
    case 5:
      result = 0x65636E6174736964;
      break;
    case 6:
      result = 0x6F69746176656C65;
      break;
    case 7:
      result = 0x6E6F697461727564;
      break;
    case 8:
      result = 0x797469437369;
      break;
    case 9:
      result = 0x6177686769487369;
      break;
    case 10:
      result = 0x65746E6F4373746BLL;
      break;
    case 11:
      result = 0x6174614473746BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABDE7CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABDE77B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABDE7CFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABDE7B5C();
  *a1 = result;
  return result;
}

uint64_t sub_1ABDE7D24(uint64_t a1)
{
  v2 = sub_1ABDE9AF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABDE7D60(uint64_t a1)
{
  v2 = sub_1ABDE9AF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void KTSSegmentRecord.encode(to:)()
{
  sub_1ABA8E418();
  v25 = v1;
  v3 = v2;
  sub_1ABAD219C(&qword_1EB4D9E58, &qword_1ABF62D30);
  sub_1ABA7BB64();
  v5 = v4;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v18 - v7;
  v10 = *v0;
  v9 = *(v0 + 8);
  v11 = *(v0 + 24);
  v23 = *(v0 + 16);
  v24 = v9;
  v21 = *(v0 + 32);
  v22 = v11;
  v19 = *(v0 + 73);
  v12 = *(v0 + 88);
  v18[1] = *(v0 + 80);
  v18[2] = v12;
  v13 = *(v0 + 104);
  v20 = *(v0 + 96);
  sub_1ABA93E20(v3, v3[3]);
  sub_1ABDE9AF8();
  sub_1ABF252E4();
  v26 = v10;
  sub_1ABAE8BC8();
  sub_1ABA97F74();
  v14 = v25;
  sub_1ABF24F84();
  if (v14)
  {
    v16 = sub_1ABA8EF78();
    v17(v16);
  }

  else
  {
    v25 = v13;
    v15 = v20;
    LOBYTE(v26) = 1;
    sub_1ABA81934();
    sub_1ABF24F34();
    sub_1ABA95958(2);
    sub_1ABAA3DB4();
    sub_1ABF24FB4();
    sub_1ABA95958(3);
    sub_1ABAA3DB4();
    sub_1ABF24FB4();
    sub_1ABAA23FC(4);
    sub_1ABA81934();
    sub_1ABF24F54();
    sub_1ABAA23FC(5);
    sub_1ABA81934();
    sub_1ABF24F54();
    sub_1ABAA23FC(6);
    sub_1ABA81934();
    sub_1ABF24F54();
    sub_1ABAA23FC(7);
    sub_1ABA81934();
    sub_1ABF24F54();
    sub_1ABA95958(8);
    sub_1ABAA3DB4();
    sub_1ABF24F44();
    sub_1ABA95958(9);
    sub_1ABAA3DB4();
    sub_1ABF24F44();
    sub_1ABAB2BAC();
    sub_1ABC38D74();
    sub_1ABA97F74();
    sub_1ABF24F84();
    sub_1ABAB6828();
    v26 = v15;
    v27 = v25;
    sub_1ABB0DBF0(v15, v25);
    sub_1ABA97F74();
    sub_1ABF24F84();
    sub_1ABAB6828();
    (*(v5 + 8))(v8);
  }

  sub_1ABA9A664();
}

void KTSSegmentRecord.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_1ABA8E418();
  v29 = v28;
  v31 = v30;
  sub_1ABAD219C(&qword_1EB4D9E68, &qword_1ABF62D38);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v32);
  sub_1ABA93E20(v29, v29[3]);
  sub_1ABDE9AF8();
  sub_1ABF252C4();
  if (v27)
  {
    sub_1ABA84B54(v29);
  }

  else
  {
    sub_1ABAE8B74();
    sub_1ABDEAD38();
    sub_1ABF24E64();
    sub_1ABA7F774(1);
    v33 = sub_1ABF24E14();
    v57 = v34;
    sub_1ABA7F774(2);
    v56 = sub_1ABF24E94();
    sub_1ABA7F774(3);
    v55 = sub_1ABF24E94();
    sub_1ABA7F774(4);
    sub_1ABF24E34();
    v36 = v35;
    sub_1ABA7F774(5);
    sub_1ABF24E34();
    v38 = v37;
    sub_1ABA7F774(6);
    sub_1ABF24E34();
    v40 = v39;
    sub_1ABA7F774(7);
    sub_1ABF24E34();
    v54 = v41;
    sub_1ABA7F774(8);
    v52 = sub_1ABF24E24();
    v50 = v33;
    v51 = v59;
    sub_1ABA7F774(9);
    v48 = sub_1ABF24E24();
    LOBYTE(v58[0]) = 10;
    sub_1ABC38DC8();
    sub_1ABDEAD38();
    sub_1ABF24E64();
    v42 = v59;
    v43 = v60;
    sub_1ABF24E64();
    v44 = v52 & 1;
    v47 = v48 & 1;
    v45 = sub_1ABA8E0A8();
    v46(v45);
    v53 = v74;
    v49 = v75;
    v58[0] = v51;
    v58[1] = v50;
    v58[2] = v57;
    v58[3] = v56;
    v58[4] = v55;
    v58[5] = v36;
    v58[6] = v38;
    v58[7] = v40;
    v58[8] = v54;
    LOBYTE(v58[9]) = v44;
    BYTE1(v58[9]) = v47;
    v58[10] = v42;
    v58[11] = v43;
    v58[12] = v74;
    v58[13] = v75;
    memcpy(v31, v58, 0x70uLL);
    sub_1ABDE4398(v58, &v59);
    sub_1ABA84B54(v29);
    v59 = v51;
    v60 = v50;
    v61 = v57;
    v62 = v56;
    v63 = v55;
    v64 = v36;
    v65 = v38;
    v66 = v40;
    v67 = v54;
    v68 = v44;
    v69 = v47;
    v70 = v42;
    v71 = v43;
    v72 = v53;
    v73 = v49;
    sub_1ABDE43F4(&v59);
  }

  sub_1ABA9A664();
}

uint64_t sub_1ABDE85FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABDE9D98();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

unint64_t sub_1ABDE87BC(uint64_t a1, uint64_t a2)
{
  sub_1ABDEAD2C();
  v2 = sub_1ABF24D84();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1ABDE880C(char a1)
{
  result = 0x644973746BLL;
  switch(a1)
  {
    case 1:
      result = 0x6D69547472617473;
      break;
    case 2:
      result = sub_1ABA97654();
      break;
    case 3:
      result = sub_1ABAA2DD4();
      break;
    case 4:
      result = sub_1ABA94CBC();
      break;
    case 5:
      result = sub_1ABA8C6D0();
      break;
    case 6:
      result = sub_1ABAA3258();
      break;
    case 7:
      result = sub_1ABAB1210();
      break;
    case 8:
      result = sub_1ABA7AB48();
      break;
    case 9:
      result = sub_1ABA99658();
      break;
    case 10:
      result = 0x6174614473746BLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1ABDE88F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1ABDE87BC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1ABDE8928@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ABDE880C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1ABDE8970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABDE8804(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABDE8998(uint64_t a1)
{
  v2 = sub_1ABDE9B94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABDE89D4(uint64_t a1)
{
  v2 = sub_1ABDE9B94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void KTSSummaryRecord.init(from:)()
{
  sub_1ABA8E418();
  v2 = v1;
  sub_1ABAD219C(&qword_1EB4D9E88, &qword_1ABF62D48);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA93E20(v2, v2[3]);
  v4 = sub_1ABDE9B94();
  sub_1ABAB53B8(&unk_1F2087538, v5, v4);
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    v12 = 0;
    sub_1ABA7DD70();
    sub_1ABF24E94();
    sub_1ABA8F8A0(1);
    sub_1ABF24E94();
    sub_1ABA8F8A0(2);
    sub_1ABF24E94();
    sub_1ABA8F8A0(3);
    sub_1ABF24E34();
    sub_1ABA8F8A0(4);
    sub_1ABF24E34();
    sub_1ABA8F8A0(6);
    sub_1ABF24E34();
    sub_1ABA8F8A0(7);
    sub_1ABF24E24();
    sub_1ABA8F8A0(8);
    sub_1ABF24E24();
    sub_1ABA8F8A0(5);
    sub_1ABF24E34();
    sub_1ABA964E0();
    sub_1ABAA3A5C();
    *(v7 - 256) = v6;
    sub_1ABA80994();
    sub_1ABF24E64();
    sub_1ABAA203C();
    sub_1ABAA3A5C();
    sub_1ABA80994();
    sub_1ABF24E64();
    v8 = sub_1ABA7BCF0();
    v9(v8);
    sub_1ABA937FC();
    sub_1ABDE9BE8(&v11, &v12);
    sub_1ABA84B54(v2);
    v10 = sub_1ABA81B2C();
    sub_1ABDE9C20(v10);
  }

  sub_1ABA9A664();
}

uint64_t sub_1ABDE8CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABDE9FD8();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t KTSSliceRecord.ktsContext.getter()
{
  v0 = sub_1ABA7D000();
  sub_1ABB0DBF0(v0, v1);
  return sub_1ABA7D000();
}

uint64_t KTSSliceRecord.ktsContext.setter()
{
  sub_1ABA7FC9C();
  result = sub_1ABA96210(*(v1 + 64), *(v1 + 72));
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t KTSSliceRecord.ktsData.getter()
{
  v0 = sub_1ABA7D000();
  sub_1ABB0DBF0(v0, v1);
  return sub_1ABA7D000();
}

uint64_t KTSSliceRecord.ktsData.setter()
{
  sub_1ABA7FC9C();
  result = sub_1ABA96210(*(v1 + 80), *(v1 + 88));
  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t sub_1ABDE8F98()
{
  v1 = objc_autoreleasePoolPush();
  v2 = sub_1ABF217F4();
  v3 = sub_1ABA806BC(v2);
  sub_1ABF217E4();
  v4 = sub_1ABA82858();
  type metadata accessor for KTSDataAggregateRepresentation(v4);
  v5 = sub_1ABDE9B4C(&qword_1EB4D9E70, type metadata accessor for KTSDataAggregateRepresentation, &protocol conformance descriptor for KTSDataRepresentation);
  sub_1ABAA1D74(v5);

  if (!v0)
  {
    v3 = v7;
  }

  objc_autoreleasePoolPop(v1);
  return v3;
}

void sub_1ABDE9080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v12 = v11;
  v11[3] = type metadata accessor for KTSContextAggregateRepresentation();
  v12[4] = sub_1ABDE9B4C(&qword_1EB4D9E20, type metadata accessor for KTSContextAggregateRepresentation, &protocol conformance descriptor for KTSContextAggregateRepresentation);
  v13 = objc_autoreleasePoolPush();
  v14 = sub_1ABF217F4();
  sub_1ABA806BC(v14);
  sub_1ABF217E4();
  v15 = sub_1ABDE9B4C(&qword_1EB4D95D8, type metadata accessor for KTSContextAggregateRepresentation, &protocol conformance descriptor for KTSContextAggregateRepresentation);
  sub_1ABAB5DA4(v15);

  objc_autoreleasePoolPop(v13);
  if (v10)
  {
    sub_1ABD5B8D0(v12);
  }

  else
  {
    *v12 = a10;
  }

  sub_1ABA7BC90();
}

BOOL sub_1ABDE918C(uint64_t a1, uint64_t a2)
{
  result = 0;
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (v8 && ((*(a1 + 48) ^ *(a2 + 48)) & 1) == 0 && ((*(a1 + 49) ^ *(a2 + 49)) & 1) == 0)
  {
    return *(a1 + 56) == *(a2 + 56);
  }

  return result;
}

void sub_1ABDE9248()
{
  sub_1ABA8E418();
  v39 = v2;
  v40 = v1;
  v4 = v3;
  v7 = sub_1ABAD219C(v5, v6);
  sub_1ABA7BB64();
  v9 = v8;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v33 - v11;
  v14 = *v0;
  v13 = *(v0 + 8);
  v37 = *(v0 + 16);
  v38 = v13;
  v16 = *(v0 + 24);
  v15 = *(v0 + 32);
  v17 = *(v0 + 40);
  v36 = *(v0 + 49);
  v18 = *(v0 + 56);
  v19 = *(v0 + 64);
  v34 = *(v0 + 72);
  v35 = v19;
  v20 = *(v0 + 88);
  v33[1] = *(v0 + 80);
  v33[2] = v20;
  sub_1ABA93E20(v4, v4[3]);
  v39();
  sub_1ABF252E4();
  v41 = v14;
  v21 = v12;
  sub_1ABAE8BC8();
  sub_1ABA97F74();
  v22 = v40;
  sub_1ABF24F84();
  if (!v22)
  {
    v24 = v34;
    v23 = v35;
    sub_1ABA95958(1);
    sub_1ABAB51B0();
    sub_1ABF24FB4();
    sub_1ABA95958(2);
    sub_1ABAB51B0();
    sub_1ABF24FB4();
    v25 = sub_1ABAA23FC(3);
    v26.n128_u64[0] = v16;
    sub_1ABAB6994(v25, v26);
    v27 = sub_1ABAA23FC(4);
    v28.n128_u64[0] = v15;
    sub_1ABAB6994(v27, v28);
    v29 = sub_1ABAA23FC(5);
    v30.n128_u64[0] = v18;
    sub_1ABAB6994(v29, v30);
    v31 = sub_1ABAA23FC(6);
    v32.n128_u64[0] = v17;
    sub_1ABAB6994(v31, v32);
    sub_1ABA95958(7);
    sub_1ABAB51B0();
    sub_1ABF24F44();
    sub_1ABA95958(8);
    sub_1ABAB51B0();
    sub_1ABF24F44();
    v41 = v23;
    v42 = v24;
    sub_1ABB0DBF0(v23, v24);
    sub_1ABC38D74();
    sub_1ABA97F74();
    sub_1ABF24F84();
    sub_1ABAB6828();
    sub_1ABAB2BAC();
    sub_1ABA97F74();
    sub_1ABF24F84();
    sub_1ABAB6828();
  }

  (*(v9 + 8))(v21, v7);
  sub_1ABA9A664();
}

unint64_t sub_1ABDE94FC(uint64_t a1, uint64_t a2)
{
  sub_1ABDEAD2C();
  v2 = sub_1ABF24D84();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1ABDE954C(char a1)
{
  result = 0x4974736575716572;
  switch(a1)
  {
    case 1:
      result = 0x6D69547472617473;
      break;
    case 2:
      result = sub_1ABA97654();
      break;
    case 3:
      result = sub_1ABAA2DD4();
      break;
    case 4:
      result = sub_1ABA94CBC();
      break;
    case 5:
      result = sub_1ABA8C6D0();
      break;
    case 6:
      result = sub_1ABAA3258();
      break;
    case 7:
      result = sub_1ABAB1210();
      break;
    case 8:
      result = sub_1ABA7AB48();
      break;
    case 9:
      result = sub_1ABA99658();
      break;
    case 10:
      result = 0x6174614473746BLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1ABDE9624@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1ABDE94FC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1ABDE9654@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ABDE954C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1ABDE969C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABDE9544(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABDE96C4(uint64_t a1)
{
  v2 = sub_1ABDE9C50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABDE9700(uint64_t a1)
{
  v2 = sub_1ABDE9C50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void KTSSliceRecord.init(from:)()
{
  sub_1ABA8E418();
  v2 = v1;
  sub_1ABAD219C(&qword_1EB4D9EA0, &qword_1ABF62D58);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA93E20(v2, v2[3]);
  v4 = sub_1ABDE9C50();
  sub_1ABAB53B8(&unk_1F2089070, v5, v4);
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    v12 = 0;
    sub_1ABA7DD70();
    sub_1ABF24E94();
    sub_1ABA8F8A0(1);
    sub_1ABF24E94();
    sub_1ABA8F8A0(2);
    sub_1ABF24E94();
    sub_1ABA8F8A0(3);
    sub_1ABF24E34();
    sub_1ABA8F8A0(4);
    sub_1ABF24E34();
    sub_1ABA8F8A0(6);
    sub_1ABF24E34();
    sub_1ABA8F8A0(7);
    sub_1ABF24E24();
    sub_1ABA8F8A0(8);
    sub_1ABF24E24();
    sub_1ABA8F8A0(5);
    sub_1ABF24E34();
    sub_1ABA964E0();
    sub_1ABAA3A5C();
    *(v7 - 256) = v6;
    sub_1ABA80994();
    sub_1ABF24E64();
    sub_1ABAA203C();
    sub_1ABAA3A5C();
    sub_1ABA80994();
    sub_1ABF24E64();
    v8 = sub_1ABA7BCF0();
    v9(v8);
    sub_1ABA937FC();
    sub_1ABDE45C4(&v11, &v12);
    sub_1ABA84B54(v2);
    v10 = sub_1ABA81B2C();
    sub_1ABDE4790(v10);
  }

  sub_1ABA9A664();
}

uint64_t sub_1ABDE99E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABDEA1C4();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1ABDE9A60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_1ABA93DC0(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1ABAFF5C4(&v12, v10 + 40 * a1 + 32);
}

unint64_t sub_1ABDE9AF8()
{
  result = qword_1EB4D9E60;
  if (!qword_1EB4D9E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9E60);
  }

  return result;
}

uint64_t sub_1ABDE9B4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1ABDE9B94()
{
  result = qword_1EB4D9E80;
  if (!qword_1EB4D9E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9E80);
  }

  return result;
}

unint64_t sub_1ABDE9C50()
{
  result = qword_1EB4D9E98;
  if (!qword_1EB4D9E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9E98);
  }

  return result;
}

unint64_t sub_1ABDE9CA8()
{
  result = qword_1EB4D9EA8;
  if (!qword_1EB4D9EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9EA8);
  }

  return result;
}

unint64_t sub_1ABDE9CFC(void *a1)
{
  a1[1] = sub_1ABDE4448();
  a1[2] = sub_1ABDE9D44();
  a1[3] = sub_1ABDE9D98();
  a1[4] = sub_1ABDE9DEC();
  result = sub_1ABDE9E40();
  a1[5] = result;
  return result;
}

unint64_t sub_1ABDE9D44()
{
  result = qword_1EB4D9EB0;
  if (!qword_1EB4D9EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9EB0);
  }

  return result;
}

unint64_t sub_1ABDE9D98()
{
  result = qword_1EB4D9EB8;
  if (!qword_1EB4D9EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9EB8);
  }

  return result;
}

unint64_t sub_1ABDE9DEC()
{
  result = qword_1EB4D9EC0;
  if (!qword_1EB4D9EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9EC0);
  }

  return result;
}

unint64_t sub_1ABDE9E40()
{
  result = qword_1EB4D9EC8;
  if (!qword_1EB4D9EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9EC8);
  }

  return result;
}

unint64_t sub_1ABDE9EE8(void *a1)
{
  a1[1] = sub_1ABDE9F30();
  a1[2] = sub_1ABDE9F84();
  a1[3] = sub_1ABDE9FD8();
  a1[4] = sub_1ABDEA02C();
  result = sub_1ABDEA080();
  a1[5] = result;
  return result;
}

unint64_t sub_1ABDE9F30()
{
  result = qword_1EB4D9ED0;
  if (!qword_1EB4D9ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9ED0);
  }

  return result;
}

unint64_t sub_1ABDE9F84()
{
  result = qword_1EB4D9ED8;
  if (!qword_1EB4D9ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9ED8);
  }

  return result;
}

unint64_t sub_1ABDE9FD8()
{
  result = qword_1EB4D9EE0;
  if (!qword_1EB4D9EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9EE0);
  }

  return result;
}

unint64_t sub_1ABDEA02C()
{
  result = qword_1EB4D9EE8;
  if (!qword_1EB4D9EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9EE8);
  }

  return result;
}

unint64_t sub_1ABDEA080()
{
  result = qword_1EB4D9EF0;
  if (!qword_1EB4D9EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9EF0);
  }

  return result;
}

unint64_t sub_1ABDEA128(void *a1)
{
  a1[1] = sub_1ABDE44C8();
  a1[2] = sub_1ABDEA170();
  a1[3] = sub_1ABDEA1C4();
  a1[4] = sub_1ABDEA218();
  result = sub_1ABDEA26C();
  a1[5] = result;
  return result;
}

unint64_t sub_1ABDEA170()
{
  result = qword_1EB4D9EF8;
  if (!qword_1EB4D9EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9EF8);
  }

  return result;
}

unint64_t sub_1ABDEA1C4()
{
  result = qword_1EB4D9F00;
  if (!qword_1EB4D9F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9F00);
  }

  return result;
}

unint64_t sub_1ABDEA218()
{
  result = qword_1EB4D9F08;
  if (!qword_1EB4D9F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9F08);
  }

  return result;
}

unint64_t sub_1ABDEA26C()
{
  result = qword_1EB4D9F10;
  if (!qword_1EB4D9F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9F10);
  }

  return result;
}

uint64_t sub_1ABDEA314(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  a1[3] = a6();
  result = a7();
  a1[4] = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for KTSRecordType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1ABDEA5D0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 96))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 48);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_1ABDEA61C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_1ABDEA690(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for KTSSegmentRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABDEA848()
{
  result = qword_1EB4D9F18;
  if (!qword_1EB4D9F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9F18);
  }

  return result;
}

unint64_t sub_1ABDEA8A0()
{
  result = qword_1EB4D9F20;
  if (!qword_1EB4D9F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9F20);
  }

  return result;
}

unint64_t sub_1ABDEA8F8()
{
  result = qword_1EB4D9F28;
  if (!qword_1EB4D9F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9F28);
  }

  return result;
}

unint64_t sub_1ABDEA950()
{
  result = qword_1EB4D9F30;
  if (!qword_1EB4D9F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9F30);
  }

  return result;
}

unint64_t sub_1ABDEA9A8()
{
  result = qword_1EB4D9F38;
  if (!qword_1EB4D9F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9F38);
  }

  return result;
}

unint64_t sub_1ABDEAA00()
{
  result = qword_1EB4D9F40;
  if (!qword_1EB4D9F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9F40);
  }

  return result;
}

unint64_t sub_1ABDEAA58()
{
  result = qword_1EB4D9F48;
  if (!qword_1EB4D9F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9F48);
  }

  return result;
}

unint64_t sub_1ABDEAAB0()
{
  result = qword_1EB4D9F50;
  if (!qword_1EB4D9F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9F50);
  }

  return result;
}

unint64_t sub_1ABDEAB08()
{
  result = qword_1EB4D9F58;
  if (!qword_1EB4D9F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9F58);
  }

  return result;
}

unint64_t sub_1ABDEAB5C()
{
  result = qword_1EB4D9F60;
  if (!qword_1EB4D9F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9F60);
  }

  return result;
}

uint64_t sub_1ABDEABB0(uint64_t a1, uint64_t a2)
{
  sub_1ABDEAD2C();
  v4 = *(v3 + 24);
  *(v2 + 24) = v4;
  *(v2 + 32) = *(v3 + 32);
  (**(v4 - 8))(v2);
  return v2;
}

uint64_t sub_1ABDEAD4C@<X0>(uint64_t a2@<X1>, uint64_t a9@<X8>)
{
  *a2 = a9;
  *(a2 + 8) = v9;
  *(a2 + 16) = 4;

  return swift_willThrow();
}

void sub_1ABDEAD7C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = [swift_unknownObjectRetain() viewArtifactTableName];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1ABF23C04();
    v12 = v11;
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v12 = 0xEB00000000746E65;
    v10 = 0x6D6765735F73746BLL;
  }

  if (qword_1EB4CE7E8 != -1)
  {
    swift_once();
  }

  v13 = sub_1ABF237F4();
  sub_1ABA7AA24(v13, qword_1EB4CE7F0);
  v14 = sub_1ABF237D4();
  v15 = sub_1ABF24644();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1ABA78000, v14, v15, "Fetching KTSSegmentView for client.", v16, 2u);
    MEMORY[0x1AC5AB8B0](v16, -1, -1);
  }

  *a4 = a1;
  a4[1] = v10;
  a4[2] = v12;
  a4[3] = a2;
  a4[4] = a3;
}

unint64_t sub_1ABDEAF18(uint64_t a1)
{
  v1 = sub_1ABF24D84();

  if (v1 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1ABDEAF64(char a1)
{
  result = 0x656D67655373746BLL;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 0x6D69547472617473;
      break;
    case 3:
      result = 0x656D6954646E65;
      break;
    case 4:
      result = 0x65636E6174736964;
      break;
    case 5:
      result = 0x6F69746176656C65;
      break;
    case 6:
      result = 0x65726F6373;
      break;
    case 7:
      result = 0x6E6F697461727564;
      break;
    case 8:
      result = 0x797469437369;
      break;
    case 9:
      result = 0x6177686769487369;
      break;
    case 10:
      result = 0x65746E6F4373746BLL;
      break;
    case 11:
      result = 0x6174614473746BLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1ABDEB0F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1ABDEAF18(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1ABDEB120@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ABDEAF64(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1ABDEB14C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABDEB510();

  return MEMORY[0x1EEE09870](a1, a2, v4);
}

uint64_t sub_1ABDEB198(uint64_t a1)
{
  v2 = sub_1ABDEB564();

  return MEMORY[0x1EEE09858](a1, v2);
}

uint64_t sub_1ABDEB1E4(uint64_t a1)
{
  v2 = sub_1ABDEB464();

  return MEMORY[0x1EEE09A90](a1, v2);
}

uint64_t sub_1ABDEB230(uint64_t a1)
{
  v2 = sub_1ABDEB464();

  return MEMORY[0x1EEE09A88](a1, v2);
}

_BYTE *storeEnumTagSinglePayload for KTSSegmentViewColumns(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABDEB35C()
{
  result = qword_1EB4D9F70;
  if (!qword_1EB4D9F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9F70);
  }

  return result;
}

unint64_t sub_1ABDEB3B4()
{
  result = qword_1EB4D9F78;
  if (!qword_1EB4D9F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9F78);
  }

  return result;
}

unint64_t sub_1ABDEB40C()
{
  result = qword_1EB4D9F80;
  if (!qword_1EB4D9F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9F80);
  }

  return result;
}

unint64_t sub_1ABDEB464()
{
  result = qword_1EB4D9F88;
  if (!qword_1EB4D9F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9F88);
  }

  return result;
}

unint64_t sub_1ABDEB4BC()
{
  result = qword_1EB4D9F90;
  if (!qword_1EB4D9F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9F90);
  }

  return result;
}

unint64_t sub_1ABDEB510()
{
  result = qword_1EB4D9F98;
  if (!qword_1EB4D9F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9F98);
  }

  return result;
}

unint64_t sub_1ABDEB564()
{
  result = qword_1EB4D9FA0;
  if (!qword_1EB4D9FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9FA0);
  }

  return result;
}

void sub_1ABDEB5C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = [swift_unknownObjectRetain() viewArtifactTableName];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1ABF23C04();
    v12 = v11;

    swift_unknownObjectRelease();
    if (qword_1EB4CE7E8 != -1)
    {
      swift_once();
    }

    v13 = sub_1ABF237F4();
    sub_1ABA7AA24(v13, qword_1EB4CE7F0);
    v14 = sub_1ABF237D4();
    v15 = sub_1ABF24644();
    if (os_log_type_enabled(v14, v15))
    {
      v22 = a3;
      v16 = a2;
      v17 = v12;
      v18 = v10;
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1ABA78000, v14, v15, "Fetching KTSSliceView for client.", v19, 2u);
      v20 = v19;
      v10 = v18;
      v12 = v17;
      a2 = v16;
      a3 = v22;
      MEMORY[0x1AC5AB8B0](v20, -1, -1);
    }

    *a4 = a1;
    a4[1] = v10;
    a4[2] = v12;
    a4[3] = a2;
    a4[4] = a3;
  }

  else
  {
    swift_unknownObjectRelease();
    sub_1ABDBF718();
    swift_allocError();
    *v21 = 0xD000000000000015;
    *(v21 + 8) = 0x80000001ABF91450;
    *(v21 + 16) = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1ABDEB798()
{
  v0 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABB9009C(v0, qword_1EB4CF640);
  sub_1ABA7AA24(v0, qword_1EB4CF640);
  return sub_1ABF22CE4();
}

uint64_t LanguageView.databaseFilePath.getter()
{
  v2 = sub_1ABF21CF4();
  sub_1ABA7BB64();
  v4 = v3;
  *&v6 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    v9 = [*v0 viewArtifactURL];
    sub_1ABF21CA4();

    v1 = sub_1ABF21CB4();
    (*(v4 + 8))(v8, v2);
  }

  else
  {
    sub_1ABB93C20();
    swift_allocError();
    *v10 = 0xD00000000000001ELL;
    *(v10 + 8) = 0x80000001ABF91470;
    *(v10 + 16) = 0;
    swift_willThrow();
  }

  return v1;
}

uint64_t LanguageView.inferredLanguageTriples()()
{
  v2 = MEMORY[0x1E69E7CC0];
  swift_getObjectType();
  sub_1ABF22464();
  if (v0)
  {
  }

  return v2;
}

uint64_t sub_1ABDEBA08(uint64_t a1, uint64_t *a2)
{
  if (qword_1EB4CF630 != -1)
  {
    swift_once();
  }

  v4 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABA7AA24(v4, qword_1EB4CF640);
  result = sub_1ABF22CD4();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t GDLanguageView.databaseFilePath.getter()
{
  v1 = sub_1ABF21CF4();
  sub_1ABA7BB64();
  v3 = v2;
  *&v5 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform14GDLanguageView_assertion);
  if (!v8)
  {
    return 0;
  }

  v9 = [v8 viewArtifactURL];
  sub_1ABF21CA4();

  v10 = sub_1ABF21CB4();
  (*(v3 + 8))(v7, v1);
  return v10;
}

id GDLanguageView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GDLanguageView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for LemmatizedSubgraphView(uint64_t a1)
{
  result = qword_1ED871198;
  if (!qword_1ED871198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1ABDEBDD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  v7 = [swift_unknownObjectRetain() viewArtifactTableName];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1ABF23C04();
    v11 = v10;
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v11 = 0x80000001ABF91510;
    v9 = 0xD000000000000013;
  }

  v12 = (a4 + *(type metadata accessor for LemmatizedSubgraphView(0) + 20));
  *v12 = a2;
  v12[1] = a3;
  v12[2] = v9;
  v12[3] = v11;
  v13 = type metadata accessor for SearchableViewDatabaseTable(0);
  swift_bridgeObjectRetain_n();
  sub_1ABF22CE4();
  v14 = (v12 + v13[9]);
  *v14 = 0x7463656A627573;
  v14[1] = 0xE700000000000000;
  *(v12 + v13[8]) = &unk_1F208FB20;
  result = MEMORY[0x1AC5A9410](0x5F7463656A626F5FLL, 0xEB00000000737466);
  v16 = (v12 + v13[7]);
  *v16 = v9;
  v16[1] = v11;
  return result;
}

uint64_t sub_1ABDEBF38()
{
  memset(v2, 0, sizeof(v2));
  *(v0 + 16) = 29804;
  *(v0 + 24) = 0xE200000000000000;
  *(v0 + 32) = &unk_1F208E8E8;
  *(v0 + 40) = 115;
  *(v0 + 48) = 0xE100000000000000;
  *(v0 + 56) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xD000000000000039;
  *(v0 + 72) = 0x80000001ABF91560;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;

  sub_1ABAE4AA8(v2);

  return v0;
}

uint64_t sub_1ABDEBFF8()
{
  memset(v2, 0, sizeof(v2));
  *(v0 + 16) = 6648940;
  *(v0 + 24) = 0xE300000000000000;
  *(v0 + 32) = &unk_1F208E928;
  *(v0 + 40) = 115;
  *(v0 + 48) = 0xE100000000000000;
  *(v0 + 56) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xD000000000000042;
  *(v0 + 72) = 0x80000001ABF915D0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;

  sub_1ABAE4AA8(v2);

  return v0;
}

uint64_t sub_1ABDEC0C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1ABDEC108(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABDEC154()
{
  result = sub_1ABF239C4();
  qword_1ED86D3A0 = result;
  return result;
}

uint64_t sub_1ABDEC1BC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0x3A657079745BLL, 0xE600000000000000);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](0x3A65756C61762CLL, 0xE700000000000000);
  MEMORY[0x1AC5A9410](a2, a3);
  MEMORY[0x1AC5A9410](0x3A736F702CLL, 0xE500000000000000);
  v6 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v6);

  MEMORY[0x1AC5A9410](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_1ABDEC2F4(uint64_t a1, uint64_t *a2)
{
  v64 = a1;
  if (qword_1ED86D398 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v61 = qword_1ED86D3A0;

    v3 = sub_1ABF239C4();
    v62 = a2[2];
    if (v62)
    {
      break;
    }

LABEL_14:

    v32 = v64;
    v63 = *(v64 + 16);
    if (!v63)
    {
LABEL_26:

      return v61;
    }

    v33 = 0;
    a2 = (v64 + 40);
    while (v33 < *(v32 + 16))
    {
      v35 = *(a2 - 1);
      v34 = *a2;

      swift_isUniquelyReferenced_nonNull_native();
      sub_1ABA94FC8(v35, v34, v36, v37, v38, v39, v40, v41, v61, v63, v64, v3, v67, v68, v69, v70, v71, v72);
      sub_1ABA7DD84();
      if (v16)
      {
        goto LABEL_30;
      }

      v44 = v42;
      v45 = v43;
      v46 = sub_1ABAD219C(&qword_1EB4DA028, qword_1ABF63C28);
      if (sub_1ABA80FD0(v46))
      {
        v53 = sub_1ABA94FC8(v35, v34, v47, v48, v49, v50, v51, v52, v61, v63, v64, v66, v67, v68, v69, v70, v71, v72);
        if ((v45 & 1) != (v54 & 1))
        {
          goto LABEL_34;
        }

        v44 = v53;
      }

      if (v45)
      {

        v3 = v66;
        *(*(v66 + 56) + v44) = 1;
      }

      else
      {
        v3 = v66;
        sub_1ABA7F258(v66 + 8 * (v44 >> 6));
        v56 = (v55 + 16 * v44);
        *v56 = v35;
        v56[1] = v34;
        *(*(v66 + 56) + v44) = v57;
        v58 = *(v66 + 16);
        v16 = __OFADD__(v58, 1);
        v59 = v58 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        *(v66 + 16) = v59;
      }

      ++v33;
      a2 += 2;
      v32 = v64;
      if (v63 == v33)
      {
        goto LABEL_26;
      }
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
  }

  v4 = 0;
  v5 = a2 + 5;
  while (1)
  {
    if (v4 >= a2[2])
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v7 = *(v5 - 1);
    v6 = *v5;

    swift_isUniquelyReferenced_nonNull_native();
    sub_1ABA94FC8(v7, v6, v8, v9, v10, v11, v12, v13, v61, v62, v64, v3, v67, v68, v69, v70, v71, v72);
    sub_1ABA7DD84();
    if (v16)
    {
      goto LABEL_28;
    }

    v17 = v14;
    v18 = v15;
    v19 = sub_1ABAD219C(&qword_1EB4DA028, qword_1ABF63C28);
    if (sub_1ABA80FD0(v19))
    {
      break;
    }

LABEL_9:
    if (v18)
    {

      v3 = v65;
      *(*(v65 + 56) + v17) = 3;
    }

    else
    {
      v3 = v65;
      sub_1ABA7F258(v65 + 8 * (v17 >> 6));
      v29 = (v28 + 16 * v17);
      *v29 = v7;
      v29[1] = v6;
      *(*(v65 + 56) + v17) = 3;
      v30 = *(v65 + 16);
      v16 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v16)
      {
        goto LABEL_31;
      }

      *(v65 + 16) = v31;
    }

    ++v4;
    v5 += 2;
    if (v62 == v4)
    {
      goto LABEL_14;
    }
  }

  v26 = sub_1ABA94FC8(v7, v6, v20, v21, v22, v23, v24, v25, v61, v62, v64, v65, v67, v68, v69, v70, v71, v72);
  if ((v18 & 1) == (v27 & 1))
  {
    v17 = v26;
    goto LABEL_9;
  }

LABEL_34:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABDEC5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{

  v10 = sub_1ABF23D44();
  *a5 = a3;
  a5[1] = a4;
  a5[2] = a1;
  a5[3] = a2;
  a5[4] = v10;
  a5[5] = 0;
  a5[6] = MEMORY[0x1E69E7CC0];
  a5[7] = -1;
}

void sub_1ABDEC684()
{
  v1 = *(v0 + 56);
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = *(v0 + 48);
    *(v0 + 56) = v2;
    if (v2 >= *(v3 + 16))
    {
      v4 = sub_1ABDEC8B8();
      v6 = v5;
      v8 = v7;
      v10 = v9;

      sub_1ABB4DD88();
      v11 = *(*(v0 + 48) + 16);
      sub_1ABB4E18C(v11);
      v12 = *(v0 + 48);
      *(v12 + 16) = v11 + 1;
      v13 = v12 + 32 * v11;
      *(v13 + 32) = v4;
      *(v13 + 40) = v6;
      *(v13 + 48) = v8;
      *(v13 + 56) = v10;
      *(v0 + 48) = v12;
      goto LABEL_6;
    }

    if ((v2 & 0x8000000000000000) == 0)
    {

LABEL_6:
      *(v0 + 56) = v2 - 1;
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1ABDEC780()
{
  v1 = *(v0 + 56);
  if (v1 <= 0)
  {
    v3 = 10;
  }

  else
  {
    v2 = *(v0 + 48);
    if (v1 > *(v2 + 16))
    {
      goto LABEL_8;
    }

    v3 = *(v2 + 32 * v1);
  }

  if (!__OFSUB__(v1, 1))
  {
    *(v0 + 56) = v1 - 1;
    return v3;
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1ABDEC828()
{
  v1 = *(v0 + 56);
  if (v1 <= 0)
  {
    return 10;
  }

  v2 = *(v0 + 48);
  if (v1 <= *(v2 + 16))
  {
    v3 = *(v2 + 32 * v1);

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABDEC8B8()
{
  v1 = v0[5];
  v36 = v0[4];
  if (v1 >= v36)
  {
    return 7;
  }

  else
  {
    v2 = v0[2];
    v3 = v0[3];
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v2 & 0xFFFFFFFFFFFFLL;
    }

    v35 = v4;
    v5 = *v0;
    while (1)
    {
      v6 = sub_1ABF23D44();
      if (v6)
      {
        break;
      }

      v8 = MEMORY[0x1E69E7CC0];
LABEL_15:
      if (v1 < 0)
      {
        goto LABEL_42;
      }

      if (v1 >= v8[2])
      {
        goto LABEL_43;
      }

      v15 = &v8[2 * v1];
      v16 = v15[4];
      v17 = v15[5];

      if (*(v5 + 16) && (v24 = sub_1ABA980D8(v16, v17, v18, v19, v20, v21, v22, v23, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43), (v25 & 1) != 0))
      {
        v26 = *(*(v5 + 56) + v24);
      }

      else
      {
        v26 = 6;
      }

      if (qword_1ED86D3C0 != -1)
      {
        swift_once();
      }

      v27 = off_1ED86D3C8;
      if (*(off_1ED86D3C8 + 2))
      {
        sub_1ABF25234();
        MEMORY[0x1AC5AA8A0](v26);
        v28 = sub_1ABF25294();
        v29 = ~(-1 << v27[32]);
        while (1)
        {
          v30 = v28 & v29;
          if (((*&v27[(((v28 & v29) >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> (v28 & v29)) & 1) == 0)
          {
            break;
          }

          v28 = v30 + 1;
          if (*(*(v27 + 6) + v30) == v26)
          {
            if (__OFADD__(v1, 1))
            {
              goto LABEL_45;
            }

            v0[5] = v1 + 1;
            return v26;
          }
        }
      }

      if (v26 != 9)
      {
        if (v26 == 5)
        {
          return sub_1ABDECE6C();
        }

        if (v26 != 17)
        {
          return sub_1ABDED2B4();
        }

        sub_1ABDECDAC();
        return v33;
      }

      sub_1ABDECBA0();
      v31 = v0[5];
      v1 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_44;
      }

      v0[5] = v1;
      if (v1 >= v36)
      {
        return 7;
      }
    }

    v7 = v6;
    if (v6 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D10D8, &unk_1ABF33260);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v8[2] = v7;
      v8[3] = 2 * ((v9 - 32) / 16);
    }

    v37 = v2;
    v38 = v3;
    v10 = v7 & ~(v7 >> 63);
    v39 = 0;
    v40 = v35;

    v11 = 4;
    while (v10)
    {
      v12 = sub_1ABF23DE4();
      if (!v13)
      {
        goto LABEL_46;
      }

      v14 = &v8[v11];
      *v14 = v12;
      v14[1] = v13;
      v11 += 2;
      --v10;
      if (!--v7)
      {

        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:

    __break(1u);
  }

  return result;
}

void sub_1ABDECBA0()
{
  v1 = v0[5];
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
LABEL_31:
    __break(1u);
    return;
  }

  v3 = v0;
  v0[5] = v2;
  v33 = v0[4];
  if (v2 < v33)
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = *v0;
    v7 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v7 = v5 & 0xFFFFFFFFFFFFLL;
    }

    v31 = v2;
    v32 = v7;
    v8 = v2;
    v30 = v0;
    while (1)
    {
      v9 = sub_1ABF23D44();
      if (v9)
      {
        v10 = v9;
        if (v9 < 1)
        {
          v11 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          sub_1ABAD219C(&qword_1EB4D10D8, &unk_1ABF33260);
          v11 = swift_allocObject();
          v12 = j__malloc_size(v11);
          v11[2] = v10;
          v11[3] = 2 * ((v12 - 32) / 16);
        }

        v34 = v5;
        v35 = v4;
        v36 = 0;
        v37 = v32;

        v13 = 0;
        v14 = 4;
        while (1)
        {
          if ((v10 & ~(v10 >> 63)) == v13)
          {
            __break(1u);
            goto LABEL_28;
          }

          v15 = sub_1ABF23DE4();
          if (!v16)
          {
            break;
          }

          v17 = &v11[v14];
          ++v13;
          *v17 = v15;
          v17[1] = v16;
          v14 += 2;
          if (v10 == v13)
          {
            v13 = v10;
            break;
          }
        }

        v3 = v30;
        v2 = v31;
        if (v13 != v10)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      if (v2 < 0)
      {
        break;
      }

      if (v8 >= v11[2])
      {
        goto LABEL_29;
      }

      v18 = &v11[2 * v8];
      v19 = v18[4];
      v20 = v18[5];

      if (!*(v6 + 16))
      {

LABEL_25:
        v3[5] = v8 - 1;
        return;
      }

      v27 = sub_1ABA980D8(v19, v20, v21, v22, v23, v24, v25, v26, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
      v29 = v28;

      if ((v29 & 1) == 0 || *(*(v6 + 56) + v27) != 9)
      {
        goto LABEL_25;
      }

      v3[5] = ++v8;
      if (v8 >= v33)
      {
        return;
      }
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }
}

void sub_1ABDECDAC()
{
  v1 = v0[5];
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v0[5] = v2;
  if (v2 == v0[4])
  {
    return;
  }

  v3 = sub_1ABA967E4(v0[2], v0[3]);
  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if (v2 >= v3[2])
  {
LABEL_9:
    __break(1u);
    return;
  }

  v0[5] = v2 + 1;
}

uint64_t sub_1ABDECE6C()
{
  v1 = v0[5];
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:

    __break(1u);
    return result;
  }

  v3 = v0;
  v0[5] = v2;
  v4 = v0[4];
  if (v2 >= v4)
  {
LABEL_38:

    return 10;
  }

  v5 = v0[2];
  v6 = v0[3];
  v7 = *v0;
  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  v48 = v8;
  v49 = v0;
  v46 = v2;
  v50 = v0[4];
  while (1)
  {
    v9 = sub_1ABF23D44();
    if (v9)
    {
      v10 = v9;
      if (v9 < 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1ABAD219C(&qword_1EB4D10D8, &unk_1ABF33260);
        v11 = swift_allocObject();
        v12 = j__malloc_size(v11);
        v11[2] = v10;
        v11[3] = 2 * ((v12 - 32) / 16);
      }

      v51 = v5;
      v52 = v6;
      v53 = 0;
      v54 = v48;

      v13 = 0;
      v14 = 4;
      while (1)
      {
        if ((v10 & ~(v10 >> 63)) == v13)
        {
          __break(1u);
          goto LABEL_38;
        }

        v15 = sub_1ABF23DE4();
        if (!v16)
        {
          break;
        }

        v17 = &v11[v14];
        ++v13;
        *v17 = v15;
        v17[1] = v16;
        v14 += 2;
        if (v10 == v13)
        {
          v13 = v10;
          break;
        }
      }

      v3 = v49;
      v4 = v50;
      if (v13 != v10)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    if (v2 < 0)
    {
      goto LABEL_44;
    }

    if (v2 >= v11[2])
    {
      goto LABEL_45;
    }

    v18 = &v11[2 * v2];
    v19 = v18[4];
    v20 = v18[5];

    if (!*(v7 + 16))
    {

      goto LABEL_37;
    }

    v27 = sub_1ABA980D8(v19, v20, v21, v22, v23, v24, v25, v26, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
    v29 = v28;

    if (v29)
    {
      v30 = *(*(v7 + 56) + v27);
      if (v30 == 17)
      {
        v31 = v2 + 1;
        v3[5] = v2 + 1;
        if (v2 + 1 == v4)
        {
          goto LABEL_38;
        }

        HIDWORD(v47) = 17;
        v32 = sub_1ABF23D44();
        if (v32)
        {
          v33 = v32;
          if (v32 < 1)
          {
            v34 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            sub_1ABAD219C(&qword_1EB4D10D8, &unk_1ABF33260);
            v34 = swift_allocObject();
            v35 = j__malloc_size(v34);
            v34[2] = v33;
            v34[3] = 2 * ((v35 - 32) / 16);
          }

          v51 = v5;
          v52 = v6;
          v36 = v33 & ~(v33 >> 63);
          v53 = 0;
          v54 = v48;

          v37 = 4;
          while (v36)
          {
            v38 = sub_1ABF23DE4();
            if (!v39)
            {
              goto LABEL_50;
            }

            v40 = &v34[v37];
            *v40 = v38;
            v40[1] = v39;
            v37 += 2;
            --v36;
            if (!--v33)
            {

              v3 = v49;
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        v34 = MEMORY[0x1E69E7CC0];
LABEL_34:
        if (v31 >= v34[2])
        {
          goto LABEL_47;
        }

        v41 = &v34[2 * v31];
        v42 = v41[4];
        v43 = v41[5];

        v46 = v2 + 2;
        v3[5] = v2 + 2;
        MEMORY[0x1AC5A9410](v42, v43);
        v4 = v50;

        ++v2;
        v30 = 17;
      }

      if (v30 == 5)
      {
        break;
      }
    }

LABEL_37:
    v3[5] = ++v2;
    if (v2 >= v4)
    {
      goto LABEL_38;
    }
  }

  sub_1ABA967E4(v5, v6);
  if (v2 < v46)
  {
    goto LABEL_49;
  }

  sub_1ABDF015C();

  sub_1ABAD219C(&qword_1EB4DA020, &qword_1ABF63C20);
  sub_1ABDED644();
  sub_1ABF23D94();
  swift_unknownObjectRelease();
  *(v49 + 40) = v2 + 1;
  return 6;
}

uint64_t sub_1ABDED2B4()
{
  v1 = v0[5];
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:

    __break(1u);
    return result;
  }

  v3 = v0;
  v0[5] = v2;
  v4 = v0[4];
  if (v2 >= v4)
  {
    return 10;
  }

  v5 = v3[2];
  v6 = v3[3];
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v5 & 0xFFFFFFFFFFFFLL;
  }

  v46 = v1;
  v47 = v7;
  v48 = v4;
  v49 = *v3;
  v8 = v1 + 1;
  while (1)
  {
    v9 = sub_1ABF23D44();
    if (v9)
    {
      v10 = v9;
      if (v9 < 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1ABAD219C(&qword_1EB4D10D8, &unk_1ABF33260);
        v11 = swift_allocObject();
        v12 = j__malloc_size(v11);
        v11[2] = v10;
        v11[3] = 2 * ((v12 - 32) / 16);
      }

      v50 = v5;
      v51 = v6;
      v13 = v10 & ~(v10 >> 63);
      v52 = 0;
      v53 = v47;

      v14 = 4;
      while (v13)
      {
        v15 = sub_1ABF23DE4();
        if (!v16)
        {
          goto LABEL_47;
        }

        v17 = &v11[v14];
        *v17 = v15;
        v17[1] = v16;
        v14 += 2;
        --v13;
        if (!--v10)
        {

          v1 = v46;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v11 = MEMORY[0x1E69E7CC0];
LABEL_16:
    if (v2 < 0)
    {
      goto LABEL_42;
    }

    if (v8 >= v11[2])
    {
      goto LABEL_43;
    }

    v18 = v3;
    v19 = v1;
    v20 = v6;
    v21 = v2;
    v22 = v5;
    v23 = &v11[2 * v8];
    v24 = v23[4];
    v25 = v23[5];

    if (*(v49 + 16))
    {
      v32 = v24;
      v33 = v49;
      v34 = sub_1ABA980D8(v32, v25, v26, v27, v28, v29, v30, v31, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
      v36 = v35;

      if (v36)
      {
        v37 = *(*(v33 + 56) + v34);
        goto LABEL_23;
      }
    }

    else
    {
    }

    v37 = 6;
LABEL_23:
    v5 = v22;
    v2 = v21;
    if (qword_1ED86D3C0 != -1)
    {
      swift_once();
    }

    v38 = off_1ED86D3C8;
    v6 = v20;
    v1 = v19;
    v3 = v18;
    if (*(off_1ED86D3C8 + 2))
    {
      sub_1ABF25234();
      MEMORY[0x1AC5AA8A0](v37);
      v39 = sub_1ABF25294();
      v40 = ~(-1 << v38[32]);
      while (1)
      {
        v41 = v39 & v40;
        if (((*&v38[(((v39 & v40) >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> (v39 & v40)) & 1) == 0)
        {
          break;
        }

        v39 = v41 + 1;
        if (v37 == *(*(v38 + 6) + v41))
        {
          goto LABEL_34;
        }
      }
    }

    if (v37 == 9)
    {
      break;
    }

    if (__OFADD__(v8++, 1))
    {
      goto LABEL_45;
    }

    v18[5] = v8;
    if (v8 >= v48)
    {
      return 10;
    }
  }

LABEL_34:
  sub_1ABA967E4(v5, v6);
  if (v8 <= v1)
  {
    goto LABEL_46;
  }

  sub_1ABDF015C();

  sub_1ABAD219C(&qword_1EB4DA020, &qword_1ABF63C20);
  sub_1ABDED644();
  sub_1ABF23EA4();
  LODWORD(result) = sub_1ABAD52AC();
  if (result)
  {
    v44 = result == 20;
  }

  else
  {
    v44 = 1;
  }

  if (v44)
  {
    return 6;
  }

  else
  {
    return result;
  }
}

unint64_t sub_1ABDED644()
{
  result = qword_1ED86B908;
  if (!qword_1ED86B908)
  {
    sub_1ABAE2850(&qword_1EB4DA020, &qword_1ABF63C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B908);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocationEntityCard.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xED)
  {
    if (a2 + 19 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 19) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 20;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v5 = v6 - 20;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1ABDED73C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABDED818()
{
  result = qword_1ED86B9F8;
  if (!qword_1ED86B9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B9F8);
  }

  return result;
}

unint64_t sub_1ABDED878(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1ABDED8E4@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = HIBYTE(a2) & 0xF;
  *a3 = result;
  *(a3 + 8) = a2;
  v4 = MEMORY[0x1E69E7CC0];
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  *(a3 + 16) = 0;
  *(a3 + 24) = v3;
  *(a3 + 32) = v4;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  return result;
}

double sub_1ABDED914@<D0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  while (1)
  {
    sub_1ABDEDD90(a2);
    v7 = sub_1ABDEDFB8(v5, v6);
    if (!v9)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      v36 = -4;
LABEL_84:
      *(a1 + 24) = v36;
      return v8.n128_f64[0];
    }

    v10 = v7;
    sub_1ABAA3A6C();
    v12 = v12 && v11 == 0xE100000000000000;
    if (v12 || (sub_1ABA8F8B8(61) & 1) != 0)
    {

      sub_1ABDEE344(v21);
      if (!v22)
      {
        goto LABEL_49;
      }

      sub_1ABAA3A6C();
      if (v12 && v24 == 0xE100000000000000)
      {
      }

      else
      {
        v26 = sub_1ABA9036C(v23);

        if ((v26 & 1) == 0)
        {
LABEL_49:
          *a1 = 0;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          goto LABEL_83;
        }
      }

      sub_1ABDEDFB8(v27, v8);

      sub_1ABDEE344(v37);
      if (v38)
      {
        sub_1ABAA3A6C();
        if (v12 && v40 == 0xE100000000000000)
        {
        }

        else
        {
          v42 = sub_1ABA9036C(v39);

          if ((v42 & 1) == 0)
          {
            goto LABEL_71;
          }
        }

        sub_1ABDEDFB8(v43, v8);

        v35 = 2;
      }

      else
      {
LABEL_71:
        v35 = 1;
      }

      goto LABEL_82;
    }

    v13 = v10 == 33 && v3 == 0xE100000000000000;
    if (v13 || (sub_1ABA8F8B8(33) & 1) != 0)
    {

      sub_1ABDEE344(v28);
      if (v29)
      {
        sub_1ABAA3A6C();
        if (v12 && v31 == 0xE100000000000000)
        {
        }

        else
        {
          v33 = sub_1ABA9036C(v30);

          if ((v33 & 1) == 0)
          {
            goto LABEL_56;
          }
        }

        v35 = 10;
        goto LABEL_82;
      }

LABEL_56:
      v34 = *(v2 + 56);
      *a1 = 0xD000000000000012;
      *(a1 + 8) = 0x80000001ABF916D0;
      *(a1 + 16) = v34;
      goto LABEL_57;
    }

    v14 = v10 == 44 && v3 == 0xE100000000000000;
    if (v14 || (sub_1ABA8F8B8(44) & 1) != 0)
    {

      v35 = 3;
      goto LABEL_82;
    }

    v15 = v10 == 91 && v3 == 0xE100000000000000;
    if (v15 || (sub_1ABA8F8B8(91) & 1) != 0)
    {

      v35 = 4;
      goto LABEL_82;
    }

    v16 = v10 == 93 && v3 == 0xE100000000000000;
    if (v16 || (sub_1ABA8F8B8(93) & 1) != 0)
    {

      v35 = 5;
      goto LABEL_82;
    }

    v17 = v10 == 40 && v3 == 0xE100000000000000;
    if (v17 || (sub_1ABA8F8B8(40) & 1) != 0)
    {

      v35 = 6;
LABEL_82:
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = v35;
LABEL_83:
      v36 = -32;
      goto LABEL_84;
    }

    v18 = v10 == 41 && v3 == 0xE100000000000000;
    if (v18 || (sub_1ABA8F8B8(41) & 1) != 0)
    {

      v35 = 7;
      goto LABEL_82;
    }

    v19 = v10 == 10 && v3 == 0xE100000000000000;
    if (!v19 && (sub_1ABA8F8B8(10) & 1) == 0)
    {
      break;
    }

    sub_1ABDEDD90(v20);
  }

  v44 = v10 == 59 && v3 == 0xE100000000000000;
  if (v44 || (sub_1ABA8F8B8(59) & 1) != 0)
  {

    v35 = 8;
    goto LABEL_82;
  }

  v45 = v10 == 46 && v3 == 0xE100000000000000;
  if (v45 || (sub_1ABA8F8B8(46) & 1) != 0)
  {

    v35 = 9;
    goto LABEL_82;
  }

  v46 = v10 == 45 && v3 == 0xE100000000000000;
  if (v46 || (sub_1ABA8F8B8(45) & 1) != 0)
  {

    v35 = 11;
    goto LABEL_82;
  }

  v47 = v10 == 43 && v3 == 0xE100000000000000;
  if (v47 || (sub_1ABA8F8B8(43) & 1) != 0)
  {

    v35 = 12;
    goto LABEL_82;
  }

  v48 = v10 == 42 && v3 == 0xE100000000000000;
  if (v48 || (sub_1ABA8F8B8(42) & 1) != 0)
  {

    v35 = 13;
    goto LABEL_82;
  }

  v49 = v10 == 47 && v3 == 0xE100000000000000;
  if (v49 || (sub_1ABA8F8B8(47) & 1) != 0)
  {

    v35 = 14;
    goto LABEL_82;
  }

  sub_1ABA7BE8C();
  sub_1ABF23B04();
  if (v51)
  {
    v52 = v10 == 39 && v3 == 0xE100000000000000;
    if (v52 || (sub_1ABA8F8B8(39) & 1) != 0)
    {
      v53 = sub_1ABA7BE8C();
      sub_1ABDEF054(v53, v54, v55);
      goto LABEL_127;
    }

    sub_1ABA7BE8C();
    if (sub_1ABF23B24())
    {
LABEL_126:
      sub_1ABA7BE8C();
      sub_1ABDEE630();
      goto LABEL_127;
    }

    sub_1ABF23B14();

    v59 = *(v2 + 56);
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    *(a1 + 16) = v59;
LABEL_57:
    *(a1 + 24) = 0;
    return v8.n128_f64[0];
  }

  sub_1ABDEE598(v50);
  if (v56)
  {
    sub_1ABF23B04();
    v58 = v57;

    if (v58)
    {
      goto LABEL_126;
    }
  }

  sub_1ABA7BE8C();
  sub_1ABDEEAFC();
LABEL_127:

  v8.n128_u64[0] = v61;
  *a1 = v61;
  *(a1 + 16) = v62;
  *(a1 + 24) = v63;
  return v8.n128_f64[0];
}

void sub_1ABDEDD90(__n128 a1)
{
  while (1)
  {
    v2 = v1[4];
    if (v2[2])
    {
      v4 = v2[4];
      v3 = v2[5];

      v1[5] = v4;
      v1[6] = v3;

      goto LABEL_10;
    }

    v5 = v1[7];
    v6 = __OFADD__(v5, 1);
    v7 = v5 + 1;
    if (v6)
    {
      break;
    }

    v1[7] = v7;
    v8 = sub_1ABF23DE4();
    if (!v9)
    {
      return;
    }

    v4 = v8;
    v3 = v9;

    v1[5] = v4;
    v1[6] = v3;
    swift_bridgeObjectRetain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA7BEF0();
      sub_1ABAD8D3C();
      v2 = v24;
    }

    v10 = v2[2];
    if (v10 >= v2[3] >> 1)
    {
      sub_1ABAD8D3C();
      v2 = v25;
    }

    v2[2] = v10 + 1;
    v11 = &v2[2 * v10];
    v11[4] = v4;
    v11[5] = v3;
    v1[4] = v2;
LABEL_10:
    v12 = sub_1ABDEFBB8(v4, v3);
    if ((v12 & 0x100000000) != 0)
    {
      goto LABEL_30;
    }

    v13 = (v12 - 14) <= 0xFFFFFFFB && (v12 - 8232) >= 2;
    if (!v13 || v12 == 133)
    {
    }

    else
    {
      v23 = sub_1ABF23AB4();

      if ((v23 & 1) == 0)
      {
        return;
      }
    }

    v14 = v2[2];
    if (v14)
    {
      v15 = v2[4];
      v16 = v2[5];
      v17 = v14 - 1;
      if (v14 == 1)
      {
        v18 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1ABAD219C(&qword_1EB4D10D8, &unk_1ABF33260);
        v18 = sub_1ABAA21A8();
        j__malloc_size(v18);
        sub_1ABA80FF0();
        v18[2] = v17;
        v18[3] = v19;
        swift_arrayInitWithCopy();
      }

      v1[4] = v18;
    }

    else
    {
      v20 = v1[7];
      v6 = __OFADD__(v20, 1);
      v21 = v20 + 1;
      if (v6)
      {
        goto LABEL_29;
      }

      v1[7] = v21;
      v15 = sub_1ABF23DE4();
      v16 = v22;
    }

    v1[5] = v15;
    v1[6] = v16;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_1ABDEDFB8(uint64_t a1, __n128 a2)
{
  v5 = v3[4];
  if (v5[2])
  {
    v2 = v5[4];
    v4 = v5[5];

    sub_1ABB800DC(1, v5);
    v7 = v6;
    v9 = v8;
    if ((v8 & 1) == 0)
    {
LABEL_3:
      sub_1ABB62C34();
      v11 = v10;

      goto LABEL_12;
    }

    sub_1ABF25094();
    swift_unknownObjectRetain_n();
    v17 = swift_dynamicCastClass();
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x1E69E7CC0];
    }

    v18 = *(v17 + 16);

    if (!__OFSUB__(v9 >> 1, v7))
    {
      if (v18 == (v9 >> 1) - v7)
      {
        v11 = swift_dynamicCastClass();

        swift_unknownObjectRelease();
        if (v11)
        {
LABEL_13:
          v3[4] = v11;

          v3[5] = v2;
          v3[6] = v4;

          return v2;
        }

        v11 = MEMORY[0x1E69E7CC0];
LABEL_12:
        swift_unknownObjectRelease();
        goto LABEL_13;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  v12 = v3[7];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3[7] = v14;
  v2 = sub_1ABF23DE4();
  v16 = v15;

  v3[5] = v2;
  v3[6] = v16;
  return v2;
}

uint64_t sub_1ABDEE144@<X0>(uint64_t a2@<X8>, __n128 q0_0@<Q0>)
{
  v5 = *(v3 + 72);
  if (*(v5 + 16))
  {
    v6 = *(v5 + 32);
    v7 = *(v5 + 40);
    v8 = *(v5 + 48);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = v8;
    v9 = *(v5 + 56);
    *(a2 + 24) = v9;
    sub_1ABB344B0(v6, v7, v8, v9);

    sub_1ABB800DC(1, v5);
    v11 = v10;
    v13 = v12;
    if ((v12 & 1) == 0)
    {
LABEL_3:
      sub_1ABB63398();
      v15 = v14;

      goto LABEL_14;
    }

    sub_1ABF25094();
    swift_unknownObjectRetain_n();
    v29 = swift_dynamicCastClass();
    if (!v29)
    {
      swift_unknownObjectRelease();
      v29 = MEMORY[0x1E69E7CC0];
    }

    v30 = *(v29 + 16);

    if (!__OFSUB__(v13 >> 1, v11))
    {
      if (v30 == (v13 >> 1) - v11)
      {
        v15 = swift_dynamicCastClass();

        swift_unknownObjectRelease();
        if (v15)
        {
LABEL_15:
          *(v3 + 72) = v15;
          sub_1ABDEFF58(*(v3 + 80), *(v3 + 88), *(v3 + 96), *(v3 + 104));
          v31 = *(a2 + 8);
          v32 = *(a2 + 16);
          *(v3 + 80) = *a2;
          *(v3 + 88) = v31;
          *(v3 + 96) = v32;
          *(v3 + 104) = *(a2 + 24);
          sub_1ABA88CCC();

          return sub_1ABB344B0(v33, v34, v35, v36);
        }

        v15 = MEMORY[0x1E69E7CC0];
LABEL_14:
        swift_unknownObjectRelease();
        goto LABEL_15;
      }

      goto LABEL_20;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  v16 = *(v3 + 112);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
    goto LABEL_19;
  }

  *(v3 + 112) = v18;
  sub_1ABDED914(v38, q0_0);
  v19 = v38[0];
  v20 = v38[1];
  v21 = v38[2];
  v22 = v39;
  sub_1ABDEFF58(*(v3 + 80), *(v3 + 88), *(v3 + 96), *(v3 + 104));
  *(v3 + 80) = v19;
  *(v3 + 88) = v20;
  *(v3 + 96) = v21;
  *(v3 + 104) = v22;
  *a2 = v19;
  *(a2 + 8) = v20;
  *(a2 + 16) = v21;
  *(a2 + 24) = v22;
  sub_1ABA88CCC();

  return sub_1ABDEFF6C(v23, v24, v25, v26);
}

void sub_1ABDEE344(__n128 a1)
{
  v2 = v1[4];
  if (v2[2])
  {
    v3 = v2[4];
    v4 = v2[5];

    v1[5] = v3;
    v1[6] = v4;
  }

  else
  {
    v5 = v1[7];
    v6 = __OFADD__(v5, 1);
    v7 = v5 + 1;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      v1[7] = v7;
      v8 = sub_1ABF23DE4();
      v10 = v9;
      if (v9)
      {

        v1[5] = v8;
        v1[6] = v10;
        swift_bridgeObjectRetain_n();
        sub_1ABB4DC98();
        v11 = *(v1[4] + 16);
        sub_1ABB4E09C(v11);
        v12 = v1[4];
        *(v12 + 16) = v11 + 1;
        v13 = v12 + 16 * v11;
        *(v13 + 32) = v8;
        *(v13 + 40) = v10;
        v1[4] = v12;
      }
    }
  }
}

void sub_1ABDEE424(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3 = v2;
  v5 = *(v2 + 72);
  if (*(v5 + 16))
  {
    v6 = *(v5 + 32);
    v7 = *(v5 + 40);
    v8 = *(v5 + 48);
    v9 = *(v3 + 80);
    v10 = *(v3 + 88);
    v11 = *(v3 + 96);
    v12 = *(v5 + 56);
    v13 = *(v3 + 104);
    v14 = sub_1ABAA365C();
    sub_1ABB344B0(v14, v15, v16, v17);
    sub_1ABDEFF58(v9, v10, v11, v13);
    *(v3 + 80) = v6;
    *(v3 + 88) = v7;
    *(v3 + 96) = v8;
    *(v3 + 104) = v12;
    *a1 = v6;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
    *(a1 + 24) = v12;
    sub_1ABAA365C();
    sub_1ABA88CCC();

    sub_1ABB344B0(v18, v19, v20, v21);
  }

  else
  {
    v23 = *(v2 + 112);
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      __break(1u);
    }

    else
    {
      *(v2 + 112) = v25;
      sub_1ABDED914(v45, a2);
      v27 = v45[0];
      v26 = v45[1];
      v28 = v45[2];
      v29 = v46;
      if (v46 <= 0xFBu)
      {
        sub_1ABDEFF58(*(v2 + 80), *(v2 + 88), *(v2 + 96), *(v2 + 104));
        *(v2 + 80) = v27;
        *(v2 + 88) = v26;
        *(v2 + 96) = v28;
        *(v2 + 104) = v29;
        v34 = sub_1ABA83B90();
        sub_1ABDEFF6C(v34, v35, v36, v37);
        v38 = sub_1ABA83B90();
        sub_1ABB344B0(v38, v39, v40, v41);
        sub_1ABB4DF98();
        v42 = *(*(v2 + 72) + 16);
        sub_1ABB4E39C(v42);
        v43 = *(v2 + 72);
        *(v43 + 16) = v42 + 1;
        v44 = v43 + 32 * v42;
        *(v44 + 32) = v27;
        *(v44 + 40) = v26;
        *(v44 + 48) = v28;
        *(v44 + 56) = v29;
        *(v2 + 72) = v43;
      }

      else
      {
        v30 = sub_1ABA83B90();
        sub_1ABDEFF58(v30, v31, v32, v33);
      }

      *a1 = v27;
      *(a1 + 8) = v26;
      *(a1 + 16) = v28;
      *(a1 + 24) = v29;
      sub_1ABA88CCC();
    }
  }
}

uint64_t sub_1ABDEE598(__n128 a1)
{
  v2 = sub_1ABF23DE4();
  v4 = v3;
  if (v3)
  {
    swift_bridgeObjectRetain_n();

    v1[5] = v2;
    v1[6] = v4;
    sub_1ABB4DC98();
    v5 = *(v1[4] + 16);
    sub_1ABB4E09C(v5);
    v6 = v1[4];
    *(v6 + 16) = v5 + 1;
    v7 = v6 + 16 * v5;
    *(v7 + 32) = v2;
    *(v7 + 40) = v4;
    v1[4] = v6;
  }

  return v2;
}

void sub_1ABDEE630()
{
  sub_1ABAA5A04();
  v60 = 0;
  v61 = v3;
  sub_1ABF23B14();
  while (1)
  {
    v4 = v2[4];
    if (v4[2])
    {
      v6 = v4[4];
      v5 = v4[5];
      v0 = v2[6];

      v2[5] = v6;
      v2[6] = v5;
    }

    else
    {
      sub_1ABA97D44();
      if (v8)
      {
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v9 = sub_1ABAA4B20(v7);
      if (!v10)
      {
        goto LABEL_27;
      }

      v6 = v9;
      v5 = v10;

      v2[5] = v6;
      v2[6] = v5;
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA7BEF0();
        sub_1ABAD8D3C();
        v4 = v23;
      }

      v12 = v4[2];
      v11 = v4[3];
      v0 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        sub_1ABA7DC80(v11);
        sub_1ABAD8D3C();
        v4 = v24;
      }

      v4[2] = v0;
      v13 = &v4[2 * v12];
      v13[4] = v6;
      v13[5] = v5;
      v2[4] = v4;
    }

    sub_1ABA7C5D0();
    if ((sub_1ABF23B24() & 1) == 0)
    {
      sub_1ABA7C5D0();
      sub_1ABF23B04();
      if ((v14 & 1) != 0 && (v6 != 95 || v5 != 0xE100000000000000))
      {
        sub_1ABA7C5D0();
        if ((sub_1ABF25054() & 1) == 0)
        {
          break;
        }
      }
    }

    v1 = &v60;
    v16 = sub_1ABA7C5D0();
    MEMORY[0x1AC5A9400](v16);

    v17 = v4[2];
    if (v17)
    {
      v1 = v4[4];
      v18 = v4[5];
      v0 = v17 - 1;
      if (v17 == 1)
      {
        v19 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1ABAD219C(&qword_1EB4D10D8, &unk_1ABF33260);
        v19 = sub_1ABAA21A8();
        v20 = j__malloc_size(v19);
        v19[2] = v0;
        v19[3] = 2 * ((v20 - 32) / 16);
        swift_arrayInitWithCopy();
      }

      v2[4] = v19;
    }

    else
    {
      sub_1ABA97D44();
      if (v8)
      {
        goto LABEL_55;
      }

      v1 = sub_1ABAA4B20(v21);
      v18 = v22;
    }

    v2[5] = v1;
    v2[6] = v18;
  }

LABEL_27:
  v2 = v60;
  v1 = v61;
  v25 = v60 == 7105633 && v61 == 0xE300000000000000;
  if (v25 || (v0 = 0xE300000000000000, (sub_1ABA7C038(7105633, 0xE300000000000000) & 1) != 0))
  {

    v26 = 15;
    goto LABEL_33;
  }

  v29 = v2 == 7628135 && v1 == 0xE300000000000000;
  if (v29 || (sub_1ABA7C038(7628135, 0xE300000000000000) & 1) != 0)
  {

    v26 = 16;
    goto LABEL_33;
  }

  v30 = v2 == 0x657475706D6F63 && v1 == 0xE700000000000000;
  if (v30 || (sub_1ABA7C038(0x657475706D6F63, 0xE700000000000000) & 1) != 0)
  {

    v26 = 17;
    goto LABEL_33;
  }

  v31 = v2 == 0x7265746C6966 && v1 == 0xE600000000000000;
  if (v31 || (sub_1ABA7C038(0x7265746C6966, 0xE600000000000000) & 1) != 0)
  {

    v26 = 18;
    goto LABEL_33;
  }

LABEL_56:
  v32 = v2 == 7173491 && v1 == 0xE300000000000000;
  if (v32 || (sub_1ABA7C038(7173491, 0xE300000000000000) & 1) != 0)
  {

    v26 = 19;
LABEL_33:
    v27 = v57;
LABEL_34:
    v27[1] = 0;
    v27[2] = 0;
    *v27 = v26;
    v28 = -32;
    goto LABEL_35;
  }

  v33 = v2 == 6780513 && v1 == v0;
  if (v33 || (sub_1ABA7C038(6780513, 0xE300000000000000) & 1) != 0)
  {

    v26 = 20;
    goto LABEL_33;
  }

  v34 = v2 == 0x746E756F63 && v1 == 0xE500000000000000;
  if (v34 || (sub_1ABA7C038(0x746E756F63, 0xE500000000000000) & 1) != 0)
  {

    v27 = v57;
    v26 = 21;
    goto LABEL_34;
  }

  v35 = v2 == 0x756F635F71696E75 && v1 == 0xEA0000000000746ELL;
  if (v35 || (sub_1ABA94798(0x756F635F71696E75, 0xEA0000000000746ELL, v2) & 1) != 0)
  {

    v26 = 22;
    goto LABEL_33;
  }

  v36 = sub_1ABA7BE8C();
  sub_1ABD78408(v36, v37, v38);
  if (v59)
  {

    v39._countAndFlagsBits = sub_1ABA7BE8C();
    KGQ.Keyword.init(rawValue:)(v39);
    if (v58 == 17)
    {
      v27 = v57;
      *v57 = v2;
      v57[1] = v1;
      v57[2] = 0;
      v28 = 0x80;
    }

    else
    {

      sub_1ABAA2A50(v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
      *v27 = v58;
      v28 = -96;
    }
  }

  else
  {

    sub_1ABAA2A50(v40, v41, v42, v43, v44, v45, v46, v47, v56, v57);
    *v27 = v58;
    v28 = -64;
  }

LABEL_35:
  *(v27 + 24) = v28;
}

void sub_1ABDEEAFC()
{
  sub_1ABAA5A04();
  v72 = v1;
  sub_1ABF23B14();
  for (i = 0; ; i = 1)
  {
    while (1)
    {
      v2 = v0[4];
      if (v2[2])
      {
        v4 = v2[4];
        v3 = v2[5];

        v0[5] = v4;
        v0[6] = v3;
      }

      else
      {
        sub_1ABA97D44();
        if (v6)
        {
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
          goto LABEL_92;
        }

        v7 = sub_1ABAA4B20(v5);
        if (!v8)
        {
          goto LABEL_36;
        }

        v4 = v7;
        v3 = v8;

        v0[5] = v4;
        v0[6] = v3;
        swift_bridgeObjectRetain_n();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA7BEF0();
          sub_1ABAD8D3C();
          v2 = v30;
        }

        v10 = v2[2];
        v9 = v2[3];
        if (v10 >= v9 >> 1)
        {
          sub_1ABA7DC80(v9);
          sub_1ABAD8D3C();
          v2 = v31;
        }

        v2[2] = v10 + 1;
        v11 = &v2[2 * v10];
        v11[4] = v4;
        v11[5] = v3;
        v0[4] = v2;
      }

      sub_1ABA8EF78();
      sub_1ABF23B04();
      if (v12)
      {
        break;
      }

      v13 = v2[2];
      if (v13)
      {
        v14 = v2[4];
        v15 = v2[5];
        if (v13 == 1)
        {
          v16 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          sub_1ABAD219C(&qword_1EB4D10D8, &unk_1ABF33260);
          v16 = sub_1ABAA21A8();
          j__malloc_size(v16);
          sub_1ABA80FF0();
          sub_1ABAA54B4(v17);
        }

        v0[4] = v16;
      }

      else
      {
        sub_1ABA97D44();
        if (v6)
        {
          goto LABEL_90;
        }

        v14 = sub_1ABAA4B20(v18);
        v15 = v19;
      }

      v0[5] = v14;
      v0[6] = v15;
      v20 = sub_1ABA8EF78();
      MEMORY[0x1AC5A9400](v20);
    }

    v21 = v4 == 46 && v3 == 0xE100000000000000;
    if (!v21)
    {
      sub_1ABA8EF78();
      if ((sub_1ABF25054() & 1) == 0)
      {
        break;
      }
    }

    if (i)
    {

      v32 = v72;
      goto LABEL_37;
    }

    v22 = v2[2];
    if (v22)
    {
      v23 = v2[4];
      v24 = v2[5];
      if (v22 == 1)
      {
        v25 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1ABAD219C(&qword_1EB4D10D8, &unk_1ABF33260);
        v25 = sub_1ABAA21A8();
        j__malloc_size(v25);
        sub_1ABA80FF0();
        sub_1ABAA54B4(v26);
      }

      v0[4] = v25;
    }

    else
    {
      sub_1ABA97D44();
      if (v6)
      {
        goto LABEL_91;
      }

      v23 = sub_1ABAA4B20(v27);
      v24 = v28;
    }

    v0[5] = v23;
    v0[6] = v24;
    v29 = sub_1ABA8EF78();
    MEMORY[0x1AC5A9400](v29);
  }

LABEL_36:
  v32 = v72;
  if (i)
  {
LABEL_37:
    v33 = sub_1ABB24D04(0, v32);
    if ((v34 & 1) == 0)
    {
      sub_1ABAA2A50(v33, v34, v35, v36, v37, v38, v39, v40, v69, v70);
      *v41 = v42;
      v43 = 64;
LABEL_88:
      *(v41 + 24) = v43;
      return;
    }

LABEL_86:
    v41 = v70;
    *v70 = 0;
    v70[1] = 0;
    v70[2] = 0;
    v43 = 2;
    goto LABEL_88;
  }

  if ((v72 & 0x2000000000000000) != 0)
  {
    v44 = HIBYTE(v72) & 0xF;
  }

  else
  {
    v44 = 0;
  }

  if (!v44)
  {
LABEL_92:

    goto LABEL_86;
  }

  if ((v72 & 0x1000000000000000) != 0)
  {
    v46 = sub_1ABB81A68(0, v72, 10);
    v57 = v66;
    goto LABEL_85;
  }

  if ((v72 & 0x2000000000000000) != 0)
  {
    if ((v72 & 0xF00000000000000) != 0)
    {
      while (1)
      {
        sub_1ABA7D44C();
        if (!v21 & v47)
        {
          break;
        }

        sub_1ABA7F78C();
        if (!v21)
        {
          break;
        }

        v46 = v56 + v55;
        if (__OFADD__(v56, v55))
        {
          break;
        }

        sub_1ABA7E4F0();
        if (v21)
        {
          goto LABEL_84;
        }
      }
    }

    goto LABEL_83;
  }

  v67 = sub_1ABF24B74();
  v45 = *v67;
  if (v45 == 43)
  {
    if (v68 < 1)
    {
      goto LABEL_95;
    }

    if (v68 == 1)
    {
      goto LABEL_83;
    }

    v46 = 0;
    if (!v67)
    {
      goto LABEL_74;
    }

    while (1)
    {
      sub_1ABA7D44C();
      if (!v21 & v47)
      {
        break;
      }

      sub_1ABA7F78C();
      if (!v21)
      {
        break;
      }

      v46 = v52 + v51;
      if (__OFADD__(v52, v51))
      {
        break;
      }

      sub_1ABA7E4F0();
      if (v21)
      {
        goto LABEL_84;
      }
    }

LABEL_83:
    v46 = 0;
    v50 = 1;
    goto LABEL_84;
  }

  if (v45 != 45)
  {
    if (!v68)
    {
      goto LABEL_83;
    }

    v46 = 0;
    if (!v67)
    {
      goto LABEL_74;
    }

    while (1)
    {
      v53 = *v67 - 48;
      if (v53 > 9)
      {
        goto LABEL_83;
      }

      v54 = 10 * v46;
      if ((v46 * 10) >> 64 != (10 * v46) >> 63)
      {
        goto LABEL_83;
      }

      v46 = v54 + v53;
      if (__OFADD__(v54, v53))
      {
        goto LABEL_83;
      }

      ++v67;
      if (!--v68)
      {
        goto LABEL_74;
      }
    }
  }

  if (v68 >= 1)
  {
    if (v68 == 1)
    {
      goto LABEL_83;
    }

    v46 = 0;
    if (v67)
    {
      while (1)
      {
        sub_1ABA7D44C();
        if (!v21 & v47)
        {
          goto LABEL_83;
        }

        sub_1ABA7F78C();
        if (!v21)
        {
          goto LABEL_83;
        }

        v46 = v49 - v48;
        if (__OFSUB__(v49, v48))
        {
          goto LABEL_83;
        }

        sub_1ABA7E4F0();
        if (v21)
        {
          goto LABEL_84;
        }
      }
    }

LABEL_74:
    v50 = 0;
LABEL_84:
    v57 = v50;
LABEL_85:

    if ((v57 & 1) == 0)
    {
      sub_1ABAA2A50(v58, v59, v60, v61, v62, v63, v64, v65, v69, v70);
      *v41 = v46;
      v43 = 32;
      goto LABEL_88;
    }

    goto LABEL_86;
  }

  __break(1u);
  __break(1u);
LABEL_95:
  __break(1u);
  __break(1u);
}

uint64_t sub_1ABDEF054@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v4;
  if (result != 39 || a2 != 0xE100000000000000)
  {
    result = sub_1ABF25054();
    if ((result & 1) == 0)
    {
      sub_1ABA893C0();
      result = sub_1ABF23B14();
    }
  }

  v7 = 0;
  while (1)
  {
    v8 = v5[4];
    v9 = v8[2];
    if (v9)
    {
      v11 = v8[4];
      v10 = v8[5];
      v12 = v9 - 1;
      if (v9 == 1)
      {
        v13 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1ABAD219C(&qword_1EB4D10D8, &unk_1ABF33260);
        v13 = sub_1ABAA21A8();
        j__malloc_size(v13);
        sub_1ABA80FF0();
        v13[2] = v12;
        v13[3] = v14;
        swift_arrayInitWithCopy();
      }

      v5[4] = v13;

      goto LABEL_18;
    }

    v15 = v5[7];
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    v5[7] = v16;
    v11 = sub_1ABF23DE4();
    v10 = v17;

    if (!v10)
    {
      v5[5] = v11;
      v5[6] = 0;
      sub_1ABF24AB4();

      result = MEMORY[0x1AC5A9410](0xD000000000000015, 0x80000001ABF91710);
      v23 = 0;
LABEL_45:
      *a3 = 0;
      *(a3 + 8) = 0xE000000000000000;
      *(a3 + 16) = v16;
      *(a3 + 24) = v23;
      return result;
    }

LABEL_18:
    v19 = v11 == 39 && v10 == 0xE100000000000000;
    if (v7)
    {
      if (!v19 && (sub_1ABA8EC20(39) & 1) == 0)
      {
        v20 = v11 == 92 && v10 == 0xE100000000000000;
        if (!v20 && (sub_1ABA8EC20(92) & 1) == 0)
        {

          v5[5] = v11;
          v5[6] = v10;
          sub_1ABF24AB4();

          result = MEMORY[0x1AC5A9410](0xD000000000000014, 0x80000001ABF916F0);
          v23 = 0;
          v16 = v5[7];
          goto LABEL_45;
        }
      }

      goto LABEL_41;
    }

    if (v19)
    {

      v11 = 39;
LABEL_44:
      v16 = 0;
      v5[5] = v11;
      v5[6] = v10;
      v23 = 96;
      goto LABEL_45;
    }

    if (sub_1ABA8EC20(39))
    {

      goto LABEL_44;
    }

    v21 = v11 == 92 && v10 == 0xE100000000000000;
    if (v21 || (sub_1ABA8EC20(92) & 1) != 0)
    {

      v7 = 1;
    }

    else
    {
LABEL_41:
      v22 = sub_1ABA7C5D0();
      MEMORY[0x1AC5A9400](v22);

      v7 = 0;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1ABDEF364(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v101[0] = *a1;
  v101[1] = v3;
  v101[2] = v4;
  v102 = v5;
  v103 = v6;
  v104 = v7;
  v105 = v8;
  v106 = v9;
  switch(v5 >> 5)
  {
    case 1u:
      if ((v9 & 0xE0) == 0x20)
      {
        goto LABEL_19;
      }

      goto LABEL_51;
    case 2u:
      if ((v9 & 0xE0) == 0x40)
      {
        goto LABEL_19;
      }

      goto LABEL_51;
    case 3u:
      if ((v9 & 0xE0) != 0x60)
      {
        goto LABEL_21;
      }

      goto LABEL_13;
    case 4u:
      if ((v9 & 0xE0) != 0x80)
      {
LABEL_21:

        goto LABEL_51;
      }

LABEL_13:
      if (v2 != v6 || v3 != v7)
      {
        v20 = sub_1ABA94798(v2, v3, v6);
        v21 = sub_1ABA7C298();
        sub_1ABB344B0(v21, v22, v23, v9);
        v24 = sub_1ABA7DD98();
        sub_1ABB344B0(v24, v25, v26, v5);
        sub_1ABDEFE2C(v101);
        return v20 & 1;
      }

      sub_1ABB344B0(v2, v3, v8, v9);
      v30 = sub_1ABA7DD98();
      v33 = v5;
      goto LABEL_35;
    case 5u:
      if ((v9 & 0xE0) != 0xA0)
      {
        goto LABEL_51;
      }

      v29 = sub_1ABACF218(v2, v6);
      sub_1ABDEFE2C(v101);
      return v29 & 1;
    case 6u:
      if ((v9 & 0xE0) != 0xC0)
      {
        goto LABEL_51;
      }

LABEL_19:
      sub_1ABDEFE2C(v101);
      return *&v2 == *&v6;
    case 7u:
      v28 = v4 | v3;
      if (v4 | v3 | v2 || v5 != 224)
      {
        v34 = v5 == 224 && v2 == 1;
        if (!v34 || v28)
        {
          v43 = v5 == 224 && v2 == 2;
          if (!v43 || v28)
          {
            v56 = v5 == 224 && v2 == 3;
            if (!v56 || v28)
            {
              v58 = v5 == 224 && v2 == 4;
              if (!v58 || v28)
              {
                v66 = v5 == 224 && v2 == 5;
                if (!v66 || v28)
                {
                  v68 = v5 == 224 && v2 == 6;
                  if (!v68 || v28)
                  {
                    v70 = v5 == 224 && v2 == 7;
                    if (!v70 || v28)
                    {
                      v72 = v5 == 224 && v2 == 8;
                      if (!v72 || v28)
                      {
                        v74 = v5 == 224 && v2 == 9;
                        if (!v74 || v28)
                        {
                          v76 = v5 == 224 && v2 == 10;
                          if (!v76 || v28)
                          {
                            v78 = v5 == 224 && v2 == 11;
                            if (!v78 || v28)
                            {
                              v80 = v5 == 224 && v2 == 12;
                              if (!v80 || v28)
                              {
                                v82 = v5 == 224 && v2 == 13;
                                if (!v82 || v28)
                                {
                                  v84 = v5 == 224 && v2 == 14;
                                  if (!v84 || v28)
                                  {
                                    v86 = v5 == 224 && v2 == 15;
                                    if (!v86 || v28)
                                    {
                                      v88 = v5 == 224 && v2 == 16;
                                      if (!v88 || v28)
                                      {
                                        v90 = v5 == 224 && v2 == 17;
                                        if (!v90 || v28)
                                        {
                                          v92 = v5 == 224 && v2 == 18;
                                          if (!v92 || v28)
                                          {
                                            v94 = v5 == 224 && v2 == 19;
                                            if (!v94 || v28)
                                            {
                                              v96 = v5 == 224 && v2 == 20;
                                              if (!v96 || v28)
                                              {
                                                v98 = v5 == 224 && v2 == 21;
                                                if (!v98 || v28)
                                                {
                                                  if (v9 <= 0xDF)
                                                  {
                                                    goto LABEL_51;
                                                  }

                                                  if (v9 != 224 || v6 != 22)
                                                  {
                                                    goto LABEL_51;
                                                  }
                                                }

                                                else
                                                {
                                                  if (v9 < 0xE0)
                                                  {
                                                    goto LABEL_51;
                                                  }

                                                  if (v9 != 224 || v6 != 21)
                                                  {
                                                    goto LABEL_51;
                                                  }
                                                }
                                              }

                                              else
                                              {
                                                if (v9 < 0xE0)
                                                {
                                                  goto LABEL_51;
                                                }

                                                if (v9 != 224 || v6 != 20)
                                                {
                                                  goto LABEL_51;
                                                }
                                              }
                                            }

                                            else
                                            {
                                              if (v9 < 0xE0)
                                              {
                                                goto LABEL_51;
                                              }

                                              if (v9 != 224 || v6 != 19)
                                              {
                                                goto LABEL_51;
                                              }
                                            }
                                          }

                                          else
                                          {
                                            if (v9 < 0xE0)
                                            {
                                              goto LABEL_51;
                                            }

                                            if (v9 != 224 || v6 != 18)
                                            {
                                              goto LABEL_51;
                                            }
                                          }
                                        }

                                        else
                                        {
                                          if (v9 < 0xE0)
                                          {
                                            goto LABEL_51;
                                          }

                                          if (v9 != 224 || v6 != 17)
                                          {
                                            goto LABEL_51;
                                          }
                                        }
                                      }

                                      else
                                      {
                                        if (v9 < 0xE0)
                                        {
                                          goto LABEL_51;
                                        }

                                        if (v9 != 224 || v6 != 16)
                                        {
                                          goto LABEL_51;
                                        }
                                      }
                                    }

                                    else
                                    {
                                      if (v9 < 0xE0)
                                      {
                                        goto LABEL_51;
                                      }

                                      if (v9 != 224 || v6 != 15)
                                      {
                                        goto LABEL_51;
                                      }
                                    }
                                  }

                                  else
                                  {
                                    if (v9 < 0xE0)
                                    {
                                      goto LABEL_51;
                                    }

                                    if (v9 != 224 || v6 != 14)
                                    {
                                      goto LABEL_51;
                                    }
                                  }
                                }

                                else
                                {
                                  if (v9 < 0xE0)
                                  {
                                    goto LABEL_51;
                                  }

                                  if (v9 != 224 || v6 != 13)
                                  {
                                    goto LABEL_51;
                                  }
                                }
                              }

                              else
                              {
                                if (v9 < 0xE0)
                                {
                                  goto LABEL_51;
                                }

                                if (v9 != 224 || v6 != 12)
                                {
                                  goto LABEL_51;
                                }
                              }
                            }

                            else
                            {
                              if (v9 < 0xE0)
                              {
                                goto LABEL_51;
                              }

                              if (v9 != 224 || v6 != 11)
                              {
                                goto LABEL_51;
                              }
                            }
                          }

                          else
                          {
                            if (v9 < 0xE0)
                            {
                              goto LABEL_51;
                            }

                            if (v9 != 224 || v6 != 10)
                            {
                              goto LABEL_51;
                            }
                          }
                        }

                        else
                        {
                          if (v9 < 0xE0)
                          {
                            goto LABEL_51;
                          }

                          if (v9 != 224 || v6 != 9)
                          {
                            goto LABEL_51;
                          }
                        }
                      }

                      else
                      {
                        if (v9 < 0xE0)
                        {
                          goto LABEL_51;
                        }

                        if (v9 != 224 || v6 != 8)
                        {
                          goto LABEL_51;
                        }
                      }
                    }

                    else
                    {
                      if (v9 < 0xE0)
                      {
                        goto LABEL_51;
                      }

                      if (v9 != 224 || v6 != 7)
                      {
                        goto LABEL_51;
                      }
                    }
                  }

                  else
                  {
                    if (v9 < 0xE0)
                    {
                      goto LABEL_51;
                    }

                    if (v9 != 224 || v6 != 6)
                    {
                      goto LABEL_51;
                    }
                  }
                }

                else
                {
                  if (v9 < 0xE0)
                  {
                    goto LABEL_51;
                  }

                  if (v9 != 224 || v6 != 5)
                  {
                    goto LABEL_51;
                  }
                }
              }

              else
              {
                if (v9 < 0xE0)
                {
                  goto LABEL_51;
                }

                if (v9 != 224 || v6 != 4)
                {
                  goto LABEL_51;
                }
              }
            }

            else
            {
              if (v9 < 0xE0)
              {
                goto LABEL_51;
              }

              if (v9 != 224 || v6 != 3)
              {
                goto LABEL_51;
              }
            }
          }

          else
          {
            if (v9 < 0xE0)
            {
              goto LABEL_51;
            }

            if (v9 != 224 || v6 != 2)
            {
              goto LABEL_51;
            }
          }
        }

        else
        {
          if (v9 < 0xE0)
          {
            goto LABEL_51;
          }

          if (v9 != 224 || v6 != 1)
          {
            goto LABEL_51;
          }
        }

        if (!(v8 | v7))
        {
          goto LABEL_36;
        }
      }

      else if (v9 >= 0xE0 && !(v8 | v7 | v6) && v9 == 224)
      {
        goto LABEL_36;
      }

      goto LABEL_51;
    default:
      if (v9 > 0x1F)
      {
        v36 = sub_1ABA7DD98();
        sub_1ABB344D8(v36, v37, v38, v5);
LABEL_51:
        v39 = sub_1ABA7C298();
        v42 = v9;
        goto LABEL_52;
      }

      if (!v5)
      {
        if (v9)
        {
          goto LABEL_76;
        }

        if (v2 == v6 && v3 == v7)
        {
          sub_1ABB344B0(v2, v3, v8, 0);
          v63 = sub_1ABA7DD98();
          sub_1ABB344B0(v63, v64, v65, 0);
          sub_1ABDEFE2C(v101);
        }

        else
        {
          v46 = sub_1ABA94798(v2, v3, v6);
          v47 = sub_1ABA7C298();
          sub_1ABB344B0(v47, v48, v49, 0);
          v50 = sub_1ABA7DD98();
          sub_1ABB344B0(v50, v51, v52, 0);
          sub_1ABDEFE2C(v101);
          if ((v46 & 1) == 0)
          {
            return 0;
          }
        }

        return v4 == v8;
      }

      if (v5 == 1)
      {
        if (v9 == 1)
        {
          if (v2 == v6 && v3 == v7)
          {
            v12 = 1;
            sub_1ABB344B0(v2, v3, v8, 1u);
            v60 = sub_1ABA7DD98();
            sub_1ABB344B0(v60, v61, v62, 1u);
            sub_1ABDEFE2C(v101);
          }

          else
          {
            v11 = sub_1ABA94798(v2, v3, v6);
            v12 = 1;
            v13 = sub_1ABA7C298();
            sub_1ABB344B0(v13, v14, v15, 1u);
            v16 = sub_1ABA7DD98();
            sub_1ABB344B0(v16, v17, v18, 1u);
            sub_1ABDEFE2C(v101);
            if ((v11 & 1) == 0)
            {
              return 0;
            }
          }

          if (v4 == v8)
          {
            return v12;
          }

          return 0;
        }

        goto LABEL_76;
      }

      if (v9 == 2 && !(v8 | v7 | v6))
      {
        sub_1ABB344B0(0, 0, 0, 2u);
        v30 = sub_1ABA7DD98();
        v33 = 2;
LABEL_35:
        sub_1ABB344B0(v30, v31, v32, v33);
LABEL_36:
        sub_1ABDEFE2C(v101);
        return 1;
      }

LABEL_76:
      v53 = sub_1ABA7C298();
      sub_1ABB344B0(v53, v54, v55, v9);
      v39 = sub_1ABA7DD98();
      v42 = v5;
LABEL_52:
      sub_1ABB344B0(v39, v40, v41, v42);
      sub_1ABDEFE2C(v101);
      return 0;
  }
}

BOOL sub_1ABDEF9F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (!a4)
  {
    if (a8)
    {
      return 0;
    }

LABEL_6:
    v10 = a1 == a5 && a2 == a6;
    if (v10 || (sub_1ABF25054() & 1) != 0)
    {
      return a3 == a7;
    }

    return 0;
  }

  if (a4 == 1)
  {
    if (a8 != 1)
    {
      return 0;
    }

    goto LABEL_6;
  }

  return a8 == 2 && !(a6 | a5 | a7);
}

unint64_t sub_1ABDEFABC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v12[2] = v3;
      v12[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v12[0] = a2;
        v12[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v12 + v5) & 0xC0) == 0x80)
        {
          do
          {
            sub_1ABA9A684();
          }

          while (v9);
          return v8 << 16;
        }
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = result >> 16;
          v6 = sub_1ABF24B74();
          v5 = v11;
        }

        if (v5 != v7 && (*(v6 + v5) & 0xC0) == 0x80)
        {
          do
          {
            sub_1ABA9A684();
          }

          while (v9);
          return v8 << 16;
        }
      }

      v8 = v5;
      return v8 << 16;
    }

    v10 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v10 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v10)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

unint64_t sub_1ABDEFBB8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    sub_1ABA893C0();
    sub_1ABDEFD24();
    if ((a2 & 0x1000000000000000) != 0)
    {
      sub_1ABA893C0();
      v9 = sub_1ABF24AA4();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v19[0] = a1;
        v19[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v9 = *(v19 + v6);
        if (*(v19 + v6) < 0)
        {
          sub_1ABA84328();
          switch(v12)
          {
            case 1:
LABEL_14:
              v9 = v10[1] & 0x3F | ((v9 & 0x1F) << 6);
              break;
            case 2:
LABEL_15:
              v13 = v10[1];
              v14 = v10[2];
              v15 = ((v9 & 0xF) << 12) | ((v13 & 0x3F) << 6);
              goto LABEL_17;
            case 3:
LABEL_16:
              v16 = v10[1];
              v17 = v10[2];
              v14 = v10[3];
              v15 = ((v9 & 0xF) << 18) | ((v16 & 0x3F) << 12) | ((v17 & 0x3F) << 6);
LABEL_17:
              v9 = v15 & 0xFFFFFFC0 | v14 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_1ABF24B74();
        }

        v8 = *(v7 + v6);
        v9 = *(v7 + v6);
        if (v8 < 0)
        {
          sub_1ABA84328();
          switch(v11)
          {
            case 1:
              goto LABEL_14;
            case 2:
              goto LABEL_15;
            case 3:
              goto LABEL_16;
            default:
              break;
          }
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v19[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

void sub_1ABDEFD24()
{
  sub_1ABAA2DEC();
  if (v0)
  {
    sub_1ABAA26E8();
    if (!v1)
    {
      sub_1ABA9766C();
      if (v3 > v2 >> 16)
      {
        return;
      }

      __break(1u);
    }
  }

  sub_1ABA893C0();
  sub_1ABDEFD98();
  if ((v4 & 1) == 0)
  {
    sub_1ABA893C0();
    sub_1ABDEFABC(v5, v6, v7);
  }
}

void sub_1ABDEFD98()
{
  sub_1ABAA2DEC();
  sub_1ABAA26E8();
  if (v0)
  {
    sub_1ABA893C0();
    sub_1ABB807B0(v3, v4, v5);
  }

  sub_1ABA9766C();
  if (v2 <= v1 >> 16)
  {
    __break(1u);
  }
}

uint64_t sub_1ABDEFDE0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1ABDEFE2C(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4DA030, qword_1ABF63D58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABDEFE94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 1) == 0)
  {
    return 0;
  }

  sub_1ABF25094();
  swift_unknownObjectRetain_n();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = *(v7 + 16);

  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v8 != (a4 >> 1) - a3)
  {
LABEL_11:
    swift_unknownObjectRelease();
    return 0;
  }

  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1ABDEFF58(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 0xFBu)
  {
    return sub_1ABB344F0(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1ABDEFF6C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 0xFBu)
  {
    return sub_1ABB344B0(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1ABDEFF80(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_1ABDEFF9C(uint64_t a1)
{
  v1 = *(a1 + 24) >> 5;
  if (v1 == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1ABDEFFB8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x39 && *(a1 + 25))
    {
      v2 = *a1 + 56;
    }

    else
    {
      v2 = ((*(a1 + 24) >> 5) & 0xFFFFFFC7 | (8 * ((*(a1 + 24) >> 2) & 7))) ^ 0x3F;
      if (v2 >= 0x38)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1ABDF0004(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x38)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 57;
    if (a3 >= 0x39)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x39)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 4 * (((-a2 >> 3) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_1ABDF0070(uint64_t result, unsigned int a2)
{
  if (a2 < 7)
  {
    v2 = *(result + 24) & 3 | (32 * a2);
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 7;
    v2 = -32;
  }

  *(result + 24) = v2;
  return result;
}

uint64_t sub_1ABDF00A8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 25))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 2)
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

uint64_t sub_1ABDF00E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1ABDF0130(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_1ABDF0160(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86D278, type metadata accessor for CustomGraphActivityEvent, &protocol conformance descriptor for CustomGraphActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF01B8(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86C5D0, type metadata accessor for CustomGraphTransportationActivityEvent, &protocol conformance descriptor for CustomGraphTransportationActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0210(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86CA68, type metadata accessor for CustomGraphWorkingActivityEvent, &protocol conformance descriptor for CustomGraphWorkingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0268(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86CB80, type metadata accessor for CustomGraphMeetingActivityEvent, &protocol conformance descriptor for CustomGraphMeetingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF02C0(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86CDB8, type metadata accessor for CustomGraphEatingActivityEvent, &protocol conformance descriptor for CustomGraphEatingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0318(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86C810, type metadata accessor for CustomGraphWatchingTVActivityEvent, &protocol conformance descriptor for CustomGraphWatchingTVActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0370(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86C618, type metadata accessor for CustomGraphCommunicatingActivityEvent, &protocol conformance descriptor for CustomGraphCommunicatingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF03C8(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86CA00, type metadata accessor for CustomGraphShoppingActivityEvent, &protocol conformance descriptor for CustomGraphShoppingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0420(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86C7E8, type metadata accessor for CustomGraphMindfulnessActivityEvent, &protocol conformance descriptor for CustomGraphMindfulnessActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0478(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86C9E0, type metadata accessor for CustomGraphSleepingActivityEvent, &protocol conformance descriptor for CustomGraphSleepingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF04D0(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86C8F8, type metadata accessor for CustomGraphTravelingActivityEvent, &protocol conformance descriptor for CustomGraphTravelingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0528(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86CB50, type metadata accessor for CustomGraphReadingActivityEvent, &protocol conformance descriptor for CustomGraphReadingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0580(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86C798, type metadata accessor for CustomGraphVacationingActivityEvent, &protocol conformance descriptor for CustomGraphVacationingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF05D8(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86CD90, type metadata accessor for CustomGraphGamingActivityEvent, &protocol conformance descriptor for CustomGraphGamingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0630(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86C7C0, type metadata accessor for CustomGraphSocializingActivityEvent, &protocol conformance descriptor for CustomGraphSocializingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0688(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86C9B8, type metadata accessor for CustomGraphWakingUpActivityEvent, &protocol conformance descriptor for CustomGraphWakingUpActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF06E0(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86C880, type metadata accessor for CustomGraphGoingToBedActivityEvent, &protocol conformance descriptor for CustomGraphGoingToBedActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0738(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86C8A8, type metadata accessor for CustomGraphExercisingActivityEvent, &protocol conformance descriptor for CustomGraphExercisingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0790(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86CC50, type metadata accessor for CustomGraphCommuteActivityEvent, &protocol conformance descriptor for CustomGraphCommuteActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF07E8(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86CDD8, type metadata accessor for CustomGraphDiningActivityEvent, &protocol conformance descriptor for CustomGraphDiningActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0840(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86C3B0, type metadata accessor for CustomGraphAttendingAPerformanceActivityEvent, &protocol conformance descriptor for CustomGraphAttendingAPerformanceActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0898(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86C830, type metadata accessor for CustomGraphStationaryActivityEvent, &protocol conformance descriptor for CustomGraphStationaryActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF08F0(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86C5F0, type metadata accessor for CustomGraphLocationVisitActivityEvent, &protocol conformance descriptor for CustomGraphLocationVisitActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0948(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86CA88, type metadata accessor for CustomGraphWalkingActivityEvent, &protocol conformance descriptor for CustomGraphWalkingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF09A0(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86CB30, type metadata accessor for CustomGraphRunningActivityEvent, &protocol conformance descriptor for CustomGraphRunningActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF09F8(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86C998, type metadata accessor for CustomGraphBicyclingActivityEvent, &protocol conformance descriptor for CustomGraphBicyclingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0A50(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86CD70, type metadata accessor for CustomGraphHikingActivityEvent, &protocol conformance descriptor for CustomGraphHikingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0AA8(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86C858, type metadata accessor for CustomGraphOnThePhoneActivityEvent, &protocol conformance descriptor for CustomGraphOnThePhoneActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0B00(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86CA20, type metadata accessor for CustomGraphFacetimeActivityEvent, &protocol conformance descriptor for CustomGraphFacetimeActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0B58(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86CC28, type metadata accessor for CustomGraphDrivingActivityEvent, &protocol conformance descriptor for CustomGraphDrivingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0BB0(uint64_t a1)
{
  result = sub_1ABDF0C08(&qword_1ED86CA40, type metadata accessor for CustomGraphBehaviorActivityEvent, &protocol conformance descriptor for CustomGraphBehaviorActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABDF0C08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CustomLifeEventContext.__allocating_init<>()()
{
  v0 = type metadata accessor for ViewService();
  v1 = static ViewService.clientService.getter(v0);
  sub_1ABA7D028();
  v2 = swift_allocObject();
  CustomLifeEventContext.init<>(viewService:)(v1);
  return v2;
}

uint64_t sub_1ABDF0D0C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = sub_1ABA8C3AC();
  sub_1ABA8F8D8();
  v5 = sub_1ABDF2A2C(v3, v4, &protocol conformance descriptor for CustomGraphActivityEvent);
  return a1(v2, v2, v5);
}

uint64_t CustomLifeEventContext.enumerateActivityEvents<>(overlapping:order:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_1ABDF20E4(a1, a2, a3, a4, a5, sub_1ABC27268);
}

{
  return sub_1ABDF20E4(a1, a2, a3, a4, a5, sub_1ABC27234);
}

uint64_t CustomLifeEventContext.enumerateActivityEvents<>(whose:in:order:using:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_1ABDF1A94(a1, a2, a3, a4, a5, a6, sub_1ABC26FD0);
}

{
  return sub_1ABDF1A94(a1, a2, a3, a4, a5, a6, sub_1ABC26F98);
}

void CustomLifeEventContext.enumerateActivityEvents<>(order:using:)()
{
  sub_1ABA8C3AC();
  sub_1ABA8F8D8();
  sub_1ABDF2A2C(v0, v1, &protocol conformance descriptor for CustomGraphActivityEvent);
  sub_1ABC26E40();
}

uint64_t CustomLifeEventContext.__allocating_init<>(viewService:)(void *a1)
{
  sub_1ABA7D028();
  v2 = swift_allocObject();
  CustomLifeEventContext.init<>(viewService:)(a1);
  return v2;
}

uint64_t CustomLifeEventContext.__allocating_init(context:)(uint64_t a1)
{
  v3 = *(v1 + 80);
  sub_1ABA7BD7C();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1ABA7BC4C();
  v8(v7);
  v9 = type metadata accessor for ViewService();
  static ViewService.clientService.getter(v9);
  v10 = CustomLifeEventContext.__allocating_init(context:viewService:)();
  (*(v5 + 8))(a1, v3);
  return v10;
}

uint64_t CustomLifeEventContext.__allocating_init(context:viewService:)()
{
  sub_1ABA7D028();
  v0 = swift_allocObject();
  v1 = sub_1ABA7D0F8();
  CustomLifeEventContext.init(context:viewService:)(v1, v2);
  return v0;
}

void *CustomLifeEventContext.init(context:viewService:)(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = *v4;
  v8 = *(*v4 + 80);
  sub_1ABA7BD7C();
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v23 - v13;
  (*(v10 + 16))(v23 - v13, a1, v8, v12);
  v15 = type metadata accessor for LifeEventView();
  sub_1ABA7D028();
  swift_allocObject();
  v16 = LifeEventView.init(viewService:)(a2);
  if (v3)
  {
    v17 = *(v10 + 8);
    v17(a1, v8);
    v18 = sub_1ABA7BC4C();
    (v17)(v18);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = v16;
    v20 = sub_1ABDF2A2C(&qword_1EB4DA038, type metadata accessor for LifeEventView, &unk_1ABF65688);
    v21 = *(v7 + 88);
    v23[0] = v15;
    v23[1] = v8;
    v23[2] = v20;
    v23[3] = v21;
    type metadata accessor for EventBaseContext(0, v23);
    (*(v10 + 8))(a1, v8);
    v23[0] = v19;
    v4[2] = sub_1ABC26464(v14, v23);
  }

  return v4;
}

uint64_t *CustomLifeEventContext.init<>(viewService:)(void *a1)
{
  v3 = v1;
  type metadata accessor for LifeEventView();
  sub_1ABA7D028();
  swift_allocObject();
  v5 = a1;
  v6 = LifeEventView.init(viewService:)(v5);
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v7 = v6;
    ViewService.subgraphView(name:tableName:batchSize:)(0xD000000000000011, 0x80000001ABF91730, 0xD000000000000012, 0x80000001ABF91750, 10);
    sub_1ABAD219C(&qword_1EB4D1B40, &qword_1ABF34150);
    swift_allocObject();
    v9 = sub_1ABAE6998();

    sub_1ABAD219C(&qword_1EB4DA040, &qword_1ABF642F8);
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v10 + 24) = v9;
    *(v3 + 16) = v10;
  }

  return v3;
}

void CustomLifeEventContext.activityEvents(order:)()
{
  sub_1ABA8C3AC();
  sub_1ABA8F8D8();
  sub_1ABDF2A2C(v0, v1, &protocol conformance descriptor for CustomGraphActivityEvent);
  sub_1ABC264B4();
}

uint64_t CustomLifeEventContext.activityEvents(whose:in:order:)(char *a1, uint64_t a2, uint64_t a3)
{
  return sub_1ABDF14F8(a1, a2, a3, sub_1ABC26600);
}

{
  return sub_1ABDF14F8(a1, a2, a3, sub_1ABC2662C);
}

uint64_t CustomLifeEventContext.activityEvents<A>(of:whose:in:order:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_1ABDF16D8(a1, a2, a3, a4, a5, a6, sub_1ABC26600);
}

{
  return sub_1ABDF16D8(a1, a2, a3, a4, a5, a6, sub_1ABC2662C);
}

{
  return sub_1ABDF16D8(a1, a2, a3, a4, a5, a6, sub_1ABC26658);
}

{
  return sub_1ABDF16D8(a1, a2, a3, a4, a5, a6, sub_1ABC26684);
}

{
  return sub_1ABDF16D8(a1, a2, a3, a4, a5, a6, sub_1ABC266B0);
}

uint64_t sub_1ABDF14F8(char *a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, char *, uint64_t, void, uint64_t, uint64_t))
{
  v7 = *a1;
  v8 = sub_1ABA8C3AC();
  v13 = v7;
  sub_1ABA8F8D8();
  v11 = sub_1ABDF2A2C(v9, v10, &protocol conformance descriptor for CustomGraphActivityEvent);
  return a4(v8, &v13, a2, a3 & 1, v8, v11);
}

uint64_t CustomLifeEventContext.activityEvents(whose:in:order:)(char *a1, uint64_t a2, char a3)
{
  return sub_1ABDF14F8(a1, a2, a3, sub_1ABC26658);
}

{
  return sub_1ABDF14F8(a1, a2, a3, sub_1ABC26684);
}

{
  return sub_1ABDF14F8(a1, a2, a3, sub_1ABC266B0);
}

uint64_t CustomLifeEventContext.activityEvents(overlapping:order:)(uint64_t a1, uint64_t a2)
{
  return sub_1ABDF1790(a1, a2, sub_1ABC26844);
}

{
  return sub_1ABDF1790(a1, a2, sub_1ABC26870);
}

void CustomLifeEventContext.activityEvents<A>(of:overlapping:order:)()
{
  sub_1ABA7C5FC();
  sub_1ABC26844(v0, v1, v2, v3, v4);
}

{
  sub_1ABA7C5FC();
  sub_1ABC26870(v0, v1, v2, v3, v4);
}

{
  sub_1ABA7C5FC();
  sub_1ABC2689C(v0, v1, v2, v3, v4);
}

{
  sub_1ABA7C5FC();
  sub_1ABC268C8(v0, v1, v2, v3, v4);
}

{
  sub_1ABA7C5FC();
  sub_1ABC268F4(v0, v1, v2, v3, v4);
}

uint64_t sub_1ABDF1790(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  v6 = sub_1ABA8C3AC();
  sub_1ABA8F8D8();
  v9 = sub_1ABDF2A2C(v7, v8, &protocol conformance descriptor for CustomGraphActivityEvent);
  return a3(v6, a1, a2 & 1, v6, v9);
}

uint64_t CustomLifeEventContext.activityEvents(overlapping:order:)(uint64_t a1, char a2)
{
  return sub_1ABDF1790(a1, a2, sub_1ABC2689C);
}

{
  return sub_1ABDF1790(a1, a2, sub_1ABC268C8);
}

{
  return sub_1ABDF1790(a1, a2, sub_1ABC268F4);
}

uint64_t CustomLifeEventContext.__deallocating_deinit()
{
  CustomLifeEventContext.deinit();
  sub_1ABA7D028();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABDF1A94(char *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, char *, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = *a1;
  v13 = sub_1ABA8C3AC();
  v19 = v12;
  sub_1ABA8F8D8();
  v16 = sub_1ABDF2A2C(v14, v15, &protocol conformance descriptor for CustomGraphActivityEvent);
  return a7(v13, &v19, a2, a3 & 1, a4, a5, v13, v16, a6);
}

uint64_t CustomLifeEventContext.enumerateActivityEvents<>(whose:in:order:block:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_1ABDF1FA8(a1, a2, a3, a4, a5, a6, sub_1ABDF2A90, CustomLifeEventContext.enumerateActivityEvents<>(whose:in:order:using:));
}

{
  return sub_1ABDF1FA8(a1, a2, a3, a4, a5, a6, sub_1ABDF2A90, CustomLifeEventContext.enumerateActivityEvents<>(whose:in:order:using:));
}

{
  return sub_1ABDF1FA8(a1, a2, a3, a4, a5, a6, sub_1ABDF2A90, CustomLifeEventContext.enumerateActivityEvents<>(whose:in:order:using:));
}

{
  return sub_1ABDF1FA8(a1, a2, a3, a4, a5, a6, sub_1ABDF2A90, CustomLifeEventContext.enumerateActivityEvents<>(whose:in:order:using:));
}

{
  return sub_1ABDF1FA8(a1, a2, a3, a4, a5, a6, sub_1ABDF2A90, CustomLifeEventContext.enumerateActivityEvents<>(whose:in:order:using:));
}

uint64_t CustomLifeEventContext.enumerateActivityEvents<A>(of:whose:in:order:using:)(uint64_t a1, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return sub_1ABDF2020(a1, a2, a3, a4, a5, a6, a7, a8, a9, sub_1ABC26F98);
}

{
  return sub_1ABDF2020(a1, a2, a3, a4, a5, a6, a7, a8, a9, sub_1ABC26FD0);
}

{
  return sub_1ABDF2020(a1, a2, a3, a4, a5, a6, a7, a8, a9, sub_1ABC27008);
}

{
  return sub_1ABDF2020(a1, a2, a3, a4, a5, a6, a7, a8, a9, sub_1ABC27040);
}

{
  return sub_1ABDF2020(a1, a2, a3, a4, a5, a6, a7, a8, a9, sub_1ABC27078);
}

uint64_t CustomLifeEventContext.enumerateActivityEvents<A>(of:whose:in:order:block:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1ABDF1CE0();
}

{
  return sub_1ABDF1CE0();
}

uint64_t sub_1ABDF1CE0()
{
  sub_1ABA90AB8();
  sub_1ABA90AB8();
  return v1(v0);
}

uint64_t CustomLifeEventContext.enumerateActivityEvents<>(whose:in:order:using:)(char *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_1ABDF1A94(a1, a2, a3, a4, a5, a6, sub_1ABC27008);
}

{
  return sub_1ABDF1A94(a1, a2, a3, a4, a5, a6, sub_1ABC27040);
}

{
  return sub_1ABDF1A94(a1, a2, a3, a4, a5, a6, sub_1ABC27078);
}

uint64_t CustomLifeEventContext.enumerateActivityEvents<A>(of:whose:in:order:block:)()
{
  return sub_1ABDF1CE0();
}

{
  return sub_1ABDF1CE0();
}

{
  return sub_1ABDF1CE0();
}

uint64_t sub_1ABDF1FA8(char *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(char *, uint64_t, void, uint64_t, void *))
{
  v10 = *a1;
  v9[2] = a4;
  v9[3] = a5;
  return (a8)(&v10, a2, a3 & 1, a7, v9, a6);
}

uint64_t sub_1ABDF20E4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = sub_1ABA8C3AC();
  sub_1ABA8F8D8();
  v15 = sub_1ABDF2A2C(v13, v14, &protocol conformance descriptor for CustomGraphActivityEvent);
  return a6(v12, a1, a2 & 1, a3, a4, v12, v15, a5);
}

uint64_t CustomLifeEventContext.enumerateActivityEvents<>(overlapping:order:block:)()
{
  sub_1ABA7D018();
  return CustomLifeEventContext.enumerateActivityEvents<>(overlapping:order:using:)(v0, v1, v2, v3, v4);
}

{
  sub_1ABA7D018();
  return CustomLifeEventContext.enumerateActivityEvents<>(overlapping:order:using:)(v0, v1, v2, v3, v4);
}

{
  sub_1ABA7D018();
  return CustomLifeEventContext.enumerateActivityEvents<>(overlapping:order:using:)(v0, v1, v2, v3, v4);
}

{
  sub_1ABA7D018();
  return CustomLifeEventContext.enumerateActivityEvents<>(overlapping:order:using:)(v0, v1, v2, v3, v4);
}

{
  sub_1ABA7D018();
  return CustomLifeEventContext.enumerateActivityEvents<>(overlapping:order:using:)(v0, v1, v2, v3, v4);
}

uint64_t CustomLifeEventContext.enumerateActivityEvents<A>(of:overlapping:order:using:)()
{
  sub_1ABA7F7A0();
  return sub_1ABC27234(v0);
}

{
  sub_1ABA7F7A0();
  return sub_1ABC27268(v0);
}

{
  sub_1ABA7F7A0();
  return sub_1ABC2729C(v0);
}

{
  sub_1ABA7F7A0();
  return sub_1ABC272D0(v0);
}

{
  sub_1ABA7F7A0();
  return sub_1ABC27304(v0);
}

uint64_t CustomLifeEventContext.enumerateActivityEvents<A>(of:overlapping:order:block:)(uint64_t a1, uint64_t a2)
{
  return sub_1ABDF263C();
}

{
  return sub_1ABDF263C();
}

{
  return sub_1ABDF263C();
}

{
  return sub_1ABDF263C();
}

{
  return sub_1ABDF263C();
}

uint64_t CustomLifeEventContext.enumerateActivityEvents<>(overlapping:order:using:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_1ABDF20E4(a1, a2, a3, a4, a5, sub_1ABC2729C);
}

{
  return sub_1ABDF20E4(a1, a2, a3, a4, a5, sub_1ABC272D0);
}

{
  return sub_1ABDF20E4(a1, a2, a3, a4, a5, sub_1ABC27304);
}

uint64_t sub_1ABDF24E0(uint64_t a1, BOOL *a2, uint64_t (*a3)(char *))
{
  v7 = sub_1ABAD219C(&qword_1EB4D5E20, &unk_1ABF643D0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - v8;
  sub_1ABC47DD4(a1, v12 - v8);
  swift_storeEnumTagMultiPayload();
  v10 = a3(v9);
  result = sub_1ABC47E38(v9);
  if (!v3)
  {
    *a2 = (v10 & 1) == 0;
  }

  return result;
}

uint64_t sub_1ABDF263C()
{
  sub_1ABA90AB8();
  v9 = *(v0 + 80);
  v10 = v1;
  sub_1ABA90AB8();
  v11 = *(v2 + 88);
  v12 = v3;
  v13 = v5;
  v14 = v4;
  v15 = v6;
  return v7();
}

uint64_t sub_1ABDF26A4(uint64_t a1, BOOL *a2, uint64_t (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
  v11 = sub_1ABF252B4();
  sub_1ABA7BD7C();
  v13 = v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v21 - v16;
  (*(*(a6 - 8) + 16))(v21 - v16, a1, a6, v15);
  swift_storeEnumTagMultiPayload();
  v18 = a3(v17);
  if (v6)
  {
    return (*(v13 + 8))(v17, v11);
  }

  v20 = v18;
  result = (*(v13 + 8))(v17, v11);
  *a2 = (v20 & 1) == 0;
  return result;
}

uint64_t sub_1ABDF2930(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1ABDF2A2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t LifeEventEntry.startDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  sub_1ABF21EB4();
  sub_1ABA7BBB0();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t LifeEventEntry.endDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  sub_1ABF21EB4();
  sub_1ABA7BBB0();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

void LifeEventEntry.entityClass.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  EntityClass.init(intValue:)(*(v3 + 7), &v14);
  v6 = v15;
  if (v15)
  {
    v7 = v18;
    v9 = v16;
    v8 = v17;
    *a2 = v14;
    *(a2 + 8) = v6;
    *(a2 + 16) = v9;
    *(a2 + 24) = v8;
    *(a2 + 32) = v7;
  }

  else
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v10 = sub_1ABF237F4();
    sub_1ABA7AA24(v10, qword_1ED871B40);
    v11 = sub_1ABF237D4();
    v12 = sub_1ABF24674();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1ABA78000, v11, v12, "LifeEventEntry: entityClass: id.untyped.entityClass is nil.", v13, 2u);
      MEMORY[0x1AC5AB8B0](v13, -1, -1);
    }

    static GraphObjectBase.entityClass.getter(*(a1 + 16), *(*(a1 + 24) + 8));
  }
}

void *LifeEventEntry.cast<A>(as:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v21 = a4;
  v8 = sub_1ABF21EB4();
  sub_1ABA7BB64();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  v24 = *v4;
  type metadata accessor for TypedEntityIdentifier(0, *(a1 + 16), *(a1 + 24), v17);
  v22 = a3;
  v18 = v23;
  result = TypedEntityIdentifier.cast<A>(as:)(a2, a3, &v25);
  if (!v18)
  {
    v24 = v25;
    v20 = *(v10 + 16);
    v20(v16, v4 + *(a1 + 36), v8);
    v20(v13, v4 + *(a1 + 40), v8);
    return sub_1ABDF2E40(&v24, v16, v13, a2, v22, v21);
  }

  return result;
}

uint64_t sub_1ABDF2E40@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = *a1;
  v9 = type metadata accessor for LifeEventEntry(0, a4, a5, a4);
  v10 = *(v9 + 36);
  v11 = sub_1ABF21EB4();
  sub_1ABA7BBB0();
  v15 = *(v12 + 32);
  v15(&a6[v10], a2, v11);
  v13 = &a6[*(v9 + 40)];

  return (v15)(v13, a3, v11);
}

uint64_t sub_1ABDF2F0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABDF2F60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t static LifeEventEntry.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v9 = *a2;
  v10 = v6;
  if (!static TypedEntityIdentifier.== infix(_:_:)(&v10, &v9))
  {
    return 0;
  }

  type metadata accessor for LifeEventEntry(0, a3, a4, v7);
  if ((sub_1ABF21E54() & 1) == 0)
  {
    return 0;
  }

  return sub_1ABF21E54();
}

uint64_t LifeEventEntry.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v21 = a2;
  v22 = v5;
  type metadata accessor for LifeEventEntry.CodingKeys(255, v5, v6, a4);
  sub_1ABA7DDA8();
  swift_getWitnessTable();
  v7 = sub_1ABF24FC4();
  sub_1ABA7BB64();
  v9 = v8;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  sub_1ABA93E20(a1, a1[3]);
  v13 = v23;
  sub_1ABF252E4();
  v27 = *v13;
  v26[1] = 0;
  type metadata accessor for TypedEntityIdentifier(0, v22, v6, v14);
  swift_getWitnessTable();
  v15 = v24;
  sub_1ABF24F84();
  if (!v15)
  {
    v16 = v21;
    v17 = *(v21 + 36);
    v26[0] = 1;
    sub_1ABF21EB4();
    sub_1ABAE849C(&qword_1ED86B860, MEMORY[0x1E6969538]);
    sub_1ABA7C254(v13 + v17, v26);
    v18 = *(v16 + 40);
    v25 = 2;
    sub_1ABA7C254(v13 + v18, &v25);
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t LifeEventEntry.init(from:)@<X0>(void *a1@<X0>, void (*a2)(char *, char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v42 = sub_1ABF21EB4();
  sub_1ABA7BB64();
  v39 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v41 = &v35 - v11;
  type metadata accessor for LifeEventEntry.CodingKeys(255, a2, a3, v12);
  sub_1ABA7DDA8();
  swift_getWitnessTable();
  v45 = sub_1ABF24EB4();
  sub_1ABA7BB64();
  v40 = v13;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  v43 = a2;
  v44 = a3;
  v18 = type metadata accessor for LifeEventEntry(0, a2, a3, v17);
  sub_1ABA7BB64();
  v20 = v19;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v35 - v22;
  sub_1ABA93E20(a1, a1[3]);
  v46 = v16;
  v24 = v47;
  sub_1ABF252C4();
  if (v24)
  {
    return sub_1ABA84B54(a1);
  }

  v27 = v40;
  v26 = v41;
  v36 = v20;
  v28 = v23;
  v47 = v18;
  v29 = v42;
  type metadata accessor for TypedEntityIdentifier(0, v43, v44, v25);
  v50 = 0;
  swift_getWitnessTable();
  sub_1ABF24E64();
  *v28 = v51;
  v49 = 1;
  sub_1ABAE849C(&qword_1ED870CD0, MEMORY[0x1E6969558]);
  sub_1ABF24E64();
  v30 = *(v47 + 36);
  v43 = *(v39 + 32);
  v44 = v30;
  v43(&v28[v30], v26, v29);
  v48 = 2;
  v31 = v46;
  sub_1ABF24E64();
  (*(v27 + 8))(v31, v45);
  v32 = v47;
  v43(&v28[*(v47 + 40)], v38, v29);
  v33 = v36;
  (*(v36 + 16))(v37, v28, v32);
  sub_1ABA84B54(a1);
  return (*(v33 + 8))(v28, v32);
}

uint64_t sub_1ABDF3748(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4DA0E0, &qword_1ABF64798);
  sub_1ABA7BB64();
  v6 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12[-v8];
  v10 = *v1;
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABDF3FE8();
  sub_1ABF252E4();
  v13 = v10;
  v12[15] = 0;
  sub_1ABAE8BC8();
  sub_1ABF24F84();
  if (!v2)
  {
    v12[14] = 1;
    sub_1ABF24F54();
    v12[13] = 2;
    sub_1ABF24F54();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_1ABDF38EC@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4DA0D8, &qword_1ABF64790);
  sub_1ABA7BB64();
  v7 = v6;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17[-v9];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABDF3FE8();
  sub_1ABF252C4();
  if (!v2)
  {
    v17[15] = 0;
    sub_1ABAE8B74();
    sub_1ABF24E64();
    v11 = v18;
    v17[14] = 1;
    sub_1ABF24E34();
    v14 = v13;
    v17[13] = 2;
    sub_1ABF24E34();
    v16 = v15;
    (*(v7 + 8))(v10, v5);
    *a2 = v11;
    *(a2 + 1) = v14;
    *(a2 + 2) = v16;
  }

  return sub_1ABA84B54(a1);
}

uint64_t sub_1ABDF3ACC(uint64_t a1)
{
  v2 = sub_1ABDF3FE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABDF3B08(uint64_t a1)
{
  v2 = sub_1ABDF3FE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABDF3B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABDF3E8C();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

unint64_t sub_1ABDF3C30()
{
  result = qword_1EB4DA048;
  if (!qword_1EB4DA048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA048);
  }

  return result;
}