uint64_t ktxTexture1_LoadImageData(uint64_t a1, int8x16_t *a2, size_t a3)
{
  v3 = *(a1 + 24);
  if (!*(v3 + 128))
  {
    return 10;
  }

  v4 = a2;
  v6 = *(a1 + 136);
  v7 = *(a1 + 104);
  if (a2)
  {
    if (v7 > a3)
    {
      return 11;
    }
  }

  else
  {
    v4 = malloc_type_malloc(v7, 0xE1F47C51uLL);
    *(a1 + 112) = v4;
    if (!v4)
    {
      return 13;
    }
  }

  if (*(a1 + 52))
  {
    v9 = 0;
    while (1)
    {
      v15.i32[0] = 0;
      v10 = (*(v3 + 64))(v3 + 64, &v15, 4);
      if (v10)
      {
        break;
      }

      if (*v6 == 1)
      {
        _ktxSwapEndian32(&v15, 1uLL);
      }

      v11 = v15.u32[0];
      if (*(a1 + 33) != 1)
      {
        v12 = 1;
        goto LABEL_21;
      }

      if (*(a1 + 32))
      {
        v12 = 1;
        goto LABEL_21;
      }

      v12 = *(a1 + 60);
      if (v12)
      {
LABEL_21:
        do
        {
          v10 = (*(v3 + 64))(v3 + 64, v4, v11);
          if (v10)
          {
            goto LABEL_26;
          }

          if (*v6 == 1)
          {
            v13 = *(v3 + 56);
            if (v13 == 4)
            {
              _ktxSwapEndian32(v4, v15.u32[0] >> 2);
            }

            else if (v13 == 2)
            {
              _ktxSwapEndian16(v4, v15.u32[0] >> 1);
            }
          }

          v4 = (v4 + v11);
        }

        while (--v12);
      }

      if (++v9 >= *(a1 + 52))
      {
        goto LABEL_27;
      }
    }

LABEL_26:
    v14 = v10;
  }

  else
  {
LABEL_27:
    v14 = 0;
  }

  (*(v3 + 112))(v3 + 64);
  return v14;
}

void ktxTexture1_destruct(uint64_t a1)
{
  if (*(a1 + 136))
  {
    v2 = a1;
    free(*(a1 + 136));
    a1 = v2;
    v1 = vars8;
  }

  ktxTexture_destruct(a1);
}

uint64_t ktxTexture1_Create(int *a1, int a2, void *a3)
{
  if (!a3)
  {
    return 11;
  }

  v6 = malloc_type_malloc(0x90uLL, 0x10300406A34F8ACuLL);
  if (!v6)
  {
    return 13;
  }

  v7 = v6;
  memset(v31, 0, sizeof(v31));
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *(v6 + 4) = 0u;
  *(v6 + 5) = 0u;
  *(v6 + 7) = 0u;
  *(v6 + 8) = 0u;
  *(v6 + 6) = 0u;
  v8 = *a1;
  v6[31] = *a1;
  glGetFormatSize(v8, v31);
  if (!DWORD2(v31[0]))
  {
    v10 = 16;
    goto LABEL_67;
  }

  v9 = 6403;
  v10 = 11;
  if (v8 <= 36165)
  {
    if (v8 <= 34797)
    {
      if (v8 <= 33775)
      {
        switch(v8)
        {
          case 33189:
          case 33190:
          case 33191:
            goto LABEL_28;
          case 33192:
          case 33193:
          case 33194:
          case 33195:
          case 33196:
          case 33197:
          case 33198:
          case 33199:
          case 33200:
          case 33201:
          case 33202:
          case 33203:
          case 33204:
          case 33205:
          case 33206:
          case 33207:
          case 33208:
          case 33209:
          case 33210:
          case 33211:
          case 33212:
          case 33213:
          case 33214:
          case 33215:
          case 33216:
          case 33217:
          case 33218:
          case 33219:
          case 33220:
          case 33221:
          case 33222:
          case 33223:
          case 33224:
          case 33225:
          case 33226:
          case 33227:
          case 33228:
          case 33229:
          case 33230:
          case 33231:
          case 33232:
          case 33233:
          case 33234:
          case 33235:
          case 33236:
          case 33237:
          case 33238:
          case 33239:
          case 33240:
          case 33241:
          case 33242:
          case 33243:
          case 33244:
          case 33245:
          case 33246:
          case 33247:
          case 33248:
          case 33249:
          case 33250:
          case 33251:
          case 33252:
          case 33253:
          case 33254:
          case 33255:
          case 33256:
          case 33257:
          case 33258:
          case 33259:
          case 33260:
          case 33261:
          case 33262:
          case 33263:
          case 33264:
          case 33265:
          case 33266:
          case 33267:
          case 33268:
          case 33269:
          case 33270:
          case 33271:
          case 33272:
          case 33273:
          case 33274:
          case 33275:
          case 33276:
          case 33277:
          case 33278:
          case 33279:
          case 33280:
          case 33281:
          case 33282:
          case 33283:
          case 33284:
          case 33285:
          case 33286:
          case 33287:
          case 33288:
          case 33289:
          case 33290:
          case 33291:
          case 33292:
          case 33293:
          case 33294:
          case 33295:
          case 33296:
          case 33297:
          case 33298:
          case 33299:
          case 33300:
          case 33301:
          case 33302:
          case 33303:
          case 33304:
          case 33305:
          case 33306:
          case 33307:
          case 33308:
          case 33309:
          case 33310:
          case 33311:
          case 33312:
          case 33313:
          case 33314:
          case 33315:
          case 33316:
          case 33317:
          case 33318:
          case 33319:
          case 33320:
            goto LABEL_67;
          case 33321:
          case 33322:
          case 33325:
          case 33326:
          case 33329:
          case 33330:
          case 33331:
          case 33332:
          case 33333:
          case 33334:
            goto LABEL_66;
          case 33323:
          case 33324:
          case 33327:
          case 33328:
          case 33335:
          case 33336:
          case 33337:
          case 33338:
          case 33339:
          case 33340:
            goto LABEL_65;
          default:
            switch(v8)
            {
              case 32847:
              case 32848:
              case 32849:
              case 32850:
              case 32851:
              case 32852:
                goto LABEL_21;
              case 32853:
              case 32854:
              case 32855:
              case 32856:
              case 32857:
              case 32858:
              case 32859:
                goto LABEL_7;
              default:
                if (v8 != 10768)
                {
                  goto LABEL_67;
                }

                goto LABEL_21;
            }
        }
      }

      if (v8 > 33777)
      {
        if (v8 != 33778 && v8 != 33779)
        {
          goto LABEL_67;
        }

        goto LABEL_7;
      }

      if (v8 != 33776)
      {
LABEL_7:
        v9 = 6408;
        goto LABEL_66;
      }

LABEL_21:
      v9 = 6407;
      goto LABEL_66;
    }

    if (v8 > 35413)
    {
      switch(v8)
      {
        case 35728:
        case 35730:
        case 35733:
        case 35735:
        case 35840:
        case 35841:
        case 35898:
        case 35901:
        case 35905:
        case 35916:
        case 35986:
          goto LABEL_21;
        case 35729:
        case 35731:
        case 35732:
        case 35734:
        case 35736:
        case 35737:
        case 35842:
        case 35843:
        case 35907:
        case 35917:
        case 35918:
        case 35919:
        case 35987:
          goto LABEL_7;
        case 35738:
        case 35739:
        case 35740:
        case 35741:
        case 35742:
        case 35743:
        case 35744:
        case 35745:
        case 35746:
        case 35747:
        case 35748:
        case 35749:
        case 35750:
        case 35751:
        case 35752:
        case 35753:
        case 35754:
        case 35755:
        case 35756:
        case 35757:
        case 35758:
        case 35759:
        case 35760:
        case 35761:
        case 35762:
        case 35763:
        case 35764:
        case 35765:
        case 35766:
        case 35767:
        case 35768:
        case 35769:
        case 35770:
        case 35771:
        case 35772:
        case 35773:
        case 35774:
        case 35775:
        case 35776:
        case 35777:
        case 35778:
        case 35779:
        case 35780:
        case 35781:
        case 35782:
        case 35783:
        case 35784:
        case 35785:
        case 35786:
        case 35787:
        case 35788:
        case 35789:
        case 35790:
        case 35791:
        case 35792:
        case 35793:
        case 35794:
        case 35795:
        case 35796:
        case 35797:
        case 35798:
        case 35799:
        case 35800:
        case 35801:
        case 35802:
        case 35803:
        case 35804:
        case 35805:
        case 35806:
        case 35807:
        case 35808:
        case 35809:
        case 35810:
        case 35811:
        case 35812:
        case 35813:
        case 35814:
        case 35815:
        case 35816:
        case 35817:
        case 35818:
        case 35819:
        case 35820:
        case 35821:
        case 35822:
        case 35823:
        case 35824:
        case 35825:
        case 35826:
        case 35827:
        case 35828:
        case 35829:
        case 35830:
        case 35831:
        case 35832:
        case 35833:
        case 35834:
        case 35835:
        case 35836:
        case 35837:
        case 35838:
        case 35839:
        case 35844:
        case 35845:
        case 35846:
        case 35847:
        case 35848:
        case 35849:
        case 35850:
        case 35851:
        case 35852:
        case 35853:
        case 35854:
        case 35855:
        case 35856:
        case 35857:
        case 35858:
        case 35859:
        case 35860:
        case 35861:
        case 35862:
        case 35863:
        case 35864:
        case 35865:
        case 35866:
        case 35867:
        case 35868:
        case 35869:
        case 35870:
        case 35871:
        case 35872:
        case 35873:
        case 35874:
        case 35875:
        case 35876:
        case 35877:
        case 35878:
        case 35879:
        case 35880:
        case 35881:
        case 35882:
        case 35883:
        case 35884:
        case 35885:
        case 35886:
        case 35887:
        case 35888:
        case 35889:
        case 35890:
        case 35891:
        case 35892:
        case 35893:
        case 35894:
        case 35895:
        case 35896:
        case 35897:
        case 35899:
        case 35900:
        case 35902:
        case 35903:
        case 35904:
        case 35906:
        case 35908:
        case 35909:
        case 35910:
        case 35911:
        case 35912:
        case 35913:
        case 35914:
        case 35915:
        case 35920:
        case 35921:
        case 35922:
        case 35923:
        case 35924:
        case 35925:
        case 35926:
        case 35927:
        case 35928:
        case 35929:
        case 35930:
        case 35931:
        case 35932:
        case 35933:
        case 35934:
        case 35935:
        case 35936:
        case 35937:
        case 35938:
        case 35939:
        case 35940:
        case 35941:
        case 35942:
        case 35943:
        case 35944:
        case 35945:
        case 35946:
        case 35947:
        case 35948:
        case 35949:
        case 35950:
        case 35951:
        case 35956:
        case 35957:
        case 35958:
        case 35959:
        case 35960:
        case 35961:
        case 35962:
        case 35963:
        case 35964:
        case 35965:
        case 35966:
        case 35967:
        case 35968:
        case 35969:
        case 35970:
        case 35971:
        case 35972:
        case 35973:
        case 35974:
        case 35975:
        case 35976:
        case 35977:
        case 35978:
        case 35979:
        case 35980:
        case 35981:
        case 35982:
        case 35983:
        case 35984:
        case 35985:
        case 35988:
        case 35989:
        case 35990:
        case 35991:
        case 35992:
        case 35993:
        case 35994:
        case 35995:
        case 35996:
        case 35997:
        case 35998:
        case 35999:
        case 36000:
        case 36001:
        case 36002:
        case 36003:
        case 36004:
        case 36005:
        case 36006:
        case 36007:
        case 36008:
        case 36009:
        case 36010:
        case 36011:
          goto LABEL_67;
        case 35952:
        case 35953:
          goto LABEL_66;
        case 35954:
        case 35955:
          goto LABEL_65;
        case 36012:
LABEL_28:
          v9 = 6402;
          goto LABEL_66;
        case 36013:
          goto LABEL_45;
        default:
          if (v8 != 35414 && v8 != 35415)
          {
            goto LABEL_67;
          }

          goto LABEL_7;
      }
    }

    if (v8 <= 34842)
    {
      if (v8 <= 34836)
      {
        if (v8 != 34798 && v8 != 34836)
        {
          goto LABEL_67;
        }

        goto LABEL_7;
      }

      if (v8 != 34837)
      {
        if (v8 != 34842)
        {
          goto LABEL_67;
        }

        goto LABEL_7;
      }

      goto LABEL_21;
    }

    if (v8 > 35411 || v8 == 34843)
    {
      goto LABEL_21;
    }

    if (v8 == 35056)
    {
LABEL_45:
      v9 = 34041;
      goto LABEL_66;
    }

LABEL_67:
    v13 = v10;
    free(v7);
    return v13;
  }

  if (v8 > 37174)
  {
    switch(v8)
    {
      case 37488:
      case 37489:
        goto LABEL_66;
      case 37490:
      case 37491:
        goto LABEL_65;
      case 37492:
      case 37493:
        goto LABEL_21;
      case 37494:
      case 37495:
      case 37496:
      case 37497:
      case 37808:
      case 37809:
      case 37810:
      case 37811:
      case 37812:
      case 37813:
      case 37814:
      case 37815:
      case 37816:
      case 37817:
      case 37818:
      case 37819:
      case 37820:
      case 37821:
      case 37824:
      case 37825:
      case 37826:
      case 37827:
      case 37828:
      case 37829:
      case 37830:
      case 37831:
      case 37832:
      case 37833:
      case 37840:
      case 37841:
      case 37842:
      case 37843:
      case 37844:
      case 37845:
      case 37846:
      case 37847:
      case 37848:
      case 37849:
      case 37850:
      case 37851:
      case 37852:
      case 37853:
      case 37856:
      case 37857:
      case 37858:
      case 37859:
      case 37860:
      case 37861:
      case 37862:
      case 37863:
      case 37864:
      case 37865:
      case 37872:
      case 37873:
        goto LABEL_7;
      case 37498:
      case 37499:
      case 37500:
      case 37501:
      case 37502:
      case 37503:
      case 37504:
      case 37505:
      case 37506:
      case 37507:
      case 37508:
      case 37509:
      case 37510:
      case 37511:
      case 37512:
      case 37513:
      case 37514:
      case 37515:
      case 37516:
      case 37517:
      case 37518:
      case 37519:
      case 37520:
      case 37521:
      case 37522:
      case 37523:
      case 37524:
      case 37525:
      case 37526:
      case 37527:
      case 37528:
      case 37529:
      case 37530:
      case 37531:
      case 37532:
      case 37533:
      case 37534:
      case 37535:
      case 37536:
      case 37537:
      case 37538:
      case 37539:
      case 37540:
      case 37541:
      case 37542:
      case 37543:
      case 37544:
      case 37545:
      case 37546:
      case 37547:
      case 37548:
      case 37549:
      case 37550:
      case 37551:
      case 37552:
      case 37553:
      case 37554:
      case 37555:
      case 37556:
      case 37557:
      case 37558:
      case 37559:
      case 37560:
      case 37561:
      case 37562:
      case 37563:
      case 37564:
      case 37565:
      case 37566:
      case 37567:
      case 37568:
      case 37569:
      case 37570:
      case 37571:
      case 37572:
      case 37573:
      case 37574:
      case 37575:
      case 37576:
      case 37577:
      case 37578:
      case 37579:
      case 37580:
      case 37581:
      case 37582:
      case 37583:
      case 37584:
      case 37585:
      case 37586:
      case 37587:
      case 37588:
      case 37589:
      case 37590:
      case 37591:
      case 37592:
      case 37593:
      case 37594:
      case 37595:
      case 37596:
      case 37597:
      case 37598:
      case 37599:
      case 37600:
      case 37601:
      case 37602:
      case 37603:
      case 37604:
      case 37605:
      case 37606:
      case 37607:
      case 37608:
      case 37609:
      case 37610:
      case 37611:
      case 37612:
      case 37613:
      case 37614:
      case 37615:
      case 37616:
      case 37617:
      case 37618:
      case 37619:
      case 37620:
      case 37621:
      case 37622:
      case 37623:
      case 37624:
      case 37625:
      case 37626:
      case 37627:
      case 37628:
      case 37629:
      case 37630:
      case 37631:
      case 37632:
      case 37633:
      case 37634:
      case 37635:
      case 37636:
      case 37637:
      case 37638:
      case 37639:
      case 37640:
      case 37641:
      case 37642:
      case 37643:
      case 37644:
      case 37645:
      case 37646:
      case 37647:
      case 37648:
      case 37649:
      case 37650:
      case 37651:
      case 37652:
      case 37653:
      case 37654:
      case 37655:
      case 37656:
      case 37657:
      case 37658:
      case 37659:
      case 37660:
      case 37661:
      case 37662:
      case 37663:
      case 37664:
      case 37665:
      case 37666:
      case 37667:
      case 37668:
      case 37669:
      case 37670:
      case 37671:
      case 37672:
      case 37673:
      case 37674:
      case 37675:
      case 37676:
      case 37677:
      case 37678:
      case 37679:
      case 37680:
      case 37681:
      case 37682:
      case 37683:
      case 37684:
      case 37685:
      case 37686:
      case 37687:
      case 37688:
      case 37689:
      case 37690:
      case 37691:
      case 37692:
      case 37693:
      case 37694:
      case 37695:
      case 37696:
      case 37697:
      case 37698:
      case 37699:
      case 37700:
      case 37701:
      case 37702:
      case 37703:
      case 37704:
      case 37705:
      case 37706:
      case 37707:
      case 37708:
      case 37709:
      case 37710:
      case 37711:
      case 37712:
      case 37713:
      case 37714:
      case 37715:
      case 37716:
      case 37717:
      case 37718:
      case 37719:
      case 37720:
      case 37721:
      case 37722:
      case 37723:
      case 37724:
      case 37725:
      case 37726:
      case 37727:
      case 37728:
      case 37729:
      case 37730:
      case 37731:
      case 37732:
      case 37733:
      case 37734:
      case 37735:
      case 37736:
      case 37737:
      case 37738:
      case 37739:
      case 37740:
      case 37741:
      case 37742:
      case 37743:
      case 37744:
      case 37745:
      case 37746:
      case 37747:
      case 37748:
      case 37749:
      case 37750:
      case 37751:
      case 37752:
      case 37753:
      case 37754:
      case 37755:
      case 37756:
      case 37757:
      case 37758:
      case 37759:
      case 37760:
      case 37761:
      case 37762:
      case 37763:
      case 37764:
      case 37765:
      case 37766:
      case 37767:
      case 37768:
      case 37769:
      case 37770:
      case 37771:
      case 37772:
      case 37773:
      case 37774:
      case 37775:
      case 37776:
      case 37777:
      case 37778:
      case 37779:
      case 37780:
      case 37781:
      case 37782:
      case 37783:
      case 37784:
      case 37785:
      case 37786:
      case 37787:
      case 37788:
      case 37789:
      case 37790:
      case 37791:
      case 37792:
      case 37793:
      case 37794:
      case 37795:
      case 37796:
      case 37797:
      case 37798:
      case 37799:
      case 37800:
      case 37801:
      case 37802:
      case 37803:
      case 37804:
      case 37805:
      case 37806:
      case 37807:
      case 37822:
      case 37823:
      case 37834:
      case 37835:
      case 37836:
      case 37837:
      case 37838:
      case 37839:
      case 37854:
      case 37855:
      case 37866:
      case 37867:
      case 37868:
      case 37869:
      case 37870:
      case 37871:
        goto LABEL_67;
      default:
        if (v8 != 37175 && v8 != 37176)
        {
          goto LABEL_67;
        }

        goto LABEL_7;
    }
  }

  if (v8 <= 36491)
  {
    switch(v8)
    {
      case 36166:
      case 36167:
      case 36168:
      case 36169:
        v9 = 6401;
        goto LABEL_66;
      case 36194:
      case 36196:
      case 36209:
      case 36215:
      case 36221:
      case 36227:
      case 36233:
      case 36239:
        goto LABEL_21;
      case 36208:
      case 36214:
      case 36220:
      case 36226:
      case 36232:
      case 36238:
        goto LABEL_7;
      case 36267:
        goto LABEL_28;
      case 36268:
        goto LABEL_45;
      case 36283:
      case 36284:
        goto LABEL_66;
      case 36285:
      case 36286:
        goto LABEL_65;
      default:
        goto LABEL_67;
    }
  }

  if (v8 <= 36758)
  {
    if (v8 <= 36494)
    {
      if (v8 == 36492 || v8 == 36493)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }

    if (v8 > 36756)
    {
      if (v8 != 36757)
      {
        goto LABEL_21;
      }

      goto LABEL_65;
    }

    if (v8 == 36495)
    {
      goto LABEL_21;
    }

    v12 = 36756;
  }

  else
  {
    if (v8 <= 36762)
    {
      if (v8 <= 36760)
      {
        if (v8 != 36759)
        {
          v12 = 36760;
          goto LABEL_49;
        }

        goto LABEL_7;
      }

      if (v8 != 36761)
      {
        goto LABEL_21;
      }

LABEL_65:
      v9 = 33319;
      goto LABEL_66;
    }

    if (v8 > 36797)
    {
      if (v8 != 36798)
      {
        if (v8 != 36975)
        {
          goto LABEL_67;
        }

        goto LABEL_7;
      }

      goto LABEL_65;
    }

    if (v8 == 36763)
    {
      goto LABEL_7;
    }

    v12 = 36797;
  }

LABEL_49:
  if (v8 != v12)
  {
    goto LABEL_67;
  }

LABEL_66:
  v10 = ktxTexture_construct(v7, a1, v31);
  if (v10)
  {
    goto LABEL_67;
  }

  *v7 = 1;
  *(v7 + 1) = ktxTexture1_vtbl;
  v14 = *(v7 + 3);
  v15 = ktxTexture1_vtblInt;
  *(v14 + 16) = off_1EE39B0A8[0];
  *v14 = v15;
  v16 = malloc_type_malloc(1uLL, 0x100004077774924uLL);
  *(v7 + 17) = v16;
  if (!v16)
  {
    v10 = 13;
    goto LABEL_67;
  }

  *v16 = 0;
  v17 = *(v7 + 3);
  v18 = v31[0];
  *(v7 + 34) = (v31[0] & 2) != 0;
  if ((v18 & 2) != 0)
  {
    v23 = 0;
    v7[30] = 0;
    v7[32] = v9;
    v22 = 1;
    v24 = a3;
    goto LABEL_76;
  }

  v7[30] = v9;
  v7[32] = v9;
  v19 = *a1;
  v20 = 5125;
  v21 = 5123;
  v22 = 1;
  v23 = 5121;
  v24 = a3;
  if (*a1 > 36165)
  {
    if (v19 > 37807)
    {
      if (((v19 - 37824) > 0x31 || ((1 << (v19 + 64)) & 0x303FF3FFF03FFLL) == 0) && (v19 - 37808) >= 0xE)
      {
        goto LABEL_163;
      }
    }

    else
    {
      if (v19 <= 36494)
      {
        switch(v19)
        {
          case 36166:
          case 36167:
          case 36168:
          case 36196:
          case 36220:
          case 36221:
          case 36283:
          case 36284:
          case 36285:
          case 36286:
            goto LABEL_76;
          case 36169:
          case 36214:
          case 36215:
            goto LABEL_159;
          case 36170:
          case 36171:
          case 36172:
          case 36173:
          case 36174:
          case 36175:
          case 36176:
          case 36177:
          case 36178:
          case 36179:
          case 36180:
          case 36181:
          case 36182:
          case 36183:
          case 36184:
          case 36185:
          case 36186:
          case 36187:
          case 36188:
          case 36189:
          case 36190:
          case 36191:
          case 36192:
          case 36193:
          case 36195:
          case 36197:
          case 36198:
          case 36199:
          case 36200:
          case 36201:
          case 36202:
          case 36203:
          case 36204:
          case 36205:
          case 36206:
          case 36207:
          case 36210:
          case 36211:
          case 36212:
          case 36213:
          case 36216:
          case 36217:
          case 36218:
          case 36219:
          case 36222:
          case 36223:
          case 36224:
          case 36225:
          case 36228:
          case 36229:
          case 36230:
          case 36231:
          case 36234:
          case 36235:
          case 36236:
          case 36237:
          case 36240:
          case 36241:
          case 36242:
          case 36243:
          case 36244:
          case 36245:
          case 36246:
          case 36247:
          case 36248:
          case 36249:
          case 36250:
          case 36251:
          case 36252:
          case 36253:
          case 36254:
          case 36255:
          case 36256:
          case 36257:
          case 36258:
          case 36259:
          case 36260:
          case 36261:
          case 36262:
          case 36263:
          case 36264:
          case 36265:
          case 36266:
          case 36269:
          case 36270:
          case 36271:
          case 36272:
          case 36273:
          case 36274:
          case 36275:
          case 36276:
          case 36277:
          case 36278:
          case 36279:
          case 36280:
          case 36281:
          case 36282:
            goto LABEL_163;
          case 36194:
            goto LABEL_91;
          case 36208:
          case 36209:
            goto LABEL_161;
          case 36226:
          case 36227:
            goto LABEL_135;
          case 36232:
          case 36233:
            goto LABEL_142;
          case 36238:
          case 36239:
            goto LABEL_82;
          case 36267:
            goto LABEL_160;
          case 36268:
            goto LABEL_164;
          default:
            if ((v19 - 36492) < 2)
            {
              goto LABEL_76;
            }

            if (v19 != 36494)
            {
              goto LABEL_163;
            }

            goto LABEL_160;
        }
      }

      if (v19 <= 36974)
      {
        if (v19 > 36760)
        {
          if (v19 > 36796)
          {
            if ((v19 - 36797) < 2)
            {
              goto LABEL_76;
            }

            goto LABEL_163;
          }

          if (v19 == 36761 || v19 == 36762)
          {
            goto LABEL_142;
          }

          v30 = 36763;
        }

        else
        {
          if (v19 <= 36757)
          {
            if (v19 != 36495)
            {
              if (v19 != 36756 && v19 != 36757)
              {
                goto LABEL_163;
              }

              goto LABEL_143;
            }

            goto LABEL_160;
          }

          if (v19 == 36758 || v19 == 36759)
          {
LABEL_143:
            v22 = 1;
            v23 = 5120;
            goto LABEL_76;
          }

          v30 = 36760;
        }

        if (v19 == v30)
        {
LABEL_142:
          v21 = 5122;
          goto LABEL_159;
        }

LABEL_163:
        v7[33] = 1281;
        v27 = 11;
        goto LABEL_84;
      }

      if ((v19 - 37488) >= 0xA && (v19 - 37175) >= 2)
      {
        v29 = 36975;
LABEL_151:
        if (v19 != v29)
        {
          goto LABEL_163;
        }

        v20 = 33640;
        goto LABEL_161;
      }
    }

    goto LABEL_76;
  }

  if (v19 > 34797)
  {
    if (v19 > 35727)
    {
      switch(v19)
      {
        case 35728:
        case 35729:
        case 35733:
        case 35734:
        case 35840:
        case 35841:
        case 35842:
        case 35843:
        case 35905:
        case 35907:
        case 35916:
        case 35917:
        case 35918:
        case 35919:
        case 35952:
        case 35953:
        case 35954:
        case 35955:
        case 35986:
        case 35987:
          goto LABEL_76;
        case 35730:
        case 35735:
LABEL_91:
          v21 = 33635;
          goto LABEL_159;
        case 35731:
        case 35736:
          goto LABEL_132;
        case 35732:
        case 35737:
          goto LABEL_123;
        case 35898:
          v20 = 35899;
          goto LABEL_161;
        case 35901:
          v20 = 35902;
          goto LABEL_161;
        case 36012:
          goto LABEL_160;
        case 36013:
LABEL_164:
          v20 = 36269;
          goto LABEL_161;
        default:
          goto LABEL_163;
      }
    }

    if (v19 > 34842)
    {
      if ((v19 - 35412) < 4)
      {
        goto LABEL_76;
      }

      if (v19 != 34843)
      {
        if (v19 != 35056)
        {
          goto LABEL_163;
        }

LABEL_131:
        v20 = 34042;
        goto LABEL_161;
      }
    }

    else
    {
      if (v19 <= 34836)
      {
        if (v19 == 34798)
        {
          goto LABEL_76;
        }

        if (v19 != 34836)
        {
          goto LABEL_163;
        }

LABEL_160:
        v20 = 5126;
        goto LABEL_161;
      }

      if (v19 == 34837)
      {
        goto LABEL_160;
      }

      if (v19 != 34842)
      {
        goto LABEL_163;
      }
    }

LABEL_158:
    v21 = 5131;
    goto LABEL_159;
  }

  if (v19 > 33188)
  {
    switch(v19)
    {
      case 33189:
      case 33322:
      case 33324:
      case 33332:
      case 33338:
        goto LABEL_159;
      case 33190:
        goto LABEL_131;
      case 33191:
      case 33334:
      case 33340:
        goto LABEL_161;
      case 33192:
      case 33193:
      case 33194:
      case 33195:
      case 33196:
      case 33197:
      case 33198:
      case 33199:
      case 33200:
      case 33201:
      case 33202:
      case 33203:
      case 33204:
      case 33205:
      case 33206:
      case 33207:
      case 33208:
      case 33209:
      case 33210:
      case 33211:
      case 33212:
      case 33213:
      case 33214:
      case 33215:
      case 33216:
      case 33217:
      case 33218:
      case 33219:
      case 33220:
      case 33221:
      case 33222:
      case 33223:
      case 33224:
      case 33225:
      case 33226:
      case 33227:
      case 33228:
      case 33229:
      case 33230:
      case 33231:
      case 33232:
      case 33233:
      case 33234:
      case 33235:
      case 33236:
      case 33237:
      case 33238:
      case 33239:
      case 33240:
      case 33241:
      case 33242:
      case 33243:
      case 33244:
      case 33245:
      case 33246:
      case 33247:
      case 33248:
      case 33249:
      case 33250:
      case 33251:
      case 33252:
      case 33253:
      case 33254:
      case 33255:
      case 33256:
      case 33257:
      case 33258:
      case 33259:
      case 33260:
      case 33261:
      case 33262:
      case 33263:
      case 33264:
      case 33265:
      case 33266:
      case 33267:
      case 33268:
      case 33269:
      case 33270:
      case 33271:
      case 33272:
      case 33273:
      case 33274:
      case 33275:
      case 33276:
      case 33277:
      case 33278:
      case 33279:
      case 33280:
      case 33281:
      case 33282:
      case 33283:
      case 33284:
      case 33285:
      case 33286:
      case 33287:
      case 33288:
      case 33289:
      case 33290:
      case 33291:
      case 33292:
      case 33293:
      case 33294:
      case 33295:
      case 33296:
      case 33297:
      case 33298:
      case 33299:
      case 33300:
      case 33301:
      case 33302:
      case 33303:
      case 33304:
      case 33305:
      case 33306:
      case 33307:
      case 33308:
      case 33309:
      case 33310:
      case 33311:
      case 33312:
      case 33313:
      case 33314:
      case 33315:
      case 33316:
      case 33317:
      case 33318:
      case 33319:
      case 33320:
        goto LABEL_163;
      case 33321:
      case 33323:
      case 33330:
      case 33336:
        goto LABEL_76;
      case 33325:
      case 33327:
        goto LABEL_158;
      case 33326:
      case 33328:
        goto LABEL_160;
      case 33329:
      case 33335:
LABEL_82:
        v23 = 5120;
        goto LABEL_76;
      case 33331:
      case 33337:
        goto LABEL_142;
      case 33333:
      case 33339:
LABEL_135:
        v20 = 5124;
        goto LABEL_161;
      default:
        if ((v19 - 33776) >= 4)
        {
          goto LABEL_163;
        }

        goto LABEL_76;
    }
  }

  if (v19 <= 32852)
  {
    if (v19 <= 32848)
    {
      if (v19 == 10768)
      {
        v22 = 1;
        v23 = 33634;
        goto LABEL_76;
      }

      if (v19 != 32847)
      {
        v28 = 32848;
LABEL_122:
        if (v19 != v28)
        {
          goto LABEL_163;
        }

LABEL_123:
        v21 = 32820;
LABEL_159:
        v22 = 2;
        v23 = v21;
        goto LABEL_76;
      }

      goto LABEL_132;
    }

    if ((v19 - 32851) < 2)
    {
      goto LABEL_159;
    }

    if (v19 == 32849)
    {
      goto LABEL_76;
    }

    if (v19 != 32850)
    {
      goto LABEL_163;
    }

    v20 = 32822;
LABEL_161:
    v22 = 4;
    v23 = v20;
    goto LABEL_76;
  }

  if (v19 > 32855)
  {
    if ((v19 - 32858) < 2)
    {
      goto LABEL_159;
    }

    if (v19 == 32856)
    {
      goto LABEL_76;
    }

    v29 = 32857;
    goto LABEL_151;
  }

  if (v19 != 32853)
  {
    if (v19 != 32854)
    {
      v28 = 32855;
      goto LABEL_122;
    }

LABEL_132:
    v21 = 32819;
    goto LABEL_159;
  }

LABEL_76:
  v7[33] = v23;
  *(v17 + 56) = v22;
  if (a2 == 1)
  {
    v25 = ktxTexture_calcDataSizeTexture(v7);
    *(v7 + 13) = v25;
    v26 = malloc_type_malloc(v25, 0x2390F3C8uLL);
    v24 = a3;
    *(v7 + 14) = v26;
    if (!v26)
    {
      v27 = 13;
LABEL_84:
      ktxTexture1_destruct(v7);
      ktxTexture_destruct(v7);
      v10 = v27;
      goto LABEL_67;
    }
  }

  result = 0;
  *v24 = v7;
  return result;
}

uint64_t ktxTexture1_CreateFromStdioStream(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 11;
  }

  v6 = malloc_type_malloc(0x90uLL, 0x10300406A34F8ACuLL);
  if (v6)
  {
    if (a1)
    {
      v13 = 0;
      memset(v12, 0, sizeof(v12));
      v7 = v6;
      v8 = ktxFileStream_construct(v12, a1, 0);
      v6 = v7;
      if (!v8)
      {
        memset(v14, 0, sizeof(v14));
        v9 = (*&v12[0])(v12, v14, 64);
        if (v9)
        {
          v8 = v9;
          v6 = v7;
        }

        else
        {
          v8 = ktxTexture1_constructFromStreamAndHeader(v7, v12, v14, a2);
          v6 = v7;
          if (!v8)
          {
            goto LABEL_11;
          }
        }
      }
    }

    else
    {
      v8 = 11;
    }

    v10 = v8;
    free(v6);
    v8 = v10;
    v6 = 0;
LABEL_11:
    *a3 = v6;
    return v8;
  }

  return 13;
}

uint64_t ktxTexture1_CreateFromNamedFile(const char *a1, char a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 11;
  }

  v6 = malloc_type_malloc(0x90uLL, 0x10300406A34F8ACuLL);
  if (v6)
  {
    if (a1)
    {
      v7 = v6;
      v8 = fopen(a1, "rb");
      if (!v8)
      {
        v9 = 3;
LABEL_12:
        v6 = v7;
        goto LABEL_13;
      }

      v14 = 0;
      memset(v13, 0, sizeof(v13));
      v9 = ktxFileStream_construct(v13, v8, 1);
      v6 = v7;
      if (!v9)
      {
        memset(v15, 0, sizeof(v15));
        v10 = (*&v13[0])(v13, v15, 64);
        if (!v10)
        {
          v9 = ktxTexture1_constructFromStreamAndHeader(v7, v13, v15, a2);
          v6 = v7;
          if (!v9)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

        v9 = v10;
        goto LABEL_12;
      }
    }

    else
    {
      v9 = 11;
    }

LABEL_13:
    v11 = v9;
    free(v6);
    v9 = v11;
    v6 = 0;
LABEL_14:
    *a3 = v6;
    return v9;
  }

  return 13;
}

uint64_t ktxTexture1_CreateFromMemory(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return 11;
  }

  v8 = malloc_type_malloc(0x90uLL, 0x10300406A34F8ACuLL);
  if (v8)
  {
    v9 = 11;
    if (a1)
    {
      if (a2)
      {
        v15 = 0;
        memset(v14, 0, sizeof(v14));
        v10 = v8;
        v9 = ktxMemStream_construct_ro(v14, a1, a2);
        v8 = v10;
        if (!v9)
        {
          memset(v16, 0, sizeof(v16));
          v11 = (*&v14[0])(v14, v16, 64);
          if (v11)
          {
            v9 = v11;
            v8 = v10;
          }

          else
          {
            v9 = ktxTexture1_constructFromStreamAndHeader(v10, v14, v16, a3);
            v8 = v10;
            if (!v9)
            {
LABEL_12:
              *a4 = v8;
              return v9;
            }
          }
        }
      }
    }

    v12 = v9;
    free(v8);
    v9 = v12;
    v8 = 0;
    goto LABEL_12;
  }

  return 13;
}

uint64_t ktxTexture1_CreateFromStream(uint64_t (**a1)(void, int8x16_t *, uint64_t), char a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 11;
  }

  v6 = malloc_type_malloc(0x90uLL, 0x10300406A34F8ACuLL);
  if (!v6)
  {
    return 13;
  }

  v7 = v6;
  memset(v10, 0, sizeof(v10));
  result = (*a1)(a1, v10, 64);
  if (result || (result = ktxTexture1_constructFromStreamAndHeader(v7, a1, v10, a2), result))
  {
    v9 = result;
    free(v7);
    result = v9;
    v7 = 0;
  }

  *a3 = v7;
  return result;
}

void ktxTexture1_Destroy(void *a1)
{
  v2 = a1[17];
  if (v2)
  {
    free(v2);
  }

  ktxTexture_destruct(a1);

  free(a1);
}

uint64_t ktxTexture1_calcDataSizeLevels(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v5 += ktxTexture_calcLevelSize(a1, v4++, 1);
  }

  while (a2 != v4);
  return v5;
}

uint64_t ktxTexture1_calcLevelOffset(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v5 += ktxTexture_calcLevelSize(a1, v4++, 1);
  }

  while (a2 != v4);
  return v5;
}

uint64_t ktxTexture1_GetImageOffset(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t *a5)
{
  if (!a1)
  {
    return 11;
  }

  if (*(a1 + 52) <= a2 || *(a1 + 56) <= a3)
  {
    return 10;
  }

  if (*(a1 + 33) == 1)
  {
    if (*(a1 + 60) <= a4)
    {
      return 10;
    }
  }

  else
  {
    v6 = *(a1 + 44) >> a2;
    if (v6 <= 1)
    {
      v6 = 1;
    }

    if (v6 <= a4)
    {
      return 10;
    }
  }

  v12 = (**(a1 + 24))();
  v13 = a5;
  *a5 = v12;
  if (a3)
  {
    v14 = ktxTexture_layerSize(a1, a2, 1);
    v13 = a5;
    *a5 += v14 * a3;
  }

  if (!a4)
  {
    return 0;
  }

  v15 = a2;
  v16 = v13;
  v17 = (*(*(a1 + 8) + 24))(a1, v15);
  result = 0;
  *v16 += v17 * a4;
  return result;
}

uint64_t ktxTexture1_IterateLevels(uint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t), uint64_t a3)
{
  result = 11;
  if (a1 && a2)
  {
    if (*(a1 + 52))
    {
      v7 = 0;
      while (1)
      {
        v15 = 0;
        v8 = *(a1 + 40);
        v9 = *(a1 + 36) >> v7;
        v10 = v9 <= 1 ? 1 : v9;
        v11 = v8 >> v7 <= 1 ? 1 : v8 >> v7;
        v12 = *(a1 + 44) >> v7;
        v13 = v12 <= 1 ? 1 : v12;
        v14 = ktxTexture_calcLevelSize(a1, v7, 1);
        (*(*(a1 + 8) + 8))(a1, v7, 0, 0, &v15);
        result = a2(v7, 0, v10, v11, v13, v14, *(a1 + 112) + v15, a3);
        if (result)
        {
          break;
        }

        v7 = (v7 + 1);
        if (v7 >= *(a1 + 52))
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ktxTexture1_IterateLoadLevelFaces(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, int8x16_t *, uint64_t), uint64_t a3)
{
  if (*a1 != 1)
  {
    return 10;
  }

  if (!a2)
  {
    return 11;
  }

  v4 = a1;
  v5 = *(a1 + 24);
  if (!*(v5 + 128))
  {
    return 10;
  }

  if (*(a1 + 52))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v24 = *(a1 + 136);
LABEL_6:
    do
    {
      size.i32[0] = 0;
      v9 = *(v4 + 40);
      v10 = *(v4 + 36) >> v7;
      v11 = v10 <= 1 ? 1 : v10;
      v12 = v9 >> v7 <= 1 ? 1 : v9 >> v7;
      v13 = *(v4 + 44) >> v7;
      v14 = v13 <= 1 ? 1 : v13;
      v15 = (*(v5 + 64))(v5 + 64, &size, 4);
      if (v15)
      {
        break;
      }

      if (*v24 == 1)
      {
        _ktxSwapEndian32(&size, 1uLL);
      }

      v16 = size.u32[0];
      if (v6)
      {
        if (v8 < size.i32[0])
        {
          v15 = 1;
          break;
        }

        v23 = v8;
        if (*(v4 + 33) != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v6 = malloc_type_malloc(size.u32[0], 0x81F42C99uLL);
        if (!v6)
        {
          v15 = 13;
          break;
        }

        v23 = v16;
        if (*(v4 + 33) != 1)
        {
LABEL_25:
          v17 = 1;
LABEL_26:
          v18 = 0;
          while (1)
          {
            v15 = (*(v5 + 64))(v5 + 64, v6, v16);
            if (v15)
            {
              goto LABEL_42;
            }

            if (*v24 == 1)
            {
              v19 = *(v5 + 56);
              if (v19 == 4)
              {
                _ktxSwapEndian32(v6, size.u32[0] >> 2);
              }

              else if (v19 == 2)
              {
                _ktxSwapEndian16(v6, size.u32[0] >> 1);
              }
            }

            v15 = a2(v7, v18, v11, v12, v14, size.u32[0], v6, a3);
            v18 = (v18 + 1);
            if (v17 == v18)
            {
              v4 = a1;
              v7 = (v7 + 1);
              v8 = v23;
              if (v7 < *(a1 + 52))
              {
                goto LABEL_6;
              }

              goto LABEL_42;
            }
          }
        }
      }

      if (*(v4 + 32))
      {
        goto LABEL_25;
      }

      v17 = *(v4 + 60);
      if (v17)
      {
        goto LABEL_26;
      }

      v15 = 0;
      v7 = (v7 + 1);
      v8 = v23;
    }

    while (v7 < *(v4 + 52));
  }

  else
  {
    v15 = 0;
    v6 = 0;
  }

LABEL_42:
  v21 = v15;
  free(v6);
  (*(v5 + 112))(v5 + 64);
  return v21;
}

uint64_t ktxFormatSize_initFromDfd(_DWORD *a1, _DWORD *__s2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v2 = *__s2;
  if (v2 < 0x2C || v2 - 4 != __s2[2] >> 16)
  {
    return 0;
  }

  if (__s2[2] != 2 || __s2[1] != 0)
  {
    return 0;
  }

  a1[3] = *(__s2 + 16) + 1;
  a1[4] = *(__s2 + 17) + 1;
  a1[5] = *(__s2 + 18) + 1;
  v5 = 8 * __s2[5];
  a1[2] = v5;
  *a1 = 0;
  *(a1 + 3) = 0x100000001;
  if ((__s2[3] & 0x80) != 0)
  {
    *a1 = 2;
    if (*(__s2 + 12) == 164)
    {
      *(a1 + 3) = 0x200000002;
    }

    goto LABEL_28;
  }

  v6 = *(__s2 + 31) & 0xF;
  if (v6 == 13)
  {
    *a1 = 16;
  }

  else if (v6 == 14)
  {
    v7 = ((__s2[2] >> 18) - 6) >> 2;
    if (v7 != 2)
    {
      if (v7 == 1)
      {
        *a1 = 8;
        goto LABEL_28;
      }

      return 0;
    }

    *a1 = 25;
  }

  else
  {
    v8 = a1;
    v9 = __s2;
    v10 = __s2[2];
    if ((v10 & 0xFFFF0000) == 0x780000 && (((v10 >> 18) - 6) & 0xFFFFFFFC) == 0x18 && !memcmp(&unk_1EA8DB784, __s2 + 4, 0x6CuLL))
    {
      a1 = v8;
      *v8 = 1;
    }

    else
    {
      v14 = 0;
      v11 = interpretDFD(v9, &v15, &v16, &v17, v18, &v14);
      if (v11 > 0x3F)
      {
        return 0;
      }

      v12 = v11;
      a1 = v8;
      if ((v12 & 2) != 0)
      {
        *v8 |= 1u;
      }

      v5 = v8[2];
    }

    __s2 = v9;
  }

LABEL_28:
  if (v5)
  {
    return 1;
  }

  v13 = a1;
  LODWORD(v15) = 0;
  result = recreateBytesPlane0FromSampleInfo(__s2, &v15);
  if (result)
  {
    v13[2] = 8 * v15;
    return 1;
  }

  return result;
}

uint64_t ktxTexture2_constructFromStreamAndHeader(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v50 = *MEMORY[0x1E69E9840];
  *(a1 + 160) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  result = ktxTexture_constructFromStream(a1, a2);
  if (result)
  {
    return result;
  }

  v47 = 0;
  result = ktxCheckHeader2_(a3, &v47);
  if (result)
  {
    goto LABEL_3;
  }

  v11 = *(a3 + 40);
  *a1 = 2;
  *(a1 + 8) = ktxTexture2_vtbl;
  v12 = *(a1 + 24);
  v13 = ktxTexture2_vtblInt;
  *(v12 + 16) = off_1EE39B130[0];
  *v12 = v13;
  v14 = 24 * (v11 - 1);
  v15 = malloc_type_malloc(v14 + 56, 0x1010040522B0651uLL);
  *(a1 + 160) = v15;
  if (!v15)
  {
    goto LABEL_53;
  }

  bzero(v15, v14 + 56);
  v16 = *(a1 + 160);
  v17 = *(a1 + 24);
  v18 = *(a3 + 16);
  *(a1 + 120) = *(a3 + 12);
  *(a1 + 136) = *(a3 + 44);
  *(v17 + 56) = v18;
  v19 = HIWORD(v47);
  *(a1 + 48) = HIWORD(v47);
  *(a1 + 36) = *(a3 + 20);
  switch(v19)
  {
    case 3:
      v20 = *(a3 + 24);
      break;
    case 2:
      *(a1 + 40) = *(a3 + 24);
      *(a1 + 44) = 1;
      goto LABEL_20;
    case 1:
      v20 = 0x100000001;
      break;
    default:
      goto LABEL_20;
  }

  *(a1 + 40) = v20;
LABEL_20:
  v21 = *(a3 + 32);
  v22 = *(a3 + 36);
  v23 = v21 != 0;
  if (v21 <= 1)
  {
    v21 = 1;
  }

  *(a1 + 32) = v23;
  *(a1 + 60) = v22;
  *(a1 + 33) = v22 == 6;
  v24 = *(a3 + 40);
  *(a1 + 52) = v24;
  *(a1 + 56) = v21;
  *(a1 + 35) = BYTE1(v47) != 0;
  result = (*(v17 + 64))(v17 + 64, v16 + 4, 24 * v24);
  if (result)
  {
    goto LABEL_3;
  }

  v25 = *(a1 + 52);
  v26 = v16[3 * (v25 - 1) + 4];
  v16[3] = v26;
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 0;
LABEL_29:
      v31 = &v16[3 * v27 + 4];
      v32 = v25 - v27;
      do
      {
        *v31 -= v26;
        v31 += 3;
        --v32;
      }

      while (v32);
      goto LABEL_31;
    }

    v27 = v25 & 0xFFFFFFFE;
    v28 = v16 + 7;
    v29 = v27;
    do
    {
      v30 = *v28 - v26;
      *(v28 - 3) -= v26;
      *v28 = v30;
      v28 += 6;
      v29 -= 2;
    }

    while (v29);
    if (v27 != v25)
    {
      goto LABEL_29;
    }
  }

LABEL_31:
  v33 = *(a3 + 52);
  if (v33 < 4)
  {
LABEL_32:
    v8 = 16;
    goto LABEL_4;
  }

  v34 = malloc_type_malloc(v33, 0x100004052888210uLL);
  *(a1 + 128) = v34;
  if (!v34)
  {
    goto LABEL_53;
  }

  result = (*(v17 + 64))(v17 + 64, v34, *(a3 + 52));
  if (result)
  {
    goto LABEL_3;
  }

  v35 = *(a1 + 128);
  if (*v35 != *(a3 + 52) || !ktxFormatSize_initFromDfd((*(a1 + 24) + 24), v35))
  {
    goto LABEL_32;
  }

  *(a1 + 34) = (*(*(a1 + 24) + 24) & 2) != 0;
  *(*(a1 + 160) + 8) = ktxTexture2_calcRequiredLevelAlignment(a1);
  ktxHashList_Construct((a1 + 80));
  v37 = *(a3 + 60);
  if (!v37)
  {
    goto LABEL_48;
  }

  if ((a4 & 4) != 0)
  {
    (*(v17 + 72))(v17 + 64, *(a3 + 60));
LABEL_48:
    if (!*(a3 + 72))
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  v38 = malloc_type_malloc(*(a3 + 60), 0x93351D0FuLL);
  if (!v38)
  {
    goto LABEL_53;
  }

  v44 = v38;
  result = (*(v17 + 64))(v17 + 64, v38, v37);
  if (result)
  {
    goto LABEL_3;
  }

  v43 = v16;
  if ((a4 & 2) != 0)
  {
    *(a1 + 88) = v37;
    *(a1 + 96) = v44;
    if (*(a3 + 72))
    {
      goto LABEL_49;
    }

    goto LABEL_51;
  }

  v45 = 0;
  v46 = 0;
  v39 = ktxHashList_Deserialize((a1 + 80), v37, v44);
  free(v44);
  v8 = v39;
  if (v39)
  {
    goto LABEL_4;
  }

  if (!ktxHashList_FindValue((a1 + 80), "KTXorientation", &v45 + 1, &v46))
  {
    v41 = *(a1 + 48);
    if (HIDWORD(v45) != v41 + 1)
    {
      goto LABEL_67;
    }

    switch(v41)
    {
      case 3:
        v42 = v46;
        *(a1 + 72) = v46[2];
        break;
      case 2:
        v42 = v46;
        break;
      case 1:
        v42 = v46;
        goto LABEL_71;
      default:
        goto LABEL_44;
    }

    *(a1 + 68) = v42[1];
LABEL_71:
    *(a1 + 64) = *v42;
  }

LABEL_44:
  if (ktxHashList_FindValue((a1 + 80), "KTXanimData", &v45, &v48))
  {
    v16 = v43;
    if (!*(a3 + 72))
    {
      goto LABEL_51;
    }

LABEL_49:
    (*(v17 + 96))(v17 + 64, *(a3 + 64));
    v40 = malloc_type_malloc(*(a3 + 72), 0x100004077774924uLL);
    *v16 = v40;
    if (v40)
    {
      v16[2] = *(a3 + 72);
      result = (*(v17 + 64))(v17 + 64, v40);
      if (!result)
      {
        goto LABEL_51;
      }

LABEL_3:
      v8 = result;
LABEL_4:
      v9 = *(a1 + 128);
      if (v9)
      {
        free(v9);
      }

      v10 = *(a1 + 160);
      if (v10)
      {
        if (*v10)
        {
          free(*v10);
          v10 = *(a1 + 160);
        }

        free(v10);
      }

      ktxTexture_destruct(a1);
      return v8;
    }

LABEL_53:
    v8 = 13;
    goto LABEL_4;
  }

  if (v45 != 12)
  {
LABEL_67:
    v8 = 1;
    goto LABEL_4;
  }

  v8 = 1;
  if (*(a1 + 32) != 1)
  {
    goto LABEL_4;
  }

  *(a1 + 140) = 1;
  v36 = v48;
  *(a1 + 144) = v48;
  *(a1 + 152) = v49;
  v16 = v43;
  if (*(a3 + 72))
  {
    goto LABEL_49;
  }

LABEL_51:
  *(a1 + 104) = v16[5] + v16[4];
  if ((a4 & 1) == 0)
  {
    return 0;
  }

  result = ktxTexture2_LoadImageData(a1, 0, 0, v36);
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t ktxTexture2_calcRequiredLevelAlignment(uint64_t a1)
{
  if (*(a1 + 136))
  {
    return 1;
  }

  if (!*(a1 + 120))
  {
    return 16;
  }

  v2 = *(*(a1 + 24) + 32);
  result = v2 >> 3;
  if ((v2 & 0x18) != 0)
  {
    v3 = 4;
    v4 = result;
    do
    {
      v5 = v4;
      v4 = v3 % v4;
      v3 = v5;
    }

    while (v4);
    return 4 * result / v5;
  }

  return result;
}

uint64_t ktxTexture2_LoadImageData(uint64_t a1, void *a2, size_t a3, double a4)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 160);
  v6 = *(a1 + 136);
  if (v6 < 2)
  {
    v7 = *(a1 + 104);
    if (*(a1 + 112))
    {
      return 10;
    }

    goto LABEL_15;
  }

  if (v6 != 2)
  {
    v7 = 0;
    if (*(a1 + 112))
    {
      return 10;
    }

    goto LABEL_15;
  }

  if (!*(a1 + 120))
  {
    v10 = 16;
    v14 = (*(a1 + 52) - 1);
    if (*(a1 + 52) - 1 > 0)
    {
      goto LABEL_12;
    }

LABEL_22:
    v7 = *(v5 + 48);
    if (*(a1 + 112))
    {
      return 10;
    }

    goto LABEL_15;
  }

  v9 = *(v4 + 32);
  v10 = v9 >> 3;
  if ((v9 & 0x18) != 0)
  {
    v11 = 4;
    v12 = v10;
    do
    {
      v13 = v12;
      v12 = v11 % v12;
      v11 = v13;
    }

    while (v12);
    v10 = 4 * v10 / v13;
  }

  v14 = (*(a1 + 52) - 1);
  if (*(a1 + 52) - 1 <= 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  *&a4 = v10;
  if (v14 >= 4)
  {
    v21 = vdup_lane_s32(*&a4, 0);
    v16 = v14 & 3;
    v22 = (v5 + 24 * v14);
    v23 = 0uLL;
    v24 = v14 & 0x7FFFFFFC;
    v25 = 0uLL;
    do
    {
      v26 = v22 - 3;
      v27.i64[0] = v22[6];
      v27.i64[1] = v22[3];
      v28 = *v22;
      v22 -= 12;
      v29.i64[0] = v28;
      v29.i64[1] = *v26;
      v23 = vaddw_u32(v23, vcvt_u32_f32(vmul_n_f32(vrndp_f32(vdiv_f32(vcvt_f32_f64(vcvtq_f64_u64(v27)), v21)), *&a4)));
      v25 = vaddw_u32(v25, vcvt_u32_f32(vmul_n_f32(vrndp_f32(vdiv_f32(vcvt_f32_f64(vcvtq_f64_u64(v29)), v21)), *&a4)));
      v24 -= 4;
    }

    while (v24);
    v15 = vaddvq_s64(vaddq_s64(v25, v23));
    if ((v14 & 0x7FFFFFFC) == v14)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v15 = 0;
    v16 = v14;
  }

  v30 = v16 + 1;
  v31 = (v5 + 24 * v16 + 48);
  do
  {
    v32 = *v31;
    v31 -= 3;
    v15 += (ceilf(v32 / *&a4) * *&a4);
    --v30;
  }

  while (v30 > 1);
LABEL_35:
  if (!a1)
  {
    return 11;
  }

  v7 = *(v5 + 48) + v15;
  if (*(a1 + 112))
  {
    return 10;
  }

LABEL_15:
  if (!*(v4 + 128))
  {
    return 10;
  }

  if (a2)
  {
    if (v7 <= a3)
    {
      if (v6 != 2)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    return 11;
  }

  v17 = a1;
  a2 = malloc_type_malloc(v7, 0x2ADC6E8uLL);
  *(v17 + 112) = a2;
  if (!a2)
  {
    return 13;
  }

  a1 = v17;
  if (*(v17 + 136) != 2)
  {
    goto LABEL_27;
  }

LABEL_26:
  v18 = a1;
  a2 = malloc_type_malloc(*(a1 + 104), 0x9BC96479uLL);
  a1 = v18;
  if (!a2)
  {
    return 13;
  }

LABEL_27:
  v19 = a2;
  v20 = a1;
  result = (*(v4 + 96))(v4 + 64, *(v5 + 24));
  if (!result)
  {
    result = (*(v4 + 64))(v4 + 64, v19, *(v20 + 104));
    if (!result)
    {
      (*(v4 + 112))(v4 + 64);
      result = 0;
      *(v5 + 24) = 0;
    }
  }

  return result;
}

void ktxTexture2_destruct(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    free(v2);
  }

  v3 = *(a1 + 160);
  if (v3)
  {
    if (*v3)
    {
      free(*v3);
      v3 = *(a1 + 160);
    }

    free(v3);
  }

  ktxTexture_destruct(a1);
}

uint64_t ktxTexture2_Create(uint64_t a1, int a2, void *a3)
{
  if (!a3)
  {
    return 11;
  }

  v6 = malloc_type_malloc(0xA8uLL, 0x1030040B443E594uLL);
  if (!v6)
  {
    return 13;
  }

  v7 = v6;
  memset(v35, 0, sizeof(v35));
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *(v6 + 4) = 0u;
  *(v6 + 5) = 0u;
  *(v6 + 6) = 0u;
  *(v6 + 7) = 0u;
  *(v6 + 8) = 0u;
  *(v6 + 9) = 0u;
  *(v6 + 20) = 0;
  v8 = *(a1 + 4);
  if (v8)
  {
    v9 = vk2dfd(v8);
    *(v7 + 16) = v9;
    if (!v9)
    {
      v12 = 11;
      goto LABEL_24;
    }

    ktxFormatSize_initFromDfd(v35, v9);
  }

  else
  {
    v11 = malloc_type_malloc(**(a1 + 8), 0x100004052888210uLL);
    *(v7 + 16) = v11;
    if (!v11)
    {
      v12 = 13;
      goto LABEL_24;
    }

    memcpy(v11, *(a1 + 8), **(a1 + 8));
    if (ktxFormatSize_initFromDfd(v35, *(v7 + 16)))
    {
      v12 = 16;
      v13 = *(v7 + 16);
      if (!v13)
      {
LABEL_12:
        v14 = *(v7 + 20);
        if (v14)
        {
          if (*v14)
          {
            free(*v14);
            v14 = *(v7 + 20);
          }

          free(v14);
        }

        ktxTexture_destruct(v7);
        goto LABEL_24;
      }

LABEL_11:
      free(v13);
      goto LABEL_12;
    }
  }

  v12 = ktxTexture_construct(v7, a1, v35);
  if (v12)
  {
LABEL_24:
    free(v7);
    return v12;
  }

  v15 = *(a1 + 32);
  *v7 = 2;
  *(v7 + 1) = ktxTexture2_vtbl;
  v16 = *(v7 + 3);
  v17 = ktxTexture2_vtblInt;
  *(v16 + 16) = off_1EE39B130[0];
  *v16 = v17;
  v18 = 24 * (v15 - 1);
  v19 = malloc_type_malloc(v18 + 56, 0x1010040522B0651uLL);
  *(v7 + 20) = v19;
  if (!v19)
  {
    goto LABEL_44;
  }

  bzero(v19, v18 + 56);
  v20 = *(a1 + 4);
  v7[30] = v20;
  if (*(v7 + 34) == 1)
  {
    v21 = *(v7 + 3);
    v22 = 1;
  }

  else
  {
    if (v35[0])
    {
      *(*(v7 + 3) + 56) = DWORD2(v35[0]) >> 3;
      goto LABEL_31;
    }

    if ((v35[0] & 0x18) == 0)
    {
      v34 = 0;
      getDFDComponentInfoUnpacked(*(v7 + 16), &v34, (*(v7 + 3) + 56));
      v20 = v7[30];
      goto LABEL_31;
    }

    v21 = *(v7 + 3);
    if (v20 == 128)
    {
      *(v21 + 56) = 2;
      v7[34] = 0;
      goto LABEL_33;
    }

    v22 = 4;
  }

  *(v21 + 56) = v22;
LABEL_31:
  v7[34] = 0;
  if (!v20)
  {
    v24 = 16;
    goto LABEL_38;
  }

  v21 = *(v7 + 3);
LABEL_33:
  v23 = *(v21 + 32);
  v24 = v23 >> 3;
  if ((v23 & 0x18) != 0)
  {
    v25 = 4;
    v26 = v24;
    do
    {
      v27 = v26;
      v26 = v25 % v26;
      v25 = v27;
    }

    while (v26);
    v24 = 4 * v24 / v27;
  }

LABEL_38:
  v28 = *(v7 + 20);
  *(v28 + 8) = v24;
  *(v28 + 24) = 0;
  if (v7[13])
  {
    v29 = 0;
    v30 = (v28 + 48);
    do
    {
      v31 = ktxTexture_calcLevelSize(v7, v29, 2);
      *(v30 - 1) = v31;
      *v30 = v31;
      *(v30 - 2) = (*(*(v7 + 3) + 16))(v7, v29++);
      v30 += 3;
    }

    while (v29 < v7[13]);
  }

  if (a2 == 1)
  {
    v32 = ktxTexture_calcDataSizeTexture(v7);
    *(v7 + 13) = v32;
    v33 = malloc_type_malloc(v32, 0x548F58F7uLL);
    *(v7 + 14) = v33;
    if (!v33)
    {
LABEL_44:
      v12 = 13;
      v13 = *(v7 + 16);
      if (!v13)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  result = 0;
  *a3 = v7;
  return result;
}

uint64_t ktxTexture2_CreateCopy(__int128 *a1, uint64_t **a2)
{
  if (!a2)
  {
    return 11;
  }

  v4 = malloc_type_malloc(0xA8uLL, 0x1030040B443E594uLL);
  if (v4)
  {
    v5 = v4;
    v6 = *a1;
    *(v4 + 1) = a1[1];
    v8 = a1[6];
    v7 = a1[7];
    v9 = a1[9];
    *(v4 + 8) = a1[8];
    *(v4 + 6) = v8;
    v10 = a1[2];
    v11 = a1[3];
    v12 = a1[4];
    v13 = a1[5];
    *(v4 + 7) = v7;
    *v4 = v6;
    *(v4 + 4) = v12;
    *(v4 + 5) = v13;
    *(v4 + 2) = v10;
    *(v4 + 3) = v11;
    *(v4 + 9) = v9;
    v4[3] = 0;
    v4[20] = 0;
    v4[16] = 0;
    v4[12] = 0;
    v4[10] = 0;
    v4[14] = 0;
    v14 = malloc_type_malloc(0xA8uLL, 0x10A2040785DE303uLL);
    v5[3] = v14;
    if (!v14)
    {
LABEL_30:
      free(v5);
      return 13;
    }

    if (!*(a1 + 14) && ktxTexture_isActiveStream(a1))
    {
      ktxTexture2_LoadImageData(a1, 0, 0, v15);
    }

    v16 = v5[3];
    v17 = *(a1 + 3);
    v18 = v17[6];
    v20 = v17[3];
    v19 = v17[4];
    *(v16 + 80) = v17[5];
    *(v16 + 96) = v18;
    *(v16 + 48) = v20;
    *(v16 + 64) = v19;
    v22 = v17[8];
    v21 = v17[9];
    v23 = v17[7];
    *(v16 + 160) = *(v17 + 20);
    *(v16 + 128) = v22;
    *(v16 + 144) = v21;
    *(v16 + 112) = v23;
    v24 = *v17;
    v25 = v17[2];
    *(v16 + 16) = v17[1];
    *(v16 + 32) = v25;
    *v16 = v24;
    v26 = 24 * (*(a1 + 13) - 1);
    v27 = malloc_type_malloc(v26 + 56, 0x1010040522B0651uLL);
    v5[20] = v27;
    if (v27)
    {
      memcpy(v27, *(a1 + 20), v26 + 56);
      v28 = *(*(a1 + 20) + 16);
      if (v28)
      {
        v29 = malloc_type_malloc(v28, 0x100004077774924uLL);
        *v5[20] = v29;
        if (!v29)
        {
          goto LABEL_20;
        }

        memcpy(v29, **(a1 + 20), *(*(a1 + 20) + 16));
      }

      v30 = malloc_type_malloc(**(a1 + 16), 0x100004052888210uLL);
      v5[16] = v30;
      if (v30)
      {
        memcpy(v30, *(a1 + 16), **(a1 + 16));
        v31 = *(a1 + 10);
        if (v31)
        {
          ktxHashList_ConstructCopy(v5 + 10, v31);
          goto LABEL_14;
        }

        if (!*(a1 + 12))
        {
LABEL_14:
          v32 = malloc_type_malloc(v5[13], 0x100004077774924uLL);
          v5[14] = v32;
          if (v32)
          {
            memcpy(v32, *(a1 + 14), *(a1 + 13));
            result = 0;
            *a2 = v5;
            return result;
          }

          goto LABEL_20;
        }

        v34 = malloc_type_malloc(*(a1 + 22), 0x100004077774924uLL);
        v5[12] = v34;
        if (v34)
        {
          memcpy(v34, *(a1 + 12), *(a1 + 22));
          goto LABEL_14;
        }
      }
    }

LABEL_20:
    v35 = v5[3];
    if (v35)
    {
      free(v35);
    }

    v36 = v5[20];
    if (v36)
    {
      if (*v36)
      {
        free(*v36);
        v36 = v5[20];
      }

      free(v36);
    }

    v37 = v5[16];
    if (v37)
    {
      free(v37);
    }

    if (v5[10])
    {
      ktxHashList_Destruct(v5 + 10);
    }

    goto LABEL_30;
  }

  return 13;
}

uint64_t ktxTexture2_CreateFromStdioStream(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 11;
  }

  v6 = malloc_type_malloc(0xA8uLL, 0x1030040B443E594uLL);
  if (v6)
  {
    if (a1)
    {
      v13 = 0;
      memset(v12, 0, sizeof(v12));
      v7 = v6;
      v8 = ktxFileStream_construct(v12, a1, 0);
      v6 = v7;
      if (!v8)
      {
        memset(v14, 0, sizeof(v14));
        v9 = (*&v12[0])(v12, v14, 80);
        if (v9)
        {
          v8 = v9;
          v6 = v7;
        }

        else
        {
          v8 = ktxTexture2_constructFromStreamAndHeader(v7, v12, v14, a2);
          v6 = v7;
          if (!v8)
          {
            goto LABEL_11;
          }
        }
      }
    }

    else
    {
      v8 = 11;
    }

    v10 = v8;
    free(v6);
    v8 = v10;
    v6 = 0;
LABEL_11:
    *a3 = v6;
    return v8;
  }

  return 13;
}

uint64_t ktxTexture2_CreateFromNamedFile(const char *a1, char a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 11;
  }

  v6 = malloc_type_malloc(0xA8uLL, 0x1030040B443E594uLL);
  if (v6)
  {
    if (a1)
    {
      v7 = v6;
      v8 = fopen(a1, "rb");
      if (!v8)
      {
        v9 = 3;
LABEL_12:
        v6 = v7;
        goto LABEL_13;
      }

      v14 = 0;
      memset(v13, 0, sizeof(v13));
      v9 = ktxFileStream_construct(v13, v8, 1);
      v6 = v7;
      if (!v9)
      {
        memset(v15, 0, sizeof(v15));
        v10 = (*&v13[0])(v13, v15, 80);
        if (!v10)
        {
          v9 = ktxTexture2_constructFromStreamAndHeader(v7, v13, v15, a2);
          v6 = v7;
          if (!v9)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

        v9 = v10;
        goto LABEL_12;
      }
    }

    else
    {
      v9 = 11;
    }

LABEL_13:
    v11 = v9;
    free(v6);
    v9 = v11;
    v6 = 0;
LABEL_14:
    *a3 = v6;
    return v9;
  }

  return 13;
}

uint64_t ktxTexture2_CreateFromMemory(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return 11;
  }

  v8 = malloc_type_malloc(0xA8uLL, 0x1030040B443E594uLL);
  if (v8)
  {
    v9 = 11;
    if (a1)
    {
      if (a2)
      {
        v15 = 0;
        memset(v14, 0, sizeof(v14));
        v10 = v8;
        v9 = ktxMemStream_construct_ro(v14, a1, a2);
        v8 = v10;
        if (!v9)
        {
          memset(v16, 0, sizeof(v16));
          v11 = (*&v14[0])(v14, v16, 80);
          if (v11)
          {
            v9 = v11;
            v8 = v10;
          }

          else
          {
            v9 = ktxTexture2_constructFromStreamAndHeader(v10, v14, v16, a3);
            v8 = v10;
            if (!v9)
            {
LABEL_12:
              *a4 = v8;
              return v9;
            }
          }
        }
      }
    }

    v12 = v9;
    free(v8);
    v9 = v12;
    v8 = 0;
    goto LABEL_12;
  }

  return 13;
}

uint64_t ktxTexture2_CreateFromStream(uint64_t (**a1)(void, _OWORD *, uint64_t), char a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 11;
  }

  v6 = malloc_type_malloc(0xA8uLL, 0x1030040B443E594uLL);
  if (!v6)
  {
    return 13;
  }

  v7 = v6;
  memset(v10, 0, sizeof(v10));
  result = (*a1)(a1, v10, 80);
  if (result || (result = ktxTexture2_constructFromStreamAndHeader(v7, a1, v10, a2), result))
  {
    v9 = result;
    free(v7);
    result = v9;
    v7 = 0;
  }

  *a3 = v7;
  return result;
}

void ktxTexture2_Destroy(void *a1)
{
  v2 = a1[16];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    if (*v3)
    {
      free(*v3);
      v3 = a1[20];
    }

    free(v3);
  }

  ktxTexture_destruct(a1);

  free(a1);
}

uint64_t ktxTexture2_calcDataSizeLevels(uint64_t a1, int a2)
{
  v3 = 0;
  v4 = a2 - 1;
  if (a2 != 1)
  {
    do
    {
      v5 = ktxTexture_calcLevelSize(a1, v4, 2);
      v6 = *(*(a1 + 160) + 8);
      v3 += (ceilf(v5 / v6) * v6);
      --v4;
    }

    while (v4);
  }

  return ktxTexture_calcLevelSize(a1, 0, 2) + v3;
}

uint64_t ktxTexture2_calcFaceLodSize(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 33) == 1 && (*(a1 + 32) & 1) == 0)
  {
    return ktxTexture_calcImageSize(a1, a2, 2);
  }

  else
  {
    return *(*(a1 + 160) + 24 * a2 + 48);
  }
}

uint64_t ktxTexture2_calcLevelOffset(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 52) - 1;
  if (v2 <= a2)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = ktxTexture_calcLevelSize(a1, v2, 2);
    v7 = *(*(a1 + 160) + 8);
    v5 += (ceilf(v6 / v7) * v7);
    --v2;
  }

  while (v2 > a2);
  return v5;
}

uint64_t lcm4(uint64_t result)
{
  if ((result & 3) != 0)
  {
    v1 = 4;
    v2 = result;
    do
    {
      v3 = v2;
      v2 = v1 % v2;
      v1 = v3;
    }

    while (v2);
    return 4 * result / v3;
  }

  return result;
}

uint64_t ktxTexture2_calcPostInflationLevelAlignment(uint64_t a1)
{
  if (!*(a1 + 120))
  {
    return 16;
  }

  v1 = *(*(a1 + 24) + 32);
  result = v1 >> 3;
  if ((v1 & 0x18) != 0)
  {
    v3 = 4;
    v4 = result;
    do
    {
      v5 = v4;
      v4 = v3 % v4;
      v3 = v5;
    }

    while (v4);
    return 4 * result / v5;
  }

  return result;
}

uint64_t ktxTexture2_GetNumComponents(uint64_t a1)
{
  v1 = *(a1 + 128);
  result = getDFDNumComponents(v1);
  if ((*(v1 + 12) & 0x80) != 0)
  {
    v3 = *(v1 + 12);
    if (v3 == 166)
    {
      v4 = *(v1 + 31) & 0xF;
      if (v4 > 5)
      {
        return 1;
      }

      else
      {
        return dword_186233EB0[v4];
      }
    }

    else if (v3 == 163)
    {
      if (result == 1)
      {
        if ((*(v1 + 31) & 0xF) != 0)
        {
          return 1;
        }

        else
        {
          return 3;
        }
      }

      else if (*(v1 + 31) & 0xF | ~*(v1 + 44) & 0xF000000)
      {
        return 2;
      }

      else
      {
        return 4;
      }
    }
  }

  return result;
}

uint64_t ktxTexture2_GetImageOffset(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, void *a5)
{
  if (!a1)
  {
    return 11;
  }

  if (*(a1 + 52) <= a2 || *(a1 + 56) <= a3 || *(a1 + 136))
  {
    return 10;
  }

  if (*(a1 + 33) == 1)
  {
    if (*(a1 + 60) <= a4)
    {
      return 10;
    }
  }

  else
  {
    v6 = *(a1 + 44) >> a2;
    if (v6 <= 1)
    {
      v6 = 1;
    }

    if (v6 <= a4)
    {
      return 10;
    }
  }

  *a5 = *(*(a1 + 160) + 24 * a2 + 32);
  if (a3)
  {
    v7 = a1;
    v8 = a2;
    v10 = a5;
    v11 = a4;
    v12 = ktxTexture_layerSize(a1, a2, 2);
    LOBYTE(a2) = v8;
    a4 = v11;
    a5 = v10;
    v13 = v12;
    a1 = v7;
    *v10 += v13 * a3;
  }

  if (!a4)
  {
    return 0;
  }

  v14 = a5;
  v15 = a4;
  v16 = ktxTexture_calcImageSize(a1, a2, 2);
  result = 0;
  *v14 += v16 * v15;
  return result;
}

uint64_t ktxTexture2_GetDataSizeUncompressed(uint64_t a1, double a2)
{
  v2 = *(a1 + 136);
  if (v2 < 2)
  {
    return *(a1 + 104);
  }

  if (v2 != 2)
  {
    return 0;
  }

  v4 = *(a1 + 160);
  if (!*(a1 + 120))
  {
    v6 = 16;
    v10 = (*(a1 + 52) - 1);
    if (v10 >= 1)
    {
      goto LABEL_11;
    }

    return *(v4 + 48);
  }

  v5 = *(*(a1 + 24) + 32);
  v6 = v5 >> 3;
  if ((v5 & 0x18) != 0)
  {
    v7 = 4;
    v8 = v6;
    do
    {
      v9 = v8;
      v8 = v7 % v8;
      v7 = v9;
    }

    while (v8);
    v6 = 4 * v6 / v9;
  }

  v10 = (*(a1 + 52) - 1);
  if (v10 < 1)
  {
    return *(v4 + 48);
  }

LABEL_11:
  *&a2 = v6;
  if (v10 > 3)
  {
    v13 = vdup_lane_s32(*&a2, 0);
    v12 = v10 & 3;
    v14 = (v4 + 24 * v10);
    v15 = 0uLL;
    v16 = v10 & 0x7FFFFFFC;
    v17 = 0uLL;
    do
    {
      v18 = v14 - 3;
      v19.i64[0] = v14[6];
      v19.i64[1] = v14[3];
      v20 = *v14;
      v14 -= 12;
      v21.i64[0] = v20;
      v21.i64[1] = *v18;
      v15 = vaddw_u32(v15, vcvt_u32_f32(vmul_n_f32(vrndp_f32(vdiv_f32(vcvt_f32_f64(vcvtq_f64_u64(v19)), v13)), *&a2)));
      v17 = vaddw_u32(v17, vcvt_u32_f32(vmul_n_f32(vrndp_f32(vdiv_f32(vcvt_f32_f64(vcvtq_f64_u64(v21)), v13)), *&a2)));
      v16 -= 4;
    }

    while (v16);
    v11 = vaddvq_s64(vaddq_s64(v17, v15));
    if ((v10 & 0x7FFFFFFC) == v10)
    {
      return *(v4 + 48) + v11;
    }
  }

  else
  {
    v11 = 0;
    v12 = v10;
  }

  v22 = v12 + 1;
  v23 = (v4 + 24 * v12 + 48);
  do
  {
    v24 = *v23;
    v23 -= 3;
    v11 += (ceilf(v24 / *&a2) * *&a2);
    --v22;
  }

  while (v22 > 1);
  return *(v4 + 48) + v11;
}

uint64_t ktxTexture2_IterateLevels(uint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t, uint64_t, uint64_t, void, void, uint64_t), uint64_t a3)
{
  result = 11;
  if (a1 && a2)
  {
    if (*(a1 + 136))
    {
      return 10;
    }

    else
    {
      v7 = *(a1 + 160) + 32;
      v8 = *(a1 + 52);
      while ((--v8 & 0x80000000) == 0)
      {
        v9 = *(a1 + 40);
        v10 = *(a1 + 36) >> v8;
        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        if (v9 >> v8 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v9 >> v8;
        }

        v13 = *(a1 + 44) >> v8;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        result = a2(v8, 0, v11, v12, v14, *(v7 + 24 * (v8 & 0x7FFFFFFF) + 16), *(a1 + 112) + *(*(a1 + 160) + 24 * (v8 & 0x7FFFFFFF) + 32), a3);
        if (result)
        {
          return result;
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t ktxTexture2_IterateLoadLevelFaces(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char *, uint64_t), uint64_t a3)
{
  if (*a1 != 2)
  {
    return 10;
  }

  if ((*(a1 + 136) | 2) != 2)
  {
    return 10;
  }

  if (!a2)
  {
    return 11;
  }

  if (!*(*(a1 + 24) + 128))
  {
    return 10;
  }

  v34 = *(a1 + 24);
  v5 = *(a1 + 160);
  v6 = *(v5 + 40);
  if (!v6)
  {
    v9 = 0;
    v30 = 1;
    goto LABEL_46;
  }

  v8 = malloc_type_malloc(*(v5 + 40), 0xD4F6491AuLL);
  if (!v8)
  {
    return 13;
  }

  v9 = v8;
  v10 = *(a1 + 52) - 1;
  if ((v10 & 0x80000000) != 0)
  {
LABEL_42:
    (*(v34 + 112))(v34 + 64);
    v30 = 0;
    *(*(a1 + 160) + 24) = 0;
    goto LABEL_46;
  }

  v31 = v5 + 32;
  v32 = v6;
  v33 = v8;
  while (1)
  {
    v11 = *(a1 + 40);
    v12 = *(a1 + 36) >> v10;
    if (v12 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    if (v11 >> v10 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v11 >> v10;
    }

    v15 = *(a1 + 44) >> v10;
    if (v15 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v15;
    }

    v17 = *(v31 + 24 * v10 + 8);
    if (v17 - 1 >= v6)
    {
      v30 = 1;
      goto LABEL_46;
    }

    v18 = v10;
    v19 = (*(v34 + 96))(v34 + 64, *(*(a1 + 160) + 24) + *(*(a1 + 160) + 24 * v10 + 32));
    if (v19 || (v19 = (*(v34 + 64))(v34 + 64, v9, v17), v19))
    {
      v30 = v19;
      goto LABEL_46;
    }

    if (*(a1 + 33) != 1 || (*(a1 + 32) & 1) != 0)
    {
      v20 = a2(v18, 0, v13, v14, v16, v17, v9, a3);
      if (v20)
      {
        goto LABEL_43;
      }

      goto LABEL_24;
    }

    v22 = vcvtps_u32_f32(v13 / *(v34 + 36));
    v23 = vcvtps_u32_f32(v14 / *(v34 + 40));
    v24 = *(v34 + 48);
    if (v24 > v22)
    {
      v22 = *(v34 + 48);
    }

    if (v24 > v23)
    {
      v23 = *(v34 + 48);
    }

    v25 = (v22 * *(v34 + 32) * v23) >> 3;
    v26 = *(a1 + 60);
    if (v26 * v25 > v32)
    {
      break;
    }

    if (v26)
    {
      v27 = 0;
      v28 = v33;
      while (1)
      {
        v20 = a2(v18, v27, v13, v14, v16, v25, v28, a3);
        if (v20)
        {
          break;
        }

        v28 += v25;
        v27 = (v27 + 1);
        if (v27 >= *(a1 + 60))
        {
          goto LABEL_24;
        }
      }

LABEL_43:
      v30 = v20;
      v9 = v33;
      goto LABEL_46;
    }

LABEL_24:
    v10 = v18 - 1;
    v21 = v18 <= 0;
    v6 = v32;
    v9 = v33;
    if (v21)
    {
      goto LABEL_42;
    }
  }

  v30 = 7;
LABEL_46:
  free(v9);
  return v30;
}

uint64_t ktxTexture1_setImageFromStream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, uint64_t, uint64_t, __n128), uint64_t a6)
{
  v21 = 0;
  result = 11;
  if (a1 && a5)
  {
    if (*(a1 + 112))
    {
      __n = 0;
      v20 = 0;
      (*(*(a1 + 8) + 8))(a1, a2, a3, a4, &v20);
      if (*(a1 + 34) == 1)
      {
        v11 = (*(*(a1 + 8) + 24))(a1, a2);
        __n = 0;
        v12 = a6;
        if (v11 == a6)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v13.n128_f32[0] = ktxTexture_rowInfo(a1, a2, &v21, &__n + 1, &__n);
        if (__n)
        {
          v14 = (HIDWORD(__n) - __n);
          if (v14 * v21 == a6)
          {
            v15 = *(a1 + 112);
            __src = 0;
            if (v21)
            {
              v16 = 0;
              v17 = v15 + v20;
              do
              {
                v18 = v17 + HIDWORD(__n) * v16;
                (*a5)(a5, v18, v14, v13);
                memcpy((v18 + v14), &__src, __n);
                ++v16;
              }

              while (v16 < v21);
            }

            return 0;
          }
        }

        else
        {
          v12 = a6;
          if (v21 * HIDWORD(__n) == a6)
          {
LABEL_16:
            (*a5)(a5, *(a1 + 112) + v20, v12);
            return 0;
          }
        }
      }

      return 10;
    }

    else
    {
      return 10;
    }
  }

  return result;
}

uint64_t ktxTexture1_SetImageFromStdioStream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  result = ktxFileStream_construct(v13, a5, 0);
  if (!result)
  {
    v12 = ktxTexture1_setImageFromStream(a1, a2, a3, a4, v13, a6);
    ktxFileStream_destruct(v13);
    return v12;
  }

  return result;
}

uint64_t ktxTexture1_SetImageFromMemory(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  result = ktxMemStream_construct_ro(v13, a5, a6);
  if (!result)
  {
    v12 = ktxTexture1_setImageFromStream(a1, a2, a3, a4, v13, a6);
    ktxMemStream_destruct(v13);
    return v12;
  }

  return result;
}

uint64_t ktxTexture1_WriteToStream(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v21 = xmmword_186233EC8;
  v22 = unk_186233ED8;
  v23 = xmmword_186233EE8;
  v24 = unk_186233EF8;
  v20 = 0;
  if (!a2)
  {
    return 11;
  }

  if (!*(a1 + 112))
  {
    return 10;
  }

  v4 = (a1 + 80);
  if (*(a1 + 80))
  {
    if (*(a1 + 96))
    {
      return 10;
    }
  }

  *(&v22 + 1) = *(a1 + 120);
  v6 = *(a1 + 132);
  LODWORD(v23) = *(a1 + 128);
  HIDWORD(v21) = 67305985;
  LODWORD(v22) = v6;
  v7 = ktxTexture1_glTypeSize(a1);
  v8 = *(a1 + 36);
  DWORD1(v22) = v7;
  DWORD1(v23) = v8;
  v9 = *(a1 + 48);
  if (v9 <= 1)
  {
    *(&v23 + 1) = 0;
    if (*(a1 + 32) != 1)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  DWORD2(v23) = *(a1 + 40);
  if (v9 != 2)
  {
    HIDWORD(v23) = *(a1 + 44);
    if (*(a1 + 32) != 1)
    {
      goto LABEL_16;
    }

LABEL_12:
    v10 = *(a1 + 60);
    LODWORD(v24) = *(a1 + 56);
    DWORD1(v24) = v10;
    if (*(a1 + 35))
    {
      goto LABEL_17;
    }

LABEL_13:
    DWORD2(v24) = *(a1 + 52);
    if (!*v4)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  HIDWORD(v23) = 0;
  if (*(a1 + 32) == 1)
  {
    goto LABEL_12;
  }

LABEL_16:
  v11 = *(a1 + 60);
  LODWORD(v24) = 0;
  DWORD1(v24) = v11;
  if ((*(a1 + 35) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_17:
  DWORD2(v24) = 0;
  if (!*v4)
  {
LABEL_18:
    if (*(a1 + 96))
    {
      v20 = *(a1 + 96);
      HIDWORD(v24) = *(a1 + 88);
    }

    else
    {
      HIDWORD(v24) = 0;
    }

    goto LABEL_21;
  }

LABEL_14:
  ktxHashList_Serialize((a1 + 80), &v24 + 3, &v20);
LABEL_21:
  result = (*(a2 + 16))(a2, &v21, 64, 1);
  if (!result)
  {
    if (!HIDWORD(v24))
    {
      goto LABEL_47;
    }

    result = (*(a2 + 16))(a2, v20, 1);
    if (*v4)
    {
      v12 = result;
      free(v20);
      result = v12;
    }

    if (!result)
    {
LABEL_47:
      if (*(a1 + 52))
      {
        v13 = 0;
        v14 = 0;
        do
        {
          v19 = 0;
          v19 = ktxTexture_doCalcFaceLodSize(a1, v14, 1);
          v15 = (*(*(a1 + 8) + 24))(a1, v14);
          if (*(a1 + 44) >> v14 <= 1u)
          {
            v16 = 1;
          }

          else
          {
            v16 = *(a1 + 44) >> v14;
          }

          if (*(a1 + 33) == 1)
          {
            v16 = *(a1 + 60);
          }

          result = (*(a2 + 16))(a2, &v19, 4, 1);
          if (result)
          {
            break;
          }

          if (*(a1 + 56) && v16)
          {
            v17 = 0;
            do
            {
              v18 = v16;
              do
              {
                result = (*(a2 + 16))(a2, *(a1 + 112) + v13, v15, 1);
                v13 += v15;
                --v18;
              }

              while (v18);
              ++v17;
            }

            while (v17 < *(a1 + 56));
          }

          else
          {
            result = 0;
          }

          v14 = (v14 + 1);
        }

        while (v14 < *(a1 + 52));
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t ktxTexture1_WriteToStdioStream(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 11;
  }

  v5 = 0;
  memset(v4, 0, sizeof(v4));
  result = ktxFileStream_construct(v4, a2, 0);
  if (!result)
  {
    return ktxTexture1_WriteToStream(a1, v4);
  }

  return result;
}

uint64_t ktxTexture1_WriteToNamedFile(uint64_t a1, char *__filename)
{
  if (!a1)
  {
    return 11;
  }

  v3 = fopen(__filename, "wb");
  if (!v3)
  {
    return 3;
  }

  v4 = v3;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v5 = ktxFileStream_construct(v8, v3, 0);
  if (!v5)
  {
    v5 = ktxTexture1_WriteToStream(a1, v8);
  }

  v6 = v5;
  fclose(v4);
  return v6;
}

uint64_t ktxTexture1_WriteToMemory(uint64_t a1, void *a2, void *a3)
{
  result = 11;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v15 = 0;
        v13 = 0u;
        v14 = 0u;
        v11 = 0u;
        v12 = 0u;
        memset(v10, 0, sizeof(v10));
        v9 = 0;
        *a2 = 0;
        result = ktxMemStream_construct(v10, 0);
        if (!result)
        {
          v7 = ktxTexture1_WriteToStream(a1, v10);
          if (!v7)
          {
            ktxMemStream_getdata(v10, a2);
            (*(&v11 + 1))(v10, &v9);
            v7 = 0;
            *a3 = v9;
          }

          v8 = v7;
          ktxMemStream_destruct(v10);
          return v8;
        }
      }
    }
  }

  return result;
}

uint64_t ktxTexture1_WriteKTX2ToStream(uint64_t a1, uint64_t a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v63 = xmmword_186233F28;
  v64 = unk_186233F38;
  v65 = xmmword_186233F48;
  v61 = xmmword_186233F08;
  v62 = unk_186233F18;
  if (!a2)
  {
    return 11;
  }

  if (!*(a1 + 112))
  {
    return 10;
  }

  v4 = *(a1 + 124);
  result = 16;
  if (v4 <= 36167)
  {
    if (v4 > 33775)
    {
      if (v4 > 35413)
      {
        switch(v4)
        {
          case 35840:
          case 35842:
            v6 = 1000054001;
            goto LABEL_188;
          case 35841:
          case 35843:
            v6 = 1000054000;
            goto LABEL_188;
          case 35844:
          case 35845:
          case 35846:
          case 35847:
          case 35848:
          case 35849:
          case 35850:
          case 35851:
          case 35852:
          case 35853:
          case 35854:
          case 35855:
          case 35856:
          case 35857:
          case 35858:
          case 35859:
          case 35860:
          case 35861:
          case 35862:
          case 35863:
          case 35864:
          case 35865:
          case 35866:
          case 35867:
          case 35868:
          case 35869:
          case 35870:
          case 35871:
          case 35872:
          case 35873:
          case 35874:
          case 35875:
          case 35876:
          case 35877:
          case 35878:
          case 35879:
          case 35880:
          case 35881:
          case 35882:
          case 35883:
          case 35884:
          case 35885:
          case 35886:
          case 35887:
          case 35888:
          case 35889:
          case 35890:
          case 35891:
          case 35892:
          case 35893:
          case 35894:
          case 35895:
          case 35896:
          case 35897:
          case 35899:
          case 35900:
          case 35902:
          case 35903:
          case 35904:
          case 35906:
          case 35908:
          case 35909:
          case 35910:
          case 35911:
          case 35912:
          case 35913:
          case 35914:
          case 35915:
          case 35920:
          case 35921:
          case 35922:
          case 35923:
          case 35924:
          case 35925:
          case 35926:
          case 35927:
          case 35928:
          case 35929:
          case 35930:
          case 35931:
          case 35932:
          case 35933:
          case 35934:
          case 35935:
          case 35936:
          case 35937:
          case 35938:
          case 35939:
          case 35940:
          case 35941:
          case 35942:
          case 35943:
          case 35944:
          case 35945:
          case 35946:
          case 35947:
          case 35948:
          case 35949:
          case 35950:
          case 35951:
          case 35956:
          case 35957:
          case 35958:
          case 35959:
          case 35960:
          case 35961:
          case 35962:
          case 35963:
          case 35964:
          case 35965:
          case 35966:
          case 35967:
          case 35968:
          case 35969:
          case 35970:
          case 35971:
          case 35972:
          case 35973:
          case 35974:
          case 35975:
          case 35976:
          case 35977:
          case 35978:
          case 35979:
          case 35980:
          case 35981:
          case 35982:
          case 35983:
          case 35984:
          case 35985:
          case 35986:
          case 35987:
          case 35988:
          case 35989:
          case 35990:
          case 35991:
          case 35992:
          case 35993:
          case 35994:
          case 35995:
          case 35996:
          case 35997:
          case 35998:
          case 35999:
          case 36000:
          case 36001:
          case 36002:
          case 36003:
          case 36004:
          case 36005:
          case 36006:
          case 36007:
          case 36008:
          case 36009:
          case 36010:
          case 36011:
            return result;
          case 35898:
            v6 = 122;
            goto LABEL_188;
          case 35901:
            v6 = 123;
            goto LABEL_188;
          case 35905:
            v6 = 29;
            goto LABEL_188;
          case 35907:
            v6 = 43;
            goto LABEL_188;
          case 35916:
            v6 = 132;
            goto LABEL_188;
          case 35917:
            v6 = 134;
            goto LABEL_188;
          case 35918:
            v6 = 136;
            goto LABEL_188;
          case 35919:
            v6 = 138;
            goto LABEL_188;
          case 35952:
LABEL_77:
            v6 = 139;
            goto LABEL_188;
          case 35953:
LABEL_79:
            v6 = 140;
            goto LABEL_188;
          case 35954:
LABEL_74:
            v6 = 141;
            goto LABEL_188;
          case 35955:
LABEL_75:
            v6 = 142;
            goto LABEL_188;
          case 36012:
LABEL_76:
            v6 = 126;
            goto LABEL_188;
          case 36013:
LABEL_78:
            v6 = 130;
            goto LABEL_188;
          default:
            if (v4 == 35414)
            {
              goto LABEL_88;
            }

            v7 = 35415;
            goto LABEL_86;
        }
      }

      if (v4 <= 34836)
      {
        if (v4 <= 33777)
        {
          if (v4 == 33776)
          {
            v6 = 131;
          }

          else
          {
            v6 = 133;
          }
        }

        else
        {
          switch(v4)
          {
            case 33778:
              v6 = 135;
              break;
            case 33779:
              v6 = 137;
              break;
            case 34836:
              v6 = 109;
              break;
            default:
              return result;
          }
        }
      }

      else if (v4 > 35055)
      {
        if (v4 == 35056)
        {
          v6 = 129;
        }

        else if (v4 == 35412)
        {
LABEL_88:
          v6 = 1000054004;
        }

        else
        {
          v7 = 35413;
LABEL_86:
          if (v4 != v7)
          {
            return result;
          }

          v6 = 1000054005;
        }
      }

      else
      {
        switch(v4)
        {
          case 34837:
            v6 = 106;
            break;
          case 34842:
            v6 = 97;
            break;
          case 34843:
            v6 = 90;
            break;
          default:
            return result;
        }
      }
    }

    else if (v4 <= 32856)
    {
      if (v4 <= 32851)
      {
        switch(v4)
        {
          case 32848:
            v6 = 6;
            break;
          case 32849:
            v6 = 23;
            break;
          case 32850:
LABEL_83:
            v6 = 58;
            break;
          default:
            return result;
        }
      }

      else if (v4 > 32854)
      {
        if (v4 == 32855)
        {
          v6 = 8;
        }

        else
        {
          v6 = 37;
        }
      }

      else if (v4 == 32852)
      {
        v6 = 84;
      }

      else
      {
        if (v4 != 32854)
        {
          return result;
        }

        v6 = 2;
      }
    }

    else
    {
      v6 = 9;
      switch(v4)
      {
        case 33189:
          v6 = 124;
          break;
        case 33190:
          v6 = 125;
          break;
        case 33191:
        case 33192:
        case 33193:
        case 33194:
        case 33195:
        case 33196:
        case 33197:
        case 33198:
        case 33199:
        case 33200:
        case 33201:
        case 33202:
        case 33203:
        case 33204:
        case 33205:
        case 33206:
        case 33207:
        case 33208:
        case 33209:
        case 33210:
        case 33211:
        case 33212:
        case 33213:
        case 33214:
        case 33215:
        case 33216:
        case 33217:
        case 33218:
        case 33219:
        case 33220:
        case 33221:
        case 33222:
        case 33223:
        case 33224:
        case 33225:
        case 33226:
        case 33227:
        case 33228:
        case 33229:
        case 33230:
        case 33231:
        case 33232:
        case 33233:
        case 33234:
        case 33235:
        case 33236:
        case 33237:
        case 33238:
        case 33239:
        case 33240:
        case 33241:
        case 33242:
        case 33243:
        case 33244:
        case 33245:
        case 33246:
        case 33247:
        case 33248:
        case 33249:
        case 33250:
        case 33251:
        case 33252:
        case 33253:
        case 33254:
        case 33255:
        case 33256:
        case 33257:
        case 33258:
        case 33259:
        case 33260:
        case 33261:
        case 33262:
        case 33263:
        case 33264:
        case 33265:
        case 33266:
        case 33267:
        case 33268:
        case 33269:
        case 33270:
        case 33271:
        case 33272:
        case 33273:
        case 33274:
        case 33275:
        case 33276:
        case 33277:
        case 33278:
        case 33279:
        case 33280:
        case 33281:
        case 33282:
        case 33283:
        case 33284:
        case 33285:
        case 33286:
        case 33287:
        case 33288:
        case 33289:
        case 33290:
        case 33291:
        case 33292:
        case 33293:
        case 33294:
        case 33295:
        case 33296:
        case 33297:
        case 33298:
        case 33299:
        case 33300:
        case 33301:
        case 33302:
        case 33303:
        case 33304:
        case 33305:
        case 33306:
        case 33307:
        case 33308:
        case 33309:
        case 33310:
        case 33311:
        case 33312:
        case 33313:
        case 33314:
        case 33315:
        case 33316:
        case 33317:
        case 33318:
        case 33319:
        case 33320:
          return result;
        case 33321:
          break;
        case 33322:
          v6 = 70;
          break;
        case 33323:
          v6 = 16;
          break;
        case 33324:
          v6 = 77;
          break;
        case 33325:
          v6 = 76;
          break;
        case 33326:
          v6 = 100;
          break;
        case 33327:
          v6 = 83;
          break;
        case 33328:
          v6 = 103;
          break;
        case 33329:
          v6 = 14;
          break;
        case 33330:
          v6 = 13;
          break;
        case 33331:
          v6 = 75;
          break;
        case 33332:
          v6 = 74;
          break;
        case 33333:
          v6 = 99;
          break;
        case 33334:
          v6 = 98;
          break;
        case 33335:
          v6 = 21;
          break;
        case 33336:
          v6 = 20;
          break;
        case 33337:
          v6 = 82;
          break;
        case 33338:
          v6 = 81;
          break;
        case 33339:
          v6 = 102;
          break;
        case 33340:
          v6 = 101;
          break;
        default:
          if (v4 == 32857)
          {
            goto LABEL_83;
          }

          if (v4 != 32859)
          {
            return result;
          }

          v6 = 91;
          break;
      }
    }
  }

  else if (v4 <= 37174)
  {
    if (v4 <= 36491)
    {
      switch(v4)
      {
        case 36168:
          v6 = 127;
          goto LABEL_188;
        case 36194:
          v6 = 4;
          goto LABEL_188;
        case 36196:
LABEL_73:
          v6 = 147;
          goto LABEL_188;
        case 36208:
          v6 = 107;
          goto LABEL_188;
        case 36209:
          v6 = 104;
          goto LABEL_188;
        case 36214:
          v6 = 95;
          goto LABEL_188;
        case 36215:
          v6 = 88;
          goto LABEL_188;
        case 36220:
          v6 = 41;
          goto LABEL_188;
        case 36221:
          v6 = 27;
          goto LABEL_188;
        case 36226:
          v6 = 108;
          goto LABEL_188;
        case 36227:
          v6 = 105;
          goto LABEL_188;
        case 36232:
          v6 = 96;
          goto LABEL_188;
        case 36233:
          v6 = 89;
          goto LABEL_188;
        case 36238:
          v6 = 42;
          goto LABEL_188;
        case 36239:
          v6 = 28;
          goto LABEL_188;
        case 36267:
          goto LABEL_76;
        case 36268:
          goto LABEL_78;
        case 36283:
          goto LABEL_77;
        case 36284:
          goto LABEL_79;
        case 36285:
          goto LABEL_74;
        case 36286:
          goto LABEL_75;
        default:
          return result;
      }

      return result;
    }

    if (v4 <= 36758)
    {
      if (v4 <= 36494)
      {
        if (v4 == 36492)
        {
          v6 = 145;
        }

        else if (v4 == 36493)
        {
          v6 = 146;
        }

        else
        {
          v6 = 144;
        }
      }

      else if (v4 > 36756)
      {
        if (v4 == 36757)
        {
          v6 = 17;
        }

        else
        {
          v6 = 24;
        }
      }

      else if (v4 == 36495)
      {
        v6 = 143;
      }

      else
      {
        if (v4 != 36756)
        {
          return result;
        }

        v6 = 10;
      }
    }

    else if (v4 > 36762)
    {
      if (v4 > 36797)
      {
        if (v4 == 36798)
        {
          v6 = 22;
        }

        else
        {
          if (v4 != 36975)
          {
            return result;
          }

          v6 = 62;
        }
      }

      else if (v4 == 36763)
      {
        v6 = 92;
      }

      else
      {
        if (v4 != 36797)
        {
          return result;
        }

        v6 = 15;
      }
    }

    else if (v4 > 36760)
    {
      if (v4 == 36761)
      {
        v6 = 78;
      }

      else
      {
        v6 = 85;
      }
    }

    else if (v4 == 36759)
    {
      v6 = 38;
    }

    else
    {
      v6 = 71;
    }
  }

  else
  {
    switch(v4)
    {
      case 37488:
        v6 = 153;
        break;
      case 37489:
        v6 = 154;
        break;
      case 37490:
        v6 = 155;
        break;
      case 37491:
        v6 = 156;
        break;
      case 37492:
        goto LABEL_73;
      case 37493:
        v6 = 148;
        break;
      case 37494:
        v6 = 149;
        break;
      case 37495:
        v6 = 150;
        break;
      case 37496:
        v6 = 151;
        break;
      case 37497:
        v6 = 152;
        break;
      case 37498:
      case 37499:
      case 37500:
      case 37501:
      case 37502:
      case 37503:
      case 37504:
      case 37505:
      case 37506:
      case 37507:
      case 37508:
      case 37509:
      case 37510:
      case 37511:
      case 37512:
      case 37513:
      case 37514:
      case 37515:
      case 37516:
      case 37517:
      case 37518:
      case 37519:
      case 37520:
      case 37521:
      case 37522:
      case 37523:
      case 37524:
      case 37525:
      case 37526:
      case 37527:
      case 37528:
      case 37529:
      case 37530:
      case 37531:
      case 37532:
      case 37533:
      case 37534:
      case 37535:
      case 37536:
      case 37537:
      case 37538:
      case 37539:
      case 37540:
      case 37541:
      case 37542:
      case 37543:
      case 37544:
      case 37545:
      case 37546:
      case 37547:
      case 37548:
      case 37549:
      case 37550:
      case 37551:
      case 37552:
      case 37553:
      case 37554:
      case 37555:
      case 37556:
      case 37557:
      case 37558:
      case 37559:
      case 37560:
      case 37561:
      case 37562:
      case 37563:
      case 37564:
      case 37565:
      case 37566:
      case 37567:
      case 37568:
      case 37569:
      case 37570:
      case 37571:
      case 37572:
      case 37573:
      case 37574:
      case 37575:
      case 37576:
      case 37577:
      case 37578:
      case 37579:
      case 37580:
      case 37581:
      case 37582:
      case 37583:
      case 37584:
      case 37585:
      case 37586:
      case 37587:
      case 37588:
      case 37589:
      case 37590:
      case 37591:
      case 37592:
      case 37593:
      case 37594:
      case 37595:
      case 37596:
      case 37597:
      case 37598:
      case 37599:
      case 37600:
      case 37601:
      case 37602:
      case 37603:
      case 37604:
      case 37605:
      case 37606:
      case 37607:
      case 37608:
      case 37609:
      case 37610:
      case 37611:
      case 37612:
      case 37613:
      case 37614:
      case 37615:
      case 37616:
      case 37617:
      case 37618:
      case 37619:
      case 37620:
      case 37621:
      case 37622:
      case 37623:
      case 37624:
      case 37625:
      case 37626:
      case 37627:
      case 37628:
      case 37629:
      case 37630:
      case 37631:
      case 37632:
      case 37633:
      case 37634:
      case 37635:
      case 37636:
      case 37637:
      case 37638:
      case 37639:
      case 37640:
      case 37641:
      case 37642:
      case 37643:
      case 37644:
      case 37645:
      case 37646:
      case 37647:
      case 37648:
      case 37649:
      case 37650:
      case 37651:
      case 37652:
      case 37653:
      case 37654:
      case 37655:
      case 37656:
      case 37657:
      case 37658:
      case 37659:
      case 37660:
      case 37661:
      case 37662:
      case 37663:
      case 37664:
      case 37665:
      case 37666:
      case 37667:
      case 37668:
      case 37669:
      case 37670:
      case 37671:
      case 37672:
      case 37673:
      case 37674:
      case 37675:
      case 37676:
      case 37677:
      case 37678:
      case 37679:
      case 37680:
      case 37681:
      case 37682:
      case 37683:
      case 37684:
      case 37685:
      case 37686:
      case 37687:
      case 37688:
      case 37689:
      case 37690:
      case 37691:
      case 37692:
      case 37693:
      case 37694:
      case 37695:
      case 37696:
      case 37697:
      case 37698:
      case 37699:
      case 37700:
      case 37701:
      case 37702:
      case 37703:
      case 37704:
      case 37705:
      case 37706:
      case 37707:
      case 37708:
      case 37709:
      case 37710:
      case 37711:
      case 37712:
      case 37713:
      case 37714:
      case 37715:
      case 37716:
      case 37717:
      case 37718:
      case 37719:
      case 37720:
      case 37721:
      case 37722:
      case 37723:
      case 37724:
      case 37725:
      case 37726:
      case 37727:
      case 37728:
      case 37729:
      case 37730:
      case 37731:
      case 37732:
      case 37733:
      case 37734:
      case 37735:
      case 37736:
      case 37737:
      case 37738:
      case 37739:
      case 37740:
      case 37741:
      case 37742:
      case 37743:
      case 37744:
      case 37745:
      case 37746:
      case 37747:
      case 37748:
      case 37749:
      case 37750:
      case 37751:
      case 37752:
      case 37753:
      case 37754:
      case 37755:
      case 37756:
      case 37757:
      case 37758:
      case 37759:
      case 37760:
      case 37761:
      case 37762:
      case 37763:
      case 37764:
      case 37765:
      case 37766:
      case 37767:
      case 37768:
      case 37769:
      case 37770:
      case 37771:
      case 37772:
      case 37773:
      case 37774:
      case 37775:
      case 37776:
      case 37777:
      case 37778:
      case 37779:
      case 37780:
      case 37781:
      case 37782:
      case 37783:
      case 37784:
      case 37785:
      case 37786:
      case 37787:
      case 37788:
      case 37789:
      case 37790:
      case 37791:
      case 37792:
      case 37793:
      case 37794:
      case 37795:
      case 37796:
      case 37797:
      case 37798:
      case 37799:
      case 37800:
      case 37801:
      case 37802:
      case 37803:
      case 37804:
      case 37805:
      case 37806:
      case 37807:
      case 37822:
      case 37823:
      case 37824:
      case 37825:
      case 37826:
      case 37827:
      case 37828:
      case 37829:
      case 37830:
      case 37831:
      case 37832:
      case 37833:
      case 37834:
      case 37835:
      case 37836:
      case 37837:
      case 37838:
      case 37839:
      case 37854:
      case 37855:
      case 37856:
      case 37857:
      case 37858:
      case 37859:
      case 37860:
      case 37861:
      case 37862:
      case 37863:
      case 37864:
      case 37865:
      case 37866:
      case 37867:
      case 37868:
      case 37869:
      case 37870:
      case 37871:
        return result;
      case 37808:
        v6 = 157;
        break;
      case 37809:
        v6 = 159;
        break;
      case 37810:
        v6 = 161;
        break;
      case 37811:
        v6 = 163;
        break;
      case 37812:
        v6 = 165;
        break;
      case 37813:
        v6 = 167;
        break;
      case 37814:
        v6 = 169;
        break;
      case 37815:
        v6 = 171;
        break;
      case 37816:
        v6 = 173;
        break;
      case 37817:
        v6 = 175;
        break;
      case 37818:
        v6 = 177;
        break;
      case 37819:
        v6 = 179;
        break;
      case 37820:
        v6 = 181;
        break;
      case 37821:
        v6 = 183;
        break;
      case 37840:
        v6 = 158;
        break;
      case 37841:
        v6 = 160;
        break;
      case 37842:
        v6 = 162;
        break;
      case 37843:
        v6 = 164;
        break;
      case 37844:
        v6 = 166;
        break;
      case 37845:
        v6 = 168;
        break;
      case 37846:
        v6 = 170;
        break;
      case 37847:
        v6 = 172;
        break;
      case 37848:
        v6 = 174;
        break;
      case 37849:
        v6 = 176;
        break;
      case 37850:
        v6 = 178;
        break;
      case 37851:
        v6 = 180;
        break;
      case 37852:
        v6 = 182;
        break;
      case 37853:
        v6 = 184;
        break;
      case 37872:
        v6 = 1000054006;
        break;
      case 37873:
        v6 = 1000054007;
        break;
      default:
        if (v4 == 37175)
        {
          v6 = 1000054002;
        }

        else
        {
          if (v4 != 37176)
          {
            return result;
          }

          v6 = 1000054003;
        }

        break;
    }
  }

LABEL_188:
  HIDWORD(v61) = v6;
  *&v62 = __PAIR64__(*(a1 + 36), ktxTexture1_glTypeSize(a1));
  v8 = *(a1 + 48);
  if (v8 <= 1)
  {
    *(&v62 + 1) = 0;
    if (*(a1 + 32) == 1)
    {
      goto LABEL_193;
    }

LABEL_195:
    v9 = 0;
    goto LABEL_196;
  }

  DWORD2(v62) = *(a1 + 40);
  if (v8 != 2)
  {
    HIDWORD(v62) = *(a1 + 44);
    if (*(a1 + 32) == 1)
    {
      goto LABEL_193;
    }

    goto LABEL_195;
  }

  HIDWORD(v62) = 0;
  if (*(a1 + 32) != 1)
  {
    goto LABEL_195;
  }

LABEL_193:
  v9 = *(a1 + 56);
LABEL_196:
  *&v63 = __PAIR64__(*(a1 + 60), v9);
  v10 = *(a1 + 52);
  if (*(a1 + 35))
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 52);
  }

  DWORD2(v63) = v11;
  v12 = (24 * v10);
  v13 = malloc_type_malloc(v12, 0x1000040504FFAC1uLL);
  v14 = vk2dfd(v6);
  if (!v14)
  {
    return 16;
  }

  v51 = v14;
  v52 = v13;
  v59 = 0;
  v58 = 0;
  LODWORD(v64) = v12 + 80;
  v15 = *v14;
  DWORD1(v64) = *v14;
  v53 = a1;
  v18 = *(a1 + 80);
  v17 = (a1 + 80);
  v16 = v18;
  v57 = v18;
  if (v18)
  {
    while (1)
    {
      v56 = 0;
      v55 = 0;
      ktxHashListEntry_GetKey(v16, &v56, &v55);
      v19 = v55;
      if (!strncasecmp(v55, "KTX", 3uLL) && strcmp(v19, "KTXorientation") && strcmp(v19, "KTXwriter"))
      {
        break;
      }

      v16 = ktxHashList_Next(v57);
      v57 = v16;
      if (!v16)
      {
        goto LABEL_207;
      }
    }

    result = 10;
    v20 = v13;
    goto LABEL_215;
  }

LABEL_207:
  v20 = v13;
  v21 = v53;
  if (!ktxHashList_FindEntry(v17, "KTXorientation", &v57))
  {
    v55 = 0;
    v56 = 0;
    v54 = 0;
    ktxHashListEntry_GetValue(v57, &v56, &v55);
    v22 = sscanf(v55, "S=%c,T=%c,R=%c", &v54, &v54 + 1, &v54 + 2);
    v23 = *(v53 + 48);
    if (v22 < v23)
    {
      result = 1;
LABEL_215:
      v25 = result;
      free(v51);
      free(v20);
      return v25;
    }

    v24 = v22;
    if (v22 > v23)
    {
      *(&v54 + v23) = 0;
      v24 = v23;
    }

    ktxHashList_DeleteEntry(v17, v57);
    ktxHashList_AddKVPair(v17, "KTXorientation", v24 + 1, &v54);
  }

  v57 = 0;
  ktxHashList_FindEntry(v17, "KTXwriter", &v57);
  result = appendLibId(v17, v57);
  if (result)
  {
    goto LABEL_215;
  }

  ktxHashList_Sort(v17);
  ktxHashList_Serialize(v17, &v59, &v58);
  if (v59)
  {
    v26 = v15 + v12 + 80;
  }

  else
  {
    v26 = 0;
  }

  *(&v64 + 1) = __PAIR64__(v59, v26);
  v27 = v59 + v15 + v12 + 80;
  v65 = 0uLL;
  v28 = lcm4(*(*(v53 + 24) + 32) >> 3);
  v29 = -(v27 - (v28 * ceilf(v27 / v28)));
  v30 = *(v53 + 52);
  v31 = (v30 - 1);
  if (v30 - 1 >= 0)
  {
    v32 = v27 + v29;
    v33 = &v52[24 * v31 + 16];
    do
    {
      v34 = ktxTexture_calcLevelSize(v53, v31, 2);
      *(v33 - 1) = v34;
      *v33 = v34;
      *(v33 - 2) = v32;
      v32 += (ceilf(v34 / v28) * v28);
      --v31;
      v33 -= 3;
    }

    while (v31 != -1);
  }

  result = (*(a2 + 16))(a2, &v61, 80, 1);
  if (!result)
  {
    result = (*(a2 + 16))(a2, v52, v12, 1);
    if (!result)
    {
      result = (*(a2 + 16))(a2, v51, 1, *v51);
      if (!v59 || (v35 = (*(a2 + 16))(a2, v58, 1), free(v58), result = v35, !v35))
      {
        memset(v60, 0, sizeof(v60));
        if (!v29 || (result = (*(a2 + 16))(a2, v60, 1, v29), !result))
        {
          v36 = *(v53 + 52);
          v37 = (v36 - 1);
          if (v36 - 1 >= 0 && !result)
          {
            do
            {
              v38 = ktxTexture_calcImageSize(v21, v37, 2);
              if (*(v21 + 44) >> v37 <= 1u)
              {
                v40 = 1;
              }

              else
              {
                v40 = *(v21 + 44) >> v37;
              }

              if (*(v21 + 33) == 1)
              {
                v40 = *(v21 + 60);
              }

              v54 = 0;
              LODWORD(v55) = 0;
              v56 = 0;
              if ((*(v21 + 34) & 1) == 0)
              {
                v39.n128_f32[0] = ktxTexture_rowInfo(v21, v37, &v55, &v56, &v54);
              }

              v41 = (*(*(v21 + 24) + 16))(v21, v37, v39);
              v42.n128_u64[0] = 0;
              if (*(v21 + 56) && v40)
              {
                v43 = v41;
                v50 = v37;
                result = 0;
                v44 = 0;
                v45 = 0;
                do
                {
                  for (i = 0; i != v40; ++i)
                  {
                    if (v54)
                    {
                      if (v55)
                      {
                        v47 = 0;
                        v48 = *(v21 + 112) + v43;
                        v49 = (v56 - v54);
                        do
                        {
                          result = (*(a2 + 16))(a2, v48 + v56 * v47, v49, 1, v42);
                          v44 += v49;
                          ++v47;
                        }

                        while (v47 < v55);
                        v21 = v53;
                      }
                    }

                    else
                    {
                      result = (*(a2 + 16))(a2, *(v21 + 112) + v43, v38, 1);
                      v44 += v38;
                    }

                    v43 += v38;
                  }

                  ++v45;
                }

                while (v45 < *(v21 + 56));
                v42.n128_f32[0] = v44;
                v20 = v52;
                LODWORD(v37) = v50;
              }

              else
              {
                result = 0;
              }

              if (v37 && !result)
              {
                if (-(v42.n128_f32[0] - (v28 * ceilf(v42.n128_f32[0] / v28))))
                {
                  result = (*(a2 + 16))(a2, v60, 1);
                }

                else
                {
                  result = 0;
                }
              }

              if (v37 < 1)
              {
                break;
              }

              v37 = (v37 - 1);
            }

            while (!result);
          }

          goto LABEL_215;
        }
      }
    }
  }

  return result;
}

uint64_t ktxTexture1_WriteKTX2ToStdioStream(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 11;
  }

  v5 = 0;
  memset(v4, 0, sizeof(v4));
  result = ktxFileStream_construct(v4, a2, 0);
  if (!result)
  {
    return ktxTexture1_WriteKTX2ToStream(a1, v4);
  }

  return result;
}

uint64_t ktxTexture1_WriteKTX2ToNamedFile(uint64_t a1, char *__filename)
{
  if (!a1)
  {
    return 11;
  }

  v3 = fopen(__filename, "wb");
  if (!v3)
  {
    return 3;
  }

  v4 = v3;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v5 = ktxFileStream_construct(v8, v3, 0);
  if (!v5)
  {
    v5 = ktxTexture1_WriteKTX2ToStream(a1, v8);
  }

  v6 = v5;
  fclose(v4);
  return v6;
}

uint64_t ktxTexture1_WriteKTX2ToMemory(uint64_t a1, void *a2, void *a3)
{
  result = 11;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v15 = 0;
        v13 = 0u;
        v14 = 0u;
        v11 = 0u;
        v12 = 0u;
        memset(v10, 0, sizeof(v10));
        v9 = 0;
        *a2 = 0;
        result = ktxMemStream_construct(v10, 0);
        if (!result)
        {
          v7 = ktxTexture1_WriteKTX2ToStream(a1, v10);
          if (!v7)
          {
            ktxMemStream_getdata(v10, a2);
            (*(&v11 + 1))(v10, &v9);
            v7 = 0;
            *a3 = v9;
          }

          v8 = v7;
          ktxMemStream_destruct(v10);
          return v8;
        }
      }
    }
  }

  return result;
}

uint64_t appendLibId(uint64_t *a1, uint64_t a2)
{
  memset(__n, 0, sizeof(__n));
  if (a2)
  {
    ktxHashListEntry_GetValue(a2, __n, &__n[1]);
    v4 = *&__n[1];
    v5 = __n[0];
  }

  else
  {
    v4 = "Unidentified app";
    *&__n[1] = "Unidentified app";
    v5 = 17;
    __n[0] = 17;
  }

  v6 = strstr(v4, "__default__");
  v7 = (v5 - 1);
  if (v4[v7])
  {
    LODWORD(v7) = v5;
  }

  else
  {
    __n[0] = v5 - 1;
  }

  if (v6)
  {
    v8 = "v4.0.__default__";
  }

  else
  {
    v8 = "v4.0.0-76-g16d3b6b4-dirty";
  }

  v9 = 27;
  if (!v6)
  {
    v9 = 36;
  }

  v10 = v9 + v7;
  v11 = malloc_type_malloc((v9 + v7), 0xEFCB0FuLL);
  v12 = strncpy(v11, *&__n[1], __n[0]);
  v13 = &v12[__n[0]];
  strcpy(v13, " / libktx ");
  strcpy(v13 + 10, v8);
  ktxHashList_DeleteEntry(a1, a2);
  v14 = ktxHashList_AddKVPair(a1, "KTXwriter", v10, v11);
  free(v11);
  return v14;
}

uint64_t ktxTexture2_setImageFromStream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, uint64_t, uint64_t), uint64_t a6)
{
  result = 11;
  if (a1 && a5)
  {
    if (*(a1 + 112))
    {
      v11 = 0;
      result = (*(*(a1 + 8) + 8))(a1, a2, a3, a4, &v11);
      if (result)
      {
        return result;
      }

      if ((*(*(a1 + 8) + 24))(a1, a2) == a6)
      {
        (*a5)(a5, *(a1 + 112) + v11, a6);
        return 0;
      }
    }

    return 10;
  }

  return result;
}

uint64_t ktxTexture2_SetImageFromStdioStream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  result = ktxFileStream_construct(v14, a5, 0);
  if (!result)
  {
    if (!a1)
    {
      v12 = 11;
      goto LABEL_9;
    }

    if (*(a1 + 112))
    {
      v16 = 0;
      v12 = (*(*(a1 + 8) + 8))(a1, a2, a3, a4, &v16);
      if (v12)
      {
LABEL_9:
        v13 = v12;
        ktxFileStream_destruct(v14);
        return v13;
      }

      if ((*(*(a1 + 8) + 24))(a1, a2) == a6)
      {
        (*&v14[0])(v14, *(a1 + 112) + v16, a6);
        v12 = 0;
        goto LABEL_9;
      }
    }

    v12 = 10;
    goto LABEL_9;
  }

  return result;
}

uint64_t ktxTexture2_SetImageFromMemory(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  result = ktxMemStream_construct_ro(v14, a5, a6);
  if (!result)
  {
    if (!a1)
    {
      v12 = 11;
      goto LABEL_9;
    }

    if (*(a1 + 112))
    {
      v16 = 0;
      v12 = (*(*(a1 + 8) + 8))(a1, a2, a3, a4, &v16);
      if (v12)
      {
LABEL_9:
        v13 = v12;
        ktxMemStream_destruct(v14);
        return v13;
      }

      if ((*(*(a1 + 8) + 24))(a1, a2) == a6)
      {
        (*&v14[0])(v14, *(a1 + 112) + v16, a6);
        v12 = 0;
        goto LABEL_9;
      }
    }

    v12 = 10;
    goto LABEL_9;
  }

  return result;
}

uint64_t ktxTexture2_WriteToStream(uint64_t a1, uint64_t a2)
{
  v69 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 160);
  v66 = xmmword_186233F78;
  v67 = unk_186233F88;
  v68 = xmmword_186233F98;
  v64 = xmmword_186233F58;
  v65 = unk_186233F68;
  if (!a2)
  {
    return 11;
  }

  if (!*(a1 + 112))
  {
    return 10;
  }

  v4 = *(*(a1 + 24) + 56);
  HIDWORD(v64) = *(a1 + 120);
  LODWORD(v65) = v4;
  DWORD1(v65) = *(a1 + 36);
  v5 = *(a1 + 48);
  if (v5 <= 1)
  {
    *(&v65 + 1) = 0;
    v57 = a2;
    v58 = v2;
    if (*(a1 + 32) == 1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    DWORD2(v65) = *(a1 + 40);
    if (v5 == 2)
    {
      HIDWORD(v65) = 0;
      v57 = a2;
      v58 = v2;
      if (*(a1 + 32) != 1)
      {
        goto LABEL_11;
      }

LABEL_9:
      v7 = *(a1 + 56);
      goto LABEL_12;
    }

    HIDWORD(v65) = *(a1 + 44);
    v57 = a2;
    v58 = v2;
    if (*(a1 + 32) == 1)
    {
      goto LABEL_9;
    }
  }

LABEL_11:
  v7 = 0;
LABEL_12:
  *&v66 = __PAIR64__(*(a1 + 60), v7);
  v8 = *(a1 + 52);
  if (*(a1 + 35))
  {
    v9 = 0;
  }

  else
  {
    v9 = *(a1 + 52);
  }

  v61 = 0;
  v60 = 0;
  *(&v66 + 1) = __PAIR64__(*(a1 + 136), v9);
  size = (24 * v8);
  LODWORD(v67) = size + 80;
  v10 = *(a1 + 128);
  v11 = *v10;
  DWORD1(v67) = *v10;
  for (i = *(a1 + 80); i; i = ktxHashList_Next(i))
  {
    LODWORD(v59) = 0;
    v62[0] = 0;
    ktxHashListEntry_GetKey(i, &v59, v62);
    v13 = v62[0];
    if (!strncasecmp(v62[0], "KTX", 3uLL) && (*v13 == 107 && v13[1] == 116 && v13[2] == 120 || strcmp(v13, "KTXcubemapIncomplete") && strcmp(v13, "KTXorientation") && strcmp(v13, "KTXglFormat") && strcmp(v13, "KTXdxgiFormat__") && strcmp(v13, "KTXmetalPixelFormat") && strcmp(v13, "KTXswizzle") && strcmp(v13, "KTXwriter") && strcmp(v13, "KTXwriterScParams") && strcmp(v13, "KTXastcDecodeMode") && strcmp(v13, "KTXanimData")))
    {
      return 10;
    }
  }

  v59 = 0;
  ktxHashList_FindEntry((a1 + 80), "KTXwriter", &v59);
  result = appendLibId((a1 + 80), v59);
  if (result)
  {
    return result;
  }

  v14 = size + 80 + v11;
  ktxHashList_Sort((a1 + 80));
  ktxHashList_Serialize((a1 + 80), &v61, &v60);
  v15 = v61 ? v14 : 0;
  *(&v67 + 1) = __PAIR64__(v61, v15);
  v16 = v14 + v61;
  v17 = v58[2];
  if (v17)
  {
    v18 = -(v16 - (ceilf(vcvts_n_f32_u64(v16, 3uLL)) * 8.0));
    v19 = v16 + v18;
    v16 += v18;
  }

  else
  {
    v19 = 0;
    LODWORD(v18) = 0;
  }

  *&v68 = v19;
  *(&v68 + 1) = v17;
  v20 = *(*(a1 + 160) + 8);
  result = (*(v57 + 16))(v57, &v64, 80, 1);
  if (result)
  {
    return result;
  }

  v21 = malloc_type_malloc(size, 0x1000040504FFAC1uLL);
  if (!v21)
  {
    return 13;
  }

  v22 = v21;
  v23 = -((v16 + v17) - (v20 * ceilf((v16 + v17) / v20)));
  v24 = *(a1 + 52);
  if (v24)
  {
    v25 = v16 + v17 + v23;
    if (v24 > 0xB)
    {
      v26 = 0;
      v40 = &v21[24 * v24];
      v41 = &v58[3 * v24];
      v42 = (v41 + 24);
      v43 = (v41 + 16);
      v44 = v21 + 16 >= v41 + 32 || (v58 + 6) >= v40;
      v45 = !v44;
      v47 = v21 < v43 && (v58 + 4) < v40 - 16;
      if (((v58 + 5) >= v40 - 8 || (v21 + 8) >= v42) && (v45 & 1) == 0 && !v47)
      {
        v26 = v24 & 0xFFFFFFFC;
        v49 = vdupq_n_s64(v25);
        v50 = (v58 + 10);
        v51 = v26;
        v52 = v21;
        do
        {
          v53 = v50 - 6;
          v70 = vld3q_f64(v53);
          v71 = vld3q_f64(v50);
          v70.val[0] = vaddq_s64(v49, v70.val[0]);
          v71.val[0] = vaddq_s64(v49, v71.val[0]);
          v54 = v52 + 12;
          vst3q_f64(v52, v70);
          v55 = v52 + 6;
          vst3q_f64(v55, v71);
          v50 += 12;
          v52 = v54;
          v51 -= 4;
        }

        while (v51);
        if (v26 == v24)
        {
          goto LABEL_48;
        }
      }
    }

    else
    {
      v26 = 0;
    }

    v27 = &v58[3 * v26 + 5];
    v28 = &v21[24 * v26 + 8];
    v29 = v24 - v26;
    do
    {
      *v28 = *v27;
      *(v28 - 1) = v25 + *(v27 - 1);
      v27 = (v27 + 24);
      v28 += 24;
      --v29;
    }

    while (v29);
  }

LABEL_48:
  v30 = (*(v57 + 16))(v57, v21, size, 1);
  free(v22);
  if (v30)
  {
    return v30;
  }

  result = (*(v57 + 16))(v57, *(a1 + 128), 1, **(a1 + 128));
  if (!v61 || (v31 = (*(v57 + 16))(v57, v60, 1), free(v60), result = v31, !v31))
  {
    *v62 = 0u;
    v63 = 0u;
    v32 = v58[2];
    if (!v32)
    {
      goto LABEL_61;
    }

    if (v18)
    {
      result = (*(v57 + 16))(v57, v62, 1, v18);
      if (result)
      {
        return result;
      }

      v32 = v58[2];
    }

    result = (*(v57 + 16))(v57, *v58, 1, v32);
    if (!result)
    {
LABEL_61:
      if (!v23 || (result = (*(v57 + 16))(v57, v62, 1, v23), !result))
      {
        v33 = *(a1 + 52);
        v34 = (v33 - 1);
        if (v33 - 1 >= 0 && !result)
        {
          v35 = &v58[3 * v34 + 5];
          do
          {
            v36 = ktxTexture2_levelDataOffset(a1, v34);
            v38 = *v35;
            v35 -= 3;
            v37 = v38;
            result = (*(v57 + 16))(v57, *(a1 + 112) + v36, v38, 1);
            if (v34 && !result)
            {
              v39 = *(*(a1 + 160) + 8);
              if (-(v37 - (v39 * ceilf(v37 / v39))))
              {
                result = (*(v57 + 16))(v57, v62, 1);
              }

              else
              {
                result = 0;
              }
            }

            v44 = v34-- != 0;
          }

          while (v44 && !result);
        }
      }
    }
  }

  return result;
}

uint64_t ktxTexture2_WriteToStdioStream(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 11;
  }

  v5 = 0;
  memset(v4, 0, sizeof(v4));
  result = ktxFileStream_construct(v4, a2, 0);
  if (!result)
  {
    return ktxTexture2_WriteToStream(a1, v4);
  }

  return result;
}

uint64_t ktxTexture2_WriteToNamedFile(uint64_t a1, char *__filename)
{
  if (!a1)
  {
    return 11;
  }

  v3 = fopen(__filename, "wb");
  if (!v3)
  {
    return 3;
  }

  v4 = v3;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v5 = ktxFileStream_construct(v8, v3, 0);
  if (!v5)
  {
    v5 = ktxTexture2_WriteToStream(a1, v8);
  }

  v6 = v5;
  fclose(v4);
  return v6;
}

uint64_t ktxTexture2_WriteToMemory(uint64_t a1, void *a2, void *a3)
{
  result = 11;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v15 = 0;
        v13 = 0u;
        v14 = 0u;
        v11 = 0u;
        v12 = 0u;
        memset(v10, 0, sizeof(v10));
        v9 = 0;
        *a2 = 0;
        result = ktxMemStream_construct(v10, 0);
        if (!result)
        {
          v7 = ktxTexture2_WriteToStream(a1, v10);
          if (!v7)
          {
            ktxMemStream_getdata(v10, a2);
            (*(&v11 + 1))(v10, &v9);
            v7 = 0;
            *a3 = v9;
          }

          v8 = v7;
          ktxMemStream_destruct(v10);
          return v8;
        }
      }
    }
  }

  return result;
}

void OFDLoadExternalSymbols(uint64_t result, uint64_t a2)
{
  if (gLoadCoreTextSymbolsInitOnce != -1)
  {
    OFDLoadExternalSymbols();
  }
}

void *___Z22OFDLoadExternalSymbolsv_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  strcpy(v2, "/System/Library/Frameworks/CoreText.framework/CoreText");
  result = dlopen(v2, 257);
  if (result)
  {
    v1 = result;
    gIIO_kCTFontAttributeName = dlsym(result, "kCTFontAttributeName");
    gIIO_kCTFontNameAttribute = dlsym(v1, "kCTFontNameAttribute");
    gIIO_kCTForegroundColorAttributeName = dlsym(v1, "kCTForegroundColorAttributeName");
    gFunc_CTFontCopyPostScriptName = dlsym(v1, "CTFontCopyPostScriptName");
    gFunc_CTFontCreateWithName = dlsym(v1, "CTFontCreateWithName");
    gFunc_CTFramesetterCreateWithAttributedString = dlsym(v1, "CTFramesetterCreateWithAttributedString");
    gFunc_CTFramesetterSuggestFrameSizeWithConstraints = dlsym(v1, "CTFramesetterSuggestFrameSizeWithConstraints");
    gFunc_CTLineCreateWithAttributedString = dlsym(v1, "CTLineCreateWithAttributedString");
    gFunc_CTLineDraw = dlsym(v1, "CTLineDraw");
    gFunc_CTFontDescriptorCreateWithAttributes = dlsym(v1, "CTFontDescriptorCreateWithAttributes");
    gFunc_CTFontDescriptorMatchFontDescriptorsWithProgressHandler = dlsym(v1, "CTFontDescriptorMatchFontDescriptorsWithProgressHandler");
    gFunc_CTFontGetAdvancesForGlyphs = dlsym(v1, "CTFontGetAdvancesForGlyphs");
    result = dlsym(v1, "CTFontGetGlyphsForCharacters");
    gFunc_CTFontGetGlyphsForCharacters = result;
  }

  return result;
}

void OFDExtractOFDObjectsFromCFArray(const __CFDictionary *a1, uint64_t a2)
{
  if (a1)
  {
    v9 = 0;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(a1))
    {
      v9 = OFDCreateObject(a1);
      std::vector<IIO_Writer *>::push_back[abi:fe200100](a2, &v9);
    }

    else
    {
      Count = CFArrayGetCount(a1);
      if (Count)
      {
        v6 = Count;
        for (i = 0; i != v6; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
          v9 = OFDCreateObject(ValueAtIndex);
          if (v9)
          {
            std::vector<IIO_Writer *>::push_back[abi:fe200100](a2, &v9);
          }
        }
      }
    }
  }
}

OFDTextObject *OFDCreateObject(const __CFDictionary *a1)
{
  TypeID = CFDictionaryGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    if (CFDictionaryContainsKey(a1, @"TextCode"))
    {
      operator new();
    }

    if (CFDictionaryContainsKey(a1, @"ResourceID"))
    {
      operator new();
    }

    if (CFDictionaryContainsKey(a1, @"PageRef"))
    {
      operator new();
    }

    operator new();
  }

  return 0;
}

void OFDExtractOFDObjectsFromCFArrayWithPage(const __CFDictionary *a1, uint64_t a2, OFDPage *a3)
{
  if (a1)
  {
    v7 = 0;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(a1))
    {
      OFDCreateObjectWithPage(a1, a3);
    }

    if (CFArrayGetCount(a1))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
      OFDCreateObjectWithPage(ValueAtIndex, a3);
    }
  }
}

void OFDCreateObjectWithPage(const __CFDictionary *a1, OFDPage *a2)
{
  if (CFDictionaryContainsKey(a1, @"TextCode"))
  {
    operator new();
  }

  if (CFDictionaryContainsKey(a1, @"ResourceID"))
  {
    operator new();
  }

  if (CFDictionaryContainsKey(a1, @"PageRef"))
  {
    operator new();
  }

  operator new();
}

uint64_t OFDCopyResourcePathFromDictionary(IIODictionary *a1, unint64_t a2, const __CFString *a3)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  if (a1)
  {
    ArrayObjectForPath = IIODictionary::getArrayObjectForPath(a1, "Res.MultiMedias.MultiMedia");
    if (ArrayObjectForPath)
    {
      memset(v8, 0, sizeof(v8));
      IIOArray::IIOArray(v8, ArrayObjectForPath);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 0x40000000;
      v7[2] = ___Z33OFDCopyResourcePathFromDictionaryP13IIODictionaryyPK10__CFString_block_invoke;
      v7[3] = &unk_1E6F445D8;
      v7[4] = &v9;
      v7[5] = a2;
      IIOArray::enumerate(v8, v7);
      IIOArray::~IIOArray(v8);
    }
  }

  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

void sub_1861CC2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  IIOArray::~IIOArray(va);
  _Block_object_dispose((v15 - 48), 8);
  _Unwind_Resume(a1);
}

void ___Z33OFDCopyResourcePathFromDictionaryP13IIODictionaryyPK10__CFString_block_invoke(uint64_t a1, CFTypeRef cf, uint64_t a3, _BYTE *a4)
{
  v7 = CFGetTypeID(cf);
  if (v7 == CFDictionaryGetTypeID())
  {
    memset(v11, 0, sizeof(v11));
    IIODictionary::IIODictionary(v11, cf);
    if (IIODictionary::getUint64ForKey(v11, "ID") == *(a1 + 40))
    {
      Value = CFDictionaryGetValue(cf, @"MediaFile");
      v9 = Value;
      if (Value)
      {
        if (CFStringHasPrefix(Value, @"/"))
        {
          v12.length = CFStringGetLength(v9) - 1;
          v12.location = 1;
          v10 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], v9, v12);
        }

        else
        {
          v10 = CFRetain(v9);
        }

        *(*(*(a1 + 32) + 8) + 24) = v10;
        *a4 = 1;
      }
    }

    IIODictionary::~IIODictionary(v11);
  }
}

void sub_1861CC3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void CGAffineTransformFromString(const __CFString *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = MEMORY[0x1E695EFD0];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  *a2 = *MEMORY[0x1E695EFD0];
  a2[1] = v4;
  a2[2] = *(v3 + 32);
  if (a1)
  {
    memset(v7, 0, sizeof(v7));
    IIOString::IIOString(v7, a1);
    v6 = IIOString::utf8String(v5);
    sscanf(v6, "%lf %lf %lf %lf %lf %lf", a2, a2 + 8, a2 + 1, a2 + 24, a2 + 2, a2 + 40);
    IIOString::~IIOString(v7);
  }
}

double CGRectFromString(const char *a1)
{
  v2 = 0u;
  v3 = 0u;
  sscanf(a1, "%lf %lf %lf %lf", &v2, &v2 + 8, &v3, &v3 + 8);
  return *&v2;
}

double CGRectFromCFString(const __CFString *a1)
{
  if (!a1)
  {
    return *MEMORY[0x1E695F058];
  }

  memset(v4, 0, sizeof(v4));
  IIOString::IIOString(v4, a1);
  if (IIOString::length(v4))
  {
    v1 = IIOString::utf8String(v4);
    v2 = CGRectFromString(v1);
  }

  else
  {
    v2 = *MEMORY[0x1E695F050];
  }

  IIOString::~IIOString(v4);
  return v2;
}

void sub_1861CC5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

void OFDParseTextDelta(void *a1, uint64_t a2)
{
  memset(v18, 0, sizeof(v18));
  IIOString::IIOString(v18, a1);
  v17 = 0;
  v15 = 0u;
  memset(v16, 0, sizeof(v16));
  *v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  memset(v12, 0, sizeof(v12));
  v10 = 0u;
  v4 = IIOString::utf8String(v3);
  std::string::basic_string[abi:fe200100]<0>(&__p, v4);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:fe200100](&v10, &__p, 24);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  memset(&__p, 0, sizeof(__p));
  while (1)
  {
    v5 = std::getline[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(&v10, &__p, 0x20u);
    if ((*(v5 + *(*v5 - 24) + 32) & 5) != 0)
    {
      break;
    }

    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      if (*__p.__r_.__value_.__l.__data_ == 103)
      {
LABEL_10:
        std::getline[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(&v10, &__p, 0x20u);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v7 = atoi(p_p);
        std::getline[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(&v10, &__p, 0x20u);
        if (v7 >= 1)
        {
          do
          {
            std::vector<std::string>::push_back[abi:fe200100](a2, &__p);
            --v7;
          }

          while (v7);
        }
      }

      else if (__p.__r_.__value_.__l.__size_)
      {
LABEL_17:
        std::vector<std::string>::push_back[abi:fe200100](a2, &__p);
      }
    }

    else
    {
      if (__p.__r_.__value_.__s.__data_[0] == 103)
      {
        goto LABEL_10;
      }

      if (*(&__p.__r_.__value_.__s + 23))
      {
        goto LABEL_17;
      }
    }
  }

  if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *&v10 = *MEMORY[0x1E69E54D8];
  v8 = *(MEMORY[0x1E69E54D8] + 72);
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  *&v11 = v8;
  *(&v11 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[1]);
  }

  *(&v11 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  MEMORY[0x1866027D0](v16);
  IIOString::~IIOString(v18);
}

void sub_1861CC890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  IIOString::~IIOString((v16 - 72));
  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:fe200100](uint64_t *a1, const std::string *a2, uint64_t a3)
{
  v3 = a3;
  a1[22] = 0;
  v6 = MEMORY[0x1E69E5560] + 104;
  a1[16] = MEMORY[0x1E69E5560] + 104;
  v7 = a1 + 2;
  v8 = MEMORY[0x1E69E5560] + 64;
  a1[2] = MEMORY[0x1E69E5560] + 64;
  v9 = MEMORY[0x1E69E54D8];
  v10 = *(MEMORY[0x1E69E54D8] + 24);
  v11 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v11;
  *(a1 + *(v11 - 24)) = v10;
  a1[1] = 0;
  v12 = (a1 + *(*a1 - 24));
  std::ios_base::init(v12, a1 + 3);
  v13 = MEMORY[0x1E69E5560] + 24;
  v12[1].__vftable = 0;
  v12[1].__fmtflags_ = -1;
  v14 = v9[5];
  v15 = v9[4];
  a1[2] = v15;
  *(v7 + *(v15 - 24)) = v14;
  v16 = v9[1];
  *a1 = v16;
  *(a1 + *(v16 - 24)) = v9[6];
  *a1 = v13;
  a1[16] = v6;
  a1[2] = v8;
  std::stringbuf::basic_stringbuf[abi:fe200100]((a1 + 3), a2, v3);
  return a1;
}

void sub_1861CCB74(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x1866027D0](v1);
  _Unwind_Resume(a1);
}

void *std::getline[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v11 = 0;
  MEMORY[0x186602600](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_1861CCD04(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1861CCCC4);
  }

  __cxa_rethrow();
}

void OFDParsePathOperations(void *a1, uint64_t a2)
{
  memset(v17, 0, sizeof(v17));
  IIOString::IIOString(v17, a1);
  v16 = 0;
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  *v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  v9 = 0u;
  v4 = IIOString::utf8String(v3);
  std::string::basic_string[abi:fe200100]<0>(&__p, v4);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:fe200100](&v9, &__p, 24);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  memset(&__p, 0, sizeof(__p));
  while (1)
  {
    v5 = std::getline[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(&v9, &__p, 0x20u);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((*(v5 + *(*v5 - 24) + 32) & 5) != 0)
    {
      break;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      std::vector<std::string>::push_back[abi:fe200100](a2, &__p);
    }
  }

  if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *&v9 = *MEMORY[0x1E69E54D8];
  v7 = *(MEMORY[0x1E69E54D8] + 72);
  *(&v9 + *(v9 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  *&v10 = v7;
  *(&v10 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[1]);
  }

  *(&v10 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v11);
  std::iostream::~basic_iostream();
  MEMORY[0x1866027D0](v15);
  IIOString::~IIOString(v17);
}

void sub_1861CCFE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  IIOString::~IIOString((v16 - 56));
  _Unwind_Resume(a1);
}

void OFDParseColor(__CFDictionary *a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  memset(v24, 0, sizeof(v24));
  IIODictionary::IIODictionary(v24, a1);
  *(a2 + 40) = 0;
  ObjectForKey = IIODictionary::getObjectForKey(v24, @"Pattern");
  if (ObjectForKey)
  {
    *(a2 + 40) = CFRetain(ObjectForKey);
    *a2 = 2;
    v4 = IIODictionary::getObjectForKey(v24, @"Value");
    v5 = v4;
    if (!v4)
    {
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0x3FF0000000000000;
      goto LABEL_75;
    }

    *buffer = 0u;
    v26 = 0u;
    CFStringGetCString(v4, buffer, 32, 0x8000100u);
    for (i = 0; CFStringGetLength(v5) > i; ++i)
    {
      if (!buffer[i])
      {
        buffer[i] = 32;
      }
    }

    HIBYTE(v26) = 0;
    v7 = strtok(buffer, " ,");
    if (v7)
    {
      v8 = 0;
      do
      {
        v9 = v8++;
        *(a2 + 8 + 8 * v9) = atof(v7) / 255.0;
        v7 = strtok(0, " ,");
      }

      while (v7 && v9 < 3);
      if (v9 > 2)
      {
        goto LABEL_75;
      }
    }

    else
    {
      LODWORD(v8) = 0;
    }

    if (v8 != 3)
    {
      v11 = 0;
      v12 = a2 + 8;
      v13 = vdup_n_s32(2 - v8);
      do
      {
        v14 = vcge_u32(v13, vorr_s8(vdup_n_s32(v11), 0x100000000));
        if (v14.i8[0])
        {
          *(v12 + 8 * (v8 + v11)) = 0;
        }

        if (v14.i8[4])
        {
          *(v12 + 8 * (v8 + v11 + 1)) = 0;
        }

        v11 += 2;
      }

      while (((4 - v8) & 0xFFFFFFFE) != v11);
    }

    *(a2 + 32) = 0x3FF0000000000000;
  }

  else
  {
    v10 = IIODictionary::getObjectForKey(v24, @"ColorSpace");
    if (v10)
    {
      memset(buffer, 0, sizeof(buffer));
      *&v26 = 0;
      IIOString::IIOString(buffer, v10);
      IIOString::utf8String(buffer);
      *a2 = 1;
      IIOString::~IIOString(buffer);
    }

    else
    {
      *a2 = 1;
    }

    v15 = IIODictionary::getObjectForKey(v24, @"Value");
    if (!v15)
    {
      goto LABEL_68;
    }

    *buffer = 0u;
    v26 = 0u;
    CFStringGetCString(v15, buffer, 32, 0x8000100u);
    for (j = 0; j != 32; j += 16)
    {
      v17 = vceqzq_s8(*&buffer[j]);
      if (v17.i8[0])
      {
        buffer[j] = 32;
      }

      if (v17.i8[1])
      {
        buffer[j + 1] = 32;
      }

      if (v17.i8[2])
      {
        buffer[j + 2] = 32;
      }

      if (v17.i8[3])
      {
        buffer[j + 3] = 32;
      }

      if (v17.i8[4])
      {
        buffer[j + 4] = 32;
      }

      if (v17.i8[5])
      {
        buffer[j + 5] = 32;
      }

      if (v17.i8[6])
      {
        buffer[j + 6] = 32;
      }

      if (v17.i8[7])
      {
        buffer[j + 7] = 32;
      }

      if (v17.i8[8])
      {
        buffer[j + 8] = 32;
      }

      if (v17.i8[9])
      {
        buffer[j + 9] = 32;
      }

      if (v17.i8[10])
      {
        buffer[j + 10] = 32;
      }

      if (v17.i8[11])
      {
        buffer[j + 11] = 32;
      }

      if (v17.i8[12])
      {
        buffer[j + 12] = 32;
      }

      if (v17.i8[13])
      {
        buffer[j + 13] = 32;
      }

      if (v17.i8[14])
      {
        buffer[j + 14] = 32;
      }

      if (v17.i8[15])
      {
        buffer[j + 15] = 32;
      }
    }

    HIBYTE(v26) = 0;
    v18 = strtok(buffer, " ,");
    if (v18)
    {
      v19 = 0;
      do
      {
        v20 = v19 + 1;
        *(a2 + 8 + 8 * v19) = atof(v18) / 255.0;
        v18 = strtok(0, " ,");
        if (!v18)
        {
          break;
        }
      }

      while (v19++ < 3);
    }

    else
    {
LABEL_68:
      v20 = 0;
    }

    v22 = IIODictionary::getObjectForKey(v24, @"Alpha");
    if (v22)
    {
      memset(buffer, 0, sizeof(buffer));
      *&v26 = 0;
      IIOString::IIOString(buffer, v22);
      if (v20 <= 3)
      {
        v23 = IIOString::utf8String(buffer);
        *(a2 + 8 * v20 + 8) = atof(v23) / 255.0;
      }

      IIOString::~IIOString(buffer);
    }

    else if (v20 <= 3)
    {
      *(a2 + 8 * v20 + 8) = 0x3FF0000000000000;
    }
  }

LABEL_75:
  IIODictionary::~IIODictionary(v24);
}

void sub_1861CD4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  IIOString::~IIOString(va1);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

CGColorRef OFDCreateCGColor(uint64_t a1)
{
  if (*a1 != 1)
  {
    return 0;
  }

  v2 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  v3 = CGColorCreate(v2, (a1 + 8));
  if (v2)
  {
    CGColorSpaceRelease(v2);
  }

  return v3;
}

CGPatternRef OFDCreateCGPattern(uint64_t a1, const void *a2)
{
  if (a1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      memset(v9, 0, sizeof(v9));
      IIODictionary::IIODictionary(v9, v2);
      IIODictionary::getDoubleForKey(v3, @"Width");
      IIODictionary::getDoubleForKey(v9, @"Height");
      IIODictionary::getDoubleForKey(v9, @"XStep");
      IIODictionary::getDoubleForKey(v9, @"YStep");
      v4 = *(MEMORY[0x1E695EFD0] + 16);
      *&v8.a = *MEMORY[0x1E695EFD0];
      *&v8.c = v4;
      *&v8.tx = *(MEMORY[0x1E695EFD0] + 32);
      ObjectForKey = IIODictionary::getObjectForKey(v9, @"CTM");
      if (ObjectForKey)
      {
        CGAffineTransformFromString(ObjectForKey, &matrix);
        v8 = matrix;
      }

      operator new();
    }
  }

  return 0;
}

void OFDPatternDrawCallback(const __CFDictionary **a1, CGContext *a2)
{
  if (a1)
  {
    v4 = *a1;
    if (*a1)
    {
      memset(v26, 0, sizeof(v26));
      IIODictionary::IIODictionary(v26, v4);
      v5 = a1[1];
      ObjectForKey = IIODictionary::getObjectForKey(v26, @"CellContent");
      if (ObjectForKey)
      {
        memset(v25, 0, sizeof(v25));
        IIODictionary::IIODictionary(v25, ObjectForKey);
        CGContextSaveGState(a2);
        ArrayObjectForPath = IIODictionary::getArrayObjectForPath(v25, @"TextObject");
        if (ArrayObjectForPath)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          OFDExtractOFDObjectsFromCFArray(ArrayObjectForPath, &v22);
          v9 = v22;
          v8 = v23;
          if (v22 != v23)
          {
            v10 = MEMORY[0x1E695F058];
            do
            {
              v11 = *v9;
              if (*v9)
              {
                (*(*v11 + 16))(*v9, a2, v5, *v10, v10[1], v10[2], v10[3]);
                (*(*v11 + 8))(v11);
                v8 = v23;
              }

              ++v9;
            }

            while (v9 != v8);
            v9 = v22;
          }

          if (v9)
          {
            v23 = v9;
            operator delete(v9);
          }
        }

        v12 = IIODictionary::getArrayObjectForPath(v25, @"PathObject");
        if (v12)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          OFDExtractOFDObjectsFromCFArray(v12, &v22);
          v14 = v22;
          v13 = v23;
          if (v22 != v23)
          {
            v15 = MEMORY[0x1E695F058];
            do
            {
              v16 = *v14;
              if (*v14)
              {
                (*(*v16 + 16))(*v14, a2, v5, *v15, v15[1], v15[2], v15[3]);
                (*(*v16 + 8))(v16);
                v13 = v23;
              }

              ++v14;
            }

            while (v14 != v13);
            v14 = v22;
          }

          if (v14)
          {
            v23 = v14;
            operator delete(v14);
          }
        }

        v17 = IIODictionary::getArrayObjectForPath(v25, @"ImageObject");
        if (v17)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          OFDExtractOFDObjectsFromCFArray(v17, &v22);
          v19 = v22;
          v18 = v23;
          if (v22 != v23)
          {
            v20 = MEMORY[0x1E695F058];
            do
            {
              v21 = *v19;
              if (*v19)
              {
                (*(*v21 + 16))(*v19, a2, v5, *v20, v20[1], v20[2], v20[3]);
                (*(*v21 + 8))(v21);
                v18 = v23;
              }

              ++v19;
            }

            while (v19 != v18);
            v19 = v22;
          }

          if (v19)
          {
            v23 = v19;
            operator delete(v19);
          }
        }

        CGContextRestoreGState(a2);
        IIODictionary::~IIODictionary(v25);
      }

      IIODictionary::~IIODictionary(v26);
    }
  }
}

void sub_1861CDA1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (__p)
  {
    operator delete(__p);
  }

  IIODictionary::~IIODictionary(&a13);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

const void **OFDPatternReleaseCallback(const void **result)
{
  if (result)
  {
    v1 = *result;
    if (v1)
    {
      CFRelease(v1);
    }

    JUMPOUT(0x186602850);
  }

  return result;
}

uint64_t std::stringbuf::basic_stringbuf[abi:fe200100](uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x186602780](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  std::stringbuf::__init_buf_ptrs[abi:fe200100](a1);
  return a1;
}

void sub_1861CDB80(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void OFDContainer::OFDContainer(OFDContainer *this, const char *a2)
{
  *this = &unk_1EF50E260;
  *(this + 3) = 0;
  operator new();
}

void OFDContainer::OFDContainer(OFDContainer *this, unsigned __int8 *a2, unsigned int a3)
{
  *this = &unk_1EF50E260;
  *(this + 3) = 0;
  *(this + 5) = a3;
  operator new();
}

void OFDContainer::~OFDContainer(OFDContainer *this)
{
  *this = &unk_1EF50E260;
  v2 = *(this + 4);
  if (v2)
  {
    unzCloseCurrentFile(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

{
  OFDContainer::~OFDContainer(this);

  JUMPOUT(0x186602850);
}

BOOL OFDContainer::initializeFiles(OFDContainer *this)
{
  v18 = *MEMORY[0x1E69E9840];
  v15 = 0uLL;
  if (!unzGetGlobalInfo(*(this + 4), &v15))
  {
    v3 = *MEMORY[0x1E695E480];
    v4 = 1;
    do
    {
      if (v15 <= (v4 - 1))
      {
        break;
      }

      v17 = 0u;
      memset(cStr, 0, sizeof(cStr));
      v14 = 0;
      v13 = 0u;
      v11 = 0u;
      v12 = 0u;
      *v9 = 0u;
      v10 = 0u;
      memset(v8, 0, sizeof(v8));
      if (unzGetCurrentFileInfo64(*(this + 4), v8, cStr, 0x100uLL, 0, 0, 0, 0) || *&v9[2] > 0xFFFFFFFEuLL)
      {
        break;
      }

      HIBYTE(v17) = 0;
      v5 = CFStringCreateWithCString(v3, cStr, 0x8000100u);
      if (v5)
      {
        v6 = *(this + 2);
        IIONumber::IIONumber(v7, v9[2]);
        IIODictionary::setObjectForKey(v6, v7, v5);
        IIONumber::~IIONumber(v7);
        CFRelease(v5);
      }

      if (v15 == v4)
      {
        break;
      }

      ++v4;
    }

    while (!unzGoToNextFile(*(this + 4)));
  }

  return IIODictionary::getCount(*(this + 2)) != 0;
}

void sub_1861CE000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

BOOL OFDContainer::initializeAttributes(OFDContainer *this)
{
  v2 = OFDContainer::copyFileContent(this, "OFD.xml");
  v3 = v2;
  if (v2)
  {
    *(this + 1) = XMLDictionaryCreateWithData(v2);
    CFRelease(v3);
  }

  return v3 != 0;
}

IIODictionary *OFDContainer::initializeRootDocument(OFDContainer *this)
{
  result = *(this + 1);
  if (result)
  {
    ArrayObjectForPath = IIODictionary::getArrayObjectForPath(result, @"OFD.DocBody.DocRoot");
    result = CFArrayGetValueAtIndex(ArrayObjectForPath, 0);
    if (result)
    {
      operator new();
    }
  }

  return result;
}

void OFDTemplate::OFDTemplate(OFDTemplate *this, OFDDocument *a2, const char *__s, int a4)
{
  *this = &unk_1EF50E290;
  *(this + 3) = 0;
  v7 = this + 24;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 2) = a2;
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:fe200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v13) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
  }

  *(&__dst + v9) = 0;
  if (*(this + 47) < 0)
  {
    operator delete(*v7);
  }

  *v7 = __dst;
  *(v7 + 2) = v13;
  *(this + 2) = a4;
  *(this + 56) = 0;
  v10 = MEMORY[0x1E695F058];
  *(this + 6) = 0;
  v11 = v10[1];
  *(this + 88) = *v10;
  *(this + 104) = v11;
}

void sub_1861CE28C(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 72) = v5;
    operator delete(v5);
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void OFDTemplate::~OFDTemplate(OFDTemplate *this)
{
  *this = &unk_1EF50E290;
  v2 = *(this + 6);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

{
  OFDTemplate::~OFDTemplate(this);

  JUMPOUT(0x186602850);
}

uint64_t OFDTemplate::open(OFDTemplate *this)
{
  if ((*(this + 56) & 1) == 0)
  {
    v2 = *(this + 2);
    v3 = this + 24;
    if (*(this + 47) < 0)
    {
      v3 = *v3;
    }

    v4 = OFDDocument::copyFileContent(v2, v3);
    if (v4)
    {
      v5 = v4;
      *(this + 56) = OFDTemplate::parseXML(this, v4);
      CFRelease(v5);
    }
  }

  return *(this + 56);
}

BOOL OFDTemplate::parseXML(OFDTemplate *this, const __CFData *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = XMLDictionaryCreateWithData(a2);
  *(this + 6) = v3;
  v24 = v3;
  if (v3)
  {
    ArrayObjectForPath = IIODictionary::getArrayObjectForPath(v3, @"Page.Area.PhysicalBox");
    if (ArrayObjectForPath && (v5 = ArrayObjectForPath, CFArrayGetCount(ArrayObjectForPath)) && (ValueAtIndex = CFArrayGetValueAtIndex(v5, 0)) != 0)
    {
      v7 = CGRectFromCFString(ValueAtIndex);
    }

    else
    {
      v7 = *MEMORY[0x1E695F058];
      v8 = *(MEMORY[0x1E695F058] + 8);
      v9 = *(MEMORY[0x1E695F058] + 16);
      v10 = *(MEMORY[0x1E695F058] + 24);
    }

    *(this + 11) = v7;
    *(this + 12) = v8;
    *(this + 13) = v9;
    *(this + 14) = v10;
    v11 = IIODictionary::getArrayObjectForPath(*(this + 6), @"Page.Content.Layer");
    if (v11)
    {
      v12 = v11;
      if (CFArrayGetCount(v11) >= 1)
      {
        v13 = 0;
        do
        {
          v14 = CFArrayGetValueAtIndex(v12, v13);
          memset(v25, 0, sizeof(v25));
          IIODictionary::IIODictionary(v25, v14);
          ObjectForKey = IIODictionary::getObjectForKey(v25, @"ID");
          v16 = IIODictionary::getObjectForKey(v25, @"DrawParam");
          if (ObjectForKey && !CFStringGetCStringPtr(ObjectForKey, 0x8000100u))
          {
            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v34 = 0u;
            v35 = 0u;
            v33 = 0u;
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            *buffer = 0u;
            CFStringGetCString(ObjectForKey, buffer, 256, 0x8000100u);
          }

          if (v16)
          {
            if (!CFStringGetCStringPtr(v16, 0x8000100u))
            {
              v40 = 0u;
              v41 = 0u;
              v38 = 0u;
              v39 = 0u;
              v36 = 0u;
              v37 = 0u;
              v34 = 0u;
              v35 = 0u;
              v33 = 0u;
              v31 = 0u;
              v32 = 0u;
              v29 = 0u;
              v30 = 0u;
              v27 = 0u;
              v28 = 0u;
              *buffer = 0u;
              CFStringGetCString(v16, buffer, 256, 0x8000100u);
            }

            LODWORD(v16) = CFStringGetIntValue(v16);
          }

          v17 = IIODictionary::getArrayObjectForPath(v25, @"TextObject");
          if (v17)
          {
            OFDTemplate::extractObjectsWithDrawParam(this, v17, v16);
          }

          v18 = IIODictionary::getArrayObjectForPath(v25, @"PathObject");
          if (v18)
          {
            OFDTemplate::extractObjectsWithDrawParam(this, v18, v16);
          }

          v19 = IIODictionary::getArrayObjectForPath(v25, @"ImageObject");
          if (v19)
          {
            OFDTemplate::extractObjectsWithDrawParam(this, v19, v16);
          }

          IIODictionary::~IIODictionary(v25);
          ++v13;
        }

        while (v13 < CFArrayGetCount(v12));
      }
    }

    else
    {
      v20 = IIODictionary::getArrayObjectForPath(*(this + 6), @"Page.Content.Layer.TextObject");
      OFDExtractOFDObjectsFromCFArray(v20, this + 64);
      v21 = IIODictionary::getArrayObjectForPath(*(this + 6), @"Page.Content.Layer.PathObject");
      OFDExtractOFDObjectsFromCFArray(v21, this + 64);
      v22 = IIODictionary::getArrayObjectForPath(*(this + 6), @"Page.Content.Layer.ImageObject");
      OFDExtractOFDObjectsFromCFArray(v22, this + 64);
    }
  }

  else
  {
    OFDTemplate::parseXML();
  }

  return v24 != 0;
}

void sub_1861CE6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void OFDTemplate::extractObjectsWithDrawParam(OFDDocument **this, const __CFArray *a2, int a3)
{
  if (a2)
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(a2))
    {
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a2);
      if (a3)
      {
        OFDDocument::applyDrawParam(this[2], a3, MutableCopy);
      }

      if (CFDictionaryContainsKey(MutableCopy, @"TextCode"))
      {
        operator new();
      }

      if (CFDictionaryContainsKey(MutableCopy, @"ResourceID"))
      {
        operator new();
      }

      if (CFDictionaryContainsKey(MutableCopy, @"PageRef"))
      {
        operator new();
      }

      operator new();
    }

    if (CFArrayGetCount(a2))
    {
      v8 = *MEMORY[0x1E695E480];
      ValueAtIndex = CFArrayGetValueAtIndex(a2, 0);
      v10 = CFDictionaryCreateMutableCopy(v8, 0, ValueAtIndex);
      if (a3)
      {
        OFDDocument::applyDrawParam(this[2], a3, v10);
      }

      v11 = 0;
      if (CFDictionaryContainsKey(v10, @"TextCode"))
      {
        operator new();
      }

      if (CFDictionaryContainsKey(v10, @"ResourceID"))
      {
        operator new();
      }

      if (CFDictionaryContainsKey(v10, @"PageRef"))
      {
        operator new();
      }

      operator new();
    }
  }
}

void OFDTemplate::drawTemplateInContext(uint64_t a1, CGContext *a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v7 = *(a1 + 64);
  while (v7 != *(a1 + 72))
  {
    v15 = *v7++;
    (*(*v15 + 24))(v15);
    CGContextSaveGState(a2);
    (*(*v15 + 16))(v15, a2, a3, a4, a5, a6, a7);
    CGContextRestoreGState(a2);
  }
}

void OFDSignatureObject::OFDSignatureObject(OFDSignatureObject *this, const __CFDictionary *a2)
{
  *OFDObject::OFDObject(this, a2, 4) = &unk_1EF50E2C0;
  memset(v3, 0, sizeof(v3));
  IIODictionary::IIODictionary(v3, a2);
  IIODictionary::~IIODictionary(v3);
}

void OFDSignatureObject::~OFDSignatureObject(OFDSignatureObject *this)
{
  OFDObject::~OFDObject(this);

  JUMPOUT(0x186602850);
}

void OFDSignatureObject::drawInContext(OFDSignatureObject *this, CGContext *a2, CGRect a3, OFDDocument **a4)
{
  v5 = OFDPage::copySignatureFilePath(a4);
  memset(v13, 0, sizeof(v13));
  IIOString::IIOString(v13, v5);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a4[2];
  v7 = IIOString::utf8String(v13);
  v8 = OFDDocument::copyFileContent(v6, v7);
  v9 = v8;
  if (v8)
  {
    BytePtr = CFDataGetBytePtr(v8);
    Length = CFDataGetLength(v9);
    memset(v12, 0, sizeof(v12));
    ASN1Parser::ASN1Parser(v12);
    ASN1Parser::parseASN1(v12, BytePtr, Length);
  }

  IIOString::~IIOString(v13);
}

void sub_1861CEF2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  OFDContainer::~OFDContainer(&a9);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  ASN1Parser::~ASN1Parser(&a22);
  IIOString::~IIOString(&a25);
  _Unwind_Resume(a1);
}

uint64_t OFDObject::OFDObject(uint64_t a1, const __CFDictionary *a2, char a3)
{
  *a1 = &unk_1EF50E308;
  *(a1 + 8) = a3;
  memset(v14, 0, sizeof(v14));
  IIODictionary::IIODictionary(v14, a2);
  if (IIODictionary::getCount(v14))
  {
    ObjectForKey = IIODictionary::getObjectForKey(v14, @"CTM");
    CGAffineTransformFromString(ObjectForKey, v13);
    v5 = v13[1];
    *(a1 + 24) = v13[0];
    *(a1 + 40) = v5;
    *(a1 + 56) = v13[2];
    v6 = IIODictionary::getObjectForKey(v14, @"Boundary");
    *(a1 + 72) = CGRectFromCFString(v6);
    *(a1 + 80) = v7;
    *(a1 + 88) = v8;
    *(a1 + 96) = v9;
    *(a1 + 16) = IIODictionary::getUint64ForKey(v14, @"ID");
    *(a1 + 105) = IIODictionary::containsKey(v14, "Fill") && IIODictionary::getBoolForKey(v14, "Fill");
    *(a1 + 104) = !IIODictionary::containsKey(v14, "Stroke") || IIODictionary::getBoolForKey(v14, "Stroke");
    *(a1 + 160) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    v10 = IIODictionary::getObjectForKey(v14, @"FillColor");
    if (v10)
    {
      OFDParseColor(v10, a1 + 160);
    }

    v11 = IIODictionary::getObjectForKey(v14, @"StrokeColor");
    if (v11)
    {
      OFDParseColor(v11, a1 + 112);
    }
  }

  IIODictionary::~IIODictionary(v14);
  return a1;
}

void sub_1861CF138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void OFDObject::~OFDObject(OFDObject *this)
{
  *this = &unk_1EF50E308;
  v2 = *(this + 25);
  if (v2)
  {
    CFRelease(v2);
    *(this + 25) = 0;
  }

  v3 = *(this + 19);
  if (v3)
  {
    CFRelease(v3);
    *(this + 19) = 0;
  }
}

{
  OFDObject::~OFDObject(this);

  JUMPOUT(0x186602850);
}

void OFDPage::OFDPage(OFDPage *this, OFDDocument *a2, char *__s, int a4)
{
  *this = &unk_1EF50E348;
  *(this + 3) = 0;
  v7 = this + 24;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 2) = a2;
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:fe200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v16) = v8;
  if (v8)
  {
    memcpy(&v15, __s, v8);
  }

  *(&v15 + v9) = 0;
  if (*(this + 47) < 0)
  {
    operator delete(*v7);
  }

  *v7 = v15;
  *(v7 + 2) = v16;
  if (!strstr(__s, ".xml"))
  {
    if (*(this + 47) >= 0)
    {
      v10 = *(this + 47);
    }

    else
    {
      v10 = *(this + 4);
    }

    v16 = 0;
    v15 = 0uLL;
    v11 = &v15;
    std::string::basic_string[abi:fe200100](&v15, v10 + 12);
    if (v16 < 0)
    {
      v11 = v15;
    }

    if (v10)
    {
      if (*(this + 47) >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = *(this + 3);
      }

      memmove(v11, v12, v10);
    }

    strcpy(v11 + v10, "/Content.xml");
    if (*(this + 47) < 0)
    {
      operator delete(*v7);
    }

    *v7 = v15;
    *(v7 + 2) = v16;
  }

  *(this + 2) = a4;
  v13 = MEMORY[0x1E695F058];
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  v14 = v13[1];
  *(this + 7) = *v13;
  *(this + 8) = v14;
  *(this + 80) = 0;
  OFDPage::extractSignature(this);
  OFDPage::extractAnnotations(this);
}

void sub_1861CF410(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 96) = v5;
    operator delete(v5);
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void OFDPage::extractSignature(OFDPage *this)
{
  v2 = *(this + 2);
  if (*(v2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v2 + 40), *(v2 + 48));
  }

  else
  {
    __p = *(v2 + 40);
  }

  v3 = std::string::append(&__p, "/Signs/Sign_0/Signature.xml");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v10 = v3->__r_.__value_.__r.__words[2];
  *v9 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v10 >= 0)
  {
    v5 = v9;
  }

  else
  {
    v5 = v9[0];
  }

  v6 = OFDDocument::copyFileContent(*(this + 2), v5);
  v7 = v6;
  if (v6)
  {
    *(this + 8) = XMLDictionaryCreateWithData(v6);
    CFRelease(v7);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_1861CF518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OFDPage::extractAnnotations(OFDPage *this)
{
  v2 = *(this + 2);
  if (*(v2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *(v2 + 40), *(v2 + 48));
  }

  else
  {
    v15 = *(v2 + 40);
  }

  v3 = std::string::append(&v15, "/Annots/Page_");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v14, *(this + 2));
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v14;
  }

  else
  {
    v5 = v14.__r_.__value_.__r.__words[0];
  }

  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v14.__r_.__value_.__l.__size_;
  }

  v7 = std::string::append(&v16, v5, size);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&v17, "/Annotation.xml");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v19 = v9->__r_.__value_.__r.__words[2];
  v18 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (v19 >= 0)
  {
    v11 = &v18;
  }

  else
  {
    v11 = v18;
  }

  v12 = OFDDocument::copyFileContent(*(this + 2), v11);
  v13 = v12;
  if (v12)
  {
    *(this + 9) = XMLDictionaryCreateWithData(v12);
    CFRelease(v13);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18);
  }
}

void sub_1861CF6BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 57) < 0)
  {
    operator delete(*(v28 - 80));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void OFDPage::~OFDPage(OFDPage *this)
{
  *this = &unk_1EF50E348;
  v2 = *(this + 6);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 9);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 11);
  if (v6)
  {
    *(this + 12) = v6;
    operator delete(v6);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

{
  OFDPage::~OFDPage(this);

  JUMPOUT(0x186602850);
}

void OFDPage::applyAnnotationOffset(OFDPage *this, const __CFArray *a2, CGRect a3)
{
  if (a2)
  {
    y = a3.origin.y;
    x = a3.origin.x;
    if (!CGRectIsEmpty(a3))
    {
      Count = CFArrayGetCount(a2);
      if (Count >= 1)
      {
        v7 = Count;
        for (i = 0; i != v7; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
          if (ValueAtIndex)
          {
            v10 = ValueAtIndex;
            v11 = CFGetTypeID(ValueAtIndex);
            if (v11 == CFDictionaryGetTypeID())
            {
              v12 = CFDictionaryGetValue(v10, @"Boundary");
              if (v12)
              {
                v13 = CGRectFromCFString(v12);
                v17[0] = 0;
                v17[1] = 0;
                value = 0;
                IIOString::IIOString(v17, 0, @"%g %g %g %g", x + v13, y + v14, v15, v16);
                CFDictionarySetValue(v10, @"Boundary", value);
                IIOString::~IIOString(v17);
              }
            }
          }
        }
      }
    }
  }
}

void sub_1861CF990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

uint64_t OFDPage::open(OFDPage *this)
{
  if (*(this + 80))
  {
    v1 = 1;
  }

  else
  {
    v3 = *(this + 2);
    v4 = this + 24;
    if (*(this + 47) < 0)
    {
      v4 = *v4;
    }

    v5 = OFDDocument::copyFileContent(v3, v4);
    *(this + 80) = v5 != 0;
    if (v5)
    {
      v6 = v5;
      OFDPage::parseXML(this, v5);
      CFRelease(v6);
      v1 = *(this + 80);
    }

    else
    {
      v1 = 0;
    }
  }

  return v1 & 1;
}

uint64_t OFDPage::parseXML(OFDPage *this, const __CFData *a2)
{
  v3 = XMLDictionaryCreateWithData(a2);
  *(this + 6) = v3;
  if (v3)
  {
    ArrayObjectForPath = IIODictionary::getArrayObjectForPath(v3, @"Page.Area.PhysicalBox");
    if (ArrayObjectForPath)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(ArrayObjectForPath, 0);
      v6 = CGRectFromCFString(ValueAtIndex);
    }

    else
    {
      v10 = *(this + 2);
      v6 = *(v10 + 152);
      v7 = *(v10 + 160);
      v8 = *(v10 + 168);
      v9 = *(v10 + 176);
    }

    *(this + 14) = v6;
    *(this + 15) = v7;
    *(this + 16) = v8;
    *(this + 17) = v9;
    ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(*(this + 6), @"Content", @"Page");
    if (ObjectForKeyGroup && (Value = CFDictionaryGetValue(ObjectForKeyGroup, @"Layer")) != 0 && (v13 = Value, v14 = CFGetTypeID(Value), v14 == CFArrayGetTypeID()))
    {
      Count = CFArrayGetCount(v13);
      if (Count >= 1)
      {
        v16 = Count;
        for (i = 0; i != v16; ++i)
        {
          v71 = 0;
          v72 = 0;
          v73 = 0;
          IIOString::IIOString(&v71, 0, @"Page.Content.Layer[%d].TextObject", i);
          ArrayObjectForPathWithIndexing = IIODictionary::getArrayObjectForPathWithIndexing(*(this + 6), v73);
          OFDExtractOFDObjectsFromCFArrayWithPage(ArrayObjectForPathWithIndexing, this + 88, this);
          IIOString::~IIOString(&v71);
        }

        for (j = 0; j != v16; ++j)
        {
          v71 = 0;
          v72 = 0;
          v73 = 0;
          IIOString::IIOString(&v71, 0, @"Page.Content.Layer[%d].PathObject", j);
          v20 = IIODictionary::getArrayObjectForPathWithIndexing(*(this + 6), v73);
          OFDExtractOFDObjectsFromCFArrayWithPage(v20, this + 88, this);
          IIOString::~IIOString(&v71);
        }

        for (k = 0; k != v16; ++k)
        {
          v71 = 0;
          v72 = 0;
          v73 = 0;
          IIOString::IIOString(&v71, 0, @"Page.Content.Layer[%d].ImageObject", k);
          v22 = IIODictionary::getArrayObjectForPathWithIndexing(*(this + 6), v73);
          OFDExtractOFDObjectsFromCFArrayWithPage(v22, this + 88, this);
          IIOString::~IIOString(&v71);
        }
      }
    }

    else
    {
      v23 = IIODictionary::getArrayObjectForPath(*(this + 6), @"Page.Content.Layer.TextObject");
      OFDExtractOFDObjectsFromCFArrayWithPage(v23, this + 88, this);
      v24 = IIODictionary::getArrayObjectForPath(*(this + 6), @"Page.Content.Layer.PathObject");
      OFDExtractOFDObjectsFromCFArrayWithPage(v24, this + 88, this);
      v25 = IIODictionary::getArrayObjectForPath(*(this + 6), @"Page.Content.Layer.ImageObject");
      OFDExtractOFDObjectsFromCFArrayWithPage(v25, this + 88, this);
    }

    v26 = IIODictionary::getArrayObjectForPath(*(this + 6), @"Page.Content.Layer.PageBlock");
    if (v26)
    {
      v27 = v26;
      v28 = CFArrayGetCount(v26);
      if (v28 >= 1)
      {
        v29 = v28;
        for (m = 0; m != v29; ++m)
        {
          v31 = CFArrayGetValueAtIndex(v27, m);
          if (v31)
          {
            v71 = 0;
            v72 = 0;
            v73 = 0;
            IIODictionary::IIODictionary(&v71, v31);
            v32 = IIODictionary::getArrayObjectForPath(&v71, @"TextObject");
            OFDExtractOFDObjectsFromCFArrayWithPage(v32, this + 88, this);
            v33 = IIODictionary::getArrayObjectForPath(&v71, @"PathObject");
            OFDExtractOFDObjectsFromCFArrayWithPage(v33, this + 88, this);
            v34 = IIODictionary::getArrayObjectForPath(&v71, @"ImageObject");
            OFDExtractOFDObjectsFromCFArrayWithPage(v34, this + 88, this);
            IIODictionary::~IIODictionary(&v71);
          }
        }
      }
    }
  }

  v35 = *(this + 8);
  if (v35)
  {
    v36 = IIODictionary::getArrayObjectForPath(v35, @"Signature.SignedInfo.StampAnnot");
    OFDExtractOFDObjectsFromCFArrayWithPage(v36, this + 88, this);
  }

  v37 = *(this + 9);
  if (v37)
  {
    v38 = IIODictionary::getArrayObjectForPath(v37, @"PageAnnot.Annot");
    if (v38)
    {
      v39 = v38;
      v40 = CFArrayGetCount(v38);
      if (v40 >= 1)
      {
        v41 = v40;
        v42 = 0;
        v43 = MEMORY[0x1E695F058];
        do
        {
          v44 = CFArrayGetValueAtIndex(v39, v42);
          if (v44)
          {
            v71 = 0;
            v72 = 0;
            v73 = 0;
            IIODictionary::IIODictionary(&v71, v44);
            ObjectForKey = IIODictionary::getObjectForKey(&v71, @"Type");
            v46 = IIODictionary::getObjectForKey(&v71, @"Subtype");
            if (ObjectForKey)
            {
              v47 = v46;
              if (v46)
              {
                v68 = 0;
                v69 = 0;
                v70 = 0;
                IIOString::IIOString(&v68, ObjectForKey);
                v65 = 0;
                v66 = 0;
                v67 = 0;
                IIOString::IIOString(&v65, v47);
                IIOString::~IIOString(&v65);
                IIOString::~IIOString(&v68);
              }
            }

            v48 = IIODictionary::getObjectForKey(&v71, @"Appearance");
            if (v48)
            {
              v68 = 0;
              v69 = 0;
              v70 = 0;
              IIODictionary::IIODictionary(&v68, v48);
              v49 = IIODictionary::getObjectForKey(&v68, @"Boundary");
              v50 = v49;
              if (v49)
              {
                v51 = CGRectFromCFString(v49);
                v53 = v52;
                v55 = v54;
                v57 = v56;
                v65 = 0;
                v66 = 0;
                v67 = 0;
                IIOString::IIOString(&v65, v50);
                IIOString::~IIOString(&v65);
              }

              else
              {
                v51 = *v43;
                v53 = v43[1];
                v55 = v43[2];
                v57 = v43[3];
              }

              v58 = IIODictionary::getArrayObjectForPath(&v68, @"ImageObject");
              v59 = v58;
              if (v58)
              {
                v74.origin.x = v51;
                v74.origin.y = v53;
                v74.size.width = v55;
                v74.size.height = v57;
                OFDPage::applyAnnotationOffset(v58, v58, v74);
                OFDExtractOFDObjectsFromCFArrayWithPage(v59, this + 88, this);
              }

              v60 = IIODictionary::getArrayObjectForPath(&v68, @"TextObject");
              v61 = v60;
              if (v60)
              {
                v75.origin.x = v51;
                v75.origin.y = v53;
                v75.size.width = v55;
                v75.size.height = v57;
                OFDPage::applyAnnotationOffset(v60, v60, v75);
                OFDExtractOFDObjectsFromCFArrayWithPage(v61, this + 88, this);
              }

              v62 = IIODictionary::getArrayObjectForPath(&v68, @"PathObject");
              v63 = v62;
              if (v62)
              {
                v76.origin.x = v51;
                v76.origin.y = v53;
                v76.size.width = v55;
                v76.size.height = v57;
                OFDPage::applyAnnotationOffset(v62, v62, v76);
                OFDExtractOFDObjectsFromCFArrayWithPage(v63, this + 88, this);
              }

              IIODictionary::~IIODictionary(&v68);
            }

            IIODictionary::~IIODictionary(&v71);
          }

          ++v42;
        }

        while (v41 != v42);
      }
    }
  }

  return 1;
}

void sub_1861CFF84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  IIODictionary::~IIODictionary(va);
  IIODictionary::~IIODictionary(va1);
  _Unwind_Resume(a1);
}

double OFDPage::physicalBox(OFDPage *this)
{
  if (*(this + 6))
  {
    return *(this + 14);
  }

  else
  {
    return 0.0;
  }
}

const __CFString *OFDPage::copyResourcePath(IIODictionary **this, unsigned int a2, const __CFString *a3)
{
  result = OFDCopyResourcePathFromDictionary(this[7], a2, a3);
  if (!result)
  {
    v7 = this[2];

    return OFDDocument::copyResourcePath(v7, a2, a3);
  }

  return result;
}

const __CFArray *OFDPage::copySignatureFilePath(OFDPage *this)
{
  v1 = *(this + 8);
  if (!v1)
  {
    return 0;
  }

  ArrayObjectForPath = IIODictionary::getArrayObjectForPath(v1, @"Signature.SignedValue");
  v3 = ArrayObjectForPath;
  if (!ArrayObjectForPath)
  {
    return v3;
  }

  if (!CFArrayGetCount(ArrayObjectForPath))
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v3, 0);
  v3 = ValueAtIndex;
  if (ValueAtIndex)
  {
    CFRetain(ValueAtIndex);
  }

  return v3;
}

void OFDPage::drawInContext(OFDPage *this, CGContextRef c, CGRect a3)
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = *(MEMORY[0x1E695EFD0] + 16);
  *&v13.a = *MEMORY[0x1E695EFD0];
  *&v13.c = v9;
  *&v13.tx = *(MEMORY[0x1E695EFD0] + 32);
  CGContextSetTextMatrix(c, &v13);
  OFDDocument::getTemplateAtIndex(*(this + 2), *(this + 2));
  if (v10)
  {
    OFDTemplate::drawTemplateInContext(v10, c, this, x, y, width, height);
  }

  v11 = *(this + 11);
  while (v11 != *(this + 12))
  {
    v12 = *v11++;
    (*(*v12 + 24))(v12);
    CGContextSaveGState(c);
    (*(*v12 + 16))(v12, c, this, x, y, width, height);
    CGContextRestoreGState(c);
  }
}

void OFDDocument::OFDDocument(OFDDocument *this, OFDContainer *a2, char *a3)
{
  *this = &unk_1EF50E378;
  *(this + 1) = 0u;
  *(this + 104) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  operator new();
}

void sub_1861D0488(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 128);
  if (v5)
  {
    *(v1 + 136) = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    *(v1 + 112) = v6;
    operator delete(v6);
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void OFDDocument::extractResources(OFDDocument *this)
{
  v2 = this + 40;
  if (*(this + 63) >= 0)
  {
    v3 = *(this + 63);
  }

  else
  {
    v3 = *(this + 6);
  }

  v17[1] = 0;
  v18 = 0;
  v17[0] = 0;
  std::string::basic_string[abi:fe200100](v17, v3 + 16);
  if (v18 >= 0)
  {
    v4 = v17;
  }

  else
  {
    v4 = v17[0];
  }

  if (v3)
  {
    if (*(this + 63) >= 0)
    {
      v5 = v2;
    }

    else
    {
      v5 = *(this + 5);
    }

    memmove(v4, v5, v3);
  }

  strcpy(v4 + v3, "/DocumentRes.xml");
  if (v18 >= 0)
  {
    v6 = v17;
  }

  else
  {
    v6 = v17[0];
  }

  v7 = OFDContainer::copyFileContent(*(this + 1), v6);
  v8 = v7;
  if (v7)
  {
    *(this + 9) = XMLDictionaryCreateWithData(v7);
    CFRelease(v8);
  }

  if (*(this + 63) >= 0)
  {
    v9 = *(this + 63);
  }

  else
  {
    v9 = *(this + 6);
  }

  __p[1] = 0;
  v16 = 0;
  __p[0] = 0;
  v10 = __p;
  std::string::basic_string[abi:fe200100](__p, v9 + 14);
  if (v16 < 0)
  {
    v10 = __p[0];
  }

  if (v9)
  {
    if (*(this + 63) >= 0)
    {
      v11 = v2;
    }

    else
    {
      v11 = *(this + 5);
    }

    memmove(v10, v11, v9);
  }

  strcpy(v10 + v9, "/PublicRes.xml");
  if (v16 >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  v13 = OFDContainer::copyFileContent(*(this + 1), v12);
  v14 = v13;
  if (v13)
  {
    *(this + 10) = XMLDictionaryCreateWithData(v13);
    CFRelease(v14);
  }

  OFDDocument::setupFonts(this);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }
}

void sub_1861D06C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OFDDocument::extractSignatures(OFDDocument *this)
{
  if (*(this + 63) >= 0)
  {
    v2 = *(this + 63);
  }

  else
  {
    v2 = *(this + 6);
  }

  __p[1] = 0;
  v9 = 0;
  __p[0] = 0;
  std::string::basic_string[abi:fe200100](__p, v2 + 21);
  if (v9 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if (v2)
  {
    if (*(this + 63) >= 0)
    {
      v4 = this + 40;
    }

    else
    {
      v4 = *(this + 5);
    }

    memmove(v3, v4, v2);
  }

  strcpy(v3 + v2, "/Signs/Signatures.xml");
  if (v9 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  v6 = OFDContainer::copyFileContent(*(this + 1), v5);
  v7 = v6;
  if (v6)
  {
    *(this + 11) = XMLDictionaryCreateWithData(v6);
    CFRelease(v7);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1861D07F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OFDDocument::~OFDDocument(OFDDocument *this)
{
  *this = &unk_1EF50E378;
  v2 = *(this + 8);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 12);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 16);
  if (v7)
  {
    *(this + 17) = v7;
    operator delete(v7);
  }

  v8 = *(this + 13);
  if (v8)
  {
    *(this + 14) = v8;
    operator delete(v8);
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

{
  OFDDocument::~OFDDocument(this);

  JUMPOUT(0x186602850);
}

OFDPage *OFDDocument::getPageAtIndex(OFDPage *this, unsigned int a2)
{
  if (*(this + 46) <= a2)
  {
    return 0;
  }

  v2 = this;
  v3 = a2;
  v4 = *(this + 13);
  if (a2 < ((*(this + 14) - v4) >> 3))
  {
    v5 = *(v4 + 8 * a2);
    if (!v5)
    {
      ArrayObjectForPath = IIODictionary::getArrayObjectForPath(*(this + 8), @"Document.Pages.Page");
      ValueAtIndex = CFArrayGetValueAtIndex(ArrayObjectForPath, v3);
      memset(v22, 0, sizeof(v22));
      IIODictionary::IIODictionary(v22, ValueAtIndex);
      v8 = *(v2 + 39);
      if (v8 < 0)
      {
        v9 = *(v2 + 2);
        v8 = *(v2 + 3);
        if (v8)
        {
LABEL_6:
          v10 = &v9[v8];
          v11 = v9;
          do
          {
            if (*v11 == 47)
            {
              goto LABEL_10;
            }

            ++v11;
            --v8;
          }

          while (v8);
          v11 = v10;
LABEL_10:
          v12 = (v11 - v9);
          if (v11 == v10)
          {
            v13 = -1;
          }

          else
          {
            v13 = v12;
          }

LABEL_16:
          memset(&v21, 0, sizeof(v21));
          std::string::basic_string(&v21, (v2 + 16), 0, v13, __p);
          std::string::append(&v21, "/");
          ObjectForKey = IIODictionary::getObjectForKey(v22, @"BaseLoc");
          IIOString::IIOString(v18, ObjectForKey);
          v15 = IIOString::utf8String(v18);
          std::string::basic_string[abi:fe200100]<0>(__p, v15);
          if ((v20 & 0x80u) == 0)
          {
            v16 = __p;
          }

          else
          {
            v16 = __p[0];
          }

          if ((v20 & 0x80u) == 0)
          {
            v17 = v20;
          }

          else
          {
            v17 = __p[1];
          }

          std::string::append(&v21, v16, v17);
          if (v20 < 0)
          {
            operator delete(__p[0]);
          }

          IIOString::~IIOString(v18);
          operator new();
        }
      }

      else
      {
        v9 = v2 + 16;
        if (*(v2 + 39))
        {
          goto LABEL_6;
        }
      }

      v13 = -1;
      goto LABEL_16;
    }

    return v5;
  }

  __break(1u);
  return this;
}

void sub_1861D0BD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  IIODictionary::~IIODictionary((v23 - 56));
  _Unwind_Resume(a1);
}

void OFDDocument::getTemplateAtIndex(OFDDocument *this, unsigned int a2)
{
  if (*(this + 46) > a2)
  {
    v3 = a2;
    v4 = *(this + 16);
    if (a2 < ((*(this + 17) - v4) >> 3) && !*(v4 + 8 * a2))
    {
      ArrayObjectForPath = IIODictionary::getArrayObjectForPath(*(this + 8), @"Document.CommonData.TemplatePage");
      ValueAtIndex = CFArrayGetValueAtIndex(ArrayObjectForPath, v3);
      memset(v21, 0, sizeof(v21));
      IIODictionary::IIODictionary(v21, ValueAtIndex);
      v7 = *(this + 39);
      if (v7 < 0)
      {
        v8 = *(this + 2);
        v7 = *(this + 3);
        if (v7)
        {
LABEL_6:
          v9 = &v8[v7];
          v10 = v8;
          do
          {
            if (*v10 == 47)
            {
              goto LABEL_10;
            }

            ++v10;
            --v7;
          }

          while (v7);
          v10 = v9;
LABEL_10:
          v11 = v10 - v8;
          if (v10 == v9)
          {
            v12 = -1;
          }

          else
          {
            v12 = v11;
          }

LABEL_16:
          memset(&v20, 0, sizeof(v20));
          std::string::basic_string(&v20, (this + 16), 0, v12, __p);
          std::string::append(&v20, "/");
          ObjectForKey = IIODictionary::getObjectForKey(v21, @"BaseLoc");
          IIOString::IIOString(v17, ObjectForKey);
          v14 = IIOString::utf8String(v17);
          std::string::basic_string[abi:fe200100]<0>(__p, v14);
          if ((v19 & 0x80u) == 0)
          {
            v15 = __p;
          }

          else
          {
            v15 = __p[0];
          }

          if ((v19 & 0x80u) == 0)
          {
            v16 = v19;
          }

          else
          {
            v16 = __p[1];
          }

          std::string::append(&v20, v15, v16);
          if (v19 < 0)
          {
            operator delete(__p[0]);
          }

          IIOString::~IIOString(v17);
          operator new();
        }
      }

      else
      {
        v8 = this + 16;
        if (*(this + 39))
        {
          goto LABEL_6;
        }
      }

      v12 = -1;
      goto LABEL_16;
    }
  }
}