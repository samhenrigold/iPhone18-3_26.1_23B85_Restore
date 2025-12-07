uint64_t sub_257543554()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 32) = MEMORY[0x277D84F90];
  *(v0 + 40) = v1;
  *(v0 + 48) = v1;
  *(v0 + 56) = v1;
  *(v0 + 64) = 0;
  v2 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  v3 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  return v0;
}

void sub_2575435B4()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_198();
  *(v0 + 16) = 0;
  v6 = (v0 + 16);
  v7 = MEMORY[0x277D84F90];
  *(v0 + 32) = MEMORY[0x277D84F90];
  v8 = (v0 + 32);
  *(v1 + 40) = v7;
  *(v1 + 48) = v7;
  *(v1 + 56) = v7;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 64) = 0;
  type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v14 = *(v3 + 16);
  v13 = *(v3 + 24);
  OUTLINED_FUNCTION_447(v6, &v26);
  *v6 = v14;
  *(v1 + 24) = v13;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v15 = *(v3 + 32);
  OUTLINED_FUNCTION_447(v8, &v25);
  *v8 = v15;

  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v16 = *(v3 + 40);
  OUTLINED_FUNCTION_447(v1 + 40, &v24);
  *(v1 + 40) = v16;

  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v17 = *(v3 + 48);
  OUTLINED_FUNCTION_447(v1 + 48, &v23);
  *(v1 + 48) = v17;

  OUTLINED_FUNCTION_76_1();
  v18 = swift_beginAccess();
  v19 = *(v3 + 56);
  OUTLINED_FUNCTION_250_0(v18, &v22);
  *(v1 + 56) = v19;

  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  LOBYTE(v19) = *(v3 + 64);
  OUTLINED_FUNCTION_447(v1 + 64, &v21);
  *(v1 + 64) = v19;
  v20 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  sub_257487308(v3 + v20);

  OUTLINED_FUNCTION_143_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_325_0();
  sub_25751BB28();
  swift_endAccess();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_25754383C()
{

  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer, &qword_27F87A318, &qword_257745D10);
  return v0;
}

void sub_2575438DC(uint64_t a1)
{
  sub_25759B3F4(319, &qword_27F87BF70, type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2575439E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v11 = sub_257743234();
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    if (v10 || !v9)
    {
      switch(v11)
      {
        case 1uLL:
          sub_257545168(a2, a1);
          continue;
        case 2uLL:
          sub_2575CBD08(a2, a1, a3, a4, MEMORY[0x277D217A8]);
          continue;
        case 3uLL:
          sub_25759B718(a2, a1, a3, a4, MEMORY[0x277D217A8]);
          continue;
        case 4uLL:
          sub_2575451EC(a2, a1, a3, a4);
          continue;
        case 5uLL:
          sub_2575452B8(a2, a1, a3, a4);
          continue;
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
          goto LABEL_128;
        case 0xAuLL:
          sub_25759FAD4();
          continue;
        default:
LABEL_316:
          JUMPOUT(0);
      }
    }

    switch(v11)
    {
      case 0x64uLL:
        sub_257545384(a1, a2, a3, a4);
        break;
      case 0x78uLL:
        sub_2575458D8(a1, a2, a3, a4);
        break;
      case 0x82uLL:
        sub_257545E48(a1, a2, a3, a4);
        break;
      case 0x8CuLL:
        sub_2575463B8(a1, a2, a3, a4);
        break;
      case 0x96uLL:
        sub_257546928(a1, a2, a3, a4);
        break;
      case 0xA0uLL:
        sub_257546E98(a1, a2, a3, a4);
        break;
      case 0xA5uLL:
        sub_257547408(a1, a2, a3, a4);
        break;
      case 0xAAuLL:
        sub_257547978(a1, a2, a3, a4);
        break;
      case 0xAFuLL:
        sub_257547EE8(a1, a2, a3, a4);
        break;
      case 0xB4uLL:
        sub_257548458(a1, a2, a3, a4);
        break;
      case 0xBEuLL:
        sub_2575489C8(a1, a2, a3, a4);
        break;
      case 0xC8uLL:
        sub_257548F38(a1, a2, a3, a4);
        break;
      case 0xD2uLL:
        sub_2575494A8(a1, a2, a3, a4);
        break;
      case 0xD3uLL:
        sub_257549A18(a1, a2, a3, a4);
        break;
      case 0xD4uLL:
        sub_257549F88(a1, a2, a3, a4);
        break;
      case 0xDCuLL:
        sub_25754A4F8(a1, a2, a3, a4);
        break;
      case 0xE6uLL:
        sub_25754AA68(a1, a2, a3, a4);
        break;
      case 0xE7uLL:
        sub_25754AFD8(a1, a2, a3, a4);
        break;
      case 0xF0uLL:
        sub_25754B548(a1, a2, a3, a4);
        break;
      case 0xF5uLL:
        sub_25754BAB8(a1, a2, a3, a4);
        break;
      case 0xFAuLL:
        sub_25754C028(a1, a2, a3, a4);
        break;
      case 0x104uLL:
        sub_25754C598(a1, a2, a3, a4);
        break;
      case 0x105uLL:
        sub_25754CB08(a1, a2, a3, a4);
        break;
      case 0x10EuLL:
        sub_25754D078(a1, a2, a3, a4);
        break;
      case 0x118uLL:
        sub_25754D5E8(a1, a2, a3, a4);
        break;
      case 0x122uLL:
        sub_25754DB58(a1, a2, a3, a4);
        break;
      case 0x12CuLL:
        sub_25754E0C8(a1, a2, a3, a4);
        break;
      case 0x12DuLL:
        sub_25754E638(a1, a2, a3, a4);
        break;
      case 0x136uLL:
        sub_25754EBA8(a1, a2, a3, a4);
        break;
      case 0x140uLL:
        sub_25754F118(a1, a2, a3, a4);
        break;
      case 0x14AuLL:
        sub_25754F688(a1, a2, a3, a4);
        break;
      case 0x154uLL:
        sub_25754FBF8(a1, a2, a3, a4);
        break;
      case 0x159uLL:
        sub_257550168(a1, a2, a3, a4);
        break;
      case 0x15EuLL:
        sub_2575506D8(a1, a2, a3, a4);
        break;
      case 0x190uLL:
        sub_257550C48(a1, a2, a3, a4);
        break;
      case 0x19AuLL:
        sub_2575511B8(a1, a2, a3, a4);
        break;
      case 0x1A4uLL:
        sub_257551728(a1, a2, a3, a4);
        break;
      case 0x1AEuLL:
        sub_257551C98(a1, a2, a3, a4);
        break;
      case 0x1F4uLL:
        sub_257552208(a1, a2, a3, a4);
        break;
      case 0x258uLL:
        sub_257552778(a1, a2, a3, a4);
        break;
      case 0x25DuLL:
        sub_257552CE8(a1, a2, a3, a4);
        break;
      case 0x267uLL:
        sub_257553258(a1, a2, a3, a4);
        break;
      case 0x26CuLL:
        sub_2575537C8(a1, a2, a3, a4);
        break;
      case 0x271uLL:
        sub_257553D38(a1, a2, a3, a4);
        break;
      case 0x27BuLL:
        sub_2575542A8(a1, a2, a3, a4);
        break;
      case 0x280uLL:
        sub_257554818(a1, a2, a3, a4);
        break;
      case 0x294uLL:
        sub_257554D88(a1, a2, a3, a4);
        break;
      case 0x299uLL:
        sub_2575552F8(a1, a2, a3, a4);
        break;
      case 0x29EuLL:
        sub_257555868(a1, a2, a3, a4);
        break;
      case 0x2A8uLL:
        sub_257555DD8(a1, a2, a3, a4);
        break;
      case 0x2ADuLL:
        sub_257556348(a1, a2, a3, a4);
        break;
      case 0x2BCuLL:
        sub_2575568B8(a1, a2, a3, a4);
        break;
      case 0x2C6uLL:
        sub_257556E28(a1, a2, a3, a4);
        break;
      case 0x2CBuLL:
        sub_257557398(a1, a2, a3, a4);
        break;
      case 0x2D0uLL:
        sub_257557908(a1, a2, a3, a4);
        break;
      case 0x2DAuLL:
        sub_257557E78(a1, a2, a3, a4);
        break;
      case 0x2DFuLL:
        sub_2575583E8(a1, a2, a3, a4);
        break;
      default:
        v9 = v11 >= 0x2E4;
        v10 = v11 == 740;
        if (v11 == 740)
        {
          sub_257558958(a1, a2, a3, a4);
        }

        else
        {
LABEL_128:
          if (v10 || !v9)
          {
            switch(v11)
            {
              case 0x339uLL:
                sub_25755C528(a1, a2, a3, a4);
                continue;
              case 0x33AuLL:
              case 0x33CuLL:
              case 0x33DuLL:
              case 0x33FuLL:
                goto LABEL_247;
              case 0x33BuLL:
                sub_25755CA98(a1, a2, a3, a4);
                continue;
              case 0x33EuLL:
                sub_25755D008(a1, a2, a3, a4);
                continue;
              case 0x340uLL:
                sub_25755D578(a1, a2, a3, a4);
                continue;
              default:
                goto LABEL_316;
            }
          }

          switch(v11)
          {
            case 0x47EuLL:
              sub_25756E558(a1, a2, a3, a4);
              break;
            case 0x2F3uLL:
              sub_257559438(a1, a2, a3, a4);
              break;
            case 0x2F8uLL:
              sub_2575599A8(a1, a2, a3, a4);
              break;
            case 0x302uLL:
              sub_257559F18(a1, a2, a3, a4);
              break;
            case 0x307uLL:
              sub_25755A488(a1, a2, a3, a4);
              break;
            case 0x30CuLL:
              sub_25755A9F8(a1, a2, a3, a4);
              break;
            case 0x316uLL:
              sub_25755AF68(a1, a2, a3, a4);
              break;
            case 0x31BuLL:
              sub_25755B4D8(a1, a2, a3, a4);
              break;
            case 0x32FuLL:
              sub_25755BA48(a1, a2, a3, a4);
              break;
            case 0x334uLL:
              sub_25755BFB8(a1, a2, a3, a4);
              break;
            case 0x348uLL:
              sub_25755DAE8(a1, a2, a3, a4);
              break;
            case 0x34DuLL:
              sub_25755E058(a1, a2, a3, a4);
              break;
            case 0x352uLL:
              sub_25755E5C8(a1, a2, a3, a4);
              break;
            case 0x357uLL:
              sub_25755EB38(a1, a2, a3, a4);
              break;
            case 0x361uLL:
              sub_25755F0A8(a1, a2, a3, a4);
              break;
            case 0x366uLL:
              sub_25755F618(a1, a2, a3, a4);
              break;
            case 0x36BuLL:
              sub_25755FB88(a1, a2, a3, a4);
              break;
            case 0x370uLL:
              sub_2575600F8(a1, a2, a3, a4);
              break;
            case 0x375uLL:
              sub_257560668(a1, a2, a3, a4);
              break;
            case 0x37AuLL:
              sub_257560BD8(a1, a2, a3, a4);
              break;
            case 0x37FuLL:
              sub_257561148(a1, a2, a3, a4);
              break;
            case 0x384uLL:
              sub_2575616B8(a1, a2, a3, a4);
              break;
            case 0x389uLL:
              sub_257561C28(a1, a2, a3, a4);
              break;
            case 0x398uLL:
              sub_257562198(a1, a2, a3, a4);
              break;
            case 0x39DuLL:
              sub_257562708(a1, a2, a3, a4);
              break;
            case 0x3A2uLL:
              sub_257562C78(a1, a2, a3, a4);
              break;
            case 0x3A7uLL:
              sub_2575631E8(a1, a2, a3, a4);
              break;
            case 0x3ACuLL:
              sub_257563758(a1, a2, a3, a4);
              break;
            case 0x3C0uLL:
              sub_257565288(a1, a2, a3, a4);
              break;
            case 0x3C5uLL:
              sub_2575657F8(a1, a2, a3, a4);
              break;
            case 0x3CFuLL:
              sub_257565D68(a1, a2, a3, a4);
              break;
            case 0x3D4uLL:
              sub_2575662D8(a1, a2, a3, a4);
              break;
            case 0x3D9uLL:
              sub_257566848(a1, a2, a3, a4);
              break;
            case 0x3E3uLL:
              sub_257566DB8(a1, a2, a3, a4);
              break;
            case 0x3E8uLL:
              sub_257567328(a1, a2, a3, a4);
              break;
            case 0x3EDuLL:
              sub_257567898(a1, a2, a3, a4);
              break;
            case 0x3F7uLL:
              sub_257567E08(a1, a2, a3, a4);
              break;
            case 0x3FCuLL:
              sub_257568378(a1, a2, a3, a4);
              break;
            case 0x401uLL:
              sub_2575688E8(a1, a2, a3, a4);
              break;
            case 0x410uLL:
              sub_257568E58(a1, a2, a3, a4);
              break;
            case 0x415uLL:
              sub_2575693C8(a1, a2, a3, a4);
              break;
            case 0x429uLL:
              sub_257569938(a1, a2, a3, a4);
              break;
            case 0x42EuLL:
              sub_257569EA8(a1, a2, a3, a4);
              break;
            case 0x438uLL:
              sub_25756A418(a1, a2, a3, a4);
              break;
            case 0x43DuLL:
              sub_25756A988(a1, a2, a3, a4);
              break;
            case 0x442uLL:
              sub_25756AEF8(a1, a2, a3, a4);
              break;
            case 0x44CuLL:
              sub_25756B468(a1, a2, a3, a4);
              break;
            case 0x451uLL:
              sub_25756B9D8(a1, a2, a3, a4);
              break;
            case 0x456uLL:
              sub_25756BF48(a1, a2, a3, a4);
              break;
            case 0x460uLL:
              sub_25756C4B8(a1, a2, a3, a4);
              break;
            case 0x465uLL:
              sub_25756CA28(a1, a2, a3, a4);
              break;
            case 0x46AuLL:
              sub_25756CF98(a1, a2, a3, a4);
              break;
            case 0x46FuLL:
              sub_25756D508(a1, a2, a3, a4);
              break;
            case 0x474uLL:
              sub_25756DA78(a1, a2, a3, a4);
              break;
            case 0x479uLL:
              sub_25756DFE8(a1, a2, a3, a4);
              break;
            default:
              v9 = v11 >= 0x2EE;
              v10 = v11 == 750;
              if (v11 == 750)
              {
                sub_257558EC8(a1, a2, a3, a4);
              }

              else
              {
LABEL_247:
                if (v10 || !v9)
                {
                  switch(v11)
                  {
                    case 0x5AFuLL:
                      sub_257578878(a1, a2, a3, a4);
                      continue;
                    case 0x5B0uLL:
                    case 0x5B1uLL:
                    case 0x5B2uLL:
                    case 0x5B3uLL:
                    case 0x5B6uLL:
                    case 0x5B7uLL:
                    case 0x5B8uLL:
                    case 0x5BBuLL:
                    case 0x5BCuLL:
                    case 0x5BDuLL:
                      continue;
                    case 0x5B4uLL:
                      sub_257578DE8(a1, a2, a3, a4);
                      continue;
                    case 0x5B5uLL:
                      sub_257579358(a1, a2, a3, a4);
                      continue;
                    case 0x5B9uLL:
                      sub_2575798C8(a1, a2, a3, a4);
                      continue;
                    case 0x5BAuLL:
                      sub_257579E38(a1, a2, a3, a4);
                      continue;
                    case 0x5BEuLL:
                      sub_25757A3A8(a1, a2, a3, a4);
                      continue;
                    case 0x5BFuLL:
                      sub_25757A918(a1, a2, a3, a4);
                      continue;
                    default:
                      goto LABEL_316;
                  }
                }

                switch(v11)
                {
                  case 0x5AAuLL:
                    sub_257578308(a1, a2, a3, a4);
                    break;
                  case 0x492uLL:
                    sub_25756F038(a1, a2, a3, a4);
                    break;
                  case 0x497uLL:
                    sub_25756F5A8(a1, a2, a3, a4);
                    break;
                  case 0x49CuLL:
                    sub_25756FB18(a1, a2, a3, a4);
                    break;
                  case 0x4A6uLL:
                    sub_257570088(a1, a2, a3, a4);
                    break;
                  case 0x4ABuLL:
                    sub_2575705F8(a1, a2, a3, a4);
                    break;
                  case 0x4B0uLL:
                    sub_257570B68(a1, a2, a3, a4);
                    break;
                  case 0x4BAuLL:
                    sub_2575710D8(a1, a2, a3, a4);
                    break;
                  case 0x4BFuLL:
                    sub_257571648(a1, a2, a3, a4);
                    break;
                  case 0x4C4uLL:
                    sub_257571BB8(a1, a2, a3, a4);
                    break;
                  case 0x4CEuLL:
                    sub_257572128(a1, a2, a3, a4);
                    break;
                  case 0x4E2uLL:
                    sub_257572698(a1, a2, a3, a4);
                    break;
                  case 0x4E7uLL:
                    sub_257572C08(a1, a2, a3, a4);
                    break;
                  case 0x4ECuLL:
                    sub_257573178(a1, a2, a3, a4);
                    break;
                  case 0x4F1uLL:
                    sub_2575736E8(a1, a2, a3, a4);
                    break;
                  case 0x4F6uLL:
                    sub_257573C58(a1, a2, a3, a4);
                    break;
                  case 0x4FBuLL:
                    sub_2575741C8(a1, a2, a3, a4);
                    break;
                  case 0x500uLL:
                    sub_257574738(a1, a2, a3, a4);
                    break;
                  case 0x505uLL:
                    sub_257574CA8(a1, a2, a3, a4);
                    break;
                  case 0x50AuLL:
                    sub_257575218(a1, a2, a3, a4);
                    break;
                  case 0x50FuLL:
                    sub_257575788(a1, a2, a3, a4);
                    break;
                  case 0x521uLL:
                    sub_257575CF8(a1, a2, a3, a4);
                    break;
                  case 0x523uLL:
                    sub_257576268(a1, a2, a3, a4);
                    break;
                  case 0x528uLL:
                    sub_2575767D8(a1, a2, a3, a4);
                    break;
                  case 0x52DuLL:
                    sub_257576D48(a1, a2, a3, a4);
                    break;
                  case 0x532uLL:
                    sub_2575772B8(a1, a2, a3, a4);
                    break;
                  case 0x546uLL:
                    sub_257577828(a1, a2, a3, a4);
                    break;
                  case 0x578uLL:
                    sub_257577D98(a1, a2, a3, a4);
                    break;
                  case 0x483uLL:
                    sub_25756EAC8(a1, a2, a3, a4);
                    break;
                }
              }

              break;
          }
        }

        break;
    }
  }
}

uint64_t sub_257545168(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_257743394();
  return swift_endAccess();
}

uint64_t sub_2575451EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_Tensor(0);
  sub_2575FB760(&qword_27F87E4F8, type metadata accessor for Proto_Tensor, &unk_2577627F8);
  sub_2577433C4();
  return swift_endAccess();
}

uint64_t sub_2575452B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_Tensor(0);
  sub_2575FB760(&qword_27F87E4F8, type metadata accessor for Proto_Tensor, &unk_2577627F8);
  sub_2577433C4();
  return swift_endAccess();
}

uint64_t sub_257545384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v36 = a3;
  v35 = a2;
  v5 = type metadata accessor for Proto_ConvolutionLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v31 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F210, &qword_257766E40);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v28 - v20;
  __swift_storeEnumTagSinglePayload(&v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v30 = a1;
  v28 = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_257609BCC();
    }

    else
    {
      sub_2574695E4(v21, &qword_27F87F210, &qword_257766E40);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }
  }

  sub_2575FB760(&qword_27F87E270, type metadata accessor for Proto_ConvolutionLayerParams, &unk_257761C40);
  v24 = v33;
  sub_2577433D4();
  if (v24)
  {
    v25 = v21;
    return sub_2574695E4(v25, &qword_27F87F210, &qword_257766E40);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F210, &qword_257766E40);
    v25 = v19;
    return sub_2574695E4(v25, &qword_27F87F210, &qword_257766E40);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  sub_2574695E4(v21, &qword_27F87F210, &qword_257766E40);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v14);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575458D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_PoolingLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F218, &qword_257766E48);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v21, &qword_27F87F218, &qword_257766E48);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E1E0, type metadata accessor for Proto_PoolingLayerParams, &unk_257762960);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F218, &qword_257766E48);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F218, &qword_257766E48);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F218, &qword_257766E48);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F218, &qword_257766E48);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257545E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_ActivationParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ED10, &qword_257766D88);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_2574695E4(v21, &qword_27F87ED10, &qword_257766D88);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E510, type metadata accessor for Proto_ActivationParams, &unk_257763428);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87ED10, &qword_257766D88);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87ED10, &qword_257766D88);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87ED10, &qword_257766D88);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87ED10, &qword_257766D88);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575463B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_InnerProductLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F220, &qword_257766E50);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_2574695E4(v21, &qword_27F87F220, &qword_257766E50);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E240, type metadata accessor for Proto_InnerProductLayerParams, &unk_257762438);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F220, &qword_257766E50);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F220, &qword_257766E50);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F220, &qword_257766E50);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F220, &qword_257766E50);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257546928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_EmbeddingLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F228, &qword_257766E58);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_2574695E4(v21, &qword_27F87F228, &qword_257766E58);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E228, type metadata accessor for Proto_EmbeddingLayerParams, &unk_257762168);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F228, &qword_257766E58);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F228, &qword_257766E58);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F228, &qword_257766E58);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F228, &qword_257766E58);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257546E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_BatchnormLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F230, &qword_257766E60);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_2574695E4(v21, &qword_27F87F230, &qword_257766E60);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E1F8, type metadata accessor for Proto_BatchnormLayerParams, &unk_257764940);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F230, &qword_257766E60);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F230, &qword_257766E60);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F230, &qword_257766E60);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F230, &qword_257766E60);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257547408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_MeanVarianceNormalizeLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F238, &qword_257766E68);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_2574695E4(v21, &qword_27F87F238, &qword_257766E68);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DF30, type metadata accessor for Proto_MeanVarianceNormalizeLayerParams, &unk_257763518);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F238, &qword_257766E68);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F238, &qword_257766E68);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F238, &qword_257766E68);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F238, &qword_257766E68);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257547978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_L2NormalizeLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F240, &qword_257766E70);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_2574695E4(v21, &qword_27F87F240, &qword_257766E70);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E038, type metadata accessor for Proto_L2NormalizeLayerParams, &unk_2577647D8);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F240, &qword_257766E70);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F240, &qword_257766E70);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F240, &qword_257766E70);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F240, &qword_257766E70);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257547EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_SoftmaxLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F248, &qword_257766E78);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_2574695E4(v21, &qword_27F87F248, &qword_257766E78);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E100, type metadata accessor for Proto_SoftmaxLayerParams, &unk_2577658B8);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F248, &qword_257766E78);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F248, &qword_257766E78);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F248, &qword_257766E78);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F248, &qword_257766E78);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257548458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_LRNLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F250, &qword_257766E80);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_2574695E4(v21, &qword_27F87F250, &qword_257766E80);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E118, type metadata accessor for Proto_LRNLayerParams, &unk_257764760);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F250, &qword_257766E80);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F250, &qword_257766E80);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F250, &qword_257766E80);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F250, &qword_257766E80);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575489C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_CropLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F258, &qword_257766E88);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_2574695E4(v21, &qword_27F87F258, &qword_257766E88);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87A210, type metadata accessor for Proto_CropLayerParams, &unk_257765ED0);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F258, &qword_257766E88);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F258, &qword_257766E88);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F258, &qword_257766E88);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F258, &qword_257766E88);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257548F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_PaddingLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F260, &qword_257766E90);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_2574695E4(v21, &qword_27F87F260, &qword_257766E90);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E178, type metadata accessor for Proto_PaddingLayerParams, &unk_257762780);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F260, &qword_257766E90);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F260, &qword_257766E90);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F260, &qword_257766E90);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F260, &qword_257766E90);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575494A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_UpsampleLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F268, &qword_257766E98);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_2574695E4(v21, &qword_27F87F268, &qword_257766E98);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E0B0, type metadata accessor for Proto_UpsampleLayerParams, &unk_257764058);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F268, &qword_257766E98);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F268, &qword_257766E98);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F268, &qword_257766E98);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F268, &qword_257766E98);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257549A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_ResizeBilinearLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F270, &qword_257766EA0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_2574695E4(v21, &qword_27F87F270, &qword_257766EA0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87A218, type metadata accessor for Proto_ResizeBilinearLayerParams, &unk_257765E58);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F270, &qword_257766EA0);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F270, &qword_257766EA0);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F270, &qword_257766EA0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F270, &qword_257766EA0);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257549F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_CropResizeLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F278, &qword_257766EA8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_2574695E4(v21, &qword_27F87F278, &qword_257766EA8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87A220, type metadata accessor for Proto_CropResizeLayerParams, &unk_257765DE0);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F278, &qword_257766EA8);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F278, &qword_257766EA8);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F278, &qword_257766EA8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F278, &qword_257766EA8);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25754A4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_UnaryFunctionLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F280, &qword_257766EB0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_2574695E4(v21, &qword_27F87F280, &qword_257766EB0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E0C0, type metadata accessor for Proto_UnaryFunctionLayerParams, &unk_257763C98);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F280, &qword_257766EB0);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F280, &qword_257766EB0);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F280, &qword_257766EB0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F280, &qword_257766EB0);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25754AA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_AddLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F288, &qword_257766EB8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_2574695E4(v21, &qword_27F87F288, &qword_257766EB8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E0E0, type metadata accessor for Proto_AddLayerParams, &unk_257765750);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F288, &qword_257766EB8);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F288, &qword_257766EB8);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F288, &qword_257766EB8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F288, &qword_257766EB8);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25754AFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_MultiplyLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F290, &qword_257766EC0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_2574695E4(v21, &qword_27F87F290, &qword_257766EC0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E0D0, type metadata accessor for Proto_MultiplyLayerParams, &unk_257761B50);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F290, &qword_257766EC0);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F290, &qword_257766EC0);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F290, &qword_257766EC0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F290, &qword_257766EC0);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25754B548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_AverageLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F298, &qword_257766EC8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_2574695E4(v21, &qword_27F87F298, &qword_257766EC8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DF88, type metadata accessor for Proto_AverageLayerParams, &unk_257765048);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F298, &qword_257766EC8);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F298, &qword_257766EC8);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F298, &qword_257766EC8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F298, &qword_257766EC8);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25754BAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_ScaleLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F2A0, &qword_257766ED0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_2574695E4(v21, &qword_27F87F2A0, &qword_257766ED0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E068, type metadata accessor for Proto_ScaleLayerParams, &unk_257763770);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F2A0, &qword_257766ED0);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F2A0, &qword_257766ED0);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F2A0, &qword_257766ED0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F2A0, &qword_257766ED0);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25754C028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_BiasLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F2A8, &qword_257766ED8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_2574695E4(v21, &qword_27F87F2A8, &qword_257766ED8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E080, type metadata accessor for Proto_BiasLayerParams, &unk_257762078);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F2A8, &qword_257766ED8);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F2A8, &qword_257766ED8);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F2A8, &qword_257766ED8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F2A8, &qword_257766ED8);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25754C598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_MaxLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F2B0, &qword_257766EE0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_2574695E4(v21, &qword_27F87F2B0, &qword_257766EE0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DF70, type metadata accessor for Proto_MaxLayerParams, &unk_257764FD0);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F2B0, &qword_257766EE0);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F2B0, &qword_257766EE0);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F2B0, &qword_257766EE0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F2B0, &qword_257766EE0);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25754CB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_MinLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F2B8, &qword_257766EE8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_2574695E4(v21, &qword_27F87F2B8, &qword_257766EE8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DF58, type metadata accessor for Proto_MinLayerParams, &unk_257764F58);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F2B8, &qword_257766EE8);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F2B8, &qword_257766EE8);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F2B8, &qword_257766EE8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F2B8, &qword_257766EE8);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25754D078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_DotProductLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F2C0, &qword_257766EF0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      sub_2574695E4(v21, &qword_27F87F2C0, &qword_257766EF0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DF40, type metadata accessor for Proto_DotProductLayerParams, &unk_257764B98);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F2C0, &qword_257766EF0);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F2C0, &qword_257766EF0);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F2C0, &qword_257766EF0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F2C0, &qword_257766EF0);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25754D5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_ReduceLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F2C8, &qword_257766EF8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_2574695E4(v21, &qword_27F87F2C8, &qword_257766EF8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DFB0, type metadata accessor for Proto_ReduceLayerParams, &unk_257764EE0);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F2C8, &qword_257766EF8);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F2C8, &qword_257766EF8);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F2C8, &qword_257766EF8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F2C8, &qword_257766EF8);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25754DB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  ConstantLayerParams = type metadata accessor for Proto_LoadConstantLayerParams(0);
  v6 = MEMORY[0x28223BE20](ConstantLayerParams);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F2D0, &qword_257766F00);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, ConstantLayerParams);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      sub_2574695E4(v21, &qword_27F87F2D0, &qword_257766F00);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, ConstantLayerParams);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E050, type metadata accessor for Proto_LoadConstantLayerParams, &unk_2577615B0);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F2D0, &qword_257766F00);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, ConstantLayerParams) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F2D0, &qword_257766F00);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F2D0, &qword_257766F00);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F2D0, &qword_257766F00);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25754E0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_ReshapeLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F2D8, &qword_257766F08);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_2574695E4(v21, &qword_27F87F2D8, &qword_257766F08);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E008, type metadata accessor for Proto_ReshapeLayerParams, &unk_2577625A0);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F2D8, &qword_257766F08);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F2D8, &qword_257766F08);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F2D8, &qword_257766F08);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F2D8, &qword_257766F08);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25754E638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_FlattenLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F2E0, &qword_257766F10);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      sub_2574695E4(v21, &qword_27F87F2E0, &qword_257766F10);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E020, type metadata accessor for Proto_FlattenLayerParams, &unk_2577621E0);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F2E0, &qword_257766F10);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F2E0, &qword_257766F10);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F2E0, &qword_257766F10);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F2E0, &qword_257766F10);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25754EBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_PermuteLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F2E8, &qword_257766F18);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 28)
    {
      sub_2574695E4(v21, &qword_27F87F2E8, &qword_257766F18);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DFF0, type metadata accessor for Proto_PermuteLayerParams, &unk_2577623C0);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F2E8, &qword_257766F18);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F2E8, &qword_257766F18);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F2E8, &qword_257766F18);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F2E8, &qword_257766F18);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25754F118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_ConcatLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F2F0, &qword_257766F20);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 29)
    {
      sub_2574695E4(v21, &qword_27F87F2F0, &qword_257766F20);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E130, type metadata accessor for Proto_ConcatLayerParams, &unk_2577648C8);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F2F0, &qword_257766F20);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F2F0, &qword_257766F20);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F2F0, &qword_257766F20);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F2F0, &qword_257766F20);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25754F688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_SplitLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F2F8, &qword_257766F28);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 30)
    {
      sub_2574695E4(v21, &qword_27F87F2F8, &qword_257766F28);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E0F0, type metadata accessor for Proto_SplitLayerParams, &unk_257761DA8);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F2F8, &qword_257766F28);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F2F8, &qword_257766F28);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F2F8, &qword_257766F28);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F2F8, &qword_257766F28);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25754FBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_SequenceRepeatLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F300, &qword_257766F30);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 31)
    {
      sub_2574695E4(v21, &qword_27F87F300, &qword_257766F30);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87A258, type metadata accessor for Proto_SequenceRepeatLayerParams, &unk_257765D68);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F300, &qword_257766F30);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F300, &qword_257766F30);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F300, &qword_257766F30);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F300, &qword_257766F30);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257550168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_ReorganizeDataLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F308, &qword_257766F38);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 32)
    {
      sub_2574695E4(v21, &qword_27F87F308, &qword_257766F38);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87A260, type metadata accessor for Proto_ReorganizeDataLayerParams, &unk_257765CF0);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F308, &qword_257766F38);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F308, &qword_257766F38);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F308, &qword_257766F38);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F308, &qword_257766F38);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575506D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_SliceLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F310, &qword_257766F40);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 33)
    {
      sub_2574695E4(v21, &qword_27F87F310, &qword_257766F40);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DFC8, type metadata accessor for Proto_SliceLayerParams, &unk_257764508);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F310, &qword_257766F40);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F310, &qword_257766F40);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F310, &qword_257766F40);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F310, &qword_257766F40);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257550C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_SimpleRecurrentLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F318, &qword_257766F48);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 34)
    {
      sub_2574695E4(v21, &qword_27F87F318, &qword_257766F48);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87A1A8, type metadata accessor for Proto_SimpleRecurrentLayerParams, &unk_257765F48);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F318, &qword_257766F48);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F318, &qword_257766F48);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F318, &qword_257766F48);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F318, &qword_257766F48);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575511B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_GRULayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F320, &qword_257766F50);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 35)
    {
      sub_2574695E4(v21, &qword_27F87F320, &qword_257766F50);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DF00, type metadata accessor for Proto_GRULayerParams, &unk_257762258);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F320, &qword_257766F50);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F320, &qword_257766F50);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F320, &qword_257766F50);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F320, &qword_257766F50);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257551728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_UniDirectionalLSTMLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F328, &qword_257766F58);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 36)
    {
      sub_2574695E4(v21, &qword_27F87F328, &qword_257766F58);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DEB0, type metadata accessor for Proto_UniDirectionalLSTMLayerParams, &unk_2577640D0);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F328, &qword_257766F58);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F328, &qword_257766F58);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F328, &qword_257766F58);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F328, &qword_257766F58);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257551C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_BiDirectionalLSTMLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F330, &qword_257766F60);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 37)
    {
      sub_2574695E4(v21, &qword_27F87F330, &qword_257766F60);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DE98, type metadata accessor for Proto_BiDirectionalLSTMLayerParams, &unk_2577655E8);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F330, &qword_257766F60);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F330, &qword_257766F60);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F330, &qword_257766F60);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F330, &qword_257766F60);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257552208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_CustomLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F338, &qword_257766F68);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 38)
    {
      sub_2574695E4(v21, &qword_27F87F338, &qword_257766F68);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DE80, type metadata accessor for Proto_CustomLayerParams, &unk_257761F88);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F338, &qword_257766F68);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F338, &qword_257766F68);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F338, &qword_257766F68);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F338, &qword_257766F68);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257552778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_CopyLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F340, &qword_257766F70);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 39)
    {
      sub_2574695E4(v21, &qword_27F87F340, &qword_257766F70);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F879B70, type metadata accessor for Proto_CopyLayerParams, &unk_257766308);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F340, &qword_257766F70);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F340, &qword_257766F70);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F340, &qword_257766F70);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F340, &qword_257766F70);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257552CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_BranchLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F348, &qword_257766F78);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 40)
    {
      sub_2574695E4(v21, &qword_27F87F348, &qword_257766F78);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87A330, type metadata accessor for Proto_BranchLayerParams, &unk_2577659A8);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F348, &qword_257766F78);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F348, &qword_257766F78);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F348, &qword_257766F78);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F348, &qword_257766F78);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257553258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_LoopLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F350, &qword_257766F80);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 41)
    {
      sub_2574695E4(v21, &qword_27F87F350, &qword_257766F80);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F879B78, type metadata accessor for Proto_LoopLayerParams, &unk_257766290);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F350, &qword_257766F80);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F350, &qword_257766F80);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F350, &qword_257766F80);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F350, &qword_257766F80);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575537C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_LoopBreakLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F358, &qword_257766F88);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 42)
    {
      sub_2574695E4(v21, &qword_27F87F358, &qword_257766F88);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F879B80, type metadata accessor for Proto_LoopBreakLayerParams, &unk_257766218);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F358, &qword_257766F88);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F358, &qword_257766F88);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F358, &qword_257766F88);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F358, &qword_257766F88);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257553D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_LoopContinueLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F360, &qword_257766F90);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 43)
    {
      sub_2574695E4(v21, &qword_27F87F360, &qword_257766F90);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F879B88, type metadata accessor for Proto_LoopContinueLayerParams, &unk_2577661A0);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F360, &qword_257766F90);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F360, &qword_257766F90);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F360, &qword_257766F90);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F360, &qword_257766F90);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575542A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_RangeStaticLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F368, &qword_257766F98);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 44)
    {
      sub_2574695E4(v21, &qword_27F87F368, &qword_257766F98);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D5E0, type metadata accessor for Proto_RangeStaticLayerParams, &unk_257762C30);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F368, &qword_257766F98);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F368, &qword_257766F98);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F368, &qword_257766F98);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F368, &qword_257766F98);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257554818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_RangeDynamicLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F370, &qword_257766FA0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 45)
    {
      sub_2574695E4(v21, &qword_27F87F370, &qword_257766FA0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D5C8, type metadata accessor for Proto_RangeDynamicLayerParams, &unk_257762BB8);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F370, &qword_257766FA0);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F370, &qword_257766FA0);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F370, &qword_257766FA0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F370, &qword_257766FA0);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257554D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_ClipLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F378, &qword_257766FA8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 46)
    {
      sub_2574695E4(v21, &qword_27F87F378, &qword_257766FA8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D680, type metadata accessor for Proto_ClipLayerParams, &unk_2577657C8);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F378, &qword_257766FA8);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F378, &qword_257766FA8);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F378, &qword_257766FA8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F378, &qword_257766FA8);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575552F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_CeilLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F380, &qword_257766FB0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 47)
    {
      sub_2574695E4(v21, &qword_27F87F380, &qword_257766FB0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D6F8, type metadata accessor for Proto_CeilLayerParams, &unk_257756E20);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F380, &qword_257766FB0);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F380, &qword_257766FB0);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F380, &qword_257766FB0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F380, &qword_257766FB0);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257555868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_FloorLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F388, &qword_257766FB8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 48)
    {
      sub_2574695E4(v21, &qword_27F87F388, &qword_257766FB8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D6B8, type metadata accessor for Proto_FloorLayerParams, &unk_257756B50);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F388, &qword_257766FB8);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F388, &qword_257766FB8);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F388, &qword_257766FB8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F388, &qword_257766FB8);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257555DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_SignLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F390, &qword_257766FC0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 49)
    {
      sub_2574695E4(v21, &qword_27F87F390, &qword_257766FC0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D698, type metadata accessor for Proto_SignLayerParams, &unk_2577569E8);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F390, &qword_257766FC0);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F390, &qword_257766FC0);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F390, &qword_257766FC0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F390, &qword_257766FC0);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257556348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_RoundLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F398, &qword_257766FC8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 50)
    {
      sub_2574695E4(v21, &qword_27F87F398, &qword_257766FC8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D6D8, type metadata accessor for Proto_RoundLayerParams, &unk_257756CB8);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F398, &qword_257766FC8);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F398, &qword_257766FC8);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F398, &qword_257766FC8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F398, &qword_257766FC8);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575568B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_Exp2LayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F3A0, &qword_257766FD0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 51)
    {
      sub_2574695E4(v21, &qword_27F87F3A0, &qword_257766FD0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DBD0, type metadata accessor for Proto_Exp2LayerParams, &unk_257759F68);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F3A0, &qword_257766FD0);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F3A0, &qword_257766FD0);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F3A0, &qword_257766FD0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F3A0, &qword_257766FD0);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257556E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_SinLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F3A8, &qword_257766FD8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 52)
    {
      sub_2574695E4(v21, &qword_27F87F3A8, &qword_257766FD8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DD68, type metadata accessor for Proto_SinLayerParams, &unk_25775B138);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F3A8, &qword_257766FD8);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F3A8, &qword_257766FD8);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F3A8, &qword_257766FD8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F3A8, &qword_257766FD8);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257557398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_CosLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F3B0, &qword_257766FE0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 53)
    {
      sub_2574695E4(v21, &qword_27F87F3B0, &qword_257766FE0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DD48, type metadata accessor for Proto_CosLayerParams, &unk_25775AFD0);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F3B0, &qword_257766FE0);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F3B0, &qword_257766FE0);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F3B0, &qword_257766FE0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F3B0, &qword_257766FE0);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257557908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_TanLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F3B8, &qword_257766FE8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 54)
    {
      sub_2574695E4(v21, &qword_27F87F3B8, &qword_257766FE8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DD28, type metadata accessor for Proto_TanLayerParams, &unk_25775AE68);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F3B8, &qword_257766FE8);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F3B8, &qword_257766FE8);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F3B8, &qword_257766FE8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F3B8, &qword_257766FE8);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257557E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_AsinLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F3C0, &qword_257766FF0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 55)
    {
      sub_2574695E4(v21, &qword_27F87F3C0, &qword_257766FF0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DD08, type metadata accessor for Proto_AsinLayerParams, &unk_25775AD00);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F3C0, &qword_257766FF0);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F3C0, &qword_257766FF0);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F3C0, &qword_257766FF0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F3C0, &qword_257766FF0);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575583E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_AcosLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F3C8, &qword_257766FF8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 56)
    {
      sub_2574695E4(v21, &qword_27F87F3C8, &qword_257766FF8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DCE8, type metadata accessor for Proto_AcosLayerParams, &unk_25775AB98);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F3C8, &qword_257766FF8);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F3C8, &qword_257766FF8);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F3C8, &qword_257766FF8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F3C8, &qword_257766FF8);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257558958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_AtanLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F3D0, &qword_257767000);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 57)
    {
      sub_2574695E4(v21, &qword_27F87F3D0, &qword_257767000);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DCC8, type metadata accessor for Proto_AtanLayerParams, &unk_25775AA30);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F3D0, &qword_257767000);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F3D0, &qword_257767000);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F3D0, &qword_257767000);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F3D0, &qword_257767000);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257558EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_SinhLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F3D8, &qword_257767008);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 58)
    {
      sub_2574695E4(v21, &qword_27F87F3D8, &qword_257767008);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DCA8, type metadata accessor for Proto_SinhLayerParams, &unk_25775A8C8);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F3D8, &qword_257767008);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F3D8, &qword_257767008);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F3D8, &qword_257767008);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F3D8, &qword_257767008);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257559438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_CoshLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F3E0, &qword_257767010);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 59)
    {
      sub_2574695E4(v21, &qword_27F87F3E0, &qword_257767010);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DC88, type metadata accessor for Proto_CoshLayerParams, &unk_25775A760);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F3E0, &qword_257767010);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F3E0, &qword_257767010);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F3E0, &qword_257767010);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F3E0, &qword_257767010);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575599A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_TanhLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F3E8, &qword_257767018);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 60)
    {
      sub_2574695E4(v21, &qword_27F87F3E8, &qword_257767018);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DC68, type metadata accessor for Proto_TanhLayerParams, &unk_25775A5F8);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F3E8, &qword_257767018);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F3E8, &qword_257767018);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F3E8, &qword_257767018);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F3E8, &qword_257767018);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257559F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_AsinhLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F3F0, &qword_257767020);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 61)
    {
      sub_2574695E4(v21, &qword_27F87F3F0, &qword_257767020);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DC48, type metadata accessor for Proto_AsinhLayerParams, &unk_25775A490);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F3F0, &qword_257767020);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F3F0, &qword_257767020);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F3F0, &qword_257767020);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F3F0, &qword_257767020);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25755A488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_AcoshLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F3F8, &qword_257767028);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 62)
    {
      sub_2574695E4(v21, &qword_27F87F3F8, &qword_257767028);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DC28, type metadata accessor for Proto_AcoshLayerParams, &unk_25775A328);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F3F8, &qword_257767028);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F3F8, &qword_257767028);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F3F8, &qword_257767028);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F3F8, &qword_257767028);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25755A9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_AtanhLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F400, &qword_257767030);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 63)
    {
      sub_2574695E4(v21, &qword_27F87F400, &qword_257767030);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DC08, type metadata accessor for Proto_AtanhLayerParams, &unk_25775A1C0);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F400, &qword_257767030);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F400, &qword_257767030);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F400, &qword_257767030);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F400, &qword_257767030);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25755AF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_ErfLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F408, &qword_257767038);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 64)
    {
      sub_2574695E4(v21, &qword_27F87F408, &qword_257767038);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D608, type metadata accessor for Proto_ErfLayerParams, &unk_257756398);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F408, &qword_257767038);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F408, &qword_257767038);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F408, &qword_257767038);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F408, &qword_257767038);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25755B4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_GeluLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F410, &qword_257767040);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 65)
    {
      sub_2574695E4(v21, &qword_27F87F410, &qword_257767040);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D5F0, type metadata accessor for Proto_GeluLayerParams, &unk_257761BC8);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F410, &qword_257767040);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F410, &qword_257767040);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F410, &qword_257767040);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F410, &qword_257767040);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25755BA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_EqualLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F418, &qword_257767048);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 66)
    {
      sub_2574695E4(v21, &qword_27F87F418, &qword_257767048);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E418, type metadata accessor for Proto_EqualLayerParams, &unk_257763F68);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F418, &qword_257767048);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F418, &qword_257767048);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F418, &qword_257767048);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F418, &qword_257767048);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25755BFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_NotEqualLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F420, &qword_257767050);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 67)
    {
      sub_2574695E4(v21, &qword_27F87F420, &qword_257767050);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E400, type metadata accessor for Proto_NotEqualLayerParams, &unk_257763EF0);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F420, &qword_257767050);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F420, &qword_257767050);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F420, &qword_257767050);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F420, &qword_257767050);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25755C528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_LessThanLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F428, &qword_257767058);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 68)
    {
      sub_2574695E4(v21, &qword_27F87F428, &qword_257767058);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E448, type metadata accessor for Proto_LessThanLayerParams, &unk_257763E78);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F428, &qword_257767058);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F428, &qword_257767058);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F428, &qword_257767058);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F428, &qword_257767058);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25755CA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_LessEqualLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F430, &qword_257767060);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 69)
    {
      sub_2574695E4(v21, &qword_27F87F430, &qword_257767060);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E430, type metadata accessor for Proto_LessEqualLayerParams, &unk_257763E00);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F430, &qword_257767060);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F430, &qword_257767060);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F430, &qword_257767060);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F430, &qword_257767060);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25755D008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_GreaterThanLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F438, &qword_257767068);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 70)
    {
      sub_2574695E4(v21, &qword_27F87F438, &qword_257767068);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E478, type metadata accessor for Proto_GreaterThanLayerParams, &unk_257763D88);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F438, &qword_257767068);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F438, &qword_257767068);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F438, &qword_257767068);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F438, &qword_257767068);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25755D578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_GreaterEqualLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F440, &qword_257767070);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 71)
    {
      sub_2574695E4(v21, &qword_27F87F440, &qword_257767070);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E460, type metadata accessor for Proto_GreaterEqualLayerParams, &unk_257763D10);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F440, &qword_257767070);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F440, &qword_257767070);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F440, &qword_257767070);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F440, &qword_257767070);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25755DAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_LogicalOrLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F448, &qword_257767078);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 72)
    {
      sub_2574695E4(v21, &qword_27F87F448, &qword_257767078);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E3C0, type metadata accessor for Proto_LogicalOrLayerParams, &unk_25775F910);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F448, &qword_257767078);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F448, &qword_257767078);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F448, &qword_257767078);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F448, &qword_257767078);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25755E058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_LogicalXorLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F450, &qword_257767080);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 73)
    {
      sub_2574695E4(v21, &qword_27F87F450, &qword_257767080);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E3A0, type metadata accessor for Proto_LogicalXorLayerParams, &unk_25775F7A8);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F450, &qword_257767080);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F450, &qword_257767080);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F450, &qword_257767080);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F450, &qword_257767080);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25755E5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_LogicalNotLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F458, &qword_257767088);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 74)
    {
      sub_2574695E4(v21, &qword_27F87F458, &qword_257767088);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E380, type metadata accessor for Proto_LogicalNotLayerParams, &unk_25775F640);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F458, &qword_257767088);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F458, &qword_257767088);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F458, &qword_257767088);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F458, &qword_257767088);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25755EB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_LogicalAndLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F460, &qword_257767090);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 75)
    {
      sub_2574695E4(v21, &qword_27F87F460, &qword_257767090);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E3E0, type metadata accessor for Proto_LogicalAndLayerParams, &unk_25775FA78);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F460, &qword_257767090);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F460, &qword_257767090);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F460, &qword_257767090);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F460, &qword_257767090);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25755F0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_ModBroadcastableLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F468, &qword_257767098);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 76)
    {
      sub_2574695E4(v21, &qword_27F87F468, &qword_257767098);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DAD0, type metadata accessor for Proto_ModBroadcastableLayerParams, &unk_2577642B0);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F468, &qword_257767098);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F468, &qword_257767098);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F468, &qword_257767098);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F468, &qword_257767098);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25755F618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_MinBroadcastableLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F470, &qword_2577670A0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 77)
    {
      sub_2574695E4(v21, &qword_27F87F470, &qword_2577670A0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DAE8, type metadata accessor for Proto_MinBroadcastableLayerParams, &unk_257764E68);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F470, &qword_2577670A0);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F470, &qword_2577670A0);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F470, &qword_2577670A0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F470, &qword_2577670A0);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25755FB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_MaxBroadcastableLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F478, &qword_2577670A8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 78)
    {
      sub_2574695E4(v21, &qword_27F87F478, &qword_2577670A8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DB00, type metadata accessor for Proto_MaxBroadcastableLayerParams, &unk_257764DF0);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F478, &qword_2577670A8);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F478, &qword_2577670A8);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F478, &qword_2577670A8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F478, &qword_2577670A8);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575600F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_AddBroadcastableLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F480, &qword_2577670B0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 79)
    {
      sub_2574695E4(v21, &qword_27F87F480, &qword_2577670B0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DB10, type metadata accessor for Proto_AddBroadcastableLayerParams, &unk_2577656D8);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F480, &qword_2577670B0);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F480, &qword_2577670B0);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F480, &qword_2577670B0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F480, &qword_2577670B0);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257560668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_PowBroadcastableLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F488, &qword_2577670B8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 80)
    {
      sub_2574695E4(v21, &qword_27F87F488, &qword_2577670B8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DBF0, type metadata accessor for Proto_PowBroadcastableLayerParams, &unk_257764238);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F488, &qword_2577670B8);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F488, &qword_2577670B8);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F488, &qword_2577670B8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F488, &qword_2577670B8);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257560BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_DivideBroadcastableLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F490, &qword_2577670C0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 81)
    {
      sub_2574695E4(v21, &qword_27F87F490, &qword_2577670C0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DA78, type metadata accessor for Proto_DivideBroadcastableLayerParams, &unk_2577641C0);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F490, &qword_2577670C0);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F490, &qword_2577670C0);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F490, &qword_2577670C0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F490, &qword_2577670C0);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257561148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_FloorDivBroadcastableLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F498, &qword_2577670C8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 82)
    {
      sub_2574695E4(v21, &qword_27F87F498, &qword_2577670C8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DAB8, type metadata accessor for Proto_FloorDivBroadcastableLayerParams, &unk_257764148);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F498, &qword_2577670C8);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F498, &qword_2577670C8);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F498, &qword_2577670C8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F498, &qword_2577670C8);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575616B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_MultiplyBroadcastableLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F4A0, &qword_2577670D0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 83)
    {
      sub_2574695E4(v21, &qword_27F87F4A0, &qword_2577670D0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DA88, type metadata accessor for Proto_MultiplyBroadcastableLayerParams, &unk_257763C20);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F4A0, &qword_2577670D0);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F4A0, &qword_2577670D0);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F4A0, &qword_2577670D0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F4A0, &qword_2577670D0);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257561C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_SubtractBroadcastableLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F4A8, &qword_2577670D8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 84)
    {
      sub_2574695E4(v21, &qword_27F87F4A8, &qword_2577670D8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DAA0, type metadata accessor for Proto_SubtractBroadcastableLayerParams, &unk_257762348);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F4A8, &qword_2577670D8);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F4A8, &qword_2577670D8);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F4A8, &qword_2577670D8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F4A8, &qword_2577670D8);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257562198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_TileLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F4B0, &qword_2577670E0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 85)
    {
      sub_2574695E4(v21, &qword_27F87F4B0, &qword_2577670E0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87A268, type metadata accessor for Proto_TileLayerParams, &unk_257765C78);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F4B0, &qword_2577670E0);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F4B0, &qword_2577670E0);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F4B0, &qword_2577670E0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F4B0, &qword_2577670E0);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257562708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_StackLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F4B8, &qword_2577670E8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 86)
    {
      sub_2574695E4(v21, &qword_27F87F4B8, &qword_2577670E8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DA00, type metadata accessor for Proto_StackLayerParams, &unk_2577636F8);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F4B8, &qword_2577670E8);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F4B8, &qword_2577670E8);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F4B8, &qword_2577670E8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F4B8, &qword_2577670E8);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257562C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_GatherLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F4C0, &qword_2577670F0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 87)
    {
      sub_2574695E4(v21, &qword_27F87F4C0, &qword_2577670F0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DA60, type metadata accessor for Proto_GatherLayerParams, &unk_257763680);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F4C0, &qword_2577670F0);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F4C0, &qword_2577670F0);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F4C0, &qword_2577670F0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F4C0, &qword_2577670F0);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575631E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_ScatterLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F4C8, &qword_2577670F8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 88)
    {
      sub_2574695E4(v21, &qword_27F87F4C8, &qword_2577670F8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DA50, type metadata accessor for Proto_ScatterLayerParams, &unk_257764670);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F4C8, &qword_2577670F8);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F4C8, &qword_2577670F8);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F4C8, &qword_2577670F8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F4C8, &qword_2577670F8);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257563758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_GatherNDLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F4D0, &qword_257767100);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 89)
    {
      sub_2574695E4(v21, &qword_27F87F4D0, &qword_257767100);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DA40, type metadata accessor for Proto_GatherNDLayerParams, &unk_257763608);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F4D0, &qword_257767100);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F4D0, &qword_257767100);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F4D0, &qword_257767100);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F4D0, &qword_257767100);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257563CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_ScatterNDLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F4D8, &qword_257767108);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 90)
    {
      sub_2574695E4(v21, &qword_27F87F4D8, &qword_257767108);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DA30, type metadata accessor for Proto_ScatterNDLayerParams, &unk_2577645F8);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F4D8, &qword_257767108);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F4D8, &qword_257767108);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F4D8, &qword_257767108);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F4D8, &qword_257767108);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257564238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_SoftmaxNDLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F4E0, &qword_257767110);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 91)
    {
      sub_2574695E4(v21, &qword_27F87F4E0, &qword_257767110);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DE00, type metadata accessor for Proto_SoftmaxNDLayerParams, &unk_257765840);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F4E0, &qword_257767110);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F4E0, &qword_257767110);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F4E0, &qword_257767110);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F4E0, &qword_257767110);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575647A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_GatherAlongAxisLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F4E8, &qword_257767118);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 92)
    {
      sub_2574695E4(v21, &qword_27F87F4E8, &qword_257767118);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DA20, type metadata accessor for Proto_GatherAlongAxisLayerParams, &unk_257763590);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F4E8, &qword_257767118);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F4E8, &qword_257767118);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F4E8, &qword_257767118);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F4E8, &qword_257767118);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257564D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_ScatterAlongAxisLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F4F0, &qword_257767120);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 93)
    {
      sub_2574695E4(v21, &qword_27F87F4F0, &qword_257767120);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DA10, type metadata accessor for Proto_ScatterAlongAxisLayerParams, &unk_257764580);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F4F0, &qword_257767120);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F4F0, &qword_257767120);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F4F0, &qword_257767120);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F4F0, &qword_257767120);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257565288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_ReverseLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F4F8, &qword_257767128);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 94)
    {
      sub_2574695E4(v21, &qword_27F87F4F8, &qword_257767128);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87A270, type metadata accessor for Proto_ReverseLayerParams, &unk_257765C00);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F4F8, &qword_257767128);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F4F8, &qword_257767128);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F4F8, &qword_257767128);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F4F8, &qword_257767128);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575657F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_ReverseSeqLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F500, &qword_257767130);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 95)
    {
      sub_2574695E4(v21, &qword_27F87F500, &qword_257767130);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87A278, type metadata accessor for Proto_ReverseSeqLayerParams, &unk_257765B88);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F500, &qword_257767130);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F500, &qword_257767130);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F500, &qword_257767130);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F500, &qword_257767130);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257565D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_SplitNDLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F508, &qword_257767138);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 96)
    {
      sub_2574695E4(v21, &qword_27F87F508, &qword_257767138);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D710, type metadata accessor for Proto_SplitNDLayerParams, &unk_257761D30);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F508, &qword_257767138);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F508, &qword_257767138);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F508, &qword_257767138);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F508, &qword_257767138);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575662D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_ConcatNDLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F510, &qword_257767140);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 97)
    {
      sub_2574695E4(v21, &qword_27F87F510, &qword_257767140);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DE18, type metadata accessor for Proto_ConcatNDLayerParams, &unk_2577622D0);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F510, &qword_257767140);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F510, &qword_257767140);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F510, &qword_257767140);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F510, &qword_257767140);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257566848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_TransposeLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F518, &qword_257767148);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 98)
    {
      sub_2574695E4(v21, &qword_27F87F518, &qword_257767148);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DE48, type metadata accessor for Proto_TransposeLayerParams, &unk_257765930);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F518, &qword_257767148);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F518, &qword_257767148);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F518, &qword_257767148);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F518, &qword_257767148);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257566DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_SliceStaticLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F520, &qword_257767150);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 99)
    {
      sub_2574695E4(v21, &qword_27F87F520, &qword_257767150);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D670, type metadata accessor for Proto_SliceStaticLayerParams, &unk_257764418);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F520, &qword_257767150);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F520, &qword_257767150);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F520, &qword_257767150);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F520, &qword_257767150);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257567328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_SliceDynamicLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F528, &qword_257767158);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 100)
    {
      sub_2574695E4(v21, &qword_27F87F528, &qword_257767158);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D658, type metadata accessor for Proto_SliceDynamicLayerParams, &unk_2577643A0);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F528, &qword_257767158);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F528, &qword_257767158);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F528, &qword_257767158);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F528, &qword_257767158);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257567898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_SlidingWindowsLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F530, &qword_257767160);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 101)
    {
      sub_2574695E4(v21, &qword_27F87F530, &qword_257767160);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D5B0, type metadata accessor for Proto_SlidingWindowsLayerParams, &unk_257764328);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F530, &qword_257767160);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F530, &qword_257767160);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F530, &qword_257767160);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F530, &qword_257767160);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257567E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_TopKLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F538, &qword_257767168);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 102)
    {
      sub_2574695E4(v21, &qword_27F87F538, &qword_257767168);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D758, type metadata accessor for Proto_TopKLayerParams, &unk_257762000);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F538, &qword_257767168);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F538, &qword_257767168);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F538, &qword_257767168);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F538, &qword_257767168);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257568378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_ArgMinLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F540, &qword_257767170);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 103)
    {
      sub_2574695E4(v21, &qword_27F87F540, &qword_257767170);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D728, type metadata accessor for Proto_ArgMinLayerParams, &unk_257764D78);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F540, &qword_257767170);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F540, &qword_257767170);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F540, &qword_257767170);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F540, &qword_257767170);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575688E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_ArgMaxLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F548, &qword_257767178);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 104)
    {
      sub_2574695E4(v21, &qword_27F87F548, &qword_257767178);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D740, type metadata accessor for Proto_ArgMaxLayerParams, &unk_257764D00);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F548, &qword_257767178);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F548, &qword_257767178);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F548, &qword_257767178);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F548, &qword_257767178);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}