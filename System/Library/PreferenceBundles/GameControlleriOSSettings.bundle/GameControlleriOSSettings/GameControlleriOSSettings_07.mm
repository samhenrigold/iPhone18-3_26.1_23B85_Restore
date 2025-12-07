unint64_t sub_B3C9C()
{
  result = qword_1195B0;
  if (!qword_1195B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1195B0);
  }

  return result;
}

unint64_t sub_B3CE8()
{
  result = qword_1195B8;
  if (!qword_1195B8)
  {
    sub_EBC0(&qword_115EC0, &qword_DE590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1195B8);
  }

  return result;
}

uint64_t sub_B3D4C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_7C39C(result, a2);
  }

  return result;
}

uint64_t sub_B3D60(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_7C334(result, a2);
  }

  return result;
}

id sub_B3D74()
{
  v1 = *(v0 + 16);
  if (v1)
  {

    return v1;
  }

  else
  {
    type metadata accessor for GCSPreferencesStore(0);
    sub_B79F8(&qword_116448, type metadata accessor for GCSPreferencesStore, &unk_E23A8);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_B3E00()
{
  type metadata accessor for GCSPreferencesStore(0);
  sub_B79F8(&qword_116448, type metadata accessor for GCSPreferencesStore, &unk_E23A8);

  return sub_D6DC8();
}

void (*sub_B3E88(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *(v3 + 56) = v5;
  *(v3 + 64) = v6;
  v7 = *(v1 + 48);
  *(v3 + 19) = v7;
  *(v3 + 48) = v5;
  *v3 = v5;
  *(v3 + 8) = v6;
  *(v3 + 16) = v7;
  sub_16444(v3 + 48, v3 + 24);

  *(v4 + 72) = sub_DC40(&qword_116510, &qword_DD4D0);
  sub_D78B8();
  return sub_22030;
}

uint64_t sub_B3F44()
{
  sub_DC40(&qword_1172A8, &qword_E1A50);
  sub_D78B8();
  return v1;
}

void (*sub_B3FF8(void *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[7];
  v6 = v1[8];
  v3[9] = v5;
  v3[10] = v6;
  v7 = v1[9];
  v3[11] = v7;
  v3[6] = v5;
  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  sub_16444((v3 + 6), (v3 + 3));

  v8 = v7;
  v4[12] = sub_DC40(&qword_1172A8, &qword_E1A50);
  sub_D78B8();
  return sub_3E4C8;
}

uint64_t sub_B40B8()
{
  sub_DC40(&qword_1172A8, &qword_E1A50);
  sub_D78E8();
  return v1;
}

__n128 sub_B4114@<Q0>(__n128 *a1@<X8>)
{
  sub_DC40(&qword_116848, &qword_E2CA0);
  sub_D78B8();
  a1[6] = v9;
  a1[7] = v10;
  a1[8].n128_u64[0] = v11;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  result = v4;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_B41C0(uint64_t a1)
{
  v2 = *(v1 + 192);
  v3 = *(v1 + 160);
  v26 = *(v1 + 176);
  v27 = v2;
  v4 = *(v1 + 192);
  v28 = *(v1 + 208);
  v5 = *(v1 + 128);
  v6 = *(v1 + 96);
  v22 = *(v1 + 112);
  v23 = v5;
  v7 = *(v1 + 128);
  v8 = *(v1 + 160);
  v24 = *(v1 + 144);
  v25 = v8;
  v9 = *(v1 + 96);
  v21[0] = *(v1 + 80);
  v21[1] = v9;
  v17 = v26;
  v18 = v4;
  v19 = *(v1 + 208);
  v13 = v22;
  v14 = v7;
  v15 = v24;
  v16 = v3;
  v29 = *(v1 + 224);
  v20 = *(v1 + 224);
  v11 = v21[0];
  v12 = v6;
  sub_16054(v21, v30, &qword_116848, &qword_E2CA0);
  sub_DC40(&qword_116848, &qword_E2CA0);
  sub_D78C8();
  v30[6] = v17;
  v30[7] = v18;
  v30[8] = v19;
  v31 = v20;
  v30[2] = v13;
  v30[3] = v14;
  v30[4] = v15;
  v30[5] = v16;
  v30[0] = v11;
  v30[1] = v12;
  return sub_160BC(v30, &qword_116848, &qword_E2CA0);
}

void (*sub_B42F4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x510uLL);
  }

  v4 = v3;
  *a1 = v3;
  v6 = *(v1 + 176);
  v5 = *(v1 + 192);
  v7 = *(v1 + 160);
  *(v3 + 96) = v6;
  *(v3 + 112) = v5;
  v8 = *(v1 + 192);
  *(v3 + 128) = *(v1 + 208);
  v10 = *(v1 + 112);
  v9 = *(v1 + 128);
  v11 = *(v1 + 96);
  *(v3 + 32) = v10;
  *(v3 + 48) = v9;
  v12 = *(v1 + 128);
  v14 = *(v1 + 144);
  v13 = *(v1 + 160);
  *(v3 + 64) = v14;
  *(v3 + 80) = v13;
  v15 = *(v1 + 96);
  v16 = *(v1 + 80);
  *v3 = v16;
  *(v3 + 16) = v15;
  *(v3 + 248) = v6;
  v17 = *(v1 + 208);
  *(v3 + 264) = v8;
  *(v3 + 280) = v17;
  *(v3 + 184) = v10;
  *(v3 + 200) = v12;
  *(v3 + 216) = v14;
  *(v3 + 232) = v7;
  *(v3 + 152) = v16;
  *(v3 + 144) = *(v1 + 224);
  *(v3 + 296) = *(v1 + 224);
  *(v3 + 168) = v11;
  sub_16054(v3, v3 + 304, &qword_116848, &qword_E2CA0);
  *(v4 + 1288) = sub_DC40(&qword_116848, &qword_E2CA0);
  sub_D78B8();
  return sub_23A8C;
}

double sub_B4414@<D0>(uint64_t a1@<X8>)
{
  sub_DC40(&qword_116848, &qword_E2CA0);
  sub_D78E8();
  *(a1 + 96) = v9;
  *(a1 + 112) = v10;
  *(a1 + 128) = v11;
  *(a1 + 144) = v12;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_B44C8()
{
  v1 = *(v0 + 232);
  sub_4592C(v1, *(v0 + 240));
  return v1;
}

uint64_t sub_B44FC(uint64_t a1, uint64_t a2)
{
  result = sub_45984(*(v2 + 232), *(v2 + 240));
  *(v2 + 232) = a1;
  *(v2 + 240) = a2;
  return result;
}

uint64_t sub_B4554()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = [v1 controllers];
    sub_35F0C();
    sub_D7D28();

    sub_B5800(v0, v5);

    v5[0] = sub_B576C(v3);
    sub_B730C(v5, v0);
    sub_B73D4(v0);

    return v5[0];
  }

  else
  {
    type metadata accessor for GCSPreferencesStore(0);
    sub_B79F8(&qword_116448, type metadata accessor for GCSPreferencesStore, &unk_E23A8);
    sub_D6DD8();
    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t sub_B466C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v40 = sub_DC40(&qword_1195C0, &qword_E2CA8);
  v3 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v39 - v6;
  v8 = sub_DC40(&qword_1195C8, &qword_E2CB0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v39 - v10;
  v12 = sub_DC40(&qword_1195D0, &qword_E2CB8);
  __chkstk_darwin(v12 - 8);
  v39 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  v44[3] = &type metadata for GameController;
  v44[4] = sub_A8E78();
  v17 = sub_D69E8();
  sub_7362C(v44);
  v18 = 1;
  if (v17)
  {
    *v11 = sub_D7078();
    *(v11 + 1) = 0;
    v11[16] = 1;
    v19 = sub_DC40(&qword_1195F8, qword_E2CD0);
    sub_B4C00(v2, &v11[*(v19 + 44)]);
    sub_B7644(v11, v16);
    v18 = 0;
  }

  (*(v9 + 56))(v16, v18, 1, v8);
  v20 = *(v2 + 16);
  if (v20)
  {
    v21 = [v20 controllers];
    sub_35F0C();
    sub_D7D28();

    sub_B5800(v2, v44);

    v44[0] = sub_B576C(v22);
    sub_B730C(v44, v2);
    sub_B73D4(v2);

    v43 = v44[0];
    v23 = swift_allocObject();
    v24 = *(v2 + 208);
    *(v23 + 208) = *(v2 + 192);
    *(v23 + 224) = v24;
    *(v23 + 240) = *(v2 + 224);
    *(v23 + 256) = *(v2 + 240);
    v25 = *(v2 + 144);
    *(v23 + 144) = *(v2 + 128);
    *(v23 + 160) = v25;
    v26 = *(v2 + 176);
    *(v23 + 176) = *(v2 + 160);
    *(v23 + 192) = v26;
    v27 = *(v2 + 80);
    *(v23 + 80) = *(v2 + 64);
    *(v23 + 96) = v27;
    v28 = *(v2 + 112);
    *(v23 + 112) = *(v2 + 96);
    *(v23 + 128) = v28;
    v29 = *(v2 + 16);
    *(v23 + 16) = *v2;
    *(v23 + 32) = v29;
    v30 = *(v2 + 48);
    *(v23 + 48) = *(v2 + 32);
    *(v23 + 64) = v30;
    sub_B5800(v2, v44);
    sub_DC40(&qword_118E08, &qword_E2CC0);
    type metadata accessor for GCSControllerView(0);
    sub_15FB8(&qword_1195D8, &qword_118E08, &qword_E2CC0, &protocol conformance descriptor for [A]);
    sub_B79F8(&qword_1195E0, type metadata accessor for GCSControllerView, &unk_DED58);
    sub_B79F8(&qword_1195E8, sub_35F0C, &protocol conformance descriptor for GCSController);
    sub_D7998();
    v31 = v39;
    sub_B756C(v16, v39);
    v32 = *(v3 + 16);
    v34 = v40;
    v33 = v41;
    v32(v41, v7, v40);
    v35 = v42;
    sub_B756C(v31, v42);
    v36 = sub_DC40(&qword_1195F0, &qword_E2CC8);
    v32((v35 + *(v36 + 48)), v33, v34);
    v37 = *(v3 + 8);
    v37(v7, v34);
    sub_B75DC(v16);
    v37(v33, v34);
    return sub_B75DC(v31);
  }

  else
  {
    type metadata accessor for GCSPreferencesStore(0);
    sub_B79F8(&qword_116448, type metadata accessor for GCSPreferencesStore, &unk_E23A8);
    sub_D6DD8();
    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t sub_B4C00@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v41 = sub_D7148();
  v37 = *(v41 - 8);
  __chkstk_darwin(v41);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_DC40(&qword_119610, &qword_E2E50);
  v5 = *(v36 - 8);
  __chkstk_darwin(v36);
  v7 = &v34 - v6;
  v8 = sub_DC40(&qword_119618, &qword_E2E58);
  v9 = *(v8 - 8);
  v38 = v8;
  v39 = v9;
  __chkstk_darwin(v8);
  v35 = &v34 - v10;
  v11 = swift_allocObject();
  v12 = a1[13];
  *(v11 + 208) = a1[12];
  *(v11 + 224) = v12;
  *(v11 + 240) = a1[14];
  *(v11 + 256) = *(a1 + 30);
  v13 = a1[9];
  *(v11 + 144) = a1[8];
  *(v11 + 160) = v13;
  v14 = a1[11];
  *(v11 + 176) = a1[10];
  *(v11 + 192) = v14;
  v15 = a1[5];
  *(v11 + 80) = a1[4];
  *(v11 + 96) = v15;
  v16 = a1[7];
  *(v11 + 112) = a1[6];
  *(v11 + 128) = v16;
  v17 = a1[1];
  *(v11 + 16) = *a1;
  *(v11 + 32) = v17;
  v18 = a1[3];
  *(v11 + 48) = a1[2];
  *(v11 + 64) = v18;
  sub_B5800(a1, v43);
  sub_DC40(&qword_119620, &qword_E2E60);
  sub_15FB8(&qword_119628, &qword_119620, &qword_E2E60, &protocol conformance descriptor for HStack<A>);
  sub_D7848();
  sub_D7138();
  v19 = sub_15FB8(&qword_119630, &qword_119610, &qword_E2E50, &protocol conformance descriptor for Button<A>);
  v20 = sub_B79F8(&qword_116548, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
  v21 = v36;
  v22 = v41;
  sub_D7428();
  (*(v37 + 8))(v4, v22);
  (*(v5 + 8))(v7, v21);
  v42 = *a1;
  sub_DC40(&qword_1166E0, &qword_DD340);
  sub_D7808();
  v23 = swift_allocObject();
  v24 = a1[13];
  *(v23 + 208) = a1[12];
  *(v23 + 224) = v24;
  *(v23 + 240) = a1[14];
  *(v23 + 256) = *(a1 + 30);
  v25 = a1[9];
  *(v23 + 144) = a1[8];
  *(v23 + 160) = v25;
  v26 = a1[11];
  *(v23 + 176) = a1[10];
  *(v23 + 192) = v26;
  v27 = a1[5];
  *(v23 + 80) = a1[4];
  *(v23 + 96) = v27;
  v28 = a1[7];
  *(v23 + 112) = a1[6];
  *(v23 + 128) = v28;
  v29 = a1[1];
  *(v23 + 16) = *a1;
  *(v23 + 32) = v29;
  v30 = a1[3];
  *(v23 + 48) = a1[2];
  *(v23 + 64) = v30;
  sub_B5800(a1, v43);
  type metadata accessor for GCSControllerPairingHelpView(0);
  v43[0] = v21;
  v43[1] = v41;
  v43[2] = v19;
  v43[3] = v20;
  swift_getOpaqueTypeConformance2();
  sub_B79F8(&qword_119300, type metadata accessor for GCSControllerPairingHelpView, &unk_E2B70);
  v31 = v38;
  v32 = v35;
  sub_D7518();

  return (*(v39 + 8))(v32, v31);
}

double sub_B511C@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_D6FB8();
  v15 = 1;
  sub_B5234(&v9);
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v16 = v9;
  v21[1] = v10;
  v21[2] = v11;
  v21[3] = v12;
  v22 = v13;
  v21[0] = v9;
  sub_16054(&v16, v8, &qword_119638, &unk_E2E68);
  sub_160BC(v21, &qword_119638, &unk_E2E68);
  *&v14[7] = v16;
  *&v14[71] = v20;
  *&v14[55] = v19;
  *&v14[39] = v18;
  *&v14[23] = v17;
  v4 = *v14;
  *(a2 + 33) = *&v14[16];
  v5 = *&v14[48];
  *(a2 + 49) = *&v14[32];
  *(a2 + 65) = v5;
  result = *&v14[63];
  *(a2 + 80) = *&v14[63];
  v7 = v15;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v7;
  *(a2 + 17) = v4;
  return result;
}

uint64_t sub_B5234@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_DC40(&qword_119310, &qword_E2850);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_D7308();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_A9308(0x505F4F545F574F48, 0xEB00000000524941);
  v24 = v9;
  sub_16000();
  v10 = sub_D73B8();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v21 = sub_D76F8();
  (*(v6 + 104))(v8, enum case for Font.TextStyle.footnote(_:), v5);
  v17 = sub_D7268();
  (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  sub_D72B8();
  sub_160BC(v4, &qword_119310, &qword_E2850);
  (*(v6 + 8))(v8, v5);
  sub_D7298();
  v18 = sub_D72D8();

  KeyPath = swift_getKeyPath();
  v14 &= 1u;
  LOBYTE(v23) = v14;
  v22 = 1;
  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v14;
  *(a1 + 24) = v16;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v21;
  *(a1 + 56) = KeyPath;
  *(a1 + 64) = v18;
  sub_1F900(v10, v12, v14);

  sub_1F8F0(v10, v12, v14);
}

uint64_t sub_B54E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_DC40(&qword_1179B0, qword_DF540);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v8 = *(a1 + 232);
  v7 = *(a1 + 240);
  sub_4592C(v8, v7);
  sub_B1F2C();
  return sub_B1F90(v6, v8, v7, a2);
}

uint64_t sub_B5594()
{
  type metadata accessor for GCSPreferencesStore(0);
  sub_B79F8(&qword_116448, type metadata accessor for GCSPreferencesStore, &unk_E23A8);

  return sub_D6DF8();
}

__n128 sub_B5608@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_D77D8();
  *a9 = v27;
  *(a9 + 8) = v28;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  v21 = *(a10 + 112);
  *(a9 + 176) = *(a10 + 96);
  *(a9 + 192) = v21;
  *(a9 + 208) = *(a10 + 128);
  v22 = *(a10 + 144);
  v23 = *(a10 + 48);
  *(a9 + 112) = *(a10 + 32);
  *(a9 + 128) = v23;
  v24 = *(a10 + 80);
  *(a9 + 144) = *(a10 + 64);
  *(a9 + 160) = v24;
  result = *a10;
  v26 = *(a10 + 16);
  *(a9 + 80) = *a10;
  *(a9 + 96) = v26;
  *(a9 + 224) = v22;
  *(a9 + 232) = a11;
  *(a9 + 240) = a12;
  return result;
}

void *sub_B576C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_D8078();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_4E0C8(v3, 0);
  sub_A31D4((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_B5838(void **a1, void **a2, void **a3, void **a4, uint64_t a5)
{
  v72 = a5;
  v9 = sub_DC40(&qword_119200, &unk_E2690);
  __chkstk_darwin(v9 - 8);
  v71 = &v69 - v10;
  v11 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v11 = a2 - a1;
  }

  v12 = v11 >> 3;
  v13 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 3;
  if (v12 >= v13 >> 3)
  {
    v73 = a1;
    if (a4 != a2 || &a2[v14] <= a4)
    {
      memmove(a4, a2, 8 * v14);
    }

    v80 = &a4[v14];
    if (a3 - a2 < 8 || a2 <= v73)
    {
      goto LABEL_51;
    }

    v75 = a4;
LABEL_33:
    v69 = a2;
    v41 = a2 - 1;
    v42 = a3 - 1;
    v43 = v80;
    v70 = a2 - 1;
    while (1)
    {
      v74 = v42;
      v44 = *--v43;
      v17 = v44;
      v18 = *v41;
      v45 = *(v72 + 16);
      if (!v45)
      {
LABEL_55:
        type metadata accessor for GCSPreferencesStore(0);
        sub_B79F8(&qword_116448, type metadata accessor for GCSPreferencesStore, &unk_E23A8);
        v67 = v17;
        v68 = v18;
        result = sub_D6DD8();
        __break(1u);
        return result;
      }

      v46 = *(&stru_248.size + (swift_isaMask & *v45));
      v47 = v17;
      v48 = v18;
      v49 = v45;
      v50 = v46(v47);
      v51 = v48;
      v52 = v50;
      v53 = (*(&stru_248.size + (swift_isaMask & *v49)))(v48);

      if (v52)
      {
        if ((v53 & 1) == 0)
        {

          a4 = v75;
          v41 = v70;
LABEL_44:
          a3 = v74;
          if (v74 + 1 != v69)
          {
            *v74 = *v41;
          }

          if (v80 <= a4 || (a2 = v41, v41 <= v73))
          {
            a2 = v41;
            goto LABEL_51;
          }

          goto LABEL_33;
        }
      }

      else if (v53)
      {

        a4 = v75;
        v41 = v70;
        goto LABEL_42;
      }

      v54 = [v47 name];
      v55 = sub_D7C18();
      v57 = v56;

      v78 = v55;
      v79 = v57;
      v58 = [v51 name];
      v59 = sub_D7C18();
      v61 = v60;

      v76 = v59;
      v77 = v61;
      v62 = sub_D69C8();
      v63 = v71;
      (*(*(v62 - 8) + 56))(v71, 1, 1, v62);
      sub_16000();
      v64 = sub_D7F38();
      sub_160BC(v63, &qword_119200, &unk_E2690);

      a4 = v75;
      v41 = v70;
      if (v64 == -1)
      {
        goto LABEL_44;
      }

LABEL_42:
      v65 = v74;
      if (v74 + 1 != v80)
      {
        *v74 = *v43;
      }

      v42 = v65 - 1;
      v80 = v43;
      if (v43 <= a4)
      {
        v80 = v43;
        a2 = v69;
        goto LABEL_51;
      }
    }
  }

  if (a4 != a1 || &a1[v12] <= a4)
  {
    memmove(a4, a1, 8 * v12);
  }

  v80 = &a4[v12];
  if (a2 - a1 >= 8 && a2 < a3)
  {
    v15 = a2;
    v74 = a3;
    do
    {
      v73 = a1;
      v16 = v15;
      v17 = *v15;
      v75 = a4;
      v18 = *a4;
      v19 = *(v72 + 16);
      if (!v19)
      {
        goto LABEL_55;
      }

      v20 = *(&stru_248.size + (swift_isaMask & *v19));
      v21 = v17;
      v22 = v18;
      v23 = v19;
      LOBYTE(v20) = v20(v21);
      v24 = (*(&stru_248.size + (swift_isaMask & *v23)))(v22);

      v15 = v16;
      if (v20)
      {
        if ((v24 & 1) == 0)
        {

          v25 = v73;
          v26 = v74;
          a4 = v75;
          goto LABEL_24;
        }
      }

      else if (v24)
      {

        v25 = v73;
        v26 = v74;
        a4 = v75;
LABEL_19:
        v39 = a4;
        v40 = v25 == a4++;
        if (v40)
        {
          goto LABEL_21;
        }

LABEL_20:
        *v25 = *v39;
        goto LABEL_21;
      }

      v27 = [v21 name];
      v28 = sub_D7C18();
      v30 = v29;

      v78 = v28;
      v79 = v30;
      v31 = [v22 name];
      v32 = v22;
      v33 = sub_D7C18();
      v35 = v34;

      v76 = v33;
      v77 = v35;
      v36 = sub_D69C8();
      v37 = v71;
      (*(*(v36 - 8) + 56))(v71, 1, 1, v36);
      sub_16000();
      v38 = sub_D7F38();
      sub_160BC(v37, &qword_119200, &unk_E2690);

      v25 = v73;
      v26 = v74;
      a4 = v75;
      if (v38 != -1)
      {
        goto LABEL_19;
      }

LABEL_24:
      v39 = v15;
      v40 = v25 == v15++;
      if (!v40)
      {
        goto LABEL_20;
      }

LABEL_21:
      a1 = v25 + 1;
    }

    while (a4 < v80 && v15 < v26);
  }

  a2 = a1;
LABEL_51:
  if (a2 != a4 || a2 >= (a4 + ((v80 - a4 + (v80 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v80 - a4));
  }

  return 1;
}

uint64_t sub_B5F70(uint64_t *a1, void **a2, uint64_t *a3, uint64_t a4)
{
  v5 = a1;
  v6 = *a1;
  sub_B5800(a4, v25);
  v23 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v23 = sub_1EC34(v23);
  }

  v19 = v5;
  *v5 = v23;
  v7 = (v23 + 16);
  v8 = *(v23 + 2);
  if (v8 < 2)
  {
LABEL_9:
    sub_B73D4(a4);
    *v19 = v23;
    return 1;
  }

  else
  {
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = &v23[16 * v8];
      v11 = *v10;
      v5 = (v23 + 16);
      v12 = &v7[2 * v8];
      v13 = *v12;
      v14 = v12[1];
      v26 = (v9 + 8 * *v10);
      v15 = (v9 + 8 * v13);
      v24 = (v9 + 8 * v14);
      sub_B5800(a4, v25);
      sub_B5838(v26, v15, v24, a2, a4);
      sub_B73D4(a4);
      if (v4)
      {
        *v19 = v23;
        sub_B73D4(a4);
        return 1;
      }

      if (v14 < v11)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v16 = *v7;
      if (v8 - 2 >= *v7)
      {
        goto LABEL_13;
      }

      *v10 = v11;
      *(v10 + 1) = v14;
      v17 = v16 - v8;
      if (v16 < v8)
      {
        goto LABEL_14;
      }

      v8 = v16 - 1;
      memmove(v12, v12 + 2, 16 * v17);
      *v7 = v8;
      if (v8 <= 1)
      {
        goto LABEL_9;
      }
    }

    result = sub_B73D4(a4);
    *v19 = v23;
    __break(1u);
  }

  return result;
}

uint64_t sub_B6124(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v8 = v5;
  v153 = a1;
  v12 = sub_DC40(&qword_119200, &unk_E2690);
  __chkstk_darwin(v12 - 8);
  v162 = &v150 - v13;
  v170 = _swiftEmptyArrayStorage;
  v160 = a3;
  v14 = a3[1];
  if (v14 < 1)
  {
    sub_B5800(a5, &v168);
    sub_B5800(a5, &v168);
    goto LABEL_117;
  }

  sub_B5800(a5, &v168);
  sub_B5800(a5, &v168);
  v15 = 0;
  v16 = _swiftEmptyArrayStorage;
  v158 = a5;
  v152 = a4;
  while (2)
  {
    v161 = v16;
    v17 = v15;
    v18 = (v15 + 1);
    v154 = v15;
    if (v15 + 1 >= v14)
    {
      goto LABEL_37;
    }

    v164 = v14;
    v151 = v8;
    v6 = *v160;
    v19 = a5;
    v7 = *(*v160 + 8 * v18);
    a5 = *(*v160 + 8 * v17);
    v20 = v19[2];
    if (!v20)
    {
      goto LABEL_148;
    }

    v21 = *(&stru_248.size + (swift_isaMask & *v20));
    v7 = v7;
    v22 = a5;
    v23 = v20;
    v24 = v22;
    LOBYTE(v21) = v21(v7);
    v25 = *(&stru_248.size + (swift_isaMask & *v23));
    v159 = (swift_isaMask & *v23) + 624;
    v157 = v25;
    v26 = (v25)(v22);
    v163 = v23;

    if (v21)
    {
      if ((v26 & 1) == 0)
      {

        v27 = 1;
LABEL_12:
        LODWORD(v165) = v27;
        goto LABEL_13;
      }

LABEL_11:
      v28 = [v7 name];
      v29 = sub_D7C18();
      v31 = v30;

      v168 = v29;
      v169 = v31;
      v32 = [v24 name];
      v33 = sub_D7C18();
      v35 = v34;

      v166 = v33;
      v167 = v35;
      v36 = sub_D69C8();
      v37 = v162;
      (*(*(v36 - 8) + 56))(v162, 1, 1, v36);
      sub_16000();
      v38 = sub_D7F38();
      sub_160BC(v37, &qword_119200, &unk_E2690);

      v27 = v38 == -1;
      goto LABEL_12;
    }

    if ((v26 & 1) == 0)
    {
      goto LABEL_11;
    }

    LODWORD(v165) = 0;
LABEL_13:
    v17 = v154;
    v18 = (v154 + 2);
    if (v154 + 2 >= v164)
    {
      a5 = v158;
      v8 = v151;
      a4 = v152;
      if (v165)
      {
        goto LABEL_28;
      }

      goto LABEL_37;
    }

    v39 = (v6 + 8 * v154 + 16);
    do
    {
      v51 = *(v39 - 1);
      v50 = *v39;
      v52 = v163;
      v7 = v50;
      v53 = v51;
      v6 = v157;
      v54 = (v157)(v7);
      v55 = (v6)(v53);

      if (v54)
      {
        if ((v55 & 1) == 0)
        {

          if (!v165)
          {
            a5 = v158;
            v8 = v151;
            a4 = v152;
            goto LABEL_36;
          }

          goto LABEL_16;
        }
      }

      else if (v55)
      {

        if (v165)
        {
          a5 = v158;
          v8 = v151;
          a4 = v152;
          v17 = v154;
          goto LABEL_28;
        }

        goto LABEL_16;
      }

      v40 = [v7 name];
      v41 = sub_D7C18();
      v43 = v42;

      v168 = v41;
      v169 = v43;
      v44 = [v53 name];
      v45 = sub_D7C18();
      v47 = v46;

      v166 = v45;
      v167 = v47;
      v48 = sub_D69C8();
      v6 = v162;
      (*(*(v48 - 8) + 56))(v162, 1, 1, v48);
      sub_16000();
      v49 = sub_D7F38();
      sub_160BC(v6, &qword_119200, &unk_E2690);

      if (((v165 ^ (v49 != -1)) & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_16:
      ++v39;
      v18 = (v18 + 1);
    }

    while (v164 != v18);
    v18 = v164;
LABEL_27:
    a5 = v158;
    v8 = v151;
    a4 = v152;
    v17 = v154;
    if (v165)
    {
LABEL_28:
      if (v18 < v17)
      {
        goto LABEL_139;
      }

      if (v17 < v18)
      {
        v56 = 8 * v18 - 8;
        v57 = 8 * v17;
        v58 = v18;
        do
        {
          v18 = (v18 - 1);
          if (v17 != v18)
          {
            v59 = *v160;
            if (!*v160)
            {
              goto LABEL_144;
            }

            v60 = *(v59 + v57);
            *(v59 + v57) = *(v59 + v56);
            *(v59 + v56) = v60;
          }

          ++v17;
          v56 -= 8;
          v57 += 8;
        }

        while (v17 < v18);
        v18 = v58;
LABEL_36:
        v17 = v154;
      }
    }

LABEL_37:
    v61 = v18;
    v62 = v160[1];
    if (v18 >= v62)
    {
      v16 = v161;
      v66 = v61;
      if (v61 < v17)
      {
        goto LABEL_137;
      }

      goto LABEL_65;
    }

    v63 = v18;
    v106 = __OFSUB__(v18, v17);
    v64 = v18 - v17;
    v16 = v161;
    if (v106)
    {
      goto LABEL_138;
    }

    if (v64 >= a4)
    {
      goto LABEL_45;
    }

    v65 = v154 + a4;
    if (__OFADD__(v154, a4))
    {
      goto LABEL_140;
    }

    if (v65 >= v62)
    {
      v65 = v160[1];
    }

    if (v65 < v154)
    {
LABEL_141:
      __break(1u);
LABEL_142:
      v143 = v158;
      sub_B73D4(v158);
      sub_B73D4(v143);
      __break(1u);
LABEL_143:
      v144 = v158;
      sub_B73D4(v158);
      sub_B73D4(v144);
      __break(1u);
LABEL_144:
      sub_B73D4(a5);
      sub_B73D4(a5);
      __break(1u);
LABEL_145:
      v145 = v158;
      sub_B73D4(v158);
      sub_B73D4(v145);
      __break(1u);
      goto LABEL_146;
    }

    if (v63 != v65)
    {
      v67 = *v160;
      v68 = a5[2];
      v150 = a5[3];
      v151 = v8;
      v163 = v68;
      v164 = v67;
      v69 = &v67[v63 - 1];
      v70 = (v154 - v63);
      v155 = v65;
      while (1)
      {
        v159 = v63;
        v71 = v70;
        v6 = v164[v63];
        v156 = v70;
        v157 = v69;
        while (1)
        {
          v165 = v71;
          v7 = *v69;
          if (!v68)
          {
            goto LABEL_147;
          }

          v72 = *(&stru_248.size + (swift_isaMask & *v68));
          a5 = ((swift_isaMask & *v68) + 624);
          v73 = v6;
          v74 = v7;
          v75 = v68;
          v7 = v73;
          v6 = v72(v73);
          v76 = (*(&stru_248.size + (swift_isaMask & *v75)))(v74);

          if ((v6 & 1) == 0)
          {
            break;
          }

          if (v76)
          {
            goto LABEL_58;
          }

LABEL_59:
          v68 = v163;
          v87 = v165;
          if (!v164)
          {
            goto LABEL_142;
          }

          v88 = *v69;
          v6 = v69[1];
          *v69 = v6;
          v69[1] = v88;
          --v69;
          v89 = __CFADD__(v87, 1);
          v71 = (v87 + 1);
          if (v89)
          {
            goto LABEL_51;
          }
        }

        if ((v76 & 1) == 0)
        {
          break;
        }

LABEL_50:
        v68 = v163;
LABEL_51:
        v63 = v159 + 1;
        v69 = v157 + 1;
        v70 = (v156 - 1);
        if (v159 + 1 == v155)
        {
          v66 = v155;
          v8 = v151;
          v16 = v161;
          goto LABEL_64;
        }
      }

LABEL_58:
      v77 = [v7 name];
      v78 = sub_D7C18();
      v80 = v79;

      v168 = v78;
      v169 = v80;
      v81 = [v74 name];
      v82 = sub_D7C18();
      a5 = v74;
      v84 = v83;

      v166 = v82;
      v167 = v84;
      v85 = sub_D69C8();
      v6 = v162;
      (*(*(v85 - 8) + 56))(v162, 1, 1, v85);
      sub_16000();
      v86 = sub_D7F38();
      sub_160BC(v6, &qword_119200, &unk_E2690);

      if (v86 != -1)
      {
        goto LABEL_50;
      }

      goto LABEL_59;
    }

LABEL_45:
    v66 = v63;
LABEL_64:
    if (v66 < v154)
    {
      goto LABEL_137;
    }

LABEL_65:
    v159 = v66;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1EC48(0, *(v16 + 2) + 1, 1, v16);
    }

    v91 = *(v16 + 2);
    v90 = *(v16 + 3);
    v7 = v91 + 1;
    v92 = v154;
    if (v91 >= v90 >> 1)
    {
      v140 = sub_1EC48((v90 > 1), v91 + 1, 1, v16);
      v92 = v154;
      v16 = v140;
    }

    *(v16 + 2) = v7;
    v93 = v16 + 32;
    v94 = &v16[16 * v91 + 32];
    *v94 = v92;
    *(v94 + 1) = v159;
    v163 = *v153;
    if (!v163)
    {
      goto LABEL_145;
    }

    if (v91)
    {
      v161 = v16;
      v157 = (v16 + 32);
      while (1)
      {
        v95 = v7 - 1;
        if (v7 >= 4)
        {
          break;
        }

        if (v7 == 3)
        {
          v96 = *(v16 + 4);
          v97 = *(v16 + 5);
          v106 = __OFSUB__(v97, v96);
          v98 = v97 - v96;
          v99 = v106;
LABEL_85:
          if (v99)
          {
            goto LABEL_127;
          }

          v112 = &v16[16 * v7];
          v114 = *v112;
          v113 = *(v112 + 1);
          v115 = __OFSUB__(v113, v114);
          v116 = v113 - v114;
          v117 = v115;
          if (v115)
          {
            goto LABEL_129;
          }

          v118 = &v93[16 * v95];
          v120 = *v118;
          v119 = *(v118 + 1);
          v106 = __OFSUB__(v119, v120);
          v121 = v119 - v120;
          if (v106)
          {
            goto LABEL_132;
          }

          if (__OFADD__(v116, v121))
          {
            goto LABEL_134;
          }

          if (v116 + v121 >= v98)
          {
            if (v98 < v121)
            {
              v95 = v7 - 2;
            }

            goto LABEL_107;
          }

          goto LABEL_100;
        }

        if (v7 < 2)
        {
          goto LABEL_135;
        }

        v122 = &v16[16 * v7];
        v124 = *v122;
        v123 = *(v122 + 1);
        v106 = __OFSUB__(v123, v124);
        v116 = v123 - v124;
        v117 = v106;
LABEL_100:
        if (v117)
        {
          goto LABEL_131;
        }

        v125 = &v93[16 * v95];
        v127 = *v125;
        v126 = *(v125 + 1);
        v106 = __OFSUB__(v126, v127);
        v128 = v126 - v127;
        if (v106)
        {
          goto LABEL_133;
        }

        if (v128 < v116)
        {
          goto LABEL_3;
        }

LABEL_107:
        if (v95 - 1 >= v7)
        {
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        v133 = *v160;
        if (!*v160)
        {
          goto LABEL_143;
        }

        v134 = &v93[16 * v95 - 16];
        v135 = *v134;
        v7 = v95;
        v136 = &v93[16 * v95];
        v137 = *(v136 + 1);
        v6 = v133 + 8 * *v134;
        v138 = (v133 + 8 * *v136);
        v164 = (v133 + 8 * v137);
        v165 = v138;
        a5 = v158;
        sub_B5800(v158, &v168);
        sub_B5838(v6, v165, v164, v163, a5);
        if (v8)
        {
          sub_B73D4(a5);
          v170 = v161;
          goto LABEL_119;
        }

        sub_B73D4(a5);
        if (v137 < v135)
        {
          goto LABEL_122;
        }

        v6 = *(v161 + 2);
        if (v7 > v6)
        {
          goto LABEL_123;
        }

        *v134 = v135;
        *(v134 + 1) = v137;
        if (v7 >= v6)
        {
          goto LABEL_124;
        }

        v139 = v7;
        v7 = v6 - 1;
        memmove(v136, v136 + 16, 16 * (v6 - 1 - v139));
        v16 = v161;
        *(v161 + 2) = v6 - 1;
        v93 = v157;
        if (v6 <= 2)
        {
          goto LABEL_3;
        }
      }

      v100 = &v93[16 * v7];
      v101 = *(v100 - 8);
      v102 = *(v100 - 7);
      v106 = __OFSUB__(v102, v101);
      v103 = v102 - v101;
      if (v106)
      {
        goto LABEL_125;
      }

      v105 = *(v100 - 6);
      v104 = *(v100 - 5);
      v106 = __OFSUB__(v104, v105);
      v98 = v104 - v105;
      v99 = v106;
      if (v106)
      {
        goto LABEL_126;
      }

      v107 = &v16[16 * v7];
      v109 = *v107;
      v108 = *(v107 + 1);
      v106 = __OFSUB__(v108, v109);
      v110 = v108 - v109;
      if (v106)
      {
        goto LABEL_128;
      }

      v106 = __OFADD__(v98, v110);
      v111 = v98 + v110;
      if (v106)
      {
        goto LABEL_130;
      }

      if (v111 >= v103)
      {
        v129 = &v93[16 * v95];
        v131 = *v129;
        v130 = *(v129 + 1);
        v106 = __OFSUB__(v130, v131);
        v132 = v130 - v131;
        if (v106)
        {
          goto LABEL_136;
        }

        if (v98 < v132)
        {
          v95 = v7 - 2;
        }

        goto LABEL_107;
      }

      goto LABEL_85;
    }

LABEL_3:
    v15 = v159;
    v14 = v160[1];
    a5 = v158;
    a4 = v152;
    if (v159 < v14)
    {
      continue;
    }

    break;
  }

  v170 = v16;
LABEL_117:
  v141 = *v153;
  if (*v153)
  {
    sub_B5800(a5, &v168);
    sub_B5F70(&v170, v141, v160, a5);
    sub_B73D4(a5);
LABEL_119:

    sub_B73D4(a5);
    return sub_B73D4(a5);
  }

LABEL_146:
  sub_B73D4(a5);
  sub_B73D4(a5);
  __break(1u);
LABEL_147:
  v170 = v161;
  type metadata accessor for GCSPreferencesStore(0);
  sub_B79F8(&qword_116448, type metadata accessor for GCSPreferencesStore, &unk_E23A8);
  v146 = v6;
  v147 = v7;
  sub_D6DD8();
  __break(1u);
LABEL_148:
  v170 = v161;
  type metadata accessor for GCSPreferencesStore(0);
  sub_B79F8(&qword_116448, type metadata accessor for GCSPreferencesStore, &unk_E23A8);
  v148 = v7;
  v149 = a5;
  result = sub_D6DD8();
  __break(1u);
  return result;
}

uint64_t sub_B6E88(Swift::Int **a1, void *a2)
{
  v6 = sub_DC40(&qword_119200, &unk_E2690);
  __chkstk_darwin(v6 - 8);
  v46 = &v39 - v7;
  v8 = a1[1];
  sub_B5800(a2, v51);
  sub_B5800(a2, v51);
  v9 = sub_D80E8(v8);
  if (v9 >= v8)
  {
    if (v8 < 0)
    {
      goto LABEL_26;
    }

    if (v8 < 2)
    {
LABEL_24:
      sub_B73D4(a2);
      return sub_B73D4(a2);
    }

    v41 = v2;
    v13 = *a1;
    sub_B5800(a2, v51);
    v14 = a2[2];
    v39 = a2[3];
    v40 = a2;
    v15 = -1;
    v16 = 1;
    v47 = v14;
    v48 = v13;
    v42 = v8;
    while (2)
    {
      v44 = v16;
      v45 = v15;
      v3 = v48[v16];
      v43 = v13;
      while (1)
      {
        v52 = v15;
        v8 = *v13;
        if (!v14)
        {
          goto LABEL_28;
        }

        v17 = *(&stru_248.size + (swift_isaMask & *v14));
        v3 = v3;
        v18 = v8;
        v19 = v14;
        v20 = v17(v3);
        v21 = v18;
        v8 = (*(&stru_248.size + (swift_isaMask & *v19)))(v18);

        if ((v20 & 1) == 0)
        {
          break;
        }

        if (v8)
        {
          goto LABEL_16;
        }

        v14 = v47;
        v22 = v52;
LABEL_17:
        if (!v48)
        {
          goto LABEL_27;
        }

        v33 = *v13;
        v3 = v13[1];
        *v13 = v3;
        v13[1] = v33;
        --v13;
        v34 = __CFADD__(v22, 1);
        v15 = v22 + 1;
        if (v34)
        {
          goto LABEL_9;
        }
      }

      if (v8)
      {

        v14 = v47;
LABEL_9:
        v16 = v44 + 1;
        v13 = v43 + 1;
        v15 = v45 - 1;
        if (v44 + 1 != v42)
        {
          continue;
        }

        a2 = v40;
        sub_B73D4(v40);
        goto LABEL_24;
      }

      break;
    }

LABEL_16:
    v23 = [v3 name];
    v24 = sub_D7C18();
    v8 = v25;

    v51[0] = v24;
    v51[1] = v8;
    v26 = [v21 name];
    v27 = sub_D7C18();
    v29 = v28;

    v49 = v27;
    v50 = v29;
    v30 = sub_D69C8();
    v31 = v46;
    (*(*(v30 - 8) + 56))(v46, 1, 1, v30);
    sub_16000();
    v32 = sub_D7F38();
    sub_160BC(v31, &qword_119200, &unk_E2690);

    v14 = v47;
    v22 = v52;
    if (v32 != -1)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

  if (v8 >= -1)
  {
    v10 = v9;
    v11 = v8 / 2;
    if (v8 <= 1)
    {
      v12 = _swiftEmptyArrayStorage;
    }

    else
    {
      sub_35F0C();
      v12 = sub_D7D58();
      *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)) = v11;
    }

    v35 = v12 & 0xFFFFFFFFFFFFFF8;
    v49 = ((v12 & 0xFFFFFFFFFFFFFF8) + 32);
    v50 = v11;
    sub_B5800(a2, v51);
    sub_B6124(&v49, v51, a1, v10, a2);
    sub_B73D4(a2);
    *(v35 + 16) = 0;

    goto LABEL_24;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  type metadata accessor for GCSPreferencesStore(0);
  sub_B79F8(&qword_116448, type metadata accessor for GCSPreferencesStore, &unk_E23A8);
  v37 = v3;
  v38 = v8;
  result = sub_D6DD8();
  __break(1u);
  return result;
}

uint64_t sub_B730C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  sub_B5800(a2, v9);
  sub_B5800(a2, v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_4F7E4(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = (v4 + 32);
  v8[1] = v6;
  sub_B5800(a2, v9);
  sub_B6E88(v8, a2);
  sub_B73D4(a2);
  sub_D8038();
  sub_B73D4(a2);
  return sub_B73D4(a2);
}

uint64_t sub_B7408@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v14 = *(v2 + 48);
  LOBYTE(v15) = *(v2 + 64);
  v5 = v4;
  sub_DC40(&qword_116510, &qword_DD4D0);
  sub_D78E8();
  v14 = *(v2 + 72);
  v15 = *(v2 + 88);
  sub_DC40(&qword_1172A8, &qword_E1A50);
  sub_D78E8();
  sub_DC40(&qword_116848, &qword_E2CA0);
  sub_D78E8();
  v6 = sub_422E8();
  v8 = v7;
  v9 = sub_43B7C();
  return sub_42330(v5, v6, v8, v9, v10, v12, *(&v12 + 1), v13, a2, v12, v13, &v14);
}

uint64_t sub_B756C(uint64_t a1, uint64_t a2)
{
  v4 = sub_DC40(&qword_1195D0, &qword_E2CB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_B75DC(uint64_t a1)
{
  v2 = sub_DC40(&qword_1195D0, &qword_E2CB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_B7644(uint64_t a1, uint64_t a2)
{
  v4 = sub_DC40(&qword_1195C8, &qword_E2CB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_B76D0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_B76E8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_B7734(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_B777C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
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

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_B784C()
{
  v3 = *(v0 + 16);
  v2[1] = *(v0 + 16);
  v4 = *(&v3 + 1);
  sub_16054(&v4, v2, &qword_119318, &qword_E2888);
  sub_DC40(&qword_1166E0, &qword_DD340);
  sub_D77E8();
  v2[0] = v3;
  sub_D77F8();
  return sub_160BC(&v3, &qword_1166E0, &qword_DD340);
}

uint64_t sub_B7910()
{

  if (*(v0 + 248))
  {
  }

  return _swift_deallocObject(v0, 264, 7);
}

uint64_t sub_B79F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_B7A4C(uint64_t a1, unint64_t a2)
{
  if (a2 < 2)
  {
    return 0;
  }

  if (a2 == 3)
  {
    return 0x704173656D614724;
  }

  if (a2 == 2)
  {
    return 0x7262694C70704124;
  }

  return a1;
}

uint64_t sub_B7AE8(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  result = sub_B7F44(a1, a2);
  if (v5 != 4)
  {
    v6 = result;

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_B7B5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_B7F44(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_B7B8C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  if (v2 < 2)
  {
    v4 = 0;
    result = 0xE000000000000000;
  }

  else if (v2 == 3)
  {
    result = 0xE900000000000070;
    v4 = 0x704173656D614724;
  }

  else if (v2 == 2)
  {
    result = 0xEB00000000797261;
    v4 = 0x7262694C70704124;
  }

  else
  {
    v4 = *v1;
    v5 = a1;

    a1 = v5;
  }

  *a1 = v4;
  a1[1] = result;
  return result;
}

uint64_t sub_B7C2C(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 >= 2 && v2 != 3 && v2 != 2)
  {
  }

  sub_D7C78();
}

Swift::Int sub_B7CF0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_D8168();
  if (a3 >= 2 && a3 != 3 && a3 != 2)
  {
  }

  sub_D7C78();

  return sub_D8198();
}

uint64_t sub_B7DC0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  if (a2 < 2)
  {
    v6 = 0;
    v5 = 0xE000000000000000;
    v7 = a4 == 2;
    if (a4 < 2)
    {
LABEL_16:
      v4 = 0xE000000000000000;
      if (v6)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v5 = a2;
    if (a2 == 3)
    {
      v6 = 0x704173656D614724;
      v5 = 0xE900000000000070;
      v7 = a4 == 2;
      if (a4 < 2)
      {
        goto LABEL_16;
      }
    }

    else if (a2 == 2)
    {
      v6 = 0x7262694C70704124;
      v5 = 0xEB00000000797261;
      v7 = a4 == 2;
      if (a4 < 2)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v9 = a3;

      v6 = a1;
      a3 = v9;
      v7 = v4 == 2;
      if (v4 < 2)
      {
        goto LABEL_16;
      }
    }
  }

  if (v7)
  {
    v4 = 0xEB00000000797261;
    if (v6 != 0x7262694C70704124)
    {
      goto LABEL_21;
    }
  }

  else if (v4 == 3)
  {
    v4 = 0xE900000000000070;
    if (v6 != 0x704173656D614724)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v10 = v6;
    v11 = a3;

    if (v10 != v11)
    {
LABEL_21:
      v12 = sub_D8118();
      goto LABEL_22;
    }
  }

LABEL_19:
  if (v5 != v4)
  {
    goto LABEL_21;
  }

  v12 = 1;
LABEL_22:

  return v12 & 1;
}

uint64_t sub_B7F44(uint64_t a1, uint64_t a2)
{
  if (sub_D7C88() <= 0 || a1 == 0x7262694C70704124 && a2 == 0xEB00000000797261 || (sub_D8118() & 1) != 0 || a1 == 0x704173656D614724 && a2 == 0xE900000000000070 || (sub_D8118() & 1) != 0)
  {

    return 0;
  }

  return a1;
}

unint64_t sub_B803C()
{
  result = qword_119640;
  if (!qword_119640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_119640);
  }

  return result;
}

uint64_t sub_B8090(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_B80B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 4)
  {
    return (v3 - 3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_B8110(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_B816C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

void sub_B81AC(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(CBConnection) init];
  v5 = *(*a1 + 424);
  v6 = v4;
  v5(v4);
  v16 = sub_B8438;
  v17 = a1;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_8C864;
  v15 = &unk_10A188;
  v7 = _Block_copy(&v12);

  [v6 setPairingPromptHandler:v7];
  _Block_release(v7);
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = a1;
  v16 = sub_B8600;
  v17 = v8;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_B8A70;
  v15 = &unk_10A1D8;
  v9 = _Block_copy(&v12);

  [v6 setPairingCompletedHandler:v9];
  _Block_release(v9);
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = a1;
  v16 = sub_B8AFC;
  v17 = v10;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_3A5C8;
  v15 = &unk_10A228;
  v11 = _Block_copy(&v12);

  [v6 activateWithCompletion:v11];
  _Block_release(v11);
}

uint64_t sub_B8438(void *a1)
{
  sub_DC40(&qword_115F08, &unk_DD4B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_DC430;
  v4 = [a1 device];
  if (v4 && (v5 = v4, v6 = [v4 name], v5, v6))
  {
    v7 = sub_D7C18();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  *(v3 + 56) = &type metadata for String;
  v10 = sub_14B60();
  *(v3 + 64) = v10;
  v11 = 0x454D414E204F4ELL;
  if (v9)
  {
    v11 = v7;
  }

  v12 = 0xE700000000000000;
  if (v9)
  {
    v12 = v9;
  }

  *(v3 + 32) = v11;
  *(v3 + 40) = v12;
  v13 = (*(*v1 + 976))();
  *(v3 + 96) = &type metadata for String;
  *(v3 + 104) = v10;
  v15 = 0x4552444441204F4ELL;
  if (v14)
  {
    v15 = v13;
  }

  v16 = 0xEA00000000005353;
  if (v14)
  {
    v16 = v14;
  }

  *(v3 + 72) = v15;
  *(v3 + 80) = v16;
  sub_14BB4();
  v17 = sub_D7ED8();
  v18 = sub_D7E38();
  sub_D69F8("[BluetoothSettings] pairingPromptHandler – %@ (%@)", 53, 0, &dword_0, v17, v18, v3);
}

uint64_t sub_B85E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_B8600(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  if ((*(*v3 + 1176))(0xD000000000000022, 0x80000000000E6C00, a2))
  {
    v5 = (*(*v4 + 384))();
    if (v5)
    {
      v6 = v5;
      v7 = [v5 pairingType];

      if (v7 == &dword_0 + 2 && ((*(*v4 + 856))() & 1) != 0)
      {
        v8 = *(*v3 + 416);

        return v8(v9);
      }
    }
  }

  sub_DC40(&qword_115F08, &unk_DD4B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_E2FD0;
  v12 = (*(*v4 + 360))();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  v15 = sub_14B60();
  *(v11 + 64) = v15;
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  v16 = (*(*v4 + 976))();
  v18 = 0x4552444441204F4ELL;
  if (v17)
  {
    v18 = v16;
  }

  v19 = 0xEA00000000005353;
  if (v17)
  {
    v19 = v17;
  }

  *(v11 + 96) = &type metadata for String;
  *(v11 + 104) = v15;
  *(v11 + 72) = v18;
  *(v11 + 80) = v19;
  v20 = *(*v4 + 384);
  v21 = v20();
  if (!v21)
  {
    v26 = (v11 + 112);
    *(v11 + 136) = &type metadata for String;
    *(v11 + 144) = v15;
    goto LABEL_14;
  }

  v22 = v21;
  v23 = [v21 pairingType];

  v24 = sub_BD884(v23);
  v26 = (v11 + 112);
  *(v11 + 136) = &type metadata for String;
  *(v11 + 144) = v15;
  if (!v25)
  {
LABEL_14:
    *v26 = 0x4952494150204F4ELL;
    v25 = 0xEF4550595420474ELL;
    goto LABEL_15;
  }

  *v26 = v24;
LABEL_15:
  *(v11 + 120) = v25;
  v27 = v20();
  if (!v27 || (v28 = v27, v29 = [v27 pin], v28, !v29))
  {
    v33 = (v11 + 152);
    *(v11 + 176) = &type metadata for String;
    *(v11 + 184) = v15;
    goto LABEL_20;
  }

  v30 = sub_D7C18();
  v32 = v31;

  v33 = (v11 + 152);
  *(v11 + 176) = &type metadata for String;
  *(v11 + 184) = v15;
  if (!v32)
  {
LABEL_20:
    *v33 = 0x4E4950204F4ELL;
    v32 = 0xE600000000000000;
    goto LABEL_21;
  }

  *v33 = v30;
LABEL_21:
  *(v11 + 160) = v32;
  sub_14BB4();
  v34 = sub_D7ED8();
  v35 = sub_D7E38();
  sub_D69F8("[BluetoothSettings] pairingCompletedHandler – %@ (%@): pairingType: %@ with PIN: %@", 85, 0, &dword_0, v34, v35, v11);

  (*(*v3 + 368))(0);
  (*(*v3 + 392))(0);
  return (*(*v3 + 416))(0);
}

void sub_B8A70(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t sub_B8AFC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if ((*(*v2 + 1176))(0xD000000000000014, 0x80000000000E6BE0, a1))
  {
    v4 = (*(*v3 + 384))();
    if (!v4 || (v5 = v4, v6 = [v4 pairingType], v5, v6 != &dword_0 + 2) || ((*(*v3 + 856))() & 1) == 0)
    {
      (*(*v2 + 368))(0);
      (*(*v2 + 392))(0);
    }

    return (*(*v3 + 424))(0);
  }

  else
  {
    sub_CD1C8(v3);
    v8 = (*(*v2 + 552))(v10);
    sub_CD0C0(v9);
    return v8(v10, 0);
  }
}

void sub_B8D00(uint64_t a1)
{
  v2 = v1;
  sub_DC40(&qword_115F08, &unk_DD4B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_DC430;
  v5 = (*(*a1 + 360))();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  v8 = sub_14B60();
  *(v4 + 64) = v8;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  v9 = (*(*a1 + 976))();
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v8;
  v11 = 0x4552444441204F4ELL;
  if (v10)
  {
    v11 = v9;
  }

  v12 = 0xEA00000000005353;
  if (v10)
  {
    v12 = v10;
  }

  *(v4 + 72) = v11;
  *(v4 + 80) = v12;
  sub_14BB4();
  v13 = sub_D7ED8();
  v14 = sub_D7E38();
  sub_D69F8("[BluetoothSettings] disconnect(from device: %@ (%@))", 52, 2, &dword_0, v13, v14, v4);

  v15 = [objc_allocWithZone(CBConnection) init];
  v16 = (*(*a1 + 264))();
  [v15 setPeerDevice:v16];

  [v15 setServiceFlags:0xFFFFFFFFLL];
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  *(v17 + 24) = a1;
  v19[4] = sub_B8FC8;
  v19[5] = v17;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_3A5C8;
  v19[3] = &unk_10A278;
  v18 = _Block_copy(v19);

  [v15 disconnectWithCompletion:v18];
  _Block_release(v18);
}

uint64_t sub_B8FC8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  result = (*(*v2 + 1176))(0xD000000000000011, 0x80000000000E6B80, a1);
  if ((result & 1) == 0)
  {
    sub_DC40(&qword_115F08, &unk_DD4B0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_DC430;
    v6 = (*(*v3 + 360))();
    v8 = v7;
    *(v5 + 56) = &type metadata for String;
    v9 = sub_14B60();
    *(v5 + 64) = v9;
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    v10 = (*(*v3 + 976))();
    *(v5 + 96) = &type metadata for String;
    *(v5 + 104) = v9;
    v12 = 0x4552444441204F4ELL;
    if (v11)
    {
      v12 = v10;
    }

    v13 = 0xEA00000000005353;
    if (v11)
    {
      v13 = v11;
    }

    *(v5 + 72) = v12;
    *(v5 + 80) = v13;
    sub_14BB4();
    v14 = sub_D7ED8();
    v15 = sub_D7E38();
    sub_D69F8("[BluetoothSettings] SUCCESS: disconnected(from: %@ (%@))", 56, 2, &dword_0, v14, v15, v5);

    (*(*v3 + 1016))(v16);
    sub_CD1C8(v3);
    v17 = (*(*v2 + 552))(v19);
    sub_CD0C0(v18);
    return v17(v19, 0);
  }

  return result;
}

void sub_B9244(uint64_t a1)
{
  v2 = v1;
  sub_DC40(&qword_115F08, &unk_DD4B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_DC430;
  if (a1)
  {
    v5 = (*(*a1 + 360))();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *(v4 + 56) = &type metadata for String;
  v8 = sub_14B60();
  v9 = v8;
  *(v4 + 64) = v8;
  v10 = 0x454D414E204F4ELL;
  if (v7)
  {
    v10 = v5;
  }

  v11 = 0xE700000000000000;
  if (v7)
  {
    v11 = v7;
  }

  *(v4 + 32) = v10;
  *(v4 + 40) = v11;
  if (a1)
  {
    v12 = (*(*a1 + 976))();
    v14 = (v4 + 72);
    *(v4 + 96) = &type metadata for String;
    *(v4 + 104) = v9;
    if (v13)
    {
      *v14 = v12;
      goto LABEL_13;
    }
  }

  else
  {
    v14 = (v4 + 72);
    *(v4 + 96) = &type metadata for String;
    *(v4 + 104) = v8;
  }

  *v14 = 0x4552444441204F4ELL;
  v13 = 0xEA00000000005353;
LABEL_13:
  *(v4 + 80) = v13;
  sub_14BB4();
  v15 = sub_D7ED8();
  v16 = sub_D7E38();
  sub_D69F8("[BluetoothSettings] pre-guard: cancelConnection(from device: %@ (%@))", 69, 2, &dword_0, v15, v16, v4);

  if (a1)
  {
    v17 = *(*a1 + 416);

    v19 = v17(v18);
    if (v19)
    {
      v20 = v19;
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_DC430;
      v22 = (*(*a1 + 360))();
      *(v21 + 56) = &type metadata for String;
      *(v21 + 64) = v9;
      *(v21 + 32) = v22;
      *(v21 + 40) = v23;
      v24 = (*(*a1 + 976))();
      *(v21 + 96) = &type metadata for String;
      *(v21 + 104) = v9;
      if (v25)
      {
        v26 = v24;
      }

      else
      {
        v26 = 0x4552444441204F4ELL;
      }

      v27 = 0xEA00000000005353;
      if (v25)
      {
        v27 = v25;
      }

      *(v21 + 72) = v26;
      *(v21 + 80) = v27;
      v28 = sub_D7ED8();
      v29 = sub_D7E38();
      sub_D69F8("[BluetoothSettings] cancelConnection(from device: %@ (%@))", 58, 2, &dword_0, v28, v29, v21);

      v30 = swift_allocObject();
      *(v30 + 16) = v2;
      *(v30 + 24) = a1;
      aBlock[4] = sub_B9640;
      aBlock[5] = v30;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_3A5C8;
      aBlock[3] = &unk_10A2C8;
      v31 = _Block_copy(aBlock);

      [v20 pairingPerformAction:3 completionHandler:v31];
      _Block_release(v31);
    }

    else
    {
    }
  }
}

uint64_t sub_B9640(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (((*(**(v1 + 16) + 1176))(0xD000000000000022, 0x80000000000E6AF0, a1) & 1) == 0)
  {
    sub_DC40(&qword_115F08, &unk_DD4B0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_DC430;
    v4 = (*(*v2 + 360))();
    v6 = v5;
    *(v3 + 56) = &type metadata for String;
    v7 = sub_14B60();
    *(v3 + 64) = v7;
    *(v3 + 32) = v4;
    *(v3 + 40) = v6;
    v8 = (*(*v2 + 976))();
    *(v3 + 96) = &type metadata for String;
    *(v3 + 104) = v7;
    v10 = 0x4552444441204F4ELL;
    if (v9)
    {
      v10 = v8;
    }

    v11 = 0xEA00000000005353;
    if (v9)
    {
      v11 = v9;
    }

    *(v3 + 72) = v10;
    *(v3 + 80) = v11;
    sub_14BB4();
    v12 = sub_D7ED8();
    v13 = sub_D7E38();
    sub_D69F8("[BluetoothSettings] SUCCESS: connection.pairingPerform(.cancel) from device: %@ (%@)", 84, 2, &dword_0, v12, v13, v3);
  }

  return (*(*v2 + 424))(0);
}

uint64_t sub_B9888(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_38A50(0, 1, 1, _swiftEmptyArrayStorage);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_38A50((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v4 + 1;
    v5 = &v2[16 * v4];
    *(v5 + 4) = 0x615020656C707041;
    *(v5 + 5) = 0xE900000000000079;
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  if ((a1 & 2) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_38A50((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    strcpy(v8 + 32, "Apple TV Setup");
    v8[47] = -18;
    if ((a1 & 4) == 0)
    {
LABEL_8:
      if ((a1 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_22;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_8;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v10 = *(v2 + 2);
  v9 = *(v2 + 3);
  if (v10 >= v9 >> 1)
  {
    v2 = sub_38A50((v9 > 1), v10 + 1, 1, v2);
  }

  *(v2 + 2) = v10 + 1;
  v11 = &v2[16 * v10];
  *(v11 + 4) = 0x6E67695320707041;
  *(v11 + 5) = 0xEB000000006E4920;
  if ((a1 & 8) == 0)
  {
LABEL_9:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_22:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_38A50((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  strcpy(v14 + 32, "Companion Link");
  v14[47] = -18;
  if ((a1 & 0x10) == 0)
  {
LABEL_10:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

LABEL_27:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v15 = *(v2 + 3);
  if (v16 >= v15 >> 1)
  {
    v2 = sub_38A50((v15 > 1), v16 + 1, 1, v2);
  }

  *(v2 + 2) = v16 + 1;
  v17 = &v2[16 * v16];
  strcpy(v17 + 32, "Home Pod Setup");
  v17[47] = -18;
  if ((a1 & 0x20) != 0)
  {
LABEL_32:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
    }

    v19 = *(v2 + 2);
    v18 = *(v2 + 3);
    if (v19 >= v18 >> 1)
    {
      v2 = sub_38A50((v18 > 1), v19 + 1, 1, v2);
    }

    *(v2 + 2) = v19 + 1;
    v20 = &v2[16 * v19];
    *(v20 + 4) = 0x7574655320534F69;
    *(v20 + 5) = 0xE900000000000070;
  }

LABEL_37:
  if ((a1 & 0x40) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
    }

    v22 = *(v2 + 2);
    v21 = *(v2 + 3);
    if (v22 >= v21 >> 1)
    {
      v2 = sub_38A50((v21 > 1), v22 + 1, 1, v2);
    }

    *(v2 + 2) = v22 + 1;
    v23 = &v2[16 * v22];
    *(v23 + 4) = 0x492079627261654ELL;
    *(v23 + 5) = 0xEB000000006F666ELL;
  }

  if ((a1 & 0x80) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
    }

    v25 = *(v2 + 2);
    v24 = *(v2 + 3);
    if (v25 >= v24 >> 1)
    {
      v2 = sub_38A50((v24 > 1), v25 + 1, 1, v2);
    }

    *(v2 + 2) = v25 + 1;
    v26 = &v2[16 * v25];
    *(v26 + 4) = 0xD000000000000010;
    *(v26 + 5) = 0x80000000000E6E80;
    if ((a1 & 0x100) == 0)
    {
LABEL_45:
      if ((a1 & 0x200) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_69;
    }
  }

  else if ((a1 & 0x100) == 0)
  {
    goto LABEL_45;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = sub_38A50((v27 > 1), v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v29 = &v2[16 * v28];
  strcpy(v29 + 32, "Remote Display");
  v29[47] = -18;
  if ((a1 & 0x200) == 0)
  {
LABEL_46:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_74;
  }

LABEL_69:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v31 = *(v2 + 2);
  v30 = *(v2 + 3);
  if (v31 >= v30 >> 1)
  {
    v2 = sub_38A50((v30 > 1), v31 + 1, 1, v2);
  }

  *(v2 + 2) = v31 + 1;
  v32 = &v2[16 * v31];
  *(v32 + 4) = 0x70655220786F7250;
  *(v32 + 5) = 0xEB00000000726961;
  if ((a1 & 0x400) == 0)
  {
LABEL_47:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_79;
  }

LABEL_74:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v34 = *(v2 + 2);
  v33 = *(v2 + 3);
  if (v34 >= v33 >> 1)
  {
    v2 = sub_38A50((v33 > 1), v34 + 1, 1, v2);
  }

  *(v2 + 2) = v34 + 1;
  v35 = &v2[16 * v34];
  *(v35 + 4) = 0x7541206572616853;
  *(v35 + 5) = 0xEB000000006F6964;
  if ((a1 & 0x800) == 0)
  {
LABEL_48:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_84;
  }

LABEL_79:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v37 = *(v2 + 2);
  v36 = *(v2 + 3);
  if (v37 >= v36 >> 1)
  {
    v2 = sub_38A50((v36 > 1), v37 + 1, 1, v2);
  }

  *(v2 + 2) = v37 + 1;
  v38 = &v2[16 * v37];
  *(v38 + 4) = 0xD000000000000010;
  *(v38 + 5) = 0x80000000000E6E60;
  if ((a1 & 0x1000) == 0)
  {
LABEL_49:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_89;
  }

LABEL_84:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v40 = *(v2 + 2);
  v39 = *(v2 + 3);
  if (v40 >= v39 >> 1)
  {
    v2 = sub_38A50((v39 > 1), v40 + 1, 1, v2);
  }

  *(v2 + 2) = v40 + 1;
  v41 = &v2[16 * v40];
  *(v41 + 4) = 0x7574655320414857;
  *(v41 + 5) = 0xE900000000000070;
  if ((a1 & 0x2000) == 0)
  {
LABEL_50:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_94;
  }

LABEL_89:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v43 = *(v2 + 2);
  v42 = *(v2 + 3);
  if (v43 >= v42 >> 1)
  {
    v2 = sub_38A50((v42 > 1), v43 + 1, 1, v2);
  }

  *(v2 + 2) = v43 + 1;
  v44 = &v2[16 * v43];
  strcpy(v44 + 32, "WiFi Password");
  *(v44 + 23) = -4864;
  if ((a1 & 0x4000) == 0)
  {
LABEL_51:
    if ((a1 & 0x8000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_99;
  }

LABEL_94:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v46 = *(v2 + 2);
  v45 = *(v2 + 3);
  if (v46 >= v45 >> 1)
  {
    v2 = sub_38A50((v45 > 1), v46 + 1, 1, v2);
  }

  *(v2 + 2) = v46 + 1;
  v47 = &v2[16 * v46];
  *(v47 + 4) = 0x7075746553205857;
  *(v47 + 5) = 0xE800000000000000;
  if ((a1 & 0x8000) == 0)
  {
LABEL_52:
    if ((a1 & 0x10000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_104;
  }

LABEL_99:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v49 = *(v2 + 2);
  v48 = *(v2 + 3);
  if (v49 >= v48 >> 1)
  {
    v2 = sub_38A50((v48 > 1), v49 + 1, 1, v2);
  }

  *(v2 + 2) = v49 + 1;
  v50 = &v2[16 * v49];
  *(v50 + 4) = 0x7574617453205857;
  *(v50 + 5) = 0xE900000000000073;
  if ((a1 & 0x10000) == 0)
  {
LABEL_53:
    if ((a1 & 0x20000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_109;
  }

LABEL_104:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v52 = *(v2 + 2);
  v51 = *(v2 + 3);
  if (v52 >= v51 >> 1)
  {
    v2 = sub_38A50((v51 > 1), v52 + 1, 1, v2);
  }

  *(v2 + 2) = v52 + 1;
  v53 = &v2[16 * v52];
  strcpy(v53 + 32, "Object Setup");
  v53[45] = 0;
  *(v53 + 23) = -5120;
  if ((a1 & 0x20000) == 0)
  {
LABEL_54:
    if ((a1 & 0x40000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_114;
  }

LABEL_109:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v55 = *(v2 + 2);
  v54 = *(v2 + 3);
  if (v55 >= v54 >> 1)
  {
    v2 = sub_38A50((v54 > 1), v55 + 1, 1, v2);
  }

  *(v2 + 2) = v55 + 1;
  v56 = &v2[16 * v55];
  strcpy(v56 + 32, "Remote Pairing");
  v56[47] = -18;
  if ((a1 & 0x40000) == 0)
  {
LABEL_55:
    if ((a1 & 0x80000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_119;
  }

LABEL_114:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v58 = *(v2 + 2);
  v57 = *(v2 + 3);
  if (v58 >= v57 >> 1)
  {
    v2 = sub_38A50((v57 > 1), v58 + 1, 1, v2);
  }

  *(v2 + 2) = v58 + 1;
  v59 = &v2[16 * v58];
  *(v59 + 4) = 0xD000000000000013;
  *(v59 + 5) = 0x80000000000E6E40;
  if ((a1 & 0x80000) == 0)
  {
LABEL_56:
    if ((a1 & 0x100000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_124;
  }

LABEL_119:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v61 = *(v2 + 2);
  v60 = *(v2 + 3);
  if (v61 >= v60 >> 1)
  {
    v2 = sub_38A50((v60 > 1), v61 + 1, 1, v2);
  }

  *(v2 + 2) = v61 + 1;
  v62 = &v2[16 * v61];
  strcpy(v62 + 32, "Nearby Action");
  *(v62 + 23) = -4864;
  if ((a1 & 0x100000) == 0)
  {
LABEL_57:
    if ((a1 & 0x200000) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_129;
  }

LABEL_124:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v64 = *(v2 + 2);
  v63 = *(v2 + 3);
  if (v64 >= v63 >> 1)
  {
    v2 = sub_38A50((v63 > 1), v64 + 1, 1, v2);
  }

  *(v2 + 2) = v64 + 1;
  v65 = &v2[16 * v64];
  strcpy(v65 + 32, "Passive RSSI");
  v65[45] = 0;
  *(v65 + 23) = -5120;
  if ((a1 & 0x200000) != 0)
  {
LABEL_129:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
    }

    v67 = *(v2 + 2);
    v66 = *(v2 + 3);
    if (v67 >= v66 >> 1)
    {
      v2 = sub_38A50((v66 > 1), v67 + 1, 1, v2);
    }

    *(v2 + 2) = v67 + 1;
    v68 = &v2[16 * v67];
    *(v68 + 4) = 0x697463656E6E6F43;
    *(v68 + 5) = 0xEB00000000736E6FLL;
  }

LABEL_134:
  if ((a1 & 0x400000) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
    }

    v70 = *(v2 + 2);
    v69 = *(v2 + 3);
    if (v70 >= v69 >> 1)
    {
      v2 = sub_38A50((v69 > 1), v70 + 1, 1, v2);
    }

    *(v2 + 2) = v70 + 1;
    v71 = &v2[16 * v70];
    *(v71 + 4) = 0x2074694B656D6F48;
    *(v71 + 5) = 0xEA00000000003156;
    if ((a1 & 0x800000) == 0)
    {
LABEL_136:
      if ((a1 & 0x1000000) == 0)
      {
        goto LABEL_153;
      }

      goto LABEL_148;
    }
  }

  else if ((a1 & 0x800000) == 0)
  {
    goto LABEL_136;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v73 = *(v2 + 2);
  v72 = *(v2 + 3);
  if (v73 >= v72 >> 1)
  {
    v2 = sub_38A50((v72 > 1), v73 + 1, 1, v2);
  }

  *(v2 + 2) = v73 + 1;
  v74 = &v2[16 * v73];
  *(v74 + 4) = 0x676E6972696150;
  *(v74 + 5) = 0xE700000000000000;
  if ((a1 & 0x1000000) != 0)
  {
LABEL_148:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
    }

    v76 = *(v2 + 2);
    v75 = *(v2 + 3);
    if (v76 >= v75 >> 1)
    {
      v2 = sub_38A50((v75 > 1), v76 + 1, 1, v2);
    }

    *(v2 + 2) = v76 + 1;
    v77 = &v2[16 * v76];
    *(v77 + 4) = 0x2074694B656D6F48;
    *(v77 + 5) = 0xEA00000000003256;
  }

LABEL_153:
  if ((a1 & 0x2000000) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
    }

    v79 = *(v2 + 2);
    v78 = *(v2 + 3);
    if (v79 >= v78 >> 1)
    {
      v2 = sub_38A50((v78 > 1), v79 + 1, 1, v2);
    }

    *(v2 + 2) = v79 + 1;
    v80 = &v2[16 * v79];
    *(v80 + 4) = 0x4F206E6565726353;
    *(v80 + 5) = 0xEA00000000006666;
    if ((a1 & 0x4000000) == 0)
    {
LABEL_155:
      if ((a1 & 0x8000000) == 0)
      {
        goto LABEL_156;
      }

      goto LABEL_177;
    }
  }

  else if ((a1 & 0x4000000) == 0)
  {
    goto LABEL_155;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v82 = *(v2 + 2);
  v81 = *(v2 + 3);
  if (v82 >= v81 >> 1)
  {
    v2 = sub_38A50((v81 > 1), v82 + 1, 1, v2);
  }

  *(v2 + 2) = v82 + 1;
  v83 = &v2[16 * v82];
  *(v83 + 4) = 7824718;
  *(v83 + 5) = 0xE300000000000000;
  if ((a1 & 0x8000000) == 0)
  {
LABEL_156:
    if ((a1 & 0x10000000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_182;
  }

LABEL_177:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v85 = *(v2 + 2);
  v84 = *(v2 + 3);
  if (v85 >= v84 >> 1)
  {
    v2 = sub_38A50((v84 > 1), v85 + 1, 1, v2);
  }

  *(v2 + 2) = v85 + 1;
  v86 = &v2[16 * v85];
  *(v86 + 4) = 0x6465766F6D6552;
  *(v86 + 5) = 0xE700000000000000;
  if ((a1 & 0x10000000) == 0)
  {
LABEL_157:
    if ((a1 & 0x20000000) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_187;
  }

LABEL_182:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v88 = *(v2 + 2);
  v87 = *(v2 + 3);
  if (v88 >= v87 >> 1)
  {
    v2 = sub_38A50((v87 > 1), v88 + 1, 1, v2);
  }

  *(v2 + 2) = v88 + 1;
  v89 = &v2[16 * v88];
  *(v89 + 4) = 0xD000000000000018;
  *(v89 + 5) = 0x80000000000E6E20;
  if ((a1 & 0x20000000) == 0)
  {
LABEL_158:
    if ((a1 & 0x40000000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_192;
  }

LABEL_187:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v91 = *(v2 + 2);
  v90 = *(v2 + 3);
  if (v91 >= v90 >> 1)
  {
    v2 = sub_38A50((v90 > 1), v91 + 1, 1, v2);
  }

  *(v2 + 2) = v91 + 1;
  v92 = &v2[16 * v91];
  *(v92 + 4) = 0x7365725020454C42;
  *(v92 + 5) = 0xEB00000000746E65;
  if ((a1 & 0x40000000) == 0)
  {
LABEL_159:
    if ((a1 & 0x80000000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_197;
  }

LABEL_192:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v94 = *(v2 + 2);
  v93 = *(v2 + 3);
  if (v94 >= v93 >> 1)
  {
    v2 = sub_38A50((v93 > 1), v94 + 1, 1, v2);
  }

  *(v2 + 2) = v94 + 1;
  v95 = &v2[16 * v94];
  *(v95 + 4) = 0xD000000000000016;
  *(v95 + 5) = 0x80000000000E6E00;
  if ((a1 & 0x80000000) == 0)
  {
LABEL_160:
    if ((a1 & 0x100000000) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_202;
  }

LABEL_197:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v97 = *(v2 + 2);
  v96 = *(v2 + 3);
  if (v97 >= v96 >> 1)
  {
    v2 = sub_38A50((v96 > 1), v97 + 1, 1, v2);
  }

  *(v2 + 2) = v97 + 1;
  v98 = &v2[16 * v97];
  *(v98 + 4) = 0xD000000000000011;
  *(v98 + 5) = 0x80000000000E6DE0;
  if ((a1 & 0x100000000) == 0)
  {
LABEL_161:
    if ((a1 & 0x200000000) == 0)
    {
      goto LABEL_162;
    }

    goto LABEL_207;
  }

LABEL_202:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v100 = *(v2 + 2);
  v99 = *(v2 + 3);
  if (v100 >= v99 >> 1)
  {
    v2 = sub_38A50((v99 > 1), v100 + 1, 1, v2);
  }

  *(v2 + 2) = v100 + 1;
  v101 = &v2[16 * v100];
  strcpy(v101 + 32, "HomeKit Setup");
  *(v101 + 23) = -4864;
  if ((a1 & 0x200000000) == 0)
  {
LABEL_162:
    if ((a1 & 0x400000000) == 0)
    {
      goto LABEL_163;
    }

    goto LABEL_212;
  }

LABEL_207:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v103 = *(v2 + 2);
  v102 = *(v2 + 3);
  if (v103 >= v102 >> 1)
  {
    v2 = sub_38A50((v102 > 1), v103 + 1, 1, v2);
  }

  *(v2 + 2) = v103 + 1;
  v104 = &v2[16 * v103];
  *(v104 + 4) = 1230197586;
  *(v104 + 5) = 0xE400000000000000;
  if ((a1 & 0x400000000) == 0)
  {
LABEL_163:
    if ((a1 & 0x800000000) == 0)
    {
      goto LABEL_164;
    }

    goto LABEL_217;
  }

LABEL_212:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v106 = *(v2 + 2);
  v105 = *(v2 + 3);
  if (v106 >= v105 >> 1)
  {
    v2 = sub_38A50((v105 > 1), v106 + 1, 1, v2);
  }

  *(v2 + 2) = v106 + 1;
  v107 = &v2[16 * v106];
  *(v107 + 4) = 0x656C626D65736E45;
  *(v107 + 5) = 0xE800000000000000;
  if ((a1 & 0x800000000) == 0)
  {
LABEL_164:
    if ((a1 & 0x1000000000) == 0)
    {
      goto LABEL_165;
    }

    goto LABEL_222;
  }

LABEL_217:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v109 = *(v2 + 2);
  v108 = *(v2 + 3);
  if (v109 >= v108 >> 1)
  {
    v2 = sub_38A50((v108 > 1), v109 + 1, 1, v2);
  }

  *(v2 + 2) = v109 + 1;
  v110 = &v2[16 * v109];
  *(v110 + 4) = 0x7265766F63736944;
  *(v110 + 5) = 0xEF7367616C462079;
  if ((a1 & 0x1000000000) == 0)
  {
LABEL_165:
    if ((a1 & 0x2000000000) == 0)
    {
      goto LABEL_232;
    }

    goto LABEL_227;
  }

LABEL_222:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v112 = *(v2 + 2);
  v111 = *(v2 + 3);
  if (v112 >= v111 >> 1)
  {
    v2 = sub_38A50((v111 > 1), v112 + 1, 1, v2);
  }

  *(v2 + 2) = v112 + 1;
  v113 = &v2[16 * v112];
  *(v113 + 4) = 0x796669746E656449;
  *(v113 + 5) = 0xE800000000000000;
  if ((a1 & 0x2000000000) != 0)
  {
LABEL_227:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
    }

    v115 = *(v2 + 2);
    v114 = *(v2 + 3);
    if (v115 >= v114 >> 1)
    {
      v2 = sub_38A50((v114 > 1), v115 + 1, 1, v2);
    }

    *(v2 + 2) = v115 + 1;
    v116 = &v2[16 * v115];
    *(v116 + 4) = 0x5320657669746341;
    *(v116 + 5) = 0xEB000000006E6163;
  }

LABEL_232:
  if ((a1 & 0x4000000000) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
    }

    v118 = *(v2 + 2);
    v117 = *(v2 + 3);
    if (v118 >= v117 >> 1)
    {
      v2 = sub_38A50((v117 > 1), v118 + 1, 1, v2);
    }

    *(v2 + 2) = v118 + 1;
    v119 = &v2[16 * v118];
    strcpy(v119 + 32, "AirPlay Source");
    v119[47] = -18;
    if ((a1 & 0x8000000000) == 0)
    {
LABEL_234:
      if ((a1 & 0x10000000000) == 0)
      {
        goto LABEL_235;
      }

      goto LABEL_267;
    }
  }

  else if ((a1 & 0x8000000000) == 0)
  {
    goto LABEL_234;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v121 = *(v2 + 2);
  v120 = *(v2 + 3);
  if (v121 >= v120 >> 1)
  {
    v2 = sub_38A50((v120 > 1), v121 + 1, 1, v2);
  }

  *(v2 + 2) = v121 + 1;
  v122 = &v2[16 * v121];
  strcpy(v122 + 32, "AirPlay Target");
  v122[47] = -18;
  if ((a1 & 0x10000000000) == 0)
  {
LABEL_235:
    if ((a1 & 0x20000000000) == 0)
    {
      goto LABEL_236;
    }

    goto LABEL_272;
  }

LABEL_267:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v124 = *(v2 + 2);
  v123 = *(v2 + 3);
  if (v124 >= v123 >> 1)
  {
    v2 = sub_38A50((v123 > 1), v124 + 1, 1, v2);
  }

  *(v2 + 2) = v124 + 1;
  v125 = &v2[16 * v124];
  *(v125 + 4) = 0x63532065676E6152;
  *(v125 + 5) = 0xEA00000000006E61;
  if ((a1 & 0x20000000000) == 0)
  {
LABEL_236:
    if ((a1 & 0x40000000000) == 0)
    {
      goto LABEL_237;
    }

    goto LABEL_277;
  }

LABEL_272:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v127 = *(v2 + 2);
  v126 = *(v2 + 3);
  if (v127 >= v126 >> 1)
  {
    v2 = sub_38A50((v126 > 1), v127 + 1, 1, v2);
  }

  *(v2 + 2) = v127 + 1;
  v128 = &v2[16 * v127];
  *(v128 + 4) = 0xD00000000000001BLL;
  *(v128 + 5) = 0x80000000000E6DC0;
  if ((a1 & 0x40000000000) == 0)
  {
LABEL_237:
    if ((a1 & 0x80000000000) == 0)
    {
      goto LABEL_238;
    }

    goto LABEL_282;
  }

LABEL_277:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v130 = *(v2 + 2);
  v129 = *(v2 + 3);
  if (v130 >= v129 >> 1)
  {
    v2 = sub_38A50((v129 > 1), v130 + 1, 1, v2);
  }

  *(v2 + 2) = v130 + 1;
  v131 = &v2[16 * v130];
  *(v131 + 4) = 0xD000000000000015;
  *(v131 + 5) = 0x80000000000E6DA0;
  if ((a1 & 0x80000000000) == 0)
  {
LABEL_238:
    if ((a1 & 0x100000000000) == 0)
    {
      goto LABEL_239;
    }

    goto LABEL_287;
  }

LABEL_282:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v133 = *(v2 + 2);
  v132 = *(v2 + 3);
  if (v133 >= v132 >> 1)
  {
    v2 = sub_38A50((v132 > 1), v133 + 1, 1, v2);
  }

  *(v2 + 2) = v133 + 1;
  v134 = &v2[16 * v133];
  *(v134 + 4) = 0x7475626972747441;
  *(v134 + 5) = 0xEA00000000007365;
  if ((a1 & 0x100000000000) == 0)
  {
LABEL_239:
    if ((a1 & 0x200000000000) == 0)
    {
      goto LABEL_240;
    }

    goto LABEL_292;
  }

LABEL_287:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v136 = *(v2 + 2);
  v135 = *(v2 + 3);
  if (v136 >= v135 >> 1)
  {
    v2 = sub_38A50((v135 > 1), v136 + 1, 1, v2);
  }

  *(v2 + 2) = v136 + 1;
  v137 = &v2[16 * v136];
  *(v137 + 4) = 0x686365654CLL;
  *(v137 + 5) = 0xE500000000000000;
  if ((a1 & 0x200000000000) == 0)
  {
LABEL_240:
    if ((a1 & 0x400000000000) == 0)
    {
      goto LABEL_241;
    }

    goto LABEL_297;
  }

LABEL_292:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v139 = *(v2 + 2);
  v138 = *(v2 + 3);
  if (v139 >= v138 >> 1)
  {
    v2 = sub_38A50((v138 > 1), v139 + 1, 1, v2);
  }

  *(v2 + 2) = v139 + 1;
  v140 = &v2[16 * v139];
  strcpy(v140 + 32, "Prox Control");
  v140[45] = 0;
  *(v140 + 23) = -5120;
  if ((a1 & 0x400000000000) == 0)
  {
LABEL_241:
    if ((a1 & 0x1000000000000) == 0)
    {
      goto LABEL_242;
    }

    goto LABEL_302;
  }

LABEL_297:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v142 = *(v2 + 2);
  v141 = *(v2 + 3);
  if (v142 >= v141 >> 1)
  {
    v2 = sub_38A50((v141 > 1), v142 + 1, 1, v2);
  }

  *(v2 + 2) = v142 + 1;
  v143 = &v2[16 * v142];
  *(v143 + 4) = 0x6F4820656C6F6857;
  *(v143 + 5) = 0xEA0000000000656DLL;
  if ((a1 & 0x1000000000000) == 0)
  {
LABEL_242:
    if ((a1 & 0x800000000000) == 0)
    {
      goto LABEL_243;
    }

    goto LABEL_307;
  }

LABEL_302:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v145 = *(v2 + 2);
  v144 = *(v2 + 3);
  if (v145 >= v144 >> 1)
  {
    v2 = sub_38A50((v144 > 1), v145 + 1, 1, v2);
  }

  *(v2 + 2) = v145 + 1;
  v146 = &v2[16 * v145];
  *(v146 + 4) = 0xD000000000000015;
  *(v146 + 5) = 0x80000000000E6D80;
  if ((a1 & 0x800000000000) == 0)
  {
LABEL_243:
    if ((a1 & 0x2000000000000) == 0)
    {
      goto LABEL_244;
    }

    goto LABEL_312;
  }

LABEL_307:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v148 = *(v2 + 2);
  v147 = *(v2 + 3);
  if (v148 >= v147 >> 1)
  {
    v2 = sub_38A50((v147 > 1), v148 + 1, 1, v2);
  }

  *(v2 + 2) = v148 + 1;
  v149 = &v2[16 * v148];
  *(v149 + 4) = 0x766F63655220534FLL;
  *(v149 + 5) = 0xEB00000000797265;
  if ((a1 & 0x2000000000000) == 0)
  {
LABEL_244:
    if ((a1 & 0x4000000000000) == 0)
    {
      goto LABEL_245;
    }

    goto LABEL_317;
  }

LABEL_312:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v151 = *(v2 + 2);
  v150 = *(v2 + 3);
  if (v151 >= v150 >> 1)
  {
    v2 = sub_38A50((v150 > 1), v151 + 1, 1, v2);
  }

  *(v2 + 2) = v151 + 1;
  v152 = &v2[16 * v151];
  *(v152 + 4) = 0x44494820454C42;
  *(v152 + 5) = 0xE700000000000000;
  if ((a1 & 0x4000000000000) == 0)
  {
LABEL_245:
    if ((a1 & 0x8000000000000) == 0)
    {
      goto LABEL_246;
    }

    goto LABEL_322;
  }

LABEL_317:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v154 = *(v2 + 2);
  v153 = *(v2 + 3);
  if (v154 >= v153 >> 1)
  {
    v2 = sub_38A50((v153 > 1), v154 + 1, 1, v2);
  }

  *(v2 + 2) = v154 + 1;
  v155 = &v2[16 * v154];
  *(v155 + 4) = 0x63697373616C43;
  *(v155 + 5) = 0xE700000000000000;
  if ((a1 & 0x8000000000000) == 0)
  {
LABEL_246:
    if ((a1 & 0x10000000000000) == 0)
    {
      goto LABEL_247;
    }

    goto LABEL_327;
  }

LABEL_322:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v157 = *(v2 + 2);
  v156 = *(v2 + 3);
  if (v157 >= v156 >> 1)
  {
    v2 = sub_38A50((v156 > 1), v157 + 1, 1, v2);
  }

  *(v2 + 2) = v157 + 1;
  v158 = &v2[16 * v157];
  *(v158 + 4) = 1329875270;
  *(v158 + 5) = 0xE400000000000000;
  if ((a1 & 0x10000000000000) == 0)
  {
LABEL_247:
    if ((a1 & 0x20000000000000) == 0)
    {
      goto LABEL_248;
    }

    goto LABEL_332;
  }

LABEL_327:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v160 = *(v2 + 2);
  v159 = *(v2 + 3);
  if (v160 >= v159 >> 1)
  {
    v2 = sub_38A50((v159 > 1), v160 + 1, 1, v2);
  }

  *(v2 + 2) = v160 + 1;
  v161 = &v2[16 * v160];
  *(v161 + 4) = 0xD000000000000014;
  *(v161 + 5) = 0x80000000000E6D60;
  if ((a1 & 0x20000000000000) == 0)
  {
LABEL_248:
    if ((a1 & 0x40000000000000) == 0)
    {
      goto LABEL_249;
    }

    goto LABEL_337;
  }

LABEL_332:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v163 = *(v2 + 2);
  v162 = *(v2 + 3);
  if (v163 >= v162 >> 1)
  {
    v2 = sub_38A50((v162 > 1), v163 + 1, 1, v2);
  }

  *(v2 + 2) = v163 + 1;
  v164 = &v2[16 * v163];
  *(v164 + 4) = 0x6553206863746157;
  *(v164 + 5) = 0xEB00000000707574;
  if ((a1 & 0x40000000000000) == 0)
  {
LABEL_249:
    if ((a1 & 0x80000000000000) == 0)
    {
      goto LABEL_250;
    }

    goto LABEL_342;
  }

LABEL_337:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v166 = *(v2 + 2);
  v165 = *(v2 + 3);
  if (v166 >= v165 >> 1)
  {
    v2 = sub_38A50((v165 > 1), v166 + 1, 1, v2);
  }

  *(v2 + 2) = v166 + 1;
  v167 = &v2[16 * v166];
  *(v167 + 4) = 0xD000000000000010;
  *(v167 + 5) = 0x80000000000E6D40;
  if ((a1 & 0x80000000000000) == 0)
  {
LABEL_250:
    if ((a1 & 0x100000000000000) == 0)
    {
      goto LABEL_251;
    }

    goto LABEL_347;
  }

LABEL_342:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v169 = *(v2 + 2);
  v168 = *(v2 + 3);
  if (v169 >= v168 >> 1)
  {
    v2 = sub_38A50((v168 > 1), v169 + 1, 1, v2);
  }

  *(v2 + 2) = v169 + 1;
  v170 = &v2[16 * v169];
  *(v170 + 4) = 0xD000000000000014;
  *(v170 + 5) = 0x80000000000E6D20;
  if ((a1 & 0x100000000000000) == 0)
  {
LABEL_251:
    if ((a1 & 0x200000000000000) == 0)
    {
      goto LABEL_252;
    }

    goto LABEL_352;
  }

LABEL_347:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v172 = *(v2 + 2);
  v171 = *(v2 + 3);
  if (v172 >= v171 >> 1)
  {
    v2 = sub_38A50((v171 > 1), v172 + 1, 1, v2);
  }

  *(v2 + 2) = v172 + 1;
  v173 = &v2[16 * v172];
  *(v173 + 4) = 0xD000000000000022;
  *(v173 + 5) = 0x80000000000E6CF0;
  if ((a1 & 0x200000000000000) == 0)
  {
LABEL_252:
    if ((a1 & 0x400000000000000) == 0)
    {
      goto LABEL_253;
    }

    goto LABEL_357;
  }

LABEL_352:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v175 = *(v2 + 2);
  v174 = *(v2 + 3);
  if (v175 >= v174 >> 1)
  {
    v2 = sub_38A50((v174 > 1), v175 + 1, 1, v2);
  }

  *(v2 + 2) = v175 + 1;
  v176 = &v2[16 * v175];
  *(v176 + 4) = 0xD00000000000001CLL;
  *(v176 + 5) = 0x80000000000E6CD0;
  if ((a1 & 0x400000000000000) == 0)
  {
LABEL_253:
    if ((a1 & 0x800000000000000) == 0)
    {
      goto LABEL_254;
    }

    goto LABEL_362;
  }

LABEL_357:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v178 = *(v2 + 2);
  v177 = *(v2 + 3);
  if (v178 >= v177 >> 1)
  {
    v2 = sub_38A50((v177 > 1), v178 + 1, 1, v2);
  }

  *(v2 + 2) = v178 + 1;
  v179 = &v2[16 * v178];
  *(v179 + 4) = 0x6972695320796548;
  *(v179 + 5) = 0xE800000000000000;
  if ((a1 & 0x800000000000000) == 0)
  {
LABEL_254:
    if ((a1 & 0x1000000000000000) == 0)
    {
      goto LABEL_255;
    }

    goto LABEL_367;
  }

LABEL_362:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v181 = *(v2 + 2);
  v180 = *(v2 + 3);
  if (v181 >= v180 >> 1)
  {
    v2 = sub_38A50((v180 > 1), v181 + 1, 1, v2);
  }

  *(v2 + 2) = v181 + 1;
  v182 = &v2[16 * v181];
  *(v182 + 4) = 0x6F666E49205344;
  *(v182 + 5) = 0xE700000000000000;
  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_255:
    if ((a1 & 0x2000000000000000) == 0)
    {
      goto LABEL_377;
    }

    goto LABEL_372;
  }

LABEL_367:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v184 = *(v2 + 2);
  v183 = *(v2 + 3);
  if (v184 >= v183 >> 1)
  {
    v2 = sub_38A50((v183 > 1), v184 + 1, 1, v2);
  }

  *(v2 + 2) = v184 + 1;
  v185 = &v2[16 * v184];
  *(v185 + 4) = 0x6F69746341205344;
  *(v185 + 5) = 0xE90000000000006ELL;
  if ((a1 & 0x2000000000000000) != 0)
  {
LABEL_372:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
    }

    v187 = *(v2 + 2);
    v186 = *(v2 + 3);
    if (v187 >= v186 >> 1)
    {
      v2 = sub_38A50((v186 > 1), v187 + 1, 1, v2);
    }

    *(v2 + 2) = v187 + 1;
    v188 = &v2[16 * v187];
    *(v188 + 4) = 0x7461626D6F57;
    *(v188 + 5) = 0xE600000000000000;
  }

LABEL_377:
  sub_DC40(&qword_118DF0, &qword_E3670);
  sub_BD980();
  v189 = sub_D7B98();

  return v189;
}

uint64_t sub_BB988(int a1)
{
  if (a1)
  {
    v2 = sub_38A50(0, 1, 1, _swiftEmptyArrayStorage);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_38A50((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v4 + 1;
    v5 = &v2[16 * v4];
    *(v5 + 4) = 1346584897;
    *(v5 + 5) = 0xE400000000000000;
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  if ((a1 & 2) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_38A50((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    strcpy(v8 + 32, "Magic Paired");
    v8[45] = 0;
    *(v8 + 23) = -5120;
    if ((a1 & 4) == 0)
    {
LABEL_8:
      if ((a1 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_32;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_8;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v10 = *(v2 + 2);
  v9 = *(v2 + 3);
  if (v10 >= v9 >> 1)
  {
    v2 = sub_38A50((v9 > 1), v10 + 1, 1, v2);
  }

  *(v2 + 2) = v10 + 1;
  v11 = &v2[16 * v10];
  *(v11 + 4) = 0x7541206572616853;
  *(v11 + 5) = 0xEB000000006F6964;
  if ((a1 & 8) == 0)
  {
LABEL_9:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_32:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_38A50((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 0x6572617774666F53;
  *(v14 + 5) = 0xEF656D756C6F5620;
  if ((a1 & 0x10) == 0)
  {
LABEL_10:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_42;
  }

LABEL_37:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v15 = *(v2 + 3);
  if (v16 >= v15 >> 1)
  {
    v2 = sub_38A50((v15 > 1), v16 + 1, 1, v2);
  }

  *(v2 + 2) = v16 + 1;
  v17 = &v2[16 * v16];
  *(v17 + 4) = 1229998420;
  *(v17 + 5) = 0xE400000000000000;
  if ((a1 & 0x20) == 0)
  {
LABEL_11:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_47;
  }

LABEL_42:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_38A50((v18 > 1), v19 + 1, 1, v2);
  }

  *(v2 + 2) = v19 + 1;
  v20 = &v2[16 * v19];
  *(v20 + 4) = 4543312;
  *(v20 + 5) = 0xE300000000000000;
  if ((a1 & 0x40) == 0)
  {
LABEL_12:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_52;
  }

LABEL_47:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v22 = *(v2 + 2);
  v21 = *(v2 + 3);
  if (v22 >= v21 >> 1)
  {
    v2 = sub_38A50((v21 > 1), v22 + 1, 1, v2);
  }

  *(v2 + 2) = v22 + 1;
  v23 = &v2[16 * v22];
  *(v23 + 4) = 0x774F206F69647541;
  *(v23 + 5) = 0xEB0000000072656ELL;
  if ((a1 & 0x80) == 0)
  {
LABEL_13:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_57;
  }

LABEL_52:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v25 = *(v2 + 2);
  v24 = *(v2 + 3);
  if (v25 >= v24 >> 1)
  {
    v2 = sub_38A50((v24 > 1), v25 + 1, 1, v2);
  }

  *(v2 + 2) = v25 + 1;
  v26 = &v2[16 * v25];
  strcpy(v26 + 32, "Same Account");
  v26[45] = 0;
  *(v26 + 23) = -5120;
  if ((a1 & 0x100) == 0)
  {
LABEL_14:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_62;
  }

LABEL_57:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = sub_38A50((v27 > 1), v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v29 = &v2[16 * v28];
  *(v29 + 4) = 0x796C696D6146;
  *(v29 + 5) = 0xE600000000000000;
  if ((a1 & 0x200) == 0)
  {
LABEL_15:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_67;
  }

LABEL_62:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v31 = *(v2 + 2);
  v30 = *(v2 + 3);
  if (v31 >= v30 >> 1)
  {
    v2 = sub_38A50((v30 > 1), v31 + 1, 1, v2);
  }

  *(v2 + 2) = v31 + 1;
  v32 = &v2[16 * v31];
  *(v32 + 4) = 0x4820646572616853;
  *(v32 + 5) = 0xEB00000000656D6FLL;
  if ((a1 & 0x400) == 0)
  {
LABEL_16:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_72;
  }

LABEL_67:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v34 = *(v2 + 2);
  v33 = *(v2 + 3);
  if (v34 >= v33 >> 1)
  {
    v2 = sub_38A50((v33 > 1), v34 + 1, 1, v2);
  }

  *(v2 + 2) = v34 + 1;
  v35 = &v2[16 * v34];
  *(v35 + 4) = 0x646E65697246;
  *(v35 + 5) = 0xE600000000000000;
  if ((a1 & 0x800) == 0)
  {
LABEL_17:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_77;
  }

LABEL_72:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v37 = *(v2 + 2);
  v36 = *(v2 + 3);
  if (v37 >= v36 >> 1)
  {
    v2 = sub_38A50((v36 > 1), v37 + 1, 1, v2);
  }

  *(v2 + 2) = v37 + 1;
  v38 = &v2[16 * v37];
  strcpy(v38 + 32, "System Paired");
  *(v38 + 23) = -4864;
  if ((a1 & 0x1000) == 0)
  {
LABEL_18:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_82;
  }

LABEL_77:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v40 = *(v2 + 2);
  v39 = *(v2 + 3);
  if (v40 >= v39 >> 1)
  {
    v2 = sub_38A50((v39 > 1), v40 + 1, 1, v2);
  }

  *(v2 + 2) = v40 + 1;
  v41 = &v2[16 * v40];
  *(v41 + 4) = 0x6E6564646948;
  *(v41 + 5) = 0xE600000000000000;
  if ((a1 & 0x2000) == 0)
  {
LABEL_19:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_87;
  }

LABEL_82:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v43 = *(v2 + 2);
  v42 = *(v2 + 3);
  if (v43 >= v42 >> 1)
  {
    v2 = sub_38A50((v42 > 1), v43 + 1, 1, v2);
  }

  *(v2 + 2) = v43 + 1;
  v44 = &v2[16 * v43];
  *(v44 + 4) = 0x7269615020454C42;
  *(v44 + 5) = 0xEA00000000006465;
  if ((a1 & 0x4000) == 0)
  {
LABEL_20:
    if ((a1 & 0x8000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_92;
  }

LABEL_87:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v46 = *(v2 + 2);
  v45 = *(v2 + 3);
  if (v46 >= v45 >> 1)
  {
    v2 = sub_38A50((v45 > 1), v46 + 1, 1, v2);
  }

  *(v2 + 2) = v46 + 1;
  v47 = &v2[16 * v46];
  strcpy(v47 + 32, "Classic Paired");
  v47[47] = -18;
  if ((a1 & 0x8000) != 0)
  {
LABEL_92:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
    }

    v49 = *(v2 + 2);
    v48 = *(v2 + 3);
    if (v49 >= v48 >> 1)
    {
      v2 = sub_38A50((v48 > 1), v49 + 1, 1, v2);
    }

    *(v2 + 2) = v49 + 1;
    v50 = &v2[16 * v49];
    strcpy(v50 + 32, "Cloud Paired");
    v50[45] = 0;
    *(v50 + 23) = -5120;
  }

LABEL_97:
  if ((a1 & 0x10000) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
    }

    v52 = *(v2 + 2);
    v51 = *(v2 + 3);
    if (v52 >= v51 >> 1)
    {
      v2 = sub_38A50((v51 > 1), v52 + 1, 1, v2);
    }

    *(v2 + 2) = v52 + 1;
    v53 = &v2[16 * v52];
    *(v53 + 4) = 0xD000000000000011;
    *(v53 + 5) = 0x80000000000E6F80;
    if ((a1 & 0x20000) == 0)
    {
LABEL_99:
      if ((a1 & 0x40000) == 0)
      {
        goto LABEL_100;
      }

      goto LABEL_124;
    }
  }

  else if ((a1 & 0x20000) == 0)
  {
    goto LABEL_99;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v55 = *(v2 + 2);
  v54 = *(v2 + 3);
  if (v55 >= v54 >> 1)
  {
    v2 = sub_38A50((v54 > 1), v55 + 1, 1, v2);
  }

  *(v2 + 2) = v55 + 1;
  v56 = &v2[16 * v55];
  *(v56 + 4) = 0xD000000000000010;
  *(v56 + 5) = 0x80000000000E6F60;
  if ((a1 & 0x40000) == 0)
  {
LABEL_100:
    if ((a1 & 0x80000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_129;
  }

LABEL_124:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v58 = *(v2 + 2);
  v57 = *(v2 + 3);
  if (v58 >= v57 >> 1)
  {
    v2 = sub_38A50((v57 > 1), v58 + 1, 1, v2);
  }

  *(v2 + 2) = v58 + 1;
  v59 = &v2[16 * v58];
  strcpy(v59 + 32, "User Connected");
  v59[47] = -18;
  if ((a1 & 0x80000) == 0)
  {
LABEL_101:
    if ((a1 & 0x100000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_134;
  }

LABEL_129:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v61 = *(v2 + 2);
  v60 = *(v2 + 3);
  if (v61 >= v60 >> 1)
  {
    v2 = sub_38A50((v60 > 1), v61 + 1, 1, v2);
  }

  *(v2 + 2) = v61 + 1;
  v62 = &v2[16 * v61];
  *(v62 + 4) = 0x6573754620766544;
  *(v62 + 5) = 0xE900000000000064;
  if ((a1 & 0x100000) == 0)
  {
LABEL_102:
    if ((a1 & 0x200000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_139;
  }

LABEL_134:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v64 = *(v2 + 2);
  v63 = *(v2 + 3);
  if (v64 >= v63 >> 1)
  {
    v2 = sub_38A50((v63 > 1), v64 + 1, 1, v2);
  }

  *(v2 + 2) = v64 + 1;
  v65 = &v2[16 * v64];
  *(v65 + 4) = 0xD000000000000012;
  *(v65 + 5) = 0x80000000000E6F40;
  if ((a1 & 0x200000) == 0)
  {
LABEL_103:
    if ((a1 & 0x400000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_144;
  }

LABEL_139:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v67 = *(v2 + 2);
  v66 = *(v2 + 3);
  if (v67 >= v66 >> 1)
  {
    v2 = sub_38A50((v66 > 1), v67 + 1, 1, v2);
  }

  *(v2 + 2) = v67 + 1;
  v68 = &v2[16 * v67];
  *(v68 + 4) = 0x6C6172746E6543;
  *(v68 + 5) = 0xE700000000000000;
  if ((a1 & 0x400000) == 0)
  {
LABEL_104:
    if ((a1 & 0x800000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_149;
  }

LABEL_144:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v70 = *(v2 + 2);
  v69 = *(v2 + 3);
  if (v70 >= v69 >> 1)
  {
    v2 = sub_38A50((v69 > 1), v70 + 1, 1, v2);
  }

  *(v2 + 2) = v70 + 1;
  v71 = &v2[16 * v70];
  *(v71 + 4) = 0x756F522072657355;
  *(v71 + 5) = 0xEB00000000646574;
  if ((a1 & 0x800000) == 0)
  {
LABEL_105:
    if ((a1 & 0x1000000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_154;
  }

LABEL_149:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v73 = *(v2 + 2);
  v72 = *(v2 + 3);
  if (v73 >= v72 >> 1)
  {
    v2 = sub_38A50((v72 > 1), v73 + 1, 1, v2);
  }

  *(v2 + 2) = v73 + 1;
  v74 = &v2[16 * v73];
  strcpy(v74 + 32, "Spatial Audio");
  *(v74 + 23) = -4864;
  if ((a1 & 0x1000000) == 0)
  {
LABEL_106:
    if ((a1 & 0x2000000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_159;
  }

LABEL_154:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v76 = *(v2 + 2);
  v75 = *(v2 + 3);
  if (v76 >= v75 >> 1)
  {
    v2 = sub_38A50((v75 > 1), v76 + 1, 1, v2);
  }

  *(v2 + 2) = v76 + 1;
  v77 = &v2[16 * v76];
  *(v77 + 4) = 0xD000000000000014;
  *(v77 + 5) = 0x80000000000E6F20;
  if ((a1 & 0x2000000) == 0)
  {
LABEL_107:
    if ((a1 & 0x4000000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_164;
  }

LABEL_159:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v79 = *(v2 + 2);
  v78 = *(v2 + 3);
  if (v79 >= v78 >> 1)
  {
    v2 = sub_38A50((v78 > 1), v79 + 1, 1, v2);
  }

  *(v2 + 2) = v79 + 1;
  v80 = &v2[16 * v79];
  strcpy(v80 + 32, "Guest Paired");
  v80[45] = 0;
  *(v80 + 23) = -5120;
  if ((a1 & 0x4000000) == 0)
  {
LABEL_108:
    if ((a1 & 0x8000000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_169;
  }

LABEL_164:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v82 = *(v2 + 2);
  v81 = *(v2 + 3);
  if (v82 >= v81 >> 1)
  {
    v2 = sub_38A50((v81 > 1), v82 + 1, 1, v2);
  }

  *(v2 + 2) = v82 + 1;
  v83 = &v2[16 * v82];
  *(v83 + 4) = 4410945;
  *(v83 + 5) = 0xE300000000000000;
  if ((a1 & 0x8000000) == 0)
  {
LABEL_109:
    if ((a1 & 0x10000000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_174;
  }

LABEL_169:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v85 = *(v2 + 2);
  v84 = *(v2 + 3);
  if (v85 >= v84 >> 1)
  {
    v2 = sub_38A50((v84 > 1), v85 + 1, 1, v2);
  }

  *(v2 + 2) = v85 + 1;
  v86 = &v2[16 * v85];
  strcpy(v86 + 32, "Transparency");
  v86[45] = 0;
  *(v86 + 23) = -5120;
  if ((a1 & 0x10000000) == 0)
  {
LABEL_110:
    if ((a1 & 0x20000000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_179;
  }

LABEL_174:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v88 = *(v2 + 2);
  v87 = *(v2 + 3);
  if (v88 >= v87 >> 1)
  {
    v2 = sub_38A50((v87 > 1), v88 + 1, 1, v2);
  }

  *(v2 + 2) = v88 + 1;
  v89 = &v2[16 * v88];
  *(v89 + 4) = 0xD000000000000015;
  *(v89 + 5) = 0x80000000000E6F00;
  if ((a1 & 0x20000000) == 0)
  {
LABEL_111:
    if ((a1 & 0x40000000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_184;
  }

LABEL_179:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v91 = *(v2 + 2);
  v90 = *(v2 + 3);
  if (v91 >= v90 >> 1)
  {
    v2 = sub_38A50((v90 > 1), v91 + 1, 1, v2);
  }

  *(v2 + 2) = v91 + 1;
  v92 = &v2[16 * v91];
  *(v92 + 4) = 0xD00000000000001CLL;
  *(v92 + 5) = 0x80000000000E6EE0;
  if ((a1 & 0x40000000) == 0)
  {
LABEL_112:
    if ((a1 & 0x80000000) == 0)
    {
      goto LABEL_194;
    }

    goto LABEL_189;
  }

LABEL_184:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v94 = *(v2 + 2);
  v93 = *(v2 + 3);
  if (v94 >= v93 >> 1)
  {
    v2 = sub_38A50((v93 > 1), v94 + 1, 1, v2);
  }

  *(v2 + 2) = v94 + 1;
  v95 = &v2[16 * v94];
  *(v95 + 4) = 0xD000000000000014;
  *(v95 + 5) = 0x80000000000E6EC0;
  if (a1 < 0)
  {
LABEL_189:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
    }

    v97 = *(v2 + 2);
    v96 = *(v2 + 3);
    if (v97 >= v96 >> 1)
    {
      v2 = sub_38A50((v96 > 1), v97 + 1, 1, v2);
    }

    *(v2 + 2) = v97 + 1;
    v98 = &v2[16 * v97];
    *(v98 + 4) = 0xD000000000000011;
    *(v98 + 5) = 0x80000000000E6EA0;
  }

LABEL_194:
  sub_DC40(&qword_118DF0, &qword_E3670);
  sub_BD980();
  v99 = sub_D7B98();

  return v99;
}

uint64_t sub_BCAD0(int a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = _swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_38A50(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_38A50((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 5260872;
  *(v5 + 5) = 0xE300000000000000;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_38A50((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x6F4220656E6F6850;
    *(v8 + 5) = 0xEA00000000006B6FLL;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_38A50((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 5460039;
    *(v11 + 5) = 0xE300000000000000;
    if ((a1 & 8) == 0)
    {
LABEL_14:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_33;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_38A50((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 0x5043525641;
  *(v14 + 5) = 0xE500000000000000;
  if ((a1 & 0x10) == 0)
  {
LABEL_15:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_33:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v15 = *(v2 + 3);
  if (v16 >= v15 >> 1)
  {
    v2 = sub_38A50((v15 > 1), v16 + 1, 1, v2);
  }

  *(v2 + 2) = v16 + 1;
  v17 = &v2[16 * v16];
  *(v17 + 4) = 1346646593;
  *(v17 + 5) = 0xE400000000000000;
  if ((a1 & 0x20) == 0)
  {
LABEL_16:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_38:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_38A50((v18 > 1), v19 + 1, 1, v2);
  }

  *(v2 + 2) = v19 + 1;
  v20 = &v2[16 * v19];
  *(v20 + 4) = 4475208;
  *(v20 + 5) = 0xE300000000000000;
  if ((a1 & 0x40) == 0)
  {
LABEL_17:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_43:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v22 = *(v2 + 2);
  v21 = *(v2 + 3);
  if (v22 >= v21 >> 1)
  {
    v2 = sub_38A50((v21 > 1), v22 + 1, 1, v2);
  }

  *(v2 + 2) = v22 + 1;
  v23 = &v2[16 * v22];
  *(v23 + 4) = 0x726F736E6553;
  *(v23 + 5) = 0xE600000000000000;
  if ((a1 & 0x80) == 0)
  {
LABEL_18:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_53;
  }

LABEL_48:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v25 = *(v2 + 2);
  v24 = *(v2 + 3);
  if (v25 >= v24 >> 1)
  {
    v2 = sub_38A50((v24 > 1), v25 + 1, 1, v2);
  }

  *(v2 + 2) = v25 + 1;
  v26 = &v2[16 * v25];
  strcpy(v26 + 32, "Wireless iAP");
  v26[45] = 0;
  *(v26 + 23) = -5120;
  if ((a1 & 0x100) == 0)
  {
LABEL_19:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_58;
  }

LABEL_53:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = sub_38A50((v27 > 1), v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v29 = &v2[16 * v28];
  *(v29 + 4) = 0x726168532074654ELL;
  *(v29 + 5) = 0xEB00000000676E69;
  if ((a1 & 0x200) == 0)
  {
LABEL_20:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_63;
  }

LABEL_58:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v31 = *(v2 + 2);
  v30 = *(v2 + 3);
  if (v31 >= v30 >> 1)
  {
    v2 = sub_38A50((v30 > 1), v31 + 1, 1, v2);
  }

  *(v2 + 2) = v31 + 1;
  v32 = &v2[16 * v31];
  *(v32 + 4) = 7364941;
  *(v32 + 5) = 0xE300000000000000;
  if ((a1 & 0x400) == 0)
  {
LABEL_21:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_68;
  }

LABEL_63:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v34 = *(v2 + 2);
  v33 = *(v2 + 3);
  if (v34 >= v33 >> 1)
  {
    v2 = sub_38A50((v33 > 1), v34 + 1, 1, v2);
  }

  *(v2 + 2) = v34 + 1;
  v35 = &v2[16 * v34];
  *(v35 + 4) = 0x6F72687473736150;
  *(v35 + 5) = 0xEB00000000686775;
  if ((a1 & 0x800) != 0)
  {
LABEL_68:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
    }

    v37 = *(v2 + 2);
    v36 = *(v2 + 3);
    if (v37 >= v36 >> 1)
    {
      v2 = sub_38A50((v36 > 1), v37 + 1, 1, v2);
    }

    *(v2 + 2) = v37 + 1;
    v38 = &v2[16 * v37];
    *(v38 + 4) = 0x676E696D6147;
    *(v38 + 5) = 0xE600000000000000;
  }

LABEL_73:
  if ((a1 & 0x1000) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
    }

    v40 = *(v2 + 2);
    v39 = *(v2 + 3);
    if (v40 >= v39 >> 1)
    {
      v2 = sub_38A50((v39 > 1), v40 + 1, 1, v2);
    }

    *(v2 + 2) = v40 + 1;
    v41 = &v2[16 * v40];
    *(v41 + 4) = 0xD000000000000010;
    *(v41 + 5) = 0x80000000000E7000;
    if ((a1 & 0x2000) == 0)
    {
LABEL_75:
      if ((a1 & 0x4000) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_97;
    }
  }

  else if ((a1 & 0x2000) == 0)
  {
    goto LABEL_75;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v43 = *(v2 + 2);
  v42 = *(v2 + 3);
  if (v43 >= v42 >> 1)
  {
    v2 = sub_38A50((v42 > 1), v43 + 1, 1, v2);
  }

  *(v2 + 2) = v43 + 1;
  v44 = &v2[16 * v43];
  *(v44 + 4) = 0x656C6C69617242;
  *(v44 + 5) = 0xE700000000000000;
  if ((a1 & 0x4000) == 0)
  {
LABEL_76:
    if ((a1 & 0x8000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_102;
  }

LABEL_97:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v46 = *(v2 + 2);
  v45 = *(v2 + 3);
  if (v46 >= v45 >> 1)
  {
    v2 = sub_38A50((v45 > 1), v46 + 1, 1, v2);
  }

  *(v2 + 2) = v46 + 1;
  v47 = &v2[16 * v46];
  *(v47 + 4) = 0xD000000000000014;
  *(v47 + 5) = 0x80000000000E6FE0;
  if ((a1 & 0x8000) == 0)
  {
LABEL_77:
    if ((a1 & 0x10000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_107;
  }

LABEL_102:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v49 = *(v2 + 2);
  v48 = *(v2 + 3);
  if (v49 >= v48 >> 1)
  {
    v2 = sub_38A50((v48 > 1), v49 + 1, 1, v2);
  }

  *(v2 + 2) = v49 + 1;
  v50 = &v2[16 * v49];
  strcpy(v50 + 32, "LE GATT Client");
  v50[47] = -18;
  if ((a1 & 0x10000) == 0)
  {
LABEL_78:
    if ((a1 & 0x20000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_112;
  }

LABEL_107:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v52 = *(v2 + 2);
  v51 = *(v2 + 3);
  if (v52 >= v51 >> 1)
  {
    v2 = sub_38A50((v51 > 1), v52 + 1, 1, v2);
  }

  *(v2 + 2) = v52 + 1;
  v53 = &v2[16 * v52];
  *(v53 + 4) = 4277580;
  *(v53 + 5) = 0xE300000000000000;
  if ((a1 & 0x20000) == 0)
  {
LABEL_79:
    if ((a1 & 0x40000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_117;
  }

LABEL_112:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v55 = *(v2 + 2);
  v54 = *(v2 + 3);
  if (v55 >= v54 >> 1)
  {
    v2 = sub_38A50((v54 > 1), v55 + 1, 1, v2);
  }

  *(v2 + 2) = v55 + 1;
  v56 = &v2[16 * v55];
  *(v56 + 4) = 0xD000000000000011;
  *(v56 + 5) = 0x80000000000E6FC0;
  if ((a1 & 0x40000) == 0)
  {
LABEL_80:
    if ((a1 & 0x80000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_122;
  }

LABEL_117:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v58 = *(v2 + 2);
  v57 = *(v2 + 3);
  if (v58 >= v57 >> 1)
  {
    v2 = sub_38A50((v57 > 1), v58 + 1, 1, v2);
  }

  *(v2 + 2) = v58 + 1;
  v59 = &v2[16 * v58];
  *(v59 + 4) = 0xD000000000000010;
  *(v59 + 5) = 0x80000000000E6FA0;
  if ((a1 & 0x80000) == 0)
  {
LABEL_81:
    if ((a1 & 0x100000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_127;
  }

LABEL_122:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v61 = *(v2 + 2);
  v60 = *(v2 + 3);
  if (v61 >= v60 >> 1)
  {
    v2 = sub_38A50((v60 > 1), v61 + 1, 1, v2);
  }

  *(v2 + 2) = v61 + 1;
  v62 = &v2[16 * v61];
  *(v62 + 4) = 1346584897;
  *(v62 + 5) = 0xE400000000000000;
  if ((a1 & 0x100000) == 0)
  {
LABEL_82:
    if ((a1 & 0x200000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_132;
  }

LABEL_127:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v64 = *(v2 + 2);
  v63 = *(v2 + 3);
  if (v64 >= v63 >> 1)
  {
    v2 = sub_38A50((v63 > 1), v64 + 1, 1, v2);
  }

  *(v2 + 2) = v64 + 1;
  v65 = &v2[16 * v64];
  *(v65 + 4) = 1414807879;
  *(v65 + 5) = 0xE400000000000000;
  if ((a1 & 0x200000) == 0)
  {
LABEL_83:
    if ((a1 & 0x400000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_137;
  }

LABEL_132:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v67 = *(v2 + 2);
  v66 = *(v2 + 3);
  if (v67 >= v66 >> 1)
  {
    v2 = sub_38A50((v66 > 1), v67 + 1, 1, v2);
  }

  *(v2 + 2) = v67 + 1;
  v68 = &v2[16 * v67];
  *(v68 + 4) = 0x50206C6169726553;
  *(v68 + 5) = 0xEB0000000074726FLL;
  if ((a1 & 0x400000) == 0)
  {
LABEL_84:
    if ((a1 & 0x800000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_142;
  }

LABEL_137:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v70 = *(v2 + 2);
  v69 = *(v2 + 3);
  if (v70 >= v69 >> 1)
  {
    v2 = sub_38A50((v69 > 1), v70 + 1, 1, v2);
  }

  *(v2 + 2) = v70 + 1;
  v71 = &v2[16 * v70];
  *(v71 + 4) = 4541506;
  *(v71 + 5) = 0xE300000000000000;
  if ((a1 & 0x800000) == 0)
  {
LABEL_85:
    if ((a1 & 0x1000000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_147;
  }

LABEL_142:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
  }

  v73 = *(v2 + 2);
  v72 = *(v2 + 3);
  if (v73 >= v72 >> 1)
  {
    v2 = sub_38A50((v72 > 1), v73 + 1, 1, v2);
  }

  *(v2 + 2) = v73 + 1;
  v74 = &v2[16 * v73];
  *(v74 + 4) = 4997953;
  *(v74 + 5) = 0xE300000000000000;
  if ((a1 & 0x1000000) != 0)
  {
LABEL_147:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
    }

    v76 = *(v2 + 2);
    v75 = *(v2 + 3);
    if (v76 >= v75 >> 1)
    {
      v2 = sub_38A50((v75 > 1), v76 + 1, 1, v2);
    }

    *(v2 + 2) = v76 + 1;
    v77 = &v2[16 * v76];
    *(v77 + 4) = 5194579;
    *(v77 + 5) = 0xE300000000000000;
    if (a1 == -1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_38A50(0, *(v2 + 2) + 1, 1, v2);
      }

      v79 = *(v2 + 2);
      v78 = *(v2 + 3);
      if (v79 >= v78 >> 1)
      {
        v2 = sub_38A50((v78 > 1), v79 + 1, 1, v2);
      }

      *(v2 + 2) = v79 + 1;
      v80 = &v2[16 * v79];
      *(v80 + 4) = 7105601;
      *(v80 + 5) = 0xE300000000000000;
    }
  }

LABEL_157:
  sub_DC40(&qword_118DF0, &qword_E3670);
  sub_BD980();
  v81 = sub_D7B98();

  return v81;
}

uint64_t sub_BD884(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return 0x6465767265736572;
    }

    if (a1 != 4)
    {
      if (a1 == 5)
      {
        return 0x4F79656B73736170;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0xD000000000000011;
  }

  else
  {
    if (!a1)
    {
      return 0x6B726F577473756ALL;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 0x4579656B73736170;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x4479656B73736170;
  }
}

unint64_t sub_BD980()
{
  result = qword_119648;
  if (!qword_119648)
  {
    sub_EBC0(&qword_118DF0, &qword_E3670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_119648);
  }

  return result;
}

uint64_t sub_BDA34@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v39 = a2;
  v40 = a1;
  v4 = sub_D6F68();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_DC40(&qword_119310, &qword_E2850);
  __chkstk_darwin(v7 - 8);
  v9 = &v36 - v8;
  v10 = sub_D7308();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_D76F8();
  v15 = (a3 + *(sub_DC40(&qword_119650, &unk_E3018) + 36));
  v16 = *(sub_DC40(&qword_117B50, qword_DF870) + 28);
  v17 = enum case for Image.Scale.small(_:);
  v18 = sub_D7748();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = swift_getKeyPath();
  *a3 = v14;
  (*(v11 + 104))(v13, enum case for Font.TextStyle.body(_:), v10);
  v19 = sub_D7268();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  sub_D7298();
  v20 = sub_D72B8();
  sub_BDE90(v9);
  (*(v11 + 8))(v13, v10);
  KeyPath = swift_getKeyPath();
  v22 = (a3 + *(sub_DC40(&qword_119658, &qword_E3088) + 36));
  *v22 = KeyPath;
  v22[1] = v20;
  LODWORD(KeyPath) = sub_D7188();
  *(a3 + *(sub_DC40(&qword_119660, &qword_E3090) + 36)) = KeyPath;
  *(a3 + *(sub_DC40(&qword_119668, &qword_E3098) + 36)) = 1;
  v23 = sub_D7208();
  if ((v39 & 1) == 0)
  {
    v24 = v40;

    sub_D7E28();
    v25 = sub_D71C8();
    sub_D6A08();

    sub_D6F58();
    swift_getAtKeyPath();
    sub_6A6FC(v24, 0);
    (*(v37 + 8))(v6, v38);
  }

  sub_D6B68();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  result = sub_DC40(&qword_119670, qword_E30A0);
  v35 = a3 + *(result + 36);
  *v35 = v23;
  *(v35 + 1) = v27;
  *(v35 + 2) = v29;
  *(v35 + 3) = v31;
  *(v35 + 4) = v33;
  v35[40] = 0;
  return result;
}

uint64_t sub_BDE90(uint64_t a1)
{
  v2 = sub_DC40(&qword_119310, &qword_E2850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_BDF20(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_BDF34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_BDF7C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_BDFD4()
{
  result = qword_119678;
  if (!qword_119678)
  {
    sub_EBC0(&qword_119670, qword_E30A0);
    sub_BE060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_119678);
  }

  return result;
}

unint64_t sub_BE060()
{
  result = qword_119680;
  if (!qword_119680)
  {
    sub_EBC0(&qword_119668, &qword_E3098);
    sub_BE0EC();
    sub_BE314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_119680);
  }

  return result;
}

unint64_t sub_BE0EC()
{
  result = qword_119688;
  if (!qword_119688)
  {
    sub_EBC0(&qword_119660, &qword_E3090);
    sub_BE1A4();
    sub_15FB8(&qword_117188, &qword_117190, &qword_DE900, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_119688);
  }

  return result;
}

unint64_t sub_BE1A4()
{
  result = qword_119690;
  if (!qword_119690)
  {
    sub_EBC0(&qword_119658, &qword_E3088);
    sub_BE25C();
    sub_15FB8(&qword_1196A0, &qword_1196A8, &qword_E3188, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_119690);
  }

  return result;
}

unint64_t sub_BE25C()
{
  result = qword_119698;
  if (!qword_119698)
  {
    sub_EBC0(&qword_119650, &unk_E3018);
    sub_15FB8(&qword_117B48, &qword_117B50, qword_DF870, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_119698);
  }

  return result;
}

unint64_t sub_BE314()
{
  result = qword_1196B0;
  if (!qword_1196B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1196B0);
  }

  return result;
}

uint64_t sub_BE394@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_D6F68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_DC40(&qword_117EA0, &qword_E03A8);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_16054(v2, &v13 - v9, &qword_117EA0, &qword_E03A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21A44(v10, a1, &qword_117EA8, &qword_E03B0);
  }

  sub_D7E28();
  v12 = sub_D71C8();
  sub_D6A08();

  sub_D6F58();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_BE5B8(char a1)
{
  result = type metadata accessor for ActivityEditView(0);
  *(v1 + *(result + 20)) = a1 & 1;
  return result;
}

uint64_t sub_BE634()
{
  type metadata accessor for ActivityEditView(0);
  sub_DC40(&qword_116738, &qword_DD3C8);
  sub_D78B8();
  return v1;
}

uint64_t sub_BE69C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ActivityEditView(0);
  sub_DC40(&qword_116738, &qword_DD3C8);
  return sub_D78C8();
}

void (*sub_BE718(uint64_t *a1))(uint64_t, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for ActivityEditView(0) + 24));
  v6 = *v5;
  v7 = v5[1];
  v4[12] = *v5;
  v4[13] = v7;
  v8 = v5[2];
  v9 = v5[3];
  v4[14] = v8;
  v4[15] = v9;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;
  v4[3] = v9;

  v4[16] = sub_DC40(&qword_116738, &qword_DD3C8);
  sub_D78B8();
  return sub_C9274;
}

uint64_t sub_BE7E4()
{
  type metadata accessor for ActivityEditView(0);
  sub_DC40(&qword_116738, &qword_DD3C8);
  sub_D78E8();
  return v1;
}

uint64_t sub_BE850()
{
  type metadata accessor for ActivityEditView(0);
  sub_DC40(&qword_116738, &qword_DD3C8);
  sub_D78B8();
  return v1;
}

uint64_t sub_BE8B8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ActivityEditView(0);
  sub_DC40(&qword_116738, &qword_DD3C8);
  return sub_D78C8();
}

void (*sub_BE934(uint64_t *a1))(uint64_t, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for ActivityEditView(0) + 28));
  v6 = *v5;
  v7 = v5[1];
  v4[12] = *v5;
  v4[13] = v7;
  v8 = v5[2];
  v9 = v5[3];
  v4[14] = v8;
  v4[15] = v9;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;
  v4[3] = v9;

  v4[16] = sub_DC40(&qword_116738, &qword_DD3C8);
  sub_D78B8();
  return sub_C9274;
}

uint64_t sub_BEA00()
{
  type metadata accessor for ActivityEditView(0);
  sub_DC40(&qword_116738, &qword_DD3C8);
  sub_D78E8();
  return v1;
}

uint64_t sub_BEA6C()
{
  type metadata accessor for ActivityEditView(0);
  sub_DC40(&qword_116738, &qword_DD3C8);
  sub_D78B8();
  return v1;
}

uint64_t sub_BEAD4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ActivityEditView(0);
  sub_DC40(&qword_116738, &qword_DD3C8);
  return sub_D78C8();
}

void (*sub_BEB50(uint64_t *a1))(uint64_t, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for ActivityEditView(0) + 32));
  v6 = *v5;
  v7 = v5[1];
  v4[12] = *v5;
  v4[13] = v7;
  v8 = v5[2];
  v9 = v5[3];
  v4[14] = v8;
  v4[15] = v9;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;
  v4[3] = v9;

  v4[16] = sub_DC40(&qword_116738, &qword_DD3C8);
  sub_D78B8();
  return sub_BEC1C;
}

uint64_t sub_BEC20()
{
  type metadata accessor for ActivityEditView(0);
  sub_DC40(&qword_116738, &qword_DD3C8);
  sub_D78E8();
  return v1;
}

uint64_t sub_BEC8C()
{
  type metadata accessor for ActivityEditView(0);
}

uint64_t sub_BECC0(uint64_t a1)
{
  v3 = *(type metadata accessor for ActivityEditView(0) + 40);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_BED48()
{
  type metadata accessor for ActivityEditView(0);
}

uint64_t sub_BED7C(uint64_t a1)
{
  v3 = *(type metadata accessor for ActivityEditView(0) + 44);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_BEE04()
{
  v1 = *(v0 + *(type metadata accessor for ActivityEditView(0) + 48));

  return v1;
}

uint64_t sub_BEE44(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ActivityEditView(0) + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_BEED4()
{
  v1 = *(v0 + *(type metadata accessor for ActivityEditView(0) + 52));

  return v1;
}

uint64_t sub_BEF14(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ActivityEditView(0) + 52));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

__n128 ActivityEditView.init(use:textName:symbolImageName:tintColorName:usedSymbolImageNames:usedNames:onCommit:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, __n128 a11, unint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *a9 = swift_getKeyPath();
  sub_DC40(&qword_116DC8, &qword_DDF30);
  swift_storeEnumTagMultiPayload();
  v21 = type metadata accessor for ActivityEditView(0);
  v22 = a9 + v21[9];
  sub_DC40(&qword_118ED0, &unk_DF5E0);
  sub_D77D8();
  *v22 = v35;
  *(v22 + 2) = v36;
  v23 = v21[14];
  *(a9 + v23) = swift_getKeyPath();
  sub_DC40(&qword_117EA0, &qword_E03A8);
  swift_storeEnumTagMultiPayload();
  *(a9 + v21[5]) = a1 & 1;
  *(a9 + v21[10]) = a14;
  *(a9 + v21[11]) = a15;
  v24 = (a9 + v21[12]);
  *v24 = a16;
  v24[1] = a17;
  v25 = (a9 + v21[13]);
  *v25 = variable initialization expression of Device._connectedOverBluetooth;
  v25[1] = 0;
  v26 = (a9 + v21[6]);
  *v26 = a2;
  v26[1] = a3;
  v26[2] = a4;
  v26[3] = a5;
  v27 = (a9 + v21[7]);
  *v27 = a6;
  v27[1] = a7;
  v27[2] = a8;
  v27[3] = a10;
  v28 = (a9 + v21[8]);
  result = a11;
  *v28 = a11;
  v28[1].n128_u64[0] = a12;
  v28[1].n128_u64[1] = a13;
  *(a9 + v21[15]) = 0;
  return result;
}

__n128 ActivityEditView.init(use:textName:symbolImageName:tintColorName:usedSymbolImageNames:usedNames:isScrolling:onCommit:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, __n128 a11, unint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *a9 = swift_getKeyPath();
  sub_DC40(&qword_116DC8, &qword_DDF30);
  swift_storeEnumTagMultiPayload();
  v21 = type metadata accessor for ActivityEditView(0);
  v22 = a9 + v21[9];
  sub_DC40(&qword_118ED0, &unk_DF5E0);
  sub_D77D8();
  *v22 = v37;
  *(v22 + 2) = v38;
  v23 = v21[14];
  *(a9 + v23) = swift_getKeyPath();
  sub_DC40(&qword_117EA0, &qword_E03A8);
  swift_storeEnumTagMultiPayload();
  *(a9 + v21[5]) = a1 & 1;
  *(a9 + v21[10]) = a14;
  *(a9 + v21[11]) = a15;
  v24 = (a9 + v21[12]);
  *v24 = a18;
  v24[1] = a19;
  v25 = (a9 + v21[13]);
  *v25 = a16;
  v25[1] = a17;
  v26 = (a9 + v21[6]);
  *v26 = a2;
  v26[1] = a3;
  v26[2] = a4;
  v26[3] = a5;
  v27 = (a9 + v21[7]);
  *v27 = a6;
  v27[1] = a7;
  v27[2] = a8;
  v27[3] = a10;
  v28 = (a9 + v21[8]);
  result = a11;
  *v28 = a11;
  v28[1].n128_u64[0] = a12;
  v28[1].n128_u64[1] = a13;
  *(a9 + v21[15]) = 0;
  return result;
}

uint64_t sub_BF374@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_DC40(&qword_119848, &qword_E3480);
  __chkstk_darwin(v4);
  v6 = v16 - v5;
  v7 = sub_DC40(&qword_119898, &qword_E3528);
  __chkstk_darwin(v7);
  v9 = v16 - v8;
  v10 = sub_DC40(&qword_119838, &qword_E3478);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v16 - v12;
  v14 = type metadata accessor for ActivityEditView(0);
  if (*(a1 + *(v14 + 20)))
  {
    sub_BF6F4(v6);
    sub_16054(v6, v9, &qword_119848, &qword_E3480);
    swift_storeEnumTagMultiPayload();
    sub_15FB8(&qword_119830, &qword_119838, &qword_E3478, &protocol conformance descriptor for ScrollView<A>);
    sub_15FB8(&qword_119840, &qword_119848, &qword_E3480, &protocol conformance descriptor for TupleView<A>);
    sub_D70B8();
    return sub_160BC(v6, &qword_119848, &qword_E3480);
  }

  else
  {
    v16[1] = a2;
    __chkstk_darwin(v14);
    v16[-2] = a1;
    sub_D71D8();
    sub_15FB8(&qword_119840, &qword_119848, &qword_E3480, &protocol conformance descriptor for TupleView<A>);
    sub_D6B98();
    (*(v11 + 16))(v9, v13, v10);
    swift_storeEnumTagMultiPayload();
    sub_15FB8(&qword_119830, &qword_119838, &qword_E3478, &protocol conformance descriptor for ScrollView<A>);
    sub_D70B8();
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_BF6F4@<X0>(uint64_t a1@<X8>)
{
  v133 = sub_DC40(&qword_1198A0, &qword_E3530);
  __chkstk_darwin(v133);
  v135 = &v108 - v3;
  v4 = sub_DC40(&qword_1198A8, &qword_E3538);
  __chkstk_darwin(v4 - 8);
  v6 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v111 = &v108 - v8;
  __chkstk_darwin(v9);
  v11 = &v108 - v10;
  __chkstk_darwin(v12);
  v110 = &v108 - v13;
  v136 = sub_DC40(&qword_1198B0, &qword_E3540);
  __chkstk_darwin(v136);
  v109 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v113 = (&v108 - v16);
  __chkstk_darwin(v17);
  v116 = &v108 - v18;
  v19 = sub_DC40(&qword_1198B8, &qword_E3548);
  v117 = *(v19 - 8);
  v118 = v19;
  __chkstk_darwin(v19);
  v115 = &v108 - v20;
  v114 = sub_DC40(&qword_1198C0, &qword_E3550);
  __chkstk_darwin(v114);
  v123 = &v108 - v21;
  v112 = sub_DC40(&qword_1198C8, &qword_E3558);
  __chkstk_darwin(v112);
  v120 = &v108 - v22;
  v119 = sub_DC40(&qword_1198D0, &qword_E3560);
  __chkstk_darwin(v119);
  v122 = &v108 - v23;
  v125 = sub_DC40(&qword_1198D8, &qword_E3568);
  __chkstk_darwin(v125);
  v121 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v124 = &v108 - v26;
  v27 = sub_DC40(&qword_1198E0, &qword_E3570);
  __chkstk_darwin(v27 - 8);
  v134 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v139 = &v108 - v30;
  v31 = sub_DC40(&qword_1198E8, &qword_E3578);
  v32 = v31 - 8;
  __chkstk_darwin(v31);
  v132 = &v108 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v108 - v35;
  v138 = sub_D7A18();
  v131 = v37;
  sub_C0F58(v1, &v155);
  v186 = v163;
  v187 = v164;
  v182 = v159;
  v183 = v160;
  v184 = v161;
  v185 = v162;
  v178 = v155;
  v179 = v156;
  v180 = v157;
  v181 = v158;
  v189[8] = v163;
  v189[9] = v164;
  v189[4] = v159;
  v189[5] = v160;
  v189[7] = v162;
  v189[6] = v161;
  v189[0] = v155;
  v189[1] = v156;
  v188 = v165;
  v190 = v165;
  v189[2] = v157;
  v189[3] = v158;
  sub_16054(&v178, &v140, &qword_1198F0, &qword_E3580);
  sub_160BC(v189, &qword_1198F0, &qword_E3580);
  v200 = v186;
  v201 = v187;
  v202 = v188;
  v196 = v182;
  v197 = v183;
  v199 = v185;
  v198 = v184;
  v192 = v178;
  v193 = v179;
  v195 = v181;
  v194 = v180;
  v130 = sub_D71F8();
  LOBYTE(v155) = 1;
  *v36 = sub_D7078();
  *(v36 + 1) = 0;
  v36[16] = 1;
  v38 = sub_DC40(&qword_1198F8, &qword_E3588);
  sub_C13D4(&v36[*(v38 + 44)]);
  v39 = sub_D71E8();
  v40 = *(v32 + 44);
  v137 = v36;
  v41 = &v36[v40];
  *v41 = v39;
  *(v41 + 8) = 0u;
  *(v41 + 24) = 0u;
  v41[40] = 1;
  sub_D7A18();
  v42 = 0x4024000000000000;
  sub_D6C28();
  v128 = v174;
  v129 = v172;
  v126 = v177;
  v127 = v176;
  v205 = 1;
  v204 = v173;
  v203 = v175;
  v43 = type metadata accessor for ActivityEditView(0);
  v44 = *(v1 + *(v43 + 20));
  if (!*(v1 + *(v43 + 60)))
  {
    v42 = 0;
  }

  v45 = sub_D7078();
  if (v44)
  {
    *v6 = v45;
    *(v6 + 1) = v42;
    v6[16] = 0;
    v46 = sub_DC40(&qword_119900, &qword_E3590);
    sub_C2378(v1, &v6[*(v46 + 44)]);
    v47 = v111;
    sub_21A44(v6, v111, &qword_1198A8, &qword_E3538);
    v48 = sub_D71E8();
    v49 = v47;
    v50 = v109;
    sub_21A44(v49, v109, &qword_1198A8, &qword_E3538);
    v51 = v50 + *(v136 + 36);
    *v51 = v48;
    *(v51 + 8) = 0u;
    *(v51 + 24) = 0u;
    *(v51 + 40) = 1;
    v52 = &qword_1198B0;
    v53 = &qword_E3540;
    v54 = v113;
    sub_21A44(v50, v113, &qword_1198B0, &qword_E3540);
    sub_16054(v54, v135, &qword_1198B0, &qword_E3540);
    swift_storeEnumTagMultiPayload();
    sub_C770C(&qword_119908, &qword_1198D8, &qword_E3568, sub_C76DC);
    sub_C79E0();
    sub_D70B8();
    v55 = v54;
  }

  else
  {
    *v11 = v45;
    *(v11 + 1) = v42;
    v11[16] = 0;
    v56 = sub_DC40(&qword_119900, &qword_E3590);
    sub_C2378(v1, &v11[*(v56 + 44)]);
    v57 = v110;
    sub_21A44(v11, v110, &qword_1198A8, &qword_E3538);
    v58 = sub_D71F8();
    v59 = v57;
    v60 = v116;
    v61 = sub_21A44(v59, v116, &qword_1198A8, &qword_E3538);
    v113 = &v108;
    v62 = v60 + *(v136 + 36);
    *v62 = v58;
    *(v62 + 8) = 0u;
    *(v62 + 24) = 0u;
    *(v62 + 40) = 1;
    __chkstk_darwin(v61);
    *(&v108 - 2) = v1;
    sub_DC40(&qword_119928, &qword_E3598);
    sub_C79E0();
    v111 = v1;
    v63 = sub_EBC0(&qword_119940, &qword_E35A0);
    v64 = sub_15FB8(&qword_119948, &qword_119940, &qword_E35A0, &protocol conformance descriptor for ToolbarItem<A, B>);
    *&v155 = v63;
    *(&v155 + 1) = v64;
    swift_getOpaqueTypeConformance2();
    v65 = v115;
    sub_D7528();
    sub_160BC(v60, &qword_1198B0, &qword_E3540);
    v66 = sub_C0D44();
    LOBYTE(v63) = sub_D71F8();
    v67 = v123;
    (*(v117 + 32))(v123, v65, v118);
    v68 = v67 + *(v114 + 36);
    *v68 = v66;
    *(v68 + 8) = v63;
    v69 = v120;
    v70 = &v120[*(v112 + 36)];
    v71 = *(sub_D6D98() + 20);
    v72 = enum case for RoundedCornerStyle.continuous(_:);
    v73 = sub_D7048();
    (*(*(v73 - 8) + 104))(&v70[v71], v72, v73);
    __asm { FMOV            V0.2D, #12.0 }

    *v70 = _Q0;
    *&v70[*(sub_DC40(&qword_119968, &qword_E35B0) + 36)] = 256;
    sub_21A44(v67, v69, &qword_1198C0, &qword_E3550);
    LOBYTE(v72) = sub_D71E8();
    v79 = v122;
    sub_21A44(v69, v122, &qword_1198C8, &qword_E3558);
    v80 = v79 + *(v119 + 36);
    *v80 = v72;
    *(v80 + 8) = 0u;
    *(v80 + 24) = 0u;
    *(v80 + 40) = 1;
    LOBYTE(v72) = sub_D7218();
    sub_D6B68();
    v82 = v81;
    v84 = v83;
    v86 = v85;
    v88 = v87;
    v89 = v121;
    sub_21A44(v79, v121, &qword_1198D0, &qword_E3560);
    v90 = v124;
    v91 = v89 + *(v125 + 36);
    *v91 = v72;
    *(v91 + 8) = v82;
    *(v91 + 16) = v84;
    *(v91 + 24) = v86;
    *(v91 + 32) = v88;
    *(v91 + 40) = 0;
    v52 = &qword_1198D8;
    v53 = &qword_E3568;
    sub_21A44(v89, v90, &qword_1198D8, &qword_E3568);
    sub_16054(v90, v135, &qword_1198D8, &qword_E3568);
    swift_storeEnumTagMultiPayload();
    sub_C770C(&qword_119908, &qword_1198D8, &qword_E3568, sub_C76DC);
    sub_D70B8();
    v55 = v90;
  }

  sub_160BC(v55, v52, v53);
  v92 = v132;
  sub_16054(v137, v132, &qword_1198E8, &qword_E3578);
  LODWORD(v133) = v205;
  LODWORD(v135) = v204;
  LODWORD(v136) = v203;
  v93 = v139;
  v94 = v134;
  sub_16054(v139, v134, &qword_1198E0, &qword_E3570);
  v95 = v131;
  *&v140 = v138;
  *(&v140 + 1) = v131;
  v149 = v200;
  v150 = v201;
  *&v151 = v202;
  v145 = v196;
  v146 = v197;
  v147 = v198;
  v148 = v199;
  v141 = v192;
  v142 = v193;
  v143 = v194;
  v144 = v195;
  v96 = v130;
  BYTE8(v151) = v130;
  *(&v151 + 9) = *v191;
  HIDWORD(v151) = *&v191[3];
  v152 = 0u;
  v153 = 0u;
  v154 = 1;
  *(a1 + 224) = 1;
  v97 = v149;
  *(a1 + 128) = v148;
  *(a1 + 144) = v97;
  v98 = v145;
  *(a1 + 64) = v144;
  *(a1 + 80) = v98;
  v99 = v147;
  *(a1 + 96) = v146;
  *(a1 + 112) = v99;
  v100 = v141;
  *a1 = v140;
  *(a1 + 16) = v100;
  v101 = v143;
  *(a1 + 32) = v142;
  *(a1 + 48) = v101;
  v102 = v153;
  *(a1 + 192) = v152;
  *(a1 + 208) = v102;
  v103 = v151;
  *(a1 + 160) = v150;
  *(a1 + 176) = v103;
  v104 = sub_DC40(&qword_119970, &qword_E35B8);
  sub_16054(v92, a1 + v104[12], &qword_1198E8, &qword_E3578);
  v105 = a1 + v104[16];
  *v105 = 0;
  *(v105 + 8) = v133;
  *(v105 + 16) = v129;
  *(v105 + 24) = v135;
  *(v105 + 32) = v128;
  *(v105 + 40) = v136;
  v106 = v126;
  *(v105 + 48) = v127;
  *(v105 + 56) = v106;
  sub_16054(v94, a1 + v104[20], &qword_1198E0, &qword_E3570);
  sub_16054(&v140, &v155, &qword_119978, &unk_E35C0);
  sub_160BC(v93, &qword_1198E0, &qword_E3570);
  sub_160BC(v137, &qword_1198E8, &qword_E3578);
  sub_160BC(v94, &qword_1198E0, &qword_E3570);
  sub_160BC(v92, &qword_1198E8, &qword_E3578);
  *&v155 = v138;
  *(&v155 + 1) = v95;
  v164 = v200;
  v165 = v201;
  v166 = v202;
  v160 = v196;
  v161 = v197;
  v162 = v198;
  v163 = v199;
  v156 = v192;
  v157 = v193;
  v158 = v194;
  v159 = v195;
  v167 = v96;
  *v168 = *v191;
  *&v168[3] = *&v191[3];
  v169 = 0u;
  v170 = 0u;
  v171 = 1;
  return sub_160BC(&v155, &qword_119978, &unk_E35C0);
}

uint64_t sub_C05A8(uint64_t a1, double a2)
{
  v3 = sub_D7128();
  __chkstk_darwin(v3 - 8);
  v4 = sub_DC40(&qword_119940, &qword_E35A0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-v6];
  sub_D7118();
  v10 = a1;
  sub_DC40(&qword_1169D0, qword_DD820);
  sub_286D4();
  sub_D6C08();
  sub_15FB8(&qword_119948, &qword_119940, &qword_E35A0, &protocol conformance descriptor for ToolbarItem<A, B>);
  sub_D7168();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_C0760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ActivityEditView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_DC40(&qword_116818, &qword_DF1F0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - v9;
  v20[0] = 1162760004;
  v20[1] = 0xE400000000000000;
  sub_C7AA8(a1, v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_C7B10(v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  sub_16000();
  sub_D7868();
  if (sub_C4428(v13))
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_C218C(v14);
  }

  KeyPath = swift_getKeyPath();
  v17 = swift_allocObject();
  *(v17 + 16) = v15 & 1;
  (*(v8 + 32))(a2, v10, v7);
  result = sub_DC40(&qword_1169D0, qword_DD820);
  v19 = (a2 + *(result + 36));
  *v19 = KeyPath;
  v19[1] = sub_285D8;
  v19[2] = v17;
  return result;
}

void *sub_C09AC()
{
  v1 = sub_D6D88();
  __chkstk_darwin(v1 - 8);
  v3 = v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_DC40(&qword_117EA8, &qword_E03B0);
  __chkstk_darwin(v41);
  v40 = (v38 - v4);
  v5 = sub_D67D8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for ActivityEditView(0);
  v9 = (v0 + *(v39 + 36));
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v42 = v0;
  *&v43 = v10;
  *(&v43 + 1) = v11;
  v44 = v12;
  sub_DC40(&qword_1180A8, &unk_E06A0);
  result = sub_D77E8();
  if (*(&v46 + 1))
  {
    v38[1] = v3;
    v43 = v46;
    sub_D67C8();
    sub_16000();
    v14 = sub_D7EF8();
    v16 = v15;
    (*(v6 + 8))(v8, v5);

    *&v43 = v10;
    *(&v43 + 1) = v11;
    v44 = v12;
    *&v46 = v14;
    *(&v46 + 1) = v16;
    sub_D77F8();
    v17 = v42;
    v19 = sub_C4428(v18);
    v21 = v39;
    if (!v19 && (sub_C218C(v20) & 1) == 0)
    {
      v22 = *(v17 + v21[12]);
      v23 = (v17 + v21[6]);
      v24 = *v23;
      v26 = *(v23 + 2);
      v25 = *(v23 + 3);
      v43 = v24;
      v44 = v26;
      v45 = v25;
      sub_DC40(&qword_116738, &qword_DD3C8);
      sub_D78B8();
      v27 = v46;
      v28 = (v17 + v21[7]);
      v29 = *v28;
      v31 = *(v28 + 2);
      v30 = *(v28 + 3);
      v43 = v29;
      v44 = v31;
      v45 = v30;
      sub_D78B8();
      v32 = v46;
      v33 = (v17 + v21[8]);
      v34 = *v33;
      v36 = *(v33 + 2);
      v35 = *(v33 + 3);
      v43 = v34;
      v44 = v36;
      v45 = v35;
      sub_D78B8();
      v22(v27, *(&v27 + 1), v32, *(&v32 + 1), v46, *(&v46 + 1));
    }

    v37 = v40;
    sub_BE394(v40);
    sub_D78B8();
    sub_D6D78();
    sub_D78C8();
    return sub_160BC(v37, &qword_117EA8, &qword_E03B0);
  }

  return result;
}

uint64_t sub_C0D14(uint64_t a1, double a2)
{
  if (sub_C4428(a2))
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_C218C(v2) ^ 1;
  }

  return v3 & 1;
}

uint64_t sub_C0D44()
{
  v1 = sub_D6BB8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  if (*(v0 + *(type metadata accessor for ActivityEditView(0) + 20)))
  {
    sub_C4B28(v7);
    (*(v2 + 104))(v4, enum case for ColorScheme.dark(_:), v1);
    v8 = sub_D6BA8();
    v9 = *(v2 + 8);
    v9(v4, v1);
    v9(v7, v1);
    v10 = objc_opt_self();
    if (v8)
    {
      v11 = [v10 secondarySystemGroupedBackgroundColor];
    }

    else
    {
      v11 = [v10 systemGroupedBackgroundColor];
    }

    v14 = v11;
    return sub_D7588();
  }

  else
  {
    v12 = [objc_opt_self() secondarySystemGroupedBackgroundColor];

    return sub_D7588();
  }
}

uint64_t sub_C0F10()
{
  if (*(v0 + *(type metadata accessor for ActivityEditView(0) + 20)))
  {
    return 4473921;
  }

  else
  {
    return 1162760004;
  }
}

__n128 sub_C0F58@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_D7708();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  v32 = sub_C0D44();
  sub_D7A18();
  sub_D6C28();
  *(v58 + 6) = *(&v58[3] + 6);
  *(&v58[1] + 6) = *(&v58[4] + 6);
  *(&v58[2] + 6) = *(&v58[5] + 6);
  v8 = type metadata accessor for ActivityEditView(0);
  v9 = (a1 + *(v8 + 28));
  v10 = *v9;
  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  v49 = v10;
  *&v50 = v12;
  *(&v50 + 1) = v11;
  sub_DC40(&qword_116738, &qword_DD3C8);
  sub_D78B8();
  sub_D7738();
  (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
  v31 = sub_D7758();

  (*(v5 + 8))(v7, v4);
  sub_D7A18();
  sub_D6C28();
  v57 = 1;
  *&v56[22] = *(&v58[7] + 6);
  *&v56[38] = *(&v58[8] + 6);
  *&v56[6] = *(&v58[6] + 6);
  v13 = v30 + *(v8 + 32);
  v14 = *v13;
  v16 = *(v13 + 16);
  v15 = *(v13 + 24);
  v49 = v14;
  *&v50 = v16;
  *(&v50 + 1) = v15;
  sub_D78B8();
  v17 = v38;
  v18 = v39;
  if (qword_11EE88 != -1)
  {
    v29 = v38;
    swift_once();
    v17 = v29;
  }

  v19 = qword_11EE90;
  if (*(qword_11EE90 + 16) && (v20 = sub_1ED4C(v17, v18), (v21 & 1) != 0))
  {
    v22 = *(*(v19 + 56) + 8 * v20);
  }

  else
  {

    v22 = 0;
  }

  KeyPath = swift_getKeyPath();
  v24 = sub_D7A18();
  v34[0] = v31;
  v34[1] = 0;
  LOWORD(v35[0]) = 1;
  *(&v35[1] + 2) = *&v56[16];
  *(v35 + 2) = *v56;
  *(&v35[2] + 2) = *&v56[32];
  *&v35[3] = *&v56[46];
  *(&v35[3] + 1) = KeyPath;
  *&v36 = v22;
  *(&v36 + 1) = v24;
  v37 = v25;
  v38 = v31;
  v55 = v25;
  v53 = v35[3];
  v54 = v36;
  v51 = v35[1];
  v52 = v35[2];
  v49 = v31;
  v50 = v35[0];
  v39 = 0;
  v40 = 1;
  v41 = 0;
  *&v44[14] = *&v56[46];
  v45 = KeyPath;
  *v44 = *&v56[32];
  v43 = *&v56[16];
  v42 = *v56;
  v46 = v22;
  v47 = v24;
  v48 = v25;
  sub_16054(v34, &v33, &qword_119AC8, &unk_E3770);
  sub_160BC(&v38, &qword_119AC8, &unk_E3770);
  *a2 = v32;
  *(a2 + 8) = 256;
  *(a2 + 10) = v58[0];
  *(a2 + 26) = v58[1];
  *(a2 + 42) = v58[2];
  *(a2 + 56) = *(&v58[2] + 14);
  v26 = v54;
  *(a2 + 128) = v53;
  *(a2 + 144) = v26;
  *(a2 + 160) = v55;
  v27 = v50;
  *(a2 + 64) = v49;
  *(a2 + 80) = v27;
  result = v52;
  *(a2 + 96) = v51;
  *(a2 + 112) = result;
  return result;
}

uint64_t static Color.activityColor(_:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (qword_11EE88 != -1)
  {
    v4 = a1;
    v5 = a2;
    swift_once();
    a1 = v4;
    a2 = v5;
  }

  if (*(qword_11EE90 + 16) && (sub_1ED4C(a1, a2), (v2 & 1) != 0))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_C13D4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_DC40(&qword_119A68, &qword_E36B8);
  __chkstk_darwin(v2 - 8);
  v40 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v35 - v5;
  sub_C1784(&v35 - v5);
  if (sub_C218C(v7))
  {
    sub_D72E8();
    v8 = sub_D7398();
    v10 = v9;
    v12 = v11;

    sub_D75C8();
    v13 = a1;
    v39 = sub_D7378();
    v38 = v14;
    v16 = v15;
    v37 = v17;

    sub_1F8F0(v8, v10, v12 & 1);

    v18 = sub_D71E8();
    LOBYTE(v42) = v16 & 1;
    v41 = 1;
    v19 = v16 & 1;
    v20 = 1;
    KeyPath = swift_getKeyPath();
    LOBYTE(v48[0]) = 0;
    v35 = v18;
    a1 = v13;
    v21 = 256;
    v22 = 2;
  }

  else
  {
    v39 = 0;
    v38 = 0;
    v37 = 0;
    KeyPath = 0;
    v22 = 0;
    v20 = 0;
    v35 = 0;
    v21 = 0;
    v19 = 0;
  }

  v23 = v40;
  sub_16054(v6, v40, &qword_119A68, &qword_E36B8);
  sub_16054(v23, a1, &qword_119A68, &qword_E36B8);
  v24 = (a1 + *(sub_DC40(&qword_119A70, &qword_E36C0) + 48));
  v25 = v39;
  *&v42 = v39;
  v26 = v38;
  *(&v42 + 1) = v38;
  *&v43 = v19;
  v27 = v37;
  *(&v43 + 1) = v37;
  v28 = v21;
  *&v44 = v21;
  v29 = v35;
  *(&v44 + 1) = v35;
  v45 = 0u;
  v46 = 0u;
  v30 = KeyPath;
  *v47 = v20;
  *&v47[8] = KeyPath;
  *&v47[16] = v22;
  v47[24] = 0;
  v31 = v43;
  *v24 = v42;
  v24[1] = v31;
  v32 = v45;
  v24[2] = v44;
  v24[3] = v32;
  v33 = *v47;
  v24[4] = v46;
  v24[5] = v33;
  *(v24 + 89) = *&v47[9];
  sub_16054(&v42, v48, &qword_119A78, &qword_E36C8);
  sub_160BC(v6, &qword_119A68, &qword_E36B8);
  v48[0] = v25;
  v48[1] = v26;
  v48[2] = v19;
  v48[3] = v27;
  v48[4] = v28;
  v48[5] = v29;
  v49 = 0u;
  v50 = 0u;
  v51 = v20;
  v52 = v30;
  v53 = v22;
  v54 = 0;
  sub_160BC(v48, &qword_119A78, &qword_E36C8);
  return sub_160BC(v40, &qword_119A68, &qword_E36B8);
}

uint64_t sub_C1784@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v111 = a1;
  v93 = sub_DC40(&qword_119A80, &qword_E3700);
  v94 = *(v93 - 8);
  __chkstk_darwin(v93);
  v92 = &v89 - v3;
  v95 = sub_DC40(&qword_119A88, &qword_E3708) - 8;
  __chkstk_darwin(v95);
  v90 = &v89 - v4;
  v99 = sub_DC40(&qword_119A90, &qword_E3710);
  __chkstk_darwin(v99);
  v102 = &v89 - v5;
  v101 = sub_DC40(&qword_119A98, &qword_E3718);
  __chkstk_darwin(v101);
  v104 = &v89 - v6;
  v103 = sub_DC40(&qword_119AA0, &qword_E3720);
  __chkstk_darwin(v103);
  v106 = &v89 - v7;
  v105 = sub_DC40(&qword_119AA8, &qword_E3728);
  __chkstk_darwin(v105);
  v108 = &v89 - v8;
  v100 = sub_DC40(&qword_119AB0, &qword_E3730);
  __chkstk_darwin(v100);
  v110 = &v89 - v9;
  v91 = type metadata accessor for ActivityEditView(0);
  v10 = *(v91 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v91);
  sub_C7AA8(v1, &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_D7D98();
  v12 = sub_D7D88();
  v13 = *(v10 + 80);
  v14 = (v13 + 32) & ~v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = &protocol witness table for MainActor;
  sub_C7B10(&v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_C7AA8(v1, &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_D7D88();
  v109 = v11;
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = &protocol witness table for MainActor;
  v18 = v90;
  v107 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_C7B10(v107, v17 + v14);
  sub_D7908();
  v19 = v113;
  v20 = v115;
  *&v113 = 0xD000000000000014;
  *(&v113 + 1) = 0x80000000000E7220;
  sub_16000();

  sub_D73B8();
  v21 = v92;
  v97 = *(&v19 + 1);
  v98 = v19;
  v96 = v20;
  sub_D7A68();
  sub_15FB8(&qword_119AB8, &qword_119A80, &qword_E3700, &protocol conformance descriptor for TextField<A>);
  v22 = v93;
  sub_D74E8();
  (*(v94 + 8))(v21, v22);
  sub_D72C8();
  sub_D7278();
  v23 = sub_D72D8();

  KeyPath = swift_getKeyPath();
  v25 = (v18 + *(sub_DC40(&qword_119AC0, &qword_E3738) + 36));
  *v25 = KeyPath;
  v25[1] = v23;
  v26 = swift_getKeyPath();
  v27 = v18 + *(v95 + 44);
  *v27 = v26;
  *(v27 + 8) = 1;
  v28 = v91;
  v29 = v2;
  v30 = v2 + *(v91 + 32);
  v31 = *v30;
  v33 = *(v30 + 16);
  v32 = *(v30 + 24);
  v113 = v31;
  v114 = v33;
  v115 = v32;
  sub_DC40(&qword_116738, &qword_DD3C8);
  sub_D78B8();
  v35 = *(&v112 + 1);
  v34 = v112;
  if (qword_11EE88 != -1)
  {
    v88 = v112;
    swift_once();
    v34 = v88;
  }

  v95 = ~v13;
  v36 = qword_11EE90;
  v37 = v13;
  if (*(qword_11EE90 + 16) && (v38 = sub_1ED4C(v34, v35), (v39 & 1) != 0))
  {
    v40 = *(*(v36 + 56) + 8 * v38);
  }

  else
  {

    v40 = 0;
  }

  v41 = swift_getKeyPath();
  v42 = v102;
  sub_21A44(v18, v102, &qword_119A88, &qword_E3708);
  v43 = (v42 + *(v99 + 36));
  *v43 = v41;
  v43[1] = v40;
  LOBYTE(v41) = sub_D71E8();
  sub_D6B68();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = v104;
  sub_21A44(v42, v104, &qword_119A90, &qword_E3710);
  v53 = v52 + *(v101 + 36);
  *v53 = v41;
  *(v53 + 8) = v45;
  *(v53 + 16) = v47;
  *(v53 + 24) = v49;
  *(v53 + 32) = v51;
  *(v53 + 40) = 0;
  LOBYTE(v41) = sub_D7238();
  sub_D6B68();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = v106;
  sub_21A44(v52, v106, &qword_119A98, &qword_E3718);
  v63 = v62 + *(v103 + 36);
  *v63 = v41;
  *(v63 + 8) = v55;
  *(v63 + 16) = v57;
  *(v63 + 24) = v59;
  *(v63 + 32) = v61;
  *(v63 + 40) = 0;
  v64 = sub_C0D44();
  LOBYTE(v52) = sub_D71F8();
  v65 = v108;
  sub_21A44(v62, v108, &qword_119AA0, &qword_E3720);
  v66 = v65 + *(v105 + 36);
  *v66 = v64;
  *(v66 + 8) = v52;
  v67 = v110;
  v68 = &v110[*(v100 + 36)];
  v69 = *(sub_D6D98() + 20);
  v70 = enum case for RoundedCornerStyle.continuous(_:);
  v71 = sub_D7048();
  (*(*(v71 - 8) + 104))(&v68[v69], v70, v71);
  __asm { FMOV            V0.2D, #12.0 }

  *v68 = _Q0;
  *&v68[*(sub_DC40(&qword_119968, &qword_E35B0) + 36)] = 256;
  sub_21A44(v65, v67, &qword_119AA8, &qword_E3728);
  v77 = v29 + *(v28 + 24);
  v78 = *v77;
  v80 = *(v77 + 16);
  v79 = *(v77 + 24);
  v113 = v78;
  v114 = v80;
  v115 = v79;
  sub_D78B8();
  v113 = v112;
  v81 = sub_DC40(&qword_119A68, &qword_E36B8);
  v82 = v111;
  sub_D6A78();

  v83 = v107;
  sub_C7AA8(v29, v107);
  v84 = (v37 + 24) & v95;
  v85 = swift_allocObject();
  *(v85 + 16) = 40;
  sub_C7B10(v83, v85 + v84);
  result = sub_21A44(v67, v82, &qword_119AB0, &qword_E3730);
  v87 = (v82 + *(v81 + 56));
  *v87 = sub_C9138;
  v87[1] = v85;
  return result;
}

uint64_t sub_C218C(double a1)
{
  v2 = sub_D67D8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActivityEditView(0);
  v7 = (v1 + *(v6 + 36));
  v8 = *(v7 + 2);
  v16 = *v7;
  v17 = v8;
  sub_DC40(&qword_1180A8, &unk_E06A0);
  sub_D77E8();
  if (*(&v15 + 1))
  {
    v9 = *(v1 + *(v6 + 44));
    v16 = v15;
    sub_D67C8();
    sub_16000();
    v10 = sub_D7EF8();
    v12 = v11;
    (*(v3 + 8))(v5, v2);

    v13 = sub_C41B8(v10, v12, v9);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_C2310(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return String.remove(at:)(a1);
  }

LABEL_5:
  a1 = sub_D7C98();

  return String.remove(at:)(a1);
}

uint64_t sub_C2378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_DC40(&qword_119980, &qword_E3600);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v11 = sub_DC40(&qword_119988, &qword_E3608);
  __chkstk_darwin(v11 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  *v16 = sub_D7088();
  *(v16 + 1) = 0x4024000000000000;
  v16[16] = 0;
  v17 = sub_DC40(&qword_119990, &qword_E3610);
  sub_C25F0(a1, &v16[*(v17 + 44)]);
  *v10 = sub_D7088();
  *(v10 + 1) = 0x4024000000000000;
  v10[16] = 0;
  v18 = sub_DC40(&qword_119998, &qword_E3618);
  sub_C3604(a1, &v10[*(v18 + 44)]);
  LOBYTE(a1) = sub_D7208();
  sub_D6B68();
  v19 = &v10[*(v5 + 44)];
  *v19 = a1;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  sub_16054(v16, v13, &qword_119988, &qword_E3608);
  sub_16054(v10, v7, &qword_119980, &qword_E3600);
  sub_16054(v13, a2, &qword_119988, &qword_E3608);
  v24 = sub_DC40(&qword_1199A0, &qword_E3620);
  sub_16054(v7, a2 + *(v24 + 48), &qword_119980, &qword_E3600);
  sub_160BC(v10, &qword_119980, &qword_E3600);
  sub_160BC(v16, &qword_119988, &qword_E3608);
  sub_160BC(v7, &qword_119980, &qword_E3600);
  return sub_160BC(v13, &qword_119988, &qword_E3608);
}

uint64_t sub_C25F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = a2;
  v37 = sub_D7158();
  __chkstk_darwin(v37);
  v36 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_D79E8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_DC40(&qword_119A00, &qword_E3680);
  v39 = *(v8 - 8);
  v40 = v8;
  __chkstk_darwin(v8);
  v38 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (*(a1 + *(type metadata accessor for ActivityEditView(0) + 60)) == 1)
  {
    sub_D72F8();
    v13 = sub_D7398();
    v14 = v17;
    v18 = v4;
    v20 = v19;
    v16 = v21;

    v15 = v20 & 1;
    v4 = v18;
    sub_1F900(v13, v14, v15);
  }

  v34 = v16;
  v35 = v15;
  sub_DC40(&qword_1199B0, &qword_E3630);
  sub_D79F8();
  *(swift_allocObject() + 16) = xmmword_DCB80;
  *v7 = xmmword_E3190;
  (*(v5 + 104))(v7, enum case for GridItem.Size.adaptive(_:), v4);
  v22 = sub_D7A08();
  __chkstk_darwin(v22);
  sub_D7078();
  v42 = 0;
  sub_C7D2C(&qword_1199B8, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  sub_D81A8();
  sub_DC40(&qword_119A08, &qword_E3688);
  sub_C82B8();
  v33 = v12;
  sub_D7A58();
  v24 = v38;
  v23 = v39;
  v25 = *(v39 + 16);
  v26 = v40;
  v25(v38, v12, v40);
  v27 = v41;
  *v41 = v13;
  v27[1] = v14;
  v28 = v34;
  v29 = v35;
  v27[2] = v35;
  v27[3] = v28;
  v30 = sub_DC40(&qword_119A38, &qword_E36A0);
  v25(v27 + *(v30 + 48), v24, v26);
  sub_7A57C(v13, v14, v29, v28);
  sub_7A5C0(v13, v14, v29, v28);
  v31 = *(v23 + 8);
  v31(v33, v26);
  v31(v24, v26);
  return sub_7A5C0(v13, v14, v29, v28);
}

uint64_t sub_C2ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ActivityEditView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_11EE88 != -1)
  {
    swift_once();
  }

  v8 = qword_11EE90;
  v9 = *(qword_11EE90 + 16);
  if (!v9)
  {
    v10 = _swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v16 = v5;
  v17 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  v10 = sub_C5968(v9, 0);
  v11 = sub_C64F8(&v20, v10 + 4, v9, v8);
  v12 = v20;

  sub_55660(v12);
  if (v11 == v9)
  {
    a1 = v18;
    v5 = v16;
    v7 = v17;
LABEL_7:
    v20 = v10;

    sub_C58FC(&v20);

    swift_getKeyPath();
    sub_C7AA8(a1, v7);
    v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v14 = swift_allocObject();
    sub_C7B10(v7, v14 + v13);
    sub_DC40(&qword_118DF0, &qword_E3670);
    sub_DC40(&qword_119A20, &qword_E3690);
    sub_15FB8(&qword_1199F0, &qword_118DF0, &qword_E3670, &protocol conformance descriptor for [A]);
    sub_C833C();
    return sub_D7988();
  }

  __break(1u);

  __break(1u);
  return result;
}

char *static Color.allSystemColors.getter()
{
  if (qword_11EE88 != -1)
  {
    swift_once();
  }

  v0 = qword_11EE90;
  v1 = *(qword_11EE90 + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = sub_C5968(*(qword_11EE90 + 16), 0);
  v3 = sub_C64F8(&v6, v2 + 4, v1, v0);
  v4 = v6;

  sub_55660(v4);
  if (v3 != v1)
  {
    __break(1u);
LABEL_6:
    v2 = _swiftEmptyArrayStorage;
  }

  v6 = v2;

  sub_C58FC(&v6);

  return v6;
}

uint64_t sub_C2EB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  v56 = sub_D7068();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v53 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_D7148();
  v7 = *(v6 - 8);
  v49 = v6;
  v50 = v7;
  __chkstk_darwin(v6);
  v45 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ActivityEditView(0);
  v10 = *(v9 - 8);
  v51 = v9 - 8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_DC40(&qword_119A28, &qword_E3698);
  v46 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v43 - v14;
  v16 = sub_DC40(&qword_119A40, &qword_E36A8);
  v17 = *(v16 - 8);
  v47 = v16;
  v48 = v17;
  __chkstk_darwin(v16);
  v19 = &v43 - v18;
  v52 = sub_DC40(&qword_119A20, &qword_E3690);
  __chkstk_darwin(v52);
  v44 = &v43 - v20;
  v22 = *a1;
  v21 = a1[1];
  sub_C7AA8(a2, v12);
  v23 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v24 = (v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  sub_C7B10(v12, v25 + v23);
  v26 = (v25 + v24);
  *v26 = v22;
  v26[1] = v21;
  v57 = v22;
  v58 = v21;
  v59 = a2;
  v27 = a2;
  sub_C89FC();

  sub_D7848();
  v28 = v45;
  sub_D7138();
  v29 = sub_15FB8(&qword_119A30, &qword_119A28, &qword_E3698, &protocol conformance descriptor for Button<A>);
  v30 = sub_C7D2C(&qword_116548, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
  v31 = v49;
  sub_D7428();
  (*(v50 + 8))(v28, v31);
  (*(v46 + 8))(v15, v13);
  *&v63 = _s7SwiftUI5ColorV25GameControlleriOSSettingsE013accessibilityc13NameForSystemcH0yS2SFZ_0(v22, v21);
  *(&v63 + 1) = v32;
  *&v60 = v13;
  *(&v60 + 1) = v31;
  v61 = v29;
  v62 = v30;
  v33 = v44;
  swift_getOpaqueTypeConformance2();
  sub_16000();
  v34 = v47;
  sub_D74B8();

  (*(v48 + 8))(v19, v34);
  v35 = v27 + *(v51 + 40);
  v36 = *v35;
  v38 = *(v35 + 16);
  v37 = *(v35 + 24);
  v60 = v36;
  v61 = v38;
  v62 = v37;
  sub_DC40(&qword_116738, &qword_DD3C8);
  sub_D78B8();
  if (__PAIR128__(v21, v22) == v63)
  {
  }

  else
  {
    v39 = sub_D8118();

    if ((v39 & 1) == 0)
    {
      *&v60 = _swiftEmptyArrayStorage;
      sub_C7D2C(&qword_119A50, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
      sub_DC40(&qword_119A58, &qword_E36B0);
      sub_15FB8(&qword_119A60, &qword_119A58, &qword_E36B0, &protocol conformance descriptor for [A]);
      v40 = v53;
      v41 = v56;
      sub_D7F78();
      goto LABEL_6;
    }
  }

  v40 = v53;
  sub_D7058();
  v41 = v56;
LABEL_6:
  sub_D6CE8();
  (*(v54 + 8))(v40, v41);
  return sub_160BC(v33, &qword_119A20, &qword_E3690);
}

void sub_C3584()
{
  v0 = [objc_opt_self() sharedApplication];
  [v0 sendAction:"resignFirstResponder" to:0 from:0 forEvent:0];
}

uint64_t sub_C3604@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = a2;
  v37 = sub_D7158();
  __chkstk_darwin(v37);
  v36 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_D79E8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_DC40(&qword_1199A8, &qword_E3628);
  v39 = *(v8 - 8);
  v40 = v8;
  __chkstk_darwin(v8);
  v38 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (*(a1 + *(type metadata accessor for ActivityEditView(0) + 60)) == 1)
  {
    sub_D72F8();
    v13 = sub_D7398();
    v14 = v17;
    v18 = v4;
    v20 = v19;
    v16 = v21;

    v15 = v20 & 1;
    v4 = v18;
    sub_1F900(v13, v14, v15);
  }

  v34 = v16;
  v35 = v15;
  sub_DC40(&qword_1199B0, &qword_E3630);
  sub_D79F8();
  *(swift_allocObject() + 16) = xmmword_DCB80;
  *v7 = xmmword_E3190;
  (*(v5 + 104))(v7, enum case for GridItem.Size.adaptive(_:), v4);
  v22 = sub_D7A08();
  __chkstk_darwin(v22);
  sub_D7078();
  v42 = 0;
  sub_C7D2C(&qword_1199B8, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  sub_D81A8();
  sub_DC40(&qword_1199C0, &qword_E3638);
  sub_C7BE8();
  v33 = v12;
  sub_D7A58();
  v24 = v38;
  v23 = v39;
  v25 = *(v39 + 16);
  v26 = v40;
  v25(v38, v12, v40);
  v27 = v41;
  *v41 = v13;
  v27[1] = v14;
  v28 = v34;
  v29 = v35;
  v27[2] = v35;
  v27[3] = v28;
  v30 = sub_DC40(&qword_1199E0, &unk_E3648);
  v25(v27 + *(v30 + 48), v24, v26);
  sub_7A57C(v13, v14, v29, v28);
  sub_7A5C0(v13, v14, v29, v28);
  v31 = *(v23 + 8);
  v31(v33, v26);
  v31(v24, v26);
  return sub_7A5C0(v13, v14, v29, v28);
}

uint64_t sub_C3AEC(uint64_t a1)
{
  v2 = type metadata accessor for ActivityEditView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v13 = a1;
  v18 = sub_C42B0(sub_C927C, v12, &off_10A370);
  swift_getKeyPath();
  sub_C7AA8(a1, &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_C7B10(&v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5);
  sub_DC40(&qword_118DF0, &qword_E3670);
  sub_DC40(&qword_1199E8, &qword_E3678);
  sub_15FB8(&qword_1199F0, &qword_118DF0, &qword_E3670, &protocol conformance descriptor for [A]);
  v7 = sub_EBC0(&qword_1199D0, &qword_E3640);
  v8 = sub_D7148();
  v9 = sub_15FB8(&qword_1199D8, &qword_1199D0, &qword_E3640, &protocol conformance descriptor for Button<A>);
  v10 = sub_C7D2C(&qword_116548, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  swift_getOpaqueTypeConformance2();
  return sub_D7988();
}

uint64_t sub_C3DD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = sub_D7148();
  v6 = *(v5 - 8);
  v26 = v5;
  v27 = v6;
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ActivityEditView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_DC40(&qword_1199D0, &qword_E3640);
  v13 = *(v25 - 8);
  __chkstk_darwin(v25);
  v15 = &v25 - v14;
  v16 = *a1;
  v17 = a1[1];
  sub_C7AA8(a2, v12);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  sub_C7B10(v12, v20 + v18);
  v21 = (v20 + v19);
  *v21 = v16;
  v21[1] = v17;
  v29 = v16;
  v30 = v17;
  v31 = a2;
  type metadata accessor for SystemImageView(0);
  sub_C7D2C(&qword_1199F8, type metadata accessor for SystemImageView, &unk_E3340);

  sub_D7848();
  sub_D7138();
  sub_15FB8(&qword_1199D8, &qword_1199D0, &qword_E3640, &protocol conformance descriptor for Button<A>);
  sub_C7D2C(&qword_116548, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
  v22 = v25;
  v23 = v26;
  sub_D7428();
  (*(v27 + 8))(v8, v23);
  return (*(v13 + 8))(v15, v22);
}

uint64_t sub_C4150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_21A44(a1, a5, &qword_116E40, &qword_DDFA0);
  result = type metadata accessor for SystemImageView(0);
  v10 = (a5 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  *(a5 + *(result + 24)) = a4;
  return result;
}

uint64_t sub_C41B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_D8168();
  sub_D7C78();
  v6 = sub_D8198();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_D8118() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_C42B0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = result;
    v6 = 0;
    v7 = (a3 + 40);
    v8 = _swiftEmptyArrayStorage;
    v15 = result;
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v18[0] = v10;
      v18[1] = v9;

      v11 = v5(v18);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v8;
        if ((result & 1) == 0)
        {
          result = sub_C63B8(0, v8[2] + 1, 1);
          v8 = v19;
        }

        v13 = v8[2];
        v12 = v8[3];
        if (v13 >= v12 >> 1)
        {
          result = sub_C63B8((v12 > 1), v13 + 1, 1);
          v8 = v19;
        }

        v8[2] = v13 + 1;
        v14 = &v8[2 * v13];
        v14[4] = v10;
        v14[5] = v9;
        v4 = a3;
        v5 = v15;
      }

      else
      {
      }

      ++v6;
      v7 += 2;
      if (v17 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_16:

    return v8;
  }

  return result;
}

BOOL sub_C4428(double a1)
{
  v2 = sub_D67D8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v1 + *(type metadata accessor for ActivityEditView(0) + 36));
  v7 = *(v6 + 2);
  v14 = *v6;
  v15 = v7;
  sub_DC40(&qword_1180A8, &unk_E06A0);
  sub_D77E8();
  if (!*(&v13 + 1))
  {
    return 1;
  }

  v14 = v13;
  sub_D67C8();
  sub_16000();
  v8 = sub_D7EF8();
  v10 = v9;
  (*(v3 + 8))(v5, v2);

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  return v11 == 0;
}

double sub_C459C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v8 = sub_D7A18();
  v10 = v9;
  sub_C46D0(a1, a2, v4, &v19);
  v39 = v27;
  v40 = v28;
  v41 = v29;
  v42 = v30;
  v35 = v23;
  v36 = v24;
  v37 = v25;
  v38 = v26;
  v31 = v19;
  v32 = v20;
  v33 = v21;
  v34 = v22;
  v43[8] = v27;
  v43[9] = v28;
  v43[10] = v29;
  v43[11] = v30;
  v43[4] = v23;
  v43[5] = v24;
  v43[6] = v25;
  v43[7] = v26;
  v43[0] = v19;
  v43[1] = v20;
  v43[2] = v21;
  v43[3] = v22;
  sub_16054(&v31, &v18, &qword_1196B8, &qword_E3228);
  sub_160BC(v43, &qword_1196B8, &qword_E3228);
  *a4 = v8;
  *(a4 + 8) = v10;
  v11 = v40;
  *(a4 + 144) = v39;
  *(a4 + 160) = v11;
  v12 = v42;
  *(a4 + 176) = v41;
  *(a4 + 192) = v12;
  v13 = v36;
  *(a4 + 80) = v35;
  *(a4 + 96) = v13;
  v14 = v38;
  *(a4 + 112) = v37;
  *(a4 + 128) = v14;
  v15 = v32;
  *(a4 + 16) = v31;
  *(a4 + 32) = v15;
  result = *&v33;
  v17 = v34;
  *(a4 + 48) = v33;
  *(a4 + 64) = v17;
  return result;
}

uint64_t sub_C46D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  if (a3)
  {
    v5 = sub_D75D8();
  }

  else
  {
    v5 = sub_D7648();
  }

  v6 = v5;
  sub_D6BF8();
  v7 = v63;
  v8 = v64;
  v9 = DWORD1(v64);
  v10 = *(&v64 + 1);
  v11 = v65;
  v12 = sub_D7A18();
  v14 = v13;
  sub_D7A18();
  sub_D6C28();
  if (qword_11EE88 != -1)
  {
    swift_once();
  }

  v15 = qword_11EE90;
  if (*(qword_11EE90 + 16) && (v16 = sub_1ED4C(a1, a2), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);
  }

  else
  {
    v18 = sub_D75E8();
  }

  sub_D7A18();
  sub_D6C28();
  *&v59[6] = v66;
  *&v59[22] = v67;
  *&v59[38] = v68;
  *v35 = v63 * 0.5;
  *(v35 + 1) = v63;
  v35[1] = v64;
  v35[2] = v65;
  *&v36 = v6;
  WORD4(v36) = 256;
  *&v37 = v12;
  *(&v37 + 1) = v14;
  v39 = v61;
  v40 = v62;
  v38 = v60;
  v25 = v35[0];
  v26 = v64;
  v29 = v61;
  v30 = v62;
  v27 = v37;
  v28 = v60;
  *v41 = v18;
  *&v41[8] = 256;
  v19 = *&v59[16];
  *&v41[10] = *v59;
  *&v41[56] = *(&v68 + 1);
  *&v41[42] = *&v59[32];
  v20 = *v59;
  *&v41[26] = *&v59[16];
  v33 = *&v41[32];
  v34 = *&v41[48];
  v31 = *v41;
  v32 = *&v41[16];
  v21 = v36;
  a4[2] = v65;
  a4[3] = v21;
  *a4 = v25;
  a4[1] = v26;
  a4[6] = v29;
  a4[7] = v30;
  a4[4] = v27;
  a4[5] = v28;
  a4[10] = v33;
  a4[11] = v34;
  a4[8] = v31;
  a4[9] = v32;
  v42 = v18;
  v43 = 256;
  v44 = v20;
  v45 = v19;
  *v46 = *&v59[32];
  *&v46[14] = *&v59[46];
  sub_16054(v35, v47, &qword_119870, &unk_E3500);
  sub_16054(v41, v47, &qword_1171A0, qword_DE910);
  sub_160BC(&v42, &qword_1171A0, qword_DE910);
  v47[0] = v7 * 0.5;
  v47[1] = v7;
  v48 = v8;
  v49 = v9;
  v50 = v10;
  v51 = v11;
  v52 = v6;
  v53 = 256;
  v54 = v12;
  v55 = v14;
  v56 = v60;
  v57 = v61;
  v58 = v62;
  return sub_160BC(v47, &qword_119870, &unk_E3500);
}

double sub_C49F4@<D0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = sub_D7A18();
  v9 = v8;
  sub_C46D0(v4, v5, v6, &v18);
  v38 = v26;
  v39 = v27;
  v40 = v28;
  v41 = v29;
  v34 = v22;
  v35 = v23;
  v36 = v24;
  v37 = v25;
  v30 = v18;
  v31 = v19;
  v32 = v20;
  v33 = v21;
  v42[8] = v26;
  v42[9] = v27;
  v42[10] = v28;
  v42[11] = v29;
  v42[4] = v22;
  v42[5] = v23;
  v42[6] = v24;
  v42[7] = v25;
  v42[0] = v18;
  v42[1] = v19;
  v42[2] = v20;
  v42[3] = v21;
  sub_16054(&v30, &v17, &qword_1196B8, &qword_E3228);
  sub_160BC(v42, &qword_1196B8, &qword_E3228);
  *a2 = v7;
  *(a2 + 8) = v9;
  v10 = v39;
  *(a2 + 144) = v38;
  *(a2 + 160) = v10;
  v11 = v41;
  *(a2 + 176) = v40;
  *(a2 + 192) = v11;
  v12 = v35;
  *(a2 + 80) = v34;
  *(a2 + 96) = v12;
  v13 = v37;
  *(a2 + 112) = v36;
  *(a2 + 128) = v13;
  v14 = v31;
  *(a2 + 16) = v30;
  *(a2 + 32) = v14;
  result = *&v32;
  v16 = v33;
  *(a2 + 48) = v32;
  *(a2 + 64) = v16;
  return result;
}

uint64_t sub_C4B28@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_D6F68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_DC40(&qword_116DC8, &qword_DDF30);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_16054(v2, &v14 - v9, &qword_116DC8, &qword_DDF30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_D6BB8();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_D7E28();
    v13 = sub_D71C8();
    sub_D6A08();

    sub_D6F58();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_C4D28@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  sub_DC40(a2, a3);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_C4D88()
{
  v1 = *(v0 + *(type metadata accessor for SystemImageView(0) + 20));

  return v1;
}

__n128 sub_C4DEC@<Q0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_D7A18();
  v7 = v6;
  sub_C4F40(v3, &v16);
  v43 = v28;
  v44 = v29;
  v39 = v24;
  v40 = v25;
  v41 = v26;
  v42 = v27;
  v35 = v20;
  v36 = v21;
  v37 = v22;
  v38 = v23;
  v31 = v16;
  v32 = v17;
  v33 = v18;
  v34 = v19;
  v46[12] = v28;
  v46[13] = v29;
  v46[8] = v24;
  v46[9] = v25;
  v46[10] = v26;
  v46[11] = v27;
  v46[4] = v20;
  v46[5] = v21;
  v46[6] = v22;
  v46[7] = v23;
  v46[0] = v16;
  v46[1] = v17;
  v45 = v30;
  v47 = v30;
  v46[2] = v18;
  v46[3] = v19;
  sub_16054(&v31, &v15, &qword_1196C0, &qword_E3230);
  sub_160BC(v46, &qword_1196C0, &qword_E3230);
  *a2 = v5;
  *(a2 + 8) = v7;
  v8 = v44;
  *(a2 + 208) = v43;
  *(a2 + 224) = v8;
  *(a2 + 240) = v45;
  v9 = v40;
  *(a2 + 144) = v39;
  *(a2 + 160) = v9;
  v10 = v42;
  *(a2 + 176) = v41;
  *(a2 + 192) = v10;
  v11 = v36;
  *(a2 + 80) = v35;
  *(a2 + 96) = v11;
  v12 = v38;
  *(a2 + 112) = v37;
  *(a2 + 128) = v12;
  v13 = v32;
  *(a2 + 16) = v31;
  *(a2 + 32) = v13;
  result = v34;
  *(a2 + 48) = v33;
  *(a2 + 64) = result;
  return result;
}

uint64_t sub_C4F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_DC40(&qword_119310, &qword_E2850);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - v5;
  v7 = *(a1 + *(type metadata accessor for SystemImageView(0) + 24));
  if (v7 == 1)
  {
    v8 = sub_D75D8();
  }

  else
  {
    v8 = sub_D7648();
  }

  v42 = v8;
  sub_D6BF8();
  v9 = v91;
  v43 = v92;
  v38 = v93;
  v10 = v94;
  v41 = v95;
  v11 = v96;
  v12 = sub_D7A18();
  v39 = v13;
  v40 = v12;
  sub_D7A18();
  sub_D6C28();
  v37 = sub_C7468();

  sub_D7A18();
  sub_D6C28();
  *&v85[6] = v97;
  *&v85[22] = v98;
  *&v85[38] = v99;

  v36 = sub_D7738();
  sub_D7298();
  v14 = sub_D7268();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  v35 = sub_D72A8();
  sub_160BC(v6, &qword_119310, &qword_E2850);
  KeyPath = swift_getKeyPath();
  if (v7)
  {
    v16 = sub_D75D8();
  }

  else
  {
    v16 = sub_D76C8();
  }

  v17 = v16;
  v18 = swift_getKeyPath();
  *&v56 = v9 * 0.5;
  *(&v56 + 1) = v9;
  *&v57 = __PAIR64__(v38, v43);
  v19 = v38;
  *(&v57 + 1) = v10;
  *&v58 = v41;
  *(&v58 + 1) = v11;
  *&v59 = v42;
  WORD4(v59) = 256;
  HIWORD(v59) = v90;
  *(&v59 + 10) = v89;
  v20 = v39;
  v21 = v40;
  *&v60 = v40;
  *(&v60 + 1) = v39;
  v62 = v87;
  v63 = v88;
  v61 = v86;
  v46 = v58;
  v47 = v59;
  v44 = v56;
  v45 = v57;
  v50 = v87;
  v51 = v88;
  v48 = v60;
  v49 = v86;
  v22 = v37;
  *&v64[0] = v37;
  WORD4(v64[0]) = 256;
  *(v64 + 10) = *v85;
  *(&v64[3] + 1) = *&v85[46];
  *(&v64[2] + 10) = *&v85[32];
  *(&v64[1] + 10) = *&v85[16];
  v54 = v64[2];
  v55 = v64[3];
  v52 = v64[0];
  v53 = v64[1];
  v23 = v56;
  v24 = v57;
  v25 = v59;
  *(a2 + 32) = v58;
  *(a2 + 48) = v25;
  *a2 = v23;
  *(a2 + 16) = v24;
  v26 = v48;
  v27 = v49;
  v28 = v51;
  *(a2 + 96) = v50;
  *(a2 + 112) = v28;
  *(a2 + 64) = v26;
  *(a2 + 80) = v27;
  v29 = v52;
  v30 = v53;
  v31 = v55;
  *(a2 + 160) = v54;
  *(a2 + 176) = v31;
  *(a2 + 128) = v29;
  *(a2 + 144) = v30;
  v32 = v35;
  *(a2 + 192) = v36;
  *(a2 + 200) = KeyPath;
  *(a2 + 208) = v32;
  *(a2 + 216) = v18;
  *(a2 + 224) = v17;
  sub_16054(&v56, v70, &qword_119870, &unk_E3500);
  sub_16054(v64, v70, &qword_1171A0, qword_DE910);
  v65 = v22;
  v66 = 256;
  v67 = *v85;
  v68 = *&v85[16];
  *v69 = *&v85[32];
  *&v69[14] = *&v85[46];
  sub_160BC(&v65, &qword_1171A0, qword_DE910);
  v70[0] = v9 * 0.5;
  v70[1] = v9;
  v71 = v43;
  v72 = v19;
  v73 = v10;
  v74 = v41;
  v75 = v11;
  v76 = v42;
  v77 = 256;
  v78 = v89;
  v79 = v90;
  v80 = v21;
  v81 = v20;
  v83 = v87;
  v84 = v88;
  v82 = v86;
  return sub_160BC(v70, &qword_119870, &unk_E3500);
}

uint64_t *sub_C538C()
{
  if (qword_11EE78 != -1)
  {
    swift_once();
  }

  return &qword_11FBD8;
}

uint64_t *sub_C53DC()
{
  if (qword_11EE70 != -1)
  {
    swift_once();
  }

  return &qword_11FBD0;
}

uint64_t *sub_C542C()
{
  if (qword_11EE80 != -1)
  {
    swift_once();
  }

  return &qword_11FBE0;
}

uint64_t sub_C547C()
{
  result = sub_D75B8();
  qword_11FBD0 = result;
  return result;
}

uint64_t sub_C54D4(double a1)
{
  v1 = sub_D7598();
  v2 = __chkstk_darwin(v1);
  (*(v4 + 104))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:), v2);
  result = sub_D76D8();
  qword_11FBD8 = result;
  return result;
}

uint64_t sub_C55E0()
{
  v0 = [objc_opt_self() systemGray5Color];
  result = sub_D7588();
  qword_11FBE0 = result;
  return result;
}

uint64_t sub_C5644(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_C56A4()
{
  sub_DC40(&qword_119880, &qword_E3510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_E31A0;
  *(inited + 32) = 0x65546D6574737973;
  *(inited + 40) = 0xEF726F6C6F436C61;
  *(inited + 48) = sub_D7618();
  *(inited + 56) = 0x6C426D6574737973;
  *(inited + 64) = 0xEF726F6C6F436575;
  *(inited + 72) = sub_D75D8();
  *(inited + 80) = 0x72476D6574737973;
  *(inited + 88) = 0xEF726F6C6F437961;
  *(inited + 96) = sub_D75E8();
  *(inited + 104) = 0xD000000000000010;
  *(inited + 112) = 0x80000000000E7160;
  *(inited + 120) = sub_D7658();
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = 0x80000000000E7180;
  *(inited + 144) = sub_D7688();
  *(inited + 152) = 0xD000000000000011;
  *(inited + 160) = 0x80000000000E71A0;
  *(inited + 168) = sub_D7678();
  strcpy((inited + 176), "systemRedColor");
  *(inited + 191) = -18;
  *(inited + 192) = sub_D75C8();
  *(inited + 200) = 0x69506D6574737973;
  *(inited + 208) = 0xEF726F6C6F436B6ELL;
  *(inited + 216) = sub_D7608();
  *(inited + 224) = 0xD000000000000011;
  *(inited + 232) = 0x80000000000E71C0;
  *(inited + 240) = sub_D7698();
  *(inited + 248) = 0xD000000000000010;
  *(inited + 256) = 0x80000000000E71E0;
  *(inited + 264) = sub_D7638();
  v1 = sub_C6650(inited);
  swift_setDeallocating();
  sub_DC40(&qword_119888, &qword_E3518);
  result = swift_arrayDestroy();
  qword_11EE90 = v1;
  return result;
}

uint64_t sub_C58A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_D6EC8();
  *a1 = result;
  return result;
}

Swift::Int sub_C58FC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_C64E4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_C59EC(v5);
  *a1 = v2;
  return result;
}

void *sub_C5968(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_DC40(&qword_1171A8, &qword_E2660);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

Swift::Int sub_C59EC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_D80E8(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_D7D58();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_C5BB4(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_C5AE4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_C5AE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_D8118(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_C5BB4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1EC34(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_C6190((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_D8118();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_D8118();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1EC48(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1EC48((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_C6190((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1EC34(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1EBA8(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_D8118(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}