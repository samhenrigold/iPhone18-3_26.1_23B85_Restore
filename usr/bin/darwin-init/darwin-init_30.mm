void Config.hash(into:)(__int128 *a1)
{
  v3 = type metadata accessor for Config.Package(0);
  v68 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 88);
  v95[6] = *(v1 + 72);
  v95[7] = v6;
  v95[8] = *(v1 + 104);
  v96 = *(v1 + 120);
  v7 = *(v1 + 24);
  v95[2] = *(v1 + 8);
  v95[3] = v7;
  v8 = *(v1 + 56);
  v95[4] = *(v1 + 40);
  v95[5] = v8;
  sub_100250B54(a1);
  if (*(v1 + 136) && (v9 = *(v1 + 144), Hasher._combine(_:)(1u), v9 != 2))
  {
    Hasher._combine(_:)(1u);
    v10 = v9 & 1;
  }

  else
  {
    v10 = 0;
  }

  Hasher._combine(_:)(v10);
  if (!*(v1 + 160))
  {
    goto LABEL_8;
  }

  v11 = *(v1 + 176);
  v12 = *(v1 + 192);
  v13 = *(v1 + 200);
  Hasher._combine(_:)(1u);
  if (v11)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v13)
    {
LABEL_8:
      Hasher._combine(_:)(0);
      goto LABEL_11;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v13)
    {
      goto LABEL_8;
    }
  }

  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v12);
LABEL_11:
  memcpy(v76, (v1 + 216), sizeof(v76));
  memcpy(v77, (v1 + 216), 0x101uLL);
  if (sub_100218DC8(v77) == 1)
  {
    Hasher._combine(_:)(0);
    v14 = *(v1 + 488);
    if (v14)
    {
LABEL_13:
      Hasher._combine(_:)(1u);
      sub_1001D289C(a1, v14);
      goto LABEL_16;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    Config.Cryptex.hash(into:)(a1);
    v14 = *(v1 + 488);
    if (v14)
    {
      goto LABEL_13;
    }
  }

  Hasher._combine(_:)(0);
LABEL_16:
  v15 = type metadata accessor for Config(0);
  sub_1000039E8(&qword_1004ACDA0, &qword_1003FA370);
  sub_100250768(a1);
  v16 = *(v1 + v15[10] + 8);
  if (v16)
  {
    Hasher._combine(_:)(1u);
    sub_1001D2620(a1, v16);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v17 = v1 + v15[11];
  v18 = *(v17 + 8);
  if (v18)
  {
    v19 = *(v17 + 16);
    v93 = *(v17 + 32);
    v20 = *(v17 + 64);
    v94 = *(v17 + 48);
    v95[0] = v20;
    *(v95 + 9) = *(v17 + 73);
    v92 = v19;
    v91 = v18;
    Hasher._combine(_:)(1u);
    Config.Finish.hash(into:)(a1);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v21 = v1 + v15[12];
  v22 = *(v21 + 8);
  if (v22)
  {
    v23 = *(v21 + 64);
    v87 = *(v21 + 48);
    v88 = v23;
    v89 = *(v21 + 80);
    v24 = *(v21 + 96);
    v25 = *(v21 + 32);
    v85 = *(v21 + 16);
    v86 = v25;
    v90 = v24;
    v84 = v22;
    Hasher._combine(_:)(1u);
    Config.Identification.hash(into:)(a1);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v26 = v1 + v15[13];
  if (*(v26 + 8))
  {
    v27 = *(v26 + 32);
    v28 = *(v26 + 16);
    Hasher._combine(_:)(1u);
    if (v28 == 3)
    {
      Hasher._combine(_:)(0);
      if (v27 != 2)
      {
LABEL_28:
        Hasher._combine(_:)(1u);
        v29 = v27 & 1;
        goto LABEL_31;
      }
    }

    else
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();

      if (v27 != 2)
      {
        goto LABEL_28;
      }
    }
  }

  v29 = 0;
LABEL_31:
  Hasher._combine(_:)(v29);
  v30 = (v1 + v15[14]);
  if (!v30[1])
  {
    Hasher._combine(_:)(0);
    goto LABEL_39;
  }

  v31 = v15;
  v32 = v30[3];
  v33 = v30[6];
  Hasher._combine(_:)(1u);
  if (!v32)
  {
    Hasher._combine(_:)(0);
    if (v33)
    {
      goto LABEL_34;
    }

LABEL_37:
    Hasher._combine(_:)(0);
    goto LABEL_38;
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v33)
  {
    goto LABEL_37;
  }

LABEL_34:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_38:
  v15 = v31;
LABEL_39:
  v34 = *(v1 + v15[15] + 8);
  if (v34)
  {
    Hasher._combine(_:)(1u);
    sub_1001D4AA0(a1, v34);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v35 = v1 + v15[16];
  v36 = *(v35 + 24);
  *&v82[71] = *(v35 + 8);
  *&v82[87] = v36;
  v83[0] = *(v35 + 40);
  *(v83 + 9) = *(v35 + 49);
  sub_100250654(a1);
  v37 = v1 + v15[17];
  if (!*(v37 + 8) || ((v38 = *(v37 + 32), v39 = *(v37 + 40), v40 = *(v37 + 16), Hasher._combine(_:)(1u), v40 != 2) ? (Hasher._combine(_:)(1u), v41 = v40 & 1) : (v41 = 0), Hasher._combine(_:)(v41), v39 == 255))
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_100250308(a1, v38, v39 & 1);
  }

  v69 = v15;
  v70 = v1;
  v42 = *(v1 + v15[18] + 8);
  if (v42)
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(*(v42 + 16));
    v43 = *(v42 + 16);
    if (v43)
    {
      sub_1000039E8(&qword_1004ACD08, &unk_1004046A0);
      v44 = v42 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
      v45 = *(v68 + 72);
      do
      {
        sub_100259EBC(v44, v5, type metadata accessor for Config.Package);
        type metadata accessor for URL();
        sub_1002599A0(&qword_1004AB370, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        dispatch thunk of Hashable.hash(into:)();
        sub_100259F24(v5, type metadata accessor for Config.Package);
        v44 += v45;
        --v43;
      }

      while (v43);
    }
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v47 = v69;
  v46 = v70;
  v48 = *(v70 + v69[19] + 8);
  if (v48)
  {
    Hasher._combine(_:)(1u);
    sub_1001D4044(a1, v48);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if ((~*(v46 + v47[20] + 8) & 0xF000000000000007) != 0)
  {
    *v78 = *(v46 + v47[20] + 8);
    Hasher._combine(_:)(1u);

    JSON.hash(into:)(a1);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v49 = v46 + v47[21];
  if (*(v49 + 8) && ((v50 = *(v49 + 32), v51 = *(v49 + 16), Hasher._combine(_:)(1u), v51 != 2) ? (Hasher._combine(_:)(1u), v52 = v51 & 1) : (v52 = 0), Hasher._combine(_:)(v52), v50 != 2))
  {
    Hasher._combine(_:)(1u);
    v53 = v50 & 1;
  }

  else
  {
    v53 = 0;
  }

  Hasher._combine(_:)(v53);
  v54 = v46 + v47[22];
  v55 = *(v54 + 24);
  *&v82[23] = *(v54 + 8);
  *&v82[39] = v55;
  *&v82[55] = *(v54 + 40);
  sub_100250550(a1);
  v56 = v46 + v47[23];
  v57 = *(v56 + 96);
  if (v57 == 255)
  {
    v61 = 0;
  }

  else
  {
    v58 = *(v56 + 8);
    v59 = *(v56 + 57);
    v73 = *(v56 + 41);
    v74 = v59;
    *v75 = *(v56 + 73);
    *&v75[15] = *(v56 + 88);
    v60 = *(v56 + 25);
    v71 = *(v56 + 9);
    v72 = v60;
    Hasher._combine(_:)(1u);
    if (v57)
    {
      v80 = v73;
      v81 = v74;
      *v82 = *v75;
      *&v82[15] = *&v75[15];
      *&v78[1] = v71;
      v79 = v72;
      v78[0] = v58;
      Hasher._combine(_:)(1uLL);
      Config.Tailspin.hash(into:)(a1);
      goto LABEL_74;
    }

    Hasher._combine(_:)(0);
    v61 = v58 & 1;
  }

  Hasher._combine(_:)(v61);
LABEL_74:
  v62 = *(v46 + v47[24] + 8);
  if (v62)
  {
    Hasher._combine(_:)(1u);
    sub_1001D39FC(a1, v62);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v63 = *(v46 + v47[25] + 8);
  if (v63)
  {
    Hasher._combine(_:)(1u);
    sub_1001D3564(a1, v63);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v64 = (v46 + v47[26]);
  v65 = *v64;
  if (*v64)
  {
    v66 = v64[1];
    Hasher._combine(_:)(1u);
    sub_1001D1E94(a1, v65);
    *&v71 = v66;
    JSON.hash(into:)(a1);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

unint64_t Config.CodingKeys.rawValue.getter(char a1)
{
  result = 0x69746E6568747561;
  switch(a1)
  {
    case 1:
      result = 0x73746F6F725F6163;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0x78657470797263;
      break;
    case 4:
      result = 0x73746F6F72;
      break;
    case 5:
      result = 0x6F6C76616964;
      break;
    case 6:
      result = 0x5F65727574616566;
      break;
    case 7:
      result = 0x6873696E6966;
      break;
    case 8:
      result = 0x696669746E656469;
      break;
    case 9:
      result = 6778732;
      break;
    case 10:
      result = 1635018093;
      break;
    case 11:
      result = 0x766974617272616ELL;
      break;
    case 12:
      result = 0x6B726F7774656ELL;
      break;
    case 13:
      result = 0x636974796C616E61;
      break;
    case 14:
      result = 0x736567616B636170;
      break;
    case 15:
      result = 0x6E65726566657270;
      break;
    case 16:
      result = 0x635F657275636573;
      break;
    case 17:
      result = 6845299;
      break;
    case 18:
      result = 0x7472617473;
      break;
    case 19:
      result = 0x6E6970736C696174;
      break;
    case 20:
      result = 0x7372657375;
      break;
    case 21:
      result = 0x73656D756C6F76;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100231FA0@<X0>(Swift::String *a1@<X0>, DarwinInit::Config::CodingKeys_optional *a2@<X8>)
{
  result = _s10DarwinInit6ConfigV10CodingKeysO8rawValueAESgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t sub_100231FD0@<X0>(unint64_t *a1@<X8>)
{
  result = Config.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100232004@<X0>(uint64_t a1@<X0>, DarwinInit::Config::CodingKeys_optional *a2@<X8>, uint64_t a3@<X1>)
{
  result = _s10DarwinInit6ConfigV10CodingKeysO8rawValueAESgSS_tcfC_0(a1, a3);
  a2->value = result;
  return result;
}

uint64_t sub_100232048(uint64_t a1)
{
  v2 = sub_1002594B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100232084(uint64_t a1)
{
  v2 = sub_1002594B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t (*Config.Authentication.$appleConnect.modify(uint64_t a1))()
{
  v3 = *v1;
  *(a1 + 16) = v1;
  *(a1 + 24) = v3;
  v4 = *(v1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;

  return sub_10023214C;
}

double Config.Authentication.dawToken.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;

  return result;
}

uint64_t sub_10023215C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];

  a2[2] = v3;
  a2[3] = v4;
  a2[4] = v5;
  return result;
}

uint64_t (*Config.Authentication.$dawToken.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = v1[3];
  v4 = v1[4];
  *a1 = v1[2];
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v1;

  return sub_100232228;
}

uint64_t sub_100232228(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  if (a2)
  {

    v5[2] = v2;
    v5[3] = v3;
    v5[4] = v4;
  }

  else
  {

    v5[2] = v2;
    v5[3] = v3;
    v5[4] = v4;
  }

  return result;
}

double Config.Authentication.westgate.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_10021E528(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_100232308(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a2[6];
  sub_10021E528(*a1, v4, v5, v6, v7, v8);
  result = sub_10021E638(v9);
  a2[6] = v3;
  a2[7] = v4;
  a2[8] = v5;
  a2[9] = v6;
  a2[10] = v7;
  a2[11] = v8;
  return result;
}

double sub_1002323B0@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = a1[8];
  v5 = a1[9];
  v6 = a1[10];
  v7 = a1[11];
  *a2 = a1[5];
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
  a2[4] = v5;
  a2[5] = v6;
  a2[6] = v7;

  return sub_10021E528(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_100232420(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a2[6];

  sub_10021E528(v4, v5, v6, v7, v8, v9);

  result = sub_10021E638(v10);
  a2[5] = v3;
  a2[6] = v4;
  a2[7] = v5;
  a2[8] = v6;
  a2[9] = v7;
  a2[10] = v8;
  a2[11] = v9;
  return result;
}

void (*Config.Authentication.$westgate.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1[9];
  v10 = v1[10];
  v11 = v1[11];
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  v4[4] = v9;
  v4[5] = v10;
  v4[6] = v11;

  sub_10021E528(v6, v7, v8, v9, v10, v11);
  return sub_1002325A4;
}

void sub_1002325A4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  v4 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[5];
  v8 = (*a1)[6];
  v9 = (*a1)[7];
  v12 = v9[6];
  v11 = **a1;
  if (a2)
  {

    sub_10021E528(v3, v5, v4, v6, v7, v8);

    sub_10021E638(v12);
    v9[5] = v11;
    v9[6] = v3;
    v9[7] = v5;
    v9[8] = v4;
    v9[9] = v6;
    v9[10] = v7;
    v9[11] = v8;
    v10 = v2[1];

    sub_10021E638(v10);
  }

  else
  {

    sub_10021E638(v12);
    v9[5] = v11;
    v9[6] = v3;
    v9[7] = v5;
    v9[8] = v4;
    v9[9] = v6;
    v9[10] = v7;
    v9[11] = v8;
  }

  free(v2);
}

double Config.Authentication.oidcToken.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 112);
  *a1 = *(v1 + 104);
  a1[1] = v2;

  return result;
}

uint64_t sub_1002326F4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];

  a2[12] = v3;
  a2[13] = v4;
  a2[14] = v5;
  return result;
}

uint64_t (*Config.Authentication.$oidcToken.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = v1[13];
  v4 = v1[14];
  *a1 = v1[12];
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v1;

  return sub_1002327C0;
}

uint64_t sub_1002327C0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  if (a2)
  {

    v5[12] = v2;
    v5[13] = v3;
    v5[14] = v4;
  }

  else
  {

    v5[12] = v2;
    v5[13] = v3;
    v5[14] = v4;
  }

  return result;
}

double Config.Authentication.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = _swiftEmptyArrayStorage;
  *(a1 + 8) = 2;
  *(a1 + 16) = _swiftEmptyArrayStorage;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = _swiftEmptyArrayStorage;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = _swiftEmptyArrayStorage;
  return result;
}

__n128 Config.Authentication.init(appleConnect:dawToken:westgate:oidcToken:)@<Q0>(char a1@<W0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 8) = a1;
  *a5 = _swiftEmptyArrayStorage;
  *(a5 + 16) = _swiftEmptyArrayStorage;
  *(a5 + 24) = *a2;
  *(a5 + 40) = _swiftEmptyArrayStorage;
  v5 = a3[1];
  *(a5 + 48) = *a3;
  *(a5 + 64) = v5;
  *(a5 + 80) = a3[2];
  *(a5 + 96) = _swiftEmptyArrayStorage;
  result = *a4;
  *(a5 + 104) = *a4;
  return result;
}

uint64_t Config.Authentication.encode(to:)(void *a1)
{
  v4 = sub_1000039E8(&qword_1004AD328, &qword_1003FC3A8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v25 = *(v1 + 24);
  v26 = v9;
  v10 = *(v1 + 32);
  v23 = *(v1 + 40);
  v24 = v10;
  v11 = *(v1 + 48);
  v20 = *(v1 + 64);
  v21 = v11;
  v12 = *(v1 + 88);
  v22 = *(v1 + 80);
  v13 = *(v1 + 104);
  v17 = *(v1 + 96);
  *&v18 = v13;
  *(&v18 + 1) = *(v1 + 112);
  v19 = v12;
  sub_10000E2A8(a1, a1[3]);
  sub_100259FD8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v27) = v8;
  v32 = 0;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v15 = v22;
    v14 = v23;
    v27 = v26;
    *&v28 = v25;
    *(&v28 + 1) = v24;
    v32 = 1;
    sub_1001BBD24();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v27 = v14;
    v29 = v20;
    v28 = v21;
    v30 = v15;
    v31 = v19;
    v32 = 2;
    sub_10025A02C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v27 = v17;
    v28 = v18;
    v32 = 3;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

void Config.Authentication.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  v4 = *(v1 + 48);
  v5 = *(v1 + 112);
  if (v2 == 2)
  {
    Hasher._combine(_:)(0);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v2 & 1);
    if (v3)
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (v4)
      {
        goto LABEL_4;
      }

LABEL_10:
      Hasher._combine(_:)(0);
      if (v5)
      {
        goto LABEL_5;
      }

LABEL_11:
      Hasher._combine(_:)(0);
      return;
    }
  }

  Hasher._combine(_:)(0);
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_4:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  String.hash(into:)();
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_5:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int Config.Authentication.hashValue.getter()
{
  Hasher.init(_seed:)();
  Config.Authentication.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100233338()
{
  Hasher.init(_seed:)();
  Config.Authentication.hash(into:)(v1);
  return Hasher._finalize()();
}

DarwinInit::Config::Authentication::CodingKeys_optional __swiftcall Config.Authentication.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100487500, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t Config.Authentication.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x6F635F656C707061;
  v2 = 0x6574616774736577;
  if (a1 != 2)
  {
    v2 = 0x6B6F745F6364696FLL;
  }

  if (a1)
  {
    v1 = 0x656B6F745F776164;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100233460(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xED00007463656E6ELL;
  v3 = 0x6F635F656C707061;
  v4 = *a1;
  v5 = 0xE800000000000000;
  v6 = 0x6574616774736577;
  if (v4 != 2)
  {
    v6 = 0x6B6F745F6364696FLL;
    v5 = 0xEA00000000006E65;
  }

  v7 = 0x656B6F745F776164;
  v8 = 0xE90000000000006ELL;
  if (!*a1)
  {
    v7 = 0x6F635F656C707061;
    v8 = 0xED00007463656E6ELL;
  }

  if (*a1 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  if (v4 <= 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  v11 = 0xE800000000000000;
  v12 = 0x6574616774736577;
  if (*a2 != 2)
  {
    v12 = 0x6B6F745F6364696FLL;
    v11 = 0xEA00000000006E65;
  }

  if (*a2)
  {
    v3 = 0x656B6F745F776164;
    v2 = 0xE90000000000006ELL;
  }

  if (*a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v11;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

Swift::Int sub_1002335BC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100233694(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100233758()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

DarwinInit::Config::Authentication::CodingKeys_optional sub_10023382C@<W0>(Swift::String *a1@<X0>, DarwinInit::Config::Authentication::CodingKeys_optional *a2@<X8>)
{
  result.value = Config.Authentication.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void sub_10023385C(uint64_t *a1@<X8>)
{
  v2 = 0xED00007463656E6ELL;
  v3 = 0x6F635F656C707061;
  v4 = 0xE800000000000000;
  v5 = 0x6574616774736577;
  if (*v1 != 2)
  {
    v5 = 0x6B6F745F6364696FLL;
    v4 = 0xEA00000000006E65;
  }

  if (*v1)
  {
    v3 = 0x656B6F745F776164;
    v2 = 0xE90000000000006ELL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1002338F0()
{
  v1 = 0x6F635F656C707061;
  v2 = 0x6574616774736577;
  if (*v0 != 2)
  {
    v2 = 0x6B6F745F6364696FLL;
  }

  if (*v0)
  {
    v1 = 0x656B6F745F776164;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

DarwinInit::Config::Authentication::CodingKeys_optional sub_100233980@<W0>(uint64_t a1@<X0>, DarwinInit::Config::Authentication::CodingKeys_optional *a2@<X8>)
{
  result.value = Config.Authentication.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1002339B8(uint64_t a1)
{
  v2 = sub_100259FD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002339F4(uint64_t a1)
{
  v2 = sub_100259FD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double Config.Authentication.Westgate.token.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;

  return result;
}

uint64_t Config.Authentication.Westgate.token.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

uint64_t (*Config.Authentication.Westgate.$token.modify(uint64_t *a1))()
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v1;

  return sub_100233AD4;
}

uint64_t sub_100233AD8(void *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];

  a2[3] = v3;
  a2[4] = v4;
  a2[5] = v5;
  return result;
}

uint64_t (*Config.Authentication.Westgate.$username.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = v1[3];
  v4[4] = v5;
  v6 = v1[4];
  v7 = v1[5];
  v4[5] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;

  return sub_100233BD4;
}

uint64_t Config.Authentication.Westgate.encode(to:)(void *a1)
{
  v4 = sub_1000039E8(&qword_1004AD350, &qword_1003FC3B8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  v13 = *v1;
  v8 = *(v1 + 2);
  v9 = *(v1 + 4);
  v11 = *(v1 + 5);
  v12 = v9;
  sub_10000E2A8(a1, a1[3]);
  sub_10025A0D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v13;
  v15 = v8;
  v16 = 0;
  sub_1001BBD24();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    *&v14 = v12;
    *(&v14 + 1) = v11;
    v16 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Config.Authentication.Westgate.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v24 = a2;
  v4 = sub_1000039E8(&qword_1004AD360, &qword_1003FC3C0);
  v25 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v23 - v5;
  sub_10000E2A8(a1, a1[3]);
  v7 = sub_10025A0D4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  v8 = v25;
  v28 = 0;
  v9 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00, &qword_1003FC3A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.Authentication.Westgate.CodingKeys;
  *(inited + 64) = v7;
  *(inited + 32) = 0;
  v26 = v9;
  sub_10034A3A8(inited);
  v11 = v26;
  sub_1001BBB14();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v27;
  v23 = v26;
  v13 = sub_10022353C(1);
  v15 = v14;
  v17 = v16;
  v18 = *(v8 + 8);
  v25 = v13;
  v18(v6, v4);
  v20 = v23;
  v19 = v24;
  *v24 = v11;
  v19[1] = v20;
  v21 = v25;
  v19[2] = v12;
  v19[3] = v21;
  v19[4] = v15;
  v19[5] = v17;

  sub_100003C3C(a1);
}

uint64_t Config.Authentication.Westgate.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x656D616E72657375;
  }

  else
  {
    return 0x6E656B6F74;
  }
}

uint64_t sub_1002340D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656D616E72657375;
  }

  else
  {
    v3 = 0x6E656B6F74;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x656D616E72657375;
  }

  else
  {
    v5 = 0x6E656B6F74;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100234174()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002341F4(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100234260()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1002342E8(uint64_t *a1@<X8>)
{
  v2 = 0x6E656B6F74;
  if (*v1)
  {
    v2 = 0x656D616E72657375;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100234324()
{
  if (*v0)
  {
    return 0x656D616E72657375;
  }

  else
  {
    return 0x6E656B6F74;
  }
}

uint64_t sub_100234378(uint64_t a1)
{
  v2 = sub_10025A0D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002343B4(uint64_t a1)
{
  v2 = sub_10025A0D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t (*Config.Analytics.$submit.modify(uint64_t a1))()
{
  v3 = *v1;
  *(a1 + 16) = v1;
  *(a1 + 24) = v3;
  v4 = *(v1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;

  return sub_100269A90;
}

uint64_t Config.CARoots.init(from:)(void *a1)
{
  v3 = sub_1000039E8(&qword_1004AD368, &qword_1003FC3C8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_10000E2A8(a1, a1[3]);
  sub_10025A270();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v7 = sub_100224A68();
    (*(v4 + 8))(v6, v3);
  }

  sub_100003C3C(a1);
  return v7;
}

uint64_t sub_1002345DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004AD368, &qword_1003FC3C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_10025A270();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  v9 = sub_100224A68();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_100003C3C(a1);
  *a2 = v9;
  *(a2 + 8) = v11;
  return result;
}

BOOL static Config.CARoots.== infix(_:_:)(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (a2 != 2)
  {
    return a4 != 2 && ((a2 ^ a4) & 1) == 0;
  }

  return a4 == 2;
}

BOOL sub_1002347B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 != 2)
  {
    return v3 != 2 && ((v2 ^ v3) & 1) == 0;
  }

  return v3 == 2;
}

void Config.CARoots.hash(into:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
    v3 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v3 = a3 & 1;
  }

  Hasher._combine(_:)(v3);
}

Swift::Int Config.CARoots.hashValue.getter(uint64_t a1, unsigned __int8 a2)
{
  v3 = a2;
  Hasher.init(_seed:)();
  if (v3 == 2)
  {
    v4 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v4 = a2 & 1;
  }

  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

Swift::Int sub_1002348A0()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v2 = v1 & 1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_100234904()
{
  v1 = *(v0 + 8);
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v2 = v1 & 1;
  }

  Hasher._combine(_:)(v2);
}

Swift::Int sub_10023494C()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v2 = v1 & 1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

BOOL Config.CARoots.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100487670, v2);

  return v3 != 0;
}

BOOL Config.CARoots.CodingKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1004876A8, v2);

  return v3 != 0;
}

Swift::Int sub_100234A64()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100234AD8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100234B58@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100487740, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100234BC0(uint64_t a1)
{
  v2 = sub_10025A270();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100234BFC(uint64_t a1)
{
  v2 = sub_10025A270();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100234C38(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];

  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

uint64_t (*Config.SecurityPolicy.$policy.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *v1;
  *(v3 + 32) = *v1;
  v7 = v1[1];
  v6 = v1[2];
  v4[5] = v6;
  *v4 = v5;
  v4[1] = v7;
  v4[2] = v6;

  return sub_100269A94;
}

uint64_t (*Config.SecurityPolicy.$version.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(v1 + 24);
  *(v4 + 32) = v5;
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;

  return sub_100234DF4;
}

uint64_t Config.SecurityPolicy.init(policy:version:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *(a5 + 8) = result;
  *a5 = _swiftEmptyArrayStorage;
  *(a5 + 16) = a2;
  *(a5 + 24) = _swiftEmptyArrayStorage;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4 & 1;
  return result;
}

uint64_t Config.SecurityPolicy.isEmpty.getter()
{
  if (*(v0 + 16))
  {
    return 0;
  }

  else
  {
    return *(v0 + 40) & 1;
  }
}

void Config.SecurityPolicy.hash(into:)(uint64_t a1)
{
  if (*(v1 + 16))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (*(v1 + 40))
    {
LABEL_3:
      Hasher._combine(_:)(0);
      return;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(v1 + 40))
    {
      goto LABEL_3;
    }
  }

  v2 = *(v1 + 32);
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v2);
}

void sub_100234FC4(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  if (*(v1 + 16))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v3)
    {
LABEL_3:
      Hasher._combine(_:)(0);
      return;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v2);
}

Swift::Int sub_100235050()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  Hasher.init(_seed:)();
  if (!v1)
  {
    Hasher._combine(_:)(0);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v2);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t Config.SecurityPolicy.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 0x7963696C6F70;
  }
}

uint64_t sub_100235144(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E6F6973726576;
  }

  else
  {
    v3 = 0x7963696C6F70;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x6E6F6973726576;
  }

  else
  {
    v5 = 0x7963696C6F70;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1002351E8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100235268(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1002352D4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_10023535C(uint64_t *a1@<X8>)
{
  v2 = 0x7963696C6F70;
  if (*v1)
  {
    v2 = 0x6E6F6973726576;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100235398()
{
  if (*v0)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 0x7963696C6F70;
  }
}

uint64_t sub_1002353EC(uint64_t a1)
{
  v2 = sub_100268E88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100235428(uint64_t a1)
{
  v2 = sub_100268E88();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 Config.Cryptex.$network.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1[7];
  v18 = v1[6];
  v19[0] = v3;
  *(v19 + 9) = *(v1 + 121);
  v4 = v1[3];
  v14 = v1[2];
  v15 = v4;
  v5 = v1[5];
  v16 = v1[4];
  v17 = v5;
  v6 = *(v1 + 1);
  v12 = *v1;
  v13 = v6;
  sub_100013E54(&v12, &v11, &qword_1004AD378, &qword_1003FC3D0);
  v7 = v19[0];
  *(a1 + 96) = v18;
  *(a1 + 112) = v7;
  *(a1 + 121) = *(v19 + 9);
  v8 = v15;
  *(a1 + 32) = v14;
  *(a1 + 48) = v8;
  v9 = v17;
  *(a1 + 64) = v16;
  *(a1 + 80) = v9;
  result = v13;
  *a1 = v12;
  *(a1 + 16) = result;
  return result;
}

void (*Config.Cryptex.$network.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x368uLL);
  }

  *a1 = v3;
  *(v3 + 864) = v1;
  *v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[4];
  *(v3 + 48) = v1[3];
  *(v3 + 64) = v6;
  *(v3 + 16) = v4;
  *(v3 + 32) = v5;
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  *(v3 + 121) = *(v1 + 121);
  *(v3 + 96) = v8;
  *(v3 + 112) = v9;
  *(v3 + 80) = v7;
  *(v3 + 144) = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v12 = v1[4];
  *(v3 + 192) = v1[3];
  *(v3 + 208) = v12;
  *(v3 + 160) = v10;
  *(v3 + 176) = v11;
  v13 = v1[5];
  v14 = v1[6];
  v15 = v1[7];
  *(v3 + 265) = *(v1 + 121);
  *(v3 + 240) = v14;
  *(v3 + 256) = v15;
  *(v3 + 224) = v13;
  sub_100013E54(v3, v3 + 288, &qword_1004AD378, &qword_1003FC3D0);
  return sub_100235618;
}

void sub_100235618(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 144);
  v4 = (*a1 + 288);
  if (a2)
  {
    v5 = *(v2 + 864);
    v6 = *(*a1 + 192);
    *(v2 + 608) = *(*a1 + 176);
    *(v2 + 624) = v6;
    *(v2 + 697) = *(v3 + 121);
    v7 = v3[7];
    *(v2 + 672) = v3[6];
    *(v2 + 688) = v7;
    v8 = v3[5];
    *(v2 + 640) = v3[4];
    *(v2 + 656) = v8;
    v9 = v3[1];
    *(v2 + 576) = *v3;
    *(v2 + 592) = v9;
    *(v2 + 432) = *v5;
    v10 = v5[1];
    v11 = v5[2];
    v12 = v5[4];
    *(v2 + 480) = v5[3];
    *(v2 + 496) = v12;
    *(v2 + 448) = v10;
    *(v2 + 464) = v11;
    v13 = v5[5];
    v14 = v5[6];
    v15 = v5[7];
    *(v2 + 553) = *(v5 + 121);
    *(v2 + 528) = v14;
    *(v2 + 544) = v15;
    *(v2 + 512) = v13;
    sub_100013E54(v2 + 576, v2 + 720, &qword_1004AD378, &qword_1003FC3D0);
    sub_100013F2C(v2 + 432, &qword_1004AD378, &qword_1003FC3D0);
    *v5 = *(v2 + 576);
    v16 = *(v2 + 640);
    v18 = *(v2 + 592);
    v17 = *(v2 + 608);
    v5[3] = *(v2 + 624);
    v5[4] = v16;
    v5[1] = v18;
    v5[2] = v17;
    v20 = *(v2 + 672);
    v19 = *(v2 + 688);
    v21 = *(v2 + 656);
    *(v5 + 121) = *(v2 + 697);
    v5[6] = v20;
    v5[7] = v19;
    v5[5] = v21;
    v22 = v3[7];
    v4[6] = v3[6];
    v4[7] = v22;
    *(v4 + 121) = *(v3 + 121);
    v23 = v3[3];
    v4[2] = v3[2];
    v4[3] = v23;
    v24 = v3[5];
    v4[4] = v3[4];
    v4[5] = v24;
    v25 = v3[1];
    *v4 = *v3;
    v4[1] = v25;
    sub_100013F2C(v4, &qword_1004AD378, &qword_1003FC3D0);
  }

  else
  {
    v26 = *(v2 + 864);
    v39 = *(*a1 + 240);
    *v40 = *(*a1 + 256);
    *&v40[9] = *(*a1 + 265);
    v35 = *(*a1 + 176);
    v36 = *(*a1 + 192);
    v37 = *(*a1 + 208);
    v38 = *(*a1 + 224);
    v33 = *v3;
    v34 = *(*a1 + 160);
    *v4 = *v26;
    v27 = v26[1];
    v28 = v26[2];
    v29 = v26[4];
    v4[3] = v26[3];
    v4[4] = v29;
    v4[1] = v27;
    v4[2] = v28;
    v30 = v26[5];
    v31 = v26[6];
    v32 = v26[7];
    *(v4 + 121) = *(v26 + 121);
    v4[6] = v31;
    v4[7] = v32;
    v4[5] = v30;
    sub_100013F2C(v4, &qword_1004AD378, &qword_1003FC3D0);
    v26[6] = v39;
    v26[7] = *v40;
    *(v26 + 121) = *&v40[9];
    v26[2] = v35;
    v26[3] = v36;
    v26[4] = v37;
    v26[5] = v38;
    *v26 = v33;
    v26[1] = v34;
  }

  free(v2);
}

double Config.Cryptex.$cache.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 176);
  v4 = *(v1 + 208);
  v14 = *(v1 + 192);
  v15 = v4;
  v16 = *(v1 + 224);
  v5 = *(v1 + 160);
  v11 = *(v1 + 144);
  v12 = v5;
  v13 = v3;
  sub_100013E54(&v11, v10, &qword_1004AD380, &qword_1003FC3D8);
  v6 = v14;
  v7 = v15;
  *(a1 + 32) = v13;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = v16;
  result = *&v11;
  v9 = v12;
  *a1 = v11;
  *(a1 + 16) = v9;
  return result;
}

void (*Config.Cryptex.$cache.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x218uLL);
  }

  *a1 = v3;
  *(v3 + 528) = v1;
  v4 = *(v1 + 160);
  *v3 = *(v1 + 144);
  *(v3 + 16) = v4;
  v5 = *(v1 + 176);
  v6 = *(v1 + 192);
  v7 = *(v1 + 208);
  *(v3 + 80) = *(v1 + 224);
  *(v3 + 48) = v6;
  *(v3 + 64) = v7;
  *(v3 + 32) = v5;
  v9 = *(v1 + 192);
  v8 = *(v1 + 208);
  v10 = *(v1 + 224);
  *(v3 + 120) = *(v1 + 176);
  *(v3 + 168) = v10;
  *(v3 + 152) = v8;
  *(v3 + 136) = v9;
  v11 = *(v1 + 144);
  *(v3 + 104) = *(v1 + 160);
  *(v3 + 88) = v11;
  sub_100013E54(v3, v3 + 176, &qword_1004AD380, &qword_1003FC3D8);
  return sub_1002359A4;
}

void sub_1002359A4(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 528);
    v4 = *(v2 + 136);
    *(v2 + 384) = *(v2 + 120);
    *(v2 + 400) = v4;
    *(v2 + 416) = *(v2 + 152);
    *(v2 + 432) = *(v2 + 168);
    v5 = *(v2 + 104);
    *(v2 + 352) = *(v2 + 88);
    *(v2 + 368) = v5;
    v6 = *(v3 + 160);
    *(v2 + 264) = *(v3 + 144);
    *(v2 + 280) = v6;
    v8 = *(v3 + 192);
    v7 = *(v3 + 208);
    v9 = *(v3 + 176);
    *(v2 + 344) = *(v3 + 224);
    *(v2 + 312) = v8;
    *(v2 + 328) = v7;
    *(v2 + 296) = v9;
    sub_100013E54(v2 + 352, v2 + 440, &qword_1004AD380, &qword_1003FC3D8);
    sub_100013F2C(v2 + 264, &qword_1004AD380, &qword_1003FC3D8);
    v10 = *(v2 + 368);
    *(v3 + 144) = *(v2 + 352);
    *(v3 + 160) = v10;
    v12 = *(v2 + 400);
    v11 = *(v2 + 416);
    v13 = *(v2 + 384);
    *(v3 + 224) = *(v2 + 432);
    *(v3 + 192) = v12;
    *(v3 + 208) = v11;
    *(v3 + 176) = v13;
    v14 = *(v2 + 104);
    *(v2 + 176) = *(v2 + 88);
    *(v2 + 192) = v14;
    *(v2 + 256) = *(v2 + 168);
    v15 = *(v2 + 152);
    v16 = *(v2 + 120);
    *(v2 + 224) = *(v2 + 136);
    *(v2 + 240) = v15;
    *(v2 + 208) = v16;
    sub_100013F2C(v2 + 176, &qword_1004AD380, &qword_1003FC3D8);
  }

  else
  {
    v17 = *(v2 + 528);
    v24 = *(v2 + 120);
    v25 = *(v2 + 136);
    v26 = *(v2 + 152);
    v27 = *(v2 + 168);
    v22 = *(v2 + 88);
    v23 = *(v2 + 104);
    v18 = *(v17 + 160);
    *(v2 + 176) = *(v17 + 144);
    *(v2 + 192) = v18;
    v20 = *(v17 + 192);
    v19 = *(v17 + 208);
    v21 = *(v17 + 176);
    *(v2 + 256) = *(v17 + 224);
    *(v2 + 224) = v20;
    *(v2 + 240) = v19;
    *(v2 + 208) = v21;
    sub_100013F2C(v2 + 176, &qword_1004AD380, &qword_1003FC3D8);
    *(v17 + 176) = v24;
    *(v17 + 192) = v25;
    *(v17 + 208) = v26;
    *(v17 + 224) = v27;
    *(v17 + 144) = v22;
    *(v17 + 160) = v23;
  }

  free(v2);
}

uint64_t sub_100235B78(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];

  *(a2 + 232) = v3;
  *(a2 + 240) = v4;
  return result;
}

void (*Config.Cryptex.$cryptexes.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 232);
  *(v3 + 24) = v5;
  v6 = *(v1 + 240);
  v4[4] = v6;
  *v4 = v5;
  v4[1] = v6;

  return sub_100235C60;
}

void sub_100235C60(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  if (a2)
  {

    *(v5 + 232) = v4;
    *(v5 + 240) = v3;
  }

  else
  {

    *(v5 + 232) = v4;
    *(v5 + 240) = v3;
  }

  free(v2);
}

uint64_t (*Config.Cryptex.$lock.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 248);
  *(a1 + 16) = v1;
  *(a1 + 24) = v3;
  v4 = *(v1 + 256);
  *a1 = v3;
  *(a1 + 8) = v4;

  return sub_100235DB4;
}

uint64_t sub_100235DB4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  if (a2)
  {

    *(v4 + 248) = v2;
    *(v4 + 256) = v3;
  }

  else
  {

    *(v4 + 248) = v2;
    *(v4 + 256) = v3;
  }

  return result;
}

__n128 Config.Cryptex.init(network:cache:cryptexes:lock:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = a1[4];
  *(a5 + 88) = a1[5];
  v6 = a1[7];
  *(a5 + 104) = a1[6];
  *(a5 + 120) = v6;
  v7 = *a1;
  *(a5 + 24) = a1[1];
  v8 = a1[3];
  *(a5 + 40) = a1[2];
  *(a5 + 56) = v8;
  *(a5 + 72) = v5;
  *(a5 + 8) = v7;
  v9 = *a2;
  *(a5 + 168) = a2[1];
  v10 = a2[3];
  *(a5 + 184) = a2[2];
  *(a5 + 200) = v10;
  result = a2[4];
  *(a5 + 216) = result;
  *a5 = _swiftEmptyArrayStorage;
  *(a5 + 136) = *(a1 + 128);
  *(a5 + 144) = _swiftEmptyArrayStorage;
  *(a5 + 152) = v9;
  *(a5 + 232) = _swiftEmptyArrayStorage;
  *(a5 + 240) = a3;
  *(a5 + 248) = _swiftEmptyArrayStorage;
  *(a5 + 256) = a4;
  return result;
}

BOOL Config.Cryptex.isEmpty.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 120);
  v6[6] = *(v0 + 104);
  v6[7] = v2;
  v7 = *(v0 + 136);
  v3 = *(v0 + 24);
  v4 = *(v0 + 56);
  v6[2] = *(v0 + 40);
  v6[3] = v4;
  v6[4] = *(v0 + 72);
  v6[5] = v1;
  v6[0] = *(v0 + 8);
  v6[1] = v3;
  return sub_100218DC8(v6) == 1 && !*(v0 + 152) && !*(v0 + 240) && *(v0 + 256) == 2;
}

uint64_t Config.Cryptex.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004AD388, &qword_1003FC3E0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_10025A540();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[7];
  v24 = v3[6];
  v25[0] = v9;
  *(v25 + 9) = *(v3 + 121);
  v10 = v3[3];
  v20 = v3[2];
  v21 = v10;
  v11 = v3[5];
  v22 = v3[4];
  v23 = v11;
  v12 = v3[1];
  v18 = *v3;
  v19 = v12;
  v17 = 0;
  sub_10025A594();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v13 = v3[12];
    v20 = v3[11];
    v21 = v13;
    v22 = v3[13];
    *&v23 = *(v3 + 28);
    v14 = v3[10];
    v18 = v3[9];
    v19 = v14;
    v17 = 1;
    sub_10025A5E8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v18 = *(v3 + 30);
    v17 = 2;
    sub_1000039E8(&qword_1004AD3A8, &qword_1003FC3E8);
    sub_10025A63C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v18) = *(v3 + 256);
    v17 = 3;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void *Config.Cryptex.init(from:)@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_100257C74(a2, __src);
  if (!v2)
  {
    return memcpy(a1, __src, 0x101uLL);
  }

  return result;
}

BOOL sub_100236200(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x101uLL);
  memcpy(__dst, a2, 0x101uLL);
  return _s10DarwinInit6ConfigV7CryptexV2eeoiySbAE_AEtFZ_0(v4, __dst);
}

void Config.Cryptex.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 88);
  v4 = *(v1 + 120);
  v10[6] = *(v1 + 104);
  v10[7] = v4;
  v11 = *(v1 + 136);
  v5 = *(v1 + 24);
  v6 = *(v1 + 56);
  v10[2] = *(v1 + 40);
  v10[3] = v6;
  v10[4] = *(v1 + 72);
  v10[5] = v3;
  v10[0] = *(v1 + 8);
  v10[1] = v5;
  if (sub_100218DC8(v10) == 1)
  {
    Hasher._combine(_:)(0);
    if (*(v1 + 152))
    {
      goto LABEL_3;
    }

LABEL_6:
    Hasher._combine(_:)(0);
    v7 = *(v1 + 240);
    if (v7)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  Hasher._combine(_:)(1u);
  Config.Cryptex.Network.hash(into:)(a1);
  if (!*(v1 + 152))
  {
    goto LABEL_6;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  Config.Cryptex.Cache.hash(into:)(a1);
  v7 = *(v1 + 240);
  if (v7)
  {
LABEL_4:
    Hasher._combine(_:)(1u);
    sub_1001D4D48(a1, v7);
    goto LABEL_8;
  }

LABEL_7:
  Hasher._combine(_:)(0);
LABEL_8:
  v8 = *(v1 + 256);
  if (v8 == 2)
  {
    v9 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v9 = v8 & 1;
  }

  Hasher._combine(_:)(v9);
}

Swift::Int Config.Cryptex.hashValue.getter()
{
  Hasher.init(_seed:)();
  Config.Cryptex.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100236400()
{
  Hasher.init(_seed:)();
  Config.Cryptex.hash(into:)(v1);
  return Hasher._finalize()();
}

DarwinInit::Config::Cryptex::CodingKeys_optional __swiftcall Config.Cryptex.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100487840, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t Config.Cryptex.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x6B726F7774656ELL;
  v2 = 0x6578657470797263;
  if (a1 != 2)
  {
    v2 = 1801678700;
  }

  if (a1)
  {
    v1 = 0x6568636163;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10023650C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6B726F7774656ELL;
  v3 = *a1;
  v4 = 0xE700000000000000;
  v5 = 0x6578657470797263;
  v6 = 0xE900000000000073;
  if (v3 != 2)
  {
    v5 = 1801678700;
    v6 = 0xE400000000000000;
  }

  v7 = 0x6568636163;
  if (*a1)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v7 = 0x6B726F7774656ELL;
  }

  if (*a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  v10 = 0xE700000000000000;
  v11 = 0x6578657470797263;
  v12 = 0xE900000000000073;
  if (*a2 != 2)
  {
    v11 = 1801678700;
    v12 = 0xE400000000000000;
  }

  if (*a2)
  {
    v2 = 0x6568636163;
    v10 = 0xE500000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v11;
  }

  if (*a2 <= 1u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12;
  }

  if (v8 == v13 && v9 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

Swift::Int sub_100236640()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002366FC(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1002367A4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

DarwinInit::Config::Cryptex::CodingKeys_optional sub_10023685C@<W0>(Swift::String *a1@<X0>, DarwinInit::Config::Cryptex::CodingKeys_optional *a2@<X8>)
{
  result.value = Config.Cryptex.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void sub_10023688C(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6B726F7774656ELL;
  v4 = 0xE900000000000073;
  v5 = 0x6578657470797263;
  if (*v1 != 2)
  {
    v5 = 1801678700;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x6568636163;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_100236904()
{
  v1 = 0x6B726F7774656ELL;
  v2 = 0x6578657470797263;
  if (*v0 != 2)
  {
    v2 = 1801678700;
  }

  if (*v0)
  {
    v1 = 0x6568636163;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

DarwinInit::Config::Cryptex::CodingKeys_optional sub_100236978@<W0>(uint64_t a1@<X0>, DarwinInit::Config::Cryptex::CodingKeys_optional *a2@<X8>)
{
  result.value = Config.Cryptex.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1002369B0(uint64_t a1)
{
  v2 = sub_10025A540();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002369EC(uint64_t a1)
{
  v2 = sub_10025A540();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t (*Config.Cryptex.Network.$alternateCdnHost.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *v1;
  *(v3 + 32) = *v1;
  v7 = v1[1];
  v6 = v1[2];
  v4[5] = v6;
  *v4 = v5;
  v4[1] = v7;
  v4[2] = v6;

  return sub_100269A94;
}

uint64_t (*Config.Cryptex.Network.$networkServiceType.modify(uint64_t a1))()
{
  v3 = *(v1 + 24);
  *(a1 + 16) = v1;
  *(a1 + 24) = v3;
  v4 = *(v1 + 32);
  *a1 = v3;
  *(a1 + 8) = v4;

  return sub_100269A98;
}

uint64_t Config.Network.uplinkMtu.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t (*Config.Cryptex.Network.$bandwidthLimit.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(v1 + 40);
  *(v4 + 32) = v5;
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;

  return sub_100236BF8;
}

uint64_t Config.Cryptex.Network.retryCount.setter(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  return result;
}

void (*Config.Cryptex.Network.$retryCount.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(v1 + 64);
  *(v4 + 32) = v5;
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;

  return sub_100236CCC;
}

void sub_100236CCC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = *(*a1 + 16);
  v6 = (*a1)[3];
  if (a2)
  {

    *(v6 + 64) = v3;
    *(v6 + 72) = v4;
    *(v6 + 80) = v5;
  }

  else
  {

    *(v6 + 64) = v3;
    *(v6 + 72) = v4;
    *(v6 + 80) = v5;
  }

  free(v2);
}

uint64_t Config.Cryptex.Network.downloadTasks.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

void (*Config.Cryptex.Network.$downloadTasks.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(v1 + 88);
  *(v4 + 32) = v5;
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;

  return sub_100236E44;
}

void sub_100236E44(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = *(*a1 + 16);
  v6 = (*a1)[3];
  if (a2)
  {

    *(v6 + 88) = v3;
    *(v6 + 96) = v4;
    *(v6 + 104) = v5;
  }

  else
  {

    *(v6 + 88) = v3;
    *(v6 + 96) = v4;
    *(v6 + 104) = v5;
  }

  free(v2);
}

uint64_t Config.Cryptex.Network.chunkSize.setter(uint64_t result, char a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2 & 1;
  return result;
}

void (*Config.Cryptex.Network.$chunkSize.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(v1 + 112);
  *(v4 + 32) = v5;
  v6 = *(v1 + 120);
  v7 = *(v1 + 128);
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;

  return sub_100236FBC;
}

void sub_100236FBC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = *(*a1 + 16);
  v6 = (*a1)[3];
  if (a2)
  {

    *(v6 + 112) = v3;
    *(v6 + 120) = v4;
    *(v6 + 128) = v5;
  }

  else
  {

    *(v6 + 112) = v3;
    *(v6 + 120) = v4;
    *(v6 + 128) = v5;
  }

  free(v2);
}

uint64_t Config.Cryptex.Network.init(alternateCdnHost:networkServiceType:bandwidthLimit:retryCount:downloadTasks:chunkSize:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12)
{
  *a9 = _swiftEmptyArrayStorage;
  *(a9 + 8) = result;
  *(a9 + 16) = a2;
  *(a9 + 24) = _swiftEmptyArrayStorage;
  *(a9 + 32) = a3;
  *(a9 + 40) = _swiftEmptyArrayStorage;
  *(a9 + 48) = a4;
  *(a9 + 56) = a5 & 1;
  *(a9 + 64) = _swiftEmptyArrayStorage;
  *(a9 + 72) = a6;
  *(a9 + 80) = a7 & 1;
  *(a9 + 88) = _swiftEmptyArrayStorage;
  *(a9 + 96) = a8;
  *(a9 + 104) = a10 & 1;
  *(a9 + 112) = _swiftEmptyArrayStorage;
  *(a9 + 120) = a11;
  *(a9 + 128) = a12 & 1;
  return result;
}

uint64_t Config.Cryptex.Network.isEmpty.getter()
{
  if (!*(v0 + 16) && *(v0 + 32) == 2 && (*(v0 + 56) & 1) != 0 && (*(v0 + 80) & 1) != 0 && (*(v0 + 104) & 1) != 0)
  {
    return *(v0 + 128) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t Config.Cryptex.Network.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004AD3C0, &qword_1003FC3F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_10025A6F8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *(v3 + 8);
  v11 = 0;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = *(v3 + 32);
    v11 = 1;
    sub_10025A74C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v12 = *(v3 + 48);
    BYTE8(v12) = *(v3 + 56);
    v11 = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v12 = *(v3 + 72);
    BYTE8(v12) = *(v3 + 80);
    v11 = 3;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v12 = *(v3 + 96);
    BYTE8(v12) = *(v3 + 104);
    v11 = 4;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v12 = *(v3 + 120);
    BYTE8(v12) = *(v3 + 128);
    v11 = 5;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100237430(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v12 = *(a1 + 128);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v14 = *(a2 + 128);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return _s10DarwinInit6ConfigV7CryptexV7NetworkV2eeoiySbAG_AGtFZ_0(v11, v13) & 1;
}

void Config.Cryptex.Network.hash(into:)(uint64_t a1)
{
  if (*(v1 + 16))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v1 + 32) == 2)
  {
    Hasher._combine(_:)(0);
    if ((*(v1 + 56) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();

    if ((*(v1 + 56) & 1) == 0)
    {
LABEL_6:
      v2 = *(v1 + 48);
      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(v2);
      if ((*(v1 + 80) & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  Hasher._combine(_:)(0);
  if ((*(v1 + 80) & 1) == 0)
  {
LABEL_7:
    v3 = *(v1 + 72);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v3);
    if ((*(v1 + 104) & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_13:
    Hasher._combine(_:)(0);
    if ((*(v1 + 128) & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

LABEL_12:
  Hasher._combine(_:)(0);
  if (*(v1 + 104))
  {
    goto LABEL_13;
  }

LABEL_8:
  v4 = *(v1 + 96);
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v4);
  if ((*(v1 + 128) & 1) == 0)
  {
LABEL_9:
    v5 = *(v1 + 120);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v5);
    return;
  }

LABEL_14:
  Hasher._combine(_:)(0);
}

Swift::Int Config.Cryptex.Network.hashValue.getter()
{
  Hasher.init(_seed:)();
  Config.Cryptex.Network.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100237670()
{
  Hasher.init(_seed:)();
  Config.Cryptex.Network.hash(into:)(v1);
  return Hasher._finalize()();
}

DarwinInit::Config::Cryptex::Network::CodingKeys_optional __swiftcall Config.Cryptex.Network.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100487910, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10023770C(unsigned __int8 a1)
{
  v1 = 0x74646977646E6162;
  v2 = 0x6F635F7972746572;
  v3 = 0x64616F6C6E776F64;
  if (a1 != 4)
  {
    v3 = 0x69735F6B6E756863;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  if (a1 == 1)
  {
    v1 = 0xD000000000000014;
  }

  if (!a1)
  {
    v1 = 0xD000000000000012;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100237808(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

Swift::Int sub_1002378B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100237938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  String.hash(into:)();
}

Swift::Int sub_1002379A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

DarwinInit::Config::Cryptex::Network::CodingKeys_optional sub_100237A10@<W0>(Swift::String *a1@<X0>, DarwinInit::Config::Cryptex::Network::CodingKeys_optional *a2@<X8>)
{
  result.value = Config.Cryptex.Network.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_100237A40@<X0>(uint64_t *a1@<X8>)
{
  result = Config.Cryptex.Network.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

DarwinInit::Config::Cryptex::Network::CodingKeys_optional sub_100237A74@<W0>(uint64_t a1@<X0>, DarwinInit::Config::Cryptex::Network::CodingKeys_optional *a2@<X8>)
{
  result.value = Config.Cryptex.Network.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_100237AAC(uint64_t a1)
{
  v2 = sub_10025A6F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100237AE8(uint64_t a1)
{
  v2 = sub_10025A6F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Config.Cryptex.Network.NetworkServiceType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x756F72676B636162;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_100237B78(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x756F72676B636162;
  }

  else
  {
    v3 = 0x746C7561666564;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEA0000000000646ELL;
  }

  if (*a2)
  {
    v5 = 0x756F72676B636162;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (*a2)
  {
    v6 = 0xEA0000000000646ELL;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100237C24()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100237CAC(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100237D20()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100237DB0(uint64_t *a1@<X8>)
{
  v2 = 0x746C7561666564;
  if (*v1)
  {
    v2 = 0x756F72676B636162;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEA0000000000646ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t Config.Tailspin.fullSamplingPeriodSet.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t (*Config.Cryptex.Cache.$cacheMaxSize.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *v1;
  *(v4 + 32) = *v1;
  v6 = v1[1];
  v7 = *(v1 + 16);
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;

  return sub_100237F94;
}

uint64_t Config.Cryptex.Cache.$retainedCryptexes.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_100237FD0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];

  *(a2 + 40) = v3;
  *(a2 + 48) = v4;
  return result;
}

void (*Config.Cryptex.Cache.$retainedCryptexes.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 40);
  *(v3 + 24) = v5;
  v6 = *(v1 + 48);
  v4[4] = v6;
  *v4 = v5;
  v4[1] = v6;

  return sub_1002380B8;
}

void sub_1002380B8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  if (a2)
  {

    *(v5 + 40) = v4;
    *(v5 + 48) = v3;
  }

  else
  {

    *(v5 + 40) = v4;
    *(v5 + 48) = v3;
  }

  free(v2);
}

uint64_t Config.Cryptex.Cache.$invalidationId.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_1002381A0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];

  a2[7] = v3;
  a2[8] = v4;
  a2[9] = v5;
  return result;
}

void (*Config.Cryptex.Cache.$invalidationId.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = v1[7];
  *(v3 + 32) = v5;
  v7 = v1[8];
  v6 = v1[9];
  v4[5] = v6;
  *v4 = v5;
  v4[1] = v7;
  v4[2] = v6;

  return sub_10023829C;
}

void sub_10023829C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {

    v6[7] = v3;
    v6[8] = v4;
    v6[9] = v5;
  }

  else
  {

    v6[7] = v3;
    v6[8] = v4;
    v6[9] = v5;
  }

  free(v2);
}

uint64_t Config.Cryptex.Cache.init(cacheMaxSize:retainPreviouslyCachedCryptexesUnsafely:retainedCryptexes:invalidationId:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = _swiftEmptyArrayStorage;
  *(a7 + 8) = result;
  *(a7 + 16) = a2 & 1;
  *(a7 + 24) = _swiftEmptyArrayStorage;
  *(a7 + 32) = a3;
  *(a7 + 40) = _swiftEmptyArrayStorage;
  *(a7 + 48) = a4;
  *(a7 + 56) = _swiftEmptyArrayStorage;
  *(a7 + 64) = a5;
  *(a7 + 72) = a6;
  return result;
}

uint64_t Config.Cryptex.Cache.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004AD3D8, &qword_1003FC3F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_10025A7A0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v10 = *(v3 + 8);
  BYTE8(v10) = *(v3 + 16);
  v11 = 0;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v10) = *(v3 + 32);
    v11 = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v10 = *(v3 + 48);
    v11 = 2;
    sub_1000039E8(&qword_1004AD3A8, &qword_1003FC3E8);
    sub_10025A63C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = *(v3 + 64);
    v11 = 3;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 Config.Cryptex.Cache.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1002572B8(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

BOOL sub_100238688(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return _s10DarwinInit6ConfigV7CryptexV5CacheV2eeoiySbAG_AGtFZ_0(v8, v9);
}

void Config.Cryptex.Cache.hash(into:)(uint64_t a1)
{
  v2 = v1;
  if (*(v2 + 16))
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = *(v2 + 8);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v4);
  }

  v5 = *(v2 + 32);
  if (v5 == 2)
  {
    v6 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v6 = v5 & 1;
  }

  Hasher._combine(_:)(v6);
  v7 = *(v2 + 48);
  if (!v7)
  {
    Hasher._combine(_:)(0);
    if (*(v2 + 72))
    {
      goto LABEL_9;
    }

LABEL_13:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(1u);
  sub_1001D4D48(a1, v7);
  if (!*(v2 + 72))
  {
    goto LABEL_13;
  }

LABEL_9:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int Config.Cryptex.Cache.hashValue.getter()
{
  Hasher.init(_seed:)();
  Config.Cryptex.Cache.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100238814()
{
  Hasher.init(_seed:)();
  Config.Cryptex.Cache.hash(into:)(v1);
  return Hasher._finalize()();
}

DarwinInit::Config::Cryptex::Cache::CodingKeys_optional __swiftcall Config.Cryptex.Cache.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100487A88, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t Config.Cryptex.Cache.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x616D5F6568636163;
  v2 = 0x6164696C61766E69;
  if (a1 == 2)
  {
    v2 = 0xD000000000000012;
  }

  if (a1)
  {
    v1 = 0xD00000000000002BLL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100238944(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6164696C61766E69;
  v4 = 0xEF64695F6E6F6974;
  if (v2 == 2)
  {
    v3 = 0xD000000000000012;
    v4 = 0x800000010043D840;
  }

  v5 = 0x800000010043D810;
  v6 = 0xD00000000000002BLL;
  if (!*a1)
  {
    v6 = 0x616D5F6568636163;
    v5 = 0xEE00657A69735F78;
  }

  if (*a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v3;
  }

  if (v2 <= 1)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  if (*a2 > 1u)
  {
    if (*a2 == 2)
    {
      v10 = 0x800000010043D840;
      if (v7 != 0xD000000000000012)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v10 = 0xEF64695F6E6F6974;
      if (v7 != 0x6164696C61766E69)
      {
LABEL_26:
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (*a2)
    {
      v9 = 0xD00000000000002BLL;
    }

    else
    {
      v9 = 0x616D5F6568636163;
    }

    if (*a2)
    {
      v10 = 0x800000010043D810;
    }

    else
    {
      v10 = 0xEE00657A69735F78;
    }

    if (v7 != v9)
    {
      goto LABEL_26;
    }
  }

  if (v8 != v10)
  {
    goto LABEL_26;
  }

  v11 = 1;
LABEL_27:

  return v11 & 1;
}

Swift::Int sub_100238AB0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100238B90(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100238C5C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

DarwinInit::Config::Cryptex::Cache::CodingKeys_optional sub_100238D38@<W0>(Swift::String *a1@<X0>, DarwinInit::Config::Cryptex::Cache::CodingKeys_optional *a2@<X8>)
{
  result.value = Config.Cryptex.Cache.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void sub_100238D68(unint64_t *a1@<X8>)
{
  v2 = 0xEE00657A69735F78;
  v3 = 0x616D5F6568636163;
  v4 = 0x800000010043D840;
  v5 = 0x6164696C61766E69;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v4 = 0xEF64695F6E6F6974;
  }

  if (*v1)
  {
    v3 = 0xD00000000000002BLL;
    v2 = 0x800000010043D810;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_100238E04()
{
  v1 = 0x616D5F6568636163;
  v2 = 0x6164696C61766E69;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0xD00000000000002BLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

DarwinInit::Config::Cryptex::Cache::CodingKeys_optional sub_100238E9C@<W0>(uint64_t a1@<X0>, DarwinInit::Config::Cryptex::Cache::CodingKeys_optional *a2@<X8>)
{
  result.value = Config.Cryptex.Cache.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_100238ED4(uint64_t a1)
{
  v2 = sub_10025A7A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100238F10(uint64_t a1)
{
  v2 = sub_10025A7A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double Config.Cryptex.Cryptex.aeaDecryptionParams.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_10021E528(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_100238F7C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a2[1];
  sub_10021E528(*a1, v4, v5, v6, v7, v8);
  result = sub_10021E638(v9);
  a2[1] = v3;
  a2[2] = v4;
  a2[3] = v5;
  a2[4] = v6;
  a2[5] = v7;
  a2[6] = v8;
  return result;
}

__n128 Config.Cryptex.Cryptex.aeaDecryptionParams.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_10021E638(*(v1 + 8));
  result = *a1;
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 8) = result;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  return result;
}

double Config.Cryptex.Cryptex.$aeaDecryptionParams.getter@<D0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;

  return sub_10021E528(v3, v4, v5, v6, v7, v8);
}

double sub_1002390DC@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
  a2[4] = v5;
  a2[5] = v6;
  a2[6] = v7;

  return sub_10021E528(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_10023914C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a2[1];

  sub_10021E528(v4, v5, v6, v7, v8, v9);

  result = sub_10021E638(v10);
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v9;
  return result;
}

void (*Config.Cryptex.Cryptex.$aeaDecryptionParams.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  v4[4] = v9;
  v4[5] = v10;
  v4[6] = v11;

  sub_10021E528(v6, v7, v8, v9, v10, v11);
  return sub_1002392D0;
}

void sub_1002392D0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  v4 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[5];
  v8 = (*a1)[6];
  v9 = (*a1)[7];
  v12 = v9[1];
  v11 = **a1;
  if (a2)
  {

    sub_10021E528(v3, v5, v4, v6, v7, v8);

    sub_10021E638(v12);
    *v9 = v11;
    v9[1] = v3;
    v9[2] = v5;
    v9[3] = v4;
    v9[4] = v6;
    v9[5] = v7;
    v9[6] = v8;
    v10 = v2[1];

    sub_10021E638(v10);
  }

  else
  {

    sub_10021E638(v12);
    *v9 = v11;
    v9[1] = v3;
    v9[2] = v5;
    v9[3] = v4;
    v9[4] = v6;
    v9[5] = v7;
    v9[6] = v8;
  }

  free(v2);
}

uint64_t (*Config.Cryptex.Cryptex.$cacheable.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 56);
  *(a1 + 16) = v1;
  *(a1 + 24) = v3;
  v4 = *(v1 + 64);
  *a1 = v3;
  *(a1 + 8) = v4;

  return sub_100239498;
}

uint64_t sub_100239498(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  if (a2)
  {

    *(v4 + 56) = v2;
    *(v4 + 64) = v3;
  }

  else
  {

    *(v4 + 56) = v2;
    *(v4 + 64) = v3;
  }

  return result;
}

uint64_t Config.Tailspin.$classConfigs.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_100239550(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];

  *(a2 + 72) = v3;
  *(a2 + 80) = v4;
  return result;
}

uint64_t (*Config.Cryptex.Cryptex.$dependencies.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 72);
  *(v3 + 24) = v5;
  v6 = *(v1 + 80);
  v4[4] = v6;
  *v4 = v5;
  v4[1] = v6;

  return sub_100239638;
}

uint64_t (*Config.Cryptex.Cryptex.$signingEnvironment.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 88);
  *(a1 + 16) = v1;
  *(a1 + 24) = v3;
  v4 = *(v1 + 96);
  *a1 = v3;
  *(a1 + 8) = v4;

  return sub_1002396D0;
}

uint64_t sub_1002396D0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  if (a2)
  {

    *(v4 + 88) = v2;
    *(v4 + 96) = v3;
  }

  else
  {

    *(v4 + 88) = v2;
    *(v4 + 96) = v3;
  }

  return result;
}

uint64_t Config.Cryptex.Cryptex.sha256.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t Config.Cryptex.Cryptex.sha256.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t Config.Cryptex.Cryptex.$sha256.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t sub_100239820(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];

  a2[13] = v3;
  a2[14] = v4;
  a2[15] = v5;
  return result;
}

void (*Config.Cryptex.Cryptex.$sha256.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = v1[13];
  *(v3 + 32) = v5;
  v7 = v1[14];
  v6 = v1[15];
  v4[5] = v6;
  *v4 = v5;
  v4[1] = v7;
  v4[2] = v6;

  return sub_10023991C;
}

void sub_10023991C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {

    v6[13] = v3;
    v6[14] = v4;
    v6[15] = v5;
  }

  else
  {

    v6[13] = v3;
    v6[14] = v4;
    v6[15] = v5;
  }

  free(v2);
}

uint64_t Config.Cryptex.Cryptex.size.setter(uint64_t result, char a2)
{
  *(v2 + 136) = result;
  *(v2 + 144) = a2 & 1;
  return result;
}

void (*Config.Cryptex.Cryptex.$size.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(v1 + 128);
  *(v4 + 32) = v5;
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;

  return sub_100239AAC;
}

void sub_100239AAC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = *(*a1 + 16);
  v6 = (*a1)[3];
  if (a2)
  {

    *(v6 + 128) = v3;
    *(v6 + 136) = v4;
    *(v6 + 144) = v5;
  }

  else
  {

    *(v6 + 128) = v3;
    *(v6 + 136) = v4;
    *(v6 + 144) = v5;
  }

  free(v2);
}

uint64_t sub_100239B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for Config.Cryptex.Cryptex(0) + 40);
  v4 = *(sub_1000039E8(&qword_1004ACD08, &unk_1004046A0) + 44);
  v5 = type metadata accessor for URL();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v3 + v4, v5);
}

uint64_t sub_100239BD0(uint64_t a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for Config.Cryptex.Cryptex(0) + 40);
  v4 = *(sub_1000039E8(&qword_1004ACD08, &unk_1004046A0) + 44);
  v5 = type metadata accessor for URL();
  v6 = *(*(v5 - 8) + 24);

  return v6(v3 + v4, a1, v5);
}

uint64_t Config.Cryptex.Cryptex.url.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Config.Cryptex.Cryptex(0) + 40);
  v4 = *(sub_1000039E8(&qword_1004ACD08, &unk_1004046A0) + 44);
  v5 = type metadata accessor for URL();
  v6 = *(*(v5 - 8) + 40);

  return v6(v3 + v4, a1, v5);
}

void (*Config.Cryptex.Cryptex.url.modify())()
{
  type metadata accessor for Config.Cryptex.Cryptex(0);
  sub_1000039E8(&qword_1004ACD08, &unk_1004046A0);
  return DInitData.init(rawValue:);
}

uint64_t sub_100239D68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004ACD08, &unk_1004046A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  sub_100013E54(a1, &v9 - v5, &qword_1004ACD08, &unk_1004046A0);
  v7 = *(type metadata accessor for Config.Cryptex.Cryptex(0) + 40);
  sub_100013F2C(a2 + v7, &qword_1004ACD08, &unk_1004046A0);
  return sub_10003E154(v6, a2 + v7, &qword_1004ACD08, &unk_1004046A0);
}

void (*Config.Cryptex.Cryptex.$url.modify(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *(*(sub_1000039E8(&qword_1004ACD08, &unk_1004046A0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(a1 + 8) = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    *(a1 + 8) = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = v4;
  *(a1 + 16) = v4;
  v6 = *(type metadata accessor for Config.Cryptex.Cryptex(0) + 40);
  *(a1 + 24) = v6;
  sub_100013E54(v1 + v6, v5, &qword_1004ACD08, &unk_1004046A0);
  return sub_100239F18;
}

void sub_100239F2C(uint64_t *a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *(a1 + 6);
  v7 = a1[1];
  v8 = a1[2];
  v9 = *a1;
  if (a2)
  {
    sub_100013E54(a1[2], v7, a3, a4);
    sub_100013F2C(v9 + v6, a3, a4);
    sub_10003E154(v7, v9 + v6, a3, a4);
    sub_100013F2C(v8, a3, a4);
  }

  else
  {
    sub_100013F2C(v9 + v6, a3, a4);
    sub_10003E154(v8, v9 + v6, a3, a4);
  }

  free(v8);

  free(v7);
}

uint64_t Config.Cryptex.Cryptex.variant.getter()
{
  v1 = *(v0 + *(type metadata accessor for Config.Cryptex.Cryptex(0) + 44) + 8);

  return v1;
}

uint64_t sub_10023A03C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2 + *(type metadata accessor for Config.Cryptex.Cryptex(0) + 44);

  *(v4 + 8) = v3;
  *(v4 + 16) = v2;
  return result;
}

uint64_t Config.Cryptex.Cryptex.variant.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for Config.Cryptex.Cryptex(0) + 44);

  *(v5 + 8) = a1;
  *(v5 + 16) = a2;
  return result;
}

uint64_t Config.Cryptex.Cryptex.$variant.getter()
{
  v1 = *(v0 + *(type metadata accessor for Config.Cryptex.Cryptex(0) + 44));

  return v1;
}

double sub_10023A17C@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Config.Cryptex.Cryptex(0) + 44));
  v4 = v3[1];
  v5 = v3[2];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v5;

  return result;
}

uint64_t sub_10023A1D8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = (a2 + *(type metadata accessor for Config.Cryptex.Cryptex(0) + 44));

  *v5 = v2;
  v5[1] = v3;
  v5[2] = v4;
  return result;
}

void (*Config.Cryptex.Cryptex.$variant.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(type metadata accessor for Config.Cryptex.Cryptex(0) + 44);
  *(v4 + 48) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  *(v4 + 32) = *v6;
  v9 = v6[1];
  v8 = v6[2];
  *(v4 + 40) = v8;
  *v4 = v7;
  *(v4 + 8) = v9;
  *(v4 + 16) = v8;

  return sub_10023A2F8;
}

void sub_10023A2F8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = *(*a1 + 12);
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  if (a2)
  {
    v8 = (v7 + v5);

    *v8 = v3;
    v8[1] = v4;
    v8[2] = v6;
  }

  else
  {

    v9 = (v7 + v5);
    *v9 = v3;
    v9[1] = v4;
    v9[2] = v6;
  }

  free(v2);
}

uint64_t Config.Cryptex.Cryptex.originalKnoxUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Config.Cryptex.Cryptex(0) + 48);
  v4 = sub_1000039E8(&qword_1004ACD10, &qword_1003FA110);
  return sub_100013E54(v3 + *(v4 + 44), a1, &qword_1004A6D30, &unk_100376820);
}

uint64_t sub_10023A41C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for Config.Cryptex.Cryptex(0) + 48);
  v4 = sub_1000039E8(&qword_1004ACD10, &qword_1003FA110);
  return sub_100013E54(v3 + *(v4 + 44), a2, &qword_1004A6D30, &unk_100376820);
}

uint64_t sub_10023A484(uint64_t a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for Config.Cryptex.Cryptex(0) + 48);
  v4 = sub_1000039E8(&qword_1004ACD10, &qword_1003FA110);
  return sub_100268AD8(a1, v3 + *(v4 + 44), &qword_1004A6D30, &unk_100376820);
}

uint64_t Config.Cryptex.Cryptex.originalKnoxUrl.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Config.Cryptex.Cryptex(0) + 48);
  v4 = sub_1000039E8(&qword_1004ACD10, &qword_1003FA110);
  return sub_10001F8D8(a1, v3 + *(v4 + 44), &qword_1004A6D30, &unk_100376820);
}

void (*Config.Cryptex.Cryptex.originalKnoxUrl.modify())()
{
  type metadata accessor for Config.Cryptex.Cryptex(0);
  sub_1000039E8(&qword_1004ACD10, &qword_1003FA110);
  return DInitData.init(rawValue:);
}

uint64_t sub_10023A5FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004ACD10, &qword_1003FA110);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  sub_100013E54(a1, &v9 - v5, &qword_1004ACD10, &qword_1003FA110);
  v7 = *(type metadata accessor for Config.Cryptex.Cryptex(0) + 48);
  sub_100013F2C(a2 + v7, &qword_1004ACD10, &qword_1003FA110);
  return sub_10003E154(v6, a2 + v7, &qword_1004ACD10, &qword_1003FA110);
}

void (*Config.Cryptex.Cryptex.$originalKnoxUrl.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(sub_1000039E8(&qword_1004ACD10, &qword_1003FA110) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(a1 + 8) = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    *(a1 + 8) = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = v4;
  *(a1 + 16) = v4;
  v6 = *(type metadata accessor for Config.Cryptex.Cryptex(0) + 48);
  *(a1 + 24) = v6;
  sub_100013E54(v1 + v6, v5, &qword_1004ACD10, &qword_1003FA110);
  return sub_10023A7AC;
}

uint64_t Config.Cryptex.Cryptex.readwrite.setter(char a1)
{
  result = type metadata accessor for Config.Cryptex.Cryptex(0);
  *(v1 + *(result + 52) + 8) = a1;
  return result;
}

double Config.Cryptex.Cryptex.$readwrite.getter()
{
  type metadata accessor for Config.Cryptex.Cryptex(0);

  return result;
}

uint64_t sub_10023A8A4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a2 + *(type metadata accessor for Config.Cryptex.Cryptex(0) + 52);

  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t Config.Cryptex.Cryptex.$readwrite.setter(uint64_t a1, char a2)
{
  v5 = v2 + *(type metadata accessor for Config.Cryptex.Cryptex(0) + 52);

  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t (*Config.Cryptex.Cryptex.$readwrite.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for Config.Cryptex.Cryptex(0) + 52);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  *(a1 + 24) = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;

  return sub_10023A9BC;
}

uint64_t sub_10023A9BC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 3);
  v5 = a1[2];
  if (a2)
  {
    v6 = v5 + v4;

    *v6 = v2;
    *(v6 + 8) = v3;
  }

  else
  {

    v8 = v5 + v4;
    *v8 = v2;
    *(v8 + 8) = v3;
  }

  return result;
}

uint64_t Config.Cryptex.Cryptex.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004AD3E8, &unk_1003FC400);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_10025A7F4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v14[0] = *v3;
  *(v14 + 8) = *(v3 + 8);
  *(&v14[1] + 8) = *(v3 + 24);
  *(&v14[2] + 8) = *(v3 + 40);
  v15 = 0;
  sub_10025A848();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v14[0]) = *(v3 + 64);
    v15 = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v14[0] = *(v3 + 80);
    v15 = 2;
    sub_1000039E8(&qword_1004A6B48, &unk_100376810);
    sub_1000BD1B8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v14[0]) = *(v3 + 96);
    v15 = 3;
    sub_1001BBCD0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14[0] = *(v3 + 112);
    v15 = 4;
    sub_1001BBC7C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v9 = *(v3 + 144);
    *&v14[0] = *(v3 + 136);
    BYTE8(v14[0]) = v9;
    v15 = 5;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = type metadata accessor for Config.Cryptex.Cryptex(0);
    LOBYTE(v14[0]) = 6;
    sub_1000039E8(&qword_1004ACD08, &unk_1004046A0);
    type metadata accessor for URL();
    sub_1002599A0(&qword_1004A9058, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = v13;
    v14[0] = *(v3 + *(v13 + 44) + 8);
    v15 = 7;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v14[0]) = 8;
    sub_1000039E8(&qword_1004ACD10, &qword_1003FA110);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v14[0]) = *(v3 + *(v10 + 52) + 8);
    v15 = 9;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void Config.Cryptex.Cryptex.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v23 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - v7;
  if (*(v1 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v9 = *(v1 + 64);
  if (v9 == 2)
  {
    v10 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v10 = v9 & 1;
  }

  Hasher._combine(_:)(v10);
  v11 = *(v1 + 80);
  if (v11)
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(*(v11 + 16));
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = v11 + 40;
      do
      {

        String.hash(into:)();

        v13 += 16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v14 = *(v1 + 96);
  if (v14 == 4)
  {
    Hasher._combine(_:)(0);
    if (*(v1 + 120))
    {
LABEL_15:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_18;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();

    if (*(v1 + 120))
    {
      goto LABEL_15;
    }
  }

  Hasher._combine(_:)(0);
LABEL_18:
  if (*(v1 + 144) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v15 = *(v1 + 136);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v15);
  }

  v16 = type metadata accessor for Config.Cryptex.Cryptex(0);
  sub_1000039E8(&qword_1004ACD08, &unk_1004046A0);
  sub_1002599A0(&qword_1004AB370, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  if (*(v1 + v16[11] + 16))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v17 = v1 + v16[12];
  v18 = sub_1000039E8(&qword_1004ACD10, &qword_1003FA110);
  sub_100013E54(v17 + *(v18 + 44), v8, &qword_1004A6D30, &unk_100376820);
  if ((*(v4 + 48))(v8, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v19 = v23;
    (*(v4 + 32))(v23, v8, v3);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v19, v3);
  }

  v20 = *(v2 + v16[13] + 8);
  if (v20 == 2)
  {
    v21 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v21 = v20 & 1;
  }

  Hasher._combine(_:)(v21);
}

unint64_t sub_10023BFF0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x746E6169726176;
    v6 = 0xD000000000000011;
    if (a1 != 8)
    {
      v6 = 0x7469727764616572;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 1702521203;
    if (a1 != 5)
    {
      v7 = 7107189;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6C62616568636163;
    v2 = 0x6E65646E65706564;
    v3 = 0xD000000000000013;
    if (a1 != 3)
    {
      v3 = 0x363532616873;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD000000000000015;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_10023C18C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10DarwinInit6ConfigV7CryptexVADV10CodingKeysO8rawValueAHSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10023C1BC@<X0>(uint64_t *a1@<X8>)
{
  result = Config.Cryptex.Cryptex.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10023C1F0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = _s10DarwinInit6ConfigV7CryptexVADV10CodingKeysO8rawValueAHSgSS_tcfC_0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10023C234(uint64_t a1)
{
  v2 = sub_10025A7F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023C270(uint64_t a1)
{
  v2 = sub_10025A7F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10023C2AC(void *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];

  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

uint64_t (*Config.Cryptex.Cryptex.AeaDecryptionParams.$archiveId.modify(uint64_t *a1))()
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v1;

  return sub_100269A9C;
}

uint64_t sub_10023C378(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  if (a2)
  {

    *v5 = v2;
    v5[1] = v3;
    v5[2] = v4;
  }

  else
  {

    *v5 = v2;
    v5[1] = v3;
    v5[2] = v4;
  }

  return result;
}

double Config.Cryptex.Cryptex.AeaDecryptionParams.decryptionKey.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;

  return result;
}

uint64_t Config.Cryptex.Cryptex.AeaDecryptionParams.decryptionKey.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

uint64_t sub_10023C468(void *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];

  a2[3] = v3;
  a2[4] = v4;
  a2[5] = v5;
  return result;
}

uint64_t (*Config.Cryptex.Cryptex.AeaDecryptionParams.$decryptionKey.modify(void *a1))(uint64_t *a1, char a2)
{
  v2 = v1[4];
  v3 = v1[5];
  *a1 = v1[3];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v1;

  return sub_10023C534;
}

uint64_t sub_10023C534(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  if (a2)
  {

    v5[3] = v2;
    v5[4] = v3;
    v5[5] = v4;
  }

  else
  {

    v5[3] = v2;
    v5[4] = v3;
    v5[5] = v4;
  }

  return result;
}

uint64_t Config.Cryptex.Cryptex.AeaDecryptionParams.encode(to:)(void *a1)
{
  v4 = sub_1000039E8(&qword_1004AD410, &qword_1003FC418);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  v16 = *v1;
  v9 = *(v1 + 2);
  v8 = *(v1 + 3);
  v10 = *(v1 + 5);
  v14 = *(v1 + 4);
  v15 = v8;
  v13 = v10;
  sub_10000E2A8(a1, a1[3]);
  sub_10025A93C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = v16;
  v18 = v9;
  v19 = 0;
  sub_1001BBD24();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    *&v17 = v15;
    *(&v17 + 1) = v14;
    v18 = v13;
    v19 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Config.Cryptex.Cryptex.AeaDecryptionParams.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v26 = a2;
  v4 = sub_1000039E8(&qword_1004AD420, &qword_1003FC420);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - v6;
  sub_10000E2A8(a1, a1[3]);
  v8 = sub_10025A93C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  v25 = v5;
  v29 = 0;
  v9 = v4;
  v10 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00, &qword_1003FC3A0);
  inited = swift_initStackObject();
  v24 = xmmword_100376A40;
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.Cryptex.Cryptex.AeaDecryptionParams.CodingKeys;
  *(inited + 64) = v8;
  *(inited + 32) = 0;
  v27 = v10;
  sub_10034A3A8(inited);
  v12 = v27;
  sub_1001BBB14();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = v27;
  v23 = v28;
  v29 = 1;
  v13 = KeyedDecodingContainer.codingPath.getter();
  v14 = swift_initStackObject();
  *(v14 + 16) = v24;
  *(v14 + 56) = &type metadata for Config.Cryptex.Cryptex.AeaDecryptionParams.CodingKeys;
  *(v14 + 64) = v8;
  *(v14 + 32) = 1;
  v27 = v13;
  sub_10034A3A8(v14);
  v15 = v27;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v25 + 8))(v7, v9);
  v16 = v27;
  v17 = v28;
  v18 = v12;
  v19 = v26;
  v20 = v22;
  *v26 = v18;
  v19[1] = v20;
  v19[2] = v23;
  v19[3] = v15;
  v19[4] = v16;
  v19[5] = v17;

  sub_100003C3C(a1);
}

uint64_t _s10DarwinInit6ConfigV14AuthenticationV8WestgateV4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int _s10DarwinInit6ConfigV14AuthenticationV8WestgateV9hashValueSivg_0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10023CC14()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Config.Cryptex.Cryptex.AeaDecryptionParams.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6974707972636564;
  }

  else
  {
    return 0x5F65766968637261;
  }
}

uint64_t sub_10023CCC8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6974707972636564;
  }

  else
  {
    v3 = 0x5F65766968637261;
  }

  if (v2)
  {
    v4 = 0xEA00000000006469;
  }

  else
  {
    v4 = 0xEE0079656B5F6E6FLL;
  }

  if (*a2)
  {
    v5 = 0x6974707972636564;
  }

  else
  {
    v5 = 0x5F65766968637261;
  }

  if (*a2)
  {
    v6 = 0xEE0079656B5F6E6FLL;
  }

  else
  {
    v6 = 0xEA00000000006469;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10023CD80()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10023CE14(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10023CE94()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_10023CF30(uint64_t *a1@<X8>)
{
  v2 = 0x5F65766968637261;
  if (*v1)
  {
    v2 = 0x6974707972636564;
  }

  v3 = 0xEA00000000006469;
  if (*v1)
  {
    v3 = 0xEE0079656B5F6E6FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10023CF80()
{
  if (*v0)
  {
    return 0x6974707972636564;
  }

  else
  {
    return 0x5F65766968637261;
  }
}

uint64_t sub_10023CFE8(uint64_t a1)
{
  v2 = sub_10025A93C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023D024(uint64_t a1)
{
  v2 = sub_10025A93C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t (*Config.Root.$preflight.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *v1;
  *(v3 + 32) = *v1;
  v7 = v1[1];
  v6 = v1[2];
  v4[5] = v6;
  *v4 = v5;
  v4[1] = v7;
  v4[2] = v6;

  return sub_100269A94;
}

uint64_t (*Config.Root.$root.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = v1[3];
  v4[4] = v5;
  v6 = v1[4];
  v7 = v1[5];
  v4[5] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;

  return sub_100269AA0;
}

void sub_10023D190(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {

    v6[3] = v3;
    v6[4] = v4;
    v6[5] = v5;
  }

  else
  {

    v6[3] = v3;
    v6[4] = v4;
    v6[5] = v5;
  }

  free(v2);
}

uint64_t (*Config.Root.$postflight.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = v1[6];
  *(v3 + 32) = v5;
  v7 = v1[7];
  v6 = v1[8];
  v4[5] = v6;
  *v4 = v5;
  v4[1] = v7;
  v4[2] = v6;

  return sub_100269AA8;
}

uint64_t _s10DarwinInit6ConfigV14IdentificationV11_usageLabelAA9PathCodedVySSSgGvs_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3[9] = a1;
  v3[10] = a2;
  v3[11] = a3;
  return result;
}

uint64_t (*Config.Root.$waitForVolume.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = v1[9];
  *(v3 + 32) = v5;
  v7 = v1[10];
  v6 = v1[11];
  v4[5] = v6;
  *v4 = v5;
  v4[1] = v7;
  v4[2] = v6;

  return sub_100269AAC;
}

uint64_t Config.Root.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004AD428, &qword_1003FC428);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_10025A990();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *(v3 + 8);
  v11 = 0;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v12 = v3[2];
  v11 = 1;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v12 = *(v3 + 56);
  v11 = 2;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v12 = v3[5];
  v11 = 3;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

double Config.Root.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10025565C(a2, v8);
  if (!v2)
  {
    v5 = v8[3];
    a1[2] = v8[2];
    a1[3] = v5;
    v6 = v8[5];
    a1[4] = v8[4];
    a1[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t sub_10023D644(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return _s10DarwinInit6ConfigV4RootV2eeoiySbAE_AEtFZ_0(v9, v10) & 1;
}

void Config.Root.hash(into:)(uint64_t a1)
{
  if (v1[2])
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  if (!v1[8])
  {
    Hasher._combine(_:)(0);
    if (v1[11])
    {
      goto LABEL_6;
    }

LABEL_10:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v1[11])
  {
    goto LABEL_10;
  }

LABEL_6:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

DarwinInit::Config::Root::CodingKeys_optional __swiftcall Config.Root.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100487D38, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t Config.Root.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x6867696C66657270;
  v2 = 0x67696C6674736F70;
  if (a1 != 2)
  {
    v2 = 0x726F665F74696177;
  }

  if (a1)
  {
    v1 = 1953460082;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10023D8B4(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xE900000000000074;
  v3 = 0x6867696C66657270;
  v4 = *a1;
  v5 = 0x67696C6674736F70;
  v6 = 0xEA00000000007468;
  if (v4 != 2)
  {
    v5 = 0x726F665F74696177;
    v6 = 0xEF656D756C6F765FLL;
  }

  v7 = 0xE400000000000000;
  v8 = 1953460082;
  if (!*a1)
  {
    v8 = 0x6867696C66657270;
    v7 = 0xE900000000000074;
  }

  if (*a1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v4 <= 1)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  v11 = 0x67696C6674736F70;
  v12 = 0xEA00000000007468;
  if (*a2 != 2)
  {
    v11 = 0x726F665F74696177;
    v12 = 0xEF656D756C6F765FLL;
  }

  if (*a2)
  {
    v3 = 1953460082;
    v2 = 0xE400000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v11;
  }

  if (*a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

Swift::Int sub_10023DA08()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10023DAD8(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10023DB94()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

DarwinInit::Config::Root::CodingKeys_optional sub_10023DC60@<W0>(Swift::String *a1@<X0>, DarwinInit::Config::Root::CodingKeys_optional *a2@<X8>)
{
  result.value = Config.Root.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void sub_10023DC90(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000074;
  v3 = 0x6867696C66657270;
  v4 = 0xEA00000000007468;
  v5 = 0x67696C6674736F70;
  if (*v1 != 2)
  {
    v5 = 0x726F665F74696177;
    v4 = 0xEF656D756C6F765FLL;
  }

  if (*v1)
  {
    v3 = 1953460082;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_10023DD1C()
{
  v1 = 0x6867696C66657270;
  v2 = 0x67696C6674736F70;
  if (*v0 != 2)
  {
    v2 = 0x726F665F74696177;
  }

  if (*v0)
  {
    v1 = 1953460082;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

DarwinInit::Config::Root::CodingKeys_optional sub_10023DDA4@<W0>(uint64_t a1@<X0>, DarwinInit::Config::Root::CodingKeys_optional *a2@<X8>)
{
  result.value = Config.Root.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_10023DDDC(uint64_t a1)
{
  v2 = sub_10025A990();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023DE18(uint64_t a1)
{
  v2 = sub_10025A990();

  return CodingKey.debugDescription.getter(a1, v2);
}

void (*Config.Diavlo.$url.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *(*(sub_1000039E8(&qword_1004ACD10, &qword_1003FA110) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  sub_100013E54(v1, v4, &qword_1004ACD10, &qword_1003FA110);
  return sub_10023E020;
}

uint64_t Config.Diavlo.rootCertificate.getter()
{
  v1 = v0 + *(type metadata accessor for Config.Diavlo(0) + 20);
  v2 = *(v1 + 8);
  sub_100031994(v2, *(v1 + 16), v3, v4);
  return v2;
}

uint64_t sub_10023E078(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for Config.Diavlo(0) + 20);
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  sub_100031994(v2, v3, v7, v8);
  result = sub_100031914(v5, v6);
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
  return result;
}

uint64_t Config.Diavlo.rootCertificate.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for Config.Diavlo(0) + 20);
  result = sub_100031914(*(v5 + 8), *(v5 + 16));
  *(v5 + 8) = a1;
  *(v5 + 16) = a2;
  return result;
}

uint64_t Config.Diavlo.$rootCertificate.getter()
{
  v1 = (v0 + *(type metadata accessor for Config.Diavlo(0) + 20));
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];

  sub_100031994(v3, v4, v5, v6);
  return v2;
}

uint64_t sub_10023E1CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Config.Diavlo(0) + 20));
  v4 = v3[1];
  v5 = v3[2];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v5;

  return sub_100031994(v4, v5, v6, v7);
}

uint64_t sub_10023E234(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = (a2 + *(type metadata accessor for Config.Diavlo(0) + 20));
  v6 = v5[1];
  v7 = v5[2];

  sub_100031994(v3, v4, v8, v9);

  result = sub_100031914(v6, v7);
  *v5 = v2;
  v5[1] = v3;
  v5[2] = v4;
  return result;
}

void (*Config.Diavlo.$rootCertificate.modify(uint64_t **a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[3] = v1;
  v5 = *(type metadata accessor for Config.Diavlo(0) + 20);
  *(v4 + 8) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  v8 = v6[2];
  *v4 = *v6;
  v4[1] = v7;
  v4[2] = v8;

  sub_100031994(v7, v8, v9, v10);
  return sub_10023E360;
}

void sub_10023E360(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[2];
  v4 = ((*a1)[3] + *(*a1 + 8));
  v6 = **a1;
  v5 = (*a1)[1];
  v7 = v4[1];
  v8 = v4[2];
  if (a2)
  {

    sub_100031994(v5, v3, v9, v10);

    sub_100031914(v7, v8);
    *v4 = v6;
    v4[1] = v5;
    v4[2] = v3;
    v11 = v2[1];
    v12 = v2[2];

    sub_100031914(v11, v12);
  }

  else
  {

    sub_100031914(v7, v8);
    *v4 = v6;
    v4[1] = v5;
    v4[2] = v3;
  }

  free(v2);
}

double Config.Diavlo.init()@<D0>(void *a1@<X8>)
{
  v2 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = sub_1000039E8(&qword_1004ACD10, &qword_1003FA110);
  sub_100013E54(v4, a1 + *(v6 + 44), &qword_1004A6D30, &unk_100376820);
  sub_100013F2C(v4, &qword_1004A6D30, &unk_100376820);
  *a1 = _swiftEmptyArrayStorage;
  v7 = a1 + *(type metadata accessor for Config.Diavlo(0) + 20);
  *v7 = _swiftEmptyArrayStorage;
  result = 0.0;
  *(v7 + 8) = xmmword_100376D40;
  return result;
}

BOOL Config.Diavlo.isEmpty.getter()
{
  v1 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = sub_1000039E8(&qword_1004ACD10, &qword_1003FA110);
  sub_100013E54(v0 + *(v4 + 44), v3, &qword_1004A6D30, &unk_100376820);
  v5 = type metadata accessor for URL();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5);
  sub_100013F2C(v3, &qword_1004A6D30, &unk_100376820);
  return v6 == 1 && *(v0 + *(type metadata accessor for Config.Diavlo(0) + 20) + 16) >> 60 == 15;
}

uint64_t Config.Diavlo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004AD438, &qword_1003FC430);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_10000E2A8(a1, a1[3]);
  sub_10025A9E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  sub_1000039E8(&qword_1004ACD10, &qword_1003FA110);
  type metadata accessor for URL();
  sub_1002599A0(&qword_1004A9058, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for Config.Diavlo(0) + 20));
    v12 = *v9;
    v13 = *(v9 + 1);
    v11[7] = 1;
    sub_10025AA38();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void Config.Diavlo.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - v8;
  v10 = sub_1000039E8(&qword_1004ACD10, &qword_1003FA110);
  sub_100013E54(v2 + *(v10 + 44), v9, &qword_1004A6D30, &unk_100376820);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    Hasher._combine(_:)(1u);
    sub_1002599A0(&qword_1004AB370, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v6, v3);
  }

  if (*(v2 + *(type metadata accessor for Config.Diavlo(0) + 20) + 16) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }
}

Swift::Int sub_10023F0B8(void (*a1)(void *))
{
  Hasher.init(_seed:)();
  a1(v3);
  return Hasher._finalize()();
}

Swift::Int sub_10023F118(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int sub_10023F17C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t Config.Diavlo.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_10023F20C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 7107189;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0x800000010043D4A0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 7107189;
  }

  if (*a2)
  {
    v6 = 0x800000010043D4A0;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10023F2B0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10023F330(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10023F39C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_10023F424(unint64_t *a1@<X8>)
{
  v2 = 0x800000010043D4A0;
  v3 = 7107189;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE300000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_10023F460()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_10023F4B4(uint64_t a1)
{
  v2 = sub_10025A9E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023F4F0(uint64_t a1)
{
  v2 = sub_10025A9E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t (*Config.FeatureFlag.$domain.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *v1;
  *(v3 + 32) = *v1;
  v7 = v1[1];
  v6 = v1[2];
  v4[5] = v6;
  *v4 = v5;
  v4[1] = v7;
  v4[2] = v6;

  return sub_10023F5C4;
}

uint64_t sub_10023F5C8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];

  a2[3] = v3;
  a2[4] = v4;
  a2[5] = v5;
  return result;
}

uint64_t (*Config.FeatureFlag.$feature.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = v1[3];
  *(v3 + 32) = v5;
  v7 = v1[4];
  v6 = v1[5];
  v4[5] = v6;
  *v4 = v5;
  v4[1] = v7;
  v4[2] = v6;

  return sub_10023F6C4;
}

uint64_t (*Config.FeatureFlag.$enable.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 48);
  *(a1 + 16) = v1;
  *(a1 + 24) = v3;
  v4 = *(v1 + 56);
  *a1 = v3;
  *(a1 + 8) = v4;

  return sub_10023F75C;
}

uint64_t sub_10023F75C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  if (a2)
  {

    *(v4 + 48) = v2;
    *(v4 + 56) = v3;
  }

  else
  {

    *(v4 + 48) = v2;
    *(v4 + 56) = v3;
  }

  return result;
}

uint64_t Config.FeatureFlag.$attributeName.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_10023F824(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];

  a2[8] = v3;
  a2[9] = v4;
  a2[10] = v5;
  return result;
}

void (*Config.FeatureFlag.$attributeName.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = v1[8];
  *(v3 + 32) = v5;
  v7 = v1[9];
  v6 = v1[10];
  v4[5] = v6;
  *v4 = v5;
  v4[1] = v7;
  v4[2] = v6;

  return sub_10023F920;
}

void sub_10023F920(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {

    v6[8] = v3;
    v6[9] = v4;
    v6[10] = v5;
  }

  else
  {

    v6[8] = v3;
    v6[9] = v4;
    v6[10] = v5;
  }

  free(v2);
}

uint64_t Config.FeatureFlag.attributeValue.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t Config.FeatureFlag.attributeValue.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t Config.FeatureFlag.$attributeValue.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t sub_10023FA84(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];

  a2[11] = v3;
  a2[12] = v4;
  a2[13] = v5;
  return result;
}

void (*Config.FeatureFlag.$attributeValue.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = v1[11];
  *(v3 + 32) = v5;
  v7 = v1[12];
  v6 = v1[13];
  v4[5] = v6;
  *v4 = v5;
  v4[1] = v7;
  v4[2] = v6;

  return sub_10023FB80;
}

void sub_10023FB80(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {

    v6[11] = v3;
    v6[12] = v4;
    v6[13] = v5;
  }

  else
  {

    v6[11] = v3;
    v6[12] = v4;
    v6[13] = v5;
  }

  free(v2);
}

uint64_t (*Config.FeatureFlag.$featurePhase.modify(uint64_t a1))()
{
  v3 = *(v1 + 112);
  *(a1 + 16) = v1;
  *(a1 + 24) = v3;
  v4 = *(v1 + 120);
  *a1 = v3;
  *(a1 + 8) = v4;

  return sub_10023FCC8;
}

void Config.FeatureFlag.init()(uint64_t a1@<X8>)
{
  *a1 = _swiftEmptyArrayStorage;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = _swiftEmptyArrayStorage;
  *(a1 + 56) = 2;
  *(a1 + 64) = _swiftEmptyArrayStorage;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = _swiftEmptyArrayStorage;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = _swiftEmptyArrayStorage;
  *(a1 + 120) = 4;
}

uint64_t Config.FeatureFlag.init(domain:feature:enable:attributeName:attributeValue:featurePhase:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  *a9 = _swiftEmptyArrayStorage;
  *(a9 + 8) = result;
  *(a9 + 16) = a2;
  *(a9 + 24) = _swiftEmptyArrayStorage;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = _swiftEmptyArrayStorage;
  *(a9 + 56) = a5;
  *(a9 + 64) = _swiftEmptyArrayStorage;
  *(a9 + 72) = a6;
  *(a9 + 80) = a7;
  *(a9 + 88) = _swiftEmptyArrayStorage;
  *(a9 + 96) = a8;
  *(a9 + 104) = a10;
  *(a9 + 112) = _swiftEmptyArrayStorage;
  *(a9 + 120) = a11;
  return result;
}

uint64_t Config.FeatureFlag.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004AD460, &qword_1003FC440);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_10025AAE0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *(v3 + 8);
  v11 = 0;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + 32);
    v11 = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = *(v3 + 56);
    v11 = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = *(v3 + 72);
    v11 = 3;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = *(v3 + 96);
    v11 = 4;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = *(v3 + 120);
    v11 = 5;
    sub_10025AB34();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1002400B8(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v12[4] = a1[4];
  v12[5] = v2;
  v13[0] = a1[6];
  *(v13 + 9) = *(a1 + 105);
  v3 = a1[1];
  v12[0] = *a1;
  v12[1] = v3;
  v4 = a1[3];
  v12[2] = a1[2];
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  *&v15[9] = *(a2 + 105);
  v14[5] = v9;
  *v15 = v10;
  v14[4] = v8;
  return _s10DarwinInit6ConfigV11FeatureFlagV2eeoiySbAE_AEtFZ_0(v12, v14) & 1;
}

void Config.FeatureFlag.hash(into:)(uint64_t a1)
{
  if (*(v1 + 16))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (*(v1 + 40))
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_6;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(v1 + 40))
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
LABEL_6:
  v2 = *(v1 + 56);
  if (v2 == 2)
  {
    v3 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v3 = v2 & 1;
  }

  Hasher._combine(_:)(v3);
  if (*(v1 + 80))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (*(v1 + 104))
    {
LABEL_11:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_14;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(v1 + 104))
    {
      goto LABEL_11;
    }
  }

  Hasher._combine(_:)(0);
LABEL_14:
  v4 = *(v1 + 120);
  if (v4 == 4)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }
}

Swift::Int Config.FeatureFlag.hashValue.getter()
{
  Hasher.init(_seed:)();
  Config.FeatureFlag.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100240374()
{
  Hasher.init(_seed:)();
  Config.FeatureFlag.hash(into:)(v1);
  return Hasher._finalize()();
}

DarwinInit::Config::FeatureFlag::CodingKeys_optional __swiftcall Config.FeatureFlag.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100487EA8, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

DarwinInit::Config::FeatureFlag::CodingKeys_optional sub_10024040C@<W0>(Swift::String *a1@<X0>, DarwinInit::Config::FeatureFlag::CodingKeys_optional *a2@<X8>)
{
  result.value = Config.FeatureFlag.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

DarwinInit::Config::FeatureFlag::CodingKeys_optional sub_10024043C@<W0>(uint64_t a1@<X0>, DarwinInit::Config::FeatureFlag::CodingKeys_optional *a2@<X8>)
{
  result.value = Config.FeatureFlag.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_100240474(uint64_t a1)
{
  v2 = sub_10025AAE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002404B0(uint64_t a1)
{
  v2 = sub_10025AAE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t Config.FeatureFlag.FeaturePhase.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x706D6F4365646F43;
  v2 = 0x5277656976657250;
  if (a1 != 2)
  {
    v2 = 0x4365727574616546;
  }

  if (!a1)
  {
    v1 = 0xD000000000000010;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100240594(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEC0000006574656CLL;
  v3 = 0x706D6F4365646F43;
  v4 = *a1;
  v5 = 0xEC00000079646165;
  v6 = 0x4365727574616546;
  if (v4 == 2)
  {
    v6 = 0x5277656976657250;
  }

  else
  {
    v5 = 0xEF6574656C706D6FLL;
  }

  v7 = 0xD000000000000010;
  if (*a1)
  {
    v7 = 0x706D6F4365646F43;
    v8 = 0xEC0000006574656CLL;
  }

  else
  {
    v8 = 0x800000010043D000;
  }

  if (*a1 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  if (v4 <= 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  v11 = 0x5277656976657250;
  v12 = 0xEC00000079646165;
  if (*a2 != 2)
  {
    v11 = 0x4365727574616546;
    v12 = 0xEF6574656C706D6FLL;
  }

  if (!*a2)
  {
    v3 = 0xD000000000000010;
    v2 = 0x800000010043D000;
  }

  if (*a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v11;
  }

  if (*a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

Swift::Int sub_1002406FC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002407E0(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1002408B0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100240990@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10DarwinInit6ConfigV11FeatureFlagV0D5PhaseO8rawValueAGSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1002409C0(unint64_t *a1@<X8>)
{
  v2 = 0xEC0000006574656CLL;
  v3 = 0x706D6F4365646F43;
  v4 = 0xEC00000079646165;
  v5 = 0x5277656976657250;
  if (*v1 != 2)
  {
    v5 = 0x4365727574616546;
    v4 = 0xEF6574656C706D6FLL;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x800000010043D000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t (*Config.Finish.$message.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *v1;
  *(v3 + 32) = *v1;
  v7 = v1[1];
  v6 = v1[2];
  v4[5] = v6;
  *v4 = v5;
  v4[1] = v7;
  v4[2] = v6;

  return sub_100269A94;
}

uint64_t (*Config.Finish.$onFailure.modify(uint64_t a1))()
{
  v3 = *(v1 + 24);
  *(a1 + 16) = v1;
  *(a1 + 24) = v3;
  v4 = *(v1 + 32);
  *a1 = v3;
  *(a1 + 8) = v4;

  return sub_100240C10;
}

uint64_t sub_100240C14(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  if (a2)
  {

    *(v4 + 24) = v2;
    *(v4 + 32) = v3;
  }

  else
  {

    *(v4 + 24) = v2;
    *(v4 + 32) = v3;
  }

  return result;
}

uint64_t (*Config.Finish.$reboot.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 40);
  *(a1 + 16) = v1;
  *(a1 + 24) = v3;
  v4 = *(v1 + 48);
  *a1 = v3;
  *(a1 + 8) = v4;

  return sub_100240D20;
}

uint64_t sub_100240D20(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  if (a2)
  {

    *(v4 + 40) = v2;
    *(v4 + 48) = v3;
  }

  else
  {

    *(v4 + 40) = v2;
    *(v4 + 48) = v3;
  }

  return result;
}

uint64_t Config.Finish.scripts.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t Config.Finish.$scripts.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_100240E0C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];

  *(a2 + 56) = v3;
  *(a2 + 64) = v4;
  return result;
}

uint64_t Config.Finish.$scripts.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

void (*Config.Finish.$scripts.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 56);
  *(v3 + 24) = v5;
  v6 = *(v1 + 64);
  v4[4] = v6;
  *v4 = v5;
  v4[1] = v6;

  return sub_100240F34;
}

void sub_100240F34(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  if (a2)
  {

    *(v5 + 56) = v4;
    *(v5 + 64) = v3;
  }

  else
  {

    *(v5 + 56) = v4;
    *(v5 + 64) = v3;
  }

  free(v2);
}

uint64_t (*Config.Finish.$userspaceReboot.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 72);
  *(a1 + 16) = v1;
  *(a1 + 24) = v3;
  v4 = *(v1 + 80);
  *a1 = v3;
  *(a1 + 8) = v4;

  return sub_100241060;
}

uint64_t sub_100241060(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  if (a2)
  {

    *(v4 + 72) = v2;
    *(v4 + 80) = v3;
  }

  else
  {

    *(v4 + 72) = v2;
    *(v4 + 80) = v3;
  }

  return result;
}

void Config.Finish.init()(uint64_t a1@<X8>)
{
  *a1 = _swiftEmptyArrayStorage;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  *(a1 + 32) = 3;
  *(a1 + 40) = _swiftEmptyArrayStorage;
  *(a1 + 48) = 2;
  *(a1 + 56) = _swiftEmptyArrayStorage;
  *(a1 + 64) = 0;
  *(a1 + 72) = _swiftEmptyArrayStorage;
  *(a1 + 80) = 5;
}

uint64_t Config.Finish.init(message:onFailure:reboot:scripts:userspaceReboot:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = _swiftEmptyArrayStorage;
  *(a7 + 8) = result;
  *(a7 + 16) = a2;
  *(a7 + 24) = _swiftEmptyArrayStorage;
  *(a7 + 32) = a3;
  *(a7 + 40) = _swiftEmptyArrayStorage;
  *(a7 + 48) = a4;
  *(a7 + 56) = _swiftEmptyArrayStorage;
  *(a7 + 64) = a5;
  *(a7 + 72) = _swiftEmptyArrayStorage;
  *(a7 + 80) = a6;
  return result;
}

uint64_t Config.Finish.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004AD478, &qword_1003FC448);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_10025AB88();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *(v3 + 8);
  v11 = 0;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = *(v3 + 32);
    v11 = 1;
    sub_10019C044();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = *(v3 + 48);
    v11 = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v12 = *(v3 + 64);
    v11 = 3;
    sub_1000039E8(&qword_1004A6B48, &unk_100376810);
    sub_1000BD1B8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = *(v3 + 80);
    v11 = 4;
    sub_1001D80B8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100241464(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return _s10DarwinInit6ConfigV6FinishV2eeoiySbAE_AEtFZ_0(v7, v9) & 1;
}

void Config.Finish.hash(into:)(uint64_t a1)
{
  if (*(v1 + 16))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v1 + 32) == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  v2 = *(v1 + 48);
  if (v2 == 2)
  {
    v3 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v3 = v2 & 1;
  }

  Hasher._combine(_:)(v3);
  v4 = *(v1 + 64);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    v5 = *(v4 + 16);
    Hasher._combine(_:)(v5);
    if (v5)
    {
      v6 = v4 + 40;
      do
      {

        String.hash(into:)();

        v6 += 16;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v7 = *(v1 + 80);
  if (v7 == 5)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }
}

Swift::Int Config.Finish.hashValue.getter()
{
  Hasher.init(_seed:)();
  Config.Finish.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10024173C()
{
  Hasher.init(_seed:)();
  Config.Finish.hash(into:)(v1);
  return Hasher._finalize()();
}

DarwinInit::Config::Finish::CodingKeys_optional __swiftcall Config.Finish.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100487FD0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t Config.Finish.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x6567617373656DLL;
  v2 = 0x746F6F626572;
  v3 = 0x73747069726373;
  if (a1 != 3)
  {
    v3 = 0xD000000000000010;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x756C6961665F6E6FLL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100241874(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6567617373656DLL;
  v3 = *a1;
  v4 = *a2;
  if (v3 <= 1)
  {
    v5 = 0xE700000000000000;
    v6 = 0xEA00000000006572;
    v8 = v3 == 0;
    if (*a1)
    {
      v9 = 0x756C6961665F6E6FLL;
    }

    else
    {
      v9 = 0x6567617373656DLL;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0xE700000000000000;
    v7 = 0x73747069726373;
    if (v3 != 3)
    {
      v7 = 0xD000000000000010;
      v6 = 0x800000010043D8D0;
    }

    v8 = v3 == 2;
    if (v3 == 2)
    {
      v9 = 0x746F6F626572;
    }

    else
    {
      v9 = v7;
    }
  }

  if (v8)
  {
    v10 = v5;
  }

  else
  {
    v10 = v6;
  }

  v11 = 0xE700000000000000;
  v12 = 0x746F6F626572;
  v13 = 0x73747069726373;
  v14 = 0x800000010043D8D0;
  if (v4 == 3)
  {
    v14 = 0xE700000000000000;
  }

  else
  {
    v13 = 0xD000000000000010;
  }

  if (v4 == 2)
  {
    v14 = 0xE600000000000000;
  }

  else
  {
    v12 = v13;
  }

  if (*a2)
  {
    v2 = 0x756C6961665F6E6FLL;
    v11 = 0xEA00000000006572;
  }

  if (*a2 <= 1u)
  {
    v15 = v2;
  }

  else
  {
    v15 = v12;
  }

  if (*a2 <= 1u)
  {
    v16 = v11;
  }

  else
  {
    v16 = v14;
  }

  if (v9 == v15 && v10 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v17 & 1;
}

Swift::Int sub_1002419F4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100241ADC(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100241BB0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

DarwinInit::Config::Finish::CodingKeys_optional sub_100241C94@<W0>(Swift::String *a1@<X0>, DarwinInit::Config::Finish::CodingKeys_optional *a2@<X8>)
{
  result.value = Config.Finish.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void sub_100241CC4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6567617373656DLL;
  v5 = 0xE600000000000000;
  v6 = 0x746F6F626572;
  v7 = 0xE700000000000000;
  v8 = 0x73747069726373;
  if (v2 != 3)
  {
    v8 = 0xD000000000000010;
    v7 = 0x800000010043D8D0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x756C6961665F6E6FLL;
    v3 = 0xEA00000000006572;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_100241D68()
{
  v1 = *v0;
  v2 = 0x6567617373656DLL;
  v3 = 0x746F6F626572;
  v4 = 0x73747069726373;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x756C6961665F6E6FLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

DarwinInit::Config::Finish::CodingKeys_optional sub_100241E08@<W0>(uint64_t a1@<X0>, DarwinInit::Config::Finish::CodingKeys_optional *a2@<X8>)
{
  result.value = Config.Finish.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_100241E40(uint64_t a1)
{
  v2 = sub_10025AB88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100241E7C(uint64_t a1)
{
  v2 = sub_10025AB88();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t (*Config.Identification.$computerName.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *v1;
  *(v3 + 32) = *v1;
  v7 = v1[1];
  v6 = v1[2];
  v4[5] = v6;
  *v4 = v5;
  v4[1] = v7;
  v4[2] = v6;

  return sub_100269A94;
}

uint64_t (*Config.Identification.$hostname.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = v1[3];
  *(v3 + 32) = v5;
  v7 = v1[4];
  v6 = v1[5];
  v4[5] = v6;
  *v4 = v5;
  v4[1] = v7;
  v4[2] = v6;

  return sub_100269AA4;
}

uint64_t sub_100241FF0()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_100242038(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];

  a2[6] = v3;
  a2[7] = v4;
  a2[8] = v5;
  return result;
}

uint64_t (*Config.Identification.$localHostname.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = v1[6];
  *(v3 + 32) = v5;
  v7 = v1[7];
  v6 = v1[8];
  v4[5] = v6;
  *v4 = v5;
  v4[1] = v7;
  v4[2] = v6;

  return sub_100242134;
}

void sub_100242138(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {

    v6[6] = v3;
    v6[7] = v4;
    v6[8] = v5;
  }

  else
  {

    v6[6] = v3;
    v6[7] = v4;
    v6[8] = v5;
  }

  free(v2);
}

uint64_t sub_1002421F0()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_100242238(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];

  a2[9] = v3;
  a2[10] = v4;
  a2[11] = v5;
  return result;
}

uint64_t (*Config.Identification.$usageLabel.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = v1[9];
  *(v3 + 32) = v5;
  v7 = v1[10];
  v6 = v1[11];
  v4[5] = v6;
  *v4 = v5;
  v4[1] = v7;
  v4[2] = v6;

  return sub_100242334;
}

void sub_100242338(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {

    v6[9] = v3;
    v6[10] = v4;
    v6[11] = v5;
  }

  else
  {

    v6[9] = v3;
    v6[10] = v4;
    v6[11] = v5;
  }

  free(v2);
}

void Config.Identification.init()(void *a1@<X8>)
{
  *a1 = _swiftEmptyArrayStorage;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = _swiftEmptyArrayStorage;
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = _swiftEmptyArrayStorage;
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = _swiftEmptyArrayStorage;
  a1[10] = 0;
  a1[11] = 0;
}

uint64_t Config.Identification.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004AD488, &qword_1003FC450);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_10025ABDC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *(v3 + 8);
  v11 = 0;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v12 = v3[2];
  v11 = 1;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v12 = *(v3 + 56);
  v11 = 2;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v12 = v3[5];
  v11 = 3;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

double Config.Identification.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100254958(a2, v8);
  if (!v2)
  {
    v5 = v8[3];
    a1[2] = v8[2];
    a1[3] = v5;
    v6 = v8[5];
    a1[4] = v8[4];
    a1[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t sub_100242698(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return _s10DarwinInit6ConfigV14IdentificationV2eeoiySbAE_AEtFZ_0(v9, v10) & 1;
}

void Config.Identification.hash(into:)(uint64_t a1)
{
  if (v1[2])
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v1[5])
    {
      goto LABEL_3;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v1[5])
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (v1[8])
      {
        goto LABEL_4;
      }

LABEL_10:
      Hasher._combine(_:)(0);
      if (v1[11])
      {
        goto LABEL_5;
      }

LABEL_11:
      Hasher._combine(_:)(0);
      return;
    }
  }

  Hasher._combine(_:)(0);
  if (!v1[8])
  {
    goto LABEL_10;
  }

LABEL_4:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v1[11])
  {
    goto LABEL_11;
  }

LABEL_5:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int sub_10024281C(void (*a1)(void *))
{
  Hasher.init(_seed:)();
  a1(v3);
  return Hasher._finalize()();
}

Swift::Int sub_10024287C(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int sub_1002428E0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

DarwinInit::Config::Identification::CodingKeys_optional __swiftcall Config.Identification.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1004880B8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t Config.Identification.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x72657475706D6F63;
  v2 = 0x6F685F6C61636F6CLL;
  if (a1 != 2)
  {
    v2 = 0x616C5F6567617375;
  }

  if (a1)
  {
    v1 = 0x656D616E74736F68;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100242A1C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xED0000656D616E5FLL;
  v3 = 0x72657475706D6F63;
  v4 = *a1;
  v5 = 0x6F685F6C61636F6CLL;
  v6 = 0xEE00656D616E7473;
  if (v4 != 2)
  {
    v5 = 0x616C5F6567617375;
    v6 = 0xEB000000006C6562;
  }

  v7 = 0xE800000000000000;
  v8 = 0x656D616E74736F68;
  if (!*a1)
  {
    v8 = 0x72657475706D6F63;
    v7 = 0xED0000656D616E5FLL;
  }

  if (*a1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v4 <= 1)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  v11 = 0x6F685F6C61636F6CLL;
  v12 = 0xEE00656D616E7473;
  if (*a2 != 2)
  {
    v11 = 0x616C5F6567617375;
    v12 = 0xEB000000006C6562;
  }

  if (*a2)
  {
    v3 = 0x656D616E74736F68;
    v2 = 0xE800000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v11;
  }

  if (*a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

Swift::Int sub_100242B90()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100242C74(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100242D44()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

DarwinInit::Config::Identification::CodingKeys_optional sub_100242E24@<W0>(Swift::String *a1@<X0>, DarwinInit::Config::Identification::CodingKeys_optional *a2@<X8>)
{
  result.value = Config.Identification.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void sub_100242E54(uint64_t *a1@<X8>)
{
  v2 = 0xED0000656D616E5FLL;
  v3 = 0x72657475706D6F63;
  v4 = 0xEE00656D616E7473;
  v5 = 0x6F685F6C61636F6CLL;
  if (*v1 != 2)
  {
    v5 = 0x616C5F6567617375;
    v4 = 0xEB000000006C6562;
  }

  if (*v1)
  {
    v3 = 0x656D616E74736F68;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_100242EF4()
{
  v1 = 0x72657475706D6F63;
  v2 = 0x6F685F6C61636F6CLL;
  if (*v0 != 2)
  {
    v2 = 0x616C5F6567617375;
  }

  if (*v0)
  {
    v1 = 0x656D616E74736F68;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

DarwinInit::Config::Identification::CodingKeys_optional sub_100242F90@<W0>(uint64_t a1@<X0>, DarwinInit::Config::Identification::CodingKeys_optional *a2@<X8>)
{
  result.value = Config.Identification.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_100242FC8(uint64_t a1)
{
  v2 = sub_10025ABDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100243004(uint64_t a1)
{
  v2 = sub_10025ABDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t (*Config.Tailspin.ClassConfig.SubclassConfig.$subclassEnabled.modify(uint64_t a1))()
{
  v3 = *(v1 + 16);
  *(a1 + 16) = v1;
  *(a1 + 24) = v3;
  v4 = *(v1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;

  return sub_1002430CC;
}

Swift::Int Config.Log.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a2;
  Hasher.init(_seed:)();
  sub_100252B3C(v7, v5, v4);
  return Hasher._finalize()();
}

Swift::Int sub_10024321C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  sub_100252B3C(v4, v2, v1);
  return Hasher._finalize()();
}

Swift::Int sub_100243278()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  sub_100252B3C(v4, v2, v1);
  return Hasher._finalize()();
}

uint64_t Config.Log.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x74736973726570;
  }

  else
  {
    return 0x5F79636176697270;
  }
}

uint64_t sub_100243320(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x74736973726570;
  }

  else
  {
    v3 = 0x5F79636176697270;
  }

  if (v2)
  {
    v4 = 0xED00006C6576656CLL;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x74736973726570;
  }

  else
  {
    v5 = 0x5F79636176697270;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xED00006C6576656CLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1002433D4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100243464(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1002434E0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100243578(uint64_t *a1@<X8>)
{
  v2 = 0x5F79636176697270;
  if (*v1)
  {
    v2 = 0x74736973726570;
  }

  v3 = 0xED00006C6576656CLL;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1002435C4()
{
  if (*v0)
  {
    return 0x74736973726570;
  }

  else
  {
    return 0x5F79636176697270;
  }
}

uint64_t sub_100243628(uint64_t a1)
{
  v2 = sub_100268D8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100243664(uint64_t a1)
{
  v2 = sub_100268D8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Config.Log.PrivacyLevel.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x63696C627550;
  }

  if (a1 == 1)
  {
    return 0x65746176697250;
  }

  return 0x76697469736E6553;
}

uint64_t sub_100243704(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x65746176697250;
  if (v2 != 1)
  {
    v4 = 0x76697469736E6553;
    v3 = 0xE900000000000065;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x63696C627550;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x65746176697250;
  if (*a2 != 1)
  {
    v8 = 0x76697469736E6553;
    v7 = 0xE900000000000065;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x63696C627550;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10024380C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002438B0(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100243940()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002439E0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10DarwinInit6ConfigV3LogV12PrivacyLevelO8rawValueAGSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100243A10(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x65746176697250;
  if (v2 != 1)
  {
    v5 = 0x76697469736E6553;
    v4 = 0xE900000000000065;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x63696C627550;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t (*Config.Meta.$applyTimeout.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *v1;
  *(v3 + 32) = *v1;
  v7 = v1[1];
  v6 = v1[2];
  v4[5] = v6;
  *v4 = v5;
  v4[1] = v7;
  v4[2] = v6;

  return sub_100269A94;
}

void sub_100243BC8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {

    *v6 = v3;
    v6[1] = v4;
    v6[2] = v5;
  }

  else
  {

    *v6 = v3;
    v6[1] = v4;
    v6[2] = v5;
  }

  free(v2);
}

uint64_t (*Config.Meta.$name.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = v1[3];
  *(v3 + 32) = v5;
  v7 = v1[4];
  v6 = v1[5];
  v4[5] = v6;
  *v4 = v5;
  v4[1] = v7;
  v4[2] = v6;

  return sub_100269AA4;
}

void sub_100243D14(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {

    v6[3] = v3;
    v6[4] = v4;
    v6[5] = v5;
  }

  else
  {

    v6[3] = v3;
    v6[4] = v4;
    v6[5] = v5;
  }

  free(v2);
}

void Config.Meta.init()(void *a1@<X8>)
{
  *a1 = _swiftEmptyArrayStorage;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = _swiftEmptyArrayStorage;
  a1[4] = 0;
  a1[5] = 0;
}

double Config.Meta.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100255444(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

void Config.Meta.hash(into:)(uint64_t a1)
{
  if (!*(v1 + 16))
  {
    Hasher._combine(_:)(0);
    if (*(v1 + 40))
    {
      goto LABEL_3;
    }

LABEL_7:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!*(v1 + 40))
  {
    goto LABEL_7;
  }

LABEL_3:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

void sub_100243F7C(uint64_t a1)
{
  v2 = *(v1 + 40);
  if (!*(v1 + 16))
  {
    Hasher._combine(_:)(0);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_7:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_3:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int sub_100244034()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  Hasher.init(_seed:)();
  if (!v1)
  {
    Hasher._combine(_:)(0);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Config.Meta.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 1701667182;
  }

  else
  {
    return 0x69745F796C707061;
  }
}

uint64_t sub_100244130(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1701667182;
  }

  else
  {
    v3 = 0x69745F796C707061;
  }

  if (v2)
  {
    v4 = 0xED000074756F656DLL;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1701667182;
  }

  else
  {
    v5 = 0x69745F796C707061;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xED000074756F656DLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1002441DC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100244264(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1002442D8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100244368(uint64_t *a1@<X8>)
{
  v2 = 1701667182;
  if (!*v1)
  {
    v2 = 0x69745F796C707061;
  }

  v3 = 0xED000074756F656DLL;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1002443AC()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 0x69745F796C707061;
  }
}

uint64_t sub_100244408(uint64_t a1)
{
  v2 = sub_100268D38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100244444(uint64_t a1)
{
  v2 = sub_100268D38();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Config.Network.firewall.getter()
{
  v1 = *(v0 + 8);
  sub_10025B050(v1, *(v0 + 16));
  return v1;
}

uint64_t Config.Network.$firewall.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];

  sub_10025B050(v2, v3);
  return v1;
}

uint64_t sub_100244500(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];

  sub_10025B050(v4, v5);

  result = sub_100219A48(a2[1]);
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

uint64_t Config.Network.$firewall.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  result = sub_100219A48(v3[1]);
  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

void (*Config.Network.$firewall.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *v1;
  v4[4] = *v1;
  v6 = v1[1];
  v4[5] = v6;
  v7 = v1[2];
  v4[6] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;

  sub_10025B050(v6, v7);
  return sub_100244650;
}

void sub_100244650(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[5];
  v6 = (*a1)[3];
  v7 = (*a1)[2];
  if (a2)
  {

    sub_10025B050(v3, v7);

    sub_100219A48(v5);
    *v6 = v4;
    v6[1] = v3;
    v6[2] = v7;
    v8 = v2[1];

    sub_100219A48(v8);
  }

  else
  {

    sub_100219A48(v5);
    *v6 = v4;
    v6[1] = v3;
    v6[2] = v7;
  }

  free(v2);
}

uint64_t Config.Network.$interfaces.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_100244750(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];

  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  return result;
}

uint64_t Config.Network.$interfaces.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void (*Config.Network.$interfaces.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 24);
  *(v3 + 24) = v5;
  v6 = *(v1 + 32);
  v4[4] = v6;
  *v4 = v5;
  v4[1] = v6;

  return sub_100244878;
}

void sub_100244878(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  if (a2)
  {

    *(v5 + 24) = v4;
    *(v5 + 32) = v3;
  }

  else
  {

    *(v5 + 24) = v4;
    *(v5 + 32) = v3;
  }

  free(v2);
}

uint64_t (*Config.Network.$uplinkMtu.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(v1 + 40);
  *(v4 + 32) = v5;
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;

  return sub_100269AB0;
}

void sub_1002449A8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = *(*a1 + 16);
  v6 = (*a1)[3];
  if (a2)
  {

    *(v6 + 40) = v3;
    *(v6 + 48) = v4;
    *(v6 + 56) = v5;
  }

  else
  {

    *(v6 + 40) = v3;
    *(v6 + 48) = v4;
    *(v6 + 56) = v5;
  }

  free(v2);
}

uint64_t Config.Network.init(firewall:interfaces:uplinkMtu:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = _swiftEmptyArrayStorage;
  *(a6 + 8) = result;
  *(a6 + 16) = a2;
  *(a6 + 24) = _swiftEmptyArrayStorage;
  *(a6 + 32) = a3;
  *(a6 + 40) = _swiftEmptyArrayStorage;
  *(a6 + 48) = a4;
  *(a6 + 56) = a5 & 1;
  return result;
}

uint64_t Config.Network.isEmpty.getter()
{
  if (*(v0 + 8))
  {
    return 0;
  }

  if (*(v0 + 32))
  {
    return 0;
  }

  return *(v0 + 56) & 1;
}

uint64_t Config.Network.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004AD498, &qword_1003FC458);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_10025B090();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *(v3 + 8);
  v11 = 0;
  sub_10025B0E4();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    *&v12 = *(v3 + 32);
    v11 = 1;
    sub_1000039E8(&qword_1004ACCF0, &qword_1003FC360);
    sub_10025980C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v12 = *(v3 + 48);
    BYTE8(v12) = *(v3 + 56);
    v11 = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

double Config.Network.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100258488(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 9);
    *(a1 + 41) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_100244CE4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return _s10DarwinInit6ConfigV7NetworkV2eeoiySbAE_AEtFZ_0(v5, v7) & 1;
}

void Config.Network.hash(into:)(uint64_t a1)
{
  v2 = v1;
  if (!*(v2 + 8))
  {
    Hasher._combine(_:)(0);
    v7 = *(v2 + 32);
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_9:
    Hasher._combine(_:)(0);
    if (*(v2 + 56))
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v4 = *(v2 + 16);
  Hasher._combine(_:)(1u);
  v5 = *(v4 + 16);
  Hasher._combine(_:)(v5);
  if (v5)
  {
    v6 = v4 + 40;
    do
    {

      String.hash(into:)();

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  v7 = *(v2 + 32);
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_6:
  Hasher._combine(_:)(1u);
  sub_1001D4AA0(a1, v7);
  if (*(v2 + 56))
  {
LABEL_7:
    Hasher._combine(_:)(0);
    return;
  }

LABEL_10:
  v8 = *(v2 + 48);
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v8);
}

Swift::Int Config.Network.hashValue.getter()
{
  Hasher.init(_seed:)();
  Config.Network.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100244E74()
{
  Hasher.init(_seed:)();
  Config.Network.hash(into:)(v1);
  return Hasher._finalize()();
}

DarwinInit::Config::Network::CodingKeys_optional __swiftcall Config.Network.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100488318, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t Config.Network.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6C6C617765726966;
  }

  if (a1 == 1)
  {
    return 0x6361667265746E69;
  }

  return 0x6D5F6B6E696C7075;
}

uint64_t sub_100244F68(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEA00000000007365;
  v3 = *a1;
  v4 = 0x6361667265746E69;
  if (v3 == 1)
  {
    v5 = 0xEA00000000007365;
  }

  else
  {
    v4 = 0x6D5F6B6E696C7075;
    v5 = 0xEA00000000007574;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6C6C617765726966;
  }

  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = 0x6361667265746E69;
  if (*a2 != 1)
  {
    v8 = 0x6D5F6B6E696C7075;
    v2 = 0xEA00000000007574;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C6C617765726966;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100245068()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100245110(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1002451A4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

DarwinInit::Config::Network::CodingKeys_optional sub_100245248@<W0>(Swift::String *a1@<X0>, DarwinInit::Config::Network::CodingKeys_optional *a2@<X8>)
{
  result.value = Config.Network.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void sub_100245278(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6361667265746E69;
  v5 = 0xEA00000000007365;
  if (v2 != 1)
  {
    v4 = 0x6D5F6B6E696C7075;
    v5 = 0xEA00000000007574;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x6C6C617765726966;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1002452DC()
{
  v1 = 0x6361667265746E69;
  if (*v0 != 1)
  {
    v1 = 0x6D5F6B6E696C7075;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6C617765726966;
  }
}

DarwinInit::Config::Network::CodingKeys_optional sub_10024533C@<W0>(uint64_t a1@<X0>, DarwinInit::Config::Network::CodingKeys_optional *a2@<X8>)
{
  result.value = Config.Network.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_100245374(uint64_t a1)
{
  v2 = sub_10025B090();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002453B0(uint64_t a1)
{
  v2 = sub_10025B090();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002453EC(void *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];

  *a2 = v3;
  a2[1] = v4;
  return result;
}