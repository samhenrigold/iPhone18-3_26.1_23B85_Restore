uint64_t llvm::dwarf::getOperationEncoding(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 8:
      switch(*a1)
      {
        case 0x726F5F504F5F5744:
          result = 33;
          break;
        case 0x71655F504F5F5744:
          result = 41;
          break;
        case 0x65675F504F5F5744:
          result = 42;
          break;
        case 0x74675F504F5F5744:
          result = 43;
          break;
        case 0x656C5F504F5F5744:
          result = 44;
          break;
        case 0x746C5F504F5F5744:
          result = 45;
          break;
        case 0x656E5F504F5F5744:
          result = 46;
          break;
        default:
          goto LABEL_886;
      }

      break;
    case 9:
      if (*a1 == 0x75645F504F5F5744 && *(a1 + 8) == 112)
      {
        result = 18;
      }

      else if (*a1 == 0x6F725F504F5F5744 && *(a1 + 8) == 116)
      {
        result = 23;
      }

      else if (*a1 == 0x62615F504F5F5744 && *(a1 + 8) == 115)
      {
        result = 25;
      }

      else if (*a1 == 0x6E615F504F5F5744 && *(a1 + 8) == 100)
      {
        result = 26;
      }

      else if (*a1 == 0x69645F504F5F5744 && *(a1 + 8) == 118)
      {
        result = 27;
      }

      else if (*a1 == 0x6F6D5F504F5F5744 && *(a1 + 8) == 100)
      {
        result = 29;
      }

      else if (*a1 == 0x756D5F504F5F5744 && *(a1 + 8) == 108)
      {
        result = 30;
      }

      else if (*a1 == 0x656E5F504F5F5744 && *(a1 + 8) == 103)
      {
        result = 31;
      }

      else if (*a1 == 0x6F6E5F504F5F5744 && *(a1 + 8) == 116)
      {
        result = 32;
      }

      else if (*a1 == 0x68735F504F5F5744 && *(a1 + 8) == 108)
      {
        result = 36;
      }

      else if (*a1 == 0x68735F504F5F5744 && *(a1 + 8) == 114)
      {
        result = 37;
      }

      else if (*a1 == 0x6F785F504F5F5744 && *(a1 + 8) == 114)
      {
        result = 39;
      }

      else if (*a1 == 0x72625F504F5F5744 && *(a1 + 8) == 97)
      {
        result = 40;
      }

      else
      {
        if (*a1 != 0x6F6E5F504F5F5744 || *(a1 + 8) != 112)
        {
          goto LABEL_886;
        }

        result = 150;
      }

      break;
    case 10:
      if (*a1 == 0x64615F504F5F5744 && *(a1 + 8) == 29284)
      {
        result = 3;
      }

      else if (*a1 == 0x72645F504F5F5744 && *(a1 + 8) == 28783)
      {
        result = 19;
      }

      else if (*a1 == 0x766F5F504F5F5744 && *(a1 + 8) == 29285)
      {
        result = 20;
      }

      else if (*a1 == 0x69705F504F5F5744 && *(a1 + 8) == 27491)
      {
        result = 21;
      }

      else if (*a1 == 0x77735F504F5F5744 && *(a1 + 8) == 28769)
      {
        result = 22;
      }

      else if (*a1 == 0x6C705F504F5F5744 && *(a1 + 8) == 29557)
      {
        result = 34;
      }

      else if (*a1 == 0x68735F504F5F5744 && *(a1 + 8) == 24946)
      {
        result = 38;
      }

      else if (*a1 == 0x6B735F504F5F5744 && *(a1 + 8) == 28777)
      {
        result = 47;
      }

      else if (*a1 == 0x696C5F504F5F5744 && *(a1 + 8) == 12404)
      {
        result = 48;
      }

      else if (*a1 == 0x696C5F504F5F5744 && *(a1 + 8) == 12660)
      {
        result = 49;
      }

      else if (*a1 == 0x696C5F504F5F5744 && *(a1 + 8) == 12916)
      {
        result = 50;
      }

      else if (*a1 == 0x696C5F504F5F5744 && *(a1 + 8) == 13172)
      {
        result = 51;
      }

      else if (*a1 == 0x696C5F504F5F5744 && *(a1 + 8) == 13428)
      {
        result = 52;
      }

      else if (*a1 == 0x696C5F504F5F5744 && *(a1 + 8) == 13684)
      {
        result = 53;
      }

      else if (*a1 == 0x696C5F504F5F5744 && *(a1 + 8) == 13940)
      {
        result = 54;
      }

      else if (*a1 == 0x696C5F504F5F5744 && *(a1 + 8) == 14196)
      {
        result = 55;
      }

      else if (*a1 == 0x696C5F504F5F5744 && *(a1 + 8) == 14452)
      {
        result = 56;
      }

      else if (*a1 == 0x696C5F504F5F5744 && *(a1 + 8) == 14708)
      {
        result = 57;
      }

      else if (*a1 == 0x65725F504F5F5744 && *(a1 + 8) == 12391)
      {
        result = 80;
      }

      else if (*a1 == 0x65725F504F5F5744 && *(a1 + 8) == 12647)
      {
        result = 81;
      }

      else if (*a1 == 0x65725F504F5F5744 && *(a1 + 8) == 12903)
      {
        result = 82;
      }

      else if (*a1 == 0x65725F504F5F5744 && *(a1 + 8) == 13159)
      {
        result = 83;
      }

      else if (*a1 == 0x65725F504F5F5744 && *(a1 + 8) == 13415)
      {
        result = 84;
      }

      else if (*a1 == 0x65725F504F5F5744 && *(a1 + 8) == 13671)
      {
        result = 85;
      }

      else if (*a1 == 0x65725F504F5F5744 && *(a1 + 8) == 13927)
      {
        result = 86;
      }

      else if (*a1 == 0x65725F504F5F5744 && *(a1 + 8) == 14183)
      {
        result = 87;
      }

      else if (*a1 == 0x65725F504F5F5744 && *(a1 + 8) == 14439)
      {
        result = 88;
      }

      else if (*a1 == 0x65725F504F5F5744 && *(a1 + 8) == 14695)
      {
        result = 89;
      }

      else
      {
        if (*a1 != 0x65725F504F5F5744 || *(a1 + 8) != 30823)
        {
          goto LABEL_886;
        }

        result = 144;
      }

      break;
    case 11:
      if (*a1 == 0x65645F504F5F5744 && *(a1 + 3) == 0x66657265645F504FLL)
      {
        result = 6;
      }

      else if (*a1 == 0x696D5F504F5F5744 && *(a1 + 3) == 0x73756E696D5F504FLL)
      {
        result = 28;
      }

      else if (*a1 == 0x696C5F504F5F5744 && *(a1 + 3) == 0x303174696C5F504FLL)
      {
        result = 58;
      }

      else if (*a1 == 0x696C5F504F5F5744 && *(a1 + 3) == 0x313174696C5F504FLL)
      {
        result = 59;
      }

      else if (*a1 == 0x696C5F504F5F5744 && *(a1 + 3) == 0x323174696C5F504FLL)
      {
        result = 60;
      }

      else if (*a1 == 0x696C5F504F5F5744 && *(a1 + 3) == 0x333174696C5F504FLL)
      {
        result = 61;
      }

      else if (*a1 == 0x696C5F504F5F5744 && *(a1 + 3) == 0x343174696C5F504FLL)
      {
        result = 62;
      }

      else if (*a1 == 0x696C5F504F5F5744 && *(a1 + 3) == 0x353174696C5F504FLL)
      {
        result = 63;
      }

      else if (*a1 == 0x696C5F504F5F5744 && *(a1 + 3) == 0x363174696C5F504FLL)
      {
        result = 64;
      }

      else if (*a1 == 0x696C5F504F5F5744 && *(a1 + 3) == 0x373174696C5F504FLL)
      {
        result = 65;
      }

      else if (*a1 == 0x696C5F504F5F5744 && *(a1 + 3) == 0x383174696C5F504FLL)
      {
        result = 66;
      }

      else if (*a1 == 0x696C5F504F5F5744 && *(a1 + 3) == 0x393174696C5F504FLL)
      {
        result = 67;
      }

      else if (*a1 == 0x696C5F504F5F5744 && *(a1 + 3) == 0x303274696C5F504FLL)
      {
        result = 68;
      }

      else if (*a1 == 0x696C5F504F5F5744 && *(a1 + 3) == 0x313274696C5F504FLL)
      {
        result = 69;
      }

      else if (*a1 == 0x696C5F504F5F5744 && *(a1 + 3) == 0x323274696C5F504FLL)
      {
        result = 70;
      }

      else if (*a1 == 0x696C5F504F5F5744 && *(a1 + 3) == 0x333274696C5F504FLL)
      {
        result = 71;
      }

      else if (*a1 == 0x696C5F504F5F5744 && *(a1 + 3) == 0x343274696C5F504FLL)
      {
        result = 72;
      }

      else if (*a1 == 0x696C5F504F5F5744 && *(a1 + 3) == 0x353274696C5F504FLL)
      {
        result = 73;
      }

      else if (*a1 == 0x696C5F504F5F5744 && *(a1 + 3) == 0x363274696C5F504FLL)
      {
        result = 74;
      }

      else if (*a1 == 0x696C5F504F5F5744 && *(a1 + 3) == 0x373274696C5F504FLL)
      {
        result = 75;
      }

      else if (*a1 == 0x696C5F504F5F5744 && *(a1 + 3) == 0x383274696C5F504FLL)
      {
        result = 76;
      }

      else if (*a1 == 0x696C5F504F5F5744 && *(a1 + 3) == 0x393274696C5F504FLL)
      {
        result = 77;
      }

      else if (*a1 == 0x696C5F504F5F5744 && *(a1 + 3) == 0x303374696C5F504FLL)
      {
        result = 78;
      }

      else if (*a1 == 0x696C5F504F5F5744 && *(a1 + 3) == 0x313374696C5F504FLL)
      {
        result = 79;
      }

      else if (*a1 == 0x65725F504F5F5744 && *(a1 + 3) == 0x30316765725F504FLL)
      {
        result = 90;
      }

      else if (*a1 == 0x65725F504F5F5744 && *(a1 + 3) == 0x31316765725F504FLL)
      {
        result = 91;
      }

      else if (*a1 == 0x65725F504F5F5744 && *(a1 + 3) == 0x32316765725F504FLL)
      {
        result = 92;
      }

      else if (*a1 == 0x65725F504F5F5744 && *(a1 + 3) == 0x33316765725F504FLL)
      {
        result = 93;
      }

      else if (*a1 == 0x65725F504F5F5744 && *(a1 + 3) == 0x34316765725F504FLL)
      {
        result = 94;
      }

      else if (*a1 == 0x65725F504F5F5744 && *(a1 + 3) == 0x35316765725F504FLL)
      {
        result = 95;
      }

      else if (*a1 == 0x65725F504F5F5744 && *(a1 + 3) == 0x36316765725F504FLL)
      {
        result = 96;
      }

      else if (*a1 == 0x65725F504F5F5744 && *(a1 + 3) == 0x37316765725F504FLL)
      {
        result = 97;
      }

      else if (*a1 == 0x65725F504F5F5744 && *(a1 + 3) == 0x38316765725F504FLL)
      {
        result = 98;
      }

      else if (*a1 == 0x65725F504F5F5744 && *(a1 + 3) == 0x39316765725F504FLL)
      {
        result = 99;
      }

      else if (*a1 == 0x65725F504F5F5744 && *(a1 + 3) == 0x30326765725F504FLL)
      {
        result = 100;
      }

      else if (*a1 == 0x65725F504F5F5744 && *(a1 + 3) == 0x31326765725F504FLL)
      {
        result = 101;
      }

      else if (*a1 == 0x65725F504F5F5744 && *(a1 + 3) == 0x32326765725F504FLL)
      {
        result = 102;
      }

      else if (*a1 == 0x65725F504F5F5744 && *(a1 + 3) == 0x33326765725F504FLL)
      {
        result = 103;
      }

      else if (*a1 == 0x65725F504F5F5744 && *(a1 + 3) == 0x34326765725F504FLL)
      {
        result = 104;
      }

      else if (*a1 == 0x65725F504F5F5744 && *(a1 + 3) == 0x35326765725F504FLL)
      {
        result = 105;
      }

      else if (*a1 == 0x65725F504F5F5744 && *(a1 + 3) == 0x36326765725F504FLL)
      {
        result = 106;
      }

      else if (*a1 == 0x65725F504F5F5744 && *(a1 + 3) == 0x37326765725F504FLL)
      {
        result = 107;
      }

      else if (*a1 == 0x65725F504F5F5744 && *(a1 + 3) == 0x38326765725F504FLL)
      {
        result = 108;
      }

      else if (*a1 == 0x65725F504F5F5744 && *(a1 + 3) == 0x39326765725F504FLL)
      {
        result = 109;
      }

      else if (*a1 == 0x65725F504F5F5744 && *(a1 + 3) == 0x30336765725F504FLL)
      {
        result = 110;
      }

      else if (*a1 == 0x65725F504F5F5744 && *(a1 + 3) == 0x31336765725F504FLL)
      {
        result = 111;
      }

      else if (*a1 == 0x72625F504F5F5744 && *(a1 + 3) == 0x30676572625F504FLL)
      {
        result = 112;
      }

      else if (*a1 == 0x72625F504F5F5744 && *(a1 + 3) == 0x31676572625F504FLL)
      {
        result = 113;
      }

      else if (*a1 == 0x72625F504F5F5744 && *(a1 + 3) == 0x32676572625F504FLL)
      {
        result = 114;
      }

      else if (*a1 == 0x72625F504F5F5744 && *(a1 + 3) == 0x33676572625F504FLL)
      {
        result = 115;
      }

      else if (*a1 == 0x72625F504F5F5744 && *(a1 + 3) == 0x34676572625F504FLL)
      {
        result = 116;
      }

      else if (*a1 == 0x72625F504F5F5744 && *(a1 + 3) == 0x35676572625F504FLL)
      {
        result = 117;
      }

      else if (*a1 == 0x72625F504F5F5744 && *(a1 + 3) == 0x36676572625F504FLL)
      {
        result = 118;
      }

      else if (*a1 == 0x72625F504F5F5744 && *(a1 + 3) == 0x37676572625F504FLL)
      {
        result = 119;
      }

      else if (*a1 == 0x72625F504F5F5744 && *(a1 + 3) == 0x38676572625F504FLL)
      {
        result = 120;
      }

      else if (*a1 == 0x72625F504F5F5744 && *(a1 + 3) == 0x39676572625F504FLL)
      {
        result = 121;
      }

      else if (*a1 == 0x62665F504F5F5744 && *(a1 + 3) == 0x67657262665F504FLL)
      {
        result = 145;
      }

      else if (*a1 == 0x72625F504F5F5744 && *(a1 + 3) == 0x78676572625F504FLL)
      {
        result = 146;
      }

      else if (*a1 == 0x69705F504F5F5744 && *(a1 + 3) == 0x65636569705F504FLL)
      {
        result = 147;
      }

      else if (*a1 == 0x61635F504F5F5744 && *(a1 + 3) == 0x326C6C61635F504FLL)
      {
        result = 152;
      }

      else if (*a1 == 0x61635F504F5F5744 && *(a1 + 3) == 0x346C6C61635F504FLL)
      {
        result = 153;
      }

      else
      {
        if (*a1 != 0x64615F504F5F5744 || *(a1 + 3) != 0x78726464615F504FLL)
        {
          goto LABEL_886;
        }

        result = 161;
      }

      break;
    case 12:
      if (*a1 == 0x6F635F504F5F5744 && *(a1 + 8) == 1970565998)
      {
        result = 16;
      }

      else if (*a1 == 0x6F635F504F5F5744 && *(a1 + 8) == 1937011566)
      {
        result = 17;
      }

      else if (*a1 == 0x64785F504F5F5744 && *(a1 + 8) == 1717924453)
      {
        result = 24;
      }

      else if (*a1 == 0x72625F504F5F5744 && *(a1 + 8) == 808544101)
      {
        result = 122;
      }

      else if (*a1 == 0x72625F504F5F5744 && *(a1 + 8) == 825321317)
      {
        result = 123;
      }

      else if (*a1 == 0x72625F504F5F5744 && *(a1 + 8) == 842098533)
      {
        result = 124;
      }

      else if (*a1 == 0x72625F504F5F5744 && *(a1 + 8) == 858875749)
      {
        result = 125;
      }

      else if (*a1 == 0x72625F504F5F5744 && *(a1 + 8) == 875652965)
      {
        result = 126;
      }

      else if (*a1 == 0x72625F504F5F5744 && *(a1 + 8) == 892430181)
      {
        result = 127;
      }

      else if (*a1 == 0x72625F504F5F5744 && *(a1 + 8) == 909207397)
      {
        result = 128;
      }

      else if (*a1 == 0x72625F504F5F5744 && *(a1 + 8) == 925984613)
      {
        result = 129;
      }

      else if (*a1 == 0x72625F504F5F5744 && *(a1 + 8) == 942761829)
      {
        result = 130;
      }

      else if (*a1 == 0x72625F504F5F5744 && *(a1 + 8) == 959539045)
      {
        result = 131;
      }

      else if (*a1 == 0x72625F504F5F5744 && *(a1 + 8) == 808609637)
      {
        result = 132;
      }

      else if (*a1 == 0x72625F504F5F5744 && *(a1 + 8) == 825386853)
      {
        result = 133;
      }

      else if (*a1 == 0x72625F504F5F5744 && *(a1 + 8) == 842164069)
      {
        result = 134;
      }

      else if (*a1 == 0x72625F504F5F5744 && *(a1 + 8) == 858941285)
      {
        result = 135;
      }

      else if (*a1 == 0x72625F504F5F5744 && *(a1 + 8) == 875718501)
      {
        result = 136;
      }

      else if (*a1 == 0x72625F504F5F5744 && *(a1 + 8) == 892495717)
      {
        result = 137;
      }

      else if (*a1 == 0x72625F504F5F5744 && *(a1 + 8) == 909272933)
      {
        result = 138;
      }

      else if (*a1 == 0x72625F504F5F5744 && *(a1 + 8) == 926050149)
      {
        result = 139;
      }

      else if (*a1 == 0x72625F504F5F5744 && *(a1 + 8) == 942827365)
      {
        result = 140;
      }

      else if (*a1 == 0x72625F504F5F5744 && *(a1 + 8) == 959604581)
      {
        result = 141;
      }

      else if (*a1 == 0x72625F504F5F5744 && *(a1 + 8) == 808675173)
      {
        result = 142;
      }

      else if (*a1 == 0x72625F504F5F5744 && *(a1 + 8) == 825452389)
      {
        result = 143;
      }

      else if (*a1 == 0x6F635F504F5F5744 && *(a1 + 8) == 2020897646)
      {
        result = 162;
      }

      else
      {
        if (*a1 != 0x50485F504F5F5744 || *(a1 + 8) != 1936487519)
        {
          goto LABEL_886;
        }

        result = 230;
      }

      break;
    case 13:
      if (*a1 == 0x6F635F504F5F5744 && *(a1 + 5) == 0x753174736E6F635FLL)
      {
        result = 8;
      }

      else if (*a1 == 0x6F635F504F5F5744 && *(a1 + 5) == 0x733174736E6F635FLL)
      {
        result = 9;
      }

      else if (*a1 == 0x6F635F504F5F5744 && *(a1 + 5) == 0x753274736E6F635FLL)
      {
        result = 10;
      }

      else if (*a1 == 0x6F635F504F5F5744 && *(a1 + 5) == 0x733274736E6F635FLL)
      {
        result = 11;
      }

      else if (*a1 == 0x6F635F504F5F5744 && *(a1 + 5) == 0x753474736E6F635FLL)
      {
        result = 12;
      }

      else if (*a1 == 0x6F635F504F5F5744 && *(a1 + 5) == 0x733474736E6F635FLL)
      {
        result = 13;
      }

      else if (*a1 == 0x6F635F504F5F5744 && *(a1 + 5) == 0x753874736E6F635FLL)
      {
        result = 14;
      }

      else if (*a1 == 0x6F635F504F5F5744 && *(a1 + 5) == 0x733874736E6F635FLL)
      {
        result = 15;
      }

      else
      {
        if (*a1 != 0x6F635F504F5F5744 || *(a1 + 5) != 0x747265766E6F635FLL)
        {
          goto LABEL_886;
        }

        result = 168;
      }

      break;
    case 14:
      if (*a1 == 0x61635F504F5F5744 && *(a1 + 6) == 0x6665725F6C6C6163)
      {
        result = 154;
      }

      else
      {
        if (*a1 != 0x4C4C5F504F5F5744 || *(a1 + 6) != 0x6772615F4D564C4CLL)
        {
          goto LABEL_886;
        }

        result = 4101;
      }

      break;
    case 15:
      if (*a1 == 0x69625F504F5F5744 && *(a1 + 7) == 0x65636569705F7469)
      {
        result = 157;
      }

      else
      {
        if (*a1 != 0x4C4C5F504F5F5744 || *(a1 + 7) != 0x726573755F4D564CLL)
        {
          goto LABEL_886;
        }

        result = 233;
      }

      break;
    case 16:
      if (*a1 == 0x65645F504F5F5744 && *(a1 + 8) == 0x657A69735F666572)
      {
        result = 148;
      }

      else if (*a1 == 0x6F635F504F5F5744 && *(a1 + 8) == 0x657079745F74736ELL)
      {
        result = 164;
      }

      else
      {
        if (*a1 != 0x65645F504F5F5744 || *(a1 + 8) != 0x657079745F666572)
        {
          goto LABEL_886;
        }

        result = 166;
      }

      break;
    case 17:
      if (*a1 == 0x6C705F504F5F5744 && *(a1 + 8) == 0x736E6F63755F7375 && *(a1 + 16) == 116)
      {
        result = 35;
      }

      else if (*a1 == 0x64785F504F5F5744 && *(a1 + 8) == 0x7A69735F66657265 && *(a1 + 16) == 101)
      {
        result = 149;
      }

      else if (*a1 == 0x74735F504F5F5744 && *(a1 + 8) == 0x756C61765F6B6361 && *(a1 + 16) == 101)
      {
        result = 159;
      }

      else if (*a1 == 0x6E655F504F5F5744 && *(a1 + 8) == 0x756C61765F797274 && *(a1 + 16) == 101)
      {
        result = 163;
      }

      else if (*a1 == 0x65725F504F5F5744 && *(a1 + 8) == 0x7079745F6C617667 && *(a1 + 16) == 101)
      {
        result = 165;
      }

      else if (*a1 == 0x64785F504F5F5744 && *(a1 + 8) == 0x7079745F66657265 && *(a1 + 16) == 101)
      {
        result = 167;
      }

      else if (*a1 == 0x65725F504F5F5744 && *(a1 + 8) == 0x6572707265746E69 && *(a1 + 16) == 116)
      {
        result = 169;
      }

      else
      {
        if (*a1 != 0x50485F504F5F5744 || *(a1 + 8) != 0x756C61765F73695FLL || *(a1 + 16) != 101)
        {
          goto LABEL_886;
        }

        result = 225;
      }

      break;
    case 18:
      if (*a1 == 0x50485F504F5F5744 && *(a1 + 8) == 0x736E6F63746C665FLL && *(a1 + 16) == 13428)
      {
        result = 226;
      }

      else if (*a1 == 0x50485F504F5F5744 && *(a1 + 8) == 0x736E6F63746C665FLL && *(a1 + 16) == 14452)
      {
        result = 227;
      }

      else if (*a1 == 0x50485F504F5F5744 && *(a1 + 8) == 0x6E61725F646F6D5FLL && *(a1 + 16) == 25959)
      {
        result = 228;
      }

      else if (*a1 == 0x50415F504F5F5744 && *(a1 + 8) == 0x6E696E755F454C50 && *(a1 + 16) == 29801)
      {
        result = 240;
      }

      else
      {
        if (*a1 != 0x4C4C5F504F5F5744 || *(a1 + 8) != 0x65766E6F635F4D56 || *(a1 + 16) != 29810)
        {
          goto LABEL_886;
        }

        result = 4097;
      }

      break;
    case 19:
      if (*a1 == 0x41575F504F5F5744 && *(a1 + 8) == 0x7461636F6C5F4D53 && *(a1 + 11) == 0x6E6F697461636F6CLL)
      {
        result = 237;
      }

      else
      {
        if (*a1 != 0x4C4C5F504F5F5744 || *(a1 + 8) != 0x6D676172665F4D56 || *(a1 + 11) != 0x746E656D67617266)
        {
          goto LABEL_886;
        }

        result = 4096;
      }

      break;
    case 20:
      if (*a1 == 0x61635F504F5F5744 && *(a1 + 8) == 0x656D6172665F6C6CLL && *(a1 + 16) == 1634100063)
      {
        result = 156;
      }

      else if (*a1 == 0x6D695F504F5F5744 && *(a1 + 8) == 0x765F746963696C70 && *(a1 + 16) == 1702194273)
      {
        result = 158;
      }

      else if (*a1 == 0x50485F504F5F5744 && *(a1 + 8) == 0x725F646F6D6E755FLL && *(a1 + 16) == 1701277281)
      {
        result = 229;
      }

      else
      {
        if (*a1 != 0x4E475F504F5F5744 || *(a1 + 8) != 0x695F726464615F55 || *(a1 + 16) != 2019910766)
        {
          goto LABEL_886;
        }

        result = 251;
      }

      break;
    case 21:
      if (*a1 == 0x4E495F504F5F5744 && *(a1 + 8) == 0x5F7469625F4C4554 && *(a1 + 13) == 0x65636569705F7469)
      {
        result = 232;
      }

      else if (*a1 == 0x4E475F504F5F5744 && *(a1 + 8) == 0x5F7972746E655F55 && *(a1 + 13) == 0x65756C61765F7972)
      {
        result = 243;
      }

      else if (*a1 == 0x4E475F504F5F5744 && *(a1 + 8) == 0x5F74736E6F635F55 && *(a1 + 13) == 0x7865646E695F7473)
      {
        result = 252;
      }

      else
      {
        if (*a1 != 0x4C4C5F504F5F5744 || *(a1 + 8) != 0x6F5F6761745F4D56 || *(a1 + 13) != 0x74657366666F5F67)
        {
          goto LABEL_886;
        }

        result = 4098;
      }

      break;
    case 22:
      if (*a1 == 0x6F665F504F5F5744 && *(a1 + 8) == 0x615F736C745F6D72 && *(a1 + 14) == 0x737365726464615FLL)
      {
        result = 155;
      }

      else if (*a1 == 0x6D695F504F5F5744 && *(a1 + 8) == 0x705F746963696C70 && *(a1 + 14) == 0x7265746E696F705FLL)
      {
        result = 160;
      }

      else
      {
        if (*a1 != 0x4C4C5F504F5F5744 || *(a1 + 8) != 0x7972746E655F4D56 || *(a1 + 14) != 0x65756C61765F7972)
        {
          goto LABEL_886;
        }

        result = 4099;
      }

      break;
    case 23:
      if (*a1 != 0x41575F504F5F5744 || *(a1 + 8) != 0x7461636F6C5F4D53 || *(a1 + 15) != 0x746E695F6E6F6974)
      {
        goto LABEL_886;
      }

      result = 238;
      break;
    case 24:
      if (*a1 != 0x47505F504F5F5744 || *(a1 + 8) != 0x68745F706D6F5F49 || *(a1 + 16) != 0x6D756E5F64616572)
      {
        goto LABEL_886;
      }

      result = 248;
      break;
    case 25:
      if (*a1 != 0x75705F504F5F5744 || *(a1 + 8) != 0x63656A626F5F6873 || *(a1 + 16) != 0x7365726464615F74 || *(a1 + 24) != 115)
      {
        goto LABEL_886;
      }

      result = 151;
      break;
    case 26:
      if (*a1 != 0x4E475F504F5F5744 || *(a1 + 8) != 0x745F687375705F55 || *(a1 + 16) != 0x65726464615F736CLL || *(a1 + 24) != 29555)
      {
        goto LABEL_886;
      }

      result = 224;
      break;
    case 27:
      if (*a1 != 0x4C4C5F504F5F5744 || *(a1 + 8) != 0x696C706D695F4D56 || *(a1 + 16) != 0x6E696F705F746963 || *(a1 + 19) != 0x7265746E696F705FLL)
      {
        goto LABEL_886;
      }

      result = 4100;
      break;
    case 28:
      if (*a1 == 0x4C4C5F504F5F5744 && *(a1 + 8) == 0x61727478655F4D56 && *(a1 + 16) == 0x5F737469625F7463 && *(a1 + 24) == 1954047347)
      {
        result = 4102;
      }

      else
      {
        if (*a1 != 0x4C4C5F504F5F5744 || *(a1 + 8) != 0x61727478655F4D56 || *(a1 + 16) != 0x5F737469625F7463 || *(a1 + 24) != 1954047354)
        {
          goto LABEL_886;
        }

        result = 4103;
      }

      break;
    default:
LABEL_886:
      result = 0;
      break;
  }

  return result;
}

const char *llvm::dwarf::AttributeEncodingString(llvm::dwarf *this)
{
  if (this > 128)
  {
    v2 = "DW_ATE_HP_floathpintel";
    v3 = "DW_ATE_HP_imaginary_float90";
    v4 = "DW_ATE_HP_imaginary_float128";
    if (this != 134)
    {
      v4 = 0;
    }

    if (this != 133)
    {
      v3 = v4;
    }

    if (this != 132)
    {
      v2 = v3;
    }

    v5 = "DW_ATE_HP_complex_float";
    v6 = "DW_ATE_HP_float128";
    v7 = "DW_ATE_HP_complex_float128";
    if (this != 131)
    {
      v7 = 0;
    }

    if (this != 130)
    {
      v6 = v7;
    }

    if (this != 129)
    {
      v5 = v6;
    }

    if (this <= 131)
    {
      return v5;
    }

    else
    {
      return v2;
    }
  }

  else
  {
    switch(this)
    {
      case 1:
        result = "DW_ATE_address";
        break;
      case 2:
        result = "DW_ATE_BOOLean";
        break;
      case 3:
        result = "DW_ATE_complex_float";
        break;
      case 4:
        result = "DW_ATE_float";
        break;
      case 5:
        result = "DW_ATE_signed";
        break;
      case 6:
        result = "DW_ATE_signed_char";
        break;
      case 7:
        result = "DW_ATE_unsigned";
        break;
      case 8:
        result = "DW_ATE_unsigned_char";
        break;
      case 9:
        result = "DW_ATE_imaginary_float";
        break;
      case 10:
        result = "DW_ATE_packed_decimal";
        break;
      case 11:
        result = "DW_ATE_numeric_string";
        break;
      case 12:
        result = "DW_ATE_edited";
        break;
      case 13:
        result = "DW_ATE_signed_fixed";
        break;
      case 14:
        result = "DW_ATE_unsigned_fixed";
        break;
      case 15:
        result = "DW_ATE_decimal_float";
        break;
      case 16:
        result = "DW_ATE_UTF";
        break;
      case 17:
        result = "DW_ATE_UCS";
        break;
      case 18:
        result = "DW_ATE_ASCII";
        break;
      default:
        result = 0;
        break;
    }
  }

  return result;
}

uint64_t llvm::dwarf::getAttributeEncoding(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  switch(a2)
  {
    case 10:
      if (*a1 == 0x555F4554415F5744 && *(a1 + 8) == 18004)
      {
        v2 = 16;
      }

      else
      {
        if (*a1 != 0x555F4554415F5744 || *(a1 + 8) != 21315)
        {
          goto LABEL_169;
        }

        v2 = 17;
      }

      break;
    case 12:
      if (*a1 == 0x665F4554415F5744 && *(a1 + 8) == 1952542572)
      {
        v2 = 4;
      }

      else
      {
        if (*a1 != 0x415F4554415F5744 || *(a1 + 8) != 1229538131)
        {
          goto LABEL_169;
        }

        v2 = 18;
      }

      break;
    case 13:
      if (*a1 == 0x735F4554415F5744 && *(a1 + 5) == 0x64656E6769735F45)
      {
        v2 = 5;
      }

      else
      {
        if (*a1 != 0x655F4554415F5744 || *(a1 + 5) != 0x6465746964655F45)
        {
          goto LABEL_169;
        }

        v2 = 12;
      }

      break;
    case 14:
      if (*a1 == 0x615F4554415F5744 && *(a1 + 6) == 0x737365726464615FLL)
      {
        v2 = 1;
      }

      else
      {
        if (*a1 != 0x625F4554415F5744 || *(a1 + 6) != 0x6E61656C6F6F625FLL)
        {
          goto LABEL_169;
        }

        v2 = 2;
      }

      break;
    case 15:
      if (*a1 != 0x755F4554415F5744 || *(a1 + 7) != 0x64656E6769736E75)
      {
        goto LABEL_169;
      }

      v2 = 7;
      break;
    case 18:
      if (*a1 == 0x735F4554415F5744 && *(a1 + 8) == 0x68635F64656E6769 && *(a1 + 16) == 29281)
      {
        v2 = 6;
      }

      else
      {
        if (*a1 != 0x485F4554415F5744 || *(a1 + 8) != 0x3174616F6C665F50 || *(a1 + 16) != 14386)
        {
          goto LABEL_169;
        }

        v2 = 130;
      }

      break;
    case 19:
      if (*a1 != 0x735F4554415F5744 || *(a1 + 8) != 0x69665F64656E6769 || *(a1 + 11) != 0x64657869665F6465)
      {
        goto LABEL_169;
      }

      v2 = 13;
      break;
    case 20:
      if (*a1 == 0x635F4554415F5744 && *(a1 + 8) == 0x665F78656C706D6FLL && *(a1 + 16) == 1952542572)
      {
        v2 = 3;
      }

      else if (*a1 == 0x755F4554415F5744 && *(a1 + 8) == 0x5F64656E6769736ELL && *(a1 + 16) == 1918986339)
      {
        v2 = 8;
      }

      else
      {
        if (*a1 != 0x645F4554415F5744 || *(a1 + 8) != 0x665F6C616D696365 || *(a1 + 16) != 1952542572)
        {
          goto LABEL_169;
        }

        v2 = 15;
      }

      break;
    case 21:
      if (*a1 == 0x705F4554415F5744 && *(a1 + 8) == 0x65645F64656B6361 && *(a1 + 13) == 0x6C616D696365645FLL)
      {
        v2 = 10;
      }

      else if (*a1 == 0x6E5F4554415F5744 && *(a1 + 8) == 0x735F636972656D75 && *(a1 + 13) == 0x676E697274735F63)
      {
        v2 = 11;
      }

      else
      {
        if (*a1 != 0x755F4554415F5744 || *(a1 + 8) != 0x5F64656E6769736ELL || *(a1 + 13) != 0x64657869665F6465)
        {
          goto LABEL_169;
        }

        v2 = 14;
      }

      break;
    case 22:
      if (*a1 == 0x695F4554415F5744 && *(a1 + 8) == 0x7972616E6967616DLL && *(a1 + 14) == 0x74616F6C665F7972)
      {
        v2 = 9;
      }

      else
      {
        if (*a1 != 0x485F4554415F5744 || *(a1 + 8) != 0x6874616F6C665F50 || *(a1 + 14) != 0x6C65746E69706874)
        {
          goto LABEL_169;
        }

        v2 = 132;
      }

      break;
    case 23:
      if (*a1 != 0x485F4554415F5744 || *(a1 + 8) != 0x656C706D6F635F50 || *(a1 + 15) != 0x74616F6C665F7865)
      {
        goto LABEL_169;
      }

      v2 = 129;
      break;
    case 26:
      if (*a1 != 0x485F4554415F5744 || *(a1 + 8) != 0x656C706D6F635F50 || *(a1 + 16) != 0x3174616F6C665F78 || *(a1 + 24) != 14386)
      {
        goto LABEL_169;
      }

      v2 = 131;
      break;
    case 27:
      if (*a1 == 0x485F4554415F5744 && *(a1 + 8) == 0x6E6967616D695F50 && *(a1 + 16) == 0x616F6C665F797261 && *(a1 + 19) == 0x303974616F6C665FLL)
      {
        v2 = 133;
      }

      else
      {
LABEL_169:
        v2 = 0;
      }

      break;
    case 28:
      if (*a1 ^ 0x485F4554415F5744 | *(a1 + 8) ^ 0x6E6967616D695F50 | *(a1 + 16) ^ 0x616F6C665F797261 | *(a1 + 24) ^ 0x38323174)
      {
        v2 = 0;
      }

      else
      {
        v2 = 134;
      }

      break;
    default:
      return v2;
  }

  return v2;
}

const char *llvm::dwarf::LanguageString(llvm::dwarf *this)
{
  v1 = this;
  result = 0;
  if (v1 > 0x8000)
  {
    v3 = "DW_LANG_BORLAND_Delphi";
    if (v1 != 45056)
    {
      v3 = 0;
    }

    if (v1 == 36439)
    {
      v4 = "DW_LANG_GOOGLE_RenderScript";
    }

    else
    {
      v4 = v3;
    }

    if (v1 == 32769)
    {
      return "DW_LANG_Mips_Assembler";
    }

    else
    {
      return v4;
    }
  }

  else
  {
    switch(v1)
    {
      case 1:
        result = "DW_LANG_C89";
        break;
      case 2:
        result = "DW_LANG_C";
        break;
      case 3:
        result = "DW_LANG_Ada83";
        break;
      case 4:
        result = "DW_LANG_C_plus_plus";
        break;
      case 5:
        result = "DW_LANG_Cobol74";
        break;
      case 6:
        result = "DW_LANG_Cobol85";
        break;
      case 7:
        result = "DW_LANG_Fortran77";
        break;
      case 8:
        result = "DW_LANG_Fortran90";
        break;
      case 9:
        result = "DW_LANG_Pascal83";
        break;
      case 10:
        result = "DW_LANG_Modula2";
        break;
      case 11:
        result = "DW_LANG_Java";
        break;
      case 12:
        result = "DW_LANG_C99";
        break;
      case 13:
        result = "DW_LANG_Ada95";
        break;
      case 14:
        result = "DW_LANG_Fortran95";
        break;
      case 15:
        result = "DW_LANG_PLI";
        break;
      case 16:
        result = "DW_LANG_ObjC";
        break;
      case 17:
        result = "DW_LANG_ObjC_plus_plus";
        break;
      case 18:
        result = "DW_LANG_UPC";
        break;
      case 19:
        result = "DW_LANG_D";
        break;
      case 20:
        result = "DW_LANG_Python";
        break;
      case 21:
        result = "DW_LANG_OpenCL";
        break;
      case 22:
        result = "DW_LANG_Go";
        break;
      case 23:
        result = "DW_LANG_Modula3";
        break;
      case 24:
        result = "DW_LANG_Haskell";
        break;
      case 25:
        result = "DW_LANG_C_plus_plus_03";
        break;
      case 26:
        result = "DW_LANG_C_plus_plus_11";
        break;
      case 27:
        result = "DW_LANG_OCaml";
        break;
      case 28:
        result = "DW_LANG_Rust";
        break;
      case 29:
        result = "DW_LANG_C11";
        break;
      case 30:
        result = "DW_LANG_Swift";
        break;
      case 31:
        result = "DW_LANG_Julia";
        break;
      case 32:
        result = "DW_LANG_Dylan";
        break;
      case 33:
        result = "DW_LANG_C_plus_plus_14";
        break;
      case 34:
        result = "DW_LANG_Fortran03";
        break;
      case 35:
        result = "DW_LANG_Fortran08";
        break;
      case 36:
        result = "DW_LANG_RenderScript";
        break;
      case 37:
        result = "DW_LANG_BLISS";
        break;
      case 38:
        result = "DW_LANG_Kotlin";
        break;
      case 39:
        result = "DW_LANG_Zig";
        break;
      case 40:
        result = "DW_LANG_Crystal";
        break;
      case 42:
        result = "DW_LANG_C_plus_plus_17";
        break;
      case 43:
        result = "DW_LANG_C_plus_plus_20";
        break;
      case 44:
        result = "DW_LANG_C17";
        break;
      case 45:
        result = "DW_LANG_Fortran18";
        break;
      case 46:
        result = "DW_LANG_Ada2005";
        break;
      case 47:
        result = "DW_LANG_Ada2012";
        break;
      case 48:
        result = "DW_LANG_HIP";
        break;
      case 49:
        result = "DW_LANG_Assembly";
        break;
      case 50:
        result = "DW_LANG_C_sharp";
        break;
      case 51:
        result = "DW_LANG_Mojo";
        break;
      case 52:
        result = "DW_LANG_GLSL";
        break;
      case 53:
        result = "DW_LANG_GLSL_ES";
        break;
      case 54:
        result = "DW_LANG_HLSL";
        break;
      case 55:
        result = "DW_LANG_OpenCL_CPP";
        break;
      case 56:
        result = "DW_LANG_CPP_for_OpenCL";
        break;
      case 57:
        result = "DW_LANG_SYCL";
        break;
      case 61:
        result = "DW_LANG_Metal";
        break;
      case 64:
        result = "DW_LANG_Ruby";
        break;
      case 65:
        result = "DW_LANG_Move";
        break;
      case 66:
        result = "DW_LANG_Hylo";
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t llvm::dwarf::getLanguage(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 9:
      if (*a1 == 0x5F474E414C5F5744 && *(a1 + 8) == 67)
      {
        result = 2;
      }

      else
      {
        if (*a1 != 0x5F474E414C5F5744 || *(a1 + 8) != 68)
        {
          goto LABEL_296;
        }

        result = 19;
      }

      break;
    case 10:
      if (*a1 != 0x5F474E414C5F5744 || *(a1 + 8) != 28487)
      {
        goto LABEL_296;
      }

      result = 22;
      break;
    case 11:
      if (*a1 == 0x5F474E414C5F5744 && *(a1 + 3) == 0x3938435F474E414CLL)
      {
        result = 1;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 3) == 0x3939435F474E414CLL)
      {
        result = 12;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 3) == 0x494C505F474E414CLL)
      {
        result = 15;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 3) == 0x4350555F474E414CLL)
      {
        result = 18;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 3) == 0x3131435F474E414CLL)
      {
        result = 29;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 3) == 0x67695A5F474E414CLL)
      {
        result = 39;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 3) == 0x3731435F474E414CLL)
      {
        result = 44;
      }

      else
      {
        if (*a1 != 0x5F474E414C5F5744 || *(a1 + 3) != 0x5049485F474E414CLL)
        {
          goto LABEL_296;
        }

        result = 48;
      }

      break;
    case 12:
      if (*a1 == 0x5F474E414C5F5744 && *(a1 + 8) == 1635148106)
      {
        result = 11;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 8) == 1131045455)
      {
        result = 16;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 8) == 1953723730)
      {
        result = 28;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 8) == 1869246285)
      {
        result = 51;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 8) == 1280527431)
      {
        result = 52;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 8) == 1280527432)
      {
        result = 54;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 8) == 1279482195)
      {
        result = 57;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 8) == 2036495698)
      {
        result = 64;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 8) == 1702260557)
      {
        result = 65;
      }

      else
      {
        if (*a1 != 0x5F474E414C5F5744 || *(a1 + 8) != 1869379912)
        {
          goto LABEL_296;
        }

        result = 66;
      }

      break;
    case 13:
      if (*a1 == 0x5F474E414C5F5744 && *(a1 + 5) == 0x33386164415F474ELL)
      {
        result = 3;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 5) == 0x35396164415F474ELL)
      {
        result = 13;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 5) == 0x6C6D61434F5F474ELL)
      {
        result = 27;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 5) == 0x74666977535F474ELL)
      {
        result = 30;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 5) == 0x61696C754A5F474ELL)
      {
        result = 31;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 5) == 0x6E616C79445F474ELL)
      {
        result = 32;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 5) == 0x5353494C425F474ELL)
      {
        result = 37;
      }

      else
      {
        if (*a1 != 0x5F474E414C5F5744 || *(a1 + 5) != 0x6C6174654D5F474ELL)
        {
          goto LABEL_296;
        }

        result = 61;
      }

      break;
    case 14:
      if (*a1 == 0x5F474E414C5F5744 && *(a1 + 6) == 0x6E6F687479505F47)
      {
        result = 20;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 6) == 0x4C436E65704F5F47)
      {
        result = 21;
      }

      else
      {
        if (*a1 != 0x5F474E414C5F5744 || *(a1 + 6) != 0x6E696C746F4B5F47)
        {
          goto LABEL_296;
        }

        result = 38;
      }

      break;
    case 15:
      if (*a1 == 0x5F474E414C5F5744 && *(a1 + 7) == 0x34376C6F626F435FLL)
      {
        result = 5;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 7) == 0x35386C6F626F435FLL)
      {
        result = 6;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 7) == 0x32616C75646F4D5FLL)
      {
        result = 10;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 7) == 0x33616C75646F4D5FLL)
      {
        result = 23;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 7) == 0x6C6C656B7361485FLL)
      {
        result = 24;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 7) == 0x6C6174737972435FLL)
      {
        result = 40;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 7) == 0x353030326164415FLL)
      {
        result = 46;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 7) == 0x323130326164415FLL)
      {
        result = 47;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 7) == 0x70726168735F435FLL)
      {
        result = 50;
      }

      else
      {
        if (*a1 != 0x5F474E414C5F5744 || *(a1 + 7) != 0x53455F4C534C475FLL)
        {
          goto LABEL_296;
        }

        result = 53;
      }

      break;
    case 16:
      if (*a1 == 0x5F474E414C5F5744 && *(a1 + 8) == 0x33386C6163736150)
      {
        result = 9;
      }

      else
      {
        if (*a1 != 0x5F474E414C5F5744 || *(a1 + 8) != 0x796C626D65737341)
        {
          goto LABEL_296;
        }

        result = 49;
      }

      break;
    case 17:
      if (*a1 == 0x5F474E414C5F5744 && *(a1 + 8) == 0x376E617274726F46 && *(a1 + 16) == 55)
      {
        result = 7;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 8) == 0x396E617274726F46 && *(a1 + 16) == 48)
      {
        result = 8;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 8) == 0x396E617274726F46 && *(a1 + 16) == 53)
      {
        result = 14;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 8) == 0x306E617274726F46 && *(a1 + 16) == 51)
      {
        result = 34;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 8) == 0x306E617274726F46 && *(a1 + 16) == 56)
      {
        result = 35;
      }

      else
      {
        if (*a1 != 0x5F474E414C5F5744 || *(a1 + 8) != 0x316E617274726F46 || *(a1 + 16) != 56)
        {
          goto LABEL_296;
        }

        result = 45;
      }

      break;
    case 18:
      if (*a1 != 0x5F474E414C5F5744 || *(a1 + 8) != 0x435F4C436E65704FLL || *(a1 + 16) != 20560)
      {
        goto LABEL_296;
      }

      result = 55;
      break;
    case 19:
      if (*a1 != 0x5F474E414C5F5744 || *(a1 + 8) != 0x705F73756C705F43 || *(a1 + 11) != 0x73756C705F73756CLL)
      {
        goto LABEL_296;
      }

      result = 4;
      break;
    case 20:
      if (*a1 != 0x5F474E414C5F5744 || *(a1 + 8) != 0x63537265646E6552 || *(a1 + 16) != 1953524082)
      {
        goto LABEL_296;
      }

      result = 36;
      break;
    case 22:
      if (*a1 == 0x5F474E414C5F5744 && *(a1 + 8) == 0x756C705F436A624FLL && *(a1 + 14) == 0x73756C705F73756CLL)
      {
        result = 17;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 8) == 0x705F73756C705F43 && *(a1 + 14) == 0x33305F73756C705FLL)
      {
        result = 25;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 8) == 0x705F73756C705F43 && *(a1 + 14) == 0x31315F73756C705FLL)
      {
        result = 26;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 8) == 0x705F73756C705F43 && *(a1 + 14) == 0x34315F73756C705FLL)
      {
        result = 33;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 8) == 0x705F73756C705F43 && *(a1 + 14) == 0x37315F73756C705FLL)
      {
        result = 42;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 8) == 0x705F73756C705F43 && *(a1 + 14) == 0x30325F73756C705FLL)
      {
        result = 43;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 8) == 0x5F726F665F505043 && *(a1 + 14) == 0x4C436E65704F5F72)
      {
        result = 56;
      }

      else if (*a1 == 0x5F474E414C5F5744 && *(a1 + 8) == 0x7373415F7370694DLL && *(a1 + 14) == 0x72656C626D657373)
      {
        result = 32769;
      }

      else
      {
        if (*a1 != 0x5F474E414C5F5744 || *(a1 + 8) != 0x5F444E414C524F42 || *(a1 + 14) != 0x6968706C65445F44)
        {
          goto LABEL_296;
        }

        result = 45056;
      }

      break;
    case 27:
      if (*a1 != 0x5F474E414C5F5744 || *(a1 + 8) != 0x525F454C474F4F47 || *(a1 + 16) != 0x7263537265646E65 || *(a1 + 19) != 0x7470697263537265)
      {
        goto LABEL_296;
      }

      result = 36439;
      break;
    default:
LABEL_296:
      result = 0;
      break;
  }

  return result;
}

const char *llvm::dwarf::ConventionString(llvm::dwarf *this)
{
  if (this <= 64)
  {
    v3 = "DW_CC_pass_by_reference";
    v4 = "DW_CC_pass_by_value";
    v5 = "DW_CC_GNU_renesas_sh";
    if (this != 64)
    {
      v5 = 0;
    }

    if (this != 5)
    {
      v4 = v5;
    }

    if (this != 4)
    {
      v3 = v4;
    }

    v6 = "DW_CC_normal";
    v7 = "DW_CC_program";
    v8 = "DW_CC_nocall";
    if (this != 3)
    {
      v8 = 0;
    }

    if (this != 2)
    {
      v7 = v8;
    }

    if (this != 1)
    {
      v6 = v7;
    }

    if (this <= 3)
    {
      return v6;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    v1 = this - 176;
    result = 0;
    switch(v1)
    {
      case 0:
        result = "DW_CC_BORLAND_safecall";
        break;
      case 1:
        result = "DW_CC_BORLAND_stdcall";
        break;
      case 2:
        result = "DW_CC_BORLAND_pascal";
        break;
      case 3:
        result = "DW_CC_BORLAND_msfastcall";
        break;
      case 4:
        result = "DW_CC_BORLAND_msreturn";
        break;
      case 5:
        result = "DW_CC_BORLAND_thiscall";
        break;
      case 6:
        result = "DW_CC_BORLAND_fastcall";
        break;
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
        return result;
      case 16:
        result = "DW_CC_LLVM_vectorcall";
        break;
      case 17:
        result = "DW_CC_LLVM_Win64";
        break;
      case 18:
        result = "DW_CC_LLVM_X86_64SysV";
        break;
      case 19:
        result = "DW_CC_LLVM_AAPCS";
        break;
      case 20:
        result = "DW_CC_LLVM_AAPCS_VFP";
        break;
      case 21:
        result = "DW_CC_LLVM_IntelOclBicc";
        break;
      case 22:
        result = "DW_CC_LLVM_SpirFunction";
        break;
      case 23:
        result = "DW_CC_LLVM_OpenCLKernel";
        break;
      case 24:
        result = "DW_CC_LLVM_Swift";
        break;
      case 25:
        result = "DW_CC_LLVM_PreserveMost";
        break;
      case 26:
        result = "DW_CC_LLVM_PreserveAll";
        break;
      case 27:
        result = "DW_CC_LLVM_X86RegCall";
        break;
      case 28:
        result = "DW_CC_LLVM_M68kRTD";
        break;
      case 29:
        result = "DW_CC_LLVM_PreserveNone";
        break;
      case 30:
        result = "DW_CC_LLVM_RISCVVectorCall";
        break;
      case 31:
        result = "DW_CC_LLVM_SwiftTail";
        break;
      default:
        result = 0;
        break;
    }
  }

  return result;
}

uint64_t llvm::dwarf::getCallingConvention(uint64_t a1, uint64_t a2)
{
  if (a2 > 20)
  {
    if (a2 <= 23)
    {
      if (a2 == 21)
      {
        if (*a1 == 0x4F425F43435F5744 && *(a1 + 8) == 0x74735F444E414C52 && *(a1 + 13) == 0x6C6C61636474735FLL)
        {
          return 177;
        }

        else if (*a1 == 0x4C4C5F43435F5744 && *(a1 + 8) == 0x6F746365765F4D56 && *(a1 + 13) == 0x6C6C6163726F7463)
        {
          return 192;
        }

        else
        {
          if (*a1 != 0x4C4C5F43435F5744 || *(a1 + 8) != 0x365F3638585F4D56 || *(a1 + 13) != 0x5673795334365F36)
          {
            if (*a1 == 0x4C4C5F43435F5744 && *(a1 + 8) == 0x65523638585F4D56 && *(a1 + 13) == 0x6C6C614367655236)
            {
              return 203;
            }

            return 0;
          }

          return 194;
        }
      }

      else if (a2 == 22)
      {
        if (*a1 == 0x4F425F43435F5744 && *(a1 + 8) == 0x61735F444E414C52 && *(a1 + 14) == 0x6C6C616365666173)
        {
          return 176;
        }

        else if (*a1 == 0x4F425F43435F5744 && *(a1 + 8) == 0x736D5F444E414C52 && *(a1 + 14) == 0x6E7275746572736DLL)
        {
          return 180;
        }

        else if (*a1 == 0x4F425F43435F5744 && *(a1 + 8) == 0x68745F444E414C52 && *(a1 + 14) == 0x6C6C616373696874)
        {
          return 181;
        }

        else
        {
          if (*a1 != 0x4F425F43435F5744 || *(a1 + 8) != 0x61665F444E414C52 || *(a1 + 14) != 0x6C6C616374736166)
          {
            if (*a1 == 0x4C4C5F43435F5744 && *(a1 + 8) == 0x65736572505F4D56 && *(a1 + 14) == 0x6C6C416576726573)
            {
              return 202;
            }

            return 0;
          }

          return 182;
        }
      }

      else if (*a1 == 0x61705F43435F5744 && *(a1 + 8) == 0x65725F79625F7373 && *(a1 + 15) == 0x65636E6572656665)
      {
        return 4;
      }

      else if (*a1 == 0x4C4C5F43435F5744 && *(a1 + 8) == 0x6C65746E495F4D56 && *(a1 + 15) == 0x636369426C634F6CLL)
      {
        return 197;
      }

      else if (*a1 == 0x4C4C5F43435F5744 && *(a1 + 8) == 0x46726970535F4D56 && *(a1 + 15) == 0x6E6F6974636E7546)
      {
        return 198;
      }

      else if (*a1 == 0x4C4C5F43435F5744 && *(a1 + 8) == 0x436E65704F5F4D56 && *(a1 + 15) == 0x6C656E72654B4C43)
      {
        return 199;
      }

      else
      {
        if (*a1 != 0x4C4C5F43435F5744 || *(a1 + 8) != 0x65736572505F4D56 || *(a1 + 15) != 0x74736F4D65767265)
        {
          if (*a1 == 0x4C4C5F43435F5744 && *(a1 + 8) == 0x65736572505F4D56 && *(a1 + 15) == 0x656E6F4E65767265)
          {
            return 205;
          }

          return 0;
        }

        return 201;
      }
    }

    if (a2 == 24)
    {
      if (*a1 == 0x4F425F43435F5744 && *(a1 + 8) == 0x736D5F444E414C52 && *(a1 + 16) == 0x6C6C616374736166)
      {
        return 179;
      }

      return 0;
    }

    if (a2 != 26)
    {
      if (a2 == 31)
      {
        v26 = *a1 == 0x4E475F43435F5744 && *(a1 + 8) == 0x6E616C726F625F55;
        v27 = v26 && *(a1 + 16) == 0x6163747361665F64;
        if (v27 && *(a1 + 23) == 0x363833695F6C6C61)
        {
          return 65;
        }
      }

      return 0;
    }

    if (*a1 == 0x4C4C5F43435F5744 && *(a1 + 8) == 0x56435349525F4D56 && *(a1 + 16) == 0x6143726F74636556 && *(a1 + 24) == 27756)
    {
      return 206;
    }

    return 0;
  }

  if (a2 > 17)
  {
    if (a2 == 18)
    {
      if (*a1 == 0x4C4C5F43435F5744 && *(a1 + 8) == 0x526B38364D5F4D56 && *(a1 + 16) == 17492)
      {
        return 204;
      }

      return 0;
    }

    if (a2 == 19)
    {
      if (*a1 == 0x61705F43435F5744 && *(a1 + 8) == 0x61765F79625F7373 && *(a1 + 11) == 0x65756C61765F7962)
      {
        return 5;
      }

      return 0;
    }

    if (*a1 == 0x4E475F43435F5744 && *(a1 + 8) == 0x6173656E65725F55 && *(a1 + 16) == 1752391539)
    {
      return 64;
    }

    if (*a1 == 0x4F425F43435F5744 && *(a1 + 8) == 0x61705F444E414C52 && *(a1 + 16) == 1818321779)
    {
      return 178;
    }

    if (*a1 == 0x4C4C5F43435F5744 && *(a1 + 8) == 0x53435041415F4D56 && *(a1 + 16) == 1346786911)
    {
      return 196;
    }

    if (*a1 == 0x4C4C5F43435F5744 && *(a1 + 8) == 0x74666977535F4D56 && *(a1 + 16) == 1818845524)
    {
      return 207;
    }

    if (*a1 ^ 0x44475F43435F5744 | *(a1 + 8) ^ 0x704F5F4D42495F42 | *(a1 + 16) ^ 0x4C436E65)
    {
      return 0;
    }

    return 255;
  }

  if (a2 == 12)
  {
    if (*a1 != 0x6F6E5F43435F5744 || *(a1 + 8) != 1818324338)
    {
      if (*a1 == 0x6F6E5F43435F5744 && *(a1 + 8) == 1819042147)
      {
        return 3;
      }

      return 0;
    }

    return 1;
  }

  if (a2 == 13)
  {
    if (*a1 == 0x72705F43435F5744 && *(a1 + 5) == 0x6D6172676F72705FLL)
    {
      return 2;
    }

    return 0;
  }

  if (a2 != 16)
  {
    return 0;
  }

  if (*a1 == 0x4C4C5F43435F5744 && *(a1 + 8) == 0x34366E69575F4D56)
  {
    return 193;
  }

  if (*a1 != 0x4C4C5F43435F5744 || *(a1 + 8) != 0x53435041415F4D56)
  {
    if (*a1 == 0x4C4C5F43435F5744 && *(a1 + 8) == 0x74666977535F4D56)
    {
      return 200;
    }

    return 0;
  }

  return 195;
}

void llvm::SmallVectorTemplateBase<unsigned char,true>::push_back(void *a1, char a2)
{
  v4 = a1[1];
  if ((v4 + 1) > a1[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v4 + 1, 1);
    v4 = a1[1];
  }

  *(*a1 + v4) = a2;
  ++a1[1];
}

llvm::DataLayout *llvm::DataLayout::DataLayout(llvm::DataLayout *this)
{
  *this = 0;
  *(this + 4) = 0;
  *(this + 12) = 0u;
  *(this + 4) = this + 56;
  *(this + 40) = xmmword_25D0A0590;
  *(this + 8) = this + 80;
  *(this + 9) = 0x600000000;
  llvm::SmallVectorImpl<llvm::DataLayout::PrimitiveSpec>::append<llvm::DataLayout::PrimitiveSpec const*,void>(this + 64, DefaultIntSpecs, DefaultFloatSpecs);
  *(this + 16) = this + 144;
  *(this + 17) = 0x400000000;
  llvm::SmallVectorImpl<llvm::DataLayout::PrimitiveSpec>::append<llvm::DataLayout::PrimitiveSpec const*,void>(this + 128, DefaultFloatSpecs, DefaultVectorSpecs);
  *(this + 22) = this + 192;
  *(this + 23) = 0xA00000000;
  llvm::SmallVectorImpl<llvm::DataLayout::PrimitiveSpec>::append<llvm::DataLayout::PrimitiveSpec const*,void>(this + 176, DefaultVectorSpecs, DefaultPointerSpecs);
  *(this + 34) = this + 288;
  *(this + 35) = 0x800000000;
  llvm::SmallVectorImpl<llvm::DataLayout::PointerSpec>::append<llvm::DataLayout::PointerSpec const*,void>(this + 272, DefaultPointerSpecs, __const__ZN4mlir3scf11ConditionOp27getODSOperandIndexAndLengthEj_isVariadic);
  *(this + 56) = 0;
  *(this + 57) = 0;
  *(this + 58) = 0;
  *(this + 236) = 768;
  *(this + 60) = 0;
  return this;
}

void llvm::DataLayout::parseLayoutString(uint64_t a1@<X0>, const void *a2@<X1>, size_t a3@<X2>, uint64_t *a4@<X8>)
{
  v99 = *MEMORY[0x277D85DE8];
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a3 >= 0x17)
  {
    operator new();
  }

  __dst[23] = a3;
  if (a3)
  {
    memmove(__dst, a2, a3);
  }

  __dst[a3] = 0;
  if (*(a1 + 471) < 0)
  {
    operator delete(*(a1 + 448));
  }

  *(a1 + 448) = *__dst;
  *(a1 + 464) = *&__dst[16];
  if (a3)
  {
    v90 = v92;
    v91 = 0x800000000;
    __dst[0] = 45;
    *&__dst[8] = 0;
    *&__dst[16] = 0;
    *&__dst[24] = a2;
    *&__dst[32] = a3;
    *&v94 = __dst;
    *(&v94 + 1) = 1;
    llvm::StringRef::split(&__dst[24], __dst, 1uLL, __p);
    *&__dst[8] = *__p;
    *&__dst[24] = *&__p[16];
    __p[0] = 45;
    memset(&__p[8], 0, 32);
    *&v89 = __p;
    *(&v89 + 1) = 1;
    llvm::StringRef::split(&__p[24], __p, 1uLL, v86);
    *&__p[8] = *v86;
    *&__p[24] = *&v86[16];
    v73 = *&__dst[8];
    v72 = __dst[0];
    v74 = *&__dst[24];
    v75 = v94;
    if (v94 == __dst)
    {
      *&v75 = &v72;
      *(&v75 + 1) = 1;
    }

    v76 = __p[0];
    v77 = *&__p[8];
    v78 = *&__p[24];
    v79 = v89;
    if (v89 == __p)
    {
      *&v79 = &v76;
      *(&v79 + 1) = 1;
    }

    v68 = __dst[0];
    v69 = v73;
    v70 = v74;
    v71 = v75;
    if (v75 == &v72)
    {
      *&v71 = &v68;
      *(&v71 + 1) = 1;
    }

    v64 = __p[0];
    v65 = v77;
    v66 = v78;
    v67 = v79;
    if (v79 == &v76)
    {
      *&v67 = &v64;
      *(&v67 + 1) = 1;
    }

    v8 = v69;
    if (v69 != v65)
    {
      do
      {
        if (!*(&v69 + 1))
        {
          getErrorErrorCat();
          operator new();
        }

        v9 = *(&v69 + 1) - 1;
        if (*(&v69 + 1) != 1 && *v8 == 26990)
        {
          if (*(&v69 + 1) == 2 || v8[2] != 58)
          {
            v14 = "ni:<address space>[:<address space>]...";
            goto LABEL_58;
          }

          __p[0] = 58;
          *&__p[8] = 0;
          *&__p[16] = 0;
          *&__p[24] = v8 + 3;
          *&__p[32] = *(&v69 + 1) - 3;
          *&v89 = __p;
          *(&v89 + 1) = 1;
          llvm::StringRef::split(&__p[24], __p, 1uLL, v86);
          *&__p[8] = *v86;
          *&__p[24] = *&v86[16];
          v86[0] = 58;
          memset(&v86[8], 0, 32);
          *&v87 = v86;
          *(&v87 + 1) = 1;
          llvm::StringRef::split(&v86[24], v86, 1uLL, &v82);
          *&v86[8] = v82;
          *&v86[24] = v83;
          __dst[0] = __p[0];
          *&__dst[8] = *&__p[8];
          *&__dst[24] = *&__p[24];
          v94 = v89;
          if (v89 == __p)
          {
            *&v94 = __dst;
            *(&v94 + 1) = 1;
          }

          v95 = v86[0];
          v96 = *&v86[8];
          v97 = *&v86[24];
          v98 = v87;
          if (v87 == v86)
          {
            *&v98 = &v95;
            *(&v98 + 1) = 1;
          }

          *&__p[8] = *&__dst[8];
          *&__p[24] = *&__dst[24];
          v89 = v94;
          if (v94 == __dst)
          {
            *&v89 = __p;
            *(&v89 + 1) = 1;
          }

          *&v86[8] = v96;
          *&v86[24] = v97;
          v87 = v98;
          if (v98 == &v95)
          {
            *&v87 = v86;
            *(&v87 + 1) = 1;
          }

          while (*&__p[8] != *&v86[8])
          {
            v85 = 0;
            parseAddrSpace(a4, *&__p[8], *&__p[16], &v85);
            if (*a4)
            {
              goto LABEL_83;
            }

            if (!v85)
            {
              getErrorErrorCat();
              operator new();
            }

            llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v90, v85);
            llvm::StringRef::split(&__p[24], v89, *(&v89 + 1), &v82);
            *&__p[8] = v82;
            *&__p[24] = v83;
          }

          goto LABEL_148;
        }

        v10 = *v8;
        if (*v8 <= 0x68u)
        {
          if (v10 != 97)
          {
            if (v10 != 102)
            {
LABEL_35:
              v13 = v8 + 1;
              if (*v8 <= 0x52u)
              {
                if (*v8 > 0x45u)
                {
                  if (v10 == 70)
                  {
                    if (*(&v69 + 1) == 1)
                    {
                      v14 = "F<type><abi>";
                      goto LABEL_58;
                    }

                    v41 = v8[1];
                    if (v41 == 105)
                    {
                      v42 = 0;
                    }

                    else
                    {
                      if (v41 != 110)
                      {
                        *v86 = "unknown function pointer alignment type '";
                        *&v86[32] = 259;
                        v84 = 264;
                        v82.n128_u8[0] = v41;
                        llvm::operator+(v86, &v82, __p);
                        v80 = "'";
                        v81 = 259;
                        llvm::operator+(__p, &v80, __dst);
                        llvm::createStringError(a4, __dst);
                      }

                      v42 = 1;
                    }

                    v53 = *(&v69 + 1) - 2;
                    *(a1 + 20) = v42;
                    __dst[0] = 0;
                    parseAlignment(a4, (v8 + 2), v53, __dst, "ABI", 3, 0);
                    if (*a4)
                    {
                      goto LABEL_208;
                    }

                    *(a1 + 18) = __dst[0] | 0x100;
                  }

                  else
                  {
                    if (v10 == 71)
                    {
                      if (*(&v69 + 1) == 1)
                      {
                        v14 = "G<address space>";
                        goto LABEL_58;
                      }

                      v40 = (a1 + 12);
                    }

                    else
                    {
                      if (v10 != 80)
                      {
                        goto LABEL_93;
                      }

                      if (*(&v69 + 1) == 1)
                      {
                        v14 = "P<address space>";
                        goto LABEL_58;
                      }

                      v40 = (a1 + 8);
                    }

LABEL_147:
                    parseAddrSpace(a4, v13, v9, v40);
                    if (*a4)
                    {
                      goto LABEL_208;
                    }
                  }

LABEL_148:
                  *a4 = 0;
                  goto LABEL_84;
                }

                if (v10 == 65)
                {
                  if (*(&v69 + 1) == 1)
                  {
                    v14 = "A<address space>";
                    goto LABEL_58;
                  }

                  v40 = (a1 + 4);
                  goto LABEL_147;
                }

                if (v10 != 69)
                {
                  goto LABEL_93;
                }

LABEL_96:
                if (*(&v69 + 1) != 1)
                {
                  getErrorErrorCat();
                  operator new();
                }

                *a1 = v10 == 69;
                goto LABEL_148;
              }

              if (*v8 <= 0x6Cu)
              {
                if (v10 == 83)
                {
                  if (*(&v69 + 1) == 1)
                  {
                    v14 = "S<size>";
                    goto LABEL_58;
                  }

                  __dst[0] = 0;
                  parseAlignment(a4, v13, v9, __dst, "stack natural", 13, 0);
                  if (*a4)
                  {
                    goto LABEL_208;
                  }

                  *(a1 + 16) = __dst[0] | 0x100;
                  goto LABEL_148;
                }

                if (v10 != 101)
                {
LABEL_93:
                  *__p = "unknown specifier '";
                  *&__p[16] = v63 & 0xFFFFFFFFFFFFFF00 | v10;
                  *&__p[32] = 2051;
                  *__dst = __p;
                  *&__dst[16] = "'";
                  *&__dst[32] = 770;
                  getErrorErrorCat();
                  llvm::Twine::str(__dst, v86);
                  v82.n128_u64[0] = 3;
                  v82.n128_u64[1] = &getErrorErrorCat(void)::ErrorErrorCat;
                  llvm::make_error<llvm::StringError,std::string &,std::error_code &>();
                }

                goto LABEL_96;
              }

              if (v10 != 109)
              {
                if (v10 == 110)
                {
                  __p[0] = 58;
                  *&__p[8] = 0;
                  *&__p[16] = 0;
                  *&__p[24] = v8 + 1;
                  *&__p[32] = *(&v69 + 1) - 1;
                  *&v89 = __p;
                  *(&v89 + 1) = 1;
                  llvm::StringRef::split(&__p[24], __p, 1uLL, v86);
                  *&__p[8] = *v86;
                  *&__p[24] = *&v86[16];
                  v86[0] = 58;
                  memset(&v86[8], 0, 32);
                  *&v87 = v86;
                  *(&v87 + 1) = 1;
                  llvm::StringRef::split(&v86[24], v86, 1uLL, &v82);
                  *&v86[8] = v82;
                  *&v86[24] = v83;
                  __dst[0] = __p[0];
                  *&__dst[8] = *&__p[8];
                  *&__dst[24] = *&__p[24];
                  v94 = v89;
                  if (v89 == __p)
                  {
                    *&v94 = __dst;
                    *(&v94 + 1) = 1;
                  }

                  v95 = v86[0];
                  v96 = *&v86[8];
                  v97 = *&v86[24];
                  v98 = v87;
                  if (v87 == v86)
                  {
                    *&v98 = &v95;
                    *(&v98 + 1) = 1;
                  }

                  *&__p[8] = *&__dst[8];
                  *&__p[24] = *&__dst[24];
                  v89 = v94;
                  if (v94 == __dst)
                  {
                    *&v89 = __p;
                    *(&v89 + 1) = 1;
                  }

                  *&v86[8] = v96;
                  *&v86[24] = v97;
                  v87 = v98;
                  if (v98 == &v95)
                  {
                    *&v87 = v86;
                    *(&v87 + 1) = 1;
                  }

                  while (*&__p[8] != *&v86[8])
                  {
                    v82.n128_u32[0] = 0;
                    parseSize(a4, *&__p[8], *&__p[16], v82.n128_u64, "size", 4);
                    if (*a4)
                    {
                      goto LABEL_83;
                    }

                    llvm::SmallVectorTemplateBase<unsigned char,true>::push_back((a1 + 32), v82.n128_i8[0]);
                    llvm::StringRef::split(&__p[24], v89, *(&v89 + 1), &v82);
                    *&__p[8] = v82;
                    *&__p[24] = v83;
                  }
                }

                else if (v10 != 115)
                {
                  goto LABEL_93;
                }

                goto LABEL_148;
              }

              if (*(&v69 + 1) == 1 || *v13 != 58)
              {
                goto LABEL_113;
              }

              if (*(&v69 + 1) != 3)
              {
                if (*(&v69 + 1) != 2)
                {
LABEL_194:
                  llvm::createStringError<>(a4, "unknown mangling mode");
                }

LABEL_113:
                v14 = "m:<mangling>";
LABEL_58:
                *__dst = v14;
                *&__dst[32] = 259;
                createSpecFormatError(a4, __dst);
              }

              v54 = v8[2];
              if (v54 <= 108)
              {
                if (v54 == 97)
                {
                  v55 = 7;
LABEL_198:
                  *(a1 + 24) = v55;
                  goto LABEL_148;
                }

                if (v54 != 101)
                {
                  if (v54 != 108)
                  {
                    goto LABEL_194;
                  }

                  v55 = 5;
                  goto LABEL_198;
                }

                v56 = 1;
              }

              else
              {
                if (v54 <= 118)
                {
                  if (v54 == 109)
                  {
                    v55 = 6;
                  }

                  else
                  {
                    if (v54 != 111)
                    {
                      goto LABEL_194;
                    }

                    v55 = 2;
                  }

                  goto LABEL_198;
                }

                if (v54 == 119)
                {
                  *(a1 + 24) = 3;
                  goto LABEL_148;
                }

                if (v54 != 120)
                {
                  goto LABEL_194;
                }

                v56 = 4;
              }

              *(a1 + 24) = v56;
              goto LABEL_148;
            }

LABEL_26:
            *__dst = &__dst[16];
            *&__dst[8] = 0x300000000;
            *__p = v8 + 1;
            *&__p[8] = *(&v69 + 1) - 1;
            llvm::StringRef::split(__p, __dst, 58, -1, 1);
            if ((*&__dst[8] & 0xFFFFFFFE) != 2)
            {
              *__p = v10;
              *&__p[16] = "<size>:<abi>[:<pref>]";
              v15 = 776;
              goto LABEL_80;
            }

            v82.n128_u32[0] = 0;
            parseSize(a4, **__dst, *(*__dst + 8), v82.n128_u64, "size", 4);
            if (*a4)
            {
              goto LABEL_81;
            }

            LOBYTE(v80) = 0;
            parseAlignment(a4, *(*__dst + 16), *(*__dst + 24), &v80, "ABI", 3, 0);
            if (*a4)
            {
              goto LABEL_81;
            }

            v11 = v82.n128_u32[0];
            v12 = v80;
            if (v10 == 105 && v82.n128_u32[0] == 8 && v80)
            {
              getErrorErrorCat();
              operator new();
            }

            __p[0] = v80;
            v27 = v80;
            if (*&__dst[8] < 3u)
            {
              goto LABEL_128;
            }

            parseAlignment(a4, *(*__dst + 32), *(*__dst + 40), __p, "preferred", 9, 0);
            if (!*a4)
            {
              v27 = __p[0];
              if (__p[0] < v12)
              {
                llvm::createStringError<>(a4, "preferred alignment cannot be less than the ABI alignment");
              }

LABEL_128:
              v28 = v27;
              v29 = 64;
              if (v10 != 105)
              {
                v29 = 176;
              }

              if (v10 == 102)
              {
                v29 = 128;
              }

              v30 = a1 + v29;
              v31 = *(a1 + v29);
              v32 = *(a1 + v29 + 8);
              if (v32)
              {
                v33 = v31;
                v34 = v32;
                do
                {
                  v35 = v34 >> 1;
                  v36 = &v33[8 * (v34 >> 1)];
                  v38 = *v36;
                  v37 = (v36 + 2);
                  v34 += ~(v34 >> 1);
                  if (v38 < v11)
                  {
                    v33 = v37;
                  }

                  else
                  {
                    v34 = v35;
                  }
                }

                while (v34);
                v39 = v32;
              }

              else
              {
                v39 = 0;
                v33 = v31;
              }

              if (v33 == &v31[8 * v39] || *v33 != v11)
              {
                v45 = (v12 << 32) | (v28 << 40) | v11;
                if (&v31[8 * v32] == v33)
                {
                  if (v32 >= *(v30 + 12))
                  {
                    v58 = v30;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(v30, (v30 + 16), v32 + 1, 8);
                    v30 = v58;
                    v32 = *(v58 + 8);
                    v31 = *v58;
                  }

                  *&v31[8 * v32] = v45;
                  ++*(v30 + 8);
                }

                else
                {
                  if (v32 >= *(v30 + 12))
                  {
                    v57 = v30;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(v30, (v30 + 16), v32 + 1, 8);
                    v30 = v57;
                    v46 = *v57;
                    v32 = *(v57 + 8);
                  }

                  else
                  {
                    v46 = v31;
                  }

                  v47 = &v46[v33 - v31];
                  *&v46[8 * v32] = *&v46[8 * v32 - 8];
                  v48 = *(v30 + 8);
                  v49 = *v30 + 8 * v48;
                  if ((v49 - 8) != v47)
                  {
                    v50 = v30;
                    memmove(v47 + 8, v47, v49 - 8 - v47 - 2);
                    v30 = v50;
                    LODWORD(v48) = *(v50 + 8);
                  }

                  *(v30 + 8) = v48 + 1;
                  *(v47 + 2) = WORD2(v45);
                  *v47 = v45;
                }
              }

              else
              {
                v33[4] = v12;
                v33[5] = v28;
              }

              *a4 = 0;
              goto LABEL_81;
            }

            goto LABEL_81;
          }

          *__dst = &__dst[16];
          *&__dst[8] = 0x300000000;
          *__p = v8 + 1;
          *&__p[8] = *(&v69 + 1) - 1;
          llvm::StringRef::split(__p, __dst, 58, -1, 1);
          if ((*&__dst[8] & 0xFFFFFFFE) != 2)
          {
            v16 = "a:<abi>[:<pref>]";
LABEL_79:
            *__p = v16;
            v15 = 259;
LABEL_80:
            *&__p[32] = v15;
            createSpecFormatError(a4, __p);
          }

          v18 = *__dst;
          v19 = *(*__dst + 8);
          if (v19)
          {
            v20 = **__dst;
            *v86 = 0;
            *__p = v20;
            *&__p[8] = v19;
            if ((llvm::consumeUnsignedInteger(__p, 0xA, v86, v17) & 1) != 0 || *&__p[8] || HIDWORD(*v86) || *v86)
            {
              getErrorErrorCat();
              __p[23] = 17;
              strcpy(__p, "size must be zero");
              *v86 = 3;
              *&v86[8] = &getErrorErrorCat(void)::ErrorErrorCat;
              llvm::make_error<llvm::StringError,std::string &,std::error_code &>();
            }

            v18 = *__dst;
          }

          v82.n128_u8[0] = 0;
          parseAlignment(a4, *(v18 + 16), *(v18 + 24), v82.n128_u64, "ABI", 3, 1);
          if (*a4)
          {
            goto LABEL_81;
          }

          v43 = v82.n128_u8[0];
          LOBYTE(v80) = v82.n128_u8[0];
          v44 = v82.n128_u8[0];
          if (*&__dst[8] >= 3u)
          {
            parseAlignment(a4, *(*__dst + 32), *(*__dst + 40), &v80, "preferred", 9, 0);
            if (*a4)
            {
              goto LABEL_81;
            }

            v44 = v80;
            if (v80 < v43)
            {
              getErrorErrorCat();
              operator new();
            }
          }

          *(a1 + 472) = v43;
          *(a1 + 473) = v44;
          *a4 = 0;
        }

        else
        {
          if (v10 == 118)
          {
            goto LABEL_26;
          }

          if (v10 != 112)
          {
            if (v10 != 105)
            {
              goto LABEL_35;
            }

            goto LABEL_26;
          }

          *__dst = &__dst[16];
          *&__dst[8] = 0x500000000;
          *__p = v8 + 1;
          *&__p[8] = *(&v69 + 1) - 1;
          llvm::StringRef::split(__p, __dst, 58, -1, 1);
          if ((*&__dst[8] - 6) <= 0xFFFFFFFC)
          {
            v16 = "p[<n>]:<size>:<abi>[:<pref>[:<idx>]]";
            goto LABEL_79;
          }

          *__p = 0;
          v21 = *__dst;
          v22 = *(*__dst + 8);
          if (v22)
          {
            parseAddrSpace(a4, **__dst, v22, __p);
            if (*a4)
            {
              goto LABEL_81;
            }

            v21 = *__dst;
          }

          *v86 = 0;
          parseSize(a4, *(v21 + 16), *(v21 + 24), v86, "pointer size", 12);
          if (!*a4)
          {
            LOBYTE(v80) = 0;
            parseAlignment(a4, *(*__dst + 32), *(*__dst + 40), &v80, "ABI", 3, 0);
            if (!*a4)
            {
              v23 = v80;
              LOBYTE(v85) = v80;
              if (*&__dst[8] <= 3u)
              {
                v51 = *v86;
                v24 = v80;
                v52 = *v86;
LABEL_167:
                llvm::DataLayout::setPointerSpec(a1, *__p, v52, v23, v24, v51, 0);
                *a4 = 0;
                goto LABEL_81;
              }

              parseAlignment(a4, *(*__dst + 48), *(*__dst + 56), &v85, "preferred", 9, 0);
              if (*a4)
              {
                goto LABEL_81;
              }

              v24 = v85;
              if (v85 < v23)
              {
                v25 = a4;
                v26 = "preferred alignment cannot be less than the ABI alignment";
                goto LABEL_77;
              }

              v52 = *v86;
              v82.n128_u32[0] = *v86;
              if (*&__dst[8] < 5u)
              {
                v51 = *v86;
                goto LABEL_167;
              }

              parseSize(a4, *(*__dst + 64), *(*__dst + 72), v82.n128_u64, "index size", 10);
              if (!*a4)
              {
                v51 = v82.n128_u32[0];
                if (v82.n128_u32[0] > v52)
                {
                  v25 = a4;
                  v26 = "index size cannot be larger than the pointer size";
LABEL_77:
                  llvm::createStringError<>(v25, v26);
                }

                goto LABEL_167;
              }
            }
          }
        }

LABEL_81:
        if (*__dst != &__dst[16])
        {
          free(*__dst);
        }

LABEL_83:
        if (*a4)
        {
          goto LABEL_208;
        }

LABEL_84:
        llvm::StringRef::split(&v70, v71, *(&v71 + 1), __dst);
        v69 = *__dst;
        v70 = *&__dst[16];
        v8 = *__dst;
      }

      while (*__dst != v65);
    }

    if (v91)
    {
      v59 = v90;
      v60 = 4 * v91;
      do
      {
        v61 = *v59++;
        PointerSpec = llvm::DataLayout::getPointerSpec(a1, v61);
        llvm::DataLayout::setPointerSpec(a1, v61, PointerSpec[1], *(PointerSpec + 8), *(PointerSpec + 9), PointerSpec[3], 1);
        v60 -= 4;
      }

      while (v60);
    }

    *a4 = 0;
LABEL_208:
    if (v90 != v92)
    {
      free(v90);
    }
  }

  else
  {
    *a4 = 0;
  }
}

uint64_t llvm::DataLayout::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 480);
  if (v4)
  {
    MEMORY[0x25F891040]();
  }

  *(a1 + 480) = 0;
  std::string::operator=((a1 + 448), (a2 + 448));
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 20) = *(a2 + 20);
  if (a1 != a2)
  {
    v5 = *(a2 + 40);
    v6 = *(a1 + 40);
    if (v6 >= v5)
    {
      if (v5)
      {
        memmove(*(a1 + 32), *(a2 + 32), *(a2 + 40));
      }
    }

    else
    {
      if (*(a1 + 48) >= v5)
      {
        if (v6)
        {
          memmove(*(a1 + 32), *(a2 + 32), *(a1 + 40));
        }
      }

      else
      {
        *(a1 + 40) = 0;
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a1 + 32, (a1 + 56), v5, 1);
        v6 = 0;
      }

      v7 = *(a2 + 40);
      if (v7 != v6)
      {
        memcpy((*(a1 + 32) + v6), (*(a2 + 32) + v6), v7 - v6);
      }
    }

    *(a1 + 40) = v5;
  }

  llvm::SmallVectorImpl<llvm::DataLayout::PrimitiveSpec>::operator=(a1 + 64, a2 + 64);
  llvm::SmallVectorImpl<llvm::DataLayout::PrimitiveSpec>::operator=(a1 + 128, a2 + 128);
  llvm::SmallVectorImpl<llvm::DataLayout::PrimitiveSpec>::operator=(a1 + 176, a2 + 176);
  if (a1 != a2)
  {
    v8 = *(a2 + 280);
    v9 = *(a1 + 280);
    if (v9 >= v8)
    {
      if (v8)
      {
        memmove(*(a1 + 272), *(a2 + 272), 20 * v8 - 3);
      }

      goto LABEL_25;
    }

    if (*(a1 + 284) >= v8)
    {
      if (v9)
      {
        memmove(*(a1 + 272), *(a2 + 272), 20 * v9 - 3);
        goto LABEL_23;
      }
    }

    else
    {
      *(a1 + 280) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 272, (a1 + 288), v8, 20);
    }

    v9 = 0;
LABEL_23:
    v10 = *(a2 + 280) - v9;
    if (v10)
    {
      memcpy((*(a1 + 272) + 20 * v9), (*(a2 + 272) + 20 * v9), 20 * v10);
    }

LABEL_25:
    *(a1 + 280) = v8;
  }

  *(a1 + 472) = *(a2 + 472);
  *(a1 + 473) = *(a2 + 473);
  return a1;
}

void anonymous namespace::StructLayoutMap::~StructLayoutMap(_anonymous_namespace_::StructLayoutMap *this)
{
  v2 = *(this + 2);
  v3 = *this;
  if (v2)
  {
    v4 = *(this + 4);
    v5 = v3;
    if (v4)
    {
      v6 = 16 * v4;
      v5 = v3;
      while ((*v5 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v5 += 16;
        v6 -= 16;
        if (!v6)
        {
          goto LABEL_13;
        }
      }
    }

    v7 = v3 + 16 * v4;
    if (v5 != v7)
    {
LABEL_8:
      free(*(v5 + 8));
      while (1)
      {
        v5 += 16;
        if (v5 == v7)
        {
          break;
        }

        if ((*v5 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          if (v5 != v7)
          {
            goto LABEL_8;
          }

          break;
        }
      }

      v3 = *this;
    }
  }

LABEL_13:
  MEMORY[0x25F891030](v3, 8);
}

void llvm::DataLayout::parse(const void *a1@<X0>, size_t a2@<X1>, llvm::DataLayout *a3@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  llvm::DataLayout::DataLayout(v8);
  llvm::DataLayout::parseLayoutString(v8, a1, a2, &v7);
  v6 = v7;
  if (v7)
  {
    *(a3 + 488) |= 1u;
    *a3 = v6;
  }

  else
  {
    *(a3 + 488) &= ~1u;
    llvm::DataLayout::DataLayout(a3, v8);
  }

  llvm::DataLayout::~DataLayout(v8);
}

void createSpecFormatError(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a2 + 32);
  if (v2 == 1)
  {
    v5 = "malformed specification, must be of the form ";
    v8[0] = "malformed specification, must be of the form ";
    v9 = 259;
    v3 = 3;
  }

  else
  {
    if (!*(a2 + 32))
    {
      v3 = 0;
      v9 = 256;
      v4 = 1;
      goto LABEL_9;
    }

    v6 = *a2;
    v7 = a2[1];
    v3 = 2;
    if (*(a2 + 33) != 1)
    {
      LOBYTE(v2) = 2;
      v6 = a2;
    }

    v8[0] = "malformed specification, must be of the form ";
    v8[2] = v6;
    v8[3] = v7;
    LOBYTE(v9) = 3;
    HIBYTE(v9) = v2;
    v5 = v8;
  }

  v10[0] = v5;
  v10[2] = "";
  v4 = 3;
LABEL_9:
  v11 = v3;
  v12 = v4;
  getErrorErrorCat();
  llvm::Twine::str(v10, v13);
  v13[3] = 3;
  v13[4] = &getErrorErrorCat(void)::ErrorErrorCat;
  llvm::make_error<llvm::StringError,std::string &,std::error_code &>();
}

void parseSize(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    v15 = 773;
    v12 = a5;
    v13 = a6;
    v11 = " component cannot be empty";
LABEL_9:
    v14 = v11;
    getErrorErrorCat();
    llvm::Twine::str(&v12, __p);
    __p[3] = 3;
    __p[4] = &getErrorErrorCat(void)::ErrorErrorCat;
    llvm::make_error<llvm::StringError,std::string &,std::error_code &>();
  }

  __p[0] = 0;
  v12 = a2;
  v13 = a3;
  if ((llvm::consumeUnsignedInteger(&v12, 0xA, __p, a4) & 1) != 0 || v13 || (v10 = __p[0], __p[0] >> 32) || (*a4 = __p[0], (v10 - 1) >= 0xFFFFFF))
  {
    v15 = 773;
    v12 = a5;
    v13 = a6;
    v11 = " must be a non-zero 24-bit integer";
    goto LABEL_9;
  }

  *a1 = 0;
}

void parseAlignment(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t a6, char a7)
{
  if (!a3)
  {
    v17 = 773;
    v14 = a5;
    v15 = a6;
    v13 = " alignment component cannot be empty";
    goto LABEL_12;
  }

  __p[0] = 0;
  v14 = a2;
  v15 = a3;
  if ((llvm::consumeUnsignedInteger(&v14, 0xA, __p, a4) & 1) != 0 || v15 || __p[0] >> 32 || __p[0] >= 0x10000)
  {
    v17 = 773;
    v14 = a5;
    v15 = a6;
    v13 = " alignment must be a 16-bit integer";
    goto LABEL_12;
  }

  if (!__p[0])
  {
    if (a7)
    {
      *a4 = 0;
      goto LABEL_16;
    }

    v17 = 773;
    v14 = a5;
    v15 = a6;
    v13 = " alignment must be non-zero";
LABEL_12:
    v16 = v13;
    getErrorErrorCat();
    llvm::Twine::str(&v14, __p);
    __p[3] = 3;
    __p[4] = &getErrorErrorCat(void)::ErrorErrorCat;
    llvm::make_error<llvm::StringError,std::string &,std::error_code &>();
  }

  if ((__p[0] & 7) != 0 || (v12 = LODWORD(__p[0]) >> 3, ((v12 - 1) & (LODWORD(__p[0]) >> 3)) != 0))
  {
    v17 = 773;
    v14 = a5;
    v15 = a6;
    v13 = " alignment must be a power of two times the byte width";
    goto LABEL_12;
  }

  *a4 = __clz(v12) ^ 0x3F;
LABEL_16:
  *a1 = 0;
}

void llvm::createStringError<>(uint64_t *a1, const char *a2)
{
  getErrorErrorCat();
  v3 = strlen(a2);
  if (v3 < 0x7FFFFFFFFFFFFFF8)
  {
    v4 = v3;
    if (v3 < 0x17)
    {
      v6 = v3;
      if (v3)
      {
        memcpy(&__dst, a2, v3);
      }

      *(&__dst + v4) = 0;
      v7 = 3;
      v8 = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,std::string &,std::error_code &>();
    }

    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void parseAddrSpace(uint64_t *a1, void *a2, uint64_t a3, unint64_t *a4)
{
  if (!a3)
  {
    getErrorErrorCat();
    operator new();
  }

  v9 = 0;
  __p = a2;
  *&v8 = a3;
  if ((llvm::consumeUnsignedInteger(&__p, 0xA, &v9, a4) & 1) != 0 || v8 || (v6 = v9, HIDWORD(v9)) || (*a4 = v9, v6 >> 24))
  {
    getErrorErrorCat();
    operator new();
  }

  *a1 = 0;
}

__n128 llvm::DataLayout::setPointerSpec(uint64_t a1, unsigned int a2, int a3, char a4, char a5, int a6, char a7)
{
  v8 = *(a1 + 272);
  v9 = *(a1 + 280);
  if (v9)
  {
    v10 = *(a1 + 272);
    v11 = *(a1 + 280);
    do
    {
      v12 = v11 >> 1;
      v13 = &v10[5 * (v11 >> 1)];
      v15 = *v13;
      v14 = v13 + 5;
      v11 += ~(v11 >> 1);
      if (v15 < a2)
      {
        v10 = v14;
      }

      else
      {
        v11 = v12;
      }
    }

    while (v11);
    v16 = *(a1 + 280);
  }

  else
  {
    v16 = 0;
    v10 = *(a1 + 272);
  }

  if (v10 == (v8 + 20 * v16) || *v10 != a2)
  {
    v32[0] = a2;
    v32[1] = a3;
    v33 = a4;
    v34 = a5;
    v35 = a6;
    v36 = a7;
    if ((v8 + 20 * v9) == v10)
    {
      v30 = llvm::SmallVectorTemplateCommon<llvm::DataLayout::PointerSpec,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::DataLayout::PointerSpec,true>>(a1 + 272, v32);
      v31 = (*(a1 + 272) + 20 * *(a1 + 280));
      result = *v30;
      v31[1].n128_u32[0] = v30[1].n128_u32[0];
      *v31 = result;
      ++*(a1 + 280);
    }

    else
    {
      v17 = v10 - v8;
      v18 = llvm::SmallVectorTemplateCommon<llvm::DataLayout::PointerSpec,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::DataLayout::PointerSpec,true>>(a1 + 272, v32);
      v19 = *(a1 + 272);
      v20 = (v19 + v17);
      v21 = v19 + 20 * *(a1 + 280);
      *(v21 + 16) = *(v21 - 4);
      *v21 = *(v21 - 20);
      v22 = *(a1 + 272);
      v23 = *(a1 + 280);
      v24 = v22 + 20 * v23;
      if ((v24 - 20) != v20)
      {
        memmove(&v20[1].n128_u8[4], v20, v24 - 20 - v20 - 3);
        v23 = *(a1 + 280);
        v22 = *(a1 + 272);
      }

      v25 = v23 + 1;
      *(a1 + 280) = v25;
      if (v18 < v22 + 20 * v25 && v18 >= v20)
      {
        v27 = 20;
      }

      else
      {
        v27 = 0;
      }

      v28 = (v18 + v27);
      result = *v28;
      v20[1].n128_u8[0] = v28[1].n128_u8[0];
      *v20 = result;
    }
  }

  else
  {
    v10[1] = a3;
    *(v10 + 8) = a4;
    *(v10 + 9) = a5;
    v10[3] = a6;
    *(v10 + 16) = a7;
  }

  return result;
}

void llvm::createStringError(llvm *this, const llvm::Twine *a2)
{
  getErrorErrorCat();
  llvm::Twine::str(a2, __p);
  __p[3] = 3;
  __p[4] = &getErrorErrorCat(void)::ErrorErrorCat;
  llvm::make_error<llvm::StringError,std::string &,std::error_code &>();
}

_DWORD *llvm::DataLayout::getPointerSpec(llvm::DataLayout *this, unsigned int a2)
{
  v2 = *(this + 34);
  if (!a2)
  {
    return v2;
  }

  v3 = *(this + 70);
  if (v3)
  {
    result = *(this + 34);
    v5 = v3;
    do
    {
      v6 = v5 >> 1;
      v7 = &result[5 * (v5 >> 1)];
      v9 = *v7;
      v8 = v7 + 5;
      v5 += ~(v5 >> 1);
      if (v9 < a2)
      {
        result = v8;
      }

      else
      {
        v5 = v6;
      }
    }

    while (v5);
  }

  else
  {
    LODWORD(v3) = 0;
    result = *(this + 34);
  }

  if (result == (v2 + 20 * v3) || *result != a2)
  {
    return v2;
  }

  return result;
}

void llvm::DataLayout::~DataLayout(llvm::DataLayout *this)
{
  v2 = *(this + 60);
  if (v2)
  {
    MEMORY[0x25F891040]();
  }

  if (*(this + 471) < 0)
  {
    operator delete(*(this + 56));
  }

  v3 = *(this + 34);
  if (v3 != this + 288)
  {
    free(v3);
  }

  v4 = *(this + 22);
  if (v4 != this + 192)
  {
    free(v4);
  }

  v5 = *(this + 16);
  if (v5 != this + 144)
  {
    free(v5);
  }

  v6 = *(this + 8);
  if (v6 != this + 80)
  {
    free(v6);
  }

  v7 = *(this + 4);
  if (v7 != this + 56)
  {
    free(v7);
  }
}

void llvm::SmallVectorImpl<llvm::DataLayout::PrimitiveSpec>::append<llvm::DataLayout::PrimitiveSpec const*,void>(uint64_t a1, _BYTE *__src, _BYTE *a3)
{
  v6 = a3 - __src;
  v7 = *(a1 + 8);
  v8 = v7 + ((a3 - __src) >> 3);
  if (v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 8);
    LODWORD(v7) = *(a1 + 8);
  }

  if (__src != a3)
  {
    memcpy((*a1 + 8 * v7), __src, v6);
    LODWORD(v7) = *(a1 + 8);
  }

  *(a1 + 8) = v7 + (v6 >> 3);
}

void llvm::SmallVectorImpl<llvm::DataLayout::PointerSpec>::append<llvm::DataLayout::PointerSpec const*,void>(uint64_t a1, _BYTE *__src, _BYTE *a3)
{
  v6 = a3 - __src;
  v7 = 0xCCCCCCCCCCCCCCCDLL * ((a3 - __src) >> 2);
  v8 = *(a1 + 8);
  if (v7 + v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v7 + v8, 20);
    LODWORD(v8) = *(a1 + 8);
  }

  if (__src != a3)
  {
    memcpy((*a1 + 20 * v8), __src, v6);
    LODWORD(v8) = *(a1 + 8);
  }

  *(a1 + 8) = v8 + v7;
}

uint64_t llvm::SmallVectorImpl<llvm::DataLayout::PrimitiveSpec>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, 8 * v4 - 2);
      }

      goto LABEL_12;
    }

    if (*(a1 + 12) >= v4)
    {
      if (v5)
      {
        memmove(*a1, *a2, 8 * v5 - 2);
        goto LABEL_10;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4, 8);
    }

    v5 = 0;
LABEL_10:
    v6 = *(a2 + 8) - v5;
    if (v6)
    {
      memcpy((*a1 + 8 * v5), (*a2 + 8 * v5), 8 * v6);
    }

LABEL_12:
    *(a1 + 8) = v4;
  }

  return a1;
}

uint64_t llvm::DataLayout::DataLayout(uint64_t this, uint64_t a2)
{
  *this = 0;
  *(this + 4) = 0;
  *(this + 12) = 0u;
  *(this + 32) = this + 56;
  *(this + 40) = xmmword_25D0A0590;
  *(this + 64) = this + 80;
  *(this + 72) = 0x600000000;
  *(this + 128) = this + 144;
  *(this + 136) = 0x400000000;
  *(this + 176) = this + 192;
  *(this + 184) = 0xA00000000;
  *(this + 272) = this + 288;
  *(this + 280) = 0x800000000;
  *(this + 456) = 0;
  *(this + 464) = 0;
  *(this + 448) = 0;
  *(this + 472) = 768;
  *(this + 480) = 0;
  return llvm::DataLayout::operator=(this, a2);
}

unint64_t llvm::SmallVectorTemplateCommon<llvm::DataLayout::PointerSpec,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::DataLayout::PointerSpec,true>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    if (*a1 <= a2 && *a1 + 20 * v3 > a2)
    {
      v6 = a2 - *a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v3 + 1, 20);
      return *a1 + v6;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v3 + 1, 20);
    }
  }

  return v2;
}

void anonymous namespace::PassRemarksOpt::~PassRemarksOpt(_anonymous_namespace_::PassRemarksOpt *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void llvm::cl::opt<anonymous namespace::PassRemarksOpt,true,llvm::cl::parser<std::string>>::~opt(void **a1)
{
  *a1 = &unk_286E98390;
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100]((a1 + 18));

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_286E98390;
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100]((a1 + 18));
  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x25F891040);
}

uint64_t llvm::cl::opt<anonymous namespace::PassRemarksOpt,true,llvm::cl::parser<std::string>>::handleOccurrence(uint64_t a1, __int16 a2, int a3, int a4, void *a5, size_t a6)
{
  __p = 0;
  v15 = 0;
  v16 = 0;
  v9 = llvm::cl::parser<std::string>::parse(a1 + 136, a1, a3, a4, a5, a6, &__p);
  if ((v9 & 1) == 0)
  {
    v10 = HIBYTE(v16);
    if (v16 < 0)
    {
      v10 = v15;
    }

    if (v10)
    {
      operator new();
    }

    *(a1 + 12) = a2;
    v11 = *(a1 + 168);
    if (!v11)
    {
      v13 = std::__throw_bad_function_call[abi:nn200100]();
      v23 = "Invalid regular expression '";
      v24 = 259;
      v22 = 260;
      p_p = &__p;
      llvm::operator+(&v23, &p_p, v25);
      v19 = "' in -pass-remarks: ";
      v20 = 259;
      llvm::operator+(v25, &v19, v26);
      v18 = 260;
      v17 = &v28;
      llvm::operator+(v26, &v17, v27);
      llvm::report_fatal_error(v27, 0);
    }

    (*(*v11 + 48))(v11, &__p);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }

  return v9;
}

void llvm::cl::opt<anonymous namespace::PassRemarksOpt,true,llvm::cl::parser<std::string>>::setDefault(uint64_t a1)
{
  v1 = *(a1 + 120);
  v2 = v1[1];
  *v1 = 0;
  v1[1] = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

void std::__shared_ptr_emplace<llvm::Regex>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286E983F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F891040);
}

uint64_t llvm::cl::apply<llvm::cl::opt<anonymous namespace::PassRemarksOpt,true,llvm::cl::parser<std::string>>,llvm::cl::value_desc,llvm::cl::desc,llvm::cl::OptionHidden,llvm::cl::LocationClass<anonymous namespace::PassRemarksOpt>,llvm::cl::ValueExpected>(uint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, char a5, void *a6, _WORD *a7)
{
  v8 = result;
  *(result + 48) = a2;
  *(result + 56) = a3;
  *(result + 32) = *a4;
  v9 = *(result + 10) & 0xFF9F | (32 * (a5 & 3));
  *(result + 10) = v9;
  if (*(result + 120))
  {
    v11 = "cl::location(x) specified more than once!";
    v12 = 259;
    v10 = llvm::errs(result);
    result = llvm::cl::Option::error(v8, &v11, 0, 0, v10);
    v9 = *(v8 + 10);
  }

  else
  {
    *(result + 120) = *a6;
  }

  *(v8 + 10) = (8 * (*a7 & 3)) | v9 & 0xFFE7;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::doFind<unsigned int>(uint64_t a1, _DWORD *a2)
{
  v2 = a1 + 8;
  if (*a1)
  {
    v3 = 4;
  }

  else
  {
    v3 = *(a1 + 16);
    if (!v3)
    {
      return 0;
    }

    v2 = *(a1 + 8);
  }

  v4 = v3 - 1;
  v5 = (37 * *a2) & (v3 - 1);
  v6 = *(v2 + 4 * v5);
  if (*a2 == v6)
  {
    return v2 + 4 * v5;
  }

  v8 = 1;
  while (v6 != -1)
  {
    v9 = v5 + v8++;
    v5 = v9 & v4;
    v6 = *(v2 + 4 * v5);
    if (*a2 == v6)
    {
      return v2 + 4 * v5;
    }
  }

  return 0;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::find(uint64_t a1, _DWORD *a2)
{
  result = llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::doFind<unsigned int>(a1, a2);
  if (!result)
  {
    if (*a1)
    {
      return a1 + 24;
    }

    else
    {
      return *(a1 + 8) + 4 * *(a1 + 16);
    }
  }

  return result;
}

void llvm::FunctionSummary::~FunctionSummary(llvm::FunctionSummary *this)
{
  *this = &unk_286E984E0;
  std::unique_ptr<std::vector<llvm::AllocInfo>>::reset[abi:nn200100](this + 13, 0);
  std::unique_ptr<std::vector<llvm::CallsiteInfo>>::reset[abi:nn200100](this + 12, 0);
  std::unique_ptr<std::vector<llvm::FunctionSummary::ParamAccess>>::reset[abi:nn200100](this + 11, 0);
  std::unique_ptr<llvm::FunctionSummary::TypeIdInfo>::reset[abi:nn200100](this + 10, 0);
  v2 = *(this + 8);
  if (v2 != this + 80)
  {
    free(v2);
  }

  *this = &unk_286E98500;
  v3 = *(this + 5);
  if (v3 != this + 56)
  {
    free(v3);
  }
}

{
  *this = &unk_286E984E0;
  std::unique_ptr<std::vector<llvm::AllocInfo>>::reset[abi:nn200100](this + 13, 0);
  std::unique_ptr<std::vector<llvm::CallsiteInfo>>::reset[abi:nn200100](this + 12, 0);
  std::unique_ptr<std::vector<llvm::FunctionSummary::ParamAccess>>::reset[abi:nn200100](this + 11, 0);
  std::unique_ptr<llvm::FunctionSummary::TypeIdInfo>::reset[abi:nn200100](this + 10, 0);
  v2 = *(this + 8);
  if (v2 != this + 80)
  {
    free(v2);
  }

  *this = &unk_286E98500;
  v3 = *(this + 5);
  if (v3 != this + 56)
  {
    free(v3);
  }

  JUMPOUT(0x25F891040);
}

void llvm::GlobalValueSummary::~GlobalValueSummary(llvm::GlobalValueSummary *this)
{
  *this = &unk_286E98500;
  v2 = *(this + 5);
  if (v2 != this + 56)
  {
    free(v2);
  }
}

{
  *this = &unk_286E98500;
  v2 = *(this + 5);
  if (v2 != this + 56)
  {
    free(v2);
  }

  JUMPOUT(0x25F891040);
}

uint64_t *std::unique_ptr<llvm::FunctionSummary::TypeIdInfo>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v6 = (v2 + 96);
    std::vector<llvm::FunctionSummary::ConstVCall>::__destroy_vector::operator()[abi:nn200100](&v6);
    v6 = (v2 + 72);
    std::vector<llvm::FunctionSummary::ConstVCall>::__destroy_vector::operator()[abi:nn200100](&v6);
    v3 = *(v2 + 48);
    if (v3)
    {
      *(v2 + 56) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 24);
    if (v4)
    {
      *(v2 + 32) = v4;
      operator delete(v4);
    }

    v5 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v5;
      operator delete(v5);
    }

    JUMPOUT(0x25F891040);
  }

  return result;
}

void ***std::unique_ptr<std::vector<llvm::FunctionSummary::ParamAccess>>::reset[abi:nn200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    std::vector<llvm::FunctionSummary::ParamAccess>::__destroy_vector::operator()[abi:nn200100](&v3);

    JUMPOUT(0x25F891040);
  }

  return result;
}

void ***std::unique_ptr<std::vector<llvm::CallsiteInfo>>::reset[abi:nn200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    std::vector<llvm::CallsiteInfo>::__destroy_vector::operator()[abi:nn200100](&v3);

    JUMPOUT(0x25F891040);
  }

  return result;
}

void ***std::unique_ptr<std::vector<llvm::AllocInfo>>::reset[abi:nn200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    std::vector<llvm::AllocInfo>::__destroy_vector::operator()[abi:nn200100](&v3);

    JUMPOUT(0x25F891040);
  }

  return result;
}

void std::vector<llvm::AllocInfo>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 3);
        if (v6)
        {
          v7 = *(v4 - 2);
          v8 = *(v4 - 3);
          if (v7 != v6)
          {
            v9 = *(v4 - 2);
            do
            {
              v11 = *(v9 - 24);
              v9 -= 24;
              v10 = v11;
              if (v11)
              {
                *(v7 - 16) = v10;
                operator delete(v10);
              }

              v7 = v9;
            }

            while (v9 != v6);
            v8 = *(v4 - 3);
          }

          *(v4 - 2) = v6;
          operator delete(v8);
        }

        v12 = *(v4 - 6);
        if (v12)
        {
          v13 = *(v4 - 5);
          v14 = *(v4 - 6);
          if (v13 != v12)
          {
            do
            {
              v15 = *(v13 - 64);
              if ((v13 - 48) != v15)
              {
                free(v15);
              }

              v13 -= 72;
            }

            while (v13 != v12);
            v14 = *(v4 - 6);
          }

          *(v4 - 5) = v12;
          operator delete(v14);
        }

        v16 = *(v4 - 14);
        if (v16 != v4 - 88)
        {
          free(v16);
        }

        v4 -= 112;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<llvm::CallsiteInfo>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 8);
        if (v4 - 48 != v6)
        {
          free(v6);
        }

        v7 = *(v4 - 16);
        if (v4 - 112 != v7)
        {
          free(v7);
        }

        v4 -= 136;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<llvm::FunctionSummary::ParamAccess>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 3);
        if (v6)
        {
          v7 = *(v4 - 2);
          v8 = *(v4 - 3);
          if (v7 != v6)
          {
            do
            {
              if (*(v7 - 8) >= 0x41u)
              {
                v9 = *(v7 - 16);
                if (v9)
                {
                  MEMORY[0x25F891010](v9, 0x1000C8000313F17);
                }
              }

              if (*(v7 - 24) >= 0x41u)
              {
                v10 = *(v7 - 32);
                if (v10)
                {
                  MEMORY[0x25F891010](v10, 0x1000C8000313F17);
                }
              }

              v7 -= 48;
            }

            while (v7 != v6);
            v8 = *(v4 - 3);
          }

          *(v4 - 2) = v6;
          operator delete(v8);
        }

        if (*(v4 - 8) >= 0x41u)
        {
          v11 = *(v4 - 5);
          if (v11)
          {
            MEMORY[0x25F891010](v11, 0x1000C8000313F17);
          }
        }

        if (*(v4 - 12) >= 0x41u)
        {
          v12 = *(v4 - 7);
          if (v12)
          {
            MEMORY[0x25F891010](v12, 0x1000C8000313F17);
          }
        }

        v4 -= 64;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<llvm::FunctionSummary::ConstVCall>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        v4 -= 40;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

BOOL llvm::OptBisect::shouldRunPass(llvm *a1, const void *a2, size_t a3, const void *a4, size_t a5)
{
  v6 = *(a1 + 2);
  v5 = *(a1 + 3);
  v7 = v5 + 1;
  *(a1 + 3) = v7;
  v9 = v6 == -1 || v5 < v6;
  if (byte_27FC22B90 == 1)
  {
    if (v9)
    {
      v14 = 0;
    }

    else
    {
      v14 = 4;
    }

    v15 = llvm::errs(a1);
    v16 = *(v15 + 4);
    if (*(v15 + 3) - v16 > 7uLL)
    {
      *v16 = 0x203A544345534942;
      *(v15 + 4) += 8;
    }

    else
    {
      v15 = llvm::raw_ostream::write(v15, "BISECT: ", 8uLL);
    }

    if (v9)
    {
      v17 = &byte_25D0A27DF;
    }

    else
    {
      v17 = "NOT ";
    }

    v18 = llvm::raw_ostream::operator<<(v15, v17, v14);
    v19 = v18;
    v20 = *(v18 + 4);
    if (*(v18 + 3) - v20 > 0xCuLL)
    {
      qmemcpy(v20, "running pass ", 13);
      v21 = (*(v18 + 4) + 13);
      *(v18 + 4) = v21;
    }

    else
    {
      v19 = llvm::raw_ostream::write(v18, "running pass ", 0xDuLL);
      v21 = *(v19 + 4);
    }

    if (*(v19 + 3) == v21)
    {
      v19 = llvm::raw_ostream::write(v19, "(", 1uLL);
    }

    else
    {
      *v21 = 40;
      ++*(v19 + 4);
    }

    llvm::write_integer(v19, v7, 0, 0);
    v22 = *(v19 + 4);
    if (*(v19 + 3) - v22 > 1uLL)
    {
      *v22 = 8233;
      *(v19 + 4) += 2;
    }

    else
    {
      v19 = llvm::raw_ostream::write(v19, ") ", 2uLL);
    }

    v23 = llvm::raw_ostream::operator<<(v19, a2, a3);
    v24 = *(v23 + 4);
    if (*(v23 + 3) - v24 > 3uLL)
    {
      *v24 = 544108320;
      *(v23 + 4) += 4;
    }

    else
    {
      v23 = llvm::raw_ostream::write(v23, " on ", 4uLL);
    }

    v25 = llvm::raw_ostream::operator<<(v23, a4, a5);
    v26 = *(v25 + 4);
    if (*(v25 + 3) == v26)
    {
      llvm::raw_ostream::write(v25, "\n", 1uLL);
    }

    else
    {
      *v26 = 10;
      ++*(v25 + 4);
    }
  }

  return v9;
}

void getOptBisector(void)
{
  {
    __cxa_atexit(llvm::OptBisect::~OptBisect, &getOptBisector(void)::OptBisector, &dword_25C85D000);
  }
}

void std::__function::__func<$_0,std::allocator<$_0>,void ()(int)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  getOptBisector();
  dword_281E3B6D0 = v2;
  *algn_281E3B6D4 = 0;
}

uint64_t std::__function::__value_func<void ()(int)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(int)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__function::__func<std::function<void ()(int)>,std::allocator<std::function<void ()(int)>>,void ()(int const&)>::~__func(void *a1)
{
  *a1 = &unk_286E98598;
  std::__function::__value_func<void ()(int)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void std::__function::__func<std::function<void ()(int)>,std::allocator<std::function<void ()(int)>>,void ()(int const&)>::~__func(void *a1)
{
  *a1 = &unk_286E98598;
  std::__function::__value_func<void ()(int)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x25F891040);
}

void std::__function::__func<std::function<void ()(int)>,std::allocator<std::function<void ()(int)>>,void ()(int const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(int)>::~__value_func[abi:nn200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<std::function<void ()(int)>,std::allocator<std::function<void ()(int)>>,void ()(int const&)>::operator()(uint64_t a1, int *a2)
{
  v2 = *(a1 + 32);
  v6 = *a2;
  if (!v2)
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();
    mlir::LLVM::registerInlinerInterface(v4, v5);
  }

  return (*(*v2 + 48))(v2, &v6);
}

void anonymous namespace::LLVMInlinerInterface::~LLVMInlinerInterface(_anonymous_namespace_::LLVMInlinerInterface *this)
{
  *this = &unk_286E985E0;
  MEMORY[0x25F891030](*(this + 3), 8);
}

{
  *this = &unk_286E985E0;
  MEMORY[0x25F891030](*(this + 3), 8);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::LLVMInlinerInterface::isLegalToInline(_anonymous_namespace_::LLVMInlinerInterface *this, mlir::Operation *a2, mlir::Operation *a3)
{
  if (*(*(a2 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::LLVM::CallOp,void>::id)
  {
    return 0;
  }

  result = 0;
  if (a3 && *(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFuncOp,void>::id)
  {
    v6 = (*(a3 + 11) >> 23) & 1;
    v7 = (a3 + 16 * v6 + 64);
    if (!v7[27] && (*(*(v7[21] + 8) + 32) & 1) == 0)
    {
      v8 = v7[4];
      if (v8 && (v9 = *(v8 + 16)) != 0)
      {
        v10 = *(v8 + 8);
        v11 = v10 + 8 * v9;
        while (1)
        {
          mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*v10 + 8), *(*v10 + 8) + 16 * *(*v10 + 16), "llvm.inalloca", 0xDuLL);
          if (v12)
          {
            break;
          }

          v10 += 8;
          if (v10 == v11)
          {
            v6 = (*(a3 + 11) >> 23) & 1;
            goto LABEL_14;
          }
        }
      }

      else
      {
LABEL_14:
        v13 = a3 + 16 * v6 + 64;
        if (!*(v13 + 33))
        {
          v14 = *(v13 + 32);
          {
            return 1;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

void anonymous namespace::LLVMInlinerInterface::handleTerminator(_anonymous_namespace_::LLVMInlinerInterface *this, mlir::Operation *a2, mlir::Block *a3)
{
  v27[8] = *MEMORY[0x277D85DE8];
  if (a2 && *(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::LLVM::ReturnOp,void>::id)
  {
    v5 = *(a2 + 2);
    v6 = *(a2 + 3);
    v7 = *(**v6 + 32);
    v15[0] = v7;
    v15[1] = 0;
    v15[2] = v5;
    v15[3] = a2;
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v8 = *(a2 + 17);
      v9 = *(a2 + 9) & 0xFFFFFFFFFFFFFFF9 | 2;
    }

    else
    {
      v8 = 0;
      v9 = 2;
    }

    v10 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::LLVM::BrOp,void>::id, v7);
    if ((v11 & 1) == 0)
    {
      v19 = 1283;
      v18[2] = "llvm.br";
      v18[3] = 7;
      v17 = 259;
      llvm::operator+(v18, &v16, v20);
      llvm::report_fatal_error(v20, 1);
    }

    v20[0] = v6;
    v20[1] = v10;
    v21[0] = v22;
    v21[1] = 0x400000000;
    v22[4] = v23;
    v22[5] = 0x400000000;
    v23[4] = v24;
    v23[5] = 0x400000000;
    v24[8] = 4;
    v25[0] = v26;
    v25[1] = 0x100000000;
    v26[1] = v27;
    v26[2] = 0x100000000;
    v27[1] = 0;
    v27[2] = 0;
    v27[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v27[4] = 0;
    v27[6] = 0;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v21, v9, 0, v9, v8);
    llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(v25, a3);
    v12 = mlir::Operation::create(v20);
    mlir::OpBuilder::insert(v15, v12);
    mlir::OperationState::~OperationState(v20);
    if (*(a2 + 2))
    {
      *(a2 + 2) = 0;
      v14 = *a2;
      v13 = *(a2 + 1);
      *v13 = *a2;
      *(v14 + 8) = v13;
      *a2 = 0;
      *(a2 + 1) = 0;
    }

    mlir::Operation::destroy(a2);
  }
}

void anonymous namespace::LLVMInlinerInterface::handleTerminator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 72);
    v6 = *(a2 + 68);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v13 = a3;
  v14 = 0;
  v15 = v5;
  v16 = 0;
  if (a4 && v6)
  {
    v7 = (v5 + 24);
    v8 = 1;
    do
    {
      v9 = mlir::ValueRange::dereference_iterator(&v13, v8 - 1);
      v10 = *v7;
      v7 += 4;
      v12 = v10;
      mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v9, &v12);
      v14 = v8;
      v16 = v8;
      if (a4 == v8)
      {
        break;
      }
    }

    while (v6 != v8++);
  }
}

char *anonymous namespace::LLVMInlinerInterface::handleArgument(uint64_t a1, void **a2, uint64_t a3, mlir::DataLayout *a4, char *a5, uint64_t a6)
{
  v109 = *MEMORY[0x277D85DE8];
  v11 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(a6 + 8), *(a6 + 8) + 16 * *(a6 + 16), "llvm.byval", 0xAuLL);
  if (v12)
  {
    v13 = *(*(v11 + 8) + 8);
    v14 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(a6 + 8), *(a6 + 8) + 16 * *(a6 + 16), "llvm.align", 0xAuLL);
    if (v15)
    {
      v16 = *(v14 + 8);
      LODWORD(v87) = *(v16 + 24);
      if (v87 > 0x40)
      {
        operator new[]();
      }

      v86 = *(v16 + 16);
      LimitedValue = llvm::APInt::getLimitedValue(&v86, 0xFFFFFFFFFFFFFFFFLL);
      if (v87 >= 0x41 && v86)
      {
        MEMORY[0x25F891010](v86, 0x1000C8000313F17);
      }
    }

    else
    {
      LimitedValue = 1;
    }

    v26 = *(a4 + 2 * ((*(a4 + 11) >> 23) & 1) + 33);
    if (v26)
    {
      v27 = (*(v26 + 16) - 4) < 0xFFFFFFFFFFFFFFFELL;
    }

    else
    {
      v27 = 0;
    }

    mlir::DataLayout::closest(a4, v76);
    TypeABIAlignment = mlir::DataLayout::getTypeABIAlignment(v76, v13);
    v29 = TypeABIAlignment;
    if (!v27)
    {
LABEL_44:
      if (v29 <= LimitedValue)
      {
        LODWORD(v29) = LimitedValue;
      }

      if ((~*(a5 + 2) & 7) != 0)
      {
        v44 = a5;
      }

      else
      {
        v44 = 0;
      }

      if (!v44)
      {
        goto LABEL_52;
      }

      v45 = *(v44 + 8) & 7;
      if (v45 == 6)
      {
        v46 = v44 + 24 * *(v44 + 16) + 120;
        if (!v46)
        {
LABEL_52:
          v47 = (a5 + 32);
LABEL_55:
          v48 = *v47;
          TypeSize = mlir::DataLayout::getTypeSize(v76, v13);
          if (v49)
          {
          }

          v84[0] = a5;
          v52 = a2 + 2;
          v75 = *(a2 + 1);
          v53 = *(mlir::Value::getParentRegion(v84) + 8);
          if (v53)
          {
            v54 = v53 - 8;
          }

          else
          {
            v54 = 0;
          }

          v55 = *(v54 + 40);
          *v52 = v54;
          a2[3] = v55;
          v86 = mlir::IntegerType::get(*a2, 64, 0);
          I64IntegerAttr = mlir::Builder::getI64IntegerAttr(a2, 1);
          v56 = mlir::OpBuilder::create<mlir::LLVM::ConstantOp,mlir::IntegerType,mlir::IntegerAttr>(a2, v48, &v86, &I64IntegerAttr);
          v57 = *(a5 + 1);
          v58 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::AllocaOp>(a2, *(**v48 + 32));
          v86 = v48;
          v87 = v58;
          v88 = v90;
          v89 = 0x400000000;
          v91 = v93;
          v92 = 0x400000000;
          v94 = v96;
          v95 = 0x400000000;
          v97 = 4;
          v98 = &v100;
          v99 = 0x100000000;
          v101 = &v103;
          v102 = 0x100000000;
          v105 = 0;
          v104 = 0;
          v106 = &mlir::detail::TypeIDResolver<void,void>::id;
          v107 = 0;
          v108 = 0;
          mlir::LLVM::AllocaOp::build(a2, &v86, v57 & 0xFFFFFFFFFFFFFFF8, v13, v56 - 16, v29);
          v59 = mlir::Operation::create(&v86);
          mlir::OpBuilder::insert(a2, v59);
          v60 = *(*(v59 + 6) + 16);
          mlir::OperationState::~OperationState(&v86);
          if (v60 == &mlir::detail::TypeIDResolver<mlir::LLVM::AllocaOp,void>::id)
          {
            v61 = v59;
          }

          else
          {
            v61 = 0;
          }

          a5 = v61 - 16;
          if (v75)
          {
            *v52 = v75;
          }

          else
          {
            *v52 = 0;
            a2[3] = 0;
          }

          v86 = mlir::IntegerType::get(*a2, 64, 0);
          I64IntegerAttr = mlir::Builder::getI64IntegerAttr(a2, TypeSize);
          v62 = mlir::OpBuilder::create<mlir::LLVM::ConstantOp,mlir::IntegerType,mlir::IntegerAttr>(a2, v48, &v86, &I64IntegerAttr);
          v63 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::MemcpyOp>(a2, *(**v48 + 32));
          v86 = v48;
          v87 = v63;
          v88 = v90;
          v89 = 0x400000000;
          v91 = v93;
          v92 = 0x400000000;
          v94 = v96;
          v95 = 0x400000000;
          v97 = 4;
          v98 = &v100;
          v99 = 0x100000000;
          v101 = &v103;
          v102 = 0x100000000;
          v105 = 0;
          v104 = 0;
          v106 = &mlir::detail::TypeIDResolver<void,void>::id;
          v107 = 0;
          v108 = 0;
          mlir::LLVM::MemcpyOp::build(v63, &v86, a5, v84[0], v62 - 16, *(**a2 + 592), 0, 0, 0, 0);
          v64 = mlir::Operation::create(&v86);
          mlir::OpBuilder::insert(a2, v64);
          mlir::OperationState::~OperationState(&v86);
          goto LABEL_67;
        }
      }

      else
      {
        v46 = v44 + 16 * v45 + 16;
      }

      v47 = (v46 + 24);
      goto LABEL_55;
    }

    if (TypeABIAlignment >= LimitedValue)
    {
LABEL_67:
      MEMORY[0x25F891030](v82, 8);
      MEMORY[0x25F891030](v81, 8);
      MEMORY[0x25F891030](v80, 8);
      MEMORY[0x25F891030](v79, 8);
      MEMORY[0x25F891030](v78, 8);
      return a5;
    }

    if ((~*(a5 + 2) & 7) != 0)
    {
      v30 = a5;
    }

    else
    {
      v30 = 0;
    }

    if (v30)
    {
      v31 = *(v30 + 8) & 7;
      if (v31 == 6)
      {
        v32 = v30 + 24 * *(v30 + 16);
        v33 = v32 + 120;
        if (v32 == -120)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v33 = v30 + 16 * v31 + 16;
      }

      v43 = *(*(v33 + 48) + 16);
      if (v43 == &mlir::detail::TypeIDResolver<mlir::LLVM::AllocaOp,void>::id)
      {
        v86 = v33;
        Alignment = mlir::LLVM::AllocaOp::getAlignment(&v86);
        if (v67)
        {
          v42 = Alignment;
        }

        else
        {
          v42 = 1;
        }

        if (v42 < LimitedValue)
        {
          StackAlignment = mlir::DataLayout::getStackAlignment(v76);
          if (!StackAlignment || StackAlignment >= 8 * LimitedValue || 8 * v42 > StackAlignment)
          {
            mlir::LLVM::AllocaOp::setAlignment(&v86, LimitedValue, 1);
            v42 = LimitedValue;
          }
        }

LABEL_43:
        if (v42 < LimitedValue)
        {
          goto LABEL_44;
        }

        goto LABEL_67;
      }

      if (v43 == &mlir::detail::TypeIDResolver<mlir::LLVM::AddressOfOp,void>::id)
      {
        v69 = mlir::SymbolTable::lookupNearestSymbolFrom(v33, *(v33 + 16 * ((*(v33 + 44) >> 23) & 1) + 64));
        if (v69)
        {
          v70 = *(*(v69 + 6) + 16);
          v71 = v70 == &mlir::detail::TypeIDResolver<mlir::LLVM::GlobalOp,void>::id;
          v72 = v70 == &mlir::detail::TypeIDResolver<mlir::LLVM::GlobalOp,void>::id ? v69 : 0;
          v86 = v72;
          if (v71)
          {
            v73 = mlir::LLVM::GlobalOp::getAlignment(&v86);
            if (v74)
            {
              v42 = v73;
            }

            else
            {
              v42 = 1;
            }

            goto LABEL_43;
          }
        }
      }

LABEL_42:
      v42 = 1;
      goto LABEL_43;
    }

LABEL_27:
    v34 = *((*(*(a5 + 2) + 24) & 0xFFFFFFFFFFFFFFF8) + 16);
    if (v34)
    {
      v35 = *(*(v34 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFuncOp,void>::id;
    }

    else
    {
      v35 = 0;
    }

    if (v35)
    {
      v36 = *(a5 + 6);
      InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(*((*(*(a5 + 2) + 24) & 0xFFFFFFFFFFFFFFF8) + 16));
      v38 = (*(*(InterfaceFor + 48) + 24))();
      if (v38)
      {
        v39 = *(*(v38 + 8) + 8 * v36);
        if (v39)
        {
          v40 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(v39 + 8), *(v39 + 8) + 16 * *(v39 + 16), "llvm.align", 0xAuLL);
          if (v41)
          {
            if (*(v40 + 8))
            {
              v84[0] = *(v40 + 8);
              mlir::IntegerAttr::getValue(&v86, v84);
              v42 = llvm::APInt::getLimitedValue(&v86, 0xFFFFFFFFFFFFFFFFLL);
              if (v87 >= 0x41 && v86)
              {
                MEMORY[0x25F891010](v86, 0x1000C8000313F17);
              }

              goto LABEL_43;
            }
          }
        }
      }
    }

    goto LABEL_42;
  }

  v17 = *(a3 + 24);
  v18 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::LLVM::SSACopyOp,void>::id, *(**v17 + 32));
  if ((v19 & 1) == 0)
  {
    v77 = 1283;
    v76[2] = "llvm.intr.ssa.copy";
    v76[3] = 18;
    v85 = 259;
    llvm::operator+(v76, v84, &v86);
    llvm::report_fatal_error(&v86, 1);
  }

  v86 = v17;
  v87 = v18;
  v88 = v90;
  v89 = 0x400000000;
  v91 = v93;
  v92 = 0x400000000;
  v94 = v96;
  v95 = 0x400000000;
  v97 = 4;
  v98 = &v100;
  v99 = 0x100000000;
  v101 = &v103;
  v102 = 0x100000000;
  v105 = 0;
  v104 = 0;
  v106 = &mlir::detail::TypeIDResolver<void,void>::id;
  v107 = 0;
  v108 = 0;
  mlir::LLVM::SSACopyOp::build(a2, &v86, a5);
  v20 = mlir::Operation::create(&v86);
  mlir::OpBuilder::insert(a2, v20);
  v21 = *(*(v20 + 6) + 16);
  mlir::OperationState::~OperationState(&v86);
  if (v21 != &mlir::detail::TypeIDResolver<mlir::LLVM::SSACopyOp,void>::id)
  {
    v20 = 0;
  }

  mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(a6 + 8), *(a6 + 8) + 16 * *(a6 + 16), "llvm.noalias", 0xCuLL);
  if (v23)
  {
    v90[0] = 261;
    v86 = "llvm.noalias";
    v87 = 12;
    v24 = mlir::StringAttr::get(*a2, &v86, v22);
    mlir::Operation::setDiscardableAttr(v20, v24, *(**a2 + 608));
  }

  return v20 - 16;
}

void anonymous namespace::LLVMInlinerInterface::processInlinedCallBlocks(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v226 = *MEMORY[0x277D85DE8];
  v7 = a2;
  do
  {
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = *(v8 + 24) & 0xFFFFFFFFFFFFFFF8;
      if (v9)
      {
        v10 = v7;
        v7 = *(v9 + 16);
        if (v7)
        {
          goto LABEL_5;
        }
      }
    }

    goto LABEL_140;
LABEL_5:
    if (mlir::OperationName::mightHaveTrait<mlir::OpTrait::IsIsolatedFromAbove>(v7 + 48))
    {
      break;
    }

    v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>,void>::resolveTypeID();
    v12 = *(v7 + 48);
    if (v12[2] == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      break;
    }
  }

  while (!(*(*v12 + 4))(v12, v11));
  v13 = *((*(*(v10 + 16) + 24) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v13)
  {
    v14 = (v13 - 8);
  }

  else
  {
    v14 = 0;
  }

  v15 = (a3 - 8);
  if (!a3)
  {
    v15 = 0;
  }

  if (v13)
  {
    v16 = v14 == v15;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v188 = v190;
    v189 = 0x200000000;
    v17 = (v15 + 4);
      ;
    }

    v171 = v15;
    v163 = v14;
    v165 = a3;
    if (i != v17)
    {
      v166 = 0;
      v19 = 0;
      while (1)
      {
        v183 = 0;
        v20 = *(*(i + 9) + 24);
        *&v204 = &v183;
        if ((~*(v20 + 8) & 7) == 0)
        {
          v20 = 0;
        }

        if (!v20)
        {
          goto LABEL_34;
        }

        v21 = *(v20 + 8) & 7;
        if (v21 == 6)
        {
          v22 = v20 + 24 * *(v20 + 16);
          v23 = v22 + 120;
          if (v22 == -120)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v23 = v20 + 16 * v21 + 16;
        }

        if (mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(&v204, v23))
        {
          v168 = v19;
          v24 = *(v183 + 24);
          LODWORD(v178) = v24;
          if (v24 > 0x40)
          {
            operator new[]();
          }

          v177 = *(v183 + 16);
          if (v177)
          {
            mlir::Operation::getUsers(&v204, i);
            v174 = v204;
            v175 = v205;
            v176 = v206;
            mlir::Operation::getUsers(&__src, i);
            v180 = v196;
            *v181 = v197;
            v182 = v198;
            v199 = &v201;
            v200 = 0x600000000;
            v184 = v174;
            *v185 = v175;
            v186 = v176;
            llvm::SmallVectorImpl<mlir::Operation *>::append<mlir::ValueUserIterator<mlir::ResultRange::UseIterator,mlir::OpOperand>,void>(&v199, &v184, &v180);
            v25 = v200;
            if (v200)
            {
              v6 = a2;
              while (1)
              {
                v26 = *(v199 + --v25);
                LODWORD(v200) = v25;
                v27 = *(*(v26 + 6) + 16);
                v28 = v27 == &mlir::detail::TypeIDResolver<mlir::LLVM::LifetimeStartOp,void>::id || v27 == &mlir::detail::TypeIDResolver<mlir::LLVM::LifetimeEndOp,void>::id;
                v29 = !v28;
                if (v28)
                {
                  break;
                }

                if (v27 == &mlir::detail::TypeIDResolver<mlir::LLVM::BitcastOp,void>::id)
                {
                  mlir::Operation::getUsers(&v204, v26);
                  v184 = v204;
                  *v185 = v205;
                  v186 = v206;
                  mlir::Operation::getUsers(&__src, v26);
                  v180 = v196;
                  *v181 = v197;
                  v182 = v198;
                  llvm::SmallVectorImpl<mlir::Operation *>::append<mlir::ValueUserIterator<mlir::ResultRange::UseIterator,mlir::OpOperand>,void>(&v199, &v184, &v180);
                  v25 = v200;
                  if (!v200)
                  {
                    break;
                  }
                }

                else if (!v25)
                {
                  break;
                }
              }
            }

            else
            {
              v29 = 1;
              v6 = a2;
            }

            if (v199 != &v201)
            {
              free(v199);
            }

            v24 = v178;
          }

          else
          {
            v29 = 0;
            v6 = a2;
          }

          if (v24 >= 0x41 && v177)
          {
            MEMORY[0x25F891010](v177, 0x1000C8000313F17);
          }

          v166 |= v29;
          if (v189 >= HIDWORD(v189))
          {
            llvm::SmallVectorTemplateBase<std::tuple<mlir::LLVM::AllocaOp,mlir::IntegerAttr,BOOL>,true>::growAndEmplaceBack<mlir::LLVM::AllocaOp&,mlir::IntegerAttr&,BOOL &>(&v188, i, v183, v29);
          }

          else
          {
            v30 = v188 + 24 * v189;
            *v30 = i;
            *(v30 + 1) = v183;
            v30[16] = v29;
            LODWORD(v189) = v189 + 1;
          }

          v19 = v168;
          goto LABEL_60;
        }

LABEL_34:
        v19 = 1;
        do
        {
LABEL_60:
          i = *(i + 1);
        }

        while (i != v17 && *(*(i + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::LLVM::AllocaOp,void>::id);
        if (i == v17)
        {
          goto LABEL_66;
        }
      }
    }

    v19 = 0;
    v166 = 0;
LABEL_66:
    v31 = *(a3 + 8);
    v4 = a4;
    if (v31 == a4)
    {
LABEL_90:
      if (!v189 && (v19 & 1) == 0)
      {
LABEL_138:
        if (v188 != v190)
        {
          free(v188);
        }

        goto LABEL_140;
      }
    }

    else
    {
      while ((v19 & 1) == 0)
      {
        v32 = v31 - 8;
        if (!v31)
        {
          v32 = 0;
        }

        v33 = (v32 + 32);
          ;
        }

        if (j == v33)
        {
          v19 = 0;
        }

        else
        {
          while (1)
          {
            v35 = *(j[9] + 24);
            if ((~*(v35 + 8) & 7) == 0)
            {
              v35 = 0;
            }

            if (!v35)
            {
              break;
            }

            v36 = *(v35 + 8) & 7;
            if (v36 == 6)
            {
              v37 = v35 + 24 * *(v35 + 16);
              v38 = v37 + 120;
              if (v37 == -120)
              {
                break;
              }
            }

            else
            {
              v38 = v35 + 16 * v36 + 16;
            }

            v39 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
            v40 = (*(**(v38 + 48) + 32))(*(v38 + 48), v39);
            if (v40)
            {
              do
              {
                j = j[1];
              }

              while (j != v33 && *(j[6] + 16) != &mlir::detail::TypeIDResolver<mlir::LLVM::AllocaOp,void>::id);
              if (j != v33)
              {
                continue;
              }
            }

            v19 = v40 ^ 1;
            goto LABEL_89;
          }

          v19 = 1;
        }

LABEL_89:
        v31 = *(v31 + 8);
        if (v31 == a4)
        {
          goto LABEL_90;
        }
      }

      v19 = 1;
    }

    v164 = 0;
    v41 = v171[5];
    v180 = *(***(*((v171[3] & 0xFFFFFFFFFFFFFFF8) + 16) + 24) + 32);
    v181[0] = v171;
    v181[1] = v41;
    v169 = v19;
    if (v19)
    {
      v42 = *(v6 + 24);
      v43 = *(**v42 + 32);
      LODWORD(v204) = 0;
      v44 = mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMPointerType,unsigned int &>(v43, &v204);
      v45 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::LLVM::StackSaveOp,void>::id, *(**v42 + 32));
      if ((v46 & 1) == 0)
      {
        v195 = 1283;
        v193 = "llvm.intr.stacksave";
        v194 = 19;
        v203 = 259;
        llvm::operator+(&__src, &v199, &v204);
        p_src = &v204;
        goto LABEL_233;
      }

      *&v204 = v42;
      *(&v204 + 1) = v45;
      *&v205 = &v206;
      *(&v205 + 1) = 0x400000000;
      v208 = v210;
      v209 = 0x400000000;
      v211 = v213;
      v212 = 0x400000000;
      v214 = 4;
      v215 = &v217;
      v216 = 0x100000000;
      v218 = &v220;
      v219 = 0x100000000;
      v222 = 0;
      v221 = 0;
      v223 = &mlir::detail::TypeIDResolver<void,void>::id;
      v224 = 0;
      v225 = 0;
      __src = v44;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v208, &__src, &v192);
      v47 = mlir::Operation::create(&v204);
      mlir::OpBuilder::insert(&v180, v47);
      v48 = *(*(v47 + 6) + 16);
      mlir::OperationState::~OperationState(&v204);
      if (v48 == &mlir::detail::TypeIDResolver<mlir::LLVM::StackSaveOp,void>::id)
      {
        v49 = v47;
      }

      else
      {
        v49 = 0;
      }

      v164 = (v49 - 16);
    }

    v50 = v163[5];
    v181[0] = v163;
    v181[1] = v50;
    if (v189)
    {
      v51 = &v206;
      v52 = v210;
      v53 = v213;
      v54 = &v217;
      v55 = 24 * v189;
      v56 = v188 + 8;
      do
      {
        v57 = *(v56 - 1);
        v58 = *(v57 + 24);
        v59 = (*(*(*(v57 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        v60 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::ConstantOp>(&v180, *(**v58 + 32));
        *&v204 = v58;
        *(&v204 + 1) = v60;
        *&v205 = v51;
        *(&v205 + 1) = 0x400000000;
        v208 = v52;
        v209 = 0x400000000;
        v211 = v53;
        v212 = 0x400000000;
        v214 = 4;
        v215 = v54;
        v216 = 0x100000000;
        v218 = &v220;
        v219 = 0x100000000;
        v221 = 0;
        v222 = 0;
        v223 = &mlir::detail::TypeIDResolver<void,void>::id;
        v224 = 0;
        v225 = 0;
        v61 = *v56;
        __src = v59;
        *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ConstantOpGenericAdaptorBase::Properties>(&v204) = v61;
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v208, &__src, &v192);
        v62 = mlir::Operation::create(&v204);
        mlir::OpBuilder::insert(&v180, v62);
        v63 = *(*(v62 + 6) + 16);
        mlir::OperationState::~OperationState(&v204);
        if (v63 != &mlir::detail::TypeIDResolver<mlir::LLVM::ConstantOp,void>::id)
        {
          v62 = 0;
        }

        if (v56[8] == 1)
        {
          v64 = v54;
          v65 = v53;
          v66 = v52;
          v67 = v51;
          v172 = *v181;
          v68 = *(v56 - 1);
          v181[0] = *(v68 + 16);
          v181[1] = v68;
          v69 = *(v68 + 24);
          mlir::IntegerAttr::getValue(&v174, v56);
          LimitedValue = llvm::APInt::getLimitedValue(&v174, 0xFFFFFFFFFFFFFFFFLL);
          v71 = *(v56 - 1);
          v72 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::LLVM::LifetimeStartOp,void>::id, *(**v69 + 32));
          if ((v73 & 1) == 0)
          {
            v203 = 1283;
            v201 = "llvm.intr.lifetime.start";
            v160 = 24;
            goto LABEL_230;
          }

          v74 = v71 - 16;
          *&v204 = v69;
          *(&v204 + 1) = v72;
          v51 = v67;
          *&v205 = v67;
          *(&v205 + 1) = 0x400000000;
          v52 = v66;
          v208 = v66;
          v209 = 0x400000000;
          v53 = v65;
          v211 = v65;
          v212 = 0x400000000;
          v214 = 4;
          v54 = v64;
          v215 = v64;
          v216 = 0x100000000;
          v218 = &v220;
          v219 = 0x100000000;
          v221 = 0;
          v222 = 0;
          v223 = &mlir::detail::TypeIDResolver<void,void>::id;
          v224 = 0;
          v225 = 0;
          mlir::LLVM::LifetimeStartOp::build(&v180, &v204, LimitedValue, v74);
          v75 = mlir::Operation::create(&v204);
          mlir::OpBuilder::insert(&v180, v75);
          mlir::OperationState::~OperationState(&v204);
          if (DWORD2(v174) >= 0x41 && v174)
          {
            MEMORY[0x25F891010](v174, 0x1000C8000313F17);
          }

          if (v172)
          {
            *v181 = v172;
          }

          else
          {
            v181[0] = 0;
            v181[1] = 0;
          }
        }

        mlir::Operation::moveAfter(*(v56 - 1), v62);
        v76 = *(*(v56 - 1) + 72);
        v77 = v76[1];
        if (v77)
        {
          v78 = *v76;
          *v77 = *v76;
          if (v78)
          {
            *(v78 + 8) = v76[1];
          }
        }

        v76[3] = (v62 - 16);
        v76[1] = (v62 - 16);
        v79 = *(v62 - 2);
        *v76 = v79;
        if (v79)
        {
          *(v79 + 8) = v76;
        }

        *(v62 - 2) = v76;
        v56 += 24;
        v55 -= 24;
      }

      while (v55);
    }

    if (((v166 | v169) & 1) != 0 && v165 != a4)
    {
      v80 = v165;
      do
      {
        if (v80)
        {
          v81 = v80 - 8;
        }

        else
        {
          v81 = 0;
        }

        v82 = *(v81 + 32);
        v83 = mlir::detail::TypeIDResolver<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>,void>::resolveTypeID();
        if ((*(**(v82 + 48) + 32))(*(v82 + 48), v83))
        {
          v84 = *(v81 + 32);
          v181[0] = v84[2];
          v181[1] = v84;
          if (v169)
          {
            v85 = *(a2 + 24);
            v86 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::LLVM::StackRestoreOp,void>::id, *(**v85 + 32));
            if ((v87 & 1) == 0)
            {
              v203 = 1283;
              v159 = "llvm.intr.stackrestore";
LABEL_229:
              v201 = v159;
              v160 = 22;
LABEL_230:
              v202 = v160;
              LOWORD(v186) = 259;
              v161 = &v184;
LABEL_232:
              llvm::operator+(&v199, v161, &__src);
              p_src = &__src;
LABEL_233:
              llvm::report_fatal_error(p_src, 1);
            }

            *&v204 = v85;
            *(&v204 + 1) = v86;
            *&v205 = &v206;
            *(&v205 + 1) = 0x400000000;
            v208 = v210;
            v209 = 0x400000000;
            v211 = v213;
            v212 = 0x400000000;
            v214 = 4;
            v215 = &v217;
            v216 = 0x100000000;
            v218 = &v220;
            v219 = 0x100000000;
            v221 = 0;
            v222 = 0;
            v223 = &mlir::detail::TypeIDResolver<void,void>::id;
            v224 = 0;
            v225 = 0;
            __src = v164;
            llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v205, &__src, 0, &__src, 1);
            v88 = mlir::Operation::create(&v204);
            mlir::OpBuilder::insert(&v180, v88);
            mlir::OperationState::~OperationState(&v204);
          }

          if (v189)
          {
            v89 = 24 * v189;
            v90 = v188 + 8;
            do
            {
              if (v90[8] == 1)
              {
                v91 = *(*(v90 - 1) + 24);
                mlir::IntegerAttr::getValue(&v174, v90);
                v92 = llvm::APInt::getLimitedValue(&v174, 0xFFFFFFFFFFFFFFFFLL);
                v93 = *(v90 - 1);
                v94 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::LLVM::LifetimeEndOp,void>::id, *(**v91 + 32));
                if ((v95 & 1) == 0)
                {
                  v203 = 1283;
                  v159 = "llvm.intr.lifetime.end";
                  goto LABEL_229;
                }

                *&v204 = v91;
                *(&v204 + 1) = v94;
                *&v205 = &v206;
                *(&v205 + 1) = 0x400000000;
                v208 = v210;
                v209 = 0x400000000;
                v211 = v213;
                v212 = 0x400000000;
                v214 = 4;
                v215 = &v217;
                v216 = 0x100000000;
                v218 = &v220;
                v219 = 0x100000000;
                v221 = 0;
                v222 = 0;
                v223 = &mlir::detail::TypeIDResolver<void,void>::id;
                v224 = 0;
                v225 = 0;
                mlir::LLVM::LifetimeEndOp::build(&v180, &v204, v92, v93 - 16);
                v96 = mlir::Operation::create(&v204);
                mlir::OpBuilder::insert(&v180, v96);
                mlir::OperationState::~OperationState(&v204);
                if (DWORD2(v174) >= 0x41 && v174)
                {
                  MEMORY[0x25F891010](v174, 0x1000C8000313F17);
                }
              }

              v90 += 24;
              v89 -= 24;
            }

            while (v89);
          }
        }

        v80 = *(v80 + 8);
      }

      while (v80 != a4);
    }

    v4 = a4;
    a3 = v165;
    v6 = a2;
    goto LABEL_138;
  }

LABEL_140:
  v199 = 0;
  v200 = 0;
  LODWORD(v201) = 0;
  LODWORD(v208) = 0;
  v206 = 0u;
  v207 = 0u;
  v204 = 0u;
  v205 = 0u;
  __src = &unk_286E98658;
  v192 = &v199;
  v194 = &__src;
  mlir::AttrTypeWalker::addWalk(&v204, &__src);
  std::__function::__value_func<mlir::WalkResult ()(mlir::Attribute)>::~__value_func[abi:nn200100](&__src);
  __src = &unk_286E986A0;
  v192 = &v199;
  v194 = &__src;
  mlir::AttrTypeWalker::addWalk(&v204, &__src);
  std::__function::__value_func<mlir::WalkResult ()(mlir::Attribute)>::~__value_func[abi:nn200100](&__src);
  v188 = &v204;
  v189 = &v199;
  if (a3 != v4)
  {
    v97 = a3;
    do
    {
      v98 = v97 - 8;
      if (!v97)
      {
        v98 = 0;
      }

      __src = &v188;
      v192 = &v204;
      v193 = &v199;
      v99 = *(v98 + 40);
      v100 = v98 + 32;
      if (v99 != v98 + 32)
      {
        do
        {
          v101 = *(v99 + 8);
          mlir::detail::walk<mlir::ForwardIterator>(v99, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<deepCloneAliasScopes(llvm::iterator_range<llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Block,false,false,void,false,void>,false,false>>)::$_3>, &__src, 1);
          v99 = v101;
        }

        while (v101 != v100);
      }

      v97 = *(v97 + 8);
    }

    while (v97 != v4);
  }

  MEMORY[0x25F891030](v207, 8);
  __src = &v205 + 1;
  std::vector<std::function<mlir::WalkResult ()(mlir::Type)>>::__destroy_vector::operator()[abi:nn200100](&__src);
  __src = &v204;
  std::vector<std::function<mlir::WalkResult ()(mlir::Attribute)>>::__destroy_vector::operator()[abi:nn200100](&__src);
  MEMORY[0x25F891030](v199, 8);
  v183 = v6;
  LODWORD(v185[0]) = 0;
  v184 = 0u;
  v185[1] = &v187;
  v186 = 0;
  LODWORD(v181[0]) = 0;
  v180 = 0u;
  v181[1] = &v183;
  v182 = 0;
  v102 = *(v6 + 44);
  v103 = v6 + 64 + 16 * ((v102 >> 23) & 1);
  v104 = *(v103 + 144);
  if ((v102 & 0x800000) != 0)
  {
    v105 = *(v6 + 72);
  }

  else
  {
    v105 = 0;
  }

  v106 = *(v103 + 48) == 0;
  v107 = v104 - v106;
  if (v104 != v106)
  {
    v108 = 0;
    v109 = v105 + 32 * v106;
    do
    {
      for (k = **(v109 + 32 * v108 + 24); k; k = *k)
      {
        if (*(*(k[2] + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::LLVM::SSACopyOp,void>::id)
        {
          v111 = k[2];
        }

        else
        {
          v111 = 0;
        }

        *&v204 = v111;
        if (v111)
        {
          llvm::SetVector<mlir::LLVM::SSACopyOp,llvm::SmallVector<mlir::LLVM::SSACopyOp,0u>,llvm::DenseSet<mlir::LLVM::SSACopyOp,llvm::DenseMapInfo<mlir::LLVM::SSACopyOp,void>>,0u>::insert(&v184, &v204);
          if (mlir::Operation::hasAttr(v111, "llvm.noalias", 0xCuLL))
          {
            llvm::SetVector<mlir::LLVM::SSACopyOp,llvm::SmallVector<mlir::LLVM::SSACopyOp,0u>,llvm::DenseSet<mlir::LLVM::SSACopyOp,llvm::DenseMapInfo<mlir::LLVM::SSACopyOp,void>>,0u>::insert(&v180, &v204);
          }
        }
      }

      ++v108;
    }

    while (v108 != v107);
    if (v182)
    {
      v173 = mlir::LLVM::AliasScopeDomainAttr::get(*(***(v6 + 24) + 32), *(*(v6 + 64 + 16 * ((*(v6 + 44) >> 23) & 1) + 48) + 8));
      v177 = 0;
      v178 = 0;
      v179 = 0;
      if (v182)
      {
        v112 = v181[1];
        v113 = 8 * v182;
        v114 = a2;
        while (1)
        {
          v115 = *v112;
          v116 = mlir::LLVM::AliasScopeAttr::get(v173, 0);
          *&v204 = v115 - 16;
          *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::LLVM::AliasScopeAttr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::LLVM::AliasScopeAttr>>,mlir::Value,mlir::LLVM::AliasScopeAttr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::LLVM::AliasScopeAttr>>::operator[](&v177, &v204) = v116;
          v117 = *(v114 + 16);
          v174 = *(***(v114 + 24) + 32);
          *&v175 = v117;
          *(&v175 + 1) = v114;
          v114 = v183;
          v118 = *(v183 + 24);
          v119 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::LLVM::NoAliasScopeDeclOp,void>::id, *(**v118 + 32));
          if ((v120 & 1) == 0)
          {
            break;
          }

          *&v204 = v118;
          *(&v204 + 1) = v119;
          *&v205 = &v206;
          *(&v205 + 1) = 0x400000000;
          v208 = v210;
          v209 = 0x400000000;
          v211 = v213;
          v212 = 0x400000000;
          v214 = 4;
          v215 = &v217;
          v216 = 0x100000000;
          v218 = &v220;
          v219 = 0x100000000;
          v221 = 0;
          v222 = 0;
          v223 = &mlir::detail::TypeIDResolver<void,void>::id;
          v224 = 0;
          v225 = 0;
          *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::NoAliasScopeDeclOpGenericAdaptorBase::Properties>(&v204) = v116;
          v121 = mlir::Operation::create(&v204);
          mlir::OpBuilder::insert(&v174, v121);
          mlir::OperationState::~OperationState(&v204);
          ++v112;
          v113 -= 8;
          if (!v113)
          {
            goto LABEL_165;
          }
        }

        v203 = 1283;
        v201 = "llvm.intr.experimental.noalias.scope.decl";
        v202 = 41;
        v190[8] = 259;
        v161 = &v188;
        goto LABEL_232;
      }

LABEL_165:
      v6 = a2;
      if (a3 != a4)
      {
        v122 = a3;
        do
        {
          v123 = v122 - 8;
          if (!v122)
          {
            v123 = 0;
          }

          *&v204 = &v180;
          *(&v204 + 1) = &v177;
          *&v205 = &v183;
          v124 = *(v123 + 40);
          v125 = v123 + 32;
          if (v124 != v123 + 32)
          {
            do
            {
              v126 = *(v124 + 8);
              __src = &v204;
              mlir::detail::walk<mlir::ForwardIterator>(v124, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZL40createNewAliasScopesFromNoAliasParameterS3_NS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS1_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEEE3__1NS1_4LLVM24AliasAnalysisOpInterfaceEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPSF_EE5valuesr3std7is_sameIT3_vEE5valueEST_E4typeES3_OT1_EUlS3_E_EEvlS3_, &__src, 1);
              v124 = v126;
            }

            while (v126 != v125);
          }

          v122 = *(v122 + 8);
        }

        while (v122 != a4);
      }

      MEMORY[0x25F891030](v177, 8);
    }
  }

  if (v186)
  {
    v127 = v185[1];
    v128 = 8 * v186;
    do
    {
      v129 = *v127;
      v130 = (*v127 - 16);
      *&v204 = *(*(*v127 + 72) + 24);
      mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v130, &v204);
      if (*(v129 + 2))
      {
        *(v129 + 2) = 0;
        v132 = *v129;
        v131 = *(v129 + 1);
        *v131 = *v129;
        *(v132 + 8) = v131;
        *v129 = 0;
        *(v129 + 1) = 0;
      }

      mlir::Operation::destroy(v129);
      v127 += 8;
      v128 -= 8;
    }

    while (v128);
  }

  if (v181[1] != &v183)
  {
    free(v181[1]);
  }

  MEMORY[0x25F891030](v180, 8);
  if (v185[1] != &v187)
  {
    free(v185[1]);
  }

  MEMORY[0x25F891030](v184, 8);
  v133 = llvm::DefaultDoCastIfPossible<mlir::LLVM::AliasAnalysisOpInterface,mlir::Operation *,llvm::CastInfo<mlir::LLVM::AliasAnalysisOpInterface,mlir::Operation *,void>>::doCastIfPossible(v6);
  if (v133)
  {
    v135 = v133;
    v136 = v134;
    v137 = (*v134)(v134, v133);
    v199 = v137;
    v188 = v136[2](v136, v135);
    if (a3 != a4)
    {
      if (v137 | v188)
      {
        v138 = a3;
        do
        {
          v139 = v138 - 8;
          if (!v138)
          {
            v139 = 0;
          }

          *&v204 = &v199;
          *(&v204 + 1) = &v188;
          v140 = *(v139 + 40);
          v141 = v139 + 32;
          if (v140 != v139 + 32)
          {
            do
            {
              v142 = *(v140 + 8);
              __src = &v204;
              mlir::detail::walk<mlir::ForwardIterator>(v140, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZL23appendCallOpAliasScopesS3_NS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS1_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEEE3__0NS1_4LLVM24AliasAnalysisOpInterfaceEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPSF_EE5valuesr3std7is_sameIT3_vEE5valueEST_E4typeES3_OT1_EUlS3_E_EEvlS3_, &__src, 1);
              v140 = v142;
            }

            while (v142 != v141);
          }

          v138 = *(v138 + 8);
        }

        while (v138 != a4);
      }
    }
  }

  if (mlir::OpInterface<mlir::LLVM::AccessGroupOpInterface,mlir::LLVM::detail::AccessGroupOpInterfaceInterfaceTraits>::getInterfaceFor(v6))
  {
    v143 = v6 ? mlir::OpInterface<mlir::LLVM::AccessGroupOpInterface,mlir::LLVM::detail::AccessGroupOpInterfaceInterfaceTraits>::getInterfaceFor(v6) : 0;
    if (v6)
    {
      v144 = (*v143)(v143, v6);
      if (a3 != a4)
      {
        v145 = v144;
        if (v144)
        {
          v146 = a3;
          do
          {
            v147 = v146 - 8;
            if (!v146)
            {
              v147 = 0;
            }

            v148 = v147 + 32;
              ;
            }

            while (m != v148)
            {
              InterfaceFor = mlir::OpInterface<mlir::LLVM::AccessGroupOpInterface,mlir::LLVM::detail::AccessGroupOpInterfaceInterfaceTraits>::getInterfaceFor(m);
              v151 = (*InterfaceFor)(InterfaceFor, m);
              v152 = concatArrayAttr(v151, v145);
              (*(InterfaceFor + 8))(InterfaceFor, m, v152);
              do
              {
                m = *(m + 8);
              }

              while (m != v148 && !mlir::OpInterface<mlir::LLVM::AccessGroupOpInterface,mlir::LLVM::detail::AccessGroupOpInterfaceInterfaceTraits>::getInterfaceFor(m));
            }

            v146 = *(v146 + 8);
          }

          while (v146 != a4);
        }
      }
    }
  }

  v188 = v6;
  v153 = mlir::Operation::getParentOfType<mlir::FunctionOpInterface>(v6);
  if (v153)
  {
    v154 = *(v153 + 24);
    if (v154)
    {
      if (*(*v154 + 136) == &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id)
      {
        v155 = v154[3];
        if (v155)
        {
          if (*(*v155 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::DISubprogramAttr,void>::id)
          {
            v155 = 0;
          }

          *&v184 = v155;
          if (v155)
          {
            v199 = &v188;
            v200 = &v184;
            LODWORD(v208) = 0;
            v206 = 0u;
            v207 = 0u;
            v204 = 0u;
            v205 = 0u;
            __src = &unk_286E986E8;
            v192 = &v199;
            v194 = &__src;
            std::vector<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>::emplace_back<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>(&v204, &__src);
            std::__function::__value_func<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>::~__value_func[abi:nn200100](&__src);
            while (a3 != a4)
            {
              v156 = a3 - 8;
              if (!a3)
              {
                v156 = 0;
              }

              v157 = v156 + 32;
              for (n = *(v156 + 40); n != v157; n = *(n + 8))
              {
                mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::recursivelyReplaceElementsIn(&v204, n, 1, 0, 0);
              }

              a3 = *(a3 + 8);
            }

            MEMORY[0x25F891030](v207, 8);
            __src = &v205 + 1;
            std::vector<std::function<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>>::__destroy_vector::operator()[abi:nn200100](&__src);
            __src = &v204;
            std::vector<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>::__destroy_vector::operator()[abi:nn200100](&__src);
          }
        }
      }
    }
  }
}

BOOL anonymous namespace::LLVMInlinerInterface::allowSingleBlockOptimization(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    return 1;
  }

  v3 = a2 - 8;
  if (!a2)
  {
    v3 = 0;
  }

  return *(*(*(v3 + 32) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::LLVM::UnreachableOp,void>::id;
}

uint64_t llvm::any_of<mlir::ArrayAttr,anonymous namespace::LLVMInlinerInterface::isLegalToInline(mlir::Operation *,mlir::Operation *,BOOL)::{lambda(mlir::Attribute)#1}>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = &a1[a2];
  while (1)
  {
    v4 = *a1;
    if (*(**a1 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v5 = *(a3 + 40);
      if (v5)
      {
        v6 = *(a3 + 24);
        v7 = (v5 - 1) & ((v4 >> 4) ^ (v4 >> 9));
        v8 = *(v6 + 8 * v7);
        if (v8 != v4)
        {
          v9 = 1;
          while (v8 != -4096)
          {
            v10 = v7 + v9++;
            v7 = v10 & (v5 - 1);
            v8 = *(v6 + 8 * v7);
            if (v8 == v4)
            {
              goto LABEL_6;
            }
          }

          goto LABEL_7;
        }

LABEL_6:
        if (v7 != v5)
        {
          return 1;
        }
      }
    }

LABEL_7:
    if (++a1 == v3)
    {
      return 0;
    }
  }
}

mlir::Operation *mlir::OpBuilder::create<mlir::LLVM::ConstantOp,mlir::IntegerType,mlir::IntegerAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::ConstantOp>(a1, *(**a2 + 32));
  v14[0] = a2;
  v14[1] = v8;
  v14[2] = &v15;
  v14[3] = 0x400000000;
  v16[0] = v17;
  v16[1] = 0x400000000;
  v17[4] = v18;
  v17[5] = 0x400000000;
  v18[8] = 4;
  v18[9] = v19;
  v18[10] = 0x100000000;
  v19[1] = v20;
  v19[2] = 0x100000000;
  v20[1] = 0;
  v20[2] = 0;
  v20[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v20[4] = 0;
  v20[6] = 0;
  v9 = *a4;
  v13 = *a3;
  *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ConstantOpGenericAdaptorBase::Properties>(v14) = v9;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v16, &v13, v14);
  v10 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v10);
  if (*(*(v10 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::LLVM::ConstantOp,void>::id)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v11;
}

void llvm::SmallVectorImpl<mlir::Operation *>::append<mlir::ValueUserIterator<mlir::ResultRange::UseIterator,mlir::OpOperand>,void>(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = a2[1];
  v14 = *a2;
  v15 = v6;
  v16 = *(a2 + 4);
  v7 = *(a3 + 32);
  if (v16 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      ++v8;
      mlir::ResultRange::UseIterator::operator++(&v14);
    }

    while (v16 != v7);
  }

  v9 = *(a1 + 8);
  if (v8 + v9 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8 + v9, 8);
    v9 = *(a1 + 8);
  }

  v10 = a2[1];
  v14 = *a2;
  v15 = v10;
  v11 = *(a2 + 4);
  v16 = v11;
  v12 = *(a3 + 32);
  if (v11 != v12)
  {
    v13 = (*a1 + 8 * v9);
    do
    {
      *v13++ = *(v11 + 16);
      mlir::ResultRange::UseIterator::operator++(&v14);
      v11 = v16;
    }

    while (v16 != v12);
    LODWORD(v9) = *(a1 + 8);
  }

  *(a1 + 8) = v9 + v8;
}

__n128 llvm::SmallVectorTemplateBase<std::tuple<mlir::LLVM::AllocaOp,mlir::IntegerAttr,BOOL>,true>::growAndEmplaceBack<mlir::LLVM::AllocaOp&,mlir::IntegerAttr&,BOOL &>(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v11[0] = a2;
  v11[1] = a3;
  v12 = a4;
  v5 = *(a1 + 8);
  v6 = *a1;
  v7 = v11;
  if (v5 >= *(a1 + 12))
  {
    if (v6 <= v11 && v6 + 24 * v5 > v11)
    {
      v10 = v11 - v6;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5 + 1, 24);
      v6 = *a1;
      v7 = &v10[*a1];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5 + 1, 24);
      v6 = *a1;
      v7 = v11;
    }
  }

  v8 = (v6 + 24 * *(a1 + 8));
  result = *v7;
  v8[1].n128_u64[0] = v7[1].n128_u64[0];
  *v8 = result;
  ++*(a1 + 8);
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZL20deepCloneAliasScopesN4llvm14iterator_rangeINS5_14ilist_iteratorINS5_12ilist_detail12node_optionsINS2_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEEE3__0NS2_4LLVM20AliasScopeDomainAttrENS2_9AttributeEvEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSH_E_NS_9allocatorISQ_EEFNS2_10WalkResultESH_EE7__cloneEPNS0_6__baseISU_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286E98658;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZL20deepCloneAliasScopesN4llvm14iterator_rangeINS5_14ilist_iteratorINS5_12ilist_detail12node_optionsINS2_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEEE3__0NS2_4LLVM20AliasScopeDomainAttrENS2_9AttributeEvEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSH_E_NS_9allocatorISQ_EEFNS2_10WalkResultESH_EEclEOSH_(uint64_t a1, void ****a2)
{
  v4 = *a2;
  v5 = **a2;
  if (v5[17] == &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeDomainAttr,void>::id)
  {
    v9[3] = v2;
    v9[4] = v3;
    v9[0] = v4;
    v7 = mlir::LLVM::AliasScopeDomainAttr::get(*(*v5 + 4), v4[2]);
    *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Attribute,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Attribute>>,mlir::Attribute,mlir::Attribute,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Attribute>>::operator[](*(a1 + 8), v9) = v7;
  }

  return 1;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Attribute,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Attribute>>,mlir::Attribute,mlir::Attribute,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Attribute>>::operator[](void *a1, uint64_t *a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Attribute,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Attribute>>,mlir::Attribute,mlir::Attribute,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Attribute>>::LookupBucketFor<mlir::Attribute>(*a1, *(a1 + 4), *a2, &v9);
  v5 = v9;
  if (v4)
  {
    return v5 + 1;
  }

  v10 = v9;
  v6 = *(a1 + 2);
  v7 = *(a1 + 4);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_9;
  }

  if (v7 + ~v6 - *(a1 + 3) <= v7 >> 3)
  {
LABEL_9:
    llvm::DenseMap<mlir::Attribute,mlir::Attribute,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Attribute>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Attribute,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Attribute>>,mlir::Attribute,mlir::Attribute,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Attribute>>::LookupBucketFor<mlir::Attribute>(*a1, *(a1 + 4), *a2, &v10);
    v6 = *(a1 + 2);
    v5 = v10;
  }

  *(a1 + 2) = v6 + 1;
  if (*v5 != -4096)
  {
    --*(a1 + 3);
  }

  *v5 = *a2;
  v5[1] = 0;
  return v5 + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Attribute,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Attribute>>,mlir::Attribute,mlir::Attribute,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Attribute>>::LookupBucketFor<mlir::Attribute>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 16 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 16 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

uint64_t *llvm::DenseMap<mlir::Attribute,mlir::Attribute,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Attribute>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 2;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Attribute,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Attribute>>,mlir::Attribute,mlir::Attribute,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Attribute>>::LookupBucketFor<mlir::Attribute>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *v19;
          v21[1] = v19[1];
          ++*(a1 + 8);
        }

        v19 += 2;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0xFFFFFFFFFFFFFFFLL;
    v25 = v24 & 0xFFFFFFFFFFFFFFFLL;
    v26 = (v24 & 0xFFFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 2;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_25D0A0500)));
      if (v29.i8[0])
      {
        *(v28 - 2) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 4;
    }

    while (v26 != v23);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZL20deepCloneAliasScopesN4llvm14iterator_rangeINS5_14ilist_iteratorINS5_12ilist_detail12node_optionsINS2_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEEE3__1NS2_4LLVM14AliasScopeAttrENS2_9AttributeEvEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSH_E_NS_9allocatorISQ_EEFNS2_10WalkResultESH_EE7__cloneEPNS0_6__baseISU_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286E986A0;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZL20deepCloneAliasScopesN4llvm14iterator_rangeINS5_14ilist_iteratorINS5_12ilist_detail12node_optionsINS2_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEEE3__1NS2_4LLVM14AliasScopeAttrENS2_9AttributeEvEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSH_E_NS_9allocatorISQ_EEFNS2_10WalkResultESH_EEclEOSH_(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeAttr,void>::id)
  {
    v7 = *a2;
    v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Attribute,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Attribute>>,mlir::Attribute,mlir::Attribute,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Attribute>>::doFind<mlir::Attribute>(**(a1 + 8), *(*(a1 + 8) + 16), *(v2 + 16));
    if (v4)
    {
      v4 = *(v4 + 8);
    }

    v5 = mlir::LLVM::AliasScopeAttr::get(v4, *(v2 + 24));
    *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Attribute,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Attribute>>,mlir::Attribute,mlir::Attribute,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Attribute>>::operator[](*(a1 + 8), &v7) = v5;
  }

  return 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Attribute,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Attribute>>,mlir::Attribute,mlir::Attribute,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Attribute>>::doFind<mlir::Attribute>(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v3 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v4 = *(a1 + 16 * v3);
    if (v4 == a3)
    {
      return a1 + 16 * v3;
    }

    v6 = 1;
    while (v4 != -4096)
    {
      v7 = v3 + v6++;
      v3 = v7 & (a2 - 1);
      v4 = *(a1 + 16 * v3);
      if (v4 == a3)
      {
        return a1 + 16 * v3;
      }
    }
  }

  return 0;
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<deepCloneAliasScopes(llvm::iterator_range<llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Block,false,false,void,false,void>,false,false>>)::$_3>(uint64_t **a1, uint64_t a2)
{
  result = llvm::DefaultDoCastIfPossible<mlir::LLVM::AliasAnalysisOpInterface,mlir::Operation *,llvm::CastInfo<mlir::LLVM::AliasAnalysisOpInterface,mlir::Operation *,void>>::doCastIfPossible(a2);
  if (result)
  {
    v6 = result;
    v7 = v5;
    v8 = *a1;
    v9 = (*v5)(v5, result);
    v10 = deepCloneAliasScopes(llvm::iterator_range<llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Block,false,false,void,false,void>,false,false>>)::$_2::operator()(v8, v9);
    (v7[1])(v7, v6, v10);
    v11 = *a1;
    v12 = v7[2](v7, v6);
    v13 = deepCloneAliasScopes(llvm::iterator_range<llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Block,false,false,void,false,void>,false,false>>)::$_2::operator()(v11, v12);
    result = (v7[3])(v7, v6, v13);
  }

  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::LLVM::NoAliasScopeDeclOp,void>::id)
  {
    mlir::AttrTypeWalker::walkImpl<mlir::Attribute,std::vector<std::function<mlir::WalkResult ()(mlir::Attribute)>>>(a1[1], *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1)), a1[1], 1);
    v14 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Attribute,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Attribute>>,mlir::Attribute,mlir::Attribute,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Attribute>>::doFind<mlir::Attribute>(*a1[2], *(a1[2] + 4), *v14);
    if (result)
    {
      v15 = *(result + 8);
    }

    else
    {
      v15 = 0;
    }

    *v14 = v15;
  }

  return result;
}

uint64_t deepCloneAliasScopes(llvm::iterator_range<llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Block,false,false,void,false,void>,false,false>>)::$_2::operator()(uint64_t *a1, void *a2)
{
  v21[6] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 0;
  }

  mlir::AttrTypeWalker::walkImpl<mlir::Attribute,std::vector<std::function<mlir::WalkResult ()(mlir::Attribute)>>>(*a1, a2, *a1, 1);
  v4 = a2[1];
  v5 = *(**a2 + 32);
  v6 = a1[1];
  v7 = a2[2];
  v19 = v21;
  v20 = 0x600000000;
  v8 = (8 * v7) >> 3;
  if (v8 < 7)
  {
    v9 = 0;
    v11 = 0;
    v10 = v21;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, v21, v8, 8);
    v9 = v20;
    v10 = v19;
    v11 = v20;
  }

  v13 = 8 * v7;
  if (v7)
  {
    v14 = &v10[2 * v9];
    v15 = v13;
    do
    {
      v16 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Attribute,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Attribute>>,mlir::Attribute,mlir::Attribute,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Attribute>>::doFind<mlir::Attribute>(*v6, *(v6 + 16), *v4);
      if (v16)
      {
        v17 = *(v16 + 8);
      }

      else
      {
        v17 = 0;
      }

      *v14 = v17;
      v14 += 2;
      ++v4;
      v15 -= 8;
    }

    while (v15);
    v11 = v20;
    v10 = v19;
  }

  LODWORD(v20) = v11 + (v13 >> 3);
  v12 = mlir::ArrayAttr::get(v5, v10, v20);
  if (v19 != v21)
  {
    free(v19);
  }

  return v12;
}

uint64_t llvm::DefaultDoCastIfPossible<mlir::LLVM::AliasAnalysisOpInterface,mlir::Operation *,llvm::CastInfo<mlir::LLVM::AliasAnalysisOpInterface,mlir::Operation *,void>>::doCastIfPossible(uint64_t a1)
{
  v1 = a1;
  if (!mlir::OpInterface<mlir::LLVM::AliasAnalysisOpInterface,mlir::LLVM::detail::AliasAnalysisOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  if (v1)
  {
    mlir::OpInterface<mlir::LLVM::AliasAnalysisOpInterface,mlir::LLVM::detail::AliasAnalysisOpInterfaceInterfaceTraits>::getInterfaceFor(v1);
  }

  return v1;
}

void llvm::SetVector<mlir::LLVM::SSACopyOp,llvm::SmallVector<mlir::LLVM::SSACopyOp,0u>,llvm::DenseSet<mlir::LLVM::SSACopyOp,llvm::DenseMapInfo<mlir::LLVM::SSACopyOp,void>>,0u>::insert(void *a1, unint64_t *a2)
{
  v9 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<mlir::LLVM::SSACopyOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::LLVM::SSACopyOp,void>,llvm::detail::DenseSetPair<mlir::LLVM::SSACopyOp>>,mlir::LLVM::SSACopyOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::LLVM::SSACopyOp,void>,llvm::detail::DenseSetPair<mlir::LLVM::SSACopyOp>>::LookupBucketFor<mlir::LLVM::SSACopyOp>(*a1, *(a1 + 4), *a2, &v9))
  {
    return;
  }

  v4 = v9;
  v10 = v9;
  v5 = *(a1 + 2);
  v6 = *(a1 + 4);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
    goto LABEL_11;
  }

  if (v6 + ~v5 - *(a1 + 3) <= v6 >> 3)
  {
LABEL_11:
    llvm::DenseMap<mlir::LLVM::SSACopyOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::LLVM::SSACopyOp,void>,llvm::detail::DenseSetPair<mlir::LLVM::SSACopyOp>>::grow(a1, v6);
    llvm::DenseMapBase<llvm::DenseMap<mlir::LLVM::SSACopyOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::LLVM::SSACopyOp,void>,llvm::detail::DenseSetPair<mlir::LLVM::SSACopyOp>>,mlir::LLVM::SSACopyOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::LLVM::SSACopyOp,void>,llvm::detail::DenseSetPair<mlir::LLVM::SSACopyOp>>::LookupBucketFor<mlir::LLVM::SSACopyOp>(*a1, *(a1 + 4), *a2, &v10);
    v5 = *(a1 + 2);
    v4 = v10;
  }

  *(a1 + 2) = v5 + 1;
  if (*v4 != -4096)
  {
    --*(a1 + 3);
  }

  v7 = *a2;
  *v4 = v7;
  v8 = *(a1 + 8);
  if (v8 >= *(a1 + 9))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((a1 + 3), a1 + 5, v8 + 1, 8);
    LODWORD(v8) = *(a1 + 8);
  }

  *(a1[3] + 8 * v8) = v7;
  ++*(a1 + 8);
}

unint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::LLVM::AliasScopeAttr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::LLVM::AliasScopeAttr>>,mlir::Value,mlir::LLVM::AliasScopeAttr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::LLVM::AliasScopeAttr>>::operator[](void *a1, unint64_t *a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::LLVM::AliasScopeAttr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::LLVM::AliasScopeAttr>>,mlir::Value,mlir::LLVM::AliasScopeAttr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::LLVM::AliasScopeAttr>>::LookupBucketFor<mlir::Value>(*a1, *(a1 + 4), *a2, &v9);
  v5 = v9;
  if (v4)
  {
    return v5 + 1;
  }

  v10 = v9;
  v6 = *(a1 + 2);
  v7 = *(a1 + 4);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_9;
  }

  if (v7 + ~v6 - *(a1 + 3) <= v7 >> 3)
  {
LABEL_9:
    llvm::DenseMap<mlir::Value,mlir::LLVM::AliasScopeAttr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::LLVM::AliasScopeAttr>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::LLVM::AliasScopeAttr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::LLVM::AliasScopeAttr>>,mlir::Value,mlir::LLVM::AliasScopeAttr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::LLVM::AliasScopeAttr>>::LookupBucketFor<mlir::Value>(*a1, *(a1 + 4), *a2, &v10);
    v6 = *(a1 + 2);
    v5 = v10;
  }

  *(a1 + 2) = v6 + 1;
  if (*v5 != -4096)
  {
    --*(a1 + 3);
  }

  *v5 = *a2;
  v5[1] = 0;
  return v5 + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::LLVM::SSACopyOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::LLVM::SSACopyOp,void>,llvm::detail::DenseSetPair<mlir::LLVM::SSACopyOp>>,mlir::LLVM::SSACopyOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::LLVM::SSACopyOp,void>,llvm::detail::DenseSetPair<mlir::LLVM::SSACopyOp>>::LookupBucketFor<mlir::LLVM::SSACopyOp>(uint64_t a1, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
    v6 = a2 - 1;
    v7 = (-348639895 * ((v5 >> 47) ^ v5)) & (a2 - 1);
    v8 = (a1 + 8 * v7);
    v9 = *v8;
    if (*v8 == a3)
    {
      v10 = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      while (v9 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v9 == -8192;
        }

        if (v14)
        {
          v12 = v8;
        }

        v15 = v7 + v13++;
        v7 = v15 & v6;
        v8 = (a1 + 8 * (v15 & v6));
        v9 = *v8;
        v10 = 1;
        if (*v8 == a3)
        {
          goto LABEL_5;
        }
      }

      v10 = 0;
      if (v12)
      {
        v8 = v12;
      }
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

LABEL_5:
  *a4 = v8;
  return v10;
}

uint64_t *llvm::DenseMap<mlir::LLVM::SSACopyOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::LLVM::SSACopyOp,void>,llvm::detail::DenseSetPair<mlir::LLVM::SSACopyOp>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer((8 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0x1FFFFFFFFFFFFFFFLL;
      v13 = v12 & 0x1FFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0x1FFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 1;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 1) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 2;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 8 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v29 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::LLVM::SSACopyOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::LLVM::SSACopyOp,void>,llvm::detail::DenseSetPair<mlir::LLVM::SSACopyOp>>,mlir::LLVM::SSACopyOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::LLVM::SSACopyOp,void>,llvm::detail::DenseSetPair<mlir::LLVM::SSACopyOp>>::LookupBucketFor<mlir::LLVM::SSACopyOp>(*a1, *(a1 + 16), v20, &v29);
          *v29 = *v19;
          ++*(a1 + 8);
        }

        ++v19;
        v18 -= 8;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = v21 + 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 & 0x1FFFFFFFFFFFFFFFLL;
    v25 = (v23 & 0x1FFFFFFFFFFFFFFFLL) - (v23 & 1) + 2;
    v26 = vdupq_n_s64(v24);
    v27 = result + 1;
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(vdupq_n_s64(v22), xmmword_25D0A0500)));
      if (v28.i8[0])
      {
        *(v27 - 1) = -4096;
      }

      if (v28.i8[4])
      {
        *v27 = -4096;
      }

      v22 += 2;
      v27 += 2;
    }

    while (v25 != v22);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::LLVM::AliasScopeAttr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::LLVM::AliasScopeAttr>>,mlir::Value,mlir::LLVM::AliasScopeAttr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::LLVM::AliasScopeAttr>>::LookupBucketFor<mlir::Value>(uint64_t a1, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
    v6 = a2 - 1;
    v7 = (-348639895 * ((v5 >> 47) ^ v5)) & (a2 - 1);
    v8 = (a1 + 16 * v7);
    v9 = *v8;
    if (*v8 == a3)
    {
      v10 = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      while (v9 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v9 == -8192;
        }

        if (v14)
        {
          v12 = v8;
        }

        v15 = v7 + v13++;
        v7 = v15 & v6;
        v8 = (a1 + 16 * (v15 & v6));
        v9 = *v8;
        v10 = 1;
        if (*v8 == a3)
        {
          goto LABEL_5;
        }
      }

      v10 = 0;
      if (v12)
      {
        v8 = v12;
      }
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

LABEL_5:
  *a4 = v8;
  return v10;
}

uint64_t *llvm::DenseMap<mlir::Value,mlir::LLVM::AliasScopeAttr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::LLVM::AliasScopeAttr>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 2;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::LLVM::AliasScopeAttr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::LLVM::AliasScopeAttr>>,mlir::Value,mlir::LLVM::AliasScopeAttr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::LLVM::AliasScopeAttr>>::LookupBucketFor<mlir::Value>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *v19;
          v21[1] = v19[1];
          ++*(a1 + 8);
        }

        v19 += 2;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0xFFFFFFFFFFFFFFFLL;
    v25 = v24 & 0xFFFFFFFFFFFFFFFLL;
    v26 = (v24 & 0xFFFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 2;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_25D0A0500)));
      if (v29.i8[0])
      {
        *(v28 - 2) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 4;
    }

    while (v26 != v23);
  }

  return result;
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZL40createNewAliasScopesFromNoAliasParameterS3_NS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS1_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEEE3__1NS1_4LLVM24AliasAnalysisOpInterfaceEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPSF_EE5valuesr3std7is_sameIT3_vEE5valueEST_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t ***a1, uint64_t a2)
{
  v88[6] = *MEMORY[0x277D85DE8];
  v3 = llvm::DefaultDoCastIfPossible<mlir::LLVM::AliasAnalysisOpInterface,mlir::Operation *,llvm::CastInfo<mlir::LLVM::AliasAnalysisOpInterface,mlir::Operation *,void>>::doCastIfPossible(a2);
  if (!v3)
  {
    return;
  }

  v5 = *a1;
  v67 = v4;
  v68 = v3;
  (*(v4 + 48))(&v79, v4, v3);
  v69[0] = &v72;
  v69[1] = 4;
  v70 = 0;
  v71 = 1;
  v6 = &unk_25D0A0000;
  if (!v80)
  {
    v20 = 0;
LABEL_30:
    v16 = *v5;
    v19 = v68;
    goto LABEL_84;
  }

  v7 = v79;
  v8 = v79 + 8 * v80;
  do
  {
    v9 = *v7;
    v73 = &v86;
    v74 = v9;
    v86 = v88;
    v87 = 0x600000000;
    mlir::walkSlice(&v74, 1, llvm::function_ref<mlir::WalkContinuation ()(mlir::Value)>::callback_fn<getUnderlyingObjectSet(mlir::Value)::$_0>, &v73, &v82);
    v10 = v82;
    if (v82)
    {
      v75 = v77;
      v76 = 0x600000000;
      if (v87)
      {
        llvm::SmallVectorImpl<mlir::Value>::operator=(&v75, &v86);
      }

      v10 = 1;
    }

    else
    {
      LOBYTE(v75) = 0;
    }

    v78 = v10;
    if (v83 != &v85)
    {
      free(v83);
    }

    if (v86 != v88)
    {
      free(v86);
    }

    if (v78 != 1)
    {
      goto LABEL_104;
    }

    v11 = v75;
    if (v76)
    {
      v12 = 8 * v76;
      do
      {
        v13 = *v11++;
        llvm::SmallPtrSetImpl<mlir::Value>::insert(v69, v13, &v82);
        v12 -= 8;
      }

      while (v12);
      if ((v78 & 1) == 0)
      {
        goto LABEL_21;
      }

      v11 = v75;
    }

    if (v11 != v77)
    {
      free(v11);
    }

LABEL_21:
    v7 += 8;
  }

  while (v7 != v8);
  v14 = 8;
  if (v71)
  {
    v14 = 12;
  }

  v15 = *(v69 + v14);
  v16 = *v5;
  if (!v15)
  {
    v18 = v69[0];
LABEL_32:
    v21 = v69[0] + 8 * v15;
    if (v18 == v21)
    {
      v20 = 0;
      v19 = v68;
      goto LABEL_83;
    }

    v20 = 0;
    v22 = *v18;
    while (1)
    {
      v23 = *(v22 + 8) & 7;
      if (v23 == 7)
      {
        v24 = 0;
      }

      else
      {
        v24 = v22;
      }

      if (!v24)
      {
        goto LABEL_44;
      }

      v25 = *(v24 + 8) & 7;
      if (v25 == 6)
      {
        v26 = v24 + 24 * *(v24 + 16);
        v27 = v26 + 120;
        if (v26 == -120)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v27 = v24 + 16 * v25 + 16;
      }

      v28 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
      if ((*(**(v27 + 48) + 32))(*(v27 + 48), v28))
      {
        goto LABEL_71;
      }

      v23 = *(v22 + 8) & 7;
LABEL_44:
      if (v23 == 7)
      {
        v29 = 0;
      }

      else
      {
        v29 = v22;
      }

      if (!v29)
      {
        goto LABEL_104;
      }

      v30 = *(v29 + 8) & 7;
      if (v30 == 6)
      {
        v31 = v29 + 24 * *(v29 + 16);
        v32 = v31 + 120;
        if (v31 == -120 || *(*(v31 + 168) + 16) != &mlir::detail::TypeIDResolver<mlir::LLVM::SSACopyOp,void>::id)
        {
          v32 = v29 + 24 * *(v29 + 16) + 120;
          if (v29 + 24 * *(v29 + 16) == -120)
          {
            goto LABEL_104;
          }

LABEL_54:
          v34 = *(*(v32 + 48) + 16);
          if (v34 != &mlir::detail::TypeIDResolver<mlir::LLVM::AllocaOp,void>::id && v34 != &mlir::detail::TypeIDResolver<mlir::LLVM::AddressOfOp,void>::id)
          {
            goto LABEL_104;
          }

          v20 = 1;
          goto LABEL_71;
        }
      }

      else
      {
        v33 = v29 + 16 * v30;
        v32 = v33 + 16;
        if (*(*(v33 + 64) + 16) != &mlir::detail::TypeIDResolver<mlir::LLVM::SSACopyOp,void>::id)
        {
          goto LABEL_54;
        }
      }

      v36 = *v16;
      v37 = *(v16 + 4);
      if (v37)
      {
        v38 = 0x9DDFEA08EB382D69 * ((8 * v32 - 0xAE502812AA7333) ^ HIDWORD(v32));
        v39 = 0x9DDFEA08EB382D69 * (HIDWORD(v32) ^ (v38 >> 47) ^ v38);
        v40 = (v37 - 1) & (-348639895 * ((v39 >> 47) ^ v39));
        v41 = *(v36 + 8 * v40);
        if (v41 == v32)
        {
LABEL_62:
          v42 = v36 + 8 * v40;
        }

        else
        {
          v46 = 1;
          while (v41 != -4096)
          {
            v47 = v40 + v46++;
            v40 = v47 & (v37 - 1);
            v41 = *(v36 + 8 * v40);
            if (v41 == v32)
            {
              goto LABEL_62;
            }
          }

          v42 = 0;
        }
      }

      else
      {
        v42 = 0;
      }

      v43 = v36 + 8 * v37;
      if (v42)
      {
        v44 = v42 == v43;
      }

      else
      {
        v44 = 1;
      }

      v45 = v44;
      v20 |= v45;
LABEL_71:
      v18 += 8;
      v6 = &unk_25D0A0000;
      if (v18 != v21)
      {
        while (1)
        {
          v22 = *v18;
          if (*v18 < 0xFFFFFFFFFFFFFFFELL)
          {
            break;
          }

          v18 += 8;
          if (v18 == v21)
          {
            goto LABEL_30;
          }
        }

        if (v18 != v21)
        {
          continue;
        }
      }

      goto LABEL_30;
    }
  }

  v17 = 8 * v15;
  v18 = v69[0];
  v19 = v68;
  do
  {
    if (*v18 < 0xFFFFFFFFFFFFFFFELL)
    {
      goto LABEL_32;
    }

    v18 += 8;
    v17 -= 8;
  }

  while (v17);
  v20 = 0;
LABEL_83:
  v6 = &unk_25D0A0000;
LABEL_84:
  v82 = &v84;
  v48 = v6[115];
  v83 = v48;
  v49 = *(v16 + 8);
  if (v49)
  {
    v50 = v16[3];
    v51 = 8 * v49;
    do
    {
      v52 = (*v50 - 16);
      if (!llvm::SmallPtrSetImplBase::contains_imp(v69, v52))
      {
        v53 = v5[1];
        v75 = v52;
        v54 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::LLVM::AliasScopeAttr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::LLVM::AliasScopeAttr>>,mlir::Value,mlir::LLVM::AliasScopeAttr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::LLVM::AliasScopeAttr>>::operator[](v53, &v75);
        llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v82, *v54);
      }

      ++v50;
      v51 -= 8;
    }

    while (v51);
    if (v83)
    {
      v55 = (*(v67 + 16))(v67, v19);
      v56 = mlir::ArrayAttr::get(*(***(*v5[2] + 24) + 32), v82, v83);
      v57 = concatArrayAttr(v55, v56);
      (*(v67 + 24))(v67, v19, v57);
    }
  }

  if ((v20 & 1) == 0 && *(*(v19 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::LLVM::CallOp,void>::id)
  {
    v75 = v77;
    v76 = v48;
    v58 = *(*v5 + 8);
    if (v58)
    {
      v59 = (*v5)[3];
      v60 = 8 * v58;
      do
      {
        v61 = (*v59 - 16);
        if (llvm::SmallPtrSetImplBase::contains_imp(v69, v61))
        {
          v62 = v5[1];
          v86 = v61;
          v63 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::LLVM::AliasScopeAttr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::LLVM::AliasScopeAttr>>,mlir::Value,mlir::LLVM::AliasScopeAttr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::LLVM::AliasScopeAttr>>::operator[](v62, &v86);
          llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v75, *v63);
        }

        ++v59;
        v60 -= 8;
      }

      while (v60);
      if (v76)
      {
        v64 = (*v67)(v67, v19);
        v65 = mlir::ArrayAttr::get(*(***(*v5[2] + 24) + 32), v75, v76);
        v66 = concatArrayAttr(v64, v65);
        (*(v67 + 8))(v67, v19, v66);
      }
    }

    if (v75 != v77)
    {
      free(v75);
    }
  }

  if (v82 != &v84)
  {
    free(v82);
  }

LABEL_104:
  if ((v71 & 1) == 0)
  {
    free(v69[0]);
  }

  if (v79 != &v81)
  {
    free(v79);
  }
}

uint64_t concatArrayAttr(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v7[6] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a2)
    {
      v5 = v7;
      v6 = 0x600000000;
      llvm::SmallVectorImpl<mlir::Attribute>::append<mlir::Attribute const*,void>(&v5, *(a1 + 8), (*(a1 + 8) + 8 * *(a1 + 16)));
      llvm::SmallVectorImpl<mlir::Attribute>::append<mlir::Attribute const*,void>(&v5, *(v2 + 8), (*(v2 + 8) + 8 * *(v2 + 16)));
      v2 = mlir::ArrayAttr::get(*(**a1 + 32), v5, v6);
      if (v5 != v7)
      {
        free(v5);
      }
    }

    else
    {
      return a1;
    }
  }

  return v2;
}

void llvm::function_ref<mlir::WalkContinuation ()(mlir::Value)>::callback_fn<getUnderlyingObjectSet(mlir::Value)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  if ((~*(a2 + 8) & 7) != 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v9 = 0;
    goto LABEL_9;
  }

  v7 = *(v6 + 8) & 7;
  if (v7 != 6)
  {
    v9 = v6 + 16 * v7 + 16;
    goto LABEL_12;
  }

  v8 = v6 + 24 * *(v6 + 16);
  v9 = v8 + 120;
  if (v8 != -120)
  {
LABEL_12:
    if (!mlir::OpInterface<mlir::ViewLikeOpInterface,mlir::detail::ViewLikeOpInterfaceInterfaceTraits>::getInterfaceFor(v9))
    {
      goto LABEL_15;
    }

    InterfaceFor = mlir::OpInterface<mlir::ViewLikeOpInterface,mlir::detail::ViewLikeOpInterfaceInterfaceTraits>::getInterfaceFor(v9);
    if (!v9)
    {
      goto LABEL_15;
    }

LABEL_14:
    v16 = (*InterfaceFor)(InterfaceFor, v9);
    *a3 = 1;
    *(a3 + 8) = a3 + 24;
    *(a3 + 16) = 0x600000000;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a3 + 8), &v16, 0, &v16, 1);
    return;
  }

LABEL_9:
  InterfaceFor = 0;
  if (v9)
  {
    goto LABEL_14;
  }

LABEL_15:
  mlir::getControlFlowPredecessors(a2, &v16);
  if (v19 == 1)
  {
    v11 = v16;
    v12 = v17;
    *a3 = 1;
    *(a3 + 8) = a3 + 24;
    v13 = (a3 + 8);
    *(a3 + 16) = 0x600000000;
    v14 = v11 & 0xFFFFFFFFFFFFFFF9;
    v15 = v11 & 0xFFFFFFFFFFFFFFF9;
  }

  else
  {
    if ((~*(a2 + 8) & 7) != 0)
    {
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(*a1, a2);
      *a3 = 2;
    }

    else
    {
      *a3 = 0;
    }

    *(a3 + 8) = a3 + 24;
    v13 = (a3 + 8);
    *(a3 + 16) = 0x600000000;
    v14 = 0;
    v15 = 0;
    v12 = 0;
  }

  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v13, v14, 0, v15, v12);
  if (v19 == 1 && v16 != &v18)
  {
    free(v16);
  }
}

uint64_t mlir::OpInterface<mlir::ViewLikeOpInterface,mlir::detail::ViewLikeOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::ViewLikeOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::ViewLikeOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::ViewLikeOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZL23appendCallOpAliasScopesS3_NS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS1_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEEE3__0NS1_4LLVM24AliasAnalysisOpInterfaceEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPSF_EE5valuesr3std7is_sameIT3_vEE5valueEST_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t ***a1, uint64_t a2)
{
  result = llvm::DefaultDoCastIfPossible<mlir::LLVM::AliasAnalysisOpInterface,mlir::Operation *,llvm::CastInfo<mlir::LLVM::AliasAnalysisOpInterface,mlir::Operation *,void>>::doCastIfPossible(a2);
  if (result)
  {
    v5 = result;
    v6 = v4;
    v7 = *a1;
    if (**v7)
    {
      v8 = (*v4)(v4, result);
      v9 = concatArrayAttr(v8, **v7);
      result = (v6[1])(v6, v5, v9);
    }

    if (*v7[1])
    {
      v10 = v6[2](v6, v5);
      v11 = concatArrayAttr(v10, *v7[1]);
      v12 = v6[3];

      return (v12)(v6, v5, v11);
    }
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZL21handleLoopAnnotationsPNS2_9OperationEN4llvm14iterator_rangeINSA_14ilist_iteratorINSA_12ilist_detail12node_optionsINS2_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEEE3__0NS2_4LLVM18LoopAnnotationAttrENS2_9AttributeENS_4pairISM_NS2_10WalkResultEEEEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINSN_ISS_SO_EEEEEEvE4typeEOT_EUlSM_E_NS_9allocatorIS11_EEFNSU_ISP_EESM_EE7__cloneEPNS0_6__baseIS15_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286E986E8;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZL21handleLoopAnnotationsPNS2_9OperationEN4llvm14iterator_rangeINSA_14ilist_iteratorINSA_12ilist_detail12node_optionsINS2_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEEE3__0NS2_4LLVM18LoopAnnotationAttrENS2_9AttributeENS_4pairISM_NS2_10WalkResultEEEEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINSN_ISS_SO_EEEEEEvE4typeEOT_EUlSM_E_NS_9allocatorIS11_EEFNSU_ISP_EESM_EEclEOSM_@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LoopAnnotationAttr,void>::id)
  {
    v6 = result;
    v7 = *(v4 + 104);
    if (v7)
    {
      v8 = *(result + 8);
      v13 = mlir::CallSiteLoc::get(*(v4 + 104), *(**v8 + 24));
      v7 = mlir::FusedLoc::get(*(**v7 + 32), &v13, 1, *v8[1]);
    }

    v9 = *(v4 + 112);
    if (v9)
    {
      v10 = *(v6 + 8);
      v13 = mlir::CallSiteLoc::get(*(v4 + 112), *(**v10 + 24));
      result = mlir::FusedLoc::get(*(**v9 + 32), &v13, 1, *v10[1]);
    }

    else
    {
      result = 0;
    }

    if (v7 | result)
    {
      *&v12 = v7;
      *(&v12 + 1) = result;
      *&v11[16] = *(v4 + 96);
      *v11 = *(v4 + 80);
      result = mlir::LLVM::LoopAnnotationAttr::get(*(**v4 + 32), *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72), *(v4 + 80), *&v11[8], v12, *(v4 + 120), *(v4 + 128));
      v4 = result;
    }

    *a3 = v4;
    v5 = 1;
    *(a3 + 8) = 1;
  }

  else
  {
    v5 = 0;
    *a3 = 0;
  }

  *(a3 + 16) = v5;
  return result;
}

void *mlir::DialectRegistry::addExtension<mlir::LLVM::LLVMDialect>(void (*)(mlir::MLIRContext *,mlir::LLVM::LLVMDialect *))::Extension::~Extension(void *a1)
{
  *a1 = &unk_286E78AE0;
  v2 = a1[1];
  if (v2 != a1 + 3)
  {
    free(v2);
  }

  return a1;
}

void mlir::DialectRegistry::addExtension<mlir::LLVM::LLVMDialect>(void (*)(mlir::MLIRContext *,mlir::LLVM::LLVMDialect *))::Extension::~Extension(void *a1)
{
  *a1 = &unk_286E78AE0;
  v2 = a1[1];
  if (v2 != a1 + 3)
  {
    free(v2);
  }

  JUMPOUT(0x25F891040);
}

uint64_t mlir::impl::CanonicalizerBase<anonymous namespace::Canonicalizer>::CanonicalizerBase(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = a1 + 192;
  *(a1 + 184) = 0x400000000;
  *(a1 + 224) = a1 + 240;
  *(a1 + 232) = 0x400000000;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0x1000000000;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0;
  *a1 = &unk_286E987D8;
  v6.n128_u64[0] = "Seed the worklist in general top-down order";
  v6.n128_u64[1] = 43;
  LOBYTE(v5) = 1;
  __src[0] = &v5;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((a1 + 336), (a1 + 144), "top-down", 8, &v6, __src);
  *(a1 + 336) = &unk_286E76DD0;
  *(a1 + 520) = &unk_286E76E50;
  *&v5 = "Perform control flow optimizations to the region tree";
  *(&v5 + 1) = 53;
  v3 = 1;
  v4 = &v3;
  __src[0] = "disabled";
  __src[1] = 8;
  v10 = "Don't run any control-flow simplification.";
  v11 = 42;
  v12 = "normal";
  v13 = 6;
  v9 = 0;
  v14 = 1;
  v15 = "Perform simple control-flow simplifications (e.g. dead args elimination).";
  v16 = 73;
  v17 = "aggressive";
  v18 = 10;
  v19 = 2;
  v20 = "Perform aggressive control-flow simplification (e.g. block merging).";
  v21 = 68;
  v6.n128_u64[0] = v7;
  v6.n128_u64[1] = 0x400000000;
  llvm::SmallVectorImpl<llvm::cl::OptionEnumValue>::append<llvm::cl::OptionEnumValue const*,void>(&v6, __src, &v22);
  mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::Option<llvm::cl::desc,llvm::cl::initializer<mlir::GreedySimplifyRegionLevel>,llvm::cl::ValuesClass>(a1 + 536, (a1 + 144), &v5, &v4, &v6);
  *(a1 + 536) = &unk_286E98848;
  *(a1 + 1128) = &unk_286E988C8;
  if (v6.n128_u64[0] != v7)
  {
    free(v6.n128_u64[0]);
  }

  v6.n128_u64[0] = "Max. iterations between applying patterns / simplifying regions";
  v6.n128_u64[1] = 63;
  LODWORD(v5) = 10;
  __src[0] = &v5;
  mlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>(a1 + 1144, (a1 + 144), "max-iterations", 14, &v6, __src);
  *(a1 + 1144) = &unk_286E98BA0;
  *(a1 + 1336) = &unk_286E98C20;
  v6.n128_u64[0] = "Max. number of pattern rewrites within an iteration";
  v6.n128_u64[1] = 51;
  LODWORD(v5) = -1;
  __src[0] = &v5;
  mlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>(a1 + 1352, (a1 + 144), "max-num-rewrites", 16, &v6, __src);
  *(a1 + 1352) = &unk_286E98BA0;
  *(a1 + 1544) = &unk_286E98C20;
  v6.n128_u64[0] = "Test only: Fail pass on non-convergence to detect cyclic pattern";
  v6.n128_u64[1] = 64;
  LOBYTE(v5) = 0;
  __src[0] = &v5;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((a1 + 1560), (a1 + 144), "test-convergence", 16, &v6, __src);
  *(a1 + 1560) = &unk_286E76DD0;
  *(a1 + 1744) = &unk_286E76E50;
  v6.n128_u64[0] = "Labels of patterns that should be filtered out during application";
  v6.n128_u64[1] = 65;
  mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::ListOption<llvm::cl::desc>((a1 + 1760), (a1 + 144), "disable-patterns", 16, &v6);
  *(a1 + 1760) = &unk_286E77088;
  *(a1 + 2000) = &unk_286E77108;
  v6.n128_u64[0] = "Labels of patterns that should be used during application, all other patterns are filtered out";
  v6.n128_u64[1] = 94;
  mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::ListOption<llvm::cl::desc>((a1 + 2024), (a1 + 144), "enable-patterns", 15, &v6);
  *(a1 + 2024) = &unk_286E77088;
  *(a1 + 2264) = &unk_286E77108;
  return a1;
}

void anonymous namespace::Canonicalizer::~Canonicalizer(_anonymous_namespace_::Canonicalizer *this)
{
  *this = &unk_286E98768;
  v2 = *(this + 294);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *this = &unk_286E987D8;
  mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::~ListOption(this + 2024);
  mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::~ListOption(this + 1760);
  *(this + 195) = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](this + 1712);
  llvm::cl::Option::~Option(this + 195);
  *(this + 169) = &unk_286E775D0;
  std::__function::__value_func<void ()(long long const&)>::~__value_func[abi:nn200100](this + 1512);
  llvm::cl::Option::~Option(this + 169);
  *(this + 143) = &unk_286E775D0;
  std::__function::__value_func<void ()(long long const&)>::~__value_func[abi:nn200100](this + 1304);
  llvm::cl::Option::~Option(this + 143);
  mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option(this + 536);
  *(this + 42) = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](this + 488);
  llvm::cl::Option::~Option(this + 42);

  mlir::Pass::~Pass(this);
}

{

  JUMPOUT(0x25F891040);
}

__n128 anonymous namespace::Canonicalizer::runOnOperation(uint64_t this)
{
  v1 = *(this + 40) & 0xFFFFFFFFFFFFFFF8;
  v2 = *(this + 2344);
  v6 = *(this + 2288);
  v7 = *(this + 2304);
  result = *(this + 2320);
  v8 = *(this + 2336);
  v4 = *(v1 + 44);
  if ((v4 & 0x7FFFFF) != 0)
  {
    v5 = ((v1 + 16 * ((v4 >> 23) & 1) + ((v4 >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v1 + 40);
    v11 = 0;
    v9[0] = v6;
    v9[1] = v7;
    v9[2] = result;
    v10 = v8;
    mlir::applyPatternsGreedily(v5, v2, v9, &v11);
  }

  return result;
}

void anonymous namespace::Canonicalizer::initialize(_anonymous_namespace_::Canonicalizer *this, mlir::MLIRContext *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *(this + 2288) = *(this + 456);
  *(this + 573) = *(this + 164);
  *(this + 287) = *(this + 158);
  *(this + 288) = *(this + 184);
  v12 = a2;
  v13 = 0u;
  *v14 = 0u;
  v15 = v17;
  v16 = 0x600000000;
  v17[6] = 0;
  v17[7] = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0x2800000000;
  v22 = 0;
  v23 = 0;
  v24 = 0x2800000000;
  mlir::MLIRContext::getLoadedDialects(&v10, a2);
  v3 = v10;
  v4 = v11;
  if (v10 != v11)
  {
    do
    {
      v5 = *v3++;
      (*(*v5 + 16))(v5, &v12);
    }

    while (v3 != v4);
    v3 = v10;
  }

  if (v3)
  {
    v11 = v3;
    operator delete(v3);
  }

  v6 = *(*a2 + 240);
  if (v6)
  {
    v7 = *(*a2 + 232);
    v8 = 8 * v6;
    do
    {
      v9 = *v7++;
      (*(*v9 + 24))(v9, &v12, a2);
      v8 -= 8;
    }

    while (v8);
  }

  operator new();
}

uint64_t mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::Option<llvm::cl::desc,llvm::cl::initializer<mlir::GreedySimplifyRegionLevel>,llvm::cl::ValuesClass>(uint64_t a1, char *a2, _OWORD *a3, int **a4, uint64_t *a5)
{
  v40[3] = *MEMORY[0x277D85DE8];
  v10 = llvm::cl::Option::Option(a1, 0, 0);
  *(v10 + 120) = 0;
  *(v10 + 128) = &unk_286E98A30;
  *(v10 + 136) = 0;
  *v10 = &unk_286E989C8;
  *(v10 + 160) = v10 + 176;
  v32 = (v10 + 160);
  *(v10 + 168) = 0x800000000;
  *(v10 + 144) = &unk_286E98A70;
  *(v10 + 152) = v10;
  v11 = (v10 + 560);
  *(v10 + 560) = &unk_286E98B10;
  *(v10 + 584) = v10 + 560;
  llvm::cl::Option::setArgStr(v10, "region-simplify", 15, v12, v13, v14);
  llvm::SmallPtrSetImpl<llvm::cl::SubCommand *>::insert((a1 + 88), a2, &v34);
  *(a1 + 32) = *a3;
  v15 = **a4;
  *(a1 + 120) = v15;
  *(a1 + 140) = 1;
  *(a1 + 136) = v15;
  v16 = *(a5 + 2);
  if (v16)
  {
    v17 = *a5;
    v18 = *a5 + 40 * v16;
    do
    {
      v19 = *v17;
      v20 = *(v17 + 8);
      v21 = *(v17 + 16);
      v22 = *(v17 + 24);
      v34 = *v17;
      v35 = v20;
      v36 = v22;
      v37 = &unk_286E98A30;
      v39 = 1;
      v38 = v21;
      v23 = *(a1 + 168);
      v24 = *(a1 + 160);
      if (v23 >= *(a1 + 172))
      {
        if (v24 <= &v34 && v24 + 48 * v23 > &v34)
        {
          v31 = &v34 - v24;
          llvm::SmallVectorTemplateBase<llvm::cl::parser<mlir::GreedySimplifyRegionLevel>::OptionInfo,false>::grow(v32, v23 + 1);
          v24 = *v32;
          v25 = &v31[*v32];
          goto LABEL_5;
        }

        llvm::SmallVectorTemplateBase<llvm::cl::parser<mlir::GreedySimplifyRegionLevel>::OptionInfo,false>::grow(v32, v23 + 1);
        v24 = *v32;
      }

      v25 = &v34;
LABEL_5:
      v26 = v24 + 48 * *(a1 + 168);
      v27 = *(v25 + 1);
      *v26 = *v25;
      *(v26 + 16) = v27;
      *(v26 + 32) = &unk_286E98A50;
      v28 = *(v25 + 10);
      *(v26 + 44) = *(v25 + 44);
      *(v26 + 40) = v28;
      *(v26 + 32) = &unk_286E98A30;
      ++*(a1 + 168);
      llvm::cl::AddLiteralOption(*(a1 + 152), v19, v20);
      v17 += 40;
    }

    while (v17 != v18);
  }

  llvm::cl::Option::addArgument(a1);
  *(a1 + 600) = 0;
  *a1 = &unk_286E98908;
  *(a1 + 592) = &unk_286E98988;
  v34 = (a1 + 592);
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100]((a2 + 160), &v34);
  v33[0] = &unk_286E98B58;
  v33[1] = a1;
  *(&v36 + 1) = &v34;
  v33[3] = v33;
  v34 = &unk_286E98B58;
  v35 = a1;
  if (&v34 != v11)
  {
    v29 = *(a1 + 584);
    if (v29 == v11)
    {
      v40[0] = &unk_286E98B58;
      v40[1] = a1;
      *(&v36 + 1) = 0;
      (*(*v29 + 3))(v29, &v34);
      (*(**(a1 + 584) + 32))(*(a1 + 584));
      *(a1 + 584) = 0;
      *(&v36 + 1) = &v34;
      (*(v40[0] + 24))(v40, v11);
      (*(v40[0] + 32))(v40);
    }

    else
    {
      *(a1 + 560) = &unk_286E98B58;
      *(a1 + 568) = a1;
      *(&v36 + 1) = v29;
    }

    *(a1 + 584) = v11;
  }

  std::__function::__value_func<void ()(mlir::GreedySimplifyRegionLevel const&)>::~__value_func[abi:nn200100](&v34);
  std::__function::__value_func<void ()(mlir::GreedySimplifyRegionLevel const&)>::~__value_func[abi:nn200100](v33);
  return a1;
}

uint64_t llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::handleOccurrence(uint64_t a1, __int16 a2, const void *a3, size_t a4, const void *a5, size_t a6)
{
  v7 = a1;
  v18 = 0;
  v8 = *(*(a1 + 152) + 24);
  if (v8)
  {
    a3 = a5;
  }

  if (v8)
  {
    a4 = a6;
  }

  v11 = *(a1 + 168);
  if (v11)
  {
    v12 = *(a1 + 160);
    while (1)
    {
      if (*(v12 + 8) == a4)
      {
        if (!a4)
        {
          break;
        }

        a1 = memcmp(*v12, a3, a4);
        if (!a1)
        {
          break;
        }
      }

      v12 += 48;
      if (!--v11)
      {
        goto LABEL_13;
      }
    }

    v15 = *(v12 + 40);
    v18 = v15;
  }

  else
  {
LABEL_13:
    v20 = 1283;
    v19[0] = "Cannot find option named '";
    v19[2] = a3;
    v19[3] = a4;
    v21[0] = v19;
    v21[2] = "'!";
    v22 = 770;
    v13 = llvm::errs(a1);
    if (llvm::cl::Option::error(v7, v21, 0, 0, v13))
    {
      return 1;
    }

    v15 = 0;
  }

  *(v7 + 120) = v15;
  *(v7 + 12) = a2;
  v16 = *(v7 + 584);
  if (v16)
  {
    (*(*v16 + 48))(v16, &v18);
    return 0;
  }

  else
  {
    v17 = std::__throw_bad_function_call[abi:nn200100]();
    return llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::getValueExpectedFlagDefault(v17);
  }
}

uint64_t llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::getValueExpectedFlagDefault(uint64_t a1)
{
  if (*(*(a1 + 152) + 24))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

void mlir::Pass::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option(uint64_t a1)
{
  mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option(a1);

  JUMPOUT(0x25F891040);
}

llvm::raw_ostream *llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::printOptionValue(llvm::raw_ostream *result, int a2, char a3)
{
  if ((a3 & 1) != 0 || *(result + 140) != 1 || *(result + 34) != *(result + 30))
  {
    v9 = v3;
    v10 = v4;
    v5 = *(result + 30);
    v6 = &unk_286E98A30;
    v8 = 1;
    v7 = v5;
    return llvm::cl::generic_parser_base::printGenericOptionDiff((result + 144), result, &v6, (result + 128), a2);
  }

  return result;
}

uint64_t llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::setDefault(uint64_t result)
{
  if (*(result + 140) == 1)
  {
    v1 = *(result + 136);
  }

  else
  {
    v1 = 0;
  }

  *(result + 120) = v1;
  return result;
}

llvm::raw_ostream *mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::print(uint64_t a1, llvm::raw_ostream *this)
{
  v4 = llvm::raw_ostream::operator<<(this, *(a1 + 16), *(a1 + 24));
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 61);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 61;
  }

    ;
  }

  v7 = *(i - 44);
  v8 = *(i - 36);

  return llvm::raw_ostream::operator<<(this, v7, v8);
}

uint64_t mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result + 120) = *(a2 - 472);
  *(result + 600) = *(a2 + 8);
  return result;
}

void non-virtual thunk tomlir::Pass::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option(uint64_t a1)
{
  mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option(a1 - 592);
}

{
  mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option(a1 - 592);

  JUMPOUT(0x25F891040);
}

uint64_t non-virtual thunk tomlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result - 472) = *(a2 - 472);
  *(result + 8) = *(a2 + 8);
  return result;
}

void mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option(uint64_t a1)
{
  mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option(a1);

  JUMPOUT(0x25F891040);
}

{
  *a1 = &unk_286E989C8;
  std::__function::__value_func<void ()(mlir::GreedySimplifyRegionLevel const&)>::~__value_func[abi:nn200100](a1 + 560);
  *(a1 + 144) = &unk_286E98AC0;
  v2 = *(a1 + 160);
  if (v2 != (a1 + 176))
  {
    free(v2);
  }

  llvm::cl::Option::~Option(a1);
}

void non-virtual thunk tomlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option(uint64_t a1)
{
  mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option(a1 - 592);
}

{
  mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option(a1 - 592);

  JUMPOUT(0x25F891040);
}

void llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~opt(uint64_t a1)
{
  *a1 = &unk_286E989C8;
  std::__function::__value_func<void ()(mlir::GreedySimplifyRegionLevel const&)>::~__value_func[abi:nn200100](a1 + 560);
  *(a1 + 144) = &unk_286E98AC0;
  v2 = *(a1 + 160);
  if (v2 != (a1 + 176))
  {
    free(v2);
  }

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_286E989C8;
  std::__function::__value_func<void ()(mlir::GreedySimplifyRegionLevel const&)>::~__value_func[abi:nn200100](a1 + 560);
  *(a1 + 144) = &unk_286E98AC0;
  v2 = *(a1 + 160);
  if (v2 != (a1 + 176))
  {
    free(v2);
  }

  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x25F891040);
}

void *mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>::~GenericOptionParser(void *a1)
{
  *a1 = &unk_286E98AC0;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  return a1;
}

void mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>::~GenericOptionParser(void *a1)
{
  *a1 = &unk_286E98AC0;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  JUMPOUT(0x25F891040);
}

void *llvm::cl::parser<mlir::GreedySimplifyRegionLevel>::~parser(void *a1)
{
  *a1 = &unk_286E98AC0;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  return a1;
}

void llvm::cl::parser<mlir::GreedySimplifyRegionLevel>::~parser(void *a1)
{
  *a1 = &unk_286E98AC0;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  JUMPOUT(0x25F891040);
}

void llvm::SmallVectorTemplateBase<llvm::cl::parser<mlir::GreedySimplifyRegionLevel>::OptionInfo,false>::grow(uint64_t a1, unint64_t a2)
{
  v13 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 48, &v13);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = &v5[48 * v6];
    v8 = v4 + 32;
    v9 = v4;
    do
    {
      v10 = *(v5 + 1);
      *v9 = *v5;
      *(v9 + 1) = v10;
      *(v9 + 4) = &unk_286E98A50;
      v11 = *(v5 + 10);
      v9[44] = v5[44];
      *(v9 + 10) = v11;
      *(v9 + 4) = &unk_286E98A30;
      v9 += 48;
      v5 += 48;
      v8 += 48;
    }

    while (v5 != v7);
    v5 = *a1;
  }

  v12 = v13;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v12;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionINS2_25GreedySimplifyRegionLevelENS4_19GenericOptionParserIS6_EEEC1IJN4llvm2cl4descENSC_11initializerIS6_EENSC_11ValuesClassEEEERS4_NSB_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISP_EEFvRKS6_EE7__cloneEPNS0_6__baseISU_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286E98B58;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(mlir::GreedySimplifyRegionLevel const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t mlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, _OWORD *a5, int **a6)
{
  v23[3] = *MEMORY[0x277D85DE8];
  v12 = llvm::cl::Option::Option(a1, 0, 0);
  *(v12 + 120) = 0u;
  *(v12 + 136) = 0u;
  *(v12 + 128) = &unk_286E77638;
  *v12 = &unk_286E775D0;
  *(v12 + 152) = &unk_286E79120;
  v13 = (v12 + 160);
  *(v12 + 160) = &unk_286E77658;
  *(v12 + 184) = v12 + 160;
  llvm::cl::Option::setArgStr(v12, a3, a4, v14, v15, v16);
  llvm::SmallPtrSetImpl<llvm::cl::SubCommand *>::insert((a1 + 88), a2, v21);
  *(a1 + 32) = *a5;
  v17 = **a6;
  *(a1 + 120) = v17;
  *(a1 + 144) = 1;
  *(a1 + 136) = v17;
  llvm::cl::Option::addArgument(a1);
  *(a1 + 200) = 0;
  *a1 = &unk_286E98C60;
  *(a1 + 192) = &unk_286E98CE0;
  v21[0] = a1 + 192;
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100]((a2 + 160), v21);
  v20[0] = &unk_286E98D20;
  v20[1] = a1;
  v22 = v21;
  v20[3] = v20;
  v21[0] = &unk_286E98D20;
  v21[1] = a1;
  if (v21 != v13)
  {
    v18 = *(a1 + 184);
    if (v18 == v13)
    {
      v23[0] = &unk_286E98D20;
      v23[1] = a1;
      v22 = 0;
      (*(*v18 + 24))(v18, v21);
      (*(**(a1 + 184) + 32))(*(a1 + 184));
      *(a1 + 184) = 0;
      v22 = v21;
      (*(v23[0] + 24))(v23, v13);
      (*(v23[0] + 32))(v23);
    }

    else
    {
      *(a1 + 160) = &unk_286E98D20;
      *(a1 + 168) = a1;
      v22 = v18;
    }

    *(a1 + 184) = v13;
  }

  std::__function::__value_func<void ()(long long const&)>::~__value_func[abi:nn200100](v21);
  std::__function::__value_func<void ()(long long const&)>::~__value_func[abi:nn200100](v20);
  return a1;
}

void mlir::Pass::Option<long long,llvm::cl::parser<long long>>::~Option(void **a1)
{
  *a1 = &unk_286E775D0;
  std::__function::__value_func<void ()(long long const&)>::~__value_func[abi:nn200100]((a1 + 20));

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_286E775D0;
  std::__function::__value_func<void ()(long long const&)>::~__value_func[abi:nn200100]((a1 + 20));
  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x25F891040);
}

llvm::raw_ostream *mlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::print(uint64_t a1, llvm::raw_ostream *this)
{
  v4 = llvm::raw_ostream::operator<<(this, *(a1 + 16), *(a1 + 24));
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 61);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 61;
  }

  v6 = *(a1 + 120);

  return llvm::write_integer(this, v6, 0, 0);
}

uint64_t mlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result + 120) = *(a2 - 72);
  *(result + 200) = *(a2 + 8);
  return result;
}

void non-virtual thunk tomlir::Pass::Option<long long,llvm::cl::parser<long long>>::~Option(uint64_t a1)
{
  v1 = (a1 - 192);
  *(a1 - 192) = &unk_286E775D0;
  std::__function::__value_func<void ()(long long const&)>::~__value_func[abi:nn200100](a1 - 32);

  llvm::cl::Option::~Option(v1);
}

{
  v1 = (a1 - 192);
  *(a1 - 192) = &unk_286E775D0;
  std::__function::__value_func<void ()(long long const&)>::~__value_func[abi:nn200100](a1 - 32);
  llvm::cl::Option::~Option(v1);

  JUMPOUT(0x25F891040);
}

uint64_t non-virtual thunk tomlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result - 72) = *(a2 - 72);
  *(result + 8) = *(a2 + 8);
  return result;
}

void mlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::~Option(void **a1)
{
  *a1 = &unk_286E775D0;
  std::__function::__value_func<void ()(long long const&)>::~__value_func[abi:nn200100]((a1 + 20));

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_286E775D0;
  std::__function::__value_func<void ()(long long const&)>::~__value_func[abi:nn200100]((a1 + 20));
  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x25F891040);
}

void non-virtual thunk tomlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::~Option(uint64_t a1)
{
  v1 = (a1 - 192);
  *(a1 - 192) = &unk_286E775D0;
  std::__function::__value_func<void ()(long long const&)>::~__value_func[abi:nn200100](a1 - 32);

  llvm::cl::Option::~Option(v1);
}

{
  v1 = (a1 - 192);
  *(a1 - 192) = &unk_286E775D0;
  std::__function::__value_func<void ()(long long const&)>::~__value_func[abi:nn200100](a1 - 32);
  llvm::cl::Option::~Option(v1);

  JUMPOUT(0x25F891040);
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIxN4llvm2cl6parserIxEEEC1IJNS7_4descENS7_11initializerIiEEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISN_EEFvRKxEE7__cloneEPNS0_6__baseISS_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286E98D20;
  a2[1] = v2;
  return result;
}

uint64_t mlir::DialectRegistry::insert<mlir::ub::UBDialect>(uint64_t **a1)
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_286E98D68;
  v2[3] = v2;
  mlir::DialectRegistry::insert(a1, &mlir::detail::TypeIDResolver<mlir::ub::UBDialect,void>::id, "ub", 2uLL, v2);
  return std::__function::__value_func<mlir::Dialect * ()(mlir::MLIRContext *)>::~__value_func[abi:nn200100](v2);
}

void std::__shared_ptr_emplace<mlir::FrozenRewritePatternSet>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286E98DB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F891040);
}

void std::__shared_ptr_emplace<mlir::FrozenRewritePatternSet>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void anonymous namespace::CSEDriver::simplifyRegion(uint64_t a1, void *a2, void *a3)
{
  if (*a3 != a3)
  {
    v14 = v3;
    v15 = v4;
    DominanceInfo = mlir::detail::DominanceInfoBase<false>::getDominanceInfo(*(a1 + 32), a3, 0);
    if (*a3 != a3 && (v9 = a3[1], *(v9 + 8) == a3))
    {
      v10 = a2[16];
      __p[0] = a2;
      __p[1] = v10;
      a2[16] = __p;
      *&v12 = 0;
    }

    else if ((DominanceInfo & 4) != 0)
    {
      v12 = 0u;
      v13 = 0u;
      *__p = 0u;
      mlir::detail::DominanceInfoBase<false>::getDominanceInfo(*(a1 + 32), a3, 1);
      operator new();
    }
  }
}

void anonymous namespace::CSEDriver::simplifyBlock(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v89 = *MEMORY[0x277D85DE8];
  v5 = a3 + 32;
  v6 = *(a3 + 40);
  if (v6 != a3 + 32)
  {
    v7 = a4;
    v74 = a4;
    while (1)
    {
      if ((*(v6 + 44) & 0x7FFFFF) != 0)
      {
        if (mlir::OperationName::mightHaveTrait<mlir::OpTrait::IsIsolatedFromAbove>(v6 + 48))
        {
          v77 = 0;
          v78 = 0;
          v79[0] = 0;
          v79[1] = &v80;
          v79[2] = 0x400000000;
          v83 = 0;
          v84[0] = 0;
          v82 = v84;
          v84[1] = 1;
          v85 = 0;
          v86 = 0;
          v87 = 0;
          v88 = 0;
          v9 = *(v6 + 44);
          if ((v9 & 0x7FFFFF) != 0)
          {
            v10 = (v6 + 16 * ((v9 >> 23) & 1) + ((v9 >> 21) & 0x7F8) + 32 * *(v6 + 40) + 64);
            v11 = 24 * (v9 & 0x7FFFFF);
            do
            {
              v10 += 3;
              v11 -= 24;
            }

            while (v11);
            v12 = v85;
          }

          else
          {
            v12 = 0;
          }

          MEMORY[0x25F891030](v12, 8);
          v77 = 0;
          llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(&v78);
        }

        else
        {
          v13 = *(v6 + 44);
          if ((v13 & 0x7FFFFF) != 0)
          {
            v14 = (v6 + 16 * ((v13 >> 23) & 1) + ((v13 >> 21) & 0x7F8) + 32 * *(v6 + 40) + 64);
            v15 = 24 * (v13 & 0x7FFFFF);
            do
            {
              v14 += 3;
              v15 -= 24;
            }

            while (v15);
          }
        }
      }

      v75 = v6;
      v16 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
      if ((*(**(v6 + 48) + 32))(*(v6 + 48), v16))
      {
        goto LABEL_18;
      }

      if (mlir::isOpTriviallyDead(v6, v17))
      {
        std::vector<mlir::Operation *>::push_back[abi:nn200100](a1 + 8, &v75);
        ++*(a1 + 72);
        goto LABEL_18;
      }

      v19 = *(v6 + 44);
      v20 = v19 & 0x7FFFFF;
      if ((v19 & 0x7FFFFF) != 0)
      {
        v21 = (v6 + 16 * ((v19 >> 23) & 1) + ((v19 >> 21) & 0x7F8) + 32 * *(v6 + 40) + 64);
        v22 = 24 * v20;
        do
        {
          if (v21 != *v21)
          {
            v23 = v21[1];
            if (v21 == v23 || v21 != *(v23 + 8))
            {
              goto LABEL_18;
            }
          }

          v21 += 3;
          v22 -= 24;
        }

        while (v22);
      }

      if (mlir::isMemoryEffectFree(v6, v18))
      {
        if (!v24)
        {
          goto LABEL_85;
        }

        ++*(a1 + 64);
        goto LABEL_18;
      }

      v25 = llvm::DefaultDoCastIfPossible<mlir::MemoryEffectOpInterface,mlir::Operation *,llvm::CastInfo<mlir::MemoryEffectOpInterface,mlir::Operation *,void>>::doCastIfPossible(v6);
      if (!v25)
      {
        goto LABEL_18;
      }

      v77 = v79;
      v78 = 0x400000000;
      (*v26)(v26, v25, &v77);
      if (v78)
      {
        v27 = v77;
        v28 = 40 * v78 - 40;
        do
        {
          v29 = *v27;
          v27 += 5;
          v30 = *v29;
          v32 = v30 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID();
          v31 = v32;
          v32 = !v32 || v28 == 0;
          v28 -= 40;
        }

        while (!v32);
        v7 = v74;
      }

      else
      {
        v31 = 0;
      }

      if (v77 != v79)
      {
        free(v77);
      }

      if (!v31)
      {
        goto LABEL_18;
      }

      if (!v33)
      {
        goto LABEL_85;
      }

      v34 = *(v33 + 16);
      if (v34 != *(v6 + 16))
      {
        goto LABEL_85;
      }

      v35 = *(v33 + 8);
      v76 = 0;
      v72 = v33;
      v36 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>,mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>::LookupBucketFor<mlir::Operation *>(*(a1 + 40), *(a1 + 56), v33, &v76);
      v37 = v76;
      if ((v36 & 1) == 0)
      {
        break;
      }

      v71 = v76;
      if (v35 == (v34 + 32))
      {
        v35 = 0;
      }

LABEL_53:
      if (v35)
      {
        v40 = v35 == v6;
      }

      else
      {
        v40 = 1;
      }

      if (!v40)
      {
        while (1)
        {
          v73 = v35;
          mlir::getEffectsRecursively(v35, &v77);
          if (v81 != 1)
          {
            break;
          }

          if (v78)
          {
            v41 = v77;
            v42 = 40 * v78;
            while (1)
            {
              v43 = **v41;
              if (v43 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Write,void>::resolveTypeID())
              {
                goto LABEL_81;
              }

              v41 += 5;
              v42 -= 40;
              if (!v42)
              {
                v35 = *(v73 + 1);
                if (v35 == (*(v73 + 2) + 32))
                {
                  v44 = 0;
                }

                else
                {
                  v44 = *(v73 + 1);
                }

                v7 = v74;
                if (v81)
                {
                  goto LABEL_73;
                }

                goto LABEL_75;
              }
            }
          }

          v35 = *(v35 + 1);
          if (v35 == (*(v73 + 2) + 32))
          {
            v44 = 0;
          }

          else
          {
            v44 = *(v73 + 1);
          }

          v7 = v74;
LABEL_73:
          if (v77 != v79)
          {
            free(v77);
          }

LABEL_75:
          if (v44)
          {
            v45 = v44 == v6;
          }

          else
          {
            v45 = 1;
          }

          if (v45)
          {
            goto LABEL_58;
          }
        }

LABEL_81:
        v46 = mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>();
        v71[1] = v73;
        v71[2] = v46;
        if (v81 == 1 && v77 != v79)
        {
          free(v77);
        }

        v7 = v74;
LABEL_85:
        goto LABEL_18;
      }

LABEL_58:
      v71[1] = v6;
      v71[2] = 0;
LABEL_18:
      v6 = *(v6 + 8);
      if (v6 == v5)
      {
        goto LABEL_88;
      }
    }

    v38 = *(a1 + 56);
    v77 = v76;
    v39 = *(a1 + 48);
    if (4 * v39 + 4 >= 3 * v38)
    {
      v38 *= 2;
    }

    else
    {
      v35 = v72;
      if (v38 + ~v39 - *(a1 + 52) > v38 >> 3)
      {
LABEL_50:
        *(a1 + 48) = v39 + 1;
        if (*v37 != -4096)
        {
          --*(a1 + 52);
        }

        *v37 = v35;
        v37[1] = v35;
        v71 = v37;
        v37[2] = 0;
        goto LABEL_53;
      }
    }

    llvm::DenseMap<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>::grow(a1 + 40, v38);
    v35 = v72;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>,mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>::LookupBucketFor<mlir::Operation *>(*(a1 + 40), *(a1 + 56), v72, &v77);
    v39 = *(a1 + 48);
    v37 = v77;
    v7 = v74;
    goto LABEL_50;
  }

LABEL_88:
  v47 = *(a1 + 48);
  if (v47)
  {
    v48 = *(a1 + 56);
    if (v48 > 4 * v47 && v48 >= 0x41)
    {
      v49 = 1 << (33 - __clz(v47 - 1));
      if (v49 <= 64)
      {
        v50 = 64;
      }

      else
      {
        v50 = v49;
      }

LABEL_97:
      if (v50 == v48)
      {
        v51 = 0;
        v52 = 24 * v48 - 24;
        *(a1 + 48) = 0;
        v53 = *(a1 + 40);
        v54 = v52;
        v55 = (v52 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL;
        v56 = vdupq_n_s64(v54 / 0x18);
        do
        {
          v57 = vmovn_s64(vcgeq_u64(v56, vorrq_s8(vdupq_n_s64(v51), xmmword_25D0A0500)));
          if (v57.i8[0])
          {
            *v53 = -4096;
          }

          if (v57.i8[4])
          {
            v53[3] = -4096;
          }

          v51 += 2;
          v53 += 6;
        }

        while (v55 != v51);
      }

      else
      {
        MEMORY[0x25F891030](*(a1 + 40), 8);
        if (v50)
        {
          v63 = (4 * v50 / 3u + 1) | ((4 * v50 / 3u + 1) >> 1);
          v64 = v63 | (v63 >> 2) | ((v63 | (v63 >> 2)) >> 4);
          LODWORD(v64) = (((v64 | (v64 >> 8)) >> 16) | v64 | (v64 >> 8)) + 1;
          *(a1 + 56) = v64;
          buffer = llvm::allocate_buffer((24 * v64), 8uLL);
          *(a1 + 40) = buffer;
          *(a1 + 48) = 0;
          v66 = *(a1 + 56);
          if (v66)
          {
            v67 = 0;
            v68 = 24 * v66 - 24;
            v69 = vdupq_n_s64(v68 / 0x18);
            do
            {
              v70 = vmovn_s64(vcgeq_u64(v69, vorrq_s8(vdupq_n_s64(v67), xmmword_25D0A0500)));
              if (v70.i8[0])
              {
                *buffer = -4096;
              }

              if (v70.i8[4])
              {
                buffer[3] = -4096;
              }

              v67 += 2;
              buffer += 6;
            }

            while (((v68 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v67);
          }
        }

        else
        {
          *(a1 + 40) = 0;
          *(a1 + 48) = 0;
          *(a1 + 56) = 0;
        }
      }

      return;
    }
  }

  else
  {
    if (!*(a1 + 52))
    {
      return;
    }

    v48 = *(a1 + 56);
    if (v48 > 0x40)
    {
      v50 = 0;
      goto LABEL_97;
    }
  }

  if (v48)
  {
    v58 = 0;
    v59 = *(a1 + 40);
    v60 = 24 * v48 - 24;
    v61 = vdupq_n_s64(v60 / 0x18);
    do
    {
      v62 = vmovn_s64(vcgeq_u64(v61, vorrq_s8(vdupq_n_s64(v58), xmmword_25D0A0500)));
      if (v62.i8[0])
      {
        *v59 = -4096;
      }

      if (v62.i8[4])
      {
        v59[3] = -4096;
      }

      v58 += 2;
      v59 += 6;
    }

    while (((v60 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v58);
  }

  *(a1 + 48) = 0;
}

int32x2_t **llvm::ScopedHashTableScope<mlir::Operation *,mlir::Operation *,anonymous namespace::SimpleOperationInfo,llvm::RecyclingAllocator<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *>,32ul,8ul>>::~ScopedHashTableScope(int32x2_t **a1)
{
  v2 = *a1;
  (*a1)[16] = a1[1];
  v3 = a1[2];
  if (v3)
  {
    do
    {
      if (v3[1])
      {
      }

      else
      {
        v4 = v2[15].i32[0];
        if (v4)
        {
          v5 = v2[13];
          v6 = v4 - 1;
          v7 = v6 & mlir::OperationEquivalence::computeHash(*&v3[2], llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::directHashValue, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::ignoreHashValue, 1);
          v8 = (*&v5 + 16 * v7);
          {
LABEL_6:
            *v8 = -8192;
            v2[14] = vadd_s32(v2[14], 0x1FFFFFFFFLL);
          }

          else
          {
            v22 = 1;
            while (*v8 != -4096)
            {
              v23 = v22 + 1;
              v7 = (v7 + v22) & v6;
              v8 = (*&v5 + 16 * v7);
              v22 = v23;
              if (isEqual)
              {
                goto LABEL_6;
              }
            }
          }
        }
      }

      v21 = *v3;
      a1[2] = *v3;
      v2 = *a1;
      *v3 = **a1;
      *v2 = v3;
      v3 = v21;
    }

    while (v21);
  }

  return a1;
}

void std::deque<std::unique_ptr<anonymous namespace::CSEDriver::CFGStackNode>>::emplace_back<std::unique_ptr<anonymous namespace::CSEDriver::CFGStackNode>>(unint64_t *a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = a1[4];
  if (v6 == a1[5] + v7)
  {
    v8 = v7 >= 0x200;
    v9 = v7 - 512;
    if (!v8)
    {
      v10 = a1[3];
      v11 = v10 - *a1;
      if (v4 - v5 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      if (!(v13 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    a1[4] = v9;
    v18 = *v5;
    a1[1] = (v5 + 1);
  }

  v14 = a1[5];
  v15 = a1[4] + v14;
  v16 = *(a1[1] + ((v15 >> 6) & 0x3FFFFFFFFFFFFF8));
  v17 = *a2;
  *a2 = 0;
  *(v16 + 8 * (v15 & 0x1FF)) = v17;
  a1[5] = v14 + 1;
}

int32x2_t ***std::unique_ptr<anonymous namespace::CSEDriver::CFGStackNode>::~unique_ptr[abi:nn200100](int32x2_t ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MEMORY[0x25F891040](v3, 0x10E0C4097FA51B3);
  }

  return a1;
}

uint64_t llvm::ScopedHashTable<mlir::Operation *,mlir::Operation *,anonymous namespace::SimpleOperationInfo,llvm::RecyclingAllocator<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *>,32ul,8ul>>::lookup(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  if (v3)
  {
    v4 = v3 == (*(a1 + 104) + 16 * *(a1 + 120));
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return *(v3[1] + 3);
  }
}

void anonymous namespace::CSEDriver::replaceUsesAndDelete(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = a3;
  v41 = a3;
  if (a5)
  {
    v8 = *a1;
    v9 = *(*a1 + 16);
    if (v9 && v9[2] == 1)
    {
      (*(*v9 + 48))(*(*a1 + 16), a3, a4);
      v8 = *a1;
    }

    v10 = *(v6 + 36);
    if (v10)
    {
      v11 = (v6 - 16) & 0xFFFFFFFFFFFFFFF9 | 4;
    }

    else
    {
      v11 = 4;
    }

    v12 = *(a4 + 36);
    if (v12)
    {
      v13 = (a4 - 16) & 0xFFFFFFFFFFFFFFF9 | 4;
    }

    else
    {
      v13 = 4;
    }

    mlir::RewriterBase::replaceAllUsesWith(v8, v11, v10, v13, v12);
    goto LABEL_49;
  }

  v40 = a2;
  v15 = *a1;
  v16 = *(*a1 + 16);
  if (v16 && v16[2] == 1)
  {
    v17 = *(a3 + 36);
    v18 = v17 ? a3 - 16 : 0;
    if (v17)
    {
      v19 = 0;
      while (1)
      {
        v20 = v18;
        if (v19)
        {
          v21 = *(v6 - 8) & 7;
          v22 = v6 - 16;
          v23 = v19;
          if (v21 != 6)
          {
            v24 = (5 - v21);
            v23 = v19 - v24;
            if (v19 <= v24)
            {
              v20 = (v18 - 16 * v19);
              goto LABEL_25;
            }

            v22 = v18 - 16 * v24;
          }

          v20 = (v22 - 24 * v23);
        }

LABEL_25:
        v25 = *v20;
        if (*v20)
        {
          while (1)
          {
            v42 = v25[2];
            {
              break;
            }

            v25 = *v25;
            if (!v25)
            {
              goto LABEL_28;
            }
          }
        }

        else
        {
LABEL_28:
          (*(*v16 + 48))(v16, v41, a4);
        }

        if (++v19 == v17)
        {
          v6 = v41;
          v15 = *a1;
          break;
        }
      }
    }
  }

  v26 = *(v6 + 36);
  if (v26)
  {
    v27 = (v6 - 16) & 0xFFFFFFFFFFFFFFF9 | 4;
  }

  else
  {
    v27 = 4;
  }

  v28 = *(a4 + 36);
  if (v28)
  {
    v29 = (a4 - 16) & 0xFFFFFFFFFFFFFFF9 | 4;
  }

  else
  {
    v29 = 4;
  }

  v30 = *(v41 + 36);
  if (v30)
  {
    v31 = (v41 - 16);
  }

  else
  {
    v31 = 0;
  }

  if (v30)
  {
    v32 = 0;
    v33 = (v41 - 16);
    while (1)
    {
      v34 = v31;
      if (v32)
      {
        v35 = *(v41 - 8) & 7;
        v36 = v41 - 16;
        v37 = v32;
        if (v35 == 6)
        {
          goto LABEL_46;
        }

        v38 = (5 - v35);
        v34 = v33;
        v37 = v32 - v38;
        if (v32 > v38)
        {
          break;
        }
      }

LABEL_47:
      if (*v34)
      {
        goto LABEL_50;
      }

      ++v32;
      v33 -= 2;
      if (v30 == v32)
      {
        goto LABEL_49;
      }
    }

    v36 = v41 - 16 - 16 * v38;
LABEL_46:
    v34 = (v36 - 24 * v37);
    goto LABEL_47;
  }

LABEL_49:
  std::vector<mlir::Operation *>::push_back[abi:nn200100]((a1 + 1), &v41);
LABEL_50:
  if (*(**(a4 + 24) + 136) == &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
  {
    v39 = *(v41 + 24);
    if (*(*v39 + 136) != &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
    {
      *(a4 + 24) = v39;
    }
  }

  ++a1[8];
}